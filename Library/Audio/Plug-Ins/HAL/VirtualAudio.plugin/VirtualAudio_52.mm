void sub_469B1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_469B50(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = (*(*a1)[1] + (v3 >> 1));
  if (v3)
  {
    return (*(*v4 + v2))();
  }

  else
  {
    return v2(v4);
  }
}

void sub_469B80(void *a1)
{
  v2 = sub_8703C();
  v3 = (*(*v2 + 128))(v2);

  sub_467428(a1, v3);
}

uint64_t *sub_469BE4(uint64_t a1)
{
  v2 = sub_17D104();
  sub_4E5470(v2, a1 + 80);
  v3 = sub_8703C();
  (*(*v3 + 144))(v3, sub_466EB8);
  sub_477A0(*(a1 + 112));
  sub_477A0(*(a1 + 88));
  sub_65310((a1 + 56));
  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return sub_4697E4((a1 + 32), 0);
}

void sub_469C88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D8B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_469CFC(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = *a2;
      sub_1A8C0(v4);
      if (v5)
      {

        sub_849B8();
      }
    }
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "HapticDebugManager.cpp";
    v11 = 1024;
    v12 = 171;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v9, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_469E54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a2 + 8) = 257;
  v4 = sub_441880(*(a1 + 192), *(a1 + 200));
  v9 = vdup_n_s32(0x6F757470u).u32[0];
  v12 = 0x6F75747053526463;
  v13 = 1;
  if ((*(*v4 + 16))(v4, &v12))
  {
    value = 1397908579;
    *value_4 = v9 | 0x100000000;
    v6 = sub_59410(v4);
    if (!v6)
    {
      if (v5)
      {
        sub_1D7C28(1uLL);
      }

      v6 = 0;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v6;
  }

  v7 = sub_441880(*(a1 + 192), *(a1 + 200));
  sub_3E76D4(&value, v7);
  if (sub_3E7DD8(*&value_4[4]) && *(a2 + 9) == 1 && *&value_4[4] && *a2)
  {
    CFDictionarySetValue(*a2, @"speaker calibration", *&value_4[4]);
  }

  sub_8AAAC(&value);
}

void sub_46A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A0804(va);
  if (v5)
  {
    operator delete(v5);
  }

  sub_A1D30(a3);
  _Unwind_Resume(a1);
}

uint64_t sub_46A1A0(uint64_t a1)
{
  v2 = sub_441880(*(a1 + 192), *(a1 + 200));
  v6 = 0x6F75747053526463;
  v7 = 1;
  if ((*(*v2 + 16))(v2, &v6))
  {
    return 1;
  }

  v3 = sub_441880(*(a1 + 192), *(a1 + 200));
  if ((*(*v3 + 16))(v3, &qword_6FC560))
  {
    return 1;
  }

  v5 = *(*v3 + 16);

  return v5(v3, &qword_6FC540);
}

void sub_46A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      LODWORD(v31) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      LODWORD(v31) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 561211770;
  }

  if (!a6)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v30 = *a2;
      LODWORD(v31) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 561211770;
  }

  if (*a2 == 1986814563)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v28 = sub_5544(14);
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        v30 = *a2;
        LODWORD(v31) = *(a2 + 8);
        sub_22CE0(&__p);
      }

      v29 = __cxa_allocate_exception(0x10uLL);
      *v29 = &off_6DDDD0;
      v29[2] = 561211770;
    }

    sub_5B898(a1 + 592, *a6);
    LODWORD(__p) = __exp10f(v15 / 20.0);
    v16 = sub_441880(*(a1 + 192), *(a1 + 200));
    strcpy(buf, "#sVCptuo");
    buf[9] = 0;
    *&buf[10] = 0;
    v17 = sub_147610(v16);
    if (v17)
    {
      v18 = v17;
      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = v18;
    }
  }

  else if (*a2 == 1986164323)
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_2830E4(&__p, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 2);
    v13 = __p;
    if (v34 - __p == 68)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v14 = vcvtq_f64_f32(*__p);
      sub_1E6364(1uLL);
    }

    v20 = sub_5544(24);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_DiscreteSpeaker_Aspen.cpp";
      v37 = 1024;
      v38 = 210;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Port_DiscreteSpeaker_Aspen::SetPropertyData() - invalid boot chime volume curve size.", buf, 0x12u);
    }

    if (v13)
    {
      v34 = v13;
      operator delete(v13);
    }
  }

  else
  {

    sub_24DB50(a1, a2, a3, a4, v12, a6);
  }
}

void sub_46AB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_46ABC8(uint64_t a1)
{
  *a1 = off_6D8B50;
  sub_477A0(*(a1 + 608));
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_46AC34(uint64_t a1)
{
  *a1 = off_6D8B50;
  sub_477A0(*(a1 + 608));

  return sub_24EBDC(a1);
}

uint64_t sub_46AC8C()
{
  if ((atomic_load_explicit(&qword_7002E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7002E0))
  {
    qword_7002D8 = sub_46AF50();
    __cxa_guard_release(&qword_7002E0);
  }

  v0 = qword_7002D8;
  if (*(qword_7002D8 + 32) || *(qword_7002D8 + 8) == *(qword_7002D8 + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "DeviceSettingsFactory.cpp";
      v13 = 1024;
      v14 = 272;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d The default sub-port for built-in microphone has not been specified", &v11, 0x12u);
    }

    v1 = 0;
  }

  if (!v0[8] && v0[5] != v0[6])
  {
    v4 = sub_5544(21);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "DeviceSettingsFactory.cpp";
      v13 = 1024;
      v14 = 278;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d The default sub-port for built-in microphone in VP chat use cases has not been specified", &v11, 0x12u);
    }

    v1 = 0;
  }

  if (v0[5] != v0[6] && v0[1] == v0[2])
  {
    v9 = sub_5544(21);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "DeviceSettingsFactory.cpp";
      v13 = 1024;
      v14 = 284;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Built-in mic sub-port for non-VP chat modes have not been specified", &v11, 0x12u);
    }
  }

  else if (v1)
  {
    return qword_7002D8;
  }

  v6 = sub_5544(21);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "DeviceSettings_Aspen.cpp";
    v13 = 1024;
    v14 = 341;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invariant failure for Transducer Database", &v11, 0x12u);
  }

  return qword_7002D8;
}

void *sub_46AF50()
{
  v0 = sub_DD858();
  if (v0 <= 195)
  {
    switch(v0)
    {
      case 9:
      case 10:
      case 17:
      case 18:
      case 31:
      case 36:
      case 37:
      case 38:
      case 39:
        goto LABEL_3;
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
        goto LABEL_32;
      case 19:
      case 20:
      case 29:
      case 30:
      case 40:
      case 41:
      case 42:
      case 43:
      case 45:
        goto LABEL_11;
      case 26:
        sub_1E2FE0();
        return &unk_6E5790;
      case 27:
      case 28:
      case 32:
      case 33:
      case 34:
      case 35:
      case 46:
        v1 = 1;
        goto LABEL_15;
      case 73:
      case 74:
      case 75:
      case 77:
      case 78:
      case 80:
      case 81:
      case 83:
      case 84:
      case 85:
      case 86:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 98:
      case 99:
      case 102:
      case 103:
        goto LABEL_7;
      case 87:
      case 88:
      case 96:
      case 97:
      case 100:
      case 101:
      case 104:
      case 105:
        v4 = 5;
        goto LABEL_17;
      case 106:
      case 107:
        goto LABEL_16;
      default:
        if (v0 == 180)
        {
LABEL_3:
          v1 = 0;
LABEL_15:
          sub_1F424C(v1);
          result = &unk_6E6068;
        }

        else
        {
          if (v0 != 195)
          {
            goto LABEL_32;
          }

          sub_46B870();
          result = &unk_7003F0;
        }

        break;
    }

    return result;
  }

  if (v0 <= 8009)
  {
    if ((v0 - 2025) <= 6)
    {
      if (((1 << (v0 + 23)) & 0x67) != 0)
      {
LABEL_7:
        if ((atomic_load_explicit(&qword_6F5BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5BE0))
        {
          sub_3B5CD8();
          __cxa_guard_release(&qword_6F5BE0);
        }

        return &unk_6F5B20;
      }

      else
      {
LABEL_16:
        v4 = 4;
LABEL_17:
        sub_3D4304(v4);
        return &unk_6FBEF0;
      }
    }

    if (v0 == 196)
    {
      sub_46C1C4();
      return &unk_7005B8;
    }

LABEL_32:
    v7 = sub_5544(21);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "DeviceSettings_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 176;
        *&buf[18] = 1024;
        *&buf[20] = sub_DD858();
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown product type %u, returning Unknown Transducer Database", buf, 0x18u);
      }
    }

    sub_46CFD8();
    return &unk_7002E8;
  }

  if ((v0 - 8010) <= 0xE)
  {
    v3 = 1 << (v0 - 74);
    if ((v3 & 0x6001) != 0)
    {
LABEL_11:
      if ((atomic_load_explicit(&qword_700908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_700908))
      {
        sub_4D6944(0);
      }

      return &unk_700848;
    }

    if ((v3 & 0x1800) != 0)
    {
      if ((atomic_load_explicit(&qword_700908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_700908))
      {
        sub_4D6944(1);
      }

      return &unk_700848;
    }
  }

  if ((v0 - 12002) >= 2)
  {
    goto LABEL_32;
  }

  if ((atomic_load_explicit(&qword_709DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709DB0))
  {
    *buf = xmmword_517470;
    sub_1E54B0(v23, buf, 4);
    sub_1F68D0(&unk_709CF0, v23);
    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }

    __cxa_guard_release(&qword_709DB0);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_46980(&v20, qword_709D50, qword_709D58[0], (qword_709D58[0] - qword_709D50) >> 2);
  __src = 0;
  v18 = 0;
  v19 = 0;
  sub_46980(&__src, qword_709928, qword_709930, (qword_709930 - qword_709928) >> 2);
  v5 = v18;
  if (v18 >= v19)
  {
    v9 = __src;
    v10 = v18 - __src;
    v11 = (v18 - __src) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_189A00();
    }

    v13 = v19 - __src;
    if ((v19 - __src) >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1D7C28(v14);
    }

    *(4 * v11) = 1918990112;
    v6 = 4 * v11 + 4;
    memcpy(0, v9, v10);
    v15 = __src;
    __src = 0;
    v18 = v6;
    v19 = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v18 = 1918990112;
    v6 = (v5 + 4);
  }

  v18 = v6;
  v16[0] = &v20;
  v16[1] = &__src;
  if ((atomic_load_explicit(&qword_709DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709DF0))
  {
    LODWORD(v28) = 1718514737;
    LODWORD(v24) = 1869442665;
    sub_4D8544(&__p, &v24, 1);
    sub_4D85E0(buf, v16, &v28, &__p);
    sub_1E5774(&unk_709DB8, 1835216945, 1835230834, 0, 1970303090, 1718775412, buf);
    v25 = buf;
    sub_1E5808(&v25);
    sub_4E0BC(&__p);
    __cxa_guard_release(&qword_709DF0);
  }

  v25 = 0x726D76637670766FLL;
  v31 = 0;
  v32 = 0;
  __p = 0;
  sub_4625C(&__p, &v25, &v26, 2uLL);
  sub_1E5534(buf, 1634495520, &v20, 1852796517, -1, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  if ((atomic_load_explicit(&qword_709E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709E30))
  {
    sub_1E560C(&__p, buf);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_1E56A8(&v25, &__p, buf, 1uLL);
  }

  __p = &unk_709DB8;
  v31 = &unk_709DF8;
  sub_4D8880(qword_709CF8, &__p, &v32, 2uLL);
  qword_709D10 = &unk_709DB8;
  v28 = 0x726D76637670766FLL;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_4625C(&v25, &v28, v29, 2uLL);
  sub_1E5534(&__p, 1634495520, &v20, 1852796517, -1, &v25);
  if (v25)
  {
    operator delete(v25);
  }

  if ((atomic_load_explicit(&qword_709E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709E70))
  {
    sub_1E560C(&v25, &__p);
    v28 = 0;
    v29[0] = 0;
    v29[1] = 0;
    sub_1E56A8(&v28, &v25, &v28, 1uLL);
  }

  v25 = &unk_709E38;
  sub_4D8880(qword_709D18, &v25, &v26, 1uLL);
  qword_709D30 = &unk_709E38;
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (*&buf[8])
  {
    *&buf[16] = *&buf[8];
    operator delete(*&buf[8]);
  }

  if (__src)
  {
    v18 = __src;
    operator delete(__src);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return &unk_709CF0;
}

void sub_46B6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  sub_1E5808(&a21);
  sub_1E588C(&a22);
  __cxa_guard_abort(&qword_709E70);
  sub_1E588C(&a33);
  sub_1E588C((v33 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_46B870()
{
  if ((atomic_load_explicit(&qword_7004B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7004B0))
  {
    *v37 = 0x736D6963696D6963;
    sub_1E54B0(v36, v37, 2);
    sub_1F68D0(&unk_7003F0, v36);
    if (v36[0])
    {
      v36[1] = v36[0];
      operator delete(v36[0]);
    }

    __cxa_guard_release(&qword_7004B0);
  }

  *v37 = 0x66666D6966736D69;
  sub_1E54B0(v35, v37, 2);
  qmemcpy(v37, "ivpvovpvcgpvcvmrgcrvgsmv", sizeof(v37));
  memset(v34, 0, sizeof(v34));
  sub_4625C(v34, v37, &v38, 6uLL);
  qmemcpy(v37, " wargcrvgsmv", 12);
  memset(v33, 0, sizeof(v33));
  sub_4625C(v33, v37, &v37[12], 3uLL);
  v23 = 1768778083;
  sub_1E54B0(v37, &v23, 1);
  sub_1E5534(v28, 1651797297, v37, 1869442665, -1, v34);
  if (*v37)
  {
    *&v37[8] = *v37;
    operator delete(*v37);
  }

  v18 = 1936550243;
  sub_1E54B0(v37, &v18, 1);
  sub_1E5534(&v23, 1953460273, v37, 1869442665, -1, v34);
  if (*v37)
  {
    *&v37[8] = *v37;
    operator delete(*v37);
  }

  v13 = 1718446435;
  sub_1E54B0(v37, &v13, 1);
  sub_1E5534(&v18, 1718514737, v37, 1869442665, -1, v34);
  if (*v37)
  {
    *&v37[8] = *v37;
    operator delete(*v37);
  }

  sub_1E5534(&v13, 1650811245, v35, 1935827812, 1, v33);
  sub_1E5534(v8, 1650811245, v35, 1668441188, 0, v33);
  sub_1E5534(v3, 1634495520, qword_700450, 1852796517, -1, v34);
  if ((atomic_load_explicit(&qword_7004F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7004F0))
  {
    sub_1E560C(v37, v28);
    sub_1E560C(v39, &v13);
    v0 = 0;
    v1 = 0;
    v2 = 0;
    sub_1E56A8(&v0, v37, &v40, 2uLL);
  }

  if ((atomic_load_explicit(&qword_700530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_700530))
  {
    sub_1E560C(v37, &v23);
    v0 = 0;
    v1 = 0;
    v2 = 0;
    sub_1E56A8(&v0, v37, v39, 1uLL);
  }

  if ((atomic_load_explicit(&qword_700570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_700570))
  {
    sub_1E560C(v37, &v18);
    sub_1E560C(v39, v8);
    v0 = 0;
    v1 = 0;
    v2 = 0;
    sub_1E56A8(&v0, v37, &v40, 2uLL);
  }

  if ((atomic_load_explicit(&qword_7005B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7005B0))
  {
    sub_1E560C(v37, v3);
    v0 = 0;
    v1 = 0;
    v2 = 0;
    sub_1E56A8(&v0, v37, v39, 1uLL);
  }

  *v37 = &unk_7004B8;
  sub_1E5A9C(&qword_7003F8, v37);
  *v37 = &unk_7004F8;
  sub_1E5A9C(&qword_7003F8, v37);
  *v37 = &unk_700538;
  sub_1E5A9C(&qword_7003F8, v37);
  *v37 = &unk_700578;
  sub_1E5A9C(&qword_7003F8, v37);
  qword_700410 = &unk_7004B8;
  sub_1C5454(qword_700418, qword_7003F8, unk_700400, (unk_700400 - qword_7003F8) >> 3);
  qword_700430 = qword_700410;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v33[0])
  {
    operator delete(v33[0]);
  }

  if (v34[0])
  {
    operator delete(v34[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }
}

void sub_46BF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
{
  *(v61 - 184) = v60;
  sub_1E5808((v61 - 184));
  sub_1E588C((v61 - 176));
  __cxa_guard_abort(&qword_7005B0);
  sub_1E588C(&a12);
  sub_1E588C(&a20);
  sub_1E588C(&a28);
  sub_1E588C(&a36);
  sub_1E588C(&a44);
  sub_1E588C(&a52);
  if (__p)
  {
    operator delete(__p);
  }

  v63 = *(v61 - 256);
  if (v63)
  {
    operator delete(v63);
  }

  v64 = *(v61 - 232);
  if (v64)
  {
    *(v61 - 224) = v64;
    operator delete(v64);
  }

  _Unwind_Resume(a1);
}

void sub_46C14C()
{
  v1 = *(v0 - 176);
  if (v1)
  {
    *(v0 - 168) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x46C0F4);
}

void sub_46C16C()
{
  v1 = *(v0 - 176);
  if (v1)
  {
    *(v0 - 168) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x46C0FCLL);
}

void sub_46C18C()
{
  v1 = *(v0 - 176);
  if (v1)
  {
    *(v0 - 168) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x46C104);
}

void sub_46C1C4()
{
  if ((atomic_load_explicit(&qword_700678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_700678))
  {
    __p[0] = 0x696D6963736D6963;
    sub_1E54B0(v4, __p, 2);
    sub_1F68D0(&unk_7005B8, v4);
    if (v4[0])
    {
      v4[1] = v4[0];
      operator delete(v4[0]);
    }

    __cxa_guard_release(&qword_700678);
  }

  if (qword_7005C0 == unk_7005C8)
  {
    qmemcpy(__p, "ivpvovpvcgpvcvmrgcrvgsmv", sizeof(__p));
    memset(v3, 0, sizeof(v3));
    sub_4625C(v3, __p, v6, 6uLL);
    qmemcpy(__p, " wargcrvgsmv", 12);
    memset(v2, 0, sizeof(v2));
    sub_4625C(v2, __p, &__p[1] + 4, 3uLL);
    LODWORD(v20) = 1768778083;
    sub_1E54B0(__p, &v20, 1);
    sub_1E5534(&v1, 1953460273, __p, 1869442665, -1, v3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    LODWORD(v14) = 1936550243;
    sub_1E54B0(__p, &v14, 1);
    sub_1E5534(&v20, 1650551601, __p, 1869442665, -1, v3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_1E5534(&v14, 1650811245, qword_700618, 1935827812, 1, v2);
    sub_1E5534(&v13, 1650811245, qword_700618, 1668441188, 0, v2);
    v11 = 0x766D736776726367;
    memset(__p, 0, sizeof(__p));
    sub_4625C(__p, &v11, v12, 2uLL);
    sub_1E5534(&v0, 1634495520, qword_700618, 1852796517, -1, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    LODWORD(__p[0]) = v20;
    __p[2] = 0;
    v6[0] = 0;
    __p[1] = 0;
    sub_46980(&__p[1], v21, v22, (v22 - v21) >> 2);
    v6[1] = v23;
    memset(v7, 0, sizeof(v7));
    sub_46980(v7, v24, v25, (v25 - v24) >> 2);
    v8 = v14;
    memset(v9, 0, 24);
    sub_46980(v9, v15, v16, (v16 - v15) >> 2);
    v9[3] = v17;
    memset(v10, 0, sizeof(v10));
    sub_46980(v10, v18, v19, (v19 - v18) >> 2);
    v11 = 0;
    v12[0] = 0;
    v12[1] = 0;
    sub_1E56A8(&v11, __p, &v11, 2uLL);
  }
}

void sub_46CC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_1E5808(&a13);
  sub_1E588C((v55 - 184));
  __cxa_guard_abort(&qword_700838);
  sub_1E588C((v55 - 120));
  sub_1E588C(&a21);
  sub_1E588C(&a39);
  _Unwind_Resume(a1);
}

void sub_46CF5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x46CF1CLL);
}

void sub_46CF88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x46CF34);
}

void sub_46CFA8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x46CF3CLL);
}

void sub_46CFD8()
{
  if ((atomic_load_explicit(&qword_7003A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7003A8))
  {
    v3 = 1768778083;
    sub_1E54B0(v8, &v3, 1);
    sub_1F68D0(&unk_7002E8, v8);
    if (v8[0])
    {
      v8[1] = v8[0];
      operator delete(v8[0]);
    }

    __cxa_guard_release(&qword_7003A8);
  }

  if (qword_7002F0 == unk_7002F8)
  {
    LODWORD(v9) = 1768778083;
    sub_1E54B0(v10, &v9, 1);
    v0 = 0;
    v1 = 0;
    v2 = 0;
    sub_1E5534(&v3, 1768778083, v10, 1869442665, -1, &v0);
    if (v10[0])
    {
      v10[1] = v10[0];
      operator delete(v10[0]);
    }

    if ((atomic_load_explicit(&qword_7003E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7003E8))
    {
      sub_1E560C(v10, &v3);
      v0 = 0;
      v1 = 0;
      v2 = 0;
      sub_1E56A8(&v0, v10, &v11, 1uLL);
    }

    v10[0] = &unk_7003B0;
    sub_1E5A9C(&qword_7002F0, v10);
    qword_700308 = &unk_7003B0;
    sub_1C5454(qword_700310, qword_7002F0, unk_7002F8, (unk_7002F8 - qword_7002F0) >> 3);
    qword_700328 = qword_700308;
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    if (v4)
    {
      v5 = v4;
      operator delete(v4);
    }
  }
}

void sub_46D210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  *(v22 - 96) = v21;
  sub_1E5808((v22 - 96));
  sub_1E588C((v22 - 88));
  __cxa_guard_abort(&qword_7003E8);
  sub_1E588C(&a12);
  _Unwind_Resume(a1);
}

void sub_46D2AC(void *a1, void *a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  for (i = a2[1]; i != a2; i = i[1])
  {
    v6 = i[3];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = i[2];
        if (v9)
        {
          v10 = sub_46398(v9, a3);
          sub_1A8C0(v8);
          if (v10)
          {
            sub_14220C();
          }
        }

        else
        {
          sub_1A8C0(v8);
        }
      }
    }
  }
}

char *sub_46D388(unsigned int a1)
{
  v2 = sub_20A884(a1);
  v3 = sub_20A8FC(v2);
  v4 = malloc_type_malloc(v3, 0xAE2D78DCuLL);
  v5 = v4;
  if (v3 && !v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v4, v3);
  if (v5)
  {
    *v5 = 0;
    *(v5 + 2) = a1;
    if (a1)
    {
      v6 = a1;
      v7 = v5 + 16;
      do
      {
        *(v7 - 1) = -1;
        *v7 = 0;
        v7[1] = 0;
        v7 = (v7 + 20);
        --v6;
      }

      while (v6);
    }
  }

  return v5;
}

void sub_46D444(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v17 = *(a1 + 32);
  if (v17 == v3)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
      v24 = 1024;
      v25 = 258;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = 0;
    v6 = (*(*v5 + 232))(v5, 1, &v21);
    if (v6)
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
        v24 = 1024;
        v25 = 265;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unexpected error from GetBusCount", buf, 0x12u);
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      *v13 = &off_6DDDD0;
      v13[2] = v6;
    }

    for (i = *(a2 + 40); i < v21; ++i)
    {
      v8 = (*(*v5 + 136))(v5, 1, i);
      v9 = *(v8 + 16);
      v19[0] = *v8;
      v19[1] = v9;
      v20 = *(v8 + 32);
      sub_902B0(a2, v19);
      v10 = sub_5544(25);
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_618A4(&v18);
        }
      }
    }

    if (v4)
    {
      sub_1A8C0(v4);
    }

    v3 += 24;
  }

  while (v3 != v17);
}

void sub_46D888(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5, unsigned int a6, uint64_t *a7)
{
  if (*(a1 + 448) == 1)
  {
    v8 = sub_5544(25);
    if (*(v8 + 8))
    {
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v10 = *a5;
          v11 = *a7;
          *buf = 136316418;
          *&buf[4] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 169;
          v44 = 1024;
          v45 = a4;
          v46 = 1024;
          v47 = a6;
          v48 = 2048;
          v49 = v10;
          v50 = 2048;
          v51 = v11;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d CLSPchain NumInBufList=%u, NumOutBufferList=%d, inBL[0]=%p, outBL[0]=%p", buf, 0x32u);
        }
      }
    }

    *&buf[2] = *(a1 + 682);
    *buf = *(a1 + 682);
    WORD1(v42) = *(a1 + 682) == 0;
    LOWORD(v42) = *(a1 + 682);
    v12 = *buf;
    atomic_compare_exchange_strong((a1 + 680), &v12, v42);
    if (*(a1 + 682))
    {
      v13 = 400;
    }

    else
    {
      v13 = 424;
    }

    v14 = *(a1 + 1256);
    if (v14 && sub_3E7F7C(*(a1 + 1256)) && !*(v14 + 532) && a6 != 0)
    {
      v29 = a6;
      v30 = a7;
      do
      {
        v31 = *v30;
        if (!*v30)
        {
          break;
        }

        if (*v31 != 2)
        {
          v34 = sub_5544(14);
          v35 = *v34;
          if (*v34)
          {
            if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 189;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: stereo speaker buffer list does not have 2 buffers", buf, 0x12u);
            }
          }
        }

        v32 = *(v31 + 32);
        v33 = *(v31 + 16);
        *buf = 1056964608;
        vDSP_vasm(v32, 1, v33, 1, buf, v33, 1, a3);
        vDSP_vclr(v32, 1, a3);
        ++v30;
        --v29;
      }

      while (v29);
    }

    v16 = (a1 + v13);
    v17 = *(a1 + v13 + 8) - *(a1 + v13);
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
      v20 = v19 - 1;
      if (v19 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v19;
      }

      v22 = 16;
      v23 = 8;
      do
      {
        v24 = a5;
        if (v18)
        {
          v24 = (*(a1 + 984) + v22 - 16);
        }

        v25 = a7;
        if (v20 != v18)
        {
          v25 = (*(a1 + 984) + v22);
        }

        v26 = *v16;
        v27 = *v24;
        v42 = *v25;
        if ((*(**(v26 + v23) + 224))(*(v26 + v23)))
        {
          *buf = v27;
          *&buf[8] = 0;
          if (((a4 > 1) & sub_46DC8C(*(v26 + v23))) == 1)
          {
            *&buf[8] = a5[1];
            v28 = a4;
          }

          else
          {
            v28 = 1;
          }

          (*(**(v26 + v23) + 120))(*(v26 + v23), a2, a3, v28, buf, a6, &v42);
        }

        else if (v42)
        {
          (*(**(v26 + v23) + 112))(*(v26 + v23), a2, a3);
        }

        ++v18;
        v22 += 32;
        v23 += 24;
      }

      while (v21 != v18);
    }
  }
}

BOOL sub_46DC8C(uint64_t a1)
{
  v2 = (*(*a1 + 160))(a1);
  if (v2 != 1936748595 && v2 != 1685287015)
  {
    return 0;
  }

  v7 = 0;
  if ((*(*a1 + 232))(a1, 1, &v7))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      result = os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136315394;
      v9 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
      v10 = 1024;
      v11 = 49;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
    }

    return 0;
  }

  return v7 > 1;
}

