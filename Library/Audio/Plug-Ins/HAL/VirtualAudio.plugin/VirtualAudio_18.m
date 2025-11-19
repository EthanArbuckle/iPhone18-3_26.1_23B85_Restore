void sub_145EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v17);
  if (!v16)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_weak(v16);
  goto LABEL_5;
}

uint64_t sub_145F10(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 32);
  if (v4 == 2)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    sub_25704(buf, (v7 + 16), "", 246);
    if (*(*buf + 144) == 1886216809)
    {
      sub_25704(&__p, (v7 + 32), "", 247);
      v8 = *(__p.__r_.__value_.__r.__words[0] + 144) == 1885433888;
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_1A8C0(__p.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      v8 = 0;
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (_os_feature_enabled_impl())
    {
      sub_25704(buf, (v7 + 32), "", 251);
      v8 = *(*buf + 144) == 1885433888;
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }
    }

    sub_25704(buf, (v6 + 16), "", 253);
    if (sub_108CA8(*(*buf + 144)))
    {
      sub_25704(&__p, (v6 + 32), "", 254);
      v9 = *(__p.__r_.__value_.__r.__words[0] + 144) == 1885433888;
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_1A8C0(__p.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      v9 = 0;
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    v5 = v8 & v9;
  }

  else if (v4 == 1)
  {
    sub_25704(buf, (*(v3 + 24) + 32), "", 239);
    v5 = *(*buf + 144) == 1885433888;
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = sub_5544(20);
  if (*(v10 + 8))
  {
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        if (v5)
        {
          v12 = "handles";
        }

        else
        {
          v12 = "does not handle";
        }

        sub_14B684(&__p, *a2 + 16);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 260;
        v17 = 2080;
        v18 = v12;
        v19 = 2080;
        v20 = p_p;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_Record %s the given route: %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  return v5;
}

void sub_1461E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_14620C(uint64_t a1, _DWORD *a2)
{
  v3 = *a2;
  v4 = *a2 + 16;
  v5 = *(*a2 + 32);
  if (v5 == 2)
  {
    v6 = *(v3 + 24);
    if (v4 != v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        sub_25704(buf, v6 + 2, "", 457);
        v9 = *(*buf + 144);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v9 == 1885433888)
        {
          ++v7;
        }

        sub_25704(buf, v6 + 4, "", 462);
        v10 = *(*buf + 144);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v10 == 1885433888)
        {
          ++v8;
        }

        v6 = v6[1];
      }

      while ((*a2 + 16) != v6);
      v12 = v7 == 1 && v8 == 1;
      goto LABEL_57;
    }

LABEL_56:
    v12 = 0;
    goto LABEL_57;
  }

  if (v5 < 3)
  {
    goto LABEL_56;
  }

  v13 = *(v3 + 24);
  if (v13 == v4)
  {
    LODWORD(v12) = 0;
    v28 = 0;
    v27 = 0;
    goto LABEL_72;
  }

  v14 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    sub_25704(buf, v13 + 2, "", 488);
    v17 = *(*buf + 144);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    sub_25704(buf, v13 + 4, "", 489);
    v18 = *(*buf + 144);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v17 > 1886216808)
    {
      switch(v17)
      {
        case 1886216809:
LABEL_35:
          ++v15;
          v16 = 1;
          break;
        case 1886613618:
          ++v15;
          LODWORD(v40) = 1;
          break;
        case 1886614640:
          HIDWORD(v40) = 1;
          goto LABEL_51;
        default:
LABEL_37:
          v19 = sub_108CA8(v17);
          if (v18 == 1885433888)
          {
            v20 = v15 + 1;
          }

          else
          {
            v20 = v15;
          }

          v21 = v41;
          if (v19)
          {
            v21 = 1;
          }

          LODWORD(v41) = v21;
          if (v19)
          {
            v14 = 1;
          }

          else
          {
            v15 = v20;
            v14 |= v18 == 1885433888;
          }

          goto LABEL_51;
      }

      v14 = 1;
      goto LABEL_51;
    }

    if (v17 == 1885433443)
    {
      HIDWORD(v41) |= v18 == 1885433888;
      goto LABEL_51;
    }

    if (v17 != 1885433888)
    {
      if (v17 == 1885564784)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    switch(v18)
    {
      case 1885888867:
        HIDWORD(v39) = 1;
        HIDWORD(v38) = 1;
        break;
      case 1886613611:
        LODWORD(v38) = 1;
        break;
      case 1886545251:
        v39 = 0x100000001;
        break;
      default:
        HIDWORD(v39) = 1;
        break;
    }

LABEL_51:
    v13 = v13[1];
  }

  while (v13 != v4);
  v27 = v15 == 1;
  if ((v14 & HIDWORD(v38) | HIDWORD(v41) & v16) & v39)
  {
    goto LABEL_70;
  }

  v29 = HIDWORD(v40) & v38;
  if ((v40 & v38 & v16 & 1) == 0)
  {
    if (v29 & (v16 | v14))
    {
      goto LABEL_70;
    }

LABEL_79:
    v28 = HIDWORD(v39);
    LODWORD(v12) = v41;
    if (v41 & HIDWORD(v39) & v14)
    {
      v32 = a2[3];
      v12 = 1;
      if (v32 <= 1987077986)
      {
        if (v32 == 1768057203)
        {
          goto LABEL_57;
        }

        v33 = 1919776355;
      }

      else
      {
        if (v32 == 1987077987 || v32 == 1987081833)
        {
          goto LABEL_57;
        }

        v33 = 1987081839;
      }

      v28 = 1;
      if (v32 == v33)
      {
        goto LABEL_57;
      }
    }

LABEL_72:
    v12 = _os_feature_enabled_impl() & v27 & v12 & v28;
    goto LABEL_57;
  }

  v30 = a2[3];
  v12 = 1;
  if (v30 > 1987077986)
  {
    if (v30 != 1987077987 && v30 != 1987081833)
    {
      v31 = 1987081839;
      goto LABEL_86;
    }

    goto LABEL_57;
  }

  if (v30 != 1768057203)
  {
    v31 = 1919776355;
LABEL_86:
    if (v30 != v31)
    {
      v34 = a2[2];
      v35 = sub_DD858();
      v37 = v34 == 1668705568 && v35 == 160;
      if ((v37 | v29))
      {
LABEL_70:
        v12 = 1;
        goto LABEL_57;
      }

      goto LABEL_79;
    }
  }

LABEL_57:
  v22 = sub_5544(20);
  if (*(v22 + 8))
  {
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
      {
        if (v12)
        {
          v24 = "handles";
        }

        else
        {
          v24 = "does not handle";
        }

        sub_14B684(&__p, *a2 + 16);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 554;
        v44 = 2080;
        v45 = v24;
        v46 = 2080;
        v47 = p_p;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoutingHandler_PlaybackAndRecord %s the given route: %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  return v12;
}

void sub_146794(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6[0] = v6;
        v6[1] = v6;
        v6[2] = 0;
        (*(*v5 + 272))(v5, v6, a1 + 48);
        sub_65310(v6);
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_146828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310(va);
  sub_1A8C0(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_146858(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FFD74(v4, a1 + 16, (a1 + 32));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 109;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

void sub_146A10(uint64_t a1)
{
  sub_5659C(&v3, (a1 + 8), "", 44);
  (*(*v3 + 48))(v3, a1 + 24, 0, 0, 4, a1 + 40);
  v2 = v4;
  if (v4)
  {

    sub_1A8C0(v2);
  }
}

void sub_146AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_146ACC(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 a5, double *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v36 = sub_5544(14);
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v46 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v38 = sub_5544(14);
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      v47 = *&a2->mSelector;
      v52 = a2->mElement;
      sub_22CE0(__p);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    *v39 = &off_6DDDD0;
    v39[2] = 561211770;
  }

  if (!a6)
  {
    v40 = sub_5544(14);
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      v48 = *&a2->mSelector;
      v53 = a2->mElement;
      sub_22CE0(__p);
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    *v41 = &off_6DDDD0;
    v41[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1684370275)
  {
    switch(mSelector)
    {
      case 0x64657364u:
        if (*(a1 + 544) == 1)
        {
          return;
        }

        v24 = *(a1 + 536);
        v25 = *(v24 + 120);
        v26 = *(v24 + 128);
        v15 = (v24 + 120);
        if (v25 == v26)
        {
          return;
        }

        v16 = 1;
        goto LABEL_29;
      case 0x6470656Cu:
        v31 = *(a1 + 268);
        strcpy(buf, "lepdbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v32 = sub_4BCDCC(v31, buf, a3, a4, a6);
        if (v32)
        {
          v33 = sub_5544(14);
          v34 = *v33;
          if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Device_AOP_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 264;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyEnableListening", buf, 0x12u);
          }

          v35 = __cxa_allocate_exception(0x10uLL);
          *v35 = &off_6DDDD0;
          v35[2] = v32;
        }

        return;
      case 0x70647372u:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v44 = sub_5544(14);
          if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
          {
            v50 = *&a2->mSelector;
            v55 = a2->mElement;
            sub_22CE0(__p);
          }

          v45 = __cxa_allocate_exception(0x10uLL);
          *v45 = &off_6DDDD0;
          v45[2] = 561211770;
        }

        sub_4BCD68(buf);
        v17 = *&buf[8];
        if (*&buf[8])
        {
          v18 = std::__shared_weak_count::lock(*&buf[8]);
          v19 = *buf;
          std::__shared_weak_count::__release_weak(v17);
          if (v18 && v19)
          {
            (*(*v19 + 112))(v19, *a6);
          }

          else if (!v18)
          {
            return;
          }

          sub_1A8C0(v18);
        }

        return;
    }

    goto LABEL_33;
  }

  if (mSelector == 1634690413)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v42 = sub_5544(14);
      if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
      {
        v49 = *&a2->mSelector;
        v54 = a2->mElement;
        sub_22CE0(__p);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      *v43 = &off_6DDDD0;
      v43[2] = 561211770;
    }

    v20 = sub_4BCDCC(*(a1 + 268), a2, a3, a4, a6);
    if (v20)
    {
      v21 = v20;
      v22 = sub_5544(18);
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Device_AOP_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 240;
          v58 = 1024;
          LODWORD(v59) = v21;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d setting kAOPAudio_DriverEnabledChannelMask", buf, 0x18u);
        }
      }
    }

    return;
  }

  if (mSelector == 1651664739)
  {
    v27 = *a6;
    if (*(a1 + 548) != v27)
    {
      *(a1 + 548) = v27;
      if (*(a1 + 544) == 2)
      {
        v28 = *(a1 + 536);
        v29 = v27 == 0;
        v30 = 144;
        if (!v29)
        {
          v30 = 120;
        }

        v15 = (v28 + v30);
        if (*(v28 + v30) != *(v28 + v30 + 8))
        {
          goto LABEL_30;
        }
      }
    }

    return;
  }

  if (mSelector != 1684365924)
  {
LABEL_33:

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (*(a1 + 544) != 2)
  {
    v13 = *(a1 + 536);
    v14 = 144;
    if (*(a1 + 548))
    {
      v14 = 120;
    }

    v15 = (v13 + v14);
    if (*(v13 + v14) != *(v13 + v14 + 8))
    {
      v16 = 2;
LABEL_29:
      *(a1 + 544) = v16;
LABEL_30:

      sub_4BD904(v15);
    }
  }
}

void sub_1475C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1475F8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_1A8C0(v2);
  }
}

void sub_147654(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x147648);
}

void sub_147688()
{
  if ((atomic_load_explicit(&qword_6E6558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6558))
  {
    dword_6E6550 = sub_DD858();
    __cxa_guard_release(&qword_6E6558);
  }

  if ((atomic_load_explicit(&qword_6E6568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E6568))
  {
    v0 = sub_1F70D0(dword_6E6550);
    byte_6E6560 = 0;
    byte_6E6561 = v0;

    __cxa_guard_release(&qword_6E6568);
  }
}

uint64_t sub_147768(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886609775 && a2 != 1886614639 && a2 != 1886614625)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      if (v11 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315650;
      v13 = "Device_CarPlay_Aspen.cpp";
      v14 = 1024;
      v15 = 455;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
  }

  return 0;
}

uint64_t sub_1478E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 144;
    sub_1416D8(v3 - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_147938(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = sub_147A4C(a1, &v4, a2, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1479DC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_141FEC(a4, v7);
      v7 += 9;
      a4 += 144;
    }

    while (v7 != a3);
    do
    {
      sub_1416D8(v6);
      v6 += 144;
    }

    while (v6 != a3);
  }
}

uint64_t *sub_147A4C(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 7);
        v9 = *(v7 + 8);
        v10 = v9 > a4;
        if (v8 != a3)
        {
          v10 = v8 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 < a4;
      v12 = v8 == a3;
      v13 = v8 < a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

void sub_147AC4(uint64_t *a1)
{
  for (i = a1[1]; i != a1; i = *(i + 8))
  {
    (*(**(i + 16) + 24))(*(i + 16));
  }

  sub_141740(a1);
}

void sub_147E18(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x147E20);
  }

  sub_1CC130(a1);
}

void sub_147E30(void *a1)
{
  sub_147E68(a1);

  operator delete();
}