uint64_t sub_46DDD8(uint64_t *a1, uint64_t a2, __int128 **a3, uint64_t a4, double a5)
{
  v6 = sub_63954(a1, a2, a3, a4, a5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_5544(25);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v7);
      if (v29 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315650;
      v33[0] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
      v33[1] = 0x820000000720400;
      v33[2] = p_p;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d DSPChain::SetChainFormat failed with %s", buf, 0x1Cu);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v11 = a1[157];
    if (v11)
    {
      if (sub_3E7F7C(a1[157]))
      {
        if ((*(*a1 + 144))(a1, 1936748595))
        {
          v12 = (a1 + 6);
          sub_47BD8((a1 + 6));
          v13 = (*(*v11 + 120))(v11);
          inAddress.mElement = 0;
          v31 = v13;
          *&inAddress.mSelector = 0x696E707473737263;
          sub_127F10(buf, &v31, &inAddress, 0, 0);
          v14 = *buf;
          if (*buf || (v34 & 1) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            *exception = &off_6DDDD0;
            exception[2] = v14;
          }

          __p = 0;
          v28 = 0;
          v29 = 0;
          v15 = *(v33 + 4);
          sub_46980(&__p, *(v33 + 4), *(&v33[1] + 4), (*(&v33[1] + 4) - *(v33 + 4)) >> 2);
          if (v15)
          {
            operator delete(v15);
          }

          v16 = __p;
          if ((*(*a1 + 128))(a1, 1936748595, 64005, __p, (v28 - __p) & 0xFFFFFFFC, 0, 0, 0))
          {
            v17 = sub_5544(25);
            v18 = *v17;
            if (*v17)
            {
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v33[0] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
                LOWORD(v33[1]) = 1024;
                *(&v33[1] + 2) = 144;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d There was an error setting the input data sources on Speaker Protection V3", buf, 0x12u);
              }
            }
          }

          *&inAddress.mSelector = 0;
          if (!v11[133])
          {
            inAddress.mScope = 1;
          }

          v7 = (*(*a1 + 128))(a1, 1936748595, 64006, &inAddress, 8, 0, 0, 0);
          if (v7)
          {
            v19 = sub_5544(25);
            v20 = *v19;
            if (*v19)
            {
              if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v33[0] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
                v33[1] = 0x4000000009A0400;
                LODWORD(v33[2]) = v7;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not set property to ignore speaker channel telemetry, error:%d", buf, 0x18u);
              }
            }
          }

          if (v16)
          {
            operator delete(v16);
          }

          sub_47C90(v12);
        }

        else
        {
          v24 = sub_5544(25);
          v25 = *v24;
          v7 = 2003332927;
          if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v33[0] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
            LOWORD(v33[1]) = 1024;
            *(&v33[1] + 2) = 132;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to find the Speaker Protection Processor.", buf, 0x12u);
            return 2003332927;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v7 = 2003329396;
      v21 = sub_5544(25);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33[0] = "DSPChain_ClosedLoopSpeakerProtection.cpp";
        LOWORD(v33[1]) = 1024;
        *(&v33[1] + 2) = 123;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to find the speaker device to configure input sources for speaker protection", buf, 0x12u);
      }
    }
  }

  return v7;
}

void sub_46E2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
    operator delete(v21);
  }

  sub_216C10(&a10);
  _Unwind_Resume(a1);
}

void sub_46E344(unint64_t a1)
{
  sub_46E37C(a1);

  operator delete();
}

unint64_t sub_46E37C(unint64_t a1)
{
  *a1 = off_6D8D78;
  v2 = sub_17D104();
  sub_4E5470(v2, a1 + 1192);
  sub_477A0(*(a1 + 1224));
  sub_477A0(*(a1 + 1200));

  return sub_13ABB0(a1);
}

void sub_46E3F0(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = sub_5544(25);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    sub_4E5634(&__p, a3);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v31 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
    v32 = 1024;
    v33 = 76;
    v34 = 2080;
    v35 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Speaker device state has changed to '%s'", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(a2 + 8);
  v11 = a2 + 8;
  v10 = v12;
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = v11;
  do
  {
    v14 = *(v10 + 28);
    v15 = v14 >= 0x7073706B;
    v16 = v14 < 0x7073706B;
    if (v15)
    {
      v13 = v10;
    }

    v10 = *(v10 + 8 * v16);
  }

  while (v10);
  if (v13 == v11 || (*(v13 + 28) < 0x7073706Cu ? (v17 = a3 == 0) : (v17 = 0), !v17))
  {
LABEL_34:
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25)
    {
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
        v32 = 1024;
        v33 = 79;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Listener updated but speaker channel configuration was not changed!", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Listener updated but speaker channel configuration was not changed!");
  }

  v18 = a4[157];
  if (v18 && sub_3E7F7C(a4[157]))
  {
    v28 = 0;
    if (!*(v18 + 532))
    {
      HIDWORD(v28) = 1;
    }

    if ((*(*a4 + 144))(a4, 1936748595))
    {
      v19 = (a4 + 6);
      __p.__r_.__value_.__r.__words[0] = (a4 + 6);
      __p.__r_.__value_.__s.__data_[8] = 1;
      sub_47BD8((a4 + 6));
      v20 = (*(*a4 + 128))(a4, 1936748595, 64006, &v28, 8, 0, 0, 0);
      if (v20)
      {
        v21 = sub_5544(25);
        v22 = *v21;
        if (*v21)
        {
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
            v32 = 1024;
            v33 = 104;
            v34 = 1024;
            LODWORD(v35) = v20;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not set property to ignore speaker channel telemetry, error:%d", buf, 0x18u);
          }
        }
      }

      sub_47C90(v19);
    }

    else
    {
      v23 = sub_5544(25);
      v24 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "DSPChain_ClosedLoopSpeakerProtection.cpp";
        v32 = 1024;
        v33 = 95;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to find the Speaker Protection Processor.", buf, 0x12u);
      }
    }
  }
}

void sub_46E7A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_216C10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_46E7E4(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886287212)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Null_Aspen.cpp";
      v14 = 1024;
      v15 = 87;
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
      v13 = "Device_Null_Aspen.cpp";
      v14 = 1024;
      v15 = 88;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_46EC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_46F114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_24EBDC(v29);
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_46F1BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D9050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_46F230(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void sub_46F26C(uint64_t a1, uint64_t a2)
{
  sub_9C878(v10, (*a2 + 16));
  if (v10[2])
  {
    if (!*(*a2 + 4) && **a2 == 1986291046)
    {
      sub_88A00(&v8, (v10[0] + 32), "", 66);
      (*(*v8 + 272))(buf);
      if (v9)
      {
        sub_1A8C0(v9);
      }

      operator new();
    }

    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "RoutingHandler_SplitterBroadcast_GenericConfig1.cpp";
      v13 = 1024;
      v14 = 64;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  else
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "RoutingHandler_SplitterBroadcast_GenericConfig1.cpp";
      v13 = 1024;
      v14 = 63;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_46F584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  sub_4B0F4(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_46F654(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 1885762592)
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "AggregateStream_Broadcast.cpp";
      v52 = 1024;
      v53 = 492;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v5 = sub_5544(23);
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_618A4(&v61);
  }

  v6 = *(a1 + 160);
  v41 = a1;
  if (v6 == a1 + 152)
  {
LABEL_16:
    if (*(a1 + 176))
    {
      v12 = *(a1 + 184);
      if (v12)
      {
        v13 = *(a1 + 192);
        v12(0, 1);
      }
    }

    v14 = (*(**(a1 + 200) + 120))(*(a1 + 200));
    *&v42.mSelector = 0x676C6F626E737274;
    v42.mElement = 0;
    v15 = sub_5544(14);
    if ((*(v15 + 8) & 1) != 0 && *v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      v60.__cv_.__sig = *&v42.mSelector;
      *v60.__cv_.__opaque = v42.mElement;
      sub_22CE0(&v61);
    }

    buf = v42;
    if (!AudioObjectHasProperty(v14, &buf))
    {
      v29 = sub_5544(14);
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        v60.__cv_.__sig = *&v42.mSelector;
        *v60.__cv_.__opaque = v42.mElement;
        sub_22CE0(&v61);
      }

LABEL_81:
      sub_F7240(a1);
      return 0;
    }

    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v61.__m_.__sig = 850045863;
    memset(v60.__cv_.__opaque, 0, sizeof(v60.__cv_.__opaque));
    v60.__cv_.__sig = 1018212795;
    v50 = 0;
    sub_745E8(__p, v14, &v42, &v60, &v61, &v50);
    LODWORD(v45) = v14;
    *(&v45 + 4) = v42;
    v46 = 0;
    v47 = 0;
    v16 = COERCE_DOUBLE(sub_470304(&v45));
    if (!v17 && *a2 == v16)
    {
      v34 = sub_5544(14);
      if (*(v34 + 8))
      {
        v35 = *v34;
        if (*v34)
        {
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
          {
            buf.mSelector = 136315650;
            *&buf.mScope = "HALPropertySynchronizer.h";
            v52 = 1024;
            v53 = 322;
            v54 = 1024;
            LODWORD(v55) = v14;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
          }
        }
      }

LABEL_80:
      sub_73C20(__p);
      std::condition_variable::~condition_variable(&v60);
      std::mutex::~mutex(&v61);
      a1 = v41;
      goto LABEL_81;
    }

    v18 = 2000;
LABEL_26:
    v19 = COERCE_DOUBLE(sub_470304(&v45));
    if (v20)
    {
      goto LABEL_80;
    }

    if (*a2 == v19)
    {
      v36 = sub_5544(14);
      if ((*(v36 + 8) & 1) != 0 && *v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
      {
        v43 = v42;
        sub_22CE0(v44);
      }

      goto LABEL_80;
    }

    if (v18 <= 0)
    {
      v37 = sub_5544(14);
      if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        v43 = v42;
        sub_22CE0(v44);
      }

      goto LABEL_80;
    }

    v21.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v22 = sub_5544(14);
    if (*(v22 + 8))
    {
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v52 = 1024;
          v53 = 354;
          v54 = 2080;
          v55 = "with timeout";
          v56 = 1024;
          LODWORD(v57) = v14;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(v44[0]) = sub_2E6B08();
    *&buf.mSelector = &v61;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v61);
    v24.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v50 & 1) != 0 || v24.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_50:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(v44);
        v18 += (std::chrono::system_clock::now().__d_.__rep_ - v21.__d_.__rep_) / -1000;
        goto LABEL_26;
      }

      v25.__d_.__rep_ = v24.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v25.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_49:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v24.__d_.__rep_)
      {
        goto LABEL_50;
      }
    }

    std::chrono::steady_clock::now();
    v26.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v26.__d_.__rep_)
    {
      v27 = 0;
      goto LABEL_47;
    }

    if (v26.__d_.__rep_ < 1)
    {
      if (v26.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v27 = 0x8000000000000000;
        goto LABEL_47;
      }
    }

    else if (v26.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_45;
    }

    v27 = 1000 * v26.__d_.__rep_;
LABEL_45:
    if (v27 > (v25.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v28.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_48:
      std::condition_variable::__do_timed_wait(&v60, &buf, v28);
      std::chrono::steady_clock::now();
      goto LABEL_49;
    }

LABEL_47:
    v28.__d_.__rep_ = v27 + v25.__d_.__rep_;
    goto LABEL_48;
  }

  while (1)
  {
    sub_5659C(&v45, (v6 + 16), "", 500);
    v7 = v45;
    v8 = (*(*v45 + 96))(v45, 1, 0);
    v9 = v8;
    if (v8)
    {
      break;
    }

LABEL_13:
    if (*(&v45 + 1))
    {
      sub_1A8C0(*(&v45 + 1));
    }

    v6 = *(v6 + 8);
    if (v6 == a1 + 152)
    {
      goto LABEL_16;
    }
  }

  memset(&v60, 0, 24);
  (*(*v8 + 112))(v8, &v60, 1885762657);
  memset(&v61, 0, 40);
  sub_3B86DC(&v61, v60.__cv_.__sig, *v60.__cv_.__opaque, a2);
  v10 = sub_5544(23);
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    (*(*v7 + 120))(v7);
    sub_618A4(__p);
  }

  v11 = (*(*v9 + 160))(v9, &v61, 1885762592);
  if (!v11)
  {
    if (v60.__cv_.__sig)
    {
      *v60.__cv_.__opaque = v60.__cv_.__sig;
      operator delete(v60.__cv_.__sig);
    }

    goto LABEL_13;
  }

  v30 = sub_5544(23);
  v31 = *v30;
  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
  {
    sub_22170(__p, v11);
    v32 = v49 >= 0 ? __p : __p[0];
    buf.mSelector = 136316162;
    *&buf.mScope = "AggregateStream_Broadcast.cpp";
    v52 = 1024;
    v53 = 518;
    v54 = 2048;
    v55 = v9;
    v56 = 2080;
    v57 = v32;
    v58 = 1024;
    LODWORD(v59) = v11;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d SetCurrentFormatSynchronously on stream at %p failed with status '%s' (%d).", &buf, 0x2Cu);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v60.__cv_.__sig)
  {
    *v60.__cv_.__opaque = v60.__cv_.__sig;
    operator delete(v60.__cv_.__sig);
  }

  if (*(&v45 + 1))
  {
    sub_1A8C0(*(&v45 + 1));
  }

  return 560226676;
}

void sub_470238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v17 - 240));
  std::mutex::~mutex((v17 - 192));
  _Unwind_Resume(a1);
}

uint64_t sub_470304(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  sub_1FE35C(&v10, a1, &buf, v2, *(a1 + 24));
  v3 = v10;
  if (v10)
  {
    v4 = sub_5544(14);
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v9, v3);
        v6 = *v1;
        v7 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v12)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void sub_4704B0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4704D0()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateStream_Broadcast.cpp";
      v5 = 1024;
      v6 = 540;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Setting virtual stream format is not allowed.  Only physical stream formats may be set.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Setting virtual stream format is not allowed.  Only physical stream formats may be set.");
}

uint64_t sub_4705B8(void *a1, uint64_t *a2, int a3)
{
  if (a3 != 1885762592)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateStream_Broadcast.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 434;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v4 = sub_5544(23);
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    sub_618A4(__p);
  }

  v5 = a1[20];
  if (v5 == a1 + 19)
  {
LABEL_18:
    if (a1[22])
    {
      v15 = a1[23];
      if (v15)
      {
        v16 = a1[24];
        v15(0, 1);
      }
    }

    return 0;
  }

  else
  {
    while (1)
    {
      sub_5659C(&v31, v5 + 2, "", 446);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v6 = v31;
      v7 = (*(*v31 + 96))(v31, 1, 0);
      (*(*v7 + 112))(v7, &v28, 1885762657);
      sub_3B86DC(buf, v28, v29, a2);
      *__p = *buf;
      v34 = *&buf[16];
      v35 = *&buf[32];
      v8 = sub_5544(23);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = (*(*v6 + 96))(v6, 1, 0);
        v11 = (*(*v6 + 120))(v6);
        *buf = 136316162;
        *&buf[4] = "AggregateStream_Broadcast.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 458;
        *&buf[18] = 2048;
        *&buf[20] = v10;
        *&buf[28] = 2048;
        *&buf[30] = v6;
        *&buf[38] = 1024;
        v37 = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Calling SetCurrentFormat on Stream %p of PhysicalDevice %p (ID %u):", buf, 0x2Cu);
      }

      v12 = sub_5544(23);
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        sub_618A4(v26);
      }

      v13 = (*(*v6 + 96))(v6, 1, 0);
      v14 = (*(*v13 + 144))(v13, __p, 1885762592);
      if (v14)
      {
        break;
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v32)
      {
        sub_1A8C0(v32);
      }

      v5 = v5[1];
      if (v5 == a1 + 19)
      {
        goto LABEL_18;
      }
    }

    v18 = sub_5544(23);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v20 = (*(*v6 + 96))(v6, 1, 0);
      sub_22170(v26, v14);
      v21 = v27 >= 0 ? v26 : v26[0];
      *buf = 136316162;
      *&buf[4] = "AggregateStream_Broadcast.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 468;
      *&buf[18] = 2048;
      *&buf[20] = v20;
      *&buf[28] = 2080;
      *&buf[30] = v21;
      *&buf[38] = 1024;
      v37 = v14;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d SetCurrentFormat on stream %p failed with status '%s' (%d).", buf, 0x2Cu);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v32)
    {
      sub_1A8C0(v32);
    }

    return 560226676;
  }
}

void sub_470BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_1A8C0(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_470C18()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "AggregateStream_Broadcast.cpp";
      v5 = 1024;
      v6 = 485;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Setting virtual stream format is not allowed.  Only physical stream formats may be set.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Setting virtual stream format is not allowed.  Only physical stream formats may be set.");
}

uint64_t sub_470D00(uint64_t a1, void *outData, AudioObjectPropertySelector a3)
{
  if (a3 != 1885762592 && a3 != 1936092532)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        inAddress.mSelector = 136315394;
        *&inAddress.mScope = "AggregateStream_Broadcast.cpp";
        v10 = 1024;
        v11 = 423;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", &inAddress, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  *&inAddress.mScope = 1735159650;
  ioDataSize = 40;
  inAddress.mSelector = a3;
  return AudioObjectGetPropertyData(*(a1 + 208), &inAddress, 0, 0, &ioDataSize, outData);
}

uint64_t sub_470E8C(uint64_t a1, void *a2, int a3)
{
  if (a3 == 1885762657)
  {
    v3 = (a1 + 104);
    if ((a1 + 104) != a2)
    {
      v4 = 112;
      goto LABEL_7;
    }
  }

  else
  {
    if (a3 != 1936092513)
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "AggregateStream_Broadcast.cpp";
        v11 = 1024;
        v12 = 399;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "specified inSelector is not valid");
    }

    v3 = (a1 + 128);
    if ((a1 + 128) != a2)
    {
      v4 = 136;
LABEL_7:
      sub_1773C4(a2, *v3, *(a1 + v4), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + v4) - *v3) >> 3));
    }
  }

  return 0;
}

uint64_t sub_471018(uint64_t a1, void *a2)
{
  if ((a1 + 128) != a2)
  {
    sub_1773C4(a2, *(a1 + 128), *(a1 + 136), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 136) - *(a1 + 128)) >> 3));
  }

  return 0;
}

std::string *sub_47107C@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v16, __str);
  v4 = std::string::insert(&v16, 0, "[ addr: ", 8uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v18 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v18 >= 0)
  {
    v7 = HIBYTE(v18);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x13uLL, "%p", *(a1 + 200));
  sub_53E8(&v16, __str);
  v8 = std::string::insert(&v16, 0, "; owning dev: ", 0xEuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v18 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v18 >= 0)
  {
    v11 = HIBYTE(v18);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; strms: { ", 0xBuLL);
  v12 = *(a1 + 88);
  if (v12 != a1 + 80)
  {
    while (1)
    {
      sub_23148(__p, (*(v12 + 16) + 8));
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = v18 >= 0 ? HIBYTE(v18) : __p[1];
      std::string::append(a2, v13, v14);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *(v12 + 8);
      if (v12 == a1 + 80)
      {
        break;
      }

      std::string::append(a2, ", ", 2uLL);
    }
  }

  return std::string::append(a2, " } ]", 4uLL);
}

void sub_4712C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_47133C(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != 1936092532 && *a2 != 1885762592)
  {
    return 0;
  }

  if (a1[23] != a3 || a1[24] != a4)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AggregateStream_Broadcast.cpp";
      v12 = 1024;
      v13 = 601;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to unregister a listener that is not currently registered", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to unregister a listener that is not currently registered");
  }

  v5 = a1[22];
  a1[22] = 0;
  if (v5)
  {
    operator delete();
  }

  a1[23] = 0;
  a1[24] = 0;
  return 1;
}

uint64_t sub_4714C0(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1936092532 || *a2 == 1885762592)
  {
    if (!*(a1 + 184) && !*(a1 + 192))
    {
      operator new();
    }

    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "AggregateStream_Broadcast.cpp";
      v9 = 1024;
      v10 = 576;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to set a new listener while the old one still exists. We don't handle this.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to set a new listener while the old one still exists. We don't handle this.");
  }

  return 0;
}

uint64_t sub_471678(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      v35 = *(a2 + 2);
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
      v30 = *a2;
      v36 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &off_6DDDD0;
    v21[2] = 561211770;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > a5)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v31 = *a2;
      v37 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 561211770;
  }

  if (!a6)
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v32 = *a2;
      v38 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v39 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 1852797029;
  }

  if (*a2 == 1936092532 || *a2 == 1885762592)
  {
    v12 = *(a6 + 16);
    *buf = *a6;
    v41 = v12;
    v42 = *(a6 + 32);
    result = (*(*a1 + 144))(a1, buf);
    v14 = result;
    if (result)
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "AggregateStream_Broadcast.cpp";
          v44 = 1024;
          v45 = 372;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: AggregateStream_Broadcast::SetCurrentFormat reported a failure.", __p, 0x12u);
        }
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      *v17 = &off_6DDDD0;
      v17[2] = v14;
    }
  }

  else
  {
    result = sub_5544(14);
    if (*result)
    {
      result = os_log_type_enabled(*result, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v28 = *a2;
        v34 = *(a2 + 2);
        sub_22CE0(__p);
      }
    }
  }

  return result;
}

void sub_471F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_471F34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v31 = *a2;
      v36 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v32 = *a2;
      v37 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = &off_6DDDD0;
    v22[2] = 561211770;
  }

  if (!a6)
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v38 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  v12 = *a5;
  if (v12 < (*(*a1 + 32))(a1, a2, a3, a4))
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v34 = *a2;
      v39 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  if (*a2 == 1936092532 || *a2 == 1885762592)
  {
    if (*a5 <= 0x27)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateStream_Broadcast.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 340;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): ioDataSize too small to fit an AudioStreamBasicDescription.", buf, 0x12u);
      }

      v29 = __cxa_allocate_exception(0x10uLL);
      *v29 = &off_6DDDD0;
      v29[2] = 561211770;
    }

    result = (*(*a1 + 128))(a1, buf);
    v14 = result;
    if (result)
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "AggregateStream_Broadcast.cpp";
          v43 = 1024;
          v44 = 343;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: AggregateStream_Broadcast::GetCurrentFormat reported a failure.", __p, 0x12u);
        }
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v14;
    }

    v15 = *&buf[16];
    *a6 = *buf;
    *(a6 + 16) = v15;
    *(a6 + 32) = v41;
  }

  else
  {
    result = sub_5544(14);
    if (*result)
    {
      result = os_log_type_enabled(*result, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v30 = *a2;
        v35 = *(a2 + 2);
        sub_22CE0(__p);
      }
    }
  }

  return result;
}

void sub_472764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_472788(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v19 = *a2;
      v21 = *(a2 + 2);
      sub_22CE0(buf);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v22 = *(a2 + 2);
      sub_22CE0(buf);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  v24 = 0;
  v25 = 0;
  *v23 = &v24;
  v8 = a1 + 10;
  v9 = a1[11];
  if (v9 == v8)
  {
    goto LABEL_9;
  }

  do
  {
    if ((*(**(v9 + 16) + 16))(*(v9 + 16), a2))
    {
      *buf = (*(**(v9 + 16) + 32))(*(v9 + 16), a2, a3, a4);
      sub_75788(v23, *buf);
    }

    v9 = *(v9 + 8);
  }

  while (v9 != v8);
  if (v25 != 1)
  {
LABEL_9:
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateStream_Broadcast.cpp";
      v27 = 1024;
      v28 = 321;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Varying response to GetPropertyDataSize.", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = &off_6DDDD0;
    v14[2] = 1852797029;
  }

  v10 = *(*v23 + 28);
  sub_477A0(v24);
  return v10;
}

uint64_t sub_472C00(void *a1, uint64_t *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v17 = *(a2 + 2);
      sub_22CE0(buf);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v22 = 0;
  v23 = 0;
  *v21 = &v22;
  v4 = a1[11];
  if (v4 == a1 + 10)
  {
    goto LABEL_14;
  }

  do
  {
    if ((*(**(v4 + 16) + 16))(*(v4 + 16), a2))
    {
      v5 = (*(**(v4 + 16) + 24))(*(v4 + 16), a2);
      v6 = v22;
      if (!v22)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = *(v6 + 25);
          if (v8 <= v5)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_10;
          }
        }

        if (v8 >= v5)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_10;
        }
      }
    }

    v4 = *(v4 + 8);
  }

  while (v4 != a1 + 10);
  if (v23 != 1)
  {
LABEL_14:
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateStream_Broadcast.cpp";
      v19 = 1024;
      v20 = 300;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Varying response to IsPropertySettable.", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    *v13 = &off_6DDDD0;
    v13[2] = 1852797029;
  }

  v9 = *(*v21 + 25);
  sub_477A0(v22);
  return v9;
}

BOOL sub_472FC4(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 1819569763)
  {
    return 0;
  }

  if (v2 != 1936092532 && v2 != 1885762592)
  {
    v8 = sub_5544(23);
    if (*v8)
    {
      result = os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v13 = *a2;
        v14 = a2[2];
        sub_22CE0(__p);
      }

      return result;
    }

    return 0;
  }

  v5 = a1 + 80;
  for (i = *(a1 + 88); i != v5; i = *(i + 8))
  {
    if (((*(**(i + 16) + 16))(*(i + 16), a2) & 1) == 0)
    {
      v9 = sub_5544(14);
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        sub_23148(__p, (*(i + 16) + 8));
        v11 = *a2;
        v12 = a2[2];
        sub_22CE0(&v13);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Referenced stream %s does not support property %s.");
    }
  }

  return 1;
}

void sub_47328C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4732C0(void *a1)
{
  sub_4732F8(a1);

  operator delete();
}

uint64_t sub_4732F8(void *a1)
{
  *a1 = off_6D90D0;
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    operator delete();
  }

  sub_65310(a1 + 19);
  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  sub_4E0BC(a1 + 10);

  return sub_13BFA8(a1);
}

uint64_t sub_47339C(void **a1, uint64_t a2, UInt32 a3, AudioObjectPropertySelector a4)
{
  if (a4 != 1885762657 && a4 != 1936092513)
  {
    v70 = sub_5544(14);
    v71 = *v70;
    if (*v70)
    {
      if (os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v82 = "AggregateStream_Broadcast.cpp";
        v83 = 1024;
        v84 = 40;
        _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *&inAddress.mSelector = 0x6F75747073746D23;
  inAddress.mElement = 0;
  outDataSize = 0;
  v9 = (*(*a2 + 120))(a2);
  PropertyDataSize = AudioObjectGetPropertyDataSize(v9, &inAddress, 0, 0, &outDataSize);
  if (a3 >= 2)
  {
    v62 = sub_5544(14);
    v63 = *v62;
    if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v82 = "AggregateStream_Broadcast.cpp";
      v83 = 1024;
      v84 = 49;
      v85 = 1024;
      *v86 = a3;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Requested stream index is invalid: %u", buf, 0x18u);
    }

    v64 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v64, "Requested stream index is invalid: %u");
LABEL_75:
  }

  v11 = outDataSize >> 2;
  if (outDataSize >> 2 <= a3)
  {
    v65 = sub_5544(14);
    v66 = *v65;
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v82 = "AggregateStream_Broadcast.cpp";
      v83 = 1024;
      v84 = 51;
      v85 = 1024;
      *v86 = a3;
      *&v86[4] = 1024;
      *&v86[6] = v11 - 1;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Requested stream index %u is out of range: %u", buf, 0x1Eu);
    }

    v64 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v64, "Requested stream index %u is out of range: %u");
    goto LABEL_75;
  }

  v73[1] = v73;
  v12 = 4 * v11;
  v13 = __chkstk_darwin(PropertyDataSize);
  v14 = v73 - ((4 * v11 + 15) & 0x1FFFFFFF0);
  v15 = (*(*a2 + 120))(a2, v13);
  PropertyData = AudioObjectGetPropertyData(v15, &inAddress, 0, 0, &outDataSize, v14);
  if (PropertyData)
  {
    v48 = sub_5544(14);
    v49 = *v48;
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v77, inAddress.mScope);
      v50 = v78 >= 0 ? v77 : v77[0];
      *buf = 136315650;
      v82 = "AggregateStream_Broadcast.cpp";
      v83 = 1024;
      v84 = 57;
      v85 = 2080;
      *v86 = v50;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: AudioObjectGetPropertyData(kAudioDevicePropertyStreams, '%s') failed.", buf, 0x1Cu);
      if (v78 < 0)
      {
        operator delete(v77[0]);
      }
    }

    v51 = __cxa_allocate_exception(0x10uLL);
    *v51 = &off_6DDDD0;
    v51[2] = PropertyData;
  }

  if (v12 != outDataSize)
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v82 = "AggregateStream_Broadcast.cpp";
      v83 = 1024;
      v84 = 59;
      v85 = 1024;
      *v86 = outDataSize;
      *&v86[4] = 2048;
      *&v86[6] = v12;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a size of %u while we expected %lu", buf, 0x22u);
    }

    v69 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v69, "The HAL returned a size of %u while we expected %lu");
  }

  v17 = sub_5544(23);
  v18 = *v17;
  if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = a4 == 1936092513 ? "virtual" : "physical";
    v20 = *&v14[4 * a3];
    v21 = (*(*a2 + 120))(a2);
    (*(*a2 + 128))(v77, a2);
    v22 = v78 >= 0 ? v77 : v77[0];
    *buf = 136316418;
    v82 = "AggregateStream_Broadcast.cpp";
    v83 = 1024;
    v84 = 63;
    v85 = 2080;
    *v86 = v19;
    *&v86[8] = 1024;
    *&v86[10] = v20;
    v87 = 1024;
    v88 = v21;
    v89 = 2080;
    v90 = v22;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d getting %s formats for output stream ID %u on device ID %u (uid: %s).", buf, 0x32u);
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }
  }

  ioDataSize = 0;
  v76.mSelector = a4;
  *&v76.mScope = 1735159650;
  v23 = AudioObjectGetPropertyDataSize(*&v14[4 * a3], &v76, 0, 0, &ioDataSize);
  v24 = v23;
  if (v23)
  {
    v52 = sub_5544(14);
    v53 = *v52;
    if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v77, v24);
      v54 = v77[0];
      v55 = *&v14[4 * a3];
      if (v78 >= 0)
      {
        v54 = v77;
      }

      *buf = 136316162;
      v82 = "AggregateStream_Broadcast.cpp";
      v83 = 1024;
      v84 = 71;
      v85 = 1024;
      *v86 = v24;
      *&v86[4] = 2080;
      *&v86[6] = v54;
      v87 = 1024;
      v88 = v55;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: Error %d ('%s') determining the number of stream formats for stream %d", buf, 0x28u);
      if (v78 < 0)
      {
        operator delete(v77[0]);
      }
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    *v56 = &off_6DDDD0;
    v56[2] = v24;
  }

  v25 = ioDataSize / 0x38;
  __chkstk_darwin(v23);
  v27 = v73 - v26;
  ioDataSize = 56 * v25;
  result = AudioObjectGetPropertyData(*&v14[4 * a3], &v76, 0, 0, &ioDataSize, v73 - v26);
  v30 = result;
  if (result)
  {
    v57 = sub_5544(14);
    v58 = *v57;
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v77, v30);
      v59 = v77[0];
      v60 = *&v14[4 * a3];
      if (v78 >= 0)
      {
        v59 = v77;
      }

      *buf = 136316162;
      v82 = "AggregateStream_Broadcast.cpp";
      v83 = 1024;
      v84 = 79;
      v85 = 1024;
      *v86 = v30;
      *&v86[4] = 2080;
      *&v86[6] = v59;
      v87 = 1024;
      v88 = v60;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: Error %d ('%s') reading the stream formats for stream %d", buf, 0x28u);
      if (v78 < 0)
      {
        operator delete(v77[0]);
      }
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    *v61 = &off_6DDDD0;
    v61[2] = v30;
  }

  if (v25 >= ioDataSize / 0x38)
  {
    v31 = ioDataSize / 0x38;
  }

  else
  {
    v31 = v25;
  }

  if (v31)
  {
    v32 = 0;
    v33 = 0;
    *&v29 = 136315906;
    v74 = v29;
    do
    {
      v34 = a1[2];
      if (v32 >= v34)
      {
        v38 = *a1;
        v39 = v32 - *a1;
        v40 = 0x6DB6DB6DB6DB6DB7 * (v39 >> 3) + 1;
        if (v40 > 0x492492492492492)
        {
          sub_189A00();
        }

        v41 = 0x6DB6DB6DB6DB6DB7 * ((v34 - v38) >> 3);
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        if (v41 >= 0x249249249249249)
        {
          v42 = 0x492492492492492;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          sub_2AE238(v42);
        }

        v43 = 8 * (v39 >> 3);
        v44 = *v27;
        v45 = *(v27 + 1);
        v46 = *(v27 + 2);
        *(v43 + 48) = *(v27 + 6);
        *(v43 + 16) = v45;
        *(v43 + 32) = v46;
        *v43 = v44;
        v32 = v43 + 56;
        v47 = v43 - v39;
        memcpy((v43 - v39), v38, v39);
        *a1 = v47;
        a1[1] = v32;
        a1[2] = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        v35 = *v27;
        v36 = *(v27 + 1);
        v37 = *(v27 + 2);
        *(v32 + 48) = *(v27 + 6);
        *(v32 + 16) = v36;
        *(v32 + 32) = v37;
        *v32 = v35;
        v32 += 56;
      }

      a1[1] = v32;
      result = sub_5544(23);
      if (*result)
      {
        result = os_log_type_enabled(*result, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          sub_1243E4(v77);
        }
      }

      ++v33;
      v27 += 56;
    }

    while (v31 != v33);
  }

  return result;
}