void *sub_147E68(void *a1)
{
  *a1 = off_6DB878;
  sub_65310(a1 + 3);
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_147EB8(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  sub_4C70(a1 + 56);

  return sub_4C70(a1 + 24);
}

void sub_147F38(void *a1)
{
  *a1 = off_6DB840;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_147FA4(void *a1)
{
  sub_303848(a1);

  operator delete();
}

__n128 sub_147FDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_6C50E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_148004(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = *a1 + 16;
  for (i = *(*a1 + 24); i != v4; i = i[1])
  {
    sub_25704(&v12, i + 2, "", 567);
    v6 = *(v12 + 144);
    if (v13)
    {
      sub_1A8C0(v13);
    }

    sub_25704(&v12, i + 4, "", 568);
    v7 = *(v12 + 144);
    if (v13)
    {
      sub_1A8C0(v13);
    }

    if (v6 == 1885433443)
    {
      v8 = 1;
      v2 = 2;
    }

    else
    {
      if (v6 != 1885433888)
      {
        v8 = 0;
        v9 = v2 & 0xFFFFFF00;
LABEL_13:
        if (v7 == 1885433888)
        {
          v9 = 0;
        }

        if (v6 == 1886613618)
        {
          v2 = 4;
        }

        else
        {
          v2 = v9;
        }

        v10 = v7 == 1885433888 || v6 == 1886613618;
        v8 |= v10;
        goto LABEL_23;
      }

      v8 = 1;
      if (v7 == 1885888867)
      {
        v2 = 3;
      }

      else
      {
        v9 = 1;
        if (v7 != 1886613611)
        {
          goto LABEL_13;
        }

        sub_14BB28(a2, 8, (i + 2));
        v2 = 1;
      }
    }

LABEL_23:
    v11 = sub_108CA8(v6);
    if ((v11 | v8))
    {
      if (v11)
      {
        v2 = 9;
      }

      sub_14BB28(a2, v2, (i + 2));
    }
  }
}

void sub_1481C0(uint64_t a1, int a2)
{
  v3 = *(a1 + 872);
  if (v3)
  {
    (*(*v3 + 184))(v3);
    v5 = sub_5544(1);
    v6 = sub_5544(17);
    v7 = 0;
    *v13 = 0x100000002;
    v8 = *(v5 + 8);
    while (1)
    {
      v9 = *&v13[v7];
      if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
      {
        break;
      }

      v7 += 4;
      if (v7 == 8)
      {
        if ((v8 & 1) == 0)
        {
          return;
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
        v11 = "false";
        v12 = *(a1 + 872);
        *&v13[4] = "VirtualAudio_Device.cpp";
        *v13 = 136315906;
        v14 = 1024;
        if (a2)
        {
          v11 = "true";
        }

        v15 = 628;
        v16 = 2080;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetAggregateIsTrustworthy: %s on device at %p", v13, 0x26u);
      }
    }
  }
}

void sub_148354(uint64_t a1, int a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = "trustworthy";
  }

  else
  {
    v5 = "untrustworthy";
  }

  v17 = v5;
  do
  {
    v6 = v4;
    v7 = (*(*a1 + 88))(a1, v4 & 1);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      if (v6)
      {
        v10 = "output";
      }

      else
      {
        v10 = "input";
      }

      do
      {
        v11 = (*(*a1 + 96))(a1, v6 & 1, v9);
        if (v11)
        {
          sub_11EA10(v11, a2);
          v12 = sub_5544(17);
          if (*(v12 + 8))
          {
            v13 = *v12;
            if (*v12)
            {
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
              {
                sub_53E8(__p, v10);
                v14 = __p;
                if (v19 < 0)
                {
                  v14 = __p[0];
                }

                *buf = 136316162;
                v21 = "AggregateDevice_CommonBase.cpp";
                v22 = 1024;
                v23 = 527;
                v24 = 2080;
                v25 = v14;
                v26 = 1024;
                v27 = v9;
                v28 = 2080;
                v29 = v17;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s stream index %u is now flagged as %s", buf, 0x2Cu);
                if (v19 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        else
        {
          v15 = sub_5544(17);
          v16 = *v15;
          if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v21 = "AggregateDevice_CommonBase.cpp";
            v22 = 1024;
            v23 = 523;
            v24 = 1024;
            LODWORD(v25) = v9;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Stream index %u was not resolvable to a va::VirtualStream", buf, 0x18u);
          }
        }

        v9 = (v9 + 1);
      }

      while (v8 != v9);
    }

    v4 = 1;
  }

  while ((v6 & 1) == 0);
}

uint64_t sub_1485D0(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1684370275)
  {
    if (mSelector == 1651664739)
    {
      return 1;
    }

    if (mSelector != 1684365924)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (mSelector == 1684370276)
  {
LABEL_11:
    mScope = a2->mScope;
    LODWORD(v13) = 1634689389;
    HIDWORD(v13) = mScope;
    LODWORD(v14) = 0;
    return (*(*a1 + 16))(a1, &v13);
  }

  if (mSelector != 1885631346)
  {
LABEL_12:
    sub_4DFC0(a1);
    return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
  }

  sub_4BCD68(&v13);
  v5 = v14;
  if (!v14)
  {
    return 0;
  }

  v6 = std::__shared_weak_count::lock(v14);
  if (v6)
  {
    v7 = v6;
    v8 = v13;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v5);
    sub_1A8C0(v7);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = v8 != 0;
      sub_1A8C0(v9);
    }

    else
    {
      v10 = 0;
    }

    v5 = v7;
  }

  else
  {
    v10 = 0;
  }

  std::__shared_weak_count::__release_weak(v5);
  return v10;
}

void sub_14874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_165A98(&v12, (a1 + 80), "", 57);
  (*(*v12 + 40))(v12, a2, a3, a4, a5, a6);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_14881C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_148834(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v4 = v2 - 4;
        sub_5D988(v2 - 2);
        sub_5D988(v4);
        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void *sub_1488B8(void *a1)
{
  v28 = &v28;
  v29 = &v28;
  v30 = 0;
  cf[0] = 0;
  v34 = 8;
  if (!(*(*a1 + 120))(a1, 1685287015, 1734504312, cf, &v34, 0, 0, 0))
  {
    v33 = cf[0];
    if (cf[0])
    {
      v9 = CFGetTypeID(cf[0]);
      if (v9 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    v10 = sub_5544(25);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = CFCopyDescription(v33);
          cf[1] = v12;
          sub_1267C(__p, v12);
          if (v12)
          {
            CFRelease(v12);
          }

          v13 = __p;
          if (v32 < 0)
          {
            v13 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "DSPGraphChain.cpp";
          v37 = 1024;
          v38 = 77;
          v39 = 2080;
          v40 = v13;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d boxes: %s", buf, 0x1Cu);
          if (v32 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    v14 = v33;
    if (v33)
    {
      Count = CFArrayGetCount(v33);
      v16 = Count;
      v17 = v33;
      if (v33)
      {
        v18 = CFArrayGetCount(v33);
        if (!v16)
        {
LABEL_33:
          if (v33)
          {
            CFRelease(v33);
          }

          goto LABEL_2;
        }
      }

      else
      {
        v18 = 0;
        if (!Count)
        {
          goto LABEL_33;
        }
      }

      v19 = 0;
      do
      {
        if (v14 == v17 && v18 == v19)
        {
          break;
        }

        sub_A3B9C(__p, v14, v19);
        v20 = __p[0];
        if (__p[0])
        {
          v21 = CFGetTypeID(__p[0]);
          if (v21 == CFDictionaryGetTypeID())
          {
            continue;
          }
        }

        v24 = sub_5544(14);
        v25 = *v24;
        if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "DSPGraphChain.cpp";
          v37 = 1024;
          v38 = 83;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Dictionary expected as value", buf, 0x12u);
        }

        v26 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v26, "Dictionary expected as value");
        sub_A3C4C(buf, __p);
        v22 = sub_148DA8(*buf, "audioComponentDescription");
        if (v22)
        {
          v23 = sub_4A0DC(v22, "componentSubType");
          if (v23)
          {
            if ((sub_113A0(v23) & 0x100000000) != 0)
            {
              operator new();
            }
          }
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        CFRelease(v20);
        ++v19;
      }

      while (v16 != v19);
      goto LABEL_33;
    }
  }

LABEL_2:
  sub_4E0BC(a1 + 149);
  v2 = v30;
  if (v30)
  {
    v4 = v28;
    v3 = v29;
    v5 = *(v28 + 8);
    v6 = *v29;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = a1[149];
    *(v7 + 8) = v3;
    *v3 = v7;
    a1[149] = v4;
    *(v4 + 8) = a1 + 149;
    a1[151] += v2;
    v30 = 0;
  }

  return sub_4E0BC(&v28);
}

void sub_148CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

const UInt8 *sub_148DA8(const __CFDictionary *a1, const UInt8 *__s)
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

void sub_148E70(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x148E1CLL);
}

uint64_t sub_148EC8(uint64_t a1, int a2, int a3)
{
  v6 = a1 + 48;
  sub_26C0(a1 + 48);
  if (*(a1 + 32) == *(a1 + 24))
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
    v7 = -1;
    v8 = 1;
    while (1)
    {
      v9 = sub_8C098(a1, v8 - 1);
      v10 = v9;
      if (v9)
      {
        if ((*(*v9 + 160))(v9) == a2 && ++v7 == a3)
        {
          break;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3) <= v8++)
      {
        goto LABEL_7;
      }
    }
  }

  sub_3174(v6);
  return v10;
}

void sub_148FD8(uint64_t a1)
{
  if (*(a1 + 112))
  {
    operator new();
  }

  sub_1EC054();
}

void sub_1491F0()
{
  sub_13EFE4(v0);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_149250(void *a1, int a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_149330(v9, a5);
  sub_1493AC(a1, a2, v12, v9);
  if (v11 == 1)
  {
    sub_477A0(v10);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *a1 = off_6D50C0;
  return a1;
}

void sub_1492FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_477A0(a12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_149330(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *a1 = *a2;
    sub_149734((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_14938C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_477A0(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1493AC(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_6D0BC0;
  v6 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_149330(a1 + 40, a4);
  *(a1 + 96) = 1;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = a2;
  return a1;
}

void sub_149434(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

float sub_149458(double *a1)
{
  v2 = (*(*a1 + 136))(a1);
  result = 0.0;
  if (v2 != 1935895666)
  {
    if (v2 != 1684234860)
    {
      v4 = v2;
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v8 = 136315650;
          v9 = "VolumeControl.h";
          v10 = 1024;
          v11 = 1371;
          v12 = 1024;
          v13 = v4;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered an invalid volume unit type: %d", &v8, 0x18u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Encountered an invalid volume unit type: %d");
    }

    return a1[17];
  }

  return result;
}

uint64_t sub_1495D4(uint64_t result, unsigned int a2)
{
  v2 = *(result + 112);
  if (!v2)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4 <= a2 && (v4 != a2 || !*(v3 + 9)))
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_9;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_1496D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = i - 32;
    sub_5D988((i - 16));
    sub_5D988(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_149734(void *result, void *a2)
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

uint64_t sub_1498D0(uint64_t a1, int a2, uint64_t a3, std::__shared_weak_count *a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v9 = 0;
  sub_1493AC(a1, a2, v10, v7);
  if (v9 == 1)
  {
    sub_477A0(v8);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  return a1;
}

void sub_14994C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_477A0(a12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_149978(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v5 = (a1 + 640);
  if (v5 != a2)
  {
    sub_149B28(v5, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  if ((a1 + 664) != a3)
  {
    sub_149B28((a1 + 664), *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  v6 = *(a1 + 640);
  for (i = *(a1 + 648); v6 != i; v6 += 16)
  {
    (*(**(*v6 + 152) + 184))(&v10);
    sub_14C4D4((a1 + 248), *(a1 + 256), v10, v11, (v11 - v10) >> 4);
    v12 = &v10;
    sub_F5714(&v12);
  }

  v8 = *(a1 + 664);
  for (j = *(a1 + 672); v8 != j; v8 += 16)
  {
    (*(**(*v8 + 152) + 184))(&v10);
    sub_14C4D4((a1 + 248), *(a1 + 256), v10, v11, (v11 - v10) >> 4);
    v12 = &v10;
    sub_F5714(&v12);
  }

  (*(*a1 + 648))(a1);
  sub_F7240(a1);
}

void sub_149B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_F5714(&a12);
  _Unwind_Resume(a1);
}

void sub_149B28(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_14CD4C(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_868A0(a1, v10);
    }

    sub_189A00();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    sub_149C34(a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_1A8C0(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_149C34(a2, (a2 + v11), v7);
    a1[1] = sub_149CAC(a1, v12, a3, a1[1]);
  }
}

uint64_t *sub_149C34(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
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

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *sub_149CAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

uint64_t sub_149CE4(uint64_t a1)
{
  if ((*(*a1 + 88))(a1, 0) >= 2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(*a1 + 88))(a1, 0);
      v14 = 136315650;
      v15 = "AggregateDevice_Common.cpp";
      v16 = 1024;
      v17 = 826;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): The helper function InitializeStreamUsage() handles only single-stream AggregateDevice_Common instances, and this one has %u input streams. Implement stream initialization in the derived class.", &v14, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(exception, "The helper function InitializeStreamUsage() handles only single-stream AggregateDevice_Common instances, and this one has %u input streams. Implement stream initialization in the derived class.");
  }

  if ((*(*a1 + 88))(a1, 1) >= 2)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v12 = (*(*a1 + 88))(a1, 1);
      v14 = 136315650;
      v15 = "AggregateDevice_Common.cpp";
      v16 = 1024;
      v17 = 827;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): The helper function InitializeStreamUsage() handles only single-stream AggregateDevice_Common instances, and this one has %u output streams. Implement stream initialization in the derived class.", &v14, 0x18u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(v13, "The helper function InitializeStreamUsage() handles only single-stream AggregateDevice_Common instances, and this one has %u output streams. Implement stream initialization in the derived class.");
  }

  v2 = 0;
  LOWORD(v14) = 256;
  do
  {
    v3 = *(&v14 + v2);
    v4 = (*(*a1 + 88))(a1, v3) != 0;
    result = (*(*a1 + 616))(a1, v3, 0, v4);
    ++v2;
  }

  while (v2 != 2);
  return result;
}

void sub_14A014(uint64_t *a1, uint64_t a2, int a3, unsigned int a4)
{
  sub_51AF8(a1);
  if (a3)
  {
    v69 = sub_5544(14);
    v70 = *v69;
    if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 303;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): The default implementation of SetStreamIsUsed() handles only single-stream AggregateDevice_Common instances. Override the function in the derived class.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(exception, "The default implementation of SetStreamIsUsed() handles only single-stream AggregateDevice_Common instances. Override the function in the derived class.");
  }

  v8 = sub_5544(17);
  v9 = sub_5544(23);
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
      goto LABEL_8;
    }
  }

  if ((v11 & v12) == 0)
  {
    v8 = v9;
  }

LABEL_8:
  v13 = *v8;
  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = a4 ? "En" : "Dis";
    v15 = a2 ? "output" : "input";
    sub_53E8(__p, v15);
    v16 = SHIBYTE(v87) >= 0 ? __p : __p[0];
    *buf = 136315906;
    *&buf[4] = "AggregateDevice_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 305;
    v89 = 2080;
    v90 = v14;
    v91 = 2080;
    v92 = v16;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %sabling %s stream on aggregate.", buf, 0x26u);
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = (*(*a1 + 120))(a1);
  sub_10852C(__p, a2, v17, a1[67]);
  v18 = 101;
  if (a2)
  {
    v18 = 104;
  }

  v19 = &a1[v18];
  if (v19[1] - *v19 != *(v87 + 2))
  {
    v20 = sub_5544(17);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        sub_1197BC(&v85, __p);
        v22 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 310;
        v89 = 2080;
        v90 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d streamUsage: %s.", buf, 0x1Cu);
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (v19[1] - *v19 != *(v87 + 2))
  {
    v23 = sub_5544(17);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        sub_36E9DC(&v85, *v19, v19[1]);
        v25 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 311;
        v89 = 2080;
        v90 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d usageMask: %s.", buf, 0x1Cu);
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v26 = *(v87 + 2);
  if (v19[1] - *v19 != v26)
  {
    v72 = sub_5544(14);
    v73 = *v72;
    if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 312;
      v89 = 1024;
      LODWORD(v90) = a2;
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL aggregate device reported a different number of streams than our internal usage template for direction %d.", buf, 0x18u);
    }

    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "The HAL aggregate device reported a different number of streams than our internal usage template for direction %d.");
LABEL_131:
  }

  if (v26)
  {
    goto LABEL_44;
  }

  if ((*(*a1 + 88))(a1, a2))
  {
    v75 = sub_5544(14);
    v76 = *v75;
    if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 313;
      _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL aggregate device reported no streams, yet we have one.", buf, 0x12u);
    }

    v74 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v74, "The HAL aggregate device reported no streams, yet we have one.");
    goto LABEL_131;
  }

  if (!*(v87 + 2) && a4)
  {
    v77 = sub_5544(14);
    v78 = *v77;
    if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 314;
      _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Attempt to enable stream when there aren't any.", buf, 0x12u);
    }

    v79 = __cxa_allocate_exception(0x10uLL);
    *v79 = &off_6DDDD0;
    v79[2] = 1852797029;
  }

LABEL_44:
  v27 = sub_5544(17);
  if (*(v27 + 8))
  {
    v28 = *v27;
    if (*v27)
    {
      if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 316;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Before modifying our stream usage data structure:", buf, 0x12u);
      }
    }
  }

  v29 = sub_5544(17);
  if (*(v29 + 8))
  {
    v30 = *v29;
    if (*v29)
    {
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(v87 + 2);
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 317;
        v89 = 1024;
        LODWORD(v90) = v31;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mNumberStreams: %u.", buf, 0x18u);
      }
    }
  }

  if (*(v87 + 2))
  {
    v32 = sub_5544(17);
    if (*(v32 + 8))
    {
      v33 = *v32;
      if (*v32)
      {
        if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
        {
          v34 = *(v87 + 3);
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 318;
          v89 = 1024;
          LODWORD(v90) = v34;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mStreamIsOn[0]: %u", buf, 0x18u);
        }
      }
    }
  }

  if (*(v87 + 2) >= 2u)
  {
    v35 = sub_5544(17);
    if (*(v35 + 8))
    {
      v36 = *v35;
      if (*v35)
      {
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
        {
          v37 = *(v87 + 4);
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          v89 = 1024;
          LODWORD(v90) = v37;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mStreamIsOn[1]: %u", buf, 0x18u);
        }
      }
    }
  }

  if (*(v87 + 2) >= 3u)
  {
    v38 = sub_5544(17);
    if (*(v38 + 8))
    {
      v39 = *v38;
      if (*v38)
      {
        if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(v87 + 5);
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 320;
          v89 = 1024;
          LODWORD(v90) = v40;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mStreamIsOn[2]: %u", buf, 0x18u);
        }
      }
    }
  }

  if (*(v87 + 2))
  {
    v41 = *v19;
    v42 = v19[1] - *v19;
    if (v42)
    {
      v43 = 0;
      v44 = v87 + 12;
      do
      {
        v45 = v41[v43];
        if (v45 == 1)
        {
          v46 = a4;
        }

        else
        {
          v46 = 0;
        }

        if (v45 == 2)
        {
          v47 = 1;
        }

        else
        {
          v47 = v46;
        }

        *&v44[4 * v43++] = v47;
      }

      while (v42 > v43);
    }

    v48 = sub_5544(17);
    v49 = *v48;
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
    {
      v84 = *(a1 + 276);
      v50 = &v85;
      sub_68108(&v85, &v84);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = v85.__r_.__value_.__r.__words[0];
      }

      sub_1197BC(v82, __p);
      v51 = v83;
      v52 = v82[0];
      if (a2)
      {
        v53 = "output";
      }

      else
      {
        v53 = "input";
      }

      sub_53E8(v80, v53);
      v54 = v82;
      if (v51 < 0)
      {
        v54 = v52;
      }

      if (v81 >= 0)
      {
        v55 = v80;
      }

      else
      {
        v55 = v80[0];
      }

      *buf = 136316162;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 337;
      v89 = 2080;
      v90 = v50;
      v91 = 2080;
      v92 = v54;
      v93 = 2080;
      v94 = v55;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VA Stream usage for %s is %s for direction %s", buf, 0x30u);
      if (v81 < 0)
      {
        operator delete(v80[0]);
      }

      if (v83 < 0)
      {
        operator delete(v82[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }
    }

    if (*(v87 + 2))
    {
      v56 = sub_5544(17);
      if (*(v56 + 8))
      {
        v57 = *v56;
        if (*v56)
        {
          if (os_log_type_enabled(*v56, OS_LOG_TYPE_DEBUG))
          {
            v58 = *(v87 + 3);
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 338;
            v89 = 1024;
            LODWORD(v90) = v58;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mStreamIsOn[0]: %u", buf, 0x18u);
          }
        }
      }
    }

    if (*(v87 + 2) >= 2u)
    {
      v59 = sub_5544(17);
      if (*(v59 + 8))
      {
        v60 = *v59;
        if (*v59)
        {
          if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEBUG))
          {
            v61 = *(v87 + 4);
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 339;
            v89 = 1024;
            LODWORD(v90) = v61;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mStreamIsOn[1]: %u", buf, 0x18u);
          }
        }
      }
    }

    if (*(v87 + 2) >= 3u)
    {
      v62 = sub_5544(17);
      if (*(v62 + 8))
      {
        v63 = *v62;
        if (*v62)
        {
          if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
          {
            v64 = *(v87 + 5);
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 340;
            v89 = 1024;
            LODWORD(v90) = v64;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d streamUsage->mStreamIsOn[2]: %u", buf, 0x18u);
          }
        }
      }
    }

    sub_14B410(a1, a2, a4, *v19, v19[1]);
    v65 = sub_10834C(__p);
    if (v65)
    {
      v66 = sub_5544(14);
      v67 = *v66;
      if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 345;
        _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: VAStreamUsage::Set() failed.", buf, 0x12u);
      }

      v68 = __cxa_allocate_exception(0x10uLL);
      *v68 = &off_6DDDD0;
      v68[2] = v65;
    }

    sub_14AEA8(a1, a2, a4, *v19, v19[1]);
    if (*(a1 + 792) == 1 && (a2 & 1) == 0)
    {
      (*(*a1 + 504))(buf, a1);
      sub_14C6B8(a1, (a1 + 68), __p, buf);
      sub_477A0(*&buf[8]);
    }
  }

  free(v87);
}

void sub_14ADD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  __cxa_free_exception(v30);
  free(a28);
  _Unwind_Resume(a1);
}

void sub_14AEA8(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4, _BYTE *a5)
{
  v21[0] = a2;
  v22 = a1 + 544;
  v23 = 0;
  if (a4 != a5)
  {
    v6 = a4;
    v9 = 0;
    if (a2)
    {
      v10 = "output";
    }

    else
    {
      v10 = "input";
    }

    do
    {
      sub_119590(buf, v21);
      v11 = *&buf[8];
      if (*&buf[8])
      {
        v12 = std::__shared_weak_count::lock(*&buf[8]);
        if (v12)
        {
          v13 = *buf;
        }

        else
        {
          v13 = 0;
        }

        std::__shared_weak_count::__release_weak(v11);
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v14 = sub_5544(17);
      if ((*(v14 + 8) & 1) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      sub_53E8(__p, v10);
      v16 = __p;
      if (v20 < 0)
      {
        v16 = __p[0];
      }

      v17 = "false";
      if (((*v6 != 0) & a3) != 0)
      {
        v17 = "true";
      }

      *buf = 136316162;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1033;
      v25 = 2080;
      v26 = v16;
      v27 = 2080;
      v28 = v17;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will call DidSetStreamIsUsed(%s, %s) on %p", buf, 0x30u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
        if (v13)
        {
LABEL_20:
          if (*v6)
          {
            v18 = a3;
          }

          else
          {
            v18 = 0;
          }

          (*(*v13 + 184))(v13, a2, v18);
          v23 = ++v9;
        }
      }

      else
      {
LABEL_19:
        if (v13)
        {
          goto LABEL_20;
        }
      }

      if (v12)
      {
        sub_1A8C0(v12);
      }

      ++v6;
    }

    while (v6 != a5);
  }
}

void sub_14B0F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_14B120(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        sub_C31F4(*(v2 + 14));
        sub_C31F4(*(v2 + 11));
        v7 = (v2 + 56);
        sub_1084A8(&v7);
        v7 = (v2 + 32);
        sub_1084A8(&v7);
        v6 = *(v2 + 3);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_14B334(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    sub_477A0(a12);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete();
}

void sub_14B37C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_14B410(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4, _BYTE *a5)
{
  v21[0] = a2;
  v22 = a1 + 544;
  v23 = 0;
  if (a4 != a5)
  {
    v6 = a4;
    v9 = 0;
    if (a2)
    {
      v10 = "output";
    }

    else
    {
      v10 = "input";
    }

    do
    {
      sub_119590(buf, v21);
      v11 = *&buf[8];
      if (*&buf[8])
      {
        v12 = std::__shared_weak_count::lock(*&buf[8]);
        if (v12)
        {
          v13 = *buf;
        }

        else
        {
          v13 = 0;
        }

        std::__shared_weak_count::__release_weak(v11);
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v14 = sub_5544(17);
      if ((*(v14 + 8) & 1) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      sub_53E8(__p, v10);
      v16 = __p;
      if (v20 < 0)
      {
        v16 = __p[0];
      }

      v17 = "false";
      if (((*v6 != 0) & a3) != 0)
      {
        v17 = "true";
      }

      *buf = 136316162;
      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1013;
      v25 = 2080;
      v26 = v16;
      v27 = 2080;
      v28 = v17;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will call WillSetStreamIsUsed(%s, %s) on %p", buf, 0x30u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
        if (v13)
        {
LABEL_20:
          if (*v6 == 1)
          {
            v18 = a3;
          }

          else
          {
            v18 = 0;
          }

          (*(*v13 + 176))(v13, a2, v18);
          v23 = ++v9;
        }
      }

      else
      {
LABEL_19:
        if (v13)
        {
          goto LABEL_20;
        }
      }

      if (v12)
      {
        sub_1A8C0(v12);
      }

      ++v6;
    }

    while (v6 != a5);
  }
}

void sub_14B65C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_14B684(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    while (1)
    {
      sub_14B79C(__p, (v4 + 16));
      v5 = (v9 & 0x80u) == 0 ? __p : __p[0];
      v6 = (v9 & 0x80u) == 0 ? v9 : __p[1];
      std::string::append(a1, v5, v6);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = *(v4 + 8);
      if (v4 == a2)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_14B760(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_14B784(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x14B76CLL);
}

void sub_14B79C(_BYTE *a1, uint64_t *a2)
{
  sub_25704(&v27, a2, "", 3243);
  sub_25704(&v25, a2 + 2, "", 3244);
  v4 = v27;
  sub_22170(v23, *(v27 + 144));
  if (v24 >= 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  (*(*v4 + 144))(v21, v4);
  if (v22 >= 0)
  {
    v6 = v21;
  }

  else
  {
    v6 = v21[0];
  }

  if (*(v4 + 303) < 0)
  {
    sub_54A0(__dst, *(v4 + 280), *(v4 + 288));
  }

  else
  {
    *__dst = *(v4 + 280);
    v20 = *(v4 + 296);
  }

  v7 = a1;
  if (v20 >= 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  v9 = v25;
  sub_22170(v17, *(v25 + 144));
  if (v18 >= 0)
  {
    v10 = v17;
  }

  else
  {
    v10 = v17[0];
  }

  v11 = v15;
  (*(*v9 + 144))(v15, v9);
  if (v16 < 0)
  {
    v11 = v15[0];
  }

  if (*(v9 + 303) < 0)
  {
    sub_54A0(__p, *(v9 + 280), *(v9 + 288));
  }

  else
  {
    *__p = *(v9 + 280);
    v14 = *(v9 + 296);
  }

  v12 = __p;
  if (v14 < 0)
  {
    v12 = __p[0];
  }

  snprintf(__str, 0x400uLL, "[ source: '%s'; %s; %s / destination: '%s'; %s; %s ]", v5, v6, v8, v10, v11, v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  sub_53E8(v7, __str);
  if (v26)
  {
    sub_1A8C0(v26);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }
}

void sub_14BA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, std::__shared_weak_count *a49)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v51 < 0)
  {
    operator delete(v49);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (v50 < 0)
  {
    operator delete(a16);
  }

  if (a47)
  {
    sub_1A8C0(a47);
  }

  if (a49)
  {
    sub_1A8C0(a49);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_14BADC(uint64_t *a1, int a2)
{
  if (!a1)
  {
LABEL_8:
    sub_DE7DC("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

void sub_14BB28(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = a1 + 8;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == a1 + 8 || *(v4 + 32) > a2)
  {
LABEL_8:
    operator new();
  }

  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  if (v6 >= v5)
  {
    v8 = *(v4 + 40);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      sub_189A00();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_1DB8DC(v12);
    }

    *(8 * v9) = a3;
    v7 = 8 * v9 + 8;
    v13 = *(v4 + 40);
    v14 = *(v4 + 48) - v13;
    v15 = (8 * v9 - v14);
    memcpy(v15, v13, v14);
    v16 = *(v4 + 40);
    *(v4 + 40) = v15;
    *(v4 + 48) = v7;
    *(v4 + 56) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = a3;
    v7 = (v6 + 1);
  }

  *(v4 + 48) = v7;
}

uint64_t sub_14BD5C(uint64_t a1, int a2)
{
  if (sub_FC3EC(*(a1 + 8), a2))
  {
    return **sub_14BADC(*(a1 + 8), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_14BDB0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_141740(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_14BDFC(uint64_t a1)
{
  if (*(a1 + 796) == 1 && *(a1 + 797) == 1)
  {
    if ((*(*a1 + 80))(a1))
    {
      result = sub_8C098(a1, 0);
    }

    else
    {
      result = sub_148EC8(a1, 1936747629, 0);
    }
  }

  else
  {
    result = 0;
  }

  atomic_store(result, (a1 + 1152));
  return result;
}

os_signpost_id_t *sub_14BE94(os_signpost_id_t *a1)
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
        v12 = 99;
        v13 = 2080;
        v14 = "kDSPInitialization";
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
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_DSPInitialization", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_14C03C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_14C048(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v29, __str);
  v4 = std::string::insert(&v29, 0, "[ addr: ", 8uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v31 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v31 >= 0)
  {
    v7 = HIBYTE(v31);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (sub_F5EFC(a1))
  {
    v8 = "out";
  }

  else
  {
    v8 = "in";
  }

  sub_53E8(&v29, v8);
  v9 = std::string::insert(&v29, 0, "; dir: ", 7uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v31 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v31 >= 0)
  {
    v12 = HIBYTE(v31);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append(a2, v11, v12);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::to_string(&v29, *(a1 + 200));
  v13 = std::string::insert(&v29, 0, "; pref virt chans: ", 0x13uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v31 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v31 >= 0)
  {
    v16 = HIBYTE(v31);
  }

  else
  {
    v16 = __p[1];
  }

  std::string::append(a2, v15, v16);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::to_string(&v29, *(a1 + 204));
  v17 = std::string::insert(&v29, 0, "; forced virt chans: ", 0x15uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v31 = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (v31 >= 0)
  {
    v20 = HIBYTE(v31);
  }

  else
  {
    v20 = __p[1];
  }

  std::string::append(a2, v19, v20);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v21 = *(a1 + 88);
  if (v21 && (v22 = std::__shared_weak_count::lock(v21)) != 0)
  {
    v23 = v22;
    v24 = *(a1 + 80);
    if (v24)
    {
      sub_23148(&v29, v24 + 2);
      goto LABEL_50;
    }
  }

  else
  {
    v23 = 0;
  }

  sub_53E8(&v29, "nullptr");
LABEL_50:
  v25 = std::string::insert(&v29, 0, "; actual strm: ", 0xFuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v31 = v25->__r_.__value_.__r.__words[2];
  *__p = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if (v31 >= 0)
  {
    v28 = HIBYTE(v31);
  }

  else
  {
    v28 = __p[1];
  }

  std::string::append(a2, v27, v28);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, " ]", 2uLL);
  if (v23)
  {
    sub_1A8C0(v23);
  }
}

void sub_14C3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22)
  {
    sub_1A8C0(v22);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void **sub_14C470(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_13AA8C(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_14C4B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_F320C(a2, *(a1 + 336), *(a1 + 344), (*(a1 + 344) - *(a1 + 336)) >> 4);
}

void sub_14C4D4(void *a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v15 = v10 - a2;
      v16 = (v10 - a2) >> 4;
      if (v16 >= a5)
      {
        sub_3700FC(a1, a2, a1[1], &a2[16 * a5]);
        v17 = &v6[2 * a5];
      }

      else
      {
        a1[1] = sub_F3284(a1, (a3 + v15), a4, a1[1]);
        if (v16 < 1)
        {
          return;
        }

        sub_3700FC(a1, a2, v10, &a2[16 * a5]);
        v17 = (v6 + v15);
      }

      sub_370184(v6, v17, a2);
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        sub_189A00();
      }

      v13 = v9 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v30 = a1;
      if (v14)
      {
        sub_1DC690(v14);
      }

      v18 = 16 * ((a2 - v11) >> 4);
      v29 = 0;
      v19 = (v18 + 16 * a5);
      v20 = v18;
      do
      {
        v21 = v6[1];
        *v20 = *v6;
        *(v20 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v20 += 16;
        v6 += 2;
      }

      while (v20 != v19);
      memcpy(v19, a2, a1[1] - a2);
      v22 = *a1;
      v23 = &v19[a1[1] - a2];
      a1[1] = a2;
      v24 = a2 - v22;
      v25 = (v18 - (a2 - v22));
      memcpy(v25, v22, v24);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v23;
      v27 = a1[2];
      a1[2] = v29;
      v28[2] = v26;
      v29 = v27;
      v28[0] = v26;
      v28[1] = v26;
      sub_A0650(v28);
    }
  }
}

void sub_14C6B8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  buf[0] = 0;
  *(&v44 + 4) = a2;
LABEL_2:
  HIDWORD(v44) = v6;
  sub_119590(&v40, buf);
  v9 = v41;
  if (v41)
  {
    v10 = std::__shared_weak_count::lock(v41);
    if (v10)
    {
      v11 = v10;
      v12 = v40;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v40 = 0;
      v41 = 0;
      std::__shared_weak_count::__release_weak(v9);
      sub_1A8C0(v11);
      v13 = std::__shared_weak_count::lock(v11);
      if (v13)
      {
        sub_1A8C0(v13);
        std::__shared_weak_count::__release_weak(v11);
        if (!v12)
        {
          goto LABEL_58;
        }

        sub_119590(&v40, buf);
        v14 = v41;
        if (!v41)
        {
          goto LABEL_55;
        }

        v15 = std::__shared_weak_count::lock(v41);
        v16 = v40;
        std::__shared_weak_count::__release_weak(v14);
        v17 = 4;
        if (!v15 || !v16)
        {
          goto LABEL_52;
        }

        if (!(*(*v16 + 88))(v16, 0))
        {
          v17 = 0;
          goto LABEL_53;
        }

        (*(*v16 + 128))(&v40, v16);
        if (v42 < 0)
        {
          if (v41 != (&dword_4 + 3))
          {
            operator delete(v40);
LABEL_34:
            v17 = 0;
            v8 += (*(*v16 + 88))(v16, 0);
            goto LABEL_53;
          }

          v20 = *v40 != 1634037843 || *(v40 + 3) != 1919249249;
          operator delete(v40);
          if (v20)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v42 != 7)
          {
            goto LABEL_34;
          }

          if (v40 != 1634037843 || *(&v40 + 3) != 1919249249)
          {
            goto LABEL_34;
          }
        }

        v21 = (*(*v16 + 312))(v16);
        v22 = *(a4 + 8);
        if (!v22)
        {
LABEL_32:
          v24 = 1;
          goto LABEL_36;
        }

        while (1)
        {
          v23 = *(v22 + 7);
          if (v23 <= 0x7073706B)
          {
            if (v23 == 1886613611)
            {
              v24 = 0;
LABEL_36:
              v25 = sub_DD858();
              if (sub_1192CC(v25) == 3)
              {
LABEL_45:
                v27 = 1;
              }

              else
              {
                v26 = a1[73];
                v27 = 1;
                if (v26 > 1987077986)
                {
                  if (v26 != 1987077987 && v26 != 1987081839)
                  {
                    v28 = 1987081833;
                    goto LABEL_43;
                  }

                  goto LABEL_44;
                }

                if (v26 == 1768057203)
                {
                  goto LABEL_44;
                }

                v28 = 1919776355;
LABEL_43:
                if (v26 == v28)
                {
LABEL_44:
                  if ((*(*a1 + 152))(a1))
                  {
                    goto LABEL_45;
                  }

                  sub_ABF48();
                  v27 = qword_6FD630 == 1;
                }
              }

              if ((v21 & 0x1FFFFFFFFLL) == 0x100000000)
              {
                v29 = 1;
              }

              else
              {
                v29 = v24;
              }

              v30 = v27 | v7;
              v17 = 2;
              if ((v29 & 1) == 0)
              {
                v7 = v30;
              }

LABEL_52:
              if (v15)
              {
LABEL_53:
                sub_1A8C0(v15);
              }

              if ((v17 | 4) == 4)
              {
LABEL_55:
                ++v6;
                goto LABEL_2;
              }

              goto LABEL_58;
            }

            ++v22;
          }

          v22 = *v22;
          if (!v22)
          {
            goto LABEL_32;
          }
        }
      }

      v9 = v11;
    }

    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_58:
  if (v7)
  {
    v31 = v8 < *(*(a3 + 16) + 8);
    v32 = sub_5544(17);
    v33 = *v32;
    if (v31)
    {
      if (v33 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(*(a3 + 16) + 4 * v8 + 12);
        *buf = 136315906;
        *&v44 = "AggregateDevice_CommonBase.cpp";
        WORD4(v44) = 1024;
        *(&v44 + 10) = 2321;
        HIWORD(v44) = 1024;
        v45 = v8;
        v46 = 1024;
        v47 = v34;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Speaker telemetry is at index %u, input stream usage mask is %u", buf, 0x1Eu);
      }

      if (!*(*(a3 + 16) + 4 * v8 + 12))
      {
        v35 = sub_5544(14);
        v36 = *v35;
        if (*v35)
        {
          if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&v44 = "AggregateDevice_CommonBase.cpp";
            WORD4(v44) = 1024;
            *(&v44 + 10) = 2323;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Speaker is in device topology, but telemetry stream usage is off", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Speaker is in device topology, but telemetry stream usage is off");
      }
    }

    else if (v33 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      v38 = *(*(a3 + 16) + 8);
      *buf = 136315906;
      *&v44 = "AggregateDevice_CommonBase.cpp";
      WORD4(v44) = 1024;
      *(&v44 + 10) = 2317;
      HIWORD(v44) = 1024;
      v45 = v8;
      v46 = 1024;
      v47 = v38;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Telemetry stream index %u is inconsistent with stream usage size %u", buf, 0x1Eu);
    }
  }
}

unint64_t sub_14CC7C(void *a1, unint64_t *a2)
{
  if (!sub_45168())
  {
    return 1;
  }

  v6 = *a1;
  v5 = a1 + 1;
  v4 = v6;
  if (v6 == v5)
  {
    return 1;
  }

  while (*(v4 + 7) != 1886613611)
  {
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
      return 1;
    }
  }

  result = *a2;
  if (*a2)
  {
    v11 = sub_59410(result);
    *(&v13 + 1) = v12;
    *&v13 = v11;
    return ((v13 >> 32) >> 32) & (HIDWORD(v11) != 0);
  }

  return result;
}

void sub_14CD4C(uint64_t *a1)
{
  if (*a1)
  {
    sub_F5768(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_14CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = *(*a2 + 24);
  sub_25704(&v72, v64 + 4, "", 79);
  v6 = v72;
  v7 = *(v72 + 200);
  if (!v7)
  {
    goto LABEL_62;
  }

  v8 = *(v72 + 144);
  v63 = *(a2 + 12);
  v9 = *(v72 + 192);
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = std::__shared_weak_count::lock(v7);
  std::__shared_weak_count::__release_weak(v7);
  v66 = v10;
  if (!v10 || v9 == 0)
  {
LABEL_62:
    v44 = sub_5544(14);
    v45 = *v44;
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      (*(*v6 + 144))(&__p, v6);
      v46 = v77;
      v47 = __p;
      sub_22170(&v73, v6[36]);
      p_p = &__p;
      if (v46 < 0)
      {
        p_p = v47;
      }

      if (v74 >= 0)
      {
        v49 = &v73;
      }

      else
      {
        v49 = v73;
      }

      *buf = 136315906;
      *&buf[4] = "RoutingHandler_Playback_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 88;
      v79 = 2080;
      v80 = p_p;
      v81 = 2080;
      v82 = v49;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [activeDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
      }

      if (v77 < 0)
      {
        operator delete(__p);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v12 = (*(*&v9->_os_unfair_lock_opaque + 240))(v9, v8);
  v70 = 0x6F7574706D757465;
  v71 = v12;
  if ((*(*&v9->_os_unfair_lock_opaque + 24))(v9, &v70))
  {
    operator new();
  }

  sub_2FBAF8(v9, 1, *(a2 + 12), *(a2 + 184), v64[9], a3);
  if (v8 == 1886545251)
  {
    sub_CE168();
    BYTE3(v80) = 7;
    strcpy(buf, "Speaker");
    sub_CDEB8(&__p, buf);
    v13 = v76;
    if (v76)
    {
      v14 = std::__shared_weak_count::lock(v76);
      if (v14)
      {
        v15 = __p;
        sub_1A8C0(v14);
        std::__shared_weak_count::__release_weak(v13);
        if (v15 && sub_3E7F7C(v15))
        {
          v16 = *a2;
          operator new();
        }
      }

      else
      {
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }

  if (!sub_FC3EC(*(a5 + 8), 3))
  {
    v28 = v72;
    if (*(v72 + 304) == 1752709424)
    {
      sub_300D58(*(a2 + 12), v9);
    }

    if (sub_FC3EC(*(a5 + 8), 1))
    {
      v29 = sub_14BD5C(a5, 1);
      sub_C4A80(&v69, v28, a2, *(v29 + 56), *(a2 + 12), 0);
      sub_FC464(&v69, (v29 + 16), v9);
      *buf = 0;
      *&buf[8] = 0;
      v30 = v64[5];
      if (v30)
      {
        v31 = std::__shared_weak_count::lock(v30);
        if (v31)
        {
          v32 = v31;
          v33 = v64[4];
          atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v34 = *&buf[8];
          *buf = v33;
          *&buf[8] = v32;
          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          sub_1A8C0(v32);
        }

        else
        {
          v35 = *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          if (v35)
          {
            std::__shared_weak_count::__release_weak(v35);
          }
        }
      }

      sub_CF934(&v68, buf, 1);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_weak(*&buf[8]);
      }

      if (sub_FC3EC(*(a5 + 8), 3))
      {
        v36 = sub_14BD5C(a5, 3);
        v37 = *(v36 + 24);
        if (v37)
        {
          v38 = std::__shared_weak_count::lock(v37);
          if (v38)
          {
            v39 = *(v36 + 16);
            atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v38);
          }
        }

        operator new();
      }

      v40 = sub_102988(*(a2 + 12));
      if (*(a2 + 268))
      {
        v41 = *(a2 + 264);
      }

      else
      {
        v41 = v40;
      }

      if (*(a2 + 128))
      {
        v42 = 0;
      }

      else
      {
        v42 = *(a2 + 124) == 1986291046;
      }

      v43 = v42;
      LODWORD(v73) = v41;
      BYTE4(v73) = 0;
      BYTE5(v73) = v43;
      operator new();
    }

    v51 = sub_5544(14);
    v52 = *v51;
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_Playback_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 142;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v53 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v53, "Precondition failure.");
  }

  v17 = sub_14BD5C(a5, 3);
  sub_25704(&__p, (v17 + 16), "", 116);
  if (v8 != 1886545251)
  {
    v54 = sub_5544(14);
    v55 = *v54;
    if (*v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_Playback_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Detected presence of HAC connection in a non-Receiver route. Database error?", buf, 0x12u);
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v56, "Detected presence of HAC connection in a non-Receiver route. Database error?");
LABEL_94:
  }

  v18 = __p;
  v19 = *(__p + 25);
  if (v19)
  {
    v20 = *(__p + 24);
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v21 = std::__shared_weak_count::lock(v19);
    if (v21)
    {
      v22 = v21;
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v19);
      sub_1A8C0(v22);
      v23 = v66;
      atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v24 = std::__shared_weak_count::lock(v22);
      v25 = 0;
      if (!v24)
      {
        v20 = 0;
      }

      goto LABEL_24;
    }

    std::__shared_weak_count::__release_weak(v19);
  }

  v22 = 0;
  v20 = 0;
  v24 = 0;
  v23 = v66;
  v25 = 1;
  atomic_fetch_add_explicit(&v66->__shared_weak_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  v26 = std::__shared_weak_count::lock(v23);
  if (v26)
  {
    v27 = v20 == v9;
    sub_1A8C0(v26);
  }

  else
  {
    v27 = v20 == 0;
  }

  if (v24)
  {
    sub_1A8C0(v24);
  }

  std::__shared_weak_count::__release_weak(v66);
  if ((v25 & 1) == 0)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v27)
  {
    if (v18[36] == 1885888867)
    {
      if (!sub_FC3EC(*(a5 + 8), 2))
      {
        (*(*&v9->_os_unfair_lock_opaque + 240))(v9, 1885888867);
        operator new();
      }

      v61 = sub_5544(14);
      v62 = *v61;
      if (*v61)
      {
        if (os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingHandler_Playback_GenericConfig1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 129;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: both HAC and ANC are present in route. Database error?", buf, 0x12u);
        }
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v56, "Illegal route: both HAC and ANC are present in route. Database error?");
    }

    else
    {
      v59 = sub_5544(14);
      v60 = *v59;
      if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandler_Playback_GenericConfig1.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 126;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: HAC connection's destination port type is not HAC. Database error?", buf, 0x12u);
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v56, "Illegal route: HAC connection's destination port type is not HAC. Database error?");
    }
  }

  else
  {
    v57 = sub_5544(14);
    v58 = *v57;
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_Playback_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 123;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal route: HAC and downlink connections' destination devices do not match. Database error?", buf, 0x12u);
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v56, "Illegal route: HAC and downlink connections' destination devices do not match. Database error?");
  }

  goto LABEL_94;
}

void sub_14F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, std::__shared_weak_count *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x248])
  {
    sub_1A8C0(STACK[0x248]);
  }

  a53 = &a57;
  sub_72C14(&a53);
  a57 = &STACK[0x208];
  sub_72C14(&a57);
  v69 = a60;
  a60 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  sub_477A0(a62);
  sub_65310(&a64);
  if (__p)
  {
    a68 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    sub_1A8C0(a21);
  }

  if (STACK[0x200])
  {
    sub_1A8C0(STACK[0x200]);
  }

  _Unwind_Resume(a1);
}

void sub_14FE14(uint64_t a1, void *a2)
{
  v4 = *sub_5544(25);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = (a1 + 712);
      if (*(a1 + 735) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315650;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 865;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Initializing DSP chain %s", buf, 0x1Cu);
    }
  }

  if ((sub_231C4() & 1) != 0 || sub_23238("VA_DSPInitialization", 0x14uLL) != &qword_709F00)
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
      v11 = (a1 + 712);
      if (*(a1 + 735) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VA_DSPInitialization", "Initializing DSP: %s", buf, 0xCu);
    }
  }

  v12 = sub_5544(43);
  if (*(v12 + 8))
  {
    v13 = *v12;
    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SignpostUtilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 99;
        *&buf[18] = 2080;
        *&buf[20] = "kDSPInitialization";
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
      }
    }
  }

  if (!*(a1 + 1144))
  {
    goto LABEL_172;
  }

  v241 = 0;
  v242 = 0;
  v240 = &v241;
  (*(*a1 + 200))(v254, a1);
  sub_E2B64(buf, *(a1 + 1144));
  sub_E2B64(&v258, *(a1 + 1144));
  v258.__r_.__value_.__l.__size_ = (v259 - v258.__r_.__value_.__r.__words[2]) >> 3;
  while (1)
  {
    if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
    {
      v15 = v258.__r_.__value_.__r.__words[0];
    }

    else
    {
      v15 = v258.__r_.__value_.__r.__words[0];
      if (!v258.__r_.__value_.__r.__words[0] || v258.__r_.__value_.__l.__size_ == (v259 - v258.__r_.__value_.__r.__words[2]) >> 3)
      {
LABEL_96:
        if (v260)
        {
          v261 = v260;
          operator delete(v260);
        }

        if (v258.__r_.__value_.__r.__words[2])
        {
          v259 = v258.__r_.__value_.__r.__words[2];
          operator delete(v258.__r_.__value_.__r.__words[2]);
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (*&buf[16])
        {
          *&buf[24] = *&buf[16];
          operator delete(*&buf[16]);
        }

        v27 = *sub_5544(25);
        v28 = v27;
        if (v27)
        {
          v29 = v27;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            log = v29;
            v30 = v240;
            memset(&v236, 0, sizeof(v236));
            std::string::append(&v236, "{ ", 2uLL);
            if (v30 != &v241)
            {
              while (1)
              {
                if (*(v30 + 55) < 0)
                {
                  sub_54A0(&__dst, v30[4], v30[5]);
                }

                else
                {
                  __dst = *(v30 + 4);
                }

                v31 = std::string::insert(&__dst, 0, "[", 1uLL);
                v32 = *&v31->__r_.__value_.__l.__data_;
                v248.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
                *&v248.__r_.__value_.__l.__data_ = v32;
                v31->__r_.__value_.__l.__size_ = 0;
                v31->__r_.__value_.__r.__words[2] = 0;
                v31->__r_.__value_.__r.__words[0] = 0;
                v33 = std::string::append(&v248, ", ", 2uLL);
                v34 = *&v33->__r_.__value_.__l.__data_;
                *&cf[16] = *(&v33->__r_.__value_.__l + 2);
                *cf = v34;
                v33->__r_.__value_.__l.__size_ = 0;
                v33->__r_.__value_.__r.__words[2] = 0;
                v33->__r_.__value_.__r.__words[0] = 0;
                if (*(v30 + 79) < 0)
                {
                  sub_54A0(v245, v30[7], v30[8]);
                }

                else
                {
                  *v245 = *(v30 + 7);
                  v246 = v30[9];
                }

                if (SHIBYTE(v246) >= 0)
                {
                  v35 = v245;
                }

                else
                {
                  v35 = v245[0];
                }

                if (SHIBYTE(v246) >= 0)
                {
                  v36 = HIBYTE(v246);
                }

                else
                {
                  v36 = v245[1];
                }

                v37 = std::string::append(cf, v35, v36);
                v38 = *&v37->__r_.__value_.__l.__data_;
                v258.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
                *&v258.__r_.__value_.__l.__data_ = v38;
                v37->__r_.__value_.__l.__size_ = 0;
                v37->__r_.__value_.__r.__words[2] = 0;
                v37->__r_.__value_.__r.__words[0] = 0;
                v39 = std::string::append(&v258, "]", 1uLL);
                v40 = *&v39->__r_.__value_.__l.__data_;
                v244 = v39->__r_.__value_.__r.__words[2];
                *v243 = v40;
                v39->__r_.__value_.__l.__size_ = 0;
                v39->__r_.__value_.__r.__words[2] = 0;
                v39->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v258.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v246) < 0)
                {
                  operator delete(v245[0]);
                }

                if ((cf[23] & 0x80000000) != 0)
                {
                  operator delete(*cf);
                }

                if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v248.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                if (v244 >= 0)
                {
                  v41 = v243;
                }

                else
                {
                  v41 = v243[0];
                }

                if (v244 >= 0)
                {
                  v42 = HIBYTE(v244);
                }

                else
                {
                  v42 = v243[1];
                }

                std::string::append(&v236, v41, v42);
                if (SHIBYTE(v244) < 0)
                {
                  operator delete(v243[0]);
                }

                v43 = v30[1];
                if (v43)
                {
                  do
                  {
                    v44 = v43;
                    v43 = *v43;
                  }

                  while (v43);
                }

                else
                {
                  do
                  {
                    v44 = v30[2];
                    v45 = *v44 == v30;
                    v30 = v44;
                  }

                  while (!v45);
                }

                if (v44 == &v241)
                {
                  break;
                }

                std::string::append(&v236, ", ", 2uLL);
                v30 = v44;
              }
            }

            std::string::append(&v236, " }", 2uLL);
            if ((v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = &v236;
            }

            else
            {
              v46 = v236.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "DSPChain.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3882;
            *&buf[18] = 2080;
            *&buf[20] = v46;
            v29 = log;
            _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Macros = %s", buf, 0x1Cu);
            if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v236.__r_.__value_.__l.__data_);
            }
          }
        }

        memset(buf, 0, 24);
        sub_68DB4(buf, v242);
        v47 = v240;
        if (v240 != &v241)
        {
          v48 = *&buf[8];
          do
          {
            if (v48 >= *&buf[16])
            {
              v48 = sub_1D9F54(buf, v47 + 32, (v47 + 56));
            }

            else
            {
              sub_1D9DF0(v48, v47 + 32, (v47 + 56));
              v48 += 2;
            }

            *&buf[8] = v48;
            v49 = *(v47 + 1);
            if (v49)
            {
              do
              {
                v50 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = *(v47 + 2);
                v45 = *v50 == v47;
                v47 = v50;
              }

              while (!v45);
            }

            v47 = v50;
          }

          while (v50 != &v241);
        }

        v51 = sub_65448(buf);
        v258.__r_.__value_.__r.__words[0] = buf;
        sub_65830(&v258);
        *cf = v51;
        v248.__r_.__value_.__r.__words[0] = v51;
        v52 = (*(*a1 + 128))(a1, 1685287015, 1835758191, &v248, 8, 0, 0, 0);
        if (v52)
        {
          v53 = *sub_5544(25);
          v54 = v53;
          if (v53)
          {
            v55 = v53;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              sub_22170(&v258, v52);
              v56 = (v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v258 : v258.__r_.__value_.__r.__words[0];
              *buf = 136315650;
              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3886;
              *&buf[18] = 2080;
              *&buf[20] = v56;
              _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting custom macros on DSP returns error: %s", buf, 0x1Cu);
              if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v258.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        CFRelease(v51);
        sub_91510(v254);
        sub_1E0334(v241);
LABEL_172:
        *buf = a1 + 48;
        buf[8] = 1;
        sub_47BD8(a1 + 48);
        v57 = *(a1 + 24);
        v58 = *(a1 + 32);
        while (v57 != v58)
        {
          v59 = (*(**(v57 + 8) + 16))(*(v57 + 8));
          if (v59)
          {
            goto LABEL_177;
          }

          v57 += 24;
        }

        v59 = 0;
LABEL_177:
        sub_47C90(a1 + 48);
        if (v59)
        {
          v220 = sub_5544(14);
          v221 = sub_468EC(1, *v220, *(v220 + 8));
          v222 = v221;
          if (v221)
          {
            v223 = v221;
            if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
            {
              v224 = (a1 + 712);
              if (*(a1 + 735) < 0)
              {
                v224 = *v224;
              }

              sub_22170(&v258, v59);
              if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v225 = &v258;
              }

              else
              {
                v225 = v258.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 871;
              *&buf[18] = 2080;
              *&buf[20] = v224;
              *&buf[28] = 2080;
              *&buf[30] = v225;
              _os_log_impl(&dword_0, v223, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Failed to initialize DSP chain %s. Error: %s", buf, 0x26u);
              if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v258.__r_.__value_.__l.__data_);
              }
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Failed to initialize DSP chain %s. Error: %s");
LABEL_441:
        }

        (*(*a1 + 208))(a1);
        v60 = (*(*a1 + 144))(a1, 1936747629);
        *(a1 + 796) = v60;
        if (a2)
        {
          v61 = 0.0;
          if (v60 && (v62 = *(a1 + 776), (v63 = *(v62 + 24)) != 0) && (v64 = std::__shared_weak_count::lock(v63)) != 0)
          {
            v65 = v64;
            v66 = *(v62 + 16);
            if (v66)
            {
              v258.__r_.__value_.__s.__data_[0] = 0;
              v67 = *(v66 + 200);
              if (v67)
              {
                v68 = *(v66 + 192);
                atomic_fetch_add_explicit(&v67->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v69 = *(v66 + 144);
                v70 = std::__shared_weak_count::lock(v67);
                if (v70)
                {
                  atomic_fetch_add_explicit(&v70->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  *buf = v68;
                  *&buf[8] = v70;
                  sub_1A8C0(v70);
                  goto LABEL_415;
                }
              }

              else
              {
                v69 = *(v66 + 144);
              }

              *buf = 0;
              *&buf[8] = 0;
LABEL_415:
              v61 = sub_347B04(v69, buf, &v258);
              v2 = v207;
              if (*&buf[8])
              {
                std::__shared_weak_count::__release_weak(*&buf[8]);
              }

              loga = v258.__r_.__value_.__s.__data_[0] != 0;
              if (!v258.__r_.__value_.__s.__data_[0])
              {
                v61 = 0.0;
              }

              if (v67)
              {
                std::__shared_weak_count::__release_weak(v67);
              }
            }

            else
            {
              loga = 0;
            }

            sub_1A8C0(v65);
          }

          else
          {
            loga = 0;
          }

          v71 = a2[21];
          v72 = a2[22];
          if (v71 != v72)
          {
            while (2)
            {
              if (!*v71)
              {
                v214 = sub_5544(14);
                v215 = sub_468EC(1, *v214, *(v214 + 8));
                v216 = v215;
                if (v215 && os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "DSPChain.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 1125;
                  _os_log_impl(&dword_0, v216, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Given a null SW volume property!", buf, 0x12u);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "Given a null SW volume property!");
                goto LABEL_441;
              }

              v73 = (*(**v71 + 16))(*v71);
              v74 = sub_148EC8(a1, v73, v71[4]);
              if (v74)
              {
                v75 = *v71;
                if (loga)
                {
                  sub_8BD14(buf, *(a1 + 8), *(a1 + 16));
                  *v254 = *buf;
                  *&v254[8] = *&buf[8];
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
                  }

                  (*(*v75 + 8))(&v248, v75, v254, v61, v2);
                  v76 = *&v254[8];
                  if (!*&v254[8])
                  {
                    goto LABEL_207;
                  }

LABEL_206:
                  std::__shared_weak_count::__release_weak(v76);
                  goto LABEL_207;
                }

                sub_8BD14(buf, *(a1 + 8), *(a1 + 16));
                *cf = *buf;
                *&cf[8] = *&buf[8];
                if (*&buf[8])
                {
                  atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
                }

                (**v75)(&v248, v75, cf);
                v76 = *&cf[8];
                if (*&cf[8])
                {
                  goto LABEL_206;
                }

LABEL_207:
                if (*&buf[8])
                {
                  sub_1A8C0(*&buf[8]);
                }

                if ((*(**v71 + 16))() == 1685287015)
                {
                  v82 = (*(**v71 + 24))();
                  v83 = v82;
                  v84 = qword_6E9210;
                  if (!qword_6E9210)
                  {
                    goto LABEL_218;
                  }

                  v85 = &qword_6E9210;
                  do
                  {
                    v86 = *(v84 + 32);
                    v87 = v86 >= v82;
                    v88 = v86 < v82;
                    if (v87)
                    {
                      v85 = v84;
                    }

                    v84 = *(v84 + 8 * v88);
                  }

                  while (v84);
                  if (v85 != &qword_6E9210 && v82 >= *(v85 + 8))
                  {
                    v89 = v85[5];
                    v90 = v85[6];
                  }

                  else
                  {
LABEL_218:
                    v89 = 0;
                    v90 = 0;
                  }

                  v91 = *sub_5544(25);
                  v92 = v91;
                  if (v91)
                  {
                    v93 = v91;
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                    {
                      v94 = v248.__r_.__value_.__r.__words[0];
                      if (v83 == -1)
                      {
                        p_dst = "unused";
                      }

                      else
                      {
                        v95 = (*(**v71 + 24))();
                        sub_22170(&__dst, v95);
                        p_dst = &__dst;
                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          p_dst = __dst.__r_.__value_.__r.__words[0];
                        }
                      }

                      *buf = 136316162;
                      v100 = "Not found";
                      if (v90)
                      {
                        v100 = v89;
                      }

                      *&buf[4] = "DSPChain.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 1137;
                      *&buf[18] = 2048;
                      *&buf[20] = v94;
                      *&buf[28] = 2080;
                      *&buf[30] = p_dst;
                      v250 = 2080;
                      *&__p = v100;
                      _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ***** VolumeCommand: software volume command %p is graph based, corresponding graph property is '%s' with box name '%s'", buf, 0x30u);
                      if (v83 != -1 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__dst.__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  v101 = v248.__r_.__value_.__r.__words[0];
                  v102 = (*(*v74 + 160))(v74);
                  v103 = (*(*v74 + 152))(v74);
                  (*(*v101 + 184))(v101, v102, v103, v89, v90);
                }

                else
                {
                  v97 = v248.__r_.__value_.__r.__words[0];
                  v98 = (*(*v74 + 160))(v74);
                  v99 = (*(*v74 + 152))(v74);
                  (*(*v97 + 184))(v97, v98, v99, 0, 0);
                }

                v104 = *sub_5544(25);
                v105 = v104;
                if (v104)
                {
                  v106 = v104;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                  {
                    v107 = v248.__r_.__value_.__r.__words[0];
                    v108 = (*(**v71 + 16))();
                    sub_22170(&v258, v108);
                    if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v109 = &v258;
                    }

                    else
                    {
                      v109 = v258.__r_.__value_.__r.__words[0];
                    }

                    v110 = (*(*v74 + 152))(v74);
                    v111 = (*(*v248.__r_.__value_.__l.__data_ + 136))(v248.__r_.__value_.__r.__words[0]);
                    *buf = 136316674;
                    v112 = "Decibel";
                    if (v111 == 1935895666)
                    {
                      v112 = "Scalar";
                    }

                    *&buf[4] = "DSPChain.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 1145;
                    *&buf[18] = 2048;
                    *&buf[20] = v107;
                    *&buf[28] = 2080;
                    *&buf[30] = v109;
                    v250 = 2048;
                    *&__p = a1;
                    WORD4(__p) = 1024;
                    *(&__p + 10) = v110;
                    HIWORD(__p) = 2080;
                    v252 = v112;
                    _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ***** VolumeCommand: created software volume command %p for processor type '%s' in dspchain: %p instance id: %u volume unit type: %s", buf, 0x40u);
                    if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v258.__r_.__value_.__l.__data_);
                    }
                  }
                }

                v113 = *(a1 + 1048);
                if (!v113)
                {
                  operator new();
                }

                if (*(v113 + 136) != *(v113 + 144) && (*(v113 + 168) & 1) == 0)
                {
                  v114 = (*(*v248.__r_.__value_.__l.__data_ + 136))(v248.__r_.__value_.__r.__words[0]);
                  if (v114 != (*(**(*(v113 + 144) - 8) + 136))(*(*(v113 + 144) - 8)))
                  {
                    *(v113 + 168) = 1;
                  }
                }

                v115 = *(v113 + 136);
                v116 = *(v113 + 144);
                v117 = v115;
                if (v115 != v116)
                {
                  v117 = *(v113 + 136);
                  while (*v117 != v248.__r_.__value_.__r.__words[0])
                  {
                    v117 += 8;
                    if (v117 == v116)
                    {
                      goto LABEL_257;
                    }
                  }
                }

                if (v117 == v116)
                {
LABEL_257:
                  v118 = *(v113 + 152);
                  if (v116 >= v118)
                  {
                    v121 = v116 - v115;
                    v122 = (v116 - v115) >> 3;
                    v123 = v122 + 1;
                    if ((v122 + 1) >> 61)
                    {
                      sub_189A00();
                    }

                    v124 = v118 - v115;
                    if (v124 >> 2 > v123)
                    {
                      v123 = v124 >> 2;
                    }

                    if (v124 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v125 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v125 = v123;
                    }

                    if (v125)
                    {
                      if (!(v125 >> 61))
                      {
                        operator new();
                      }

                      sub_6ACD8();
                    }

                    v126 = (v116 - v115) >> 3;
                    v127 = (8 * v122);
                    v128 = v248.__r_.__value_.__r.__words[0];
                    v248.__r_.__value_.__r.__words[0] = 0;
                    v129 = (8 * v122 - 8 * v126);
                    *v127 = v128;
                    v120 = v127 + 1;
                    memcpy(v129, v115, v121);
                    v130 = *(v113 + 136);
                    *(v113 + 136) = v129;
                    *(v113 + 144) = v120;
                    *(v113 + 152) = 0;
                    if (v130)
                    {
                      operator delete(v130);
                    }
                  }

                  else
                  {
                    v119 = v248.__r_.__value_.__r.__words[0];
                    v248.__r_.__value_.__r.__words[0] = 0;
                    *v116 = v119;
                    v120 = v116 + 8;
                  }

                  *(v113 + 144) = v120;
                  v131 = sub_5544(19);
                  v132 = *v131;
                  if (*v131 && os_log_type_enabled(*v131, OS_LOG_TYPE_DEFAULT))
                  {
                    v133 = *(*(v113 + 144) - 8);
                    *buf = 136315906;
                    *&buf[4] = "VolumeControl.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 650;
                    *&buf[18] = 2048;
                    *&buf[20] = v133;
                    *&buf[28] = 2048;
                    *&buf[30] = v113;
                    _os_log_impl(&dword_0, v132, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeCommand: added volume command: %p into aggregate command: %p", buf, 0x26u);
                  }
                }

                v134 = v248.__r_.__value_.__r.__words[0];
                v248.__r_.__value_.__r.__words[0] = 0;
                if (v134)
                {
                  (*(*v134 + 8))(v134);
                }
              }

              else
              {
                v77 = *sub_5544(25);
                v78 = v77;
                if (v77)
                {
                  v79 = v77;
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    v80 = (*(**v71 + 16))();
                    sub_22170(&v258, v80);
                    v81 = &v258;
                    if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v81 = v258.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136315906;
                    *&buf[4] = "DSPChain.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 1156;
                    *&buf[18] = 2080;
                    *&buf[20] = v81;
                    *&buf[28] = 2048;
                    *&buf[30] = a1;
                    _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ***** VolumeCommand: volume processor type not found '%s' in dspchain: %p", buf, 0x26u);
                    if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v258.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              v71 += 6;
              if (v71 == v72)
              {
                break;
              }

              continue;
            }
          }

          v136 = a2[24];
          v135 = a2[25];
          if (0xAAAAAAAAAAAAAAABLL * ((v135 - v136) >> 3) > 1)
          {
            v226 = sub_5544(14);
            v227 = sub_468EC(1, *v226, *(v226 + 8));
            v228 = v227;
            if (v227 && os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1162;
              _os_log_impl(&dword_0, v228, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): !!! can only support single thermal volume command", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "!!! can only support single thermal volume command");
            goto LABEL_441;
          }

          if (v136 != v135)
          {
            if (v135 - v136 != 24)
            {
              sub_269EF8();
            }

            if (!*v136)
            {
              v229 = sub_5544(14);
              v230 = sub_468EC(1, *v229, *(v229 + 8));
              v231 = v230;
              if (v230 && os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "DSPChain.mm";
                *&buf[12] = 1024;
                *&buf[14] = 1167;
                _os_log_impl(&dword_0, v231, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Precondition failure.");
              goto LABEL_441;
            }

            v137 = (*(**v136 + 24))(*v136);
            v138 = sub_148EC8(a1, v137, v136[4]);
            if (v138)
            {
              v139 = *v136;
              sub_8BD14(buf, *(a1 + 8), *(a1 + 16));
              *&v248.__r_.__value_.__l.__data_ = *buf;
              if (*&buf[8])
              {
                atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
              }

              (**v139)(&v258, v139, &v248);
              if (v258.__r_.__value_.__r.__words[0])
              {
                operator new();
              }

              v258.__r_.__value_.__r.__words[0] = 0;
              v147 = *(a1 + 1072);
              *(a1 + 1064) = 0u;
              if (v147)
              {
                sub_1A8C0(v147);
                v148 = v258.__r_.__value_.__r.__words[0];
                v258.__r_.__value_.__r.__words[0] = 0;
                if (v148)
                {
                  (*(*v148 + 8))(v148);
                }
              }

              else
              {
                v258.__r_.__value_.__r.__words[0] = 0;
              }

              if (v248.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_weak(v248.__r_.__value_.__l.__size_);
              }

              if (*&buf[8])
              {
                sub_1A8C0(*&buf[8]);
              }

              v149 = *(a1 + 1064);
              v150 = (*(*v138 + 160))(v138);
              v151 = (*(*v138 + 152))(v138);
              (*(*v149 + 184))(v149, v150, v151, 0, 0);
              v152 = *sub_5544(25);
              if (v152)
              {
                v141 = v152;
                if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                {
                  v153 = (*(**v136 + 24))();
                  v154 = &v258;
                  sub_22170(&v258, v153);
                  if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v154 = v258.__r_.__value_.__r.__words[0];
                  }

                  v155 = (*(*v138 + 152))(v138);
                  v156 = (*(**(a1 + 1064) + 136))(*(a1 + 1064));
                  v157 = "Decibel";
                  *buf = 136316418;
                  *&buf[4] = "DSPChain.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 1173;
                  *&buf[18] = 2080;
                  if (v156 == 1935895666)
                  {
                    v157 = "Scalar";
                  }

                  *&buf[20] = v154;
                  *&buf[28] = 2048;
                  *&buf[30] = a1;
                  v250 = 1024;
                  LODWORD(__p) = v155;
                  WORD2(__p) = 2080;
                  *(&__p + 6) = v157;
                  v144 = "%25s:%-5d ***** VolumeCommand: created thermal volume command for processor type '%s' in dspchain: %p instance id: %u volume unit type: %s";
                  v145 = v141;
                  v146 = 54;
LABEL_306:
                  _os_log_impl(&dword_0, v145, OS_LOG_TYPE_DEFAULT, v144, buf, v146);
                  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v258.__r_.__value_.__l.__data_);
                  }
                }

                goto LABEL_308;
              }

LABEL_309:
              v141 = 0;
            }

            else
            {
              v140 = *sub_5544(25);
              if (!v140)
              {
                goto LABEL_309;
              }

              v141 = v140;
              if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
              {
                v142 = (*(**v136 + 24))();
                sub_22170(&v258, v142);
                if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v143 = &v258;
                }

                else
                {
                  v143 = v258.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = "DSPChain.mm";
                *&buf[12] = 1024;
                *&buf[14] = 1177;
                *&buf[18] = 2080;
                *&buf[20] = v143;
                *&buf[28] = 2048;
                *&buf[30] = a1;
                v144 = "%25s:%-5d ***** VolumeCommand: thermal processor type not found '%s' in dspchain: %p";
                v145 = v141;
                v146 = 38;
                goto LABEL_306;
              }

LABEL_308:
            }
          }
        }

        if ((*(a1 + 392) & 1) == 0)
        {
          if (*(a1 + 796))
          {
            goto LABEL_313;
          }

          if (*(a1 + 784))
          {
            sub_88A00(buf, (*(a1 + 776) + 16), "", 2356);
            v163 = *(*buf + 304);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if (v163 > 1647718501)
            {
              if ((v163 - 1647718502) > 1)
              {
                goto LABEL_436;
              }
            }

            else if (v163 != 1633759844 && v163 != 1634231920 && v163 != 1635085420)
            {
              goto LABEL_436;
            }

            if (!(*(*a1 + 144))(a1, 1751474546) || (*(a1 + 796) & 1) == 0)
            {
              goto LABEL_436;
            }

LABEL_313:
            memset(buf, 0, 24);
            if (qword_6EB708 != -1)
            {
              dispatch_once(&qword_6EB708, &stru_6C0080);
            }

            if (off_6EB710)
            {
              v158 = off_6EB710(2, buf);
              v159 = *buf;
              v160 = (a1 + 736);
              *(a1 + 736) = v158;
              if (v159)
              {
                *&buf[8] = v159;
                operator delete(v159);
                v158 = *v160;
              }

              if (v158 == 561211748)
              {
                v161 = *sub_5544(25);
                v162 = v161;
                if (v161)
                {
                  if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "DSPChain.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 1222;
                    _os_log_impl(&dword_0, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry : ADAM Failed to create a session", buf, 0x12u);
                  }
                }

                goto LABEL_436;
              }
            }

            else
            {
              v158 = 560033897;
              v160 = (a1 + 736);
              *(a1 + 736) = 560033897;
            }

            sub_53E8(buf, "VA_AUSPL");
            if (qword_6EB708 != -1)
            {
              dispatch_once(&qword_6EB708, &stru_6C0080);
            }

            if (off_6EB738)
            {
              off_6EB738(v158, 0, buf);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v248.__r_.__value_.__r.__words[0] = 0;
            LODWORD(v245[0]) = 0;
            sub_2C5414(a1, &v248, v245);
            sub_2C572C(a1, v248.__r_.__value_.__l.__data_, *v245);
            v164 = *v160;
            if (qword_6EB708 != -1)
            {
              dispatch_once(&qword_6EB708, &stru_6C0080);
            }

            if (off_6EB748)
            {
              off_6EB748(v164);
            }

            v165 = *(a1 + 816);
            *(a1 + 808) = 0;
            *(a1 + 816) = 0;
            if (v165)
            {
              std::__shared_weak_count::__release_weak(v165);
            }

            *(a1 + 804) = 1701868910;
            sub_76388(&v258, (a1 + 768));
            size = v258.__r_.__value_.__l.__size_;
            if (v258.__r_.__value_.__l.__size_ != &v258)
            {
              v167 = (a1 + 804);
              do
              {
                v168 = size->__r_.__value_.__r.__words[2];
                if ((*(v168 + 184) & 1) == 0)
                {
                  if (*(a1 + 816))
                  {
                    v169 = *sub_5544(25);
                    v170 = v169;
                    if (v169 && os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "DSPChain.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 1075;
                      _os_log_impl(&dword_0, v170, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: multiple output ports?", buf, 0x12u);
                    }

                    v168 = size->__r_.__value_.__r.__words[2];
                  }

                  data = size[1].__r_.__value_.__l.__data_;
                  if (data)
                  {
                    atomic_fetch_add_explicit(data + 2, 1uLL, memory_order_relaxed);
                  }

                  *(a1 + 808) = v168;
                  v172 = *(a1 + 816);
                  *(a1 + 816) = data;
                  if (v172)
                  {
                    std::__shared_weak_count::__release_weak(v172);
                  }

                  v173 = size->__r_.__value_.__r.__words[2];
                  if (v173[37] == 1885566825)
                  {
                    *v167 = 1701865584;
                  }

                  else
                  {
                    v174 = (*(*v173 + 112))(v173);
                    if ((v174 & 0x100000000) != 0)
                    {
                      v175 = v174;
                    }

                    else
                    {
                      v175 = 1701868910;
                    }

                    *v167 = v175;
                    v176 = *sub_5544(25);
                    v177 = v176;
                    if (v176)
                    {
                      v178 = v176;
                      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_22170(v254, *v167);
                        v179 = v254;
                        if (v255 < 0)
                        {
                          v179 = *v254;
                        }

                        *buf = 136315650;
                        *&buf[4] = "DSPChain.mm";
                        *&buf[12] = 1024;
                        *&buf[14] = 1091;
                        *&buf[18] = 2080;
                        *&buf[20] = v179;
                        _os_log_impl(&dword_0, v178, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: device's default endpoint type: %s", buf, 0x1Cu);
                        if (v255 < 0)
                        {
                          operator delete(*v254);
                        }
                      }
                    }

                    if (*v167 == 1701865584)
                    {
                      v180 = size->__r_.__value_.__r.__words[2];
                      if (*(v180 + 148) == 1885544823)
                      {
                        *buf = 0;
                        if ((sub_346F1C(v180, 0, buf) & 1) == 0)
                        {
                          v181 = size->__r_.__value_.__r.__words[2];
                          v182 = *(v181 + 200);
                          if (v182)
                          {
                            v183 = *(v181 + 192);
                            atomic_fetch_add_explicit(&v182->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                            v184 = std::__shared_weak_count::lock(v182);
                            v185 = v184;
                            if (v184)
                            {
                              atomic_fetch_add_explicit(&v184->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                              *buf = v183;
                              *&buf[8] = v184;
                              std::__shared_weak_count::__release_weak(v182);
                              sub_1A8C0(v185);
                            }

                            else
                            {
                              *buf = 0;
                              *&buf[8] = 0;
                              std::__shared_weak_count::__release_weak(v182);
                            }
                          }

                          else
                          {
                            v185 = 0;
                            *buf = 0;
                            *&buf[8] = 0;
                          }

                          v186 = sub_2C9130(buf, (a1 + 804));
                          if (v185)
                          {
                            std::__shared_weak_count::__release_weak(v185);
                          }

                          if (v186)
                          {
                            v187 = *sub_5544(25);
                            v188 = v187;
                            if (v187)
                            {
                              v189 = v187;
                              if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                              {
                                v232 = v189;
                                sub_22170(v254, v186);
                                v190 = v255;
                                v191 = *v254;
                                sub_22170(cf, *v167);
                                v192 = v254;
                                if (v190 < 0)
                                {
                                  v192 = v191;
                                }

                                v193 = cf;
                                if (cf[23] < 0)
                                {
                                  v193 = *cf;
                                }

                                *buf = 136315906;
                                *&buf[4] = "DSPChain.mm";
                                *&buf[12] = 1024;
                                *&buf[14] = 1105;
                                *&buf[18] = 2080;
                                *&buf[20] = v192;
                                *&buf[28] = 2080;
                                *&buf[30] = v193;
                                v189 = v232;
                                _os_log_impl(&dword_0, v232, OS_LOG_TYPE_ERROR, "%25s:%-5d PlaybackDosimetry: Failed to fetch 3rd party user selected endpoint type. err: '%s', default endpoint type: %s", buf, 0x26u);
                                if ((cf[23] & 0x80000000) != 0)
                                {
                                  operator delete(*cf);
                                }

                                if (v255 < 0)
                                {
                                  operator delete(*v254);
                                }
                              }
                            }
                          }

                          else
                          {
                            v194 = *sub_5544(25);
                            v195 = v194;
                            if (v194)
                            {
                              v196 = v194;
                              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                              {
                                sub_22170(v254, *v167);
                                v197 = v254;
                                if (v255 < 0)
                                {
                                  v197 = *v254;
                                }

                                *buf = 136315650;
                                *&buf[4] = "DSPChain.mm";
                                *&buf[12] = 1024;
                                *&buf[14] = 1099;
                                *&buf[18] = 2080;
                                *&buf[20] = v197;
                                _os_log_impl(&dword_0, v196, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry: 3rd party user selected endpoint type: %s", buf, 0x1Cu);
                                if (v255 < 0)
                                {
                                  operator delete(*v254);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                size = size->__r_.__value_.__l.__size_;
              }

              while (size != &v258);
            }

            sub_87980(&v258);
            v198 = *(a1 + 816);
            if (v198)
            {
              v199 = std::__shared_weak_count::lock(v198);
              if (v199)
              {
                v200 = v199;
                v201 = *(a1 + 808);
                if (v201)
                {
                  v202 = v201[25];
                  if (v202)
                  {
                    v203 = v201[24];
                    atomic_fetch_add_explicit(&v202->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v204 = std::__shared_weak_count::lock(v202);
                    v205 = v202;
                    v206 = v204;
                    std::__shared_weak_count::__release_weak(v205);
                    if (v206)
                    {
                      if (v203 && ((*(*v201 + 112))(v201) & 0x1FFFFFFFFLL) == 0x165706870)
                      {
                        strcpy(buf, "dlovptuo");
                        buf[9] = 0;
                        *&buf[10] = 0;
                        memset(&v258, 0, sizeof(v258));
                        sub_2C8104(&v258, buf, &buf[12], 1uLL);
                      }

                      sub_1A8C0(v206);
                    }
                  }
                }

                sub_1A8C0(v200);
              }
            }

            if (*(a1 + 832) == *(a1 + 840))
            {
              v208 = *sub_5544(25);
              v209 = v208;
              if (v208 && os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "DSPChain.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3065;
                _os_log_impl(&dword_0, v209, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : no wireless headphone devices found to register properties", buf, 0x12u);
              }
            }

            sub_2C7AC4(a1, a1 + 808, *(a1 + 804));
            v210 = *sub_5544(25);
            v211 = v210;
            if (v210 && os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
            {
              v212 = *(a1 + 736);
              v213 = "N";
              v45 = *(a1 + 797) == 0;
              *buf = 136315906;
              if (!v45)
              {
                v213 = "Y";
              }

              *&buf[4] = "DSPChain.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1214;
              *&buf[18] = 2048;
              *&buf[20] = v212;
              *&buf[28] = 2080;
              *&buf[30] = v213;
              _os_log_impl(&dword_0, v211, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : ADAM Client Initialized: %llu, report SPL: %s", buf, 0x26u);
            }

            if (v248.__r_.__value_.__r.__words[0])
            {
              CFRelease(v248.__r_.__value_.__l.__data_);
            }
          }
        }

LABEL_436:
        sub_14BDFC(a1);
        sub_8BD14(buf, *(a1 + 8), *(a1 + 16));
        operator new();
      }
    }

    if (*buf == __PAIR128__(v258.__r_.__value_.__l.__size_, v15))
    {
      goto LABEL_96;
    }

    sub_E2CE8(v245, buf);
    sub_290014(cf, &v245[1]);
    if (!*cf)
    {
      v218 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v218, "Could not construct");
    }

    v16 = sub_4A8F8(*cf);
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v16 > 1919509352)
    {
      if (v16 == 1919509353)
      {
        sub_23F428(v243, v245);
        if (!v243[0])
        {
          v219 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v219, "Could not construct");
        }

        sub_125D8(cf, v243[0]);
        if (v257 < 2)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(*(*&v254[8] + 8 * ((v256 + 1) / 0x66)) + 40 * ((v256 + 1) % 0x66) + 28);
        }

        std::to_string(&__dst, v25);
        v26 = std::string::append(&__dst, "i", 1uLL);
        v248 = *v26;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        sub_2C9998(&v240, cf);
        if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v248.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if ((cf[23] & 0x80000000) != 0)
        {
          operator delete(*cf);
        }

        if (v243[0])
        {
          CFRelease(v243[0]);
        }
      }

      else
      {
        if (v16 != 1936859168)
        {
LABEL_51:
          v20 = *sub_5544(25);
          v21 = v20;
          if (v20)
          {
            v22 = v20;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              sub_22170(&v248, v16);
              v23 = &v248;
              if ((v248.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v23 = v248.__r_.__value_.__r.__words[0];
              }

              *cf = 136315650;
              *&cf[4] = "DSPChain.mm";
              *&cf[12] = 1024;
              *&cf[14] = 3877;
              *&cf[18] = 2080;
              *&cf[20] = v23;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not find macro command %s", cf, 0x1Cu);
              if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v248.__r_.__value_.__l.__data_);
              }
            }
          }

          goto LABEL_91;
        }

        if (!v257)
        {
          goto LABEL_91;
        }

        v17 = v245[0];
        if (v245[0])
        {
          CFRetain(v245[0]);
        }

        v237 = v17;
        v19 = *(*(*&v254[8] + 8 * (v256 / 0x66)) - 4080 * (v256 / 0x66) + 40 * v256);
        sub_125D8(cf, v17);
        std::to_string(&v248, v19);
        sub_2C9998(&v240, cf);
        if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v248.__r_.__value_.__l.__data_);
        }

        if ((cf[23] & 0x80000000) != 0)
        {
          operator delete(*cf);
          if (!v17)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        if (v17)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v16 == 1835623267)
    {
      if (!v257)
      {
        goto LABEL_91;
      }

      v17 = v245[0];
      if (v245[0])
      {
        CFRetain(v245[0]);
      }

      v238 = v17;
      v24 = *(*(*&v254[8] + 8 * (v256 / 0x66)) + 40 * (v256 % 0x66) + 28);
      sub_125D8(cf, v17);
      std::to_string(&v248, v24);
      sub_2C9998(&v240, cf);
      if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v248.__r_.__value_.__l.__data_);
      }

      if ((cf[23] & 0x80000000) != 0)
      {
        operator delete(*cf);
        if (!v17)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      if (v17)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (v16 != 1919509347)
      {
        goto LABEL_51;
      }

      v17 = v245[0];
      if (v245[0])
      {
        CFRetain(v245[0]);
      }

      v239 = v17;
      if (v257 < 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(*(*&v254[8] + 8 * ((v256 + 1) / 0x66)) + 40 * ((v256 + 1) % 0x66) + 28);
      }

      sub_125D8(cf, v17);
      std::to_string(&v248, v18);
      sub_2C9998(&v240, cf);
      if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v248.__r_.__value_.__l.__data_);
      }

      if ((cf[23] & 0x80000000) != 0)
      {
        operator delete(*cf);
        if (!v17)
        {
          goto LABEL_91;
        }

LABEL_90:
        CFRelease(v17);
        goto LABEL_91;
      }

      if (v17)
      {
        goto LABEL_90;
      }
    }

LABEL_91:
    if (v245[1])
    {
      CFRelease(v245[1]);
    }

    if (v245[0])
    {
      CFRelease(v245[0]);
    }

    ++*&buf[8];
  }
}

void sub_155478(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v15)
  {
    *(v17 - 232) = v15;
    operator delete(v15);
  }

  sub_1A8C0(v16);
  sub_1A8C0(a3);
  sub_14BE94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_156018(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_2830E4(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_156078(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1560A0(uint64_t a1)
{
  result = *(a1 + 576);
  v2 = *(a1 + 580);
  return result;
}

double sub_1560B4(uint64_t a1)
{
  result = *(a1 + 560);
  v2 = *(a1 + 568);
  return result;
}

uint64_t sub_1560C0(uint64_t a1)
{
  if (*(a1 + 88))
  {
    return a1 + 40;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_156114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_6DAA18;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if ((atomic_load_explicit(&qword_708F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_708F20))
  {
    sub_4AC4A4();
    __cxa_guard_release(&qword_708F20);
  }

  v4 = dword_708F18;
  v5 = unk_708F08;
  *(a1 + 24) = xmmword_708EF8;
  *(a1 + 40) = v5;
  *(a1 + 56) = v4;
  return a1;
}

void sub_1561C0(void *a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v7 = a3[1];
  if (v7 != a3)
  {
    v18 = 0;
    while (1)
    {
      v11 = v7[3];
      if (!v11)
      {
        break;
      }

      v12 = std::__shared_weak_count::lock(v11);
      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = v7[2];
      if (!v13)
      {
        goto LABEL_13;
      }

      if (a5)
      {
        if (sub_166260(v7[2]))
        {
          memset(buf, 0, 40);
          v14 = (*(*v13 + 96))(v13, 0, 0);
          if (!(*(*v14 + 120))(v14, buf))
          {
            *buf = (*(*a4 + 104))(a4);
            v20 = *&buf[1];
            v21[0] = *&buf[17];
            *(v21 + 15) = *&buf[32];
            v15 = v18;
            if ((v18 & 1) == 0)
            {
              v15 = 1;
            }

            v18 = v15;
          }
        }
      }

LABEL_17:
      sub_1A8C0(v12);
LABEL_18:
      v7 = v7[1];
      if (v7 == a3)
      {
        goto LABEL_19;
      }
    }

    v12 = 0;
LABEL_13:
    v16 = sub_5544(17);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1737;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered expired device when creating client stream cache.", buf, 0x12u);
    }

    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2[1] != *a2)
  {
    operator new();
  }
}

void sub_156704(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a3;
  if (a3[1] != *a3)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = (v3 + 40 * v6);
      v9 = *v8;
      if (*v8 == -2)
      {
        operator new();
      }

      if (v9 != -1)
      {
        if ((v9 & 0x80000000) == 0 && !*(v8 + 1))
        {
          operator new();
        }

        operator new();
      }

      *buf = 0;
      sub_165F10(a1, buf);
      v6 = v7;
      v3 = *a3;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) > v7++);
  }
}

void sub_156C1C()
{
  *v0 = off_6D00E8;
  v1 = v0[5];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_156D38(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = a1;
  *a1 = off_6D00E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = *a4;
  v5 = (a1 + 32);
  v6 = a4[1];
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v58, v5, "", 311);
  v7 = *(v4 + 24);
  if (v7)
  {
    (*(*v7 + 144))(&v56);
    if (v57)
    {
      v8 = std::__shared_weak_count::lock(v57);
      if (v8)
      {
        v9 = v56;
        if (v56)
        {
          v54 = 0;
          v55 = 0;
          v10 = *(v4 + 40);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            v12 = v11;
            if (v11)
            {
              v13 = *v5;
              atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v54 = v13;
              v55 = v11;
              sub_1A8C0(v11);
            }

            else
            {
              v54 = 0;
              v55 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          sub_8D290(&v67, &v54, "", 96);
          v14 = sub_F5EFC(v9);
          v51 = v12;
          v52 = v8;
          v53 = v4;
          v15 = v67;
          v16 = (*(*v67 + 88))(v67, v14);
          if (!v16)
          {
LABEL_23:
            v24 = sub_5544(14);
            v25 = *v24;
            if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
            {
              v26 = &v64;
              sub_23148(&v64, (v9 + 8));
              if (v66 < 0)
              {
                v26 = v64;
              }

              v27 = (*(*v15 + 120))(v15);
              (*(*v15 + 128))(__p, v15);
              if (v63 >= 0)
              {
                v28 = __p;
              }

              else
              {
                v28 = __p[0];
              }

              *buf = 136316162;
              v70 = "AggregateDevice_Common2.cpp";
              v71 = 1024;
              v72 = 129;
              v73 = 2080;
              v74 = v26;
              *v75 = 1024;
              *&v75[2] = v27;
              *&v75[6] = 2080;
              *&v75[8] = v28;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not find stream %s in PhysicalDevice ID %u (uid: \\%s\\).", buf, 0x2Cu);
              if (v63 < 0)
              {
                operator delete(__p[0]);
              }

              if (v66 < 0)
              {
                operator delete(v64);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Could not find stream %s in PhysicalDevice ID %u (uid: %s).");
          }

          v17 = 0;
          v18 = 0;
          if (v14)
          {
            v19 = 1869968496;
          }

          else
          {
            v19 = 1768845428;
          }

          while (1)
          {
            v20 = (*(*v15 + 96))(v15, v14, v18);
            if (!v20)
            {
              v44 = sub_5544(14);
              v45 = *v44;
              if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
              {
                if (v14)
                {
                  v46 = "output";
                }

                else
                {
                  v46 = "input";
                }

                v47 = &v64;
                sub_53E8(&v64, v46);
                if (v66 < 0)
                {
                  v47 = v64;
                }

                v48 = (*(*v15 + 120))(v15);
                (*(*v15 + 128))(__p, v15);
                if (v63 >= 0)
                {
                  v49 = __p;
                }

                else
                {
                  v49 = __p[0];
                }

                *buf = 136316418;
                v70 = "AggregateDevice_Common2.cpp";
                v71 = 1024;
                v72 = 106;
                v73 = 2080;
                v74 = v47;
                *v75 = 1024;
                *&v75[2] = v18;
                *&v75[6] = 1024;
                *&v75[8] = v48;
                *&v75[12] = 2080;
                *&v75[14] = v49;
                _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [curStreamPtr is NULL]: Encountered a NULL %s stream at index %u in PhysicalDevice ID %u (uid: \\%s\\).", buf, 0x32u);
                if (v63 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v66 < 0)
                {
                  operator delete(v64);
                }
              }

              v50 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v50, "Encountered a NULL %s stream at index %u in PhysicalDevice ID %u (uid: %s).");
            }

            v21 = *(v9 + 88);
            if (v21)
            {
              v22 = std::__shared_weak_count::lock(v21);
              if (v22)
              {
                v23 = *(v9 + 80);
                sub_1A8C0(v22);
                if (v23 == v20)
                {
                  break;
                }
              }
            }

            LODWORD(v64) = 1885762592;
            HIDWORD(v64) = v19;
            v65 = 0;
            LODWORD(__p[0]) = 40;
            (*(*v20 + 40))(v20, &v64, 0, 0, __p, buf);
            v17 += *v75;
            v18 = (v18 + 1);
            if (v16 == v18)
            {
              goto LABEL_23;
            }
          }

          v30 = sub_5544(17);
          v8 = v52;
          v4 = v53;
          if (*(v30 + 8))
          {
            v31 = *v30;
            if (*v30)
            {
              if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
              {
                if (v14)
                {
                  v32 = "output";
                }

                else
                {
                  v32 = "input";
                }

                v33 = &v64;
                sub_53E8(&v64, v32);
                if (v66 < 0)
                {
                  v33 = v64;
                }

                v34 = __p;
                sub_23148(__p, (v9 + 8));
                if (v63 < 0)
                {
                  v34 = __p[0];
                }

                v35 = (*(*v15 + 120))(v15);
                (*(*v15 + 128))(v60, v15);
                if (v61 >= 0)
                {
                  v36 = v60;
                }

                else
                {
                  v36 = v60[0];
                }

                *buf = 136316674;
                v70 = "AggregateDevice_Common2.cpp";
                v71 = 1024;
                v72 = 113;
                v73 = 2080;
                v74 = v33;
                *v75 = 2080;
                *&v75[2] = v34;
                *&v75[10] = 1024;
                *&v75[12] = v17;
                *&v75[16] = 1024;
                *&v75[18] = v35;
                v76 = 2080;
                v77 = v36;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s channels for stream %s begin at index %u within the AudioChannelLayouts of PhysicalDevice ID %u (uid: %s).", buf, 0x3Cu);
                if (v61 < 0)
                {
                  operator delete(v60[0]);
                }

                if (v63 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v66 < 0)
                {
                  operator delete(v64);
                }
              }
            }
          }

          if (v68)
          {
            sub_1A8C0(v68);
          }

          *(v53 + 12) = v17;
          *(v53 + 16) = 1;
          if (v51)
          {
            std::__shared_weak_count::__release_weak(v51);
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    if ((*(v4 + 16) & 1) == 0)
    {
      v37 = sub_5544(17);
      v38 = *v37;
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
        {
          sub_23148(&v64, (v9 + 8));
          v39 = v66;
          v40 = v64;
          sub_23148(__p, v58 + 2);
          v41 = &v64;
          if (v39 < 0)
          {
            v41 = v40;
          }

          if (v63 >= 0)
          {
            v42 = __p;
          }

          else
          {
            v42 = __p[0];
          }

          *buf = 136315906;
          v70 = "AggregateDevice_Common2.cpp";
          v71 = 1024;
          v72 = 323;
          v73 = 2080;
          v74 = v41;
          *v75 = 2080;
          *&v75[2] = v42;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not find underlying stream channel index for stream %s of device %s", buf, 0x26u);
          if (v63 < 0)
          {
            operator delete(__p[0]);
          }

          if (v66 < 0)
          {
            operator delete(v64);
          }
        }
      }
    }

    if (v8)
    {
      sub_1A8C0(v8);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_weak(v57);
    }
  }

  if (v59)
  {
    sub_1A8C0(v59);
  }

  return v4;
}

void sub_1575FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a34)
  {
    sub_1A8C0(a34);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_weak(a9);
  }

  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a17)
  {
    sub_1A8C0(a17);
  }

  v35 = *(a11 + 40);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15774C(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 824;
  if (a2)
  {
    v3 = 848;
  }

  v4 = (a1 + v3);
  if (a3 >= ((v4[1] - *v4) >> 3))
  {
    v13 = (a1 + v3);
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v9 = "output";
      }

      else
      {
        v9 = "input";
      }

      sub_53E8(__p, v9);
      if (v16 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      v11 = (v13[1] - *v13) >> 3;
      *buf = 136316162;
      v18 = "AggregateDevice_Common2.cpp";
      v19 = 1024;
      v20 = 986;
      v21 = 2080;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      v25 = 1024;
      v26 = a3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): %s cache has %lu items (requested index %u).", buf, 0x2Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(exception, "%s cache has %lu items (requested index %u).");
  }

  return *(*v4 + 8 * a3);
}

void sub_157910(uint64_t a1, uint64_t a2)
{
  *(&v114[0] + 1) = 0;
  *&v114[1] = 0;
  *&v114[0] = v114 + 8;
  sub_16B5C4(buf, a2, 0);
  sub_16B5C4(&v117, a2, 1);
  for (i = *&buf[8]; i != buf; i = *(i + 8))
  {
    sub_171F6C(v114, v114 + 1, (i + 16));
  }

  for (j = v118; j != &v117; j = j[1])
  {
    sub_171F6C(v114, v114 + 1, j + 2);
  }

  sub_16B714(v115, *&v114[0], v114 + 8);
  sub_65310(&v117);
  sub_65310(buf);
  sub_4B0F4(*(&v114[0] + 1));
  sub_11DB30((a1 + 184), v115);
  sub_65310(v115);
  sub_16B5C4(v114, a2, 0);
  sub_11DB30((a1 + 592), v114);
  sub_65310(v114);
  sub_16B5C4(v114, a2, 1);
  sub_11DB30((a1 + 616), v114);
  sub_65310(v114);
  if (a1 + 800 != a2 + 96)
  {
    sub_16B928((a1 + 800), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
  }

  sub_1561C0(v114, a2, (a1 + 184), a1, *(a1 + 793));
  v6 = (a1 + 824);
  v7 = *(a1 + 824);
  if (v7)
  {
    *(a1 + 832) = v7;
    operator delete(v7);
    *v6 = 0;
    *(a1 + 832) = 0;
    *(a1 + 840) = 0;
  }

  *v6 = v114[0];
  *(a1 + 840) = *&v114[1];
  sub_1561C0(v114, (a2 + 24), (a1 + 184), a1, *(a1 + 793));
  v8 = *(a1 + 848);
  if (v8)
  {
    *(a1 + 856) = v8;
    operator delete(v8);
    *(a1 + 848) = 0;
    *(a1 + 856) = 0;
    *(a1 + 864) = 0;
  }

  *(a1 + 848) = v114[0];
  *(a1 + 864) = *&v114[1];
  sub_156704(v114, 0, (a2 + 48));
  v9 = (a1 + 872);
  v10 = *(a1 + 872);
  if (v10)
  {
    *(a1 + 880) = v10;
    operator delete(v10);
    *v9 = 0;
    *(a1 + 880) = 0;
    *(a1 + 888) = 0;
  }

  *v9 = v114[0];
  *(a1 + 888) = *&v114[1];
  sub_156704(v114, 1, (a2 + 72));
  v11 = *(a1 + 896);
  if (v11)
  {
    *(a1 + 904) = v11;
    operator delete(v11);
    *(a1 + 896) = 0;
    *(a1 + 904) = 0;
    *(a1 + 912) = 0;
  }

  *(a1 + 896) = v114[0];
  *(a1 + 912) = *&v114[1];
  v118 = 0;
  v119 = 0;
  v117 = &v118;
  v12 = *a2;
  if (*(a2 + 8) != *a2)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      sub_165C3C(&v117, *(v12 + 16 * v13));
      v13 = v14;
      v12 = *a2;
      ++v14;
    }

    while (v13 < (*(a2 + 8) - *a2) >> 4);
  }

  v15 = *(a2 + 24);
  if (*(a2 + 32) != v15)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      sub_165C3C(&v117, *(v15 + 16 * v16));
      v16 = v17;
      v15 = *(a2 + 24);
      ++v17;
    }

    while (v16 < (*(a2 + 32) - v15) >> 4);
  }

  v18 = *(a2 + 48);
  if (*(a2 + 56) != v18)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      sub_165C3C(&v117, *(v18 + 40 * v19 + 8));
      v19 = v20;
      v18 = *(a2 + 48);
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - v18) >> 3) > v20++;
    }

    while (v21);
  }

  v22 = *(a2 + 72);
  if (*(a2 + 80) != v22)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      sub_165C3C(&v117, *(v22 + 40 * v23 + 8));
      v23 = v24;
      v22 = *(a2 + 72);
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - v22) >> 3) > v24++;
    }

    while (v21);
  }

  if (v118)
  {
    v25 = v118;
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25);
    if (v26 != &v118 && !v26[4])
    {
      v27 = v26[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        v29 = v26;
        do
        {
          v28 = v29[2];
          v30 = *v28 == v29;
          v29 = v28;
        }

        while (!v30);
      }

      if (v117 == v26)
      {
        v117 = v28;
      }

      --v119;
      sub_75234(v118, v26);
      v31 = v26[5];
      if (v31)
      {
        sub_1A8C0(v31);
      }

      operator delete(v26);
    }
  }

  v32 = sub_5544(17);
  if (*(v32 + 8))
  {
    v33 = *v32;
    if (*v32)
    {
      if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Common2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 789;
        v121 = 2048;
        *v122 = v119;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Added %lu streams to the delete list.", buf, 0x1Cu);
      }
    }
  }

  memset(v114, 0, sizeof(v114));
  v34 = v117;
  if (v117 != &v118)
  {
    do
    {
      if (sub_F5EFC(*(v34 + 4)))
      {
        v35 = 24;
      }

      else
      {
        v35 = 0;
      }

      sub_A0540((v114 + v35), v34 + 2);
      v36 = *(v34 + 1);
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = *(v34 + 2);
          v30 = *v37 == v34;
          v34 = v37;
        }

        while (!v30);
      }

      v34 = v37;
    }

    while (v37 != &v118);
  }

  sub_1199A8(v118);
  sub_14CD4C((a1 + 640));
  *(a1 + 640) = v114[0];
  *(a1 + 656) = *&v114[1];
  memset(v114, 0, 24);
  sub_14CD4C((a1 + 664));
  *(a1 + 664) = *(&v114[1] + 8);
  *(a1 + 680) = *(&v114[2] + 1);
  memset(&v114[1] + 8, 0, 24);
  sub_10852C(&v117, 0, *(a1 + 128), *(a1 + 536));
  sub_10852C(v115, 1, *(a1 + 128), *(a1 + 536));
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3) != v116[2])
  {
    v94 = sub_5544(14);
    v95 = *v94;
    if (*v94 && os_log_type_enabled(*v94, OS_LOG_TYPE_ERROR))
    {
      v96 = v116[2];
      v97 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3);
      *buf = 136315906;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 858;
      v121 = 1024;
      *v122 = v96;
      *&v122[4] = 2048;
      *&v122[6] = v97;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): The number of output streams in the aggregate device's actual AudioHardwareIOProcStreamUsage structure (count: %u) does not match the number of streams in the UnderlyingStreamInfo vector (count: %lu).", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The number of output streams in the aggregate device's actual AudioHardwareIOProcStreamUsage structure (count: %u) does not match the number of streams in the UnderlyingStreamInfo vector (count: %lu).");
  }

  v113 = 0;
  *v112 = 0u;
  v39 = *(a2 + 48);
  v38 = *(a2 + 56);
  if (v38 != v39)
  {
    v40 = 0;
    v41 = 1;
    do
    {
      v42 = (v39 + 40 * v40);
      if (*v42 != -1)
      {
        sub_AFD28(v112, v42);
        v39 = *(a2 + 48);
        v38 = *(a2 + 56);
      }

      v40 = v41;
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3) > v41++;
    }

    while (v21);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v111 = 0;
  *v110 = 0u;
  v44 = *(a2 + 72);
  v43 = *(a2 + 80);
  if (v43 != v44)
  {
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = (v44 + 40 * v45);
      if (*v47 != -1)
      {
        sub_AFD28(v110, v47);
        v44 = *(a2 + 72);
        v43 = *(a2 + 80);
      }

      v45 = v46;
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v43 - v44) >> 3) > v46++;
    }

    while (v21);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v48 = v110[0];
  v49 = (v110[1] - v110[0]) >> 2;
  if (v49 != (*(a2 + 32) - *(a2 + 24)) >> 4)
  {
    v99 = sub_5544(14);
    v100 = *v99;
    if (*v99 && os_log_type_enabled(*v99, OS_LOG_TYPE_ERROR))
    {
      v101 = (*(a2 + 32) - *(a2 + 24)) >> 4;
      *buf = 136315906;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 891;
      v121 = 2048;
      *v122 = v49;
      *&v122[8] = 2048;
      *&v122[10] = v101;
      _os_log_impl(&dword_0, v100, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): The number of valid output streams (indexed as not kDisabledStreamIndex) in the UnderlyingStreamInfo vector (count: %lu) does not match the size of the number in the client stream vector (%lu).", buf, 0x26u);
    }

    v102 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v102, "The number of valid output streams (indexed as not kDisabledStreamIndex) in the UnderlyingStreamInfo vector (count: %lu) does not match the size of the number in the client stream vector (%lu).");
  }

  if (v110[1] != v110[0])
  {
    v50 = 0;
    v51 = 0;
    do
    {
      if ((v48[v50] & 0x80000000) != 0)
      {
        v52 = *sub_5544(14);
        if (v52)
        {
          log = v52;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Common2.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 894;
            _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Allowed a negative value into usedOutputClientStreamIndexes.", buf, 0x12u);
          }
        }
      }

      if (v51 != v48[v50])
      {
        v91 = sub_5544(14);
        v92 = *v91;
        if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 895;
          v121 = 1024;
          *v122 = v51;
          _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): There is no indexed client stream %u in the output UnderlyingStreamInfo vector.", buf, 0x18u);
        }

        v93 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v93, "There is no indexed client stream %u in the output UnderlyingStreamInfo vector.");
      }

      v50 = ++v51;
    }

    while (v49 > v51);
  }

  if (*(v119 + 2) != (*(a1 + 880) - *(a1 + 872)) >> 3)
  {
    v53 = sub_5544(17);
    v54 = *v53;
    if (*v53)
    {
      if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        v55 = *(v119 + 2);
        v56 = (*(a1 + 880) - *(a1 + 872)) >> 3;
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Common2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 905;
        v121 = 1024;
        *v122 = v55;
        *&v122[4] = 2048;
        *&v122[6] = v56;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of Streams in input stream usage (%u) does not match number of streams in stream cache (%zu)", buf, 0x22u);
      }
    }
  }

  v57 = v119;
  v58 = *(a1 + 872);
  v59 = (*(a1 + 880) - v58) >> 3;
  if (*(v119 + 2) < v59)
  {
    LODWORD(v59) = *(v119 + 2);
  }

  if (v59)
  {
    v60 = 0;
    while (1)
    {
      v61 = *(v58 + 8 * v60);
      if (!v61)
      {
        goto LABEL_93;
      }

      v62 = sub_DD858();
      if (sub_1192CC(v62) != 3)
      {
        break;
      }

      v63 = (*(**(*v9 + 8 * v60) + 168))(*(*v9 + 8 * v60));
      v57 = v119;
      if (v63 != -2)
      {
        goto LABEL_93;
      }

      v64 = 2;
LABEL_94:
      *&v57[4 * v60++ + 12] = v64;
      v58 = *(a1 + 872);
      v65 = (*(a1 + 880) - v58) >> 3;
      v66 = *(v57 + 2);
      if (v66 >= v65)
      {
        v65 = v65;
      }

      else
      {
        v65 = v66;
      }

      if (v60 >= v65)
      {
        goto LABEL_98;
      }
    }

    v57 = v119;
LABEL_93:
    v64 = v61 != 0;
    goto LABEL_94;
  }

LABEL_98:
  sub_10834C(&v117);
  if (v116[2] != (*(a1 + 904) - *(a1 + 896)) >> 3)
  {
    v67 = sub_5544(17);
    v68 = *v67;
    if (*v67)
    {
      if (os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
      {
        v69 = v116[2];
        v70 = (*(a1 + 904) - *(a1 + 896)) >> 3;
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Common2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 926;
        v121 = 1024;
        *v122 = v69;
        *&v122[4] = 2048;
        *&v122[6] = v70;
        _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of Streams in output stream usage (%u) does not match number of streams in stream cache (%zu)", buf, 0x22u);
      }
    }
  }

  v71 = *(a1 + 896);
  v72 = (*(a1 + 904) - v71) >> 3;
  v73 = v116[2];
  if (v73 >= v72)
  {
    v72 = v72;
  }

  else
  {
    v72 = v73;
  }

  if (v72)
  {
    v74 = v116 + 3;
    do
    {
      v75 = *v71++;
      *v74++ = v75 != 0;
      --v72;
    }

    while (v72);
  }

  sub_10834C(v115);
  v76 = sub_5544(17);
  v77 = *v76;
  if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
  {
    v108 = *(a1 + 276);
    v78 = &v109;
    sub_68108(&v109, &v108);
    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v78 = v109.__r_.__value_.__r.__words[0];
    }

    sub_1197BC(v106, &v117);
    v79 = v107;
    v80 = v106[0];
    sub_1197BC(__p, v115);
    v81 = v106;
    if (v79 < 0)
    {
      v81 = v80;
    }

    if (v105 >= 0)
    {
      v82 = __p;
    }

    else
    {
      v82 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "AggregateDevice_Common2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 932;
    v121 = 2080;
    *v122 = v78;
    *&v122[8] = 2080;
    *&v122[10] = v81;
    *&v122[18] = 2080;
    *&v122[20] = v82;
    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VA stream usage for %s. Input: %s, Output: %s", buf, 0x30u);
    if (v105 < 0)
    {
      operator delete(__p[0]);
    }

    if (v107 < 0)
    {
      operator delete(v106[0]);
    }

    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 792) == 1)
  {
    (*(*a1 + 504))(buf, a1);
    sub_14C6B8(a1, a1 + 544, &v117, buf);
    sub_477A0(*&buf[8]);
  }

  v83 = *(a1 + 640);
  for (k = *(a1 + 648); v83 != k; v83 += 16)
  {
    (*(**(*v83 + 152) + 184))(buf);
    sub_14C4D4((a1 + 248), *(a1 + 256), *buf, *&buf[8], (*&buf[8] - *buf) >> 4);
    v109.__r_.__value_.__r.__words[0] = buf;
    sub_F5714(&v109);
  }

  v85 = *(a1 + 664);
  for (m = *(a1 + 672); v85 != m; v85 += 16)
  {
    (*(**(*v85 + 152) + 184))(buf);
    sub_14C4D4((a1 + 248), *(a1 + 256), *buf, *&buf[8], (*&buf[8] - *buf) >> 4);
    v109.__r_.__value_.__r.__words[0] = buf;
    sub_F5714(&v109);
  }

  sub_10D91C(a1);
  v87 = sub_5544(17);
  v88 = *v87;
  if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_DEBUG))
  {
    v89 = *(a1 + 128);
    sub_F7D80(&v109, *(a1 + 192), (a1 + 184));
    v90 = (v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v109 : v109.__r_.__value_.__r.__words[0];
    *buf = 136316162;
    *&buf[4] = "AggregateDevice_Common2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 956;
    v121 = 1024;
    *v122 = v89;
    *&v122[4] = 2048;
    *&v122[6] = a1;
    *&v122[14] = 2080;
    *&v122[16] = v90;
    _os_log_impl(&dword_0, v88, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created aggregate device [ id: %u; addr: %p ] based on physical devices: %s", buf, 0x2Cu);
    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }
  }

  sub_10BB88(a1);
  if (v110[0])
  {
    operator delete(v110[0]);
  }

  if (v112[0])
  {
    operator delete(v112[0]);
  }

  free(v116);
  free(v119);
  *buf = &v114[1] + 8;
  sub_F5714(buf);
  *buf = v114;
  sub_F5714(buf);
}

void sub_158930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  free(*(v38 - 192));
  free(*(v38 - 168));
  sub_3D969C(&a37);
  _Unwind_Resume(a1);
}