uint64_t sub_473F4C(uint64_t a1, UInt32 a2)
{
  if (!a1)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AggregateStream_Broadcast.cpp";
      v34 = 1024;
      v35 = 149;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  *&inAddress.mSelector = 0x6F75747073746D23;
  inAddress.mElement = 0;
  outDataSize = 0;
  v4 = (*(*a1 + 120))(a1);
  PropertyDataSize = AudioObjectGetPropertyDataSize(v4, &inAddress, 0, 0, &outDataSize);
  if (a2 >= 2)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "AggregateStream_Broadcast.cpp";
      v34 = 1024;
      v35 = 156;
      v36 = 1024;
      LODWORD(v37[0]) = a2;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Requested stream index is invalid: %u", buf, 0x18u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Requested stream index is invalid: %u");
  }

  v6 = outDataSize >> 2;
  if (outDataSize >> 2 <= a2)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "AggregateStream_Broadcast.cpp";
      v34 = 1024;
      v35 = 158;
      v36 = 1024;
      LODWORD(v37[0]) = a2;
      WORD2(v37[0]) = 1024;
      *(v37 + 6) = v6 - 1;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Requested stream index %u is out of range: %u", buf, 0x1Eu);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Requested stream index %u is out of range: %u");
  }

  v7 = 4 * v6;
  v8 = __chkstk_darwin(PropertyDataSize);
  v9 = (*(*a1 + 120))(a1, v8);
  PropertyData = AudioObjectGetPropertyData(v9, &inAddress, 0, 0, &outDataSize, v28 - ((v7 + 15) & 0x1FFFFFFF0));
  if (PropertyData)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v28, inAddress.mScope);
      v14 = v29 >= 0 ? v28 : v28[0];
      *buf = 136315650;
      v33 = "AggregateStream_Broadcast.cpp";
      v34 = 1024;
      v35 = 163;
      v36 = 2080;
      v37[0] = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: AudioObjectGetPropertyData(kAudioDevicePropertyStreams, '%s') failed.", buf, 0x1Cu);
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = PropertyData;
  }

  if (v7 != outDataSize)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "AggregateStream_Broadcast.cpp";
      v34 = 1024;
      v35 = 165;
      v36 = 1024;
      LODWORD(v37[0]) = outDataSize;
      WORD2(v37[0]) = 2048;
      *(v37 + 6) = v7;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a size of %u while we expected %lu", buf, 0x22u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "The HAL returned a size of %u while we expected %lu");
  }

  return *(v28 + 4 * a2 - ((v7 + 15) & 0x1FFFFFFF0));
}

unint64_t sub_474498(uint64_t a1)
{
  sub_365018(&v6, a1);
  v8 = 0x696E707465636E72;
  v9 = 0;
  v1 = sub_59410(v6);
  v3 = v2;
  if (v7)
  {
    sub_1A8C0(v7);
  }

  *(&v4 + 1) = v3;
  *&v4 = v1;
  return ((v4 >> 32) >> 32) & (HIDWORD(v1) != 0);
}

BOOL sub_474558(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return 0;
  }

  if (*a2)
  {
    v5 = *(*a2 + 144);
    v7 = v5 != 1885892706 && v5 != 1886216820;
  }

  else
  {
    v7 = 0;
  }

  sub_1A8C0(v4);
  return v7;
}

void sub_4745D0(uint64_t a1)
{
  sub_367FA8(a1);

  operator delete();
}

uint64_t sub_47460C(uint64_t a1, _DWORD *a2, uint64_t a3)
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

uint64_t sub_4748C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_474A5C(uint64_t a1, uint64_t a2)
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

uint64_t sub_474B50(uint64_t a1, uint64_t a2)
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

uint64_t sub_474C14(uint64_t a1, uint64_t a2)
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

uint64_t sub_474CD8(uint64_t a1, uint64_t a2)
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

void sub_47506C(void *a1)
{
  if (a1)
  {
    sub_47506C(*a1);
    sub_47506C(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      sub_1A8C0(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_4750C4(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_45604C((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_45604C(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_475148(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v7 = sub_4750C4(a1 + 24, a2);
    if (a1 + 32 != v7)
    {
      v8 = v7;
      v9 = *(v7 + 48);
      v10 = *(v8 + 56);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        v14 = 1;
        v15 = *a3;
        if (!*(&v15 + 1))
        {
          v11 = sub_5544(14);
          v12 = *v11;
          if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v17 = "AudioIOMonitorBase.cpp";
            v18 = 1024;
            v19 = 103;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [bufferList.mBuffers[0].mData is NULL]: data buffer is NULL", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "data buffer is NULL");
        }

        (*(*v9 + 24))(v9, a4, &v14, 0);
      }

      if (v10)
      {
        sub_1A8C0(v10);
      }
    }
  }
}

void sub_4752E4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

void sub_475310(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16))
  {
    v9 = sub_4750C4(a1 + 24, a2);
    if (a1 + 32 != v9)
    {
      v10 = v9;
      v11 = *(v9 + 48);
      v12 = *(v10 + 56);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        (*(*v11 + 96))(v11, a4, a3, 0, a5);
      }

      if (v12)
      {

        sub_1A8C0(v12);
      }
    }
  }
}

void sub_4753DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4753F4(uint64_t a1)
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

uint64_t sub_475438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  if (!sub_9C594(1885892674, *a5, a5[1]))
  {
    return 1;
  }

  v7 = *(a2 + 144);
  if (v7 == 1885433888)
  {
    return 1;
  }

  if (v7 == 1885892674)
  {
    result = sub_344360(a2, *a5, a5[1]);
    if (result)
    {

      return sub_15E5EC(a2);
    }
  }

  else
  {
    v9 = *a5;
    v10 = a5[1];

    return sub_343EB8(1701868400, v9, v10);
  }

  return result;
}

uint64_t sub_475578(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v5 = sub_8703C();
  if (!(*(*v5 + 232))(v5))
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_701520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_701520))
  {
    v31 = 0x706E756C63726E67;
    v32 = off_6D9828;
    v34 = &v32;
    v35 = 0x706C656F63736176;
    v36[0] = off_6D9870;
    v36[3] = v36;
    v36[4] = 0x706C656F63766D20;
    v37[0] = off_6D98B8;
    v37[3] = v37;
    v37[4] = 0x706C656F63766D67;
    v38[0] = off_6D9900;
    v38[3] = v38;
    v38[4] = 0x706C656F63706172;
    v39[0] = off_6D9948;
    v39[3] = v39;
    v39[4] = 0x7068704263736176;
    v40[0] = off_6D9990;
    v40[3] = v40;
    v40[4] = 0x7068704263666D61;
    v41[0] = off_6D99D8;
    v41[3] = v41;
    v41[4] = 0x7061707363736176;
    v42[0] = off_6D9A20;
    v42[3] = v42;
    v42[4] = 0x7061706163736176;
    v43[0] = off_6D9A68;
    v43[3] = v43;
    v43[4] = 0x7068646D63736176;
    v44[0] = off_6D9AB0;
    v44[3] = v44;
    v44[4] = 0x7075696F63736176;
    v45[0] = off_6D9AF8;
    v45[3] = v45;
    v45[4] = 0x7073706B63736176;
    v46[0] = off_6D9B40;
    v46[3] = v46;
    v46[4] = 0x7061707363706172;
    v47[0] = off_6D9B88;
    v47[3] = v47;
    v47[4] = 0x7061706163706172;
    v48[0] = off_6D9BD0;
    v48[3] = v48;
    v48[4] = 0x7068646D63706172;
    v49[0] = off_6D9C18;
    v49[3] = v49;
    v49[4] = 0x7075696F63706172;
    v50[0] = off_6D9C60;
    v50[3] = v50;
    v50[4] = 0x7068704263706172;
    v51[0] = off_6D9CA8;
    v51[3] = v51;
    v51[4] = 0x7073706B63706172;
    v52[0] = off_6D9CF0;
    v52[3] = v52;
    sub_475B70(&v31, 18);
    for (i = 688; i != -32; i -= 40)
    {
      sub_246B88(&v31 + i);
    }

    __cxa_guard_release(&qword_701520);
  }

  for (j = *a2; ; ++j)
  {
    v7 = *j;
    if (!*(*j + 4) && *v7 == 1986291046)
    {
      break;
    }
  }

  if (!*(v7 + 32))
  {
    return 0;
  }

  sub_25704(&v29, (*(v7 + 24) + 32), "", 202);
  if (!v29)
  {
    goto LABEL_40;
  }

  v8 = qword_701510;
  if (!qword_701510)
  {
    goto LABEL_40;
  }

  v9 = *(v29 + 144);
  v10 = *a3;
  v11 = &qword_701510;
  do
  {
    v12 = *(v8 + 32);
    v13 = v12 == v10;
    if (v12 >= v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (v13)
    {
      v15 = *(v8 + 36);
      v16 = v15 == v9;
      v14 = v15 >= v9 ? 1 : -1;
      if (v16)
      {
        v14 = 0;
      }
    }

    v17 = v14 & 0x80;
    v13 = v17 == 0;
    v18 = v17 >> 4;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *(v8 + v18);
  }

  while (v8);
  if (v11 == &qword_701510)
  {
    goto LABEL_40;
  }

  v19 = *(v11 + 8);
  v20 = v10 == v19;
  if (v10 >= v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  if (v20)
  {
    v22 = *(v11 + 9);
    v23 = v9 >= v22;
    v24 = v9 == v22;
    v25 = -1;
    if (v23)
    {
      v25 = 1;
    }

    if (v24)
    {
      v21 = 0;
    }

    else
    {
      v21 = v25;
    }
  }

  if (v21 < 0)
  {
LABEL_40:
    v26 = 0;
  }

  else
  {
    sub_251440(&v31, (v11 + 5));
    if (!v33)
    {
      sub_46A74();
    }

    v26 = (*(*v33 + 48))(v33);
    sub_246B88(&v31);
  }

  if (v30)
  {
    sub_1A8C0(v30);
  }

  return v26;
}

void sub_475B14(_Unwind_Exception *a1)
{
  for (i = 688; i != -32; i -= 40)
  {
    sub_246B88(v1 + i);
  }

  __cxa_guard_abort(&qword_701520);
  _Unwind_Resume(a1);
}

unsigned int *sub_475B70(unsigned int *result, uint64_t a2)
{
  qword_701518 = 0;
  qword_701510 = 0;
  qword_701508 = &qword_701510;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = &qword_701510;
    while (v4 != &qword_701510)
    {
      v5 = v3;
      if (v3)
      {
        do
        {
          v6 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        v7 = &qword_701510;
        do
        {
          v6 = v7[2];
          v10 = *v6 == v7;
          v7 = v6;
        }

        while (v10);
      }

      v8 = *(v6 + 8);
      v9 = *v2;
      v10 = v8 == *v2;
      if (v8 >= *v2)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v12 = *(v6 + 9);
        v13 = v2[1];
        v14 = v12 == v13;
        v11 = v12 >= v13 ? 1 : -1;
        if (v14)
        {
          v11 = 0;
        }
      }

      if (v11 < 0)
      {
        goto LABEL_41;
      }

      if (v3)
      {
        v15 = v2[1];
        v16 = &qword_701510;
        while (1)
        {
          v17 = v3;
          v18 = *(v3 + 32);
          if (v9 == v18)
          {
            v19 = *(v17 + 36);
            if (v15 >= v19)
            {
              v20 = v19 == v15;
              if (v19 >= v15)
              {
                v21 = 1;
              }

              else
              {
                v21 = -1;
              }

              if (v20)
              {
                v21 = 0;
              }

              if ((v21 & 0x80) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_39;
            }

LABEL_33:
            v3 = *v17;
            v16 = v17;
            if (!*v17)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v9 < v18)
            {
              goto LABEL_33;
            }

            if (v18 >= v9)
            {
              v22 = 1;
            }

            else
            {
              v22 = -1;
            }

            if ((v22 & 0x80) == 0)
            {
              goto LABEL_44;
            }

LABEL_39:
            v16 = (v17 + 8);
            v3 = *(v17 + 8);
            if (!v3)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v16 = &qword_701510;
LABEL_44:
      if (!*v16)
      {
LABEL_45:
        operator new();
      }

      v2 += 10;
      if (v2 == &result[10 * a2])
      {
        return result;
      }

      v4 = qword_701508;
      v3 = qword_701510;
    }

    v6 = &qword_701510;
LABEL_41:
    if (v3)
    {
      v16 = v6 + 1;
    }

    else
    {
      v16 = &qword_701510;
    }

    goto LABEL_44;
  }

  return result;
}

void sub_475DB0(void *a1)
{
  if (a1)
  {
    sub_475DB0(*a1);
    sub_475DB0(a1[1]);
    sub_246B88((a1 + 5));

    operator delete(a1);
  }
}

uint64_t sub_475E04(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_246B88(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_476A1C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (*a4 == 1667657057)
  {
    v4 = qword_7014E8;
    if (qword_7014E8 != qword_7014F0)
    {
      do
      {
        if (*(a2 + 8) == a2)
        {
          result = 0;
        }

        else
        {
          v5 = *v4;
          v6 = *(a2 + 8);
          do
          {
            v7 = *(v6 + 16) == v5 || *(v6 + 20) == v5;
            result = v7;
            if (v7)
            {
              break;
            }

            v6 = *(v6 + 8);
          }

          while (v6 != a2);
        }

        if (result)
        {
          break;
        }

        ++v4;
      }

      while (v4 != qword_7014F0);
      return result;
    }

    return 0;
  }

  v9 = qword_7014C8;
  if (qword_7014C8 == qword_7014D0)
  {
    return 0;
  }

  do
  {
    if (*(a2 + 8) == a2)
    {
      result = 0;
    }

    else
    {
      v10 = *v9;
      v11 = *(a2 + 8);
      do
      {
        v12 = *(v11 + 16) == v10 || *(v11 + 20) == v10;
        result = v12;
        if (v12)
        {
          break;
        }

        v11 = *(v11 + 8);
      }

      while (v11 != a2);
    }

    if (result)
    {
      break;
    }

    ++v9;
  }

  while (v9 != qword_7014D0);
  return result;
}

uint64_t sub_476B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return 0;
  }

  do
  {
    v3 = *(v2 + 16) == 1886216809 || *(v2 + 20) == 1886216809;
    result = v3;
    if (v3)
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != a2);
  return result;
}

uint64_t sub_476C50(uint64_t result, int a2)
{
  if (a2 > 1935962991)
  {
    if (a2 > 1936614496)
    {
      if (a2 != 1936750180)
      {
        v2 = 1936614497;
        goto LABEL_12;
      }
    }

    else if (a2 != 1935962992)
    {
      v2 = 1936290409;
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 > 1836346211)
    {
      if (a2 == 1836346212)
      {
        v3 = off_6D9E10;
        goto LABEL_16;
      }

      v2 = 1885696611;
LABEL_12:
      if (a2 == v2)
      {
        goto LABEL_13;
      }

      v3 = off_6D9E58;
LABEL_16:
      *result = v3;
      goto LABEL_17;
    }

    if (a2 != 1752200307)
    {
      v2 = 1819309171;
      goto LABEL_12;
    }
  }

LABEL_13:
  *result = off_6D9DC8;
  *(result + 8) = a2;
LABEL_17:
  *(result + 24) = result;
  return result;
}

BOOL sub_476DE8(uint64_t a1, uint64_t **a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1668313714)
  {
    if (v3 == 1668703084 || v3 == 1668576377)
    {
      return sub_9C594(1886216809, *a2, a2[1]);
    }

    if (v3 != 1668313715)
    {
      return 0;
    }
  }

  else if (v3 != 1668301427 && v3 != 1668309362 && v3 != 1668313666)
  {
    return 0;
  }

  v7 = a3[1];
  if (v7 > 1919776354)
  {
    if (v7 > 1987081832)
    {
      if (v7 == 1987081839)
      {
        return sub_9C594(1886216809, *a2, a2[1]);
      }

      v9 = 30313;
    }

    else
    {
      if (v7 == 1919776355)
      {
        return sub_9C594(1886216809, *a2, a2[1]);
      }

      v9 = 26467;
    }

    v8 = v9 | 0x76700000;
LABEL_27:
    if (v7 != v8)
    {
      return 0;
    }

    return sub_9C594(1886216809, *a2, a2[1]);
  }

  if (v7 > 1768779618)
  {
    if (v7 == 1768779619)
    {
      return sub_9C594(1886216809, *a2, a2[1]);
    }

    v8 = 1768781411;
    goto LABEL_27;
  }

  if (v7 != 1735222132)
  {
    v8 = 1768057203;
    goto LABEL_27;
  }

  return sub_9C594(1886216809, *a2, a2[1]);
}

BOOL sub_476FBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 1;
  if (v1 > 1935962991)
  {
    v3 = v1 == 1936290409;
    v4 = 1935962992;
  }

  else
  {
    v3 = v1 == 1819309171;
    v4 = 1885696611;
  }

  if (v3 || v1 == v4)
  {
    sub_CE168();
    v13 = 11;
    strcpy(v12, "AOP Audio-1");
    sub_CDEB8(&v14, v12);
    v6 = v15;
    if (v15)
    {
      v7 = std::__shared_weak_count::lock(v15);
      if (v7)
      {
        v8 = v7;
        v9 = v14;
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_weak(v6);
        sub_1A8C0(v8);
        v10 = std::__shared_weak_count::lock(v8);
        if (v10)
        {
          v2 = v9 != 0;
          sub_1A8C0(v10);
        }

        else
        {
          v2 = 0;
        }

        v6 = v8;
      }

      else
      {
        v2 = 0;
      }

      std::__shared_weak_count::__release_weak(v6);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_4770EC(uint64_t result, uint64_t a2)
{
  *a2 = off_6D9DC8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t (***sub_477188(uint64_t (***result)(), int a2))()
{
  if (a2 > 1935962991)
  {
    if (a2 > 1936614496)
    {
      if (a2 == 1936750180)
      {
        goto LABEL_13;
      }

      v2 = 1936614497;
    }

    else
    {
      if (a2 == 1935962992)
      {
        goto LABEL_13;
      }

      v2 = 1936290409;
    }

LABEL_12:
    if (a2 != v2)
    {
      v3 = off_6D9F30;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a2 > 1836346211)
  {
    if (a2 == 1836346212)
    {
      v3 = off_6D9EE8;
      goto LABEL_14;
    }

    v2 = 1885696611;
    goto LABEL_12;
  }

  if (a2 != 1752200307)
  {
    v2 = 1819309171;
    goto LABEL_12;
  }

LABEL_13:
  v3 = off_6D9EA0;
LABEL_14:
  *result = v3;
  result[3] = result;
  return result;
}

uint64_t sub_477318(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v19 = 0;
  v20 = 0;
  v18 = &v19;
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v6 = *v3;
    if (!*(*v3 + 4) && *v6 == 1986291046)
    {
      break;
    }

    if (++v3 == v4)
    {
      goto LABEL_5;
    }
  }

  v27 = off_6C2918;
  v29 = &v27;
  sub_9C674(&v25, (v6 + 16), &v27);
  sub_85148(&v27);
  v9 = v25;
  if (v25 != v26)
  {
    do
    {
      sub_88A00(&v21, v9 + 4, "", 1073);
      sub_34CDE0(&v23, v21);
      if (v22)
      {
        sub_1A8C0(v22);
      }

      v10 = v24;
      if (v24)
      {
        v11 = std::__shared_weak_count::lock(v24);
        if (v11)
        {
          v12 = v23;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v21 = v12;
          v22 = v11;
          sub_1A8C0(v11);
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        sub_CB814(&v18, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_weak(v22);
        }

        std::__shared_weak_count::__release_weak(v10);
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v17 = *v14 == v9;
          v9 = v14;
        }

        while (!v17);
      }

      v9 = v14;
    }

    while (v14 != v26);
  }

  sub_4B0F4(v26[0]);
  if (!v20)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    sub_88A00(&v27, v18 + 4, "", 298);
    v15 = *(a2 + 8);
    if (v15 == a2)
    {
      v7 = 0;
    }

    else
    {
      v16 = *(v27 + 36);
      do
      {
        v17 = *(v15 + 16) == v16 || *(v15 + 20) == v16;
        v7 = v17;
        if (v17)
        {
          break;
        }

        v15 = *(v15 + 8);
      }

      while (v15 != a2);
    }

    if (v28)
    {
      sub_1A8C0(v28);
    }
  }

  sub_4B0F4(v19);
  return v7;
}

uint64_t sub_47764C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return 0;
  }

  do
  {
    v3 = *(v2 + 16) == 1886614640 || *(v2 + 20) == 1886614640;
    result = v3;
    if (v3)
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != a2);
  return result;
}

uint64_t sub_477714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 144);
  if (v5 == 1885433888 || sub_108CA8(*(a2 + 144)))
  {
    return 1;
  }

  if ((*(a4 + 24) & 1) == 0)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "RoutingPolicyUtilities.cpp";
      v35 = 1024;
      v36 = 329;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a4 + 23) < 0)
  {
    sub_54A0(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  v11 = sub_28F41C(&__dst);
  v13 = v12;
  v30 = v11;
  v31 = v12;
  v14 = sub_5544(21);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    sub_22170(v28, v5);
    if (v29 >= 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v28[0];
    }

    if (v13)
    {
      sub_68108(&__p, &v30);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v34 = "RoutingPolicyUtilities.cpp";
      v35 = 1024;
      v36 = 333;
      v37 = 2080;
      v38 = p_dst;
      v39 = 2080;
      v40 = v17;
      v41 = 2080;
      v42 = p_p;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Mirrored device: %s, port type: %s, context:%s", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *buf = 136316162;
      v34 = "RoutingPolicyUtilities.cpp";
      v35 = 1024;
      v36 = 333;
      v37 = 2080;
      v38 = p_dst;
      v39 = 2080;
      v40 = v17;
      v41 = 2080;
      v42 = "not found";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Mirrored device: %s, port type: %s, context:%s", buf, 0x30u);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

  v19 = *a5;
  v20 = *(a5 + 8);
  if (*a5 == v20)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v21 = *v19;
    if (**v19 == v11)
    {
      break;
    }

    if (++v19 == v20)
    {
      goto LABEL_30;
    }
  }

  v22 = v21 + 2;
  v23 = v21[3];
  if (v21 + 2 == v23)
  {
LABEL_30:
    v9 = 0;
  }

  else
  {
    do
    {
      v9 = sub_10A9EC(a2, v23 + 2);
      if (v9)
      {
        break;
      }

      v23 = v23[1];
    }

    while (v22 != v23);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_477A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_477B78(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 376))(a2);
  if (result)
  {
    if ((*(*a2 + 368))(a2) == 2)
    {
      v4 = *(*a2 + 160);

      return v4(a2);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_477CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return 1;
  }

  do
  {
    v3 = *(v2 + 16) == 1886614633 || *(v2 + 20) == 1886614633;
    v4 = v3;
    if (v3)
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != a2);
  return v4 ^ 1u;
}

uint64_t sub_477D9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3 == a2)
  {
    return 1;
  }

  do
  {
    v4 = *(v3 + 16) == 1886614633 || *(v3 + 20) == 1886614633;
    v5 = v4;
    if (v4)
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  while (v3 != a2);
  if (!v5)
  {
    return 1;
  }

  v6 = *a3;
  v7 = a3[1];
  if (*a3 == v7)
  {
    return 0;
  }

  do
  {
    v8 = *v6 + 16;
    for (i = *(*v6 + 24); i != v8; i = *(i + 8))
    {
      if (sub_9C4E4(1886614639, (i + 16)))
      {
        return 1;
      }
    }

    result = 0;
    v6 += 8;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_477EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 144) != 1886216820)
  {
    return 1;
  }

  sub_34CCB0(&v11, a2);
  v6 = v12;
  if (v12)
  {
    v7 = std::__shared_weak_count::lock(v12);
    v8 = v11;
    std::__shared_weak_count::__release_weak(v6);
    if (v7 && v8)
    {
      v9 = sub_344360(v8, *a5, a5[1]);
      sub_1A8C0(v7);
      return v9;
    }

    if (v7)
    {
      sub_1A8C0(v7);
    }
  }

  return 0;
}

uint64_t sub_478050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 16; i != 48; i += 8)
  {
    v10 = *(a1 + i);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + i) = 0;
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    if (*v11 != -1)
    {
      sub_478020(*(a1 + 48), "*** done.\n", a3, a4, a5, a6, a7, a8, v13);
      close(*v11);
      *v11 = -1;
    }

    operator delete();
  }

  return sub_BDC5C(a1);
}

uint64_t sub_4780F8()
{
  if (atomic_load_explicit(&qword_701530, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_701530, &v4, sub_478164);
  }

  return qword_701528;
}

uint64_t sub_4781C0(uint64_t a1)
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

void sub_478200(const __CFString *a1, const char *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (CFStringGetTypeID() == v6)
  {
    v12 = *(a3 + 4);
    if (v12 >= 127)
    {
      v13 = 127;
    }

    else
    {
      v13 = v12;
    }

    valuePtr[v13] = 0;
    if (v12)
    {
      memset(&valuePtr[v13 - 1 - (v13 - 1)], 32, v13);
    }

    sub_478020(a3, "%s", v13, v7, v8, v9, v10, v11, valuePtr);
    CFGetRetainCount(a1);
    CFStringGetCStringPtr(a1, 0);
    sub_478020(a3, "'%s' | String{%d} | %s\n", v14, v15, v16, v17, v18, v19, a2);
  }

  else if (CFNumberGetTypeID() == v6)
  {
    Type = CFNumberGetType(a1);
    v26 = *(a3 + 4);
    if (v26 >= 127)
    {
      v27 = 127;
    }

    else
    {
      v27 = v26;
    }

    valuePtr[v27] = 0;
    if (v26)
    {
      memset(&valuePtr[v27 - 1 - (v27 - 1)], 32, v27);
    }

    sub_478020(a3, "%s", v27, v20, v21, v22, v23, v24, valuePtr);
    if (Type <= kCFNumberDoubleType)
    {
      if (((1 << Type) & 0x3060) != 0)
      {
        *valuePtr = 0;
        CFNumberGetValue(a1, Type, valuePtr);
        CFGetRetainCount(a1);
        sub_478020(a3, "'%s' | Number(float){%d} | %f\n", v64, v65, v66, v67, v68, v69, a2);
        return;
      }

      if (((1 << Type) & 0x82) != 0)
      {
        valuePtr[0] = 0;
        CFNumberGetValue(a1, Type, valuePtr);
        CFGetRetainCount(a1);
        sub_478020(a3, "'%s' | Number(SInt8){%d} | 0x%02x\n", v83, v84, v85, v86, v87, v88, a2);
        return;
      }

      if (((1 << Type) & 0x104) != 0)
      {
        *valuePtr = 0;
        CFNumberGetValue(a1, Type, valuePtr);
        CFGetRetainCount(a1);
        sub_478020(a3, "'%s' | Number(SInt16){%d} | 0x%04x\n", v28, v29, v30, v31, v32, v33, a2);
        return;
      }
    }

    *valuePtr = 0;
    CFNumberGetValue(a1, Type, valuePtr);
    CFGetRetainCount(a1);
    sub_478020(a3, "'%s' | Number(SInt32){%d} | %-6d 0x%08x %c%c%c%c\n", v97, v98, v99, v100, v101, v102, a2);
  }

  else if (CFDictionaryGetTypeID() == v6)
  {
    v39 = *(a3 + 4);
    if (v39 >= 127)
    {
      v40 = 127;
    }

    else
    {
      v40 = v39;
    }

    valuePtr[v40] = 0;
    if (v39)
    {
      memset(&valuePtr[v40 - 1 - (v40 - 1)], 32, v40);
    }

    sub_478020(a3, "%s", v40, v34, v35, v36, v37, v38, valuePtr);
    CFGetRetainCount(a1);
    CFDictionaryGetCount(a1);
    sub_478020(a3, "'%s' | Dictionary{%d} | %d key/value pairs\n", v41, v42, v43, v44, v45, v46, a2);
    if (!strcmp("aupreset", a2))
    {
      *(a3 + 8) = 1;
    }

    *(a3 + 4) += 4;
    CFDictionaryApplyFunction(a1, sub_478760, a3);
    *(a3 + 4) -= 4;
    *(a3 + 8) = 0;
  }

  else if (CFArrayGetTypeID() == v6)
  {
    Count = CFArrayGetCount(a1);
    v53 = *(a3 + 4);
    if (v53 >= 127)
    {
      v54 = 127;
    }

    else
    {
      v54 = v53;
    }

    valuePtr[v54] = 0;
    if (v53)
    {
      memset(&valuePtr[v54 - 1 - (v54 - 1)], 32, v54);
    }

    sub_478020(a3, "%s", v54, v47, v48, v49, v50, v51, valuePtr);
    CFGetRetainCount(a1);
    sub_478020(a3, "'%s' | Array{%d} | %d ordered objects\n", v55, v56, v57, v58, v59, v60, a2);
    v61 = *(a3 + 4);
    *(a3 + 4) = v61 + 4;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        snprintf(valuePtr, 0x10uLL, "[%u]", i);
        sub_478200(ValueAtIndex, valuePtr, a3);
      }

      v61 = *(a3 + 4) - 4;
    }

    *(a3 + 4) = v61;
  }

  else if (CFDataGetTypeID() == v6)
  {
    v75 = *(a3 + 4);
    if (v75 >= 127)
    {
      v76 = 127;
    }

    else
    {
      v76 = v75;
    }

    valuePtr[v76] = 0;
    if (v75)
    {
      memset(&valuePtr[v76 - 1 - (v76 - 1)], 32, v76);
    }

    sub_478020(a3, "%s", v76, v70, v71, v72, v73, v74, valuePtr);
    *(a3 + 8);
    CFGetRetainCount(a1);
    CFDataGetLength(a1);
    sub_478020(a3, "'%s' | %sData{%d} | %d bytes\n", v77, v78, v79, v80, v81, v82, a2);
  }

  else
  {
    v89 = *(a3 + 4);
    if (v89 >= 127)
    {
      v90 = 127;
    }

    else
    {
      v90 = v89;
    }

    valuePtr[v90] = 0;
    if (v89)
    {
      memset(&valuePtr[v90 - 1 - (v90 - 1)], 32, v90);
    }

    sub_478020(a3, "%s", v90, v70, v71, v72, v73, v74, valuePtr);
    sub_478020(a3, "'%s' | <unknown type id: %d)>\n", v91, v92, v93, v94, v95, v96, a2);
  }
}

uint64_t sub_478760(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0);

  return sub_478200(a2, CStringPtr, a3);
}

const void **sub_4787A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL sub_4787DC(const __CFNumber *a1, void *a2)
{
  result = 0;
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      if (CFNumberGetValue(a1, kCFNumberSInt32Type, a2))
      {
        return 1;
      }
    }
  }

  return result;
}

const void *sub_478844(uint64_t a1, const char *a2, unsigned int a3)
{
  v3 = a1 + 16;
  if (!*(a1 + 16 + 8 * a3))
  {
    return 0;
  }

  v5 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0, kCFAllocatorNull);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v3 + 8 * a3);
  if (a3 - 1 > 2)
  {
    if (CFDictionaryGetCount(v7) > 0)
    {
      operator new[]();
    }

    CFRelease(v6);
    return 0;
  }

  Value = CFDictionaryGetValue(v7, v6);
  if (!Value || (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v9)))
  {
    CFRelease(v6);
    v11 = sub_4780F8();
    if (v11)
    {
      v12 = *v11;
      if (!*v11)
      {
        return 0;
      }
    }

    else
    {
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "TuningPListMgr.cpp";
      v16 = 1024;
      v17 = 435;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d return dictionary is null", &v14, 0x12u);
    }

    return 0;
  }

  CFRelease(v6);
  return v9;
}