void sub_158AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v95 = sub_5544(14);
    v96 = *v95;
    if (*v95 && os_log_type_enabled(*v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 815;
      _os_log_impl(&dword_0, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_CE488(&v113, a3, a4, a5, a6, a7, a8);
  *&v112 = (*(*a1 + 104))(a1);
  *(&v112 + 1) = v12;
  v110 = 0x696E707476646223;
  v111 = 0;
  if (v115 != 1)
  {
    goto LABEL_18;
  }

  v13 = *(a4 + 200);
  v105 = *(a4 + 192);
  v106 = *&v13;
  if (*&v13 != 0.0)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(buf, &v105, "", 825);
  v14 = (*(**buf + 16))(*buf, &v110);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (*&v13 != 0.0)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v14)
  {
    if (v119 == 1 && v118 != qword_708650 && (*(v118 + 40) & 1) == 0)
    {
      v15 = v114;
      if (*(&v112 + 1) < v114)
      {
        v98 = sub_5544(14);
        v99 = *v98;
        if (*v98 && os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 832;
          v121 = 2048;
          v122 = v15;
          v123 = 2048;
          v124 = *(&v112 + 1);
          _os_log_impl(&dword_0, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Routing database error: Routing database specified a maximum decibel volume (%f) above ioVolumeControl's maximum hardware range (%f).", buf, 0x26u);
        }

        v100 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v100, "Routing database error: Routing database specified a maximum decibel volume (%f) above ioVolumeControl's maximum hardware range (%f).");
      }
    }

    *(&v112 + 1) = v114;
    v16 = sub_5544(20);
    v17 = sub_5544(39);
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
    v30 = *v16;
    if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 836;
      v121 = 2048;
      v122 = *(&v112 + 1);
      v27 = "%25s:%-5d Reconfigured input volume control's maximum decibel volume to %f.";
      v28 = v30;
      v29 = 28;
LABEL_34:
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, v27, buf, v29);
    }
  }

  else
  {
LABEL_18:
    v21 = sub_5544(20);
    v22 = sub_5544(39);
    v23 = 0;
    *buf = 0x100000002;
    v24 = *(v21 + 8);
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
          goto LABEL_35;
        }

        goto LABEL_26;
      }
    }

    if ((v24 & v25) == 0)
    {
      v21 = v22;
    }

    if ((*(v21 + 8) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_26:
    v26 = *v21;
    if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 840;
      v27 = "%25s:%-5d Skipped setting device input max volume in decibels: the routing database did not request it or hardware does not support volume control.";
      v28 = v26;
      v29 = 18;
      goto LABEL_34;
    }
  }

  if (BYTE4(v113) != 1)
  {
    goto LABEL_51;
  }

LABEL_35:
  v31 = *(a4 + 200);
  v105 = *(a4 + 192);
  v106 = *&v31;
  if (*&v31 != 0.0)
  {
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(buf, &v105, "", 843);
  v32 = (*(**buf + 16))(*buf, &v110);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (*&v31 != 0.0)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (v32)
  {
    if (v119 == 1 && v118 != qword_708650 && (*(v118 + 40) & 1) == 0)
    {
      v33 = *&v113;
      if (*&v112 > *&v113)
      {
        v101 = sub_5544(14);
        v102 = *v101;
        if (*v101 && os_log_type_enabled(*v101, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 850;
          v121 = 2048;
          v122 = v33;
          v123 = 2048;
          v124 = v112;
          _os_log_impl(&dword_0, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Routing database error: Routing database specified a minimum decibel volume (%f) below ioVolumeControl's minimum hardware range (%f).", buf, 0x26u);
        }

        v103 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v103, "Routing database error: Routing database specified a minimum decibel volume (%f) below ioVolumeControl's minimum hardware range (%f).");
      }
    }

    *&v112 = *&v113;
    v34 = sub_5544(20);
    v35 = sub_5544(39);
    v36 = 0;
    *buf = 0x100000002;
    v37 = *(v34 + 8);
    while (1)
    {
      v38 = *&buf[v36];
      if (((v37 & v38) != 0) != ((*(v35 + 8) & v38) != 0))
      {
        break;
      }

      v36 += 4;
      if (v36 == 8)
      {
        goto LABEL_64;
      }
    }

    if ((v37 & v38) == 0)
    {
      v34 = v35;
    }

LABEL_64:
    v48 = *v34;
    if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 854;
      v121 = 2048;
      v122 = *&v112;
      v45 = "%25s:%-5d Reconfigured input volume control's minimum decibel volume to %f.";
      v46 = v48;
      v47 = 28;
LABEL_67:
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, v45, buf, v47);
    }
  }

  else
  {
LABEL_51:
    v39 = sub_5544(20);
    v40 = sub_5544(39);
    v41 = 0;
    *buf = 0x100000002;
    v42 = *(v39 + 8);
    while (1)
    {
      v43 = *&buf[v41];
      if (((v42 & v43) != 0) != ((*(v40 + 8) & v43) != 0))
      {
        break;
      }

      v41 += 4;
      if (v41 == 8)
      {
        if ((v42 & 1) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_59;
      }
    }

    if ((v42 & v43) == 0)
    {
      v39 = v40;
    }

    if ((*(v39 + 8) & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_59:
    v44 = *v39;
    if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 858;
      v45 = "%25s:%-5d Skipped setting device input min volume in decibels: the routing database did not request it or hardware does not support volume control.";
      v46 = v44;
      v47 = 18;
      goto LABEL_67;
    }
  }

LABEL_68:
  v105 = (*(*a1 + 104))(a1);
  v106 = v49;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  if (v119 == 1)
  {
    v50 = v118;
    if (v118 != qword_708650)
    {
      v51 = sub_5544(21);
      v52 = sub_5544(39);
      v53 = 0;
      *buf = 0x100000002;
      v54 = *(v51 + 8);
      while (1)
      {
        v55 = *&buf[v53];
        if (((v54 & v55) != 0) != ((*(v52 + 8) & v55) != 0))
        {
          break;
        }

        v53 += 4;
        if (v53 == 8)
        {
          if ((v54 & 1) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }
      }

      if ((v54 & v55) == 0)
      {
        v51 = v52;
      }

      if (*(v51 + 8))
      {
LABEL_78:
        v56 = *v51;
        if (v56 && os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          sub_15E30C(&__p, v50);
          v57 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 867;
          v121 = 2080;
          v122 = *&v57;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found extended volume description: %s", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

LABEL_85:
      if (*(v50 + 4))
      {
        v58 = v50;
      }

      else
      {
        v58 = &v107;
      }

      v107 = *v58;
      if (v107 == 1)
      {
        goto LABEL_89;
      }

      v93 = sub_5544(14);
      v94 = *v93;
      if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 870;
        _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Logic error: a proper software volume mode was not specified in the routing database", buf, 0x12u);
      }

      if (v107)
      {
LABEL_89:
        (*(*a2 + 320))(buf, a2, a4);
        v60 = *buf;
        v59 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        v61 = v109;
        v108 = v60;
        v109 = v59;
        if (v61)
        {
          std::__shared_weak_count::__release_weak(v61);
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }

          v59 = v109;
        }

        if (!v59 || v59->__shared_owners_ == -1)
        {
          v62 = sub_5544(20);
          v63 = *v62;
          if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 879;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing database specified SW volume but no SW volume is associated with the aggregate device... falling back to HW-only volume", buf, 0x12u);
          }

          v107 = 0;
        }

        else if (v107 == 1)
        {
          if (*(v50 + 12) == 1)
          {
            v105 = *(v50 + 8);
          }

          if (*(v50 + 20) == 1)
          {
            v106 = *(v50 + 16);
          }

          if (*(v50 + 40) == 1)
          {
            v112 = *(v50 + 24);
          }
        }
      }
    }
  }

  (*(*a1 + 80))(a1, &v112, 0x100000000, &v105, 0);
  v64 = v116;
  v65 = v117;
  if (*(a8 + 184) == 1 && !v107 || sub_CF3FC(*(a4 + 144), *(a4 + 304)) & 1 | ((v65 & 1) == 0))
  {
    (*(*a1 + 120))(a1);
    v66 = sub_5544(20);
    v67 = sub_5544(39);
    v68 = 0;
    *buf = 0x100000002;
    v69 = *(v66 + 8);
    while (1)
    {
      v70 = *&buf[v68];
      if (((v69 & v70) != 0) != ((*(v67 + 8) & v70) != 0))
      {
        break;
      }

      v68 += 4;
      if (v68 == 8)
      {
        goto LABEL_115;
      }
    }

    if ((v69 & v70) == 0)
    {
      v66 = v67;
    }

LABEL_115:
    v71 = *v66;
    if (v71 && os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      if (v65)
      {
        p_p = &__p;
        std::to_string(&__p, v64);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        p_p = "no value";
      }

      v86 = *(a8 + 184);
      v87 = v107;
      v88 = sub_CF3FC(*(a4 + 144), *(a4 + 304));
      v89 = "true";
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 937;
      *buf = 136316418;
      if (v87 == 2)
      {
        v90 = "false";
      }

      else
      {
        v90 = "true";
      }

      v121 = 2080;
      v122 = *&p_p;
      if (v86)
      {
        v91 = "true";
      }

      else
      {
        v91 = "false";
      }

      v123 = 2080;
      if (!v88)
      {
        v89 = "false";
      }

      v124 = v91;
      v125 = 2080;
      v126 = v90;
      v127 = 2080;
      v128 = v89;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Skipped setting device input volume in decibels: %s (%s, %s, %s)", buf, 0x3Au);
      if ((v65 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    if ((v65 & 1) == 0)
    {
      sub_1EC054();
    }

    *&__p.__r_.__value_.__l.__data_ = v64;
    strcpy(buf, "pscvbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v73 = sub_59410(a1);
    v75 = v74;
    v76 = (*(*a1 + 112))(a1, v64);
    *(&v78 + 1) = v75;
    *&v78 = v73;
    v77 = v78 >> 32;
    if ((v77 & 0x100000000) == 0 || v77 == 0)
    {
      v80 = v76;
    }

    else
    {
      v80 = 0;
    }

    if (v80 == 1)
    {
      v81 = sub_5544(20);
      v82 = sub_5544(39);
      v83 = 0;
      *buf = 0x100000002;
      v84 = *(v81 + 8);
      while (1)
      {
        v85 = *&buf[v83];
        if (((v84 & v85) != 0) != ((*(v82 + 8) & v85) != 0))
        {
          break;
        }

        v83 += 4;
        if (v83 == 8)
        {
          goto LABEL_147;
        }
      }

      if ((v84 & v85) == 0)
      {
        v81 = v82;
      }

LABEL_147:
      v92 = *v81;
      if (v92 && os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 924;
        _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stored default input volume, setting the input volume on the device", buf, 0x12u);
      }

      strcpy(buf, "dlovbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      (*(*a1 + 48))(a1, buf, 0, 0, 4, &__p);
    }
  }

  if (v109)
  {
    std::__shared_weak_count::__release_weak(v109);
  }
}

void sub_15998C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_159A3C(uint64_t a1)
{
  if (*(a1 + 276) == 1986291046)
  {
    if (atomic_load_explicit(&qword_6E8420, memory_order_acquire) != -1)
    {
      *buf = &v8;
      __p.__r_.__value_.__r.__words[0] = buf;
      std::__call_once(&qword_6E8420, &__p, sub_288260);
    }

    v2 = *&qword_6E8418;
    v8 = qword_6E8418;
    v9 = BYTE4(qword_6E8418);
    if ((qword_6E8418 & 0x100000000) != 0)
    {
      v3 = sub_5544(20);
      v4 = *v3;
      if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 276);
        sub_68108(&__p, &v6);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        v11 = 1024;
        v12 = 1740;
        v13 = 2048;
        v14 = v2;
        v15 = 2080;
        v16 = p_p;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Setting IOCycleUsage of %f on VAD %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      strcpy(buf, "cycnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      sub_163594(a1, buf, 4, &v8);
    }
  }
}

void sub_159BFC(uint64_t a1, double **a2, unint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 == v4)
  {
    v125 = sub_5544(14);
    v126 = *v125;
    if (*v125 && os_log_type_enabled(*v125, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 896;
      _os_log_impl(&dword_0, v126, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Empty vector of curve ranges", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "Empty vector of curve ranges");
  }

  if (*(v4 - 1) < **a2)
  {
    v128 = sub_5544(14);
    v129 = *v128;
    if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_ERROR))
    {
      v130 = *(a2[1] - 1);
      v131 = **a2;
      *buf = 136315906;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 897;
      *&buf[18] = 2048;
      *&buf[20] = v130;
      *&buf[28] = 2048;
      *&buf[30] = v131;
      _os_log_impl(&dword_0, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Argument desiredVolumeCurveRangeDB's mMaximum (%f) < mMinimum (%f)", buf, 0x26u);
    }

    v132 = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(v132, "Argument desiredVolumeCurveRangeDB's mMaximum (%f) < mMinimum (%f)");
  }

  v9 = (a1 + 696);
  if (a4)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 680) = v10;
  v11 = *(a1 + 704);
  *v9 = 0;
  v9[1] = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (a4 && (v12 = *(a4 + 32)) != 0)
  {
    i = std::__shared_weak_count::lock(v12);
    if (i)
    {
      v14 = *(a4 + 24);
      goto LABEL_14;
    }
  }

  else
  {
    i = 0;
  }

  v14 = 0;
LABEL_14:
  if (*(a1 + 680))
  {
    v16 = *(a4 + 24);
    v15 = *(a4 + 32);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
    }

    *(a1 + 696) = v16;
    v17 = *(a1 + 704);
    *(a1 + 704) = v15;
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    *(a1 + 724) = 0;
    if (v14)
    {
      v18 = *v14;
      if (*(a1 + 736))
      {
        (*(v18 + 144))(v14, 0);
        v19 = HIDWORD(a3);
        goto LABEL_64;
      }

      v22 = (*(v18 + 232))(v14);
      if ((a3 & 0x100000000) != 0)
      {
        if (v23)
        {
          v24 = *(v22 + 36);
          if (v24 != a3)
          {
            sub_28A97C();
          }

          v25 = sub_5544(19);
          v26 = *v25;
          if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 933;
            *&buf[18] = 1024;
            *&buf[20] = a3;
            *&buf[24] = 1024;
            *&buf[26] = v24;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume control has transfer functions both from routing database (%ul) and software volume (%ul)! Undefined behavior!", buf, 0x1Eu);
          }
        }
      }

      else
      {
        if ((v23 & 1) == 0)
        {
          LOBYTE(v19) = 0;
LABEL_39:
          (*(*v14 + 152))(v14, 1);
          sub_5659C(buf, (a1 + 504), "", 945);
          v27 = sub_160558(*buf);
          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v27)
          {
            sub_306388(a1);
          }

          v28 = *(a1 + 680);
          (*(*v14 + 160))(v14, v28 != 3);
          v29 = (*(*v14 + 240))(v14);
          if (v28 == 3)
          {
            v30 = 0;
          }

          else
          {
            v30 = v29;
          }

          if (v30 == 1)
          {
            *(a1 + 869) = 1;
            v31 = sub_5544(42);
            v32 = *v31;
            if (!*v31 || !os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_59;
            }

            *buf = 136315394;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 960;
            v33 = "%25s:%-5d OutputVolumeControl_HAL_Common::ReconfigureInternal() - volume command supports ramping, setting enabled.";
          }

          else
          {
            buf[0] = 0;
            AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FakeRamp", @"com.apple.audio.virtualaudio", buf);
            if (!buf[0])
            {
              goto LABEL_59;
            }

            v35 = AppBooleanValue;
            v138 = i;
            v36 = *sub_5544(14);
            v37 = v36;
            if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = "RunTimeDefaults.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2075;
              *&buf[18] = 2080;
              *&buf[20] = "FakeRamp";
              *&buf[28] = 1024;
              *&buf[30] = v35 != 0;
              _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %u", buf, 0x22u);
            }

            i = v138;
            if (v35 == 0 || v28 == 3)
            {
              goto LABEL_59;
            }

            *(a1 + 869) = 1;
            v38 = sub_5544(42);
            v32 = *v38;
            if (!*v38 || !os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_59;
            }

            *buf = 136315394;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 966;
            v33 = "%25s:%-5d OutputVolumeControl_HAL_Common::ReconfigureInternal() - faking volume ramping.";
          }

          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, v33, buf, 0x12u);
LABEL_59:
          if ((*(a1 + 869) & 1) == 0)
          {
            v39 = sub_5544(42);
            v40 = *v39;
            if (*v39)
            {
              if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 970;
                _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::ReconfigureInternal() - volume ramping is not supported.", buf, 0x12u);
              }
            }
          }

          (*(*v14 + 16))(v14, *(a1 + 712));
          goto LABEL_64;
        }

        LODWORD(a3) = *(v22 + 36);
      }

      LOBYTE(v19) = 1;
      goto LABEL_39;
    }

    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 977;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Logic error: requested software volume, but given software volume command is NULL", buf, 0x12u);
    }

    v19 = HIDWORD(a3);
    *(a1 + 680) = 0;
  }

  else
  {
    v19 = HIDWORD(a3);
    if (v14)
    {
      (*(*v14 + 160))(v14, 0);
    }
  }