void sub_478B48(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != (a1 + 8))
  {
    do
    {
      v3 = v2[3];
      v4[0] = v2[2];
      v4[1] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_25704(&v5, v4, "", 18);
      (*(*v5 + 280))(v5, 0);
      if (v6)
      {
        sub_1A8C0(v6);
      }

      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void sub_478C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_478C44(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != (a1 + 8))
  {
    do
    {
      v3 = v2[3];
      v4[0] = v2[2];
      v4[1] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_25704(&v5, v4, "", 13);
      (*(*v5 + 280))(v5, 1);
      if (v6)
      {
        sub_1A8C0(v6);
      }

      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void sub_478D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_478D40(void *a1)
{
  *a1 = off_6DA110;
  sub_65310(a1 + 1);

  operator delete();
}

void *sub_478DA4(void *a1)
{
  *a1 = off_6DA110;
  sub_65310(a1 + 1);
  return a1;
}

void sub_478DE8(void *a1)
{
  sub_478E20(a1);

  operator delete();
}

void *sub_478E20(void *a1)
{
  *a1 = off_6DA148;
  for (i = 1; i != 5; ++i)
  {
    if (a1[i])
    {
      off_701598();
    }
  }

  return a1;
}

void sub_478E94(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (byte_701580 == 1)
  {
    if (!a3)
    {
      v7 = *sub_5544(14);
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = 136315394;
          v11 = "AudioEANCMonitor.cpp";
          v12 = 1024;
          v13 = 147;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inData is NULL]: data buffer is NULL", &v10, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "data buffer is NULL");
    }

    if (LODWORD((&off_6DA158)[2 * a2 + 1]) >= a4)
    {
      if ((off_701590(*(a1 + 8 * a2 + 8), a3, a4) & 1) == 0)
      {
        v6 = sub_5544(14);
        v5 = *v6;
        if (*v6)
        {
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            v10 = 136315394;
            v11 = "AudioEANCMonitor.cpp";
            v12 = 1024;
            v13 = 151;
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v4 = sub_5544(14);
      v5 = *v4;
      if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "AudioEANCMonitor.cpp";
        v12 = 1024;
        v13 = 148;
LABEL_11:
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto finish", &v10, 0x12u);
      }
    }
  }
}

uint64_t sub_4790BC(uint64_t a1)
{
  sub_365018(buf, a1);
  __p = 0x676C6F62756C6D64;
  v18 = 0;
  v2 = (*(**buf + 16))(*buf, &__p);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  v3 = sub_5544(24);
  v4 = *v3;
  if (!*v3 || !os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  sub_22170(&__p, 0x756C6D64u);
  v5 = v19 >= 0 ? &__p : __p;
  *buf = 136315906;
  *&buf[4] = "Port_BluetoothA2DP_Aspen.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 150;
  v21 = 2080;
  v22 = v5;
  v23 = 1024;
  v24 = v2;
  _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HasProperty(%s): %d", buf, 0x22u);
  if (v19 < 0)
  {
    operator delete(__p);
    if (v2)
    {
      return 1635085420;
    }
  }

  else
  {
LABEL_9:
    if (v2)
    {
      return 1635085420;
    }
  }

  v6 = 2003068262;
  if (((*(*a1 + 112))(a1) & 0x1FFFFFFFFLL) == 0x165706870)
  {
    if ((*(*a1 + 360))(a1))
    {
      return 1633759844;
    }

    sub_365018(buf, a1);
    v7 = (*(**buf + 376))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    v8 = sub_5544(24);
    v9 = BYTE4(v7) & (v7 != 0);
    v10 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "Port_BluetoothA2DP_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 140;
      v21 = 1024;
      LODWORD(v22) = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SupportsSoftwareVolume: %d", buf, 0x18u);
    }

    if (v9)
    {
      return 1633759844;
    }

    sub_365018(buf, a1);
    __p = 0x676C6F6273706170;
    v18 = 0;
    v11 = sub_59410(*buf);
    v13 = v12;
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    *(&v15 + 1) = v13;
    *&v15 = v11;
    v14 = v15 >> 32;
    if ((v14 & 0x100000000) != 0)
    {
      if (v14)
      {
        return 1633759844;
      }
    }
  }

  return v6;
}

void sub_4793E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_47940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = atomic_load((a1 + 778));
  if ((*(*a1 + 288))(a1))
  {
    v7 = sub_479E4C(a1) == 1;
    goto LABEL_3;
  }

  v8 = *a3;
  if (*a3 == -1 || *(a3 + 12) == 0)
  {
    LOBYTE(v8) = 0;
  }

  else if (v8 != 1)
  {
    v7 = *(a3 + 4) == 1;
LABEL_3:
    LOBYTE(v8) = v7;
  }

  atomic_store(v8, (a1 + 778));
  v10 = sub_5544(18);
  v11 = sub_5544(29);
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
    if (*(a1 + 303) < 0)
    {
      sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
    }

    else
    {
      *__dst = *(a1 + 280);
      v55 = *(a1 + 296);
    }

    v16 = SHIBYTE(v55);
    v17 = __dst[0];
    sub_24FB08(&__p, a3);
    v18 = __dst;
    if (v16 < 0)
    {
      v18 = v17;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v20 = atomic_load((a1 + 778));
    *&buf[4] = "Port_BluetoothA2DP_Aspen.cpp";
    v48 = 1024;
    v21 = "out";
    *v49 = 245;
    *buf = 136316162;
    *&v49[4] = 2080;
    if (v20)
    {
      v21 = "in";
    }

    *&v49[6] = v18;
    v50 = 2080;
    v51 = p_p;
    v52 = 2080;
    v53 = v21;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio port with UID %s: headset status %s, effective in ear state: %s", buf, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55) < 0)
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

    v22 = atomic_load((a1 + 778));
    if ((v22 ^ v6))
    {
      if (sub_108CA8(*(a1 + 144)))
      {
        v43 = sub_5544(14);
        v44 = *v43;
        if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Port_BluetoothA2DP_Aspen.cpp";
          v48 = 1024;
          *v49 = 212;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v23 = atomic_load((a1 + 778));
      if ((v23 & 1) == 0)
      {
        if (*(a1 + 777))
        {
          (*(*a1 + 272))(buf, a1);
          if (*&v49[2])
          {
            v24 = atomic_load((a1 + 778));
            sub_364CA8(a1, buf, v24 & 1);
          }

          sub_65310(buf);
        }

        else
        {
          v27 = (*(*a1 + 376))(a1);
          v28 = sub_5544(18);
          v29 = sub_5544(29);
          v30 = 0;
          if (v27)
          {
            *buf = 0x100000002;
            v31 = *(v28 + 8);
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
                goto LABEL_73;
              }
            }

            if ((v31 & v32) == 0)
            {
              v28 = v29;
            }

LABEL_73:
            v35 = *v28;
            if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a1 + 303) < 0)
              {
                sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
              }

              else
              {
                *__dst = *(a1 + 280);
                v55 = *(a1 + 296);
              }

              v37 = __dst;
              if (v55 < 0)
              {
                v37 = __dst[0];
              }

              v38 = atomic_load((a1 + 778));
              *&buf[4] = "Port_BluetoothA2DP_Aspen.cpp";
              *buf = 136315906;
              v48 = 1024;
              if (v38)
              {
                v39 = "true";
              }

              else
              {
                v39 = "false";
              }

              *v49 = 224;
              *&v49[4] = 2080;
              *&v49[6] = v37;
              v50 = 2080;
              v51 = v39;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s: setting routability to %s", buf, 0x26u);
              if (SHIBYTE(v55) < 0)
              {
                operator delete(__dst[0]);
              }
            }

            v40 = *(a1 + 88);
            __dst[0] = *(a1 + 80);
            __dst[1] = v40;
            if (v40)
            {
              atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_22ED54(buf, __dst, 1);
            v41 = atomic_load((a1 + 778));
            sub_364CA8(a1, buf, v41 & 1);
            sub_65310(buf);
            if (__dst[1])
            {
              std::__shared_weak_count::__release_weak(__dst[1]);
            }
          }

          else
          {
            *buf = 0x100000002;
            v33 = *(v28 + 8);
            while (1)
            {
              v34 = *&buf[v30];
              if (((v33 & v34) != 0) != ((*(v29 + 8) & v34) != 0))
              {
                break;
              }

              v30 += 4;
              if (v30 == 8)
              {
                goto LABEL_79;
              }
            }

            if ((v33 & v34) == 0)
            {
              v28 = v29;
            }

LABEL_79:
            v36 = *v28;
            if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a1 + 303) < 0)
              {
                sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
              }

              else
              {
                *__dst = *(a1 + 280);
                v55 = *(a1 + 296);
              }

              v42 = __dst;
              if (v55 < 0)
              {
                v42 = __dst[0];
              }

              *buf = 136315650;
              *&buf[4] = "Port_BluetoothA2DP_Aspen.cpp";
              v48 = 1024;
              *v49 = 230;
              *&v49[4] = 2080;
              *&v49[6] = v42;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s: routability unchanged due to negative ownership status", buf, 0x1Cu);
              if (SHIBYTE(v55) < 0)
              {
                operator delete(__dst[0]);
              }
            }
          }
        }
      }

      LODWORD(__dst[0]) = 1651796325;
      sub_1F2E44(buf, __dst, 1);
      (*(*a1 + 416))(a1, buf);
      sub_4E0BC(buf);
    }

    if (*(a3 + 12) != *(a2 + 12))
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
      v25 = atomic_load((a1 + 778));
      if ((v25 & 1) == 0 || (*(*a1 + 160))(a1))
      {
        v26 = *(a1 + 88);
        __dst[0] = *(a1 + 80);
        __dst[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
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

void sub_479DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  sub_65310(&a13);
  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_479E4C(uint64_t a1)
{
  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Port_BluetoothA2DP_Aspen.cpp";
      v14 = 1024;
      v15 = 61;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  (*(*a1 + 272))(buf, a1);
  sub_B0484(&v10, buf);
  v2 = v11;
  if (v11 == &v10)
  {
    v3 = 2;
  }

  else
  {
    LODWORD(v3) = 2;
    while (1)
    {
      v4 = v2[2];
      if (*(v4 + 144) != 1885892674)
      {
        v3 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v5 = sub_3655B4(v4);
      if (v5 == -1)
      {
        break;
      }

      if (v5 == 2)
      {
        v3 = v3;
      }

      else
      {
        v3 = v5;
      }

      v2 = v2[1];
      if (v2 == &v10)
      {
        goto LABEL_14;
      }
    }

    v3 = 1;
  }

LABEL_14:
  sub_87980(&v10);
  sub_65310(buf);
  return v3;
}

_BYTE *sub_47A078@<X0>(uint64_t a1@<X0>, UInt8 *a2@<X8>)
{
  v2 = *(a1 + 768);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return sub_125D8(a2, v2);
}

uint64_t sub_47A120(uint64_t a1)
{
  v1 = *(a1 + 768);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_125D8(v6, v1);
  if (v7 < 0)
  {
    v3 = v6[1] != 0;
    operator delete(v6[0]);
  }

  else
  {
    v3 = v7 != 0;
  }

  return *(a1 + 776) & v3 & 1;
}

uint64_t sub_47A1CC(uint64_t a1)
{
  v2 = (*(*a1 + 368))(a1);
  if ((*(*a1 + 392))(a1))
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = *(*a1 + 376);

  return v5(a1);
}

uint64_t sub_47A2A4(uint64_t a1)
{
  if ((*(*a1 + 288))(a1))
  {

    return sub_479E4C(a1);
  }

  else
  {

    return sub_3655B4(a1);
  }
}

BOOL sub_47A330(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return 0;
  }

  if (*a2)
  {
    v5 = *(*a2 + 144) != 1885892706;
  }

  else
  {
    v5 = 0;
  }

  sub_1A8C0(v4);
  return v5;
}

uint64_t sub_47A39C(_BYTE *a1, char a2)
{
  v8 = 0x676C6F6277737375;
  LODWORD(v9) = 0;
  result = (*(*a1 + 16))(a1, &v8);
  if (result)
  {
    a1[777] = a2;
    sub_365018(&v8, a1);
    sub_365018(&v6, a1);
    v5 = (*(*v6 + 120))(v6);
    sub_2E9A08(v5);
    if (v7)
    {
      sub_1A8C0(v7);
    }

    if (v9)
    {
      sub_1A8C0(v9);
    }

    sub_68E60();
    operator new();
  }

  return result;
}

void sub_47A4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_47A844(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_809C0();
  LODWORD(v24.__r_.__value_.__l.__data_) = 1885892674;
  v28 = 0;
  v27 = 0uLL;
  sub_4625C(&v27, &v24, v24.__r_.__value_.__r.__words + 4, 1uLL);
  buf[0] = v27;
  *&buf[1] = v28;
  strcpy(&buf[1] + 8, "cwdv");
  v31 = 0;
  v32 = 3;
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  v35 = 44739242;
  v37 = 0;
  v38 = 0;
  __p = 0;
  *&v27 = off_6DA3C8;
  v29 = &v27;
  sub_256FB0(v25, v4, buf, &v27);
  sub_85148(&v27);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v34[0]);
  if (*&buf[0])
  {
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
  }

  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  if (v25[2] >= 2uLL)
  {
    v5 = *(a1 + 200);
    v24.__r_.__value_.__r.__words[0] = *(a1 + 192);
    v24.__r_.__value_.__l.__size_ = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, &v24, "", 332);
    (*(**&buf[0] + 304))(&v27);
    if (*(&buf[0] + 1))
    {
      sub_1A8C0(*(&buf[0] + 1));
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    for (i = v25[1]; i != v25; i = i[1])
    {
      v7 = i[3];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = i[2];
          if (v10)
          {
            v12 = *(&v27 + 1);
            v11 = v27;
            v13 = *(v10 + 200);
            v26[0] = *(v10 + 192);
            v26[1] = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_5659C(&v24, v26, "", 337);
            (*(*v24.__r_.__value_.__l.__data_ + 128))(buf);
            v14 = BYTE7(buf[1]);
            if (v11 != v12)
            {
              if ((SBYTE7(buf[1]) & 0x80u) == 0)
              {
                v15 = BYTE7(buf[1]);
              }

              else
              {
                v15 = *(&buf[0] + 1);
              }

              if ((SBYTE7(buf[1]) & 0x80u) == 0)
              {
                v16 = buf;
              }

              else
              {
                v16 = *&buf[0];
              }

              while (1)
              {
                v17 = *(v11 + 23);
                v18 = v17;
                if ((v17 & 0x80u) != 0)
                {
                  v17 = *(v11 + 8);
                }

                if (v17 == v15)
                {
                  v19 = v18 >= 0 ? v11 : *v11;
                  if (!memcmp(v19, v16, v15))
                  {
                    break;
                  }
                }

                v11 += 24;
                if (v11 == v12)
                {
                  v11 = v12;
                  break;
                }
              }
            }

            v20 = *(&v27 + 1);
            if (v14 < 0)
            {
              operator delete(*&buf[0]);
            }

            if (v24.__r_.__value_.__l.__size_)
            {
              sub_1A8C0(v24.__r_.__value_.__l.__size_);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_weak(v13);
            }

            sub_1A8C0(v9);
            if (v11 != v20)
            {
              sub_849B8();
            }
          }

          else
          {
            sub_1A8C0(v8);
          }
        }
      }
    }

    if (a2[2])
    {
      v21 = sub_5544(24);
      v22 = *v21;
      if (*v21)
      {
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
        {
          sub_3FE7D0(&v24, a2);
          v23 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
          LODWORD(buf[0]) = 136315650;
          *(buf + 4) = "Port_BluetoothA2DP_Aspen.cpp";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 343;
          WORD1(buf[1]) = 2080;
          *(&buf[1] + 4) = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Partner ports: %s", buf, 0x1Cu);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    *&buf[0] = &v27;
    sub_11C50(buf);
  }

  sub_65310(v25);
}

void sub_47AC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a17;
  sub_11C50(&a21);
  sub_65310(v21);
  sub_65310(&a12);
  _Unwind_Resume(a1);
}

void sub_47AD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v19 = *a2;
      v22 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v23 = *(a2 + 8);
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
      v21 = *a2;
      v24 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  if (*a2 == 2004054901)
  {
    sub_365018(buf, a1);
    (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
    v12 = v27;
    if (v27)
    {

      sub_1A8C0(v12);
    }
  }

  else
  {

    sub_366384(a1, a2, a3, a4, a5, a6);
  }
}

void sub_47B280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_47B2A0(void *a1)
{
  sub_47B2D8(a1);

  operator delete();
}

uint64_t sub_47B2D8(void *a1)
{
  *a1 = off_6DA1A8;
  v2 = a1[96];
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_367FA8(a1);
}

void sub_47B33C()
{
  qword_701648 = 0;
  qword_701640 = 0;
  qword_701638 = &qword_701640;
  *v122 = 0;
  if (sub_30EBC8())
  {
    goto LABEL_6;
  }

  v0 = sub_28A564(buf);
  v1 = buf[24];
  if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v1)
  {
LABEL_6:
    sub_30F188(buf);
    if (buf[23] >= 0)
    {
      v2 = buf;
    }

    else
    {
      v2 = *buf;
    }

    if (v2)
    {
      if (buf[23] >= 0)
      {
        v3 = buf[23];
      }

      else
      {
        v3 = *&buf[8];
      }

      v4 = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
      v95 = v4;
      if (!v4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      goto LABEL_25;
    }
  }

  else
  {
    caulk::product::short_hardware_model_name(buf, v0);
    if (buf[23] >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    if (v6)
    {
      if (buf[23] >= 0)
      {
        v7 = buf[23];
      }

      else
      {
        v7 = *&buf[8];
      }

      v4 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
      v95 = v4;
      if (!v4)
      {
        v8 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v8, "Could not construct");
      }

      goto LABEL_25;
    }
  }

  v4 = 0;
LABEL_25:
  *v122 = v4;
  v95 = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_42ED40(&v119, v122);
  if (v4)
  {
    CFRelease(v4);
  }

  v9 = SHIBYTE(v119.__r_.__value_.__r.__words[2]);
  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v119.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v119.__r_.__value_.__l.__size_;
  }

  v11 = buf;
  sub_B0848(buf, size + 27);
  if (buf[23] < 0)
  {
    v11 = *buf;
  }

  if (size)
  {
    if (v9 >= 0)
    {
      v12 = &v119;
    }

    else
    {
      v12 = v119.__r_.__value_.__r.__words[0];
    }

    memmove(v11, v12, size);
  }

  strcpy(&v11[size], "SoundAutoConfigStrips.plist");
  sub_EE47C(&v118, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v13 = v118;
  sub_36C454(&v112, v118);
  theDict = v13;
  sub_36C454(&v106, v13);
  v107 = (v109 - v108) >> 3;
  LODWORD(v91) = 136315650;
  v92 = v9;
  while (1)
  {
    if (v112 && v113 != (v115 - v114) >> 3)
    {
      v14 = v106;
      goto LABEL_48;
    }

    v14 = v106;
    if (!v106 || v107 == (v109 - v108) >> 3)
    {
      break;
    }

LABEL_48:
    if (v112 == v14 && v113 == v107)
    {
      break;
    }

    sub_36C4D8(__p, &v112);
    sub_284070(buf, &v119.__r_.__value_.__l.__data_, __p);
    v102 = *buf;
    sub_47C624(v122, &v102);
    if ((v122[23] & 0x80000000) != 0)
    {
      v15 = *v122;
      sub_54A0(buf, *v122, *&v122[8]);
      operator delete(v15);
    }

    else
    {
      *buf = *v122;
      *&buf[16] = *&v122[16];
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      if (*&buf[8] == 8)
      {
        v20 = *buf;
        if (**buf == 0x706972747375612ELL)
        {
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      if (*&buf[8] != 10)
      {
        goto LABEL_70;
      }

      v16 = *buf;
    }

    else
    {
      if (buf[23] == 8)
      {
        if (*buf == 0x706972747375612ELL)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

      if (buf[23] != 10)
      {
        goto LABEL_70;
      }

      v16 = buf;
    }

    v17 = *v16;
    v18 = *(v16 + 4);
    if (v17 == 0x727473706F72702ELL && v18 == 28777)
    {
      if ((buf[23] & 0x80) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

LABEL_70:
    std::string::append(&v102, ".austrip", 8uLL);
    if ((buf[23] & 0x80) != 0)
    {
LABEL_71:
      v20 = *buf;
LABEL_72:
      operator delete(v20);
    }

LABEL_73:
    if (sub_DD820())
    {
      goto LABEL_100;
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(buf, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
    }

    else
    {
      *buf = v102;
    }

    v21 = buf[23];
    v23 = *buf;
    v22 = *&buf[8];
    if (buf[23] >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    if (buf[23] >= 0)
    {
      v22 = buf[23];
    }

    v25 = &v24[v22];
    if (v22 >= 12)
    {
      v26 = v24;
      do
      {
        v27 = memchr(v26, 109, v22 - 11);
        if (!v27)
        {
          break;
        }

        if (*v27 == 0x7375612E64656C6DLL && *(v27 + 2) == 1885958772)
        {
          goto LABEL_91;
        }

        v26 = v27 + 1;
        v22 = v25 - v26;
      }

      while (v25 - v26 > 11);
    }

    v27 = v25;
LABEL_91:
    v30 = v27 == v25 || v27 - v24 == -1;
    if (v21 < 0)
    {
      operator delete(v23);
    }

    v9 = v92;
    if (v30)
    {
LABEL_100:
      v96[0] = 0;
      v96[1] = 0;
      v98[0] = 0;
      v98[1] = 0;
      v95 = v96;
      v97 = v98;
      v100[0] = 0;
      v100[1] = 0;
      v99 = v100;
      v101 = 0;
      v31 = v105;
      sub_47CB6C(v105, "position", &v97);
      sub_47CB6C(v31, "role", &v99);
      if (!v31)
      {
        v86 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v86, "Could not construct");
      }

      sub_47CE20(&cf, v31, "VirtualAudioPlugInMode");
      if (cf.__r_.__value_.__s.__data_[8] == 1)
      {
        v32 = cf.__r_.__value_.__r.__words[0];
        if (cf.__r_.__value_.__r.__words[0])
        {
          v33 = CFGetTypeID(cf.__r_.__value_.__l.__data_);
          if (v33 == CFArrayGetTypeID())
          {
            sub_6A9B8(&v121, &cf.__r_.__value_.__l.__data_);
            if (!v121)
            {
              v87 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v87, "Could not construct");
            }

            memset(v122, 0, 24);
            sub_47CE74(buf, v121, v122);
            v120.__r_.__value_.__r.__words[0] = v122;
            sub_11C50(&v120);
            if (v121)
            {
              CFRelease(v121);
            }

            v34 = *buf;
            v35 = *&buf[8];
            while (v34 != v35)
            {
              if (*(v34 + 23) >= 0)
              {
                v36 = v34;
              }

              else
              {
                v36 = *v34;
              }

              *v122 = bswap32(*v36);
              sub_75788(&v95, *v122);
              v34 += 24;
            }

            *v122 = buf;
            sub_11C50(v122);
          }

          else
          {
            v37 = CFGetTypeID(v32);
            if (v37 == CFStringGetTypeID())
            {
              sub_23F428(v122, &cf.__r_.__value_.__l.__data_);
              if (!*v122)
              {
                v88 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v88, "Could not construct");
              }

              sub_125D8(buf, *v122);
              if (*v122)
              {
                CFRelease(*v122);
              }

              v38 = buf;
              if (buf[23] < 0)
              {
                v38 = *buf;
              }

              *v122 = bswap32(*v38);
              sub_75788(&v95, *v122);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          if (cf.__r_.__value_.__r.__words[0])
          {
            CFRelease(cf.__r_.__value_.__l.__data_);
          }
        }
      }

      v101 = sub_47CF4C(&v105);
      v39 = *sub_5544(25);
      v40 = v39;
      if (v39)
      {
        v41 = v39;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v122[23] = 15;
          strcpy(v122, "{ calibration: ");
          v42 = "false";
          if (v101)
          {
            v42 = "true";
          }

          if (HIBYTE(v101))
          {
            v43 = v42;
          }

          else
          {
            v43 = "unspecified";
          }

          v44 = strlen(v43);
          v45 = std::string::append(v122, v43, v44);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v120.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v120.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          if ((v122[23] & 0x80000000) != 0)
          {
            operator delete(*v122);
          }

          sub_261E2C(&cf, v97, v98);
          v47 = std::string::insert(&cf, 0, ", positions: ", 0xDuLL);
          v48 = *&v47->__r_.__value_.__l.__data_;
          *&v122[16] = *(&v47->__r_.__value_.__l + 2);
          *v122 = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          if (v122[23] >= 0)
          {
            v49 = v122;
          }

          else
          {
            v49 = *v122;
          }

          if (v122[23] >= 0)
          {
            v50 = v122[23];
          }

          else
          {
            v50 = *&v122[8];
          }

          std::string::append(&v120, v49, v50);
          if ((v122[23] & 0x80000000) != 0)
          {
            operator delete(*v122);
          }

          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          sub_261E2C(&cf, v99, v100);
          v51 = std::string::insert(&cf, 0, ", roles: ", 9uLL);
          v52 = *&v51->__r_.__value_.__l.__data_;
          *&v122[16] = *(&v51->__r_.__value_.__l + 2);
          *v122 = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          if (v122[23] >= 0)
          {
            v53 = v122;
          }

          else
          {
            v53 = *v122;
          }

          if (v122[23] >= 0)
          {
            v54 = v122[23];
          }

          else
          {
            v54 = *&v122[8];
          }

          std::string::append(&v120, v53, v54);
          if ((v122[23] & 0x80000000) != 0)
          {
            operator delete(*v122);
          }

          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          sub_11683C(&cf, v95, v96);
          v55 = std::string::insert(&cf, 0, ", modes: ", 9uLL);
          v56 = *&v55->__r_.__value_.__l.__data_;
          *&v122[16] = *(&v55->__r_.__value_.__l + 2);
          *v122 = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if (v122[23] >= 0)
          {
            v57 = v122;
          }

          else
          {
            v57 = *v122;
          }

          if (v122[23] >= 0)
          {
            v58 = v122[23];
          }

          else
          {
            v58 = *&v122[8];
          }

          std::string::append(&v120, v57, v58);
          if ((v122[23] & 0x80000000) != 0)
          {
            operator delete(*v122);
          }

          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          std::string::append(&v120, " }", 2uLL);
          v59 = &v120;
          if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v120.__r_.__value_.__r.__words[0];
          }

          *buf = v91;
          *&buf[4] = "SoundAutoConfigUtilities.mm";
          *&buf[12] = 1024;
          *&buf[14] = 210;
          *&buf[18] = 2080;
          *&buf[20] = v59;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d Parsed SoundAutoConfig dictionary into AbstractSoundAutoConfigCondition %s.", buf, 0x1Cu);
          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v120.__r_.__value_.__l.__data_);
          }
        }
      }

      sub_47C624(v122, &v102);
      v60 = v122[23];
      if ((v122[23] & 0x80000000) != 0)
      {
        sub_54A0(buf, *v122, *&v122[8]);
      }

      else
      {
        *buf = *v122;
        *&buf[16] = *&v122[16];
      }

      if ((buf[23] & 0x80000000) == 0)
      {
        v61 = 1886548848;
        if (buf[23] == 8)
        {
          v62 = bswap64(*buf);
          v63 = v62 >= 0x2E61757374726970;
          v64 = v62 > 0x2E61757374726970;
          v65 = !v63;
          if (v64 == v65)
          {
            v61 = 1635087216;
          }

          else
          {
            v61 = 1886548848;
          }
        }

        if ((v60 & 0x80000000) == 0)
        {
          goto LABEL_180;
        }

LABEL_190:
        operator delete(*v122);
        goto LABEL_180;
      }

      v61 = 1886548848;
      if (*&buf[8] == 8)
      {
        v66 = bswap64(**buf);
        v63 = v66 >= 0x2E61757374726970;
        v67 = v66 > 0x2E61757374726970;
        v68 = !v63;
        if (v67 == v68)
        {
          v61 = 1635087216;
        }

        else
        {
          v61 = 1886548848;
        }
      }

      operator delete(*buf);
      if (v60 < 0)
      {
        goto LABEL_190;
      }

LABEL_180:
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_54A0(&cf, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
      }

      else
      {
        cf = v102;
      }

      sub_44E44(&v122[8], &v95);
      sub_2726F4(&v123, &v97);
      sub_2726F4(v124, &v99);
      v124[12] = v101;
      v125 = 2;
      sub_344ADC(buf, 4, v61, &cf, v122);
      sub_DD7C4(&v122[8]);
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      v69 = sub_22AC44(v31, "VirtualAudioDeviceType");
      if (v69)
      {
        sub_47C930(v122, v69);
        if (v122[24])
        {
          v70 = *v122;
          v71 = *&v122[8];
          while (v70 != v71)
          {
            if (*(v70 + 23) >= 0)
            {
              v72 = v70;
            }

            else
            {
              v72 = *v70;
            }

            LODWORD(cf.__r_.__value_.__l.__data_) = bswap32(*v72);
            v120.__r_.__value_.__r.__words[0] = &cf;
            v73 = sub_47C6F0(cf.__r_.__value_.__l.__data_);
            sub_47C7E0(v73 + 5, buf);
            v70 += 24;
          }

LABEL_209:
          if (v122[24] == 1)
          {
            cf.__r_.__value_.__r.__words[0] = v122;
            sub_11C50(&cf);
          }

          v9 = v92;
          v78 = *sub_5544(1);
          v79 = v78;
          if (v78)
          {
            v80 = v78;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_54A0(&cf, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
              }

              else
              {
                cf = v102;
              }

              v81 = (cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &cf : cf.__r_.__value_.__r.__words[0];
              *v122 = v91;
              *&v122[4] = "SoundAutoConfigUtilities.mm";
              *&v122[12] = 1024;
              *&v122[14] = 139;
              *&v122[18] = 2080;
              *&v122[20] = v81;
              _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "%25s:%-5d Parsed SoundAutoConfig tuning at path %s into ConditionalOverlayTuning", v122, 0x1Cu);
              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }
            }
          }

          if (v130 < 0)
          {
            operator delete(v129);
          }

          sub_DD7C4(&buf[16]);
          sub_98A08(v100[0]);
          sub_98A08(v98[0]);
          sub_477A0(v96[0]);
          goto LABEL_225;
        }
      }

      else
      {
        v122[0] = 0;
        v122[24] = 0;
      }

      sub_47C834(&cf, v31, "VirtualAudioDeviceType");
      if (v94 == 1)
      {
        v74 = SHIBYTE(cf.__r_.__value_.__r.__words[2]);
        v75 = cf.__r_.__value_.__r.__words[0];
        v76 = (cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &cf : cf.__r_.__value_.__r.__words[0];
        LODWORD(v121) = bswap32(*v76);
        v120.__r_.__value_.__r.__words[0] = &v121;
        v77 = sub_47C6F0(v121);
        sub_47C7E0(v77 + 5, buf);
        if (v74 < 0)
        {
          operator delete(v75);
        }
      }

      goto LABEL_209;
    }

LABEL_225:
    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }

    if (v105)
    {
      CFRelease(v105);
    }

    if (v104 < 0)
    {
      operator delete(__p[0]);
    }

    ++v113;
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  v82 = *sub_5544(1);
  v83 = v82;
  if (v82)
  {
    v84 = v82;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      if (!theDict)
      {
        v89 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v89, "Could not construct");
      }

      Count = CFDictionaryGetCount(theDict);
      *buf = 136315906;
      *&buf[4] = "SoundAutoConfigUtilities.mm";
      *&buf[12] = 1024;
      *&buf[14] = 143;
      *&buf[18] = 2080;
      *&buf[20] = "SoundAutoConfigStrips.plist";
      v127 = 2048;
      v128 = Count;
      _os_log_impl(&dword_0, v84, OS_LOG_TYPE_INFO, "%25s:%-5d Parsed %s into %zu ConditionalOverlayTunings", buf, 0x26u);
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v9 < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }
}

void sub_47C2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  sub_1DB0E0(&a19);
  if (*(v61 - 233) < 0)
  {
    operator delete(*(v61 - 256));
  }

  sub_452F0(&a61);
  sub_47C8CC(qword_701640);
  _Unwind_Resume(a1);
}