LABEL_64:
  v41 = a2[1];
  v42 = v41 - 1;
  v43 = *(v41 - 1);
  v44 = *(a1 + 560);
  if (v43 < v44 || (v45 = **a2, v46 = *(a1 + 568), v45 > v46))
  {
    v42 = (a1 + 568);
  }

  else
  {
    if (v46 < v43)
    {
      v42 = (a1 + 568);
    }

    if (v45 >= v44)
    {
      v44 = **a2;
    }
  }

  v47 = *(a1 + 680);
  if (v47 == 2)
  {
    v48 = v43;
    v49 = **a2;
  }

  else if (v47 == 1)
  {
    v48 = v43;
    v49 = **a2;
    if (*(a1 + 727) == 1)
    {
      sub_5659C(buf, (a1 + 504), "", 1017);
      *__p = 1835103844;
      *&__p[4] = *(a1 + 544);
      v50 = *(a1 + 560);
      *&v141 = v50;
      v51 = *buf;
      if ((*(**buf + 16))(*buf, __p))
      {
        LODWORD(v139) = 4;
        (*(*v51 + 40))(v51, __p, 0, 0, &v139, &v141);
      }

      v52 = *a4;
      if (*&v141 > v52)
      {
        v52 = *&v141;
      }

      *(a1 + 684) = v52;
      v53 = *(a1 + 568);
      if (v53 >= *(a4 + 8))
      {
        v53 = *(a4 + 8);
      }

      v54 = v53;
      *(a1 + 688) = v54;
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      v41 = a2[1];
    }

    else if (*a4 != 0.0 || *(a4 + 8) != 0.0)
    {
      v133 = sub_5544(14);
      v134 = *v133;
      if (*v133 && os_log_type_enabled(*v133, OS_LOG_TYPE_ERROR))
      {
        v135 = *a4;
        v136 = *(a4 + 8);
        *buf = 136315906;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1035;
        *&buf[18] = 2048;
        *&buf[20] = v135;
        *&buf[28] = 2048;
        *&buf[30] = v136;
        _os_log_impl(&dword_0, v134, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Non-zero HW volume {%f, %f} configured but physical device does not support HW volume", buf, 0x26u);
      }

      v137 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v137, "Non-zero HW volume {%f, %f} configured but physical device does not support HW volume");
    }
  }

  else
  {
    v49 = v44;
    v48 = *v42;
    *(a1 + 684) = v49;
    *(a1 + 688) = v48;
  }

  if (v41 - *a2 == 16)
  {
    if (v19)
    {
      v55 = a3;
    }

    else
    {
      v55 = 0;
    }

    if (*(a1 + 608))
    {
      v56 = *(*(a1 + 592) + 28);
    }

    else
    {
      v56 = 0;
    }

    v60 = sub_55A7C(a1 + 584);
    *(a1 + 620) = v55;
    if (v55 > 0xF)
    {
      v63 = 1.0;
      v62 = 2.0;
      v61 = 1;
    }

    else
    {
      v61 = byte_517610[v55];
      v62 = flt_518BC8[v55];
      v63 = flt_518C08[v55];
    }

    *(a1 + 616) = v61;
    *(a1 + 624) = v62;
    *(a1 + 628) = v63;
    sub_477A0(*(a1 + 600));
    *(a1 + 592) = a1 + 600;
    *(a1 + 600) = 0u;
    sub_160214(a1 + 584, v56, v60);
    v64 = sub_5544(19);
    v65 = *v64;
    if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1063;
      *&buf[18] = 2048;
      *&buf[20] = v49;
      *&buf[28] = 2048;
      *&buf[30] = v48;
      *&buf[38] = 1024;
      *&buf[40] = v55;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reconfiguring volume curve with dB range {%f, %f} and transfer function %u", buf, 0x2Cu);
    }
  }

  else
  {
    sub_28F7E0(buf, a2);
    *(a1 + 584) = *buf;
    v57 = a1 + 600;
    sub_477A0(*(a1 + 600));
    v58 = *&buf[16];
    *(a1 + 592) = *&buf[8];
    *(a1 + 600) = v58;
    v59 = *&buf[24];
    *(a1 + 608) = *&buf[24];
    if (v59)
    {
      v58[2] = v57;
      *&buf[8] = &buf[16];
      *&buf[16] = 0;
      *&buf[24] = 0;
      v58 = 0;
    }

    else
    {
      *(a1 + 592) = v57;
    }

    *(a1 + 616) = *&buf[32];
    sub_477A0(v58);
  }

  v67 = v9 + 8;
  v66 = v9[8];
  if (v66)
  {
    *(a1 + 768) = v66;
    operator delete(v66);
    *v67 = 0;
    v9[9] = 0;
    v9[10] = 0;
  }

  *v67 = *a2;
  *(a1 + 776) = a2[2];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v14)
  {
    (*(*v14 + 224))(v14);
  }

  sub_5659C(buf, (a1 + 504), "", 1081);
  *__p = 1986225518;
  *&__p[4] = *(a1 + 544);
  v68 = sub_59410(*buf);
  *(&v71 + 1) = v69;
  *&v71 = v68;
  v70 = v71 >> 32;
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if ((v70 & 0x100000000) == 0)
  {
    v72 = *(a1 + 680);
    LODWORD(v70) = v72 != 2 && (v72 != 1 || (*(a1 + 727) & 1) != 0 || *(a1 + 684) != 0.0 || *(a1 + 688) != 0.0);
  }

  *(a1 + 784) = v70;
  v73 = sub_5544(19);
  v74 = *v73;
  if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
  {
    v75 = *(a1 + 784);
    sub_5659C(&v141, (a1 + 504), "", 1099);
    (*(*v141 + 128))(__p);
    if (v146 >= 0)
    {
      v76 = __p;
    }

    else
    {
      v76 = *__p;
    }

    *buf = 136315906;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1099;
    *&buf[18] = 1024;
    *&buf[20] = v75;
    *&buf[24] = 2080;
    *&buf[26] = v76;
    _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeConfirmations : %u for physical device %s", buf, 0x22u);
    if (v146 < 0)
    {
      operator delete(*__p);
    }

    if (v142)
    {
      sub_1A8C0(v142);
    }
  }

  sub_5659C(buf, (a1 + 504), "", 1101);
  v77 = (*(**buf + 192))(*buf);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v77)
  {
    memset(buf, 0, 24);
    v78 = *(a1 + 704);
    if (v78)
    {
      v79 = std::__shared_weak_count::lock(v78);
      if (v79)
      {
        v80 = *v9;
        if (*v9)
        {
          if (!(*(*v80 + 288))(*v9))
          {
LABEL_155:
            sub_1A8C0(v79);
LABEL_156:
            sub_5659C(&v141, (a1 + 504), "", 1963);
            v97 = v141;
            strcpy(__p, "cvbvbolg");
            __p[9] = 0;
            *&__p[10] = 0;
            if ((*(*v141 + 16))(v141, __p) && (v139 = 0x676C6F6276627663, v140 = 0, (*(*v97 + 24))(v97, &v139)) && *buf != *&buf[8])
            {
              strcpy(__p, "cvbvbolg");
              __p[9] = 0;
              *&__p[10] = 0;
              (*(*v97 + 48))(v97, __p, 0, 0, (*&buf[8] - *buf) & 0xFFFFFFFC, buf);
            }

            else
            {
              v98 = sub_5544(19);
              v99 = *v98;
              if (*v98 && os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "OutputVolumeControl_HAL_Common.cpp";
                v144 = 1024;
                v145 = 1974;
                _os_log_impl(&dword_0, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPortPropertyBootChimeVolumeCurve is either not present or unsettable", __p, 0x12u);
              }
            }

            if (v142)
            {
              sub_1A8C0(v142);
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            goto LABEL_167;
          }

          v81 = 0.0;
          v82 = 17;
          do
          {
            v83 = (*(*v80 + 304))(v80, v81);
            v84 = *&buf[8];
            if (*&buf[8] >= *&buf[16])
            {
              v86 = *buf;
              v87 = *&buf[8] - *buf;
              v88 = (*&buf[8] - *buf) >> 2;
              v89 = v88 + 1;
              if ((v88 + 1) >> 62)
              {
                sub_189A00();
              }

              v90 = *&buf[16] - *buf;
              if ((*&buf[16] - *buf) >> 1 > v89)
              {
                v89 = v90 >> 1;
              }

              if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v91 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v91 = v89;
              }

              if (v91)
              {
                sub_1D7C28(v91);
              }

              v92 = (4 * v88);
              v93 = &v92[-((*&buf[8] - *buf) >> 2)];
              *v92 = v83;
              v85 = v92 + 1;
              memcpy(v93, v86, v87);
              v94 = *buf;
              *buf = v93;
              *&buf[8] = v85;
              if (v94)
              {
                operator delete(v94);
              }
            }

            else
            {
              **&buf[8] = v83;
              v85 = (v84 + 4);
            }

            *&buf[8] = v85;
            v81 = v81 + 0.0625;
            --v82;
          }

          while (v82);
LABEL_154:
          if (!v79)
          {
            goto LABEL_156;
          }

          goto LABEL_155;
        }
      }
    }

    else
    {
      v79 = 0;
    }

    v95 = sub_5544(42);
    v96 = *v95;
    if (*v95 && os_log_type_enabled(*v95, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "OutputVolumeControl_HAL_Common.cpp";
      v144 = 1024;
      v145 = 1960;
      _os_log_impl(&dword_0, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d OutputVolumeControl_HAL_Common::ReconfigureInternal() - unable to lock software volume command.", __p, 0x12u);
    }

    goto LABEL_154;
  }

LABEL_167:
  if (!*(a1 + 736) || (*(a1 + 727) & 1) != 0)
  {
    *(a1 + 632) = *(a1 + 584);
    v100 = *(a1 + 592);
    v101 = (a1 + 600);
    if (*(a1 + 656))
    {
      v102 = i;
      v103 = *(a1 + 640);
      v104 = (a1 + 648);
      *(a1 + 640) = a1 + 648;
      *(*(a1 + 648) + 16) = 0;
      *(a1 + 648) = 0u;
      if (*(v103 + 8))
      {
        v105 = *(v103 + 8);
      }

      else
      {
        v105 = v103;
      }

      if (v105)
      {
        v106 = sub_1658B4(v105);
        if (v100 == v101)
        {
          v108 = v105;
        }

        else
        {
          v107 = v100;
          do
          {
            v108 = v106;
            v109 = *(v107 + 28);
            *(v105 + 28) = v109;
            *(v105 + 36) = *(v107 + 36);
            v110 = *v104;
            v111 = (a1 + 648);
            v112 = (a1 + 648);
            if (*v104)
            {
              do
              {
                while (1)
                {
                  v111 = v110;
                  if (v109 >= *(v110 + 7))
                  {
                    break;
                  }

                  v110 = *v110;
                  v112 = v111;
                  if (!*v111)
                  {
                    goto LABEL_182;
                  }
                }

                v110 = v110[1];
              }

              while (v110);
              v112 = v111 + 1;
            }

LABEL_182:
            sub_46B44((a1 + 640), v111, v112, v105);
            if (v106)
            {
              v106 = sub_1658B4(v106);
            }

            else
            {
              v106 = 0;
            }

            v113 = v107[1];
            if (v113)
            {
              do
              {
                v100 = v113;
                v113 = *v113;
              }

              while (v113);
            }

            else
            {
              do
              {
                v100 = v107[2];
                v114 = *v100 == v107;
                v107 = v100;
              }

              while (!v114);
            }

            if (!v108)
            {
              break;
            }

            v105 = v108;
            v107 = v100;
          }

          while (v100 != v101);
        }

        sub_477A0(v108);
        if (v106)
        {
          v116 = v106[2];
          for (i = v102; v116; v116 = v116[2])
          {
            v106 = v116;
          }

          sub_477A0(v106);
          goto LABEL_201;
        }
      }

      else
      {
        sub_477A0(0);
      }

      i = v102;
    }

LABEL_201:
    if (v100 != v101)
    {
      operator new();
    }

    *(a1 + 664) = *(a1 + 616);
    goto LABEL_204;
  }

  v115 = *(a1 + 496);
  sub_16040C(buf, 0);
  *(a1 + 632) = *buf;
  v117 = a1 + 648;
  sub_477A0(*(a1 + 648));
  v118 = *&buf[16];
  *(a1 + 640) = *&buf[8];
  *(a1 + 648) = v118;
  v119 = *&buf[24];
  *(a1 + 656) = *&buf[24];
  if (v119)
  {
    v118[2] = v117;
    *&buf[8] = &buf[16];
    *&buf[16] = 0;
    *&buf[24] = 0;
    v118 = 0;
  }

  else
  {
    *(a1 + 640) = v117;
  }

  *(a1 + 664) = *&buf[32];
  sub_477A0(v118);
  v120 = sub_5544(19);
  v121 = *v120;
  if (*v120 && os_log_type_enabled(*v120, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 656))
    {
      v122 = *(*(a1 + 640) + 36);
    }

    else
    {
      v122 = 0.0;
    }

    v123 = sub_59224(a1 + 632);
    v124 = *(a1 + 668);
    *buf = 136316162;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1113;
    *&buf[18] = 2048;
    *&buf[20] = v122;
    *&buf[28] = 2048;
    *&buf[30] = *&v123;
    *&buf[38] = 1024;
    *&buf[40] = v124;
    _os_log_impl(&dword_0, v121, OS_LOG_TYPE_DEFAULT, "%25s:%-5d External volume handler set but device does not support volume curve property. Using fallback curve with dB range {%f, %f} and transfer function %u.", buf, 0x2Cu);
  }

LABEL_204:
  if (i)
  {
    sub_1A8C0(i);
  }
}

void sub_15B15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v20)
  {
    sub_1A8C0(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15B2A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 152))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_15B308(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 160))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

void sub_15B370(void *a1)
{
  if (a1)
  {
    sub_15B370(*a1);
    sub_15B370(a1[1]);
    sub_141740(a1 + 5);

    operator delete(a1);
  }
}

void sub_15B4E0(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 96));
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_15B510(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      sub_15B570(result);
      result = v4;
    }
  }

  return result;
}