double sub_47C624(uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t *sub_47C6F0(unsigned int a1)
{
  v1 = qword_701640;
  if (!qword_701640)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = *(v1 + 32);
      if (v3 <= a1)
      {
        break;
      }

      v1 = *v2;
      if (!*v2)
      {
        goto LABEL_7;
      }
    }

    if (v3 >= a1)
    {
      return v2;
    }

    v1 = v2[1];
    if (!v1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_47C7E0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_344844(a1, a2);
  }

  else
  {
    sub_3447C8(a1[1], a2);
    result = v3 + 144;
    a1[1] = v3 + 144;
  }

  a1[1] = result;
  return result;
}

const __CFString *sub_47C834(_BYTE *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  result = sub_22AC44(a2, __s);
  if (result)
  {

    return sub_1DAF78(a1, result);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }

  return result;
}

uint64_t sub_47C890(uint64_t a1)
{
  sub_98A08(*(a1 + 56));
  sub_98A08(*(a1 + 32));
  sub_477A0(*(a1 + 8));
  return a1;
}

void sub_47C8CC(char *a1)
{
  if (a1)
  {
    sub_47C8CC(*a1);
    sub_47C8CC(*(a1 + 1));
    v2 = (a1 + 40);
    sub_133AF0(&v2);

    operator delete(a1);
  }
}

void sub_47C930(char *a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Count = CFArrayGetCount(a2);
    v23 = 0uLL;
    v24 = 0;
    sub_124B4(&v23, Count);
    if (Count < 1)
    {
LABEL_17:
      *a1 = v23;
      *(a1 + 2) = v24;
      v24 = 0;
      v23 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      v18 = a1[24];
      v19 = *a1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        sub_1DAF78(&v20, ValueAtIndex);
        if (v22 != 1)
        {
          break;
        }

        v9 = *(&v23 + 1);
        if (*(&v23 + 1) >= v24)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v23 + 1) - v23) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            a1[24] = v18;
            *a1 = v19;
            sub_189A00();
          }

          if (0x5555555555555556 * ((v24 - v23) >> 3) > v12)
          {
            v12 = 0x5555555555555556 * ((v24 - v23) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          v25[4] = &v23;
          if (v13)
          {
            sub_1D8BB8(v13);
          }

          v14 = 8 * ((*(&v23 + 1) - v23) >> 3);
          *v14 = v20;
          *(v14 + 16) = v21;
          v21 = 0;
          v20 = 0uLL;
          v10 = 24 * v11 + 24;
          v15 = 24 * v11 - (*(&v23 + 1) - v23);
          memcpy((v14 - (*(&v23 + 1) - v23)), v23, *(&v23 + 1) - v23);
          v16 = v23;
          v17 = v24;
          *&v23 = v15;
          *(&v23 + 1) = v10;
          v24 = 0;
          v25[0] = v16;
          v25[2] = v16;
          v25[3] = v17;
          v25[1] = v16;
          sub_12574(v25);
        }

        else
        {
          **(&v23 + 1) = v20;
          *(v9 + 16) = v21;
          v21 = 0;
          v20 = 0uLL;
          v10 = v9 + 24;
        }

        *(&v23 + 1) = v10;
        if (v7 == ++v6)
        {
          goto LABEL_17;
        }
      }

      a1[24] = 0;
      *a1 = 0;
    }

    v25[0] = &v23;
    sub_11C50(v25);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_47CB5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12)
{
  v12[24] = a10;
  *v12 = a12;
  sub_1CC130(a1);
}

void sub_47CB6C(const __CFDictionary *a1, const UInt8 *__s, uint64_t a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_47CE20(&cf, a1, __s);
  if (v18 == 1)
  {
    v4 = cf;
    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (v5 == CFArrayGetTypeID())
      {
        sub_6A9B8(&v14, &cf);
        if (!v14)
        {
          v10 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v10, "Could not construct");
        }

        v12 = 0uLL;
        v13 = 0;
        sub_47CE74(&__p, v14, &v12);
        v19 = &v12;
        sub_11C50(&v19);
        if (v14)
        {
          CFRelease(v14);
        }

        v7 = __p.n128_u64[1];
        for (i = __p.n128_u64[0]; i != v7; i += 3)
        {
          sub_47D034(a3, i);
        }

        v12.n128_u64[0] = &__p;
        sub_11C50(&v12);
      }

      else
      {
        v8 = CFGetTypeID(v4);
        if (v8 == CFStringGetTypeID())
        {
          sub_23F428(&v12, &cf);
          if (!v12.n128_u64[0])
          {
            v11 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v11, "Could not construct");
          }

          sub_125D8(&__p, v12.n128_u64[0]);
          if (v12.n128_u64[0])
          {
            CFRelease(v12.n128_u64[0]);
          }

          sub_47D034(a3, &__p);
          if (v16 < 0)
          {
            operator delete(__p.n128_u64[0]);
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

void sub_47CD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  sub_452F0(&a9);
  sub_47CF0C(&a19);
  _Unwind_Resume(a1);
}

const void *sub_47CE20(uint64_t a1, const __CFDictionary *a2, const UInt8 *__s)
{
  result = sub_22AC44(a2, __s);
  if (result)
  {
    v5 = result;
    result = CFRetain(result);
    *a1 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v6;
  return result;
}

__n128 sub_47CE74(__n128 *a1, const __CFArray *a2, __n128 *a3)
{
  sub_47C930(&v6, a2);
  if (v8 == 1)
  {
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    sub_4817C(a1, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
    v9 = &v6;
    sub_11C50(&v9);
  }

  else
  {
    result = *a3;
    *a1 = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
  }

  return result;
}

uint64_t sub_47CF0C(uint64_t a1)
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

uint64_t sub_47CF4C(const __CFDictionary **a1)
{
  v2 = *a1;
  if (!v2)
  {
    goto LABEL_14;
  }

  LOWORD(v3) = sub_36CC44(v2, "calibrationMode");
  if (v3 >= 0x100u)
  {
    v5 = BYTE1(v3);
    return v3 | (v5 << 8);
  }

  if (!*a1)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v3 = sub_22AC44(*a1, "calibrationMode");
  if (v3)
  {
    v3 = sub_113A0(v3);
    v4 = (v3 & 0x100000000) == 0;
    LOBYTE(v3) = (v3 & 0x100000000) != 0 && v3 != 0;
    v5 = !v4;
  }

  else
  {
    v5 = 0;
  }

  return v3 | (v5 << 8);
}

void *sub_47D034(uint64_t a1, void **a2)
{
  result = sub_6F86C(a1, &v3, a2);
  if (!*result)
  {
    sub_23F700();
  }

  return result;
}

uint64_t sub_47D0A4(uint64_t a1, _DWORD *a2, uint64_t a3)
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

uint64_t sub_47D358(uint64_t a1, uint64_t a2)
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

uint64_t sub_47D4F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_47D5E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_47D6AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_47D770(uint64_t a1, uint64_t a2)
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

uint64_t sub_4A2EDC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_J98.cpp";
      v10 = 1024;
      v11 = 804;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for spatial recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_J98.cpp";
        v10 = 1024;
        v11 = 805;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_4A3114(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_J98.cpp";
      v10 = 1024;
      v11 = 816;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for multicam recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_J98.cpp";
        v10 = 1024;
        v11 = 817;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_4A334C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = sub_5544(21);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "RoutingSettings_J98.cpp";
      v10 = 1024;
      v11 = 855;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating subport config for webcam recording", &v8, 0x12u);
    }

    if (**(a1 + 8))
    {
      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoutingSettings_J98.cpp";
        v10 = 1024;
        v11 = 856;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return 0;
}

uint64_t sub_4A3584()
{
  qword_7087A0 = 0;
  qword_708798 = &qword_7087A0;
  qword_7087B8 = 0;
  qword_7087A8 = 0;
  unk_7087B0 = &qword_7087B8;
  qword_7087D8 = 0;
  qword_7087D0 = 0;
  qword_7087C0 = 0;
  unk_7087C8 = &qword_7087D0;
  return sub_3FC3D0(&qword_708798, &qword_709310, qword_7084C0);
}

uint64_t sub_4A35FC()
{
  qword_7087F0 = 0;
  qword_7087E8 = &qword_7087F0;
  qword_708808 = 0;
  qword_7087F8 = 0;
  unk_708800 = &qword_708808;
  qword_708828 = 0;
  qword_708820 = 0;
  qword_708810 = 0;
  unk_708818 = &qword_708820;
  sub_C57B4(v1, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_7087E8, v1, qword_7084A0);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  return sub_3FC3D0(&qword_7087E8, &qword_709310, qword_708498);
}

void sub_4A36E4()
{
  qword_708840 = 0;
  qword_708838 = &qword_708840;
  qword_708858 = 0;
  qword_708848 = 0;
  unk_708850 = &qword_708858;
  qword_708878 = 0;
  qword_708870 = 0;
  qword_708860 = 0;
  unk_708868 = &qword_708870;
  sub_C57B4(v0, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_708838, v0, qword_708378);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_4A377C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_708838);
  _Unwind_Resume(a1);
}

void sub_4A37AC()
{
  qword_708890 = 0;
  qword_708888 = &qword_708890;
  qword_7088A8 = 0;
  qword_708898 = 0;
  unk_7088A0 = &qword_7088A8;
  qword_7088C8 = 0;
  qword_7088C0 = 0;
  qword_7088B0 = 0;
  unk_7088B8 = &qword_7088C0;
  sub_C57B4(v0, 1, 1768776806, 1634231920);
  sub_3FC3D0(&qword_708888, v0, qword_708370);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_4A3844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_708888);
  _Unwind_Resume(a1);
}

uint64_t sub_4A3874()
{
  qword_7088E0 = 0;
  qword_7088D8 = &qword_7088E0;
  qword_7088F8 = 0;
  qword_7088E8 = 0;
  unk_7088F0 = &qword_7088F8;
  qword_708918 = 0;
  qword_708910 = 0;
  qword_708900 = 0;
  unk_708908 = &qword_708910;
  sub_3FC3D0(&qword_7088D8, &qword_709310, qword_7081B0);
  sub_3FD47C(&qword_7088D8, 6);
  sub_3FDE10(&qword_7088D8, &qword_709310, 2);
  return sub_3FD764(&qword_7088D8, &qword_709310, qword_707C40, dword_707CB8);
}

uint64_t sub_4A3938()
{
  qword_708930 = 0;
  qword_708928 = &qword_708930;
  qword_708948 = 0;
  qword_708938 = 0;
  unk_708940 = &qword_708948;
  qword_708968 = 0;
  qword_708960 = 0;
  qword_708950 = 0;
  unk_708958 = &qword_708960;
  sub_3FC3D0(&qword_708928, &qword_709310, qword_7081C0);
  sub_3FD47C(&qword_708928, 6);
  sub_3FDE10(&qword_708928, &qword_709310, 2);
  return sub_3FD764(&qword_708928, &qword_709310, qword_707C40, dword_707CB8);
}

uint64_t sub_4A39FC()
{
  qword_708980 = 0;
  qword_708978 = &qword_708980;
  qword_708998 = 0;
  qword_708988 = 0;
  unk_708990 = &qword_708998;
  qword_7089B8 = 0;
  qword_7089B0 = 0;
  qword_7089A0 = 0;
  unk_7089A8 = &qword_7089B0;
  sub_3FC3D0(&qword_708978, &qword_709310, &unk_7081D0);
  sub_3FDE10(&qword_708978, &qword_709310, 2);
  return sub_3FD764(&qword_708978, &qword_709310, qword_707C40, dword_707CB8);
}

uint64_t sub_4A3AB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  sub_3FC3D0(a2, &qword_709310, qword_708068);
  *buf = 0x6D6F767000000001;
  *&buf[8] = *sub_C53D8();
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_3FC3D0(a2, buf, qword_708088);
  if (*(a1 + 712))
  {
    *buf = 0x696D646600000001;
    *&buf[8] = 1;
    *&buf[16] = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_3FC3D0(a2, buf, qword_708078);
    *buf = 0x6D6F767000000001;
    *&buf[8] = 1;
    *&buf[16] = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_3FC3D0(a2, buf, qword_708098);
  }

  *buf = 0x6D736D7400000001;
  *&buf[8] = *sub_C53D8();
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_3FC3D0(a2, buf, qword_7080A8);
  *buf = 0x7261772000000001;
  *&buf[8] = *sub_C53D8();
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_3FC3D0(a2, buf, qword_7080B8);
  if (sub_10AA80())
  {
    *buf = 0x6D706D7500000001;
    *&buf[8] = *sub_C53D8();
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_3FC3D0(a2, buf, &unk_708108);
  }

  v4 = 0;
  qmemcpy(v13, "comicvmitcmg", 12);
  do
  {
    v5 = *(v13 + v4);
    *buf = 1;
    *&buf[4] = v5;
    *&buf[8] = *sub_C53D8();
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_3FC3D0(a2, buf, qword_708190);
    v4 += 4;
  }

  while (v4 != 12);
  for (i = 0; i != 20; i += 4)
  {
    v7 = *&aOvpvivpvcgpvcv[i];
    *buf = 1;
    *&buf[4] = v7;
    *&buf[8] = *sub_C53D8();
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_3FC3D0(a2, buf, qword_7081A0);
    *buf = 1;
    *&buf[4] = v7;
    *&buf[8] = *sub_C53D8();
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_3FD764(a2, buf, "", 0);
    if (!*(a1 + 713))
    {
      if ((*(a1 + 308) & 1) == 0)
      {
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingSettings_J98.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1298;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v8 = *(a1 + 304);
      *buf = 1;
      *&buf[4] = v7;
      *&buf[8] = *sub_C53D8();
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      sub_3FDE10(a2, buf, v8);
    }
  }

  sub_3FD764(a2, &qword_709310, qword_707C40, dword_707CB8);
  return sub_3FDE10(a2, &qword_709310, 2);
}

uint64_t sub_4A3F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  *a2 = a2 + 1;
  a2[4] = 0;
  a2[2] = 0;
  a2[3] = a2 + 4;
  a2[8] = 0;
  a2[7] = 0;
  a2[5] = 0;
  a2[6] = a2 + 7;
  sub_3FC3D0(a2, &qword_709310, qword_7080C8);
  *v12 = 0x696D646600000001;
  *&v12[8] = 1;
  *&v12[16] = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_3FC3D0(a2, v12, qword_7080D8);
  *v12 = 0x6D6F767000000001;
  *&v12[8] = *sub_C53D8();
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_3FC3D0(a2, v12, qword_7080E8);
  *v12 = 0x6D6F767000000001;
  *&v12[8] = 1;
  *&v12[16] = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_3FC3D0(a2, v12, qword_7080F8);
  if (sub_10AA80())
  {
    *v12 = 0x6D706D7500000001;
    *&v12[8] = *sub_C53D8();
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_3FC3D0(a2, v12, &unk_708108);
  }

  *v12 = 0x726D766300000001;
  *&v12[8] = *sub_C53D8();
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_3FC3D0(a2, v12, qword_7081A0);
  *v12 = 0x726D766300000001;
  *&v12[8] = *sub_C53D8();
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_3FD764(a2, v12, "", 0);
  if (*(a1 + 712))
  {
    *v12 = 0x726D766300000001;
    *&v12[8] = *sub_C53D8();
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_3FDE10(a2, v12, 2);
  }

  else
  {
    if ((*(a1 + 308) & 1) == 0)
    {
      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *v12 = 136315394;
        *&v12[4] = "RoutingSettings_J98.cpp";
        *&v12[12] = 1024;
        *&v12[14] = 1334;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v12, 0x12u);
      }

      goto LABEL_19;
    }

    v4 = *(a1 + 304);
    *v12 = 0x726D766300000001;
    *&v12[8] = *sub_C53D8();
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    sub_3FDE10(a2, v12, v4);
  }

  v5 = sub_DD858();
  if (sub_1192CC(v5) != 3)
  {
    if (*(a1 + 308))
    {
      sub_3FDE10(a2, &qword_709310, *(a1 + 304));
      return sub_3FD764(a2, &qword_709310, qword_707C40, dword_707CB8);
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "RoutingSettings_J98.cpp";
      *&v12[12] = 1024;
      *&v12[14] = 1347;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v12, 0x12u);
    }

LABEL_19:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_3FDE10(a2, &qword_709310, 2);
  return sub_3FD764(a2, &qword_709310, qword_707C40, dword_707CB8);
}

void sub_4A434C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_24A680(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4A43B8()
{
  qword_708BB0 = 0;
  qword_708BA8 = &qword_708BB0;
  qword_708BC8 = 0;
  qword_708BB8 = 0;
  unk_708BC0 = &qword_708BC8;
  qword_708BE8 = 0;
  qword_708BE0 = 0;
  qword_708BD0 = 0;
  unk_708BD8 = &qword_708BE0;
  sub_3FC3D0(&qword_708BA8, &qword_709310, qword_7082A8);
  return sub_3FD764(&qword_708BA8, &qword_709310, &unk_5C7460, 0);
}

void sub_4A4450()
{
  qword_708C00 = 0;
  qword_708BF8 = &qword_708C00;
  qword_708C18 = 0;
  qword_708C08 = 0;
  unk_708C10 = &qword_708C18;
  qword_708C38 = 0;
  qword_708C30 = 0;
  qword_708C20 = 0;
  unk_708C28 = &qword_708C30;
  sub_3FC3D0(&qword_708BF8, &qword_709310, qword_708480);
  sub_3FD764(&qword_708BF8, &qword_709310, &dword_707C88, 0);
  sub_C57B4(v4, 1, 1768776806, 1633759844);
  DWORD2(v0) = 0;
  *&v0 = 2;
  sub_C8A18(v1, 1768776806, &v0, 1633759844);
  sub_3FC3D0(&qword_708BF8, v4, qword_708480);
  sub_3FC3D0(&qword_708BF8, v1, qword_7082A8);
  sub_3FD764(&qword_708BF8, v4, &unk_5C7460, 0);
  sub_3FD764(&qword_708BF8, v1, &unk_5C7460, 0);
  sub_3FD764(&qword_708BF8, v4, &unk_5C7430, 1);
  sub_3FD764(&qword_708BF8, v1, &unk_5C7430, 1);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_4A45D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24A680(&qword_708BF8);
  _Unwind_Resume(a1);
}

uint64_t sub_4A4624()
{
  qword_708C50 = 0;
  qword_708C48 = &qword_708C50;
  qword_708C68 = 0;
  qword_708C58 = 0;
  unk_708C60 = &qword_708C68;
  qword_708C88 = 0;
  qword_708C80 = 0;
  qword_708C70 = 0;
  unk_708C78 = &qword_708C80;
  sub_3FC3D0(&qword_708C48, &qword_709310, qword_708478);
  v1[0] = 0x696D646600000001;
  v1[1] = 2;
  v2 = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  return sub_3FC3D0(&qword_708C48, v1, qword_708368);
}

void sub_4A46E4(uint64_t a1)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 56) = 3;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  operator new();
}

void sub_4A5110(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_708E38);
  sub_249E00(v1);
  _Unwind_Resume(a1);
}

void sub_4A51DC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v19 = 1;
  memset(v18, 0, sizeof(v18));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v4 != v5)
  {
    sub_AFD28(v18, v4++);
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  while (v6 != v7)
  {
    sub_AFD28(v18, v6++);
  }

  sub_53E8(v8, "speaker_general");
  v10 = 0;
  v9 = 0;
  v11 = 0;
  sub_53E8(v12, "speaker_general");
  sub_53E8(v13, "speaker_general");
  v15 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 1668051824;
  v24 = 1936749683;
  v25 = 0;
  v20 = 0x6473706700000001;
  v21 = 1869768046;
  memset(v23, 0, sizeof(v23));
  sub_4625C(v23, &v20, &v22, 3uLL);
  sub_2DDE10();
}

void sub_4A8D64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4ABCE0(uint64_t a1, int **a2)
{
  sub_88CE8(a1, "ChannelSelectorMap");
  *(a1 + 8) = sub_AFB90(a2);
  return a1;
}

uint64_t sub_4ABD34(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "BeamIndex");
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

void sub_4ABDD4(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4ABE08(uint64_t a1, char *a2, int *a3)
{
  sub_88CE8(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_4ABEA0(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4ABED4(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "REF_INPUT_CHANNEL_COUNTi");
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

void sub_4ABF74(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4ABFA8(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "IO_SAMPLE_RATE");
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

void sub_4AC048(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

void sub_4AC07C(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  operator new();
}

void sub_4AC428(_Unwind_Exception *a1)
{
  v3 = v2;
  (*(*v3 + 8))(v3);
  sub_24A81C(v1);
  _Unwind_Resume(a1);
}

double sub_4AC4A4()
{
  __p[23] = 20;
  strcpy(__p, "lsm_parameters.plist");
  sub_3101A8(v19, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v0 = sub_5544(20);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v19;
    if (v20 < 0)
    {
      v2 = v19[0];
    }

    *__p = 136315650;
    *&__p[4] = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 40;
    *&__p[18] = 2080;
    *&__p[20] = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Loading LSM Parameters: %s", __p, 0x1Cu);
  }

  sub_4DF130(&cf, v19);
  v3 = cf;
  if (!cf)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 44;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not load LSM Parameters from file, assuming this device has none.", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not load LSM Parameters from file, assuming this device has none.");
  }

  v4 = &off_6DAA48;
  v5 = 128;
  do
  {
    if (!v3)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
    }

    v6 = *(v4 - 2);
    v7 = *v4;
    v8 = sub_EC83C(v3, *v4);
    if (!v8 || (v9 = sub_725A0(v8), !HIDWORD(v9)))
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "RoutingHandlerAction_ReApplyCPMSPowerBudget.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 51;
        *&__p[18] = 2080;
        *&__p[20] = v7;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error loading parameter [%s] from lsm_parameters.plist.", __p, 0x1Cu);
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Error loading parameter [%s] from lsm_parameters.plist.");
    }

    *(v21 + v6) = v9;
    v3 = cf;
    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  result = *v21;
  xmmword_708EF8 = v21[0];
  unk_708F08 = v21[1];
  LOBYTE(dword_708F18) = 1;
  return result;
}

void sub_4ACB20(uint64_t a1, int a2)
{
  v3 = *sub_5544(18);
  v4 = v3;
  if (v3)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "Device_HAL_Common.mm";
      v7 = 1024;
      v8 = 548;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d stream ID = %u", &v5, 0x18u);
    }
  }

  operator new();
}

void sub_4ACC50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_4ACC98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DADB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4ACD0C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 1869968496;
  }

  else
  {
    v3 = 1768845428;
  }

  v15[0] = 1936482681;
  v15[1] = v3;
  v15[2] = 0;
  v14 = (*(*a1 + 32))(a1, v15, 0, 0);
  v4 = malloc_type_malloc(24 * v14, 0x10800404ACF7207uLL);
  if (v14)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  v6 = v4;
  (*(*a1 + 40))(a1, v15, 0, 0, &v14, v4);
  v7 = *v6;
  if (v7)
  {
    LODWORD(v8) = 0;
    v9 = (v6 + 2);
    do
    {
      v10 = *v9;
      v9 += 4;
      v8 = (v10 + v8);
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  free(v6);
  return v8;
}

void sub_4ACE60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4ACE78(AudioObjectID a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_5544(14);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v66.__cv_.__sig = *a2;
        *v66.__cv_.__opaque = *(a2 + 8);
        sub_22CE0(&v67);
      }
    }
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v67.__m_.__opaque, 0, sizeof(v67.__m_.__opaque));
    v67.__m_.__sig = 850045863;
    memset(v66.__cv_.__opaque, 0, sizeof(v66.__cv_.__opaque));
    v66.__cv_.__sig = 1018212795;
    v58 = 0;
    sub_745E8(v57, a1, a2, &v66, &v67, &v58);
    v52 = a1;
    v53 = *a2;
    v54 = *(a2 + 8);
    v55 = 0;
    v56 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v17 = *sub_5544(14);
      v18 = v17;
      if (v17)
      {
        v19 = v17;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v49 = *a2;
          v50 = *(a2 + 8);
          sub_22CE0(__p);
        }
      }

      v16 = 1852797029;
      goto LABEL_78;
    }

    v9 = sub_4ADAD0(&v52);
    if (!HIDWORD(v9) && *a3 == v9)
    {
      v10 = sub_5544(14);
      if ((*(v10 + 8) & 1) == 0)
      {
        goto LABEL_77;
      }

      v11 = *v10;
      if (!v11)
      {
        goto LABEL_77;
      }

      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v60 = 1024;
        v61 = 294;
        v62 = 1024;
        LODWORD(v63) = a1;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
      }

LABEL_14:

LABEL_77:
      v16 = 0;
LABEL_78:
      sub_73C20(v57);
      std::condition_variable::~condition_variable(&v66);
      std::mutex::~mutex(&v67);
      return v16;
    }

    v20 = sub_5544(14);
    if (*(v20 + 8))
    {
      v21 = *v20;
      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v49 = *a2;
          v50 = *(a2 + 8);
          sub_22CE0(__p);
        }
      }
    }

    buf = *a2;
    v16 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 4u, a3);
    if (v16)
    {
      v23 = *sub_5544(14);
      v24 = v23;
      if (v23)
      {
        v25 = v23;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v16);
          v47 = *a2;
          v48 = *(a2 + 8);
          sub_22CE0(&v49);
        }
      }

      goto LABEL_78;
    }

    v26 = sub_4ADAD0(&v52);
    if (!HIDWORD(v26) && *a3 == v26)
    {
      v27 = sub_5544(14);
      if ((*(v27 + 8) & 1) == 0)
      {
        goto LABEL_77;
      }

      v28 = *v27;
      if (!v28)
      {
        goto LABEL_77;
      }

      v12 = v28;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "HALPropertySynchronizer.h";
        v60 = 1024;
        v61 = 322;
        v62 = 1024;
        LODWORD(v63) = a1;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
      }

      goto LABEL_14;
    }

    v29 = 2000;
LABEL_44:
    v30 = sub_4ADAD0(&v52);
    v16 = HIDWORD(v30);
    if (HIDWORD(v30))
    {
      goto LABEL_78;
    }

    if (*a3 == v30)
    {
      v40 = sub_5544(14);
      if (*(v40 + 8))
      {
        v41 = *v40;
        if (v41)
        {
          v42 = v41;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v49 = *a2;
            v50 = *(a2 + 8);
            sub_22CE0(__p);
          }
        }
      }

      goto LABEL_77;
    }

    if (v29 <= 0)
    {
      v44 = *sub_5544(14);
      v45 = v44;
      if (v44)
      {
        v46 = v44;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v49 = *a2;
          v50 = *(a2 + 8);
          sub_22CE0(__p);
        }
      }

      v16 = 2003329396;
      goto LABEL_78;
    }

    v31.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v32 = sub_5544(14);
    if (*(v32 + 8))
    {
      v33 = *v32;
      if (v33)
      {
        v34 = v33;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v60 = 1024;
          v61 = 354;
          v62 = 2080;
          v63 = "with timeout";
          v64 = 1024;
          v65 = a1;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v67;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v67);
    v35.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v58 & 1) != 0 || v35.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_69:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v29 += (std::chrono::system_clock::now().__d_.__rep_ - v31.__d_.__rep_) / -1000;
        goto LABEL_44;
      }

      v36.__d_.__rep_ = v35.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v36.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_68:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v35.__d_.__rep_)
      {
        goto LABEL_69;
      }
    }

    std::chrono::steady_clock::now();
    v37.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v37.__d_.__rep_)
    {
      v38 = 0;
      goto LABEL_66;
    }

    if (v37.__d_.__rep_ < 1)
    {
      if (v37.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v38 = 0x8000000000000000;
        goto LABEL_66;
      }
    }

    else if (v37.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v38 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_64;
    }

    v38 = 1000 * v37.__d_.__rep_;
LABEL_64:
    if (v38 > (v36.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v39.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_67:
      std::condition_variable::__do_timed_wait(&v66, &buf, v39);
      std::chrono::steady_clock::now();
      goto LABEL_68;
    }

LABEL_66:
    v39.__d_.__rep_ = v38 + v36.__d_.__rep_;
    goto LABEL_67;
  }

  v13 = *sub_5544(14);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v66.__cv_.__sig = *a2;
      *v66.__cv_.__opaque = *(a2 + 8);
      sub_22CE0(&v67);
    }
  }

  return 2003332927;
}