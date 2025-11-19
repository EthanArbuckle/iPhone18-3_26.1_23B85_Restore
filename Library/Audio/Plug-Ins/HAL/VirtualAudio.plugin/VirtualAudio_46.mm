void sub_3DB1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_3DB280(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v56 = 4;
  v6 = sub_E92B4(a1 + 104, a2, 0);
  if ((a1 + 112) == v6)
  {
    v43 = sub_5544(14);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v54, a2);
      v45 = v55 >= 0 ? v54 : v54[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.cpp";
      v58 = 1024;
      v59 = 380;
      v60 = 2080;
      v61 = v45;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v55 < 0)
      {
        operator delete(v54[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v7 = v6;
  v8 = sub_5544(19);
  v9 = sub_5544(39);
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
    sub_22170(v54, a3);
    v47 = a3;
    if (v55 >= 0)
    {
      v14 = v54;
    }

    else
    {
      v14 = v54[0];
    }

    sub_22170(v52, a2);
    v15 = v53;
    v16 = v52[0];
    v17 = *(v7 + 14);
    sub_E896C(__p, a1);
    v18 = v52;
    if (v15 < 0)
    {
      v18 = v16;
    }

    if (v51 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136316418;
    *&buf[4] = "VolumeControl.cpp";
    v58 = 1024;
    v59 = 384;
    v60 = 2080;
    v61 = v14;
    v62 = 2080;
    v63 = v18;
    v64 = 1024;
    v65 = v17;
    v66 = 2080;
    v67 = v19;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting property '%s' on processor type '%s' index %u on chain '%s'.", buf, 0x36u);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    a3 = v47;
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v55 < 0)
    {
      operator delete(v54[0]);
    }
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v21 = std::__shared_weak_count::lock(v20);
  if (!v21 || !*(a1 + 24))
  {
LABEL_33:
    v29 = sub_5544(19);
    v30 = sub_5544(39);
    v31 = 0;
    *buf = 0x100000002;
    v32 = *(v29 + 8);
    while (1)
    {
      v33 = *&buf[v31];
      if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
      {
        break;
      }

      v31 += 4;
      if (v31 == 8)
      {
        goto LABEL_39;
      }
    }

    if ((v32 & v33) == 0)
    {
      v29 = v30;
    }

LABEL_39:
    v34 = *v29;
    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VolumeControl.cpp";
      v58 = 1024;
      v59 = 400;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeCommand: DSPChain unavailable for setting parameter", buf, 0x12u);
    }

LABEL_42:
    if (!v21)
    {
      return;
    }

    goto LABEL_43;
  }

  sub_E933C();
  v22 = *(v7 + 14);
  v23 = (*(qword_6EB0E0 + 88))();
  if (v23)
  {
    v24 = sub_5544(19);
    v25 = sub_5544(39);
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
        goto LABEL_47;
      }
    }

    if ((v27 & v28) == 0)
    {
      v24 = v25;
    }

LABEL_47:
    v35 = *v24;
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v54;
      sub_22170(v54, a3);
      if (v55 < 0)
      {
        v36 = v54[0];
      }

      v37 = v52;
      sub_22170(v52, a2);
      if (v53 < 0)
      {
        v37 = v52[0];
      }

      v38 = *(v7 + 14);
      sub_22170(__p, v23);
      v39 = v51;
      v40 = __p[0];
      sub_E896C(v48, a1);
      v41 = __p;
      if (v39 < 0)
      {
        v41 = v40;
      }

      if (v49 >= 0)
      {
        v42 = v48;
      }

      else
      {
        v42 = v48[0];
      }

      *buf = 136316674;
      *&buf[4] = "VolumeControl.cpp";
      v58 = 1024;
      v59 = 395;
      v60 = 2080;
      v61 = v36;
      v62 = 2080;
      v63 = v37;
      v64 = 1024;
      v65 = v38;
      v66 = 2080;
      v67 = v41;
      v68 = 2080;
      v69 = v42;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d VolumeCommand: Failed to get property '%s' on processor type '%s' index %u, err: %s on chain '%s'.", buf, 0x40u);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }
    }

    goto LABEL_42;
  }

LABEL_43:
  sub_1A8C0(v21);
}

void sub_3DB890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (v29)
  {
    sub_1A8C0(v29);
  }

  _Unwind_Resume(exception_object);
}

float sub_3DB944(uint64_t a1)
{
  HIDWORD(v5) = 0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DB280(a1, v2, 0x62796571u);
  v3 = (*(*a1 + 320))(a1, 0.0);
  sub_3DAB9C(a1, v3, 0x67676571u, &v5 + 1);
  return *(&v5 + 1);
}

void sub_3DBA0C(float *a1)
{
  v33 = 0.0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v2, 0x7370736Fu, &v33);
  a1[36] = v33 + 13.0;
  v3 = *sub_8703C();
  v4 = (*(v3 + 376))();
  v5 = (*(*a1 + 320))(a1);
  v6 = -1.5;
  v7 = -16.5;
  v8 = -11.5;
  v9 = -6.5;
  if (v4 >= 0x5A)
  {
    v9 = -1.5;
  }

  if (v4 >= 0x55)
  {
    v8 = v9;
  }

  if (v4 >= 0x50)
  {
    v7 = v8;
  }

  if (v4)
  {
    v6 = v7;
  }

  sub_E8A40(a1, v5, 1751934580, v6);
  v32 = 0.0;
  v10 = (*(*a1 + 320))(a1);
  v11 = 1819162421;
  v12 = 1819162672;
  v13 = 1819162677;
  v14 = 1819162928;
  v15 = 1819162933;
  if (v4 >= 0x60)
  {
    v15 = 1819160624;
  }

  if (v4 >= 0x5B)
  {
    v14 = v15;
  }

  if (v4 >= 0x56)
  {
    v13 = v14;
  }

  if (v4 >= 0x51)
  {
    v12 = v13;
  }

  if (v4 >= 0x4C)
  {
    v11 = v12;
  }

  if (v4)
  {
    v16 = v11;
  }

  else
  {
    v16 = 1819160624;
  }

  sub_3DAB9C(a1, v10, v16, &v32);
  v17 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v17, 1819176295, v32);
  if (v4)
  {
    v31 = 0.0;
    v18 = (*(*a1 + 320))(a1);
    sub_3DAB9C(a1, v18, 0x6C6E6C6Du, &v31);
    a1[38] = (v4 - (v33 + 13.0)) - v31;
    v19 = sub_5544(19);
    v20 = sub_5544(39);
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
        goto LABEL_30;
      }
    }

    if ((v22 & v23) == 0)
    {
      v19 = v20;
    }

LABEL_30:
    v24 = *v19;
    if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = a1[36];
      v26 = a1[38];
      sub_E896C(__p, a1);
      if (v30 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.cpp";
      v35 = 1024;
      v36 = 862;
      v37 = 2048;
      v38 = v25;
      v39 = 2048;
      v40 = v4;
      v41 = 2048;
      v42 = v26;
      v43 = 2080;
      v44 = v27;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HeadsetGraph : SPL Gain : %.2fdB SPLTarget :  %ludB LoudnessTarget :  %.2fdB on chain '%s'.", buf, 0x3Au);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    a1[38] = 0.0;
  }

  v28 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v28, 1818977907, a1[38]);
}

void sub_3DBE70(uint64_t a1)
{
  v2 = (*(*a1 + 320))(a1);

  sub_E8A40(a1, v2, 1919772466, 0.0);
}

void sub_3DBEE0(float *a1)
{
  v19 = 0;
  v2 = (*(*a1 + 320))(a1);
  sub_3DB280(a1, v2, 0x6279686Cu);
  v3 = (1.0 - a1[40]) * 20.0;
  if (*(sub_C2C1C() + 8))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_5544(19);
  v6 = sub_5544(39);
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
      goto LABEL_10;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

LABEL_10:
  v10 = *v5;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (v4 + a1[39]);
    sub_E896C(__p, a1);
    v12 = v18 >= 0 ? __p : __p[0];
    *buf = 136315906;
    *&buf[4] = "VolumeControl.h";
    v21 = 1024;
    v22 = 1194;
    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Total Remap Gain is %f on chain '%s'.", buf, 0x26u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((-1.5 - v4) < -20.0)
  {
    v13 = -1.5 - v4;
  }

  else
  {
    v13 = -20.0;
  }

  v14 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v14, 1751606900, -1.5 - v4);
  v15 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v15, 1751999346, v13);
  v16 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v16, 1919772516, v4 + a1[39]);
}

uint64_t sub_3DC1F0(_BYTE *a1, char a2)
{
  result = (*(*a1 + 144))(a1);
  a1[96] = a2;
  return result;
}

void sub_3DC244(uint64_t a1, int a2)
{
  v4 = sub_5544(19);
  v5 = sub_5544(39);
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
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = a2 ? "Unmute" : "Mute";
    sub_E896C(__p, a1);
    v11 = v14 >= 0 ? __p : __p[0];
    *buf = 136316162;
    *&buf[4] = "VolumeControl.h";
    v16 = 1024;
    v17 = 1076;
    v18 = 2080;
    v19 = v10;
    v20 = 2048;
    v21 = a1;
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d HeadsetGraph : %s %p on chain '%s'.", buf, 0x30u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a2 != 1)
  {
    v12 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v12, 1752659567, -3.4028e38);
  }
}

float sub_3DC448(uint64_t a1, float a2)
{
  v4 = *(sub_C2C1C() + 8);
  v5 = 0.0;
  if (v4)
  {
    v11 = 0.0;
    v6 = (*(*a1 + 320))(a1);
    sub_3DAB9C(a1, v6, 0x77327370u, &v11);
    v10 = 1.0;
    v7 = (*(*a1 + 320))(a1);
    sub_3DAB9C(a1, v7, 0x77326375u, &v10);
    v8 = v11 + (a2 * v10);
    if (v8 > v4)
    {
      return (v4 - v8) / v10;
    }
  }

  return v5;
}

float sub_3DC558(uint64_t a1, float a2)
{
  *(a1 + 160) = a2;
  v4 = *(sub_C2C1C() + 8);
  if (*(a1 + 96) != 1 || v4 == 0)
  {
    v6 = sub_5544(21);
    v7 = *v6;
    v8 = 0.0;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "VolumeControl.h";
      v22 = 1024;
      v23 = 1179;
      v9 = "%25s:%-5d no reduction\n";
      v10 = v7;
      v11 = 18;
LABEL_14:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v19 = 0.0;
    v12 = (*(*a1 + 320))(a1);
    sub_3DAB9C(a1, v12, 0x6C6E6C6Du, &v19);
    v13 = (v4 - *(a1 + 144)) - v19;
    v14 = 2.0;
    if (a2 > 0.89)
    {
      v14 = ((1.0 - a2) + (1.0 - a2)) / 0.11;
    }

    v15 = (*(*a1 + 320))(a1);
    sub_3DB280(a1, v15, 0x6279686Cu);
    v8 = v14 + (-(sub_3DB944(a1) - ((a2 + -1.0) * v13)) - (a2 * 4.0));
    v16 = sub_5544(21);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "VolumeControl.h";
      v22 = 1024;
      v23 = 1176;
      v24 = 2048;
      v25 = v8;
      v9 = "%25s:%-5d VLT remapper delta is %f";
      v10 = v17;
      v11 = 28;
      goto LABEL_14;
    }
  }

  return v8;
}

void sub_3DC7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 140);
  if (v3 != BYTE4(a2) || v3 == 0)
  {
    if (v3 == BYTE4(a2))
    {
      return;
    }
  }

  else if (*(a1 + 136) == *&a2)
  {
    return;
  }

  *(a1 + 136) = a2;
  *(a1 + 140) = BYTE4(a2);
  if (*&a2 != 0.0 && (a2 & 0x100000000) != 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 24);
        if (v8)
        {
          v11 = 0.0;
          v9 = (*(*a1 + 320))(a1);
          (*(*v8 + 64))(v8, v9, 1752659567, &v11, 0);
          sub_3DC910(v11, *(a1 + 136));
          atomic_store(v10, v8 + 198);
        }

        sub_1A8C0(v7);
      }
    }
  }
}

uint64_t sub_3DC910(float a1, float a2)
{
  if ((atomic_load_explicit(&qword_6FC2E0, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v6 = __cxa_guard_acquire(&qword_6FC2E0);
    a1 = v8;
    if (v6)
    {
      v14 = 0;
      v10 = *"";
      v11 = unk_5A40F0;
      v12 = xmmword_5A4100;
      v13 = unk_5A4110;
      qword_6FC2D0 = 0;
      unk_6FC2D8 = 0;
      qword_6FC2C8 = 0;
      sub_3AF6C4(&qword_6FC2C8, &v10, v15, 0x11uLL);
    }
  }

  if ((atomic_load_explicit(&qword_6FC300, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    v7 = __cxa_guard_acquire(&qword_6FC300);
    a1 = v9;
    if (v7)
    {
      v14 = 1117782016;
      v10 = xmmword_5A4124;
      v11 = unk_5A4134;
      v12 = xmmword_5A4144;
      v13 = unk_5A4154;
      qword_6FC2F0 = 0;
      unk_6FC2F8 = 0;
      qword_6FC2E8 = 0;
      sub_3AF6C4(&qword_6FC2E8, &v10, v15, 0x11uLL);
    }
  }

  v3 = sub_3DCAE8(qword_6FC2C8, qword_6FC2D0, a1);
  result = sub_3DCAE8(qword_6FC2E8, qword_6FC2F0, a2);
  v5 = dword_5A4168[17 * v3 + result];
  return result;
}

uint64_t sub_3DCAE8(uint64_t a1, uint64_t a2, float a3)
{
  if (a1 == a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "StandardUtilities.h";
      v11 = 1024;
      v12 = 1576;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = 0;
  v4 = ((a2 - a1) >> 2) - 1;
  do
  {
    if (*(a1 + 4 * v3) >= a3)
    {
      break;
    }

    ++v3;
  }

  while (v3 <= v4);
  if (v3 >= v4)
  {
    return ((a2 - a1) >> 2) - 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3DCC34(float *a1, float a2, float a3)
{
  sub_3DCDAC(a1, a2, a3);
  v5 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v5, 0x6D70766Fu, a1 + 37);
  (*(*a1 + 328))(a1);
  (*(*a1 + 344))(a1);
  (*(*a1 + 336))(a1);
  v6 = *(*a1 + 352);
  v7.n128_f32[0] = a2;

  return v6(a1, v7);
}

void sub_3DCDAC(uint64_t a1, float a2, float a3)
{
  v6 = sub_5544(19);
  v7 = sub_5544(39);
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
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    v12 = v21 >= 0 ? __p : __p[0];
    *buf = 136316418;
    *&buf[4] = "VolumeControl.h";
    v23 = 1024;
    v24 = 1045;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = a3;
    v29 = 2048;
    v30 = a1;
    v31 = 2080;
    v32 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d HeadsetGraph : Changing Volume : %.2f dB | Scalar : %.2f | %p on chain '%s'.", buf, 0x3Au);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v13, 1752659567, a2);
  v14 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v14, 1935898223, a3);
  if (*(a1 + 140) == 1)
  {
    sub_3DC910(a2, *(a1 + 136));
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = v15;
      v18 = std::__shared_weak_count::lock(v16);
      if (v18)
      {
        v19 = *(a1 + 24);
        if (v19)
        {
          atomic_store(v17, (v19 + 792));
        }

        sub_1A8C0(v18);
      }
    }
  }
}

void sub_3DD01C(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

double sub_3DD058(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u32[0];
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  if (v3 != v4)
  {
    while (((*(**v3 + 288))(*v3) & 1) == 0)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = *(a1 + 144);
  }

  if (v3 == v4)
  {
    v8 = sub_5544(19);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VolumeControl.cpp";
      v12 = 1024;
      v13 = 707;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d No volume command supports Scalar to dB convertion.", &v10, 0x12u);
    }

    return 0.0;
  }

  else
  {
    v6 = *(**v3 + 304);
    a2.n128_u32[0] = v2;

    v6(a2);
  }

  return result;
}

double sub_3DD1FC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u32[0];
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  if (v3 != v4)
  {
    while (((*(**v3 + 288))(*v3) & 1) == 0)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = *(a1 + 144);
  }

  if (v3 == v4)
  {
    v8 = sub_5544(19);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VolumeControl.cpp";
      v12 = 1024;
      v13 = 694;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d No volume command supports dB to Scalar convertion.", &v10, 0x12u);
    }

    return 0.0;
  }

  else
  {
    v6 = *(**v3 + 296);
    a2.n128_u32[0] = v2;

    v6(a2);
  }

  return result;
}

uint64_t sub_3DD3A0(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 280))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t sub_3DD418(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 136);
  for (i = *(result + 144); v3 != i; result = (*(*v7 + 272))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

uint64_t sub_3DD498(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 264))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_3DD508(uint64_t result)
{
  v1 = *(result + 136);
  v2 = *(result + 144);
  while (v1 != v2)
  {
    v3 = *v1++;
    result = (*(*v3 + 256))(v3);
  }

  return result;
}

uint64_t sub_3DD564(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 248))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_3DD5CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
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
  if (*(a1 + 24))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = std::__shared_weak_count::lock(v7);
      v8 = v7;
      if (v7)
      {
        v7 = *(a1 + 24);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = (v7->__vftable[1].__get_deleter)(v7, 1987013737, 1601402742, a2, 0);
    if (v8)
    {
      sub_1A8C0(v8);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_1A8C0(v6);
  return v9;
}

void sub_3DD69C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_1A8C0(v2);
  }

  sub_1A8C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3DD6BC(uint64_t result, float a2, float a3)
{
  v3 = *(result + 136);
  v4 = *(result + 144);
  if (v3 != v4)
  {
    while (1)
    {
      v7 = (*(**v3 + 136))();
      v9 = *v3;
      if (v7 == 1935895666)
      {
        break;
      }

      result = (*(*v9 + 136))(v9);
      if (result == 1684234860)
      {
        v9 = *v3;
        v8.n128_f32[0] = a2;
        goto LABEL_6;
      }

LABEL_7:
      if (++v3 == v4)
      {
        return result;
      }
    }

    v8.n128_f32[0] = a3;
LABEL_6:
    result = (*(*v9 + 16))(v9, v8);
    goto LABEL_7;
  }

  return result;
}

void sub_3DD7B0(void *a1)
{
  v2 = sub_5544(19);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "VolumeControl.cpp";
    v9 = 1024;
    v10 = 611;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d unMapping processors", &v7, 0x12u);
  }

  a1[20] = 0;
  v5 = a1[17];
  v4 = a1[18];
  while (v5 != v4)
  {
    v6 = *v5++;
    (*(*v6 + 192))(v6);
  }
}

uint64_t sub_3DD8AC(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 168))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t sub_3DD91C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 144))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_3DD984(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 == *(a1 + 144))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VolumeControl.cpp";
      v12 = 1024;
      v13 = 575;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a1 + 168) == 1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VolumeControl.cpp";
      v12 = 1024;
      v13 = 576;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): AggregateVolumeCommand has mixed volume unit types, min volume cannot be queried", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, "AggregateVolumeCommand has mixed volume unit types, min volume cannot be queried");
  }

  v2 = *(**v1 + 120);

  return v2();
}

uint64_t sub_3DDB90(uint64_t result, float a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 88))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_3DDBF8(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  v3 = *(a1 + 136);
  if (v3 == v2)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VolumeControl.cpp";
      v12 = 1024;
      v13 = 537;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = v3 + 8;
  do
  {
    result = (*(**(v4 - 8) + 72))(*(v4 - 8));
    if (result)
    {
      break;
    }

    v6 = v4 == v2;
    v4 += 8;
  }

  while (!v6);
  return result;
}

uint64_t sub_3DDD60(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 136);
  if (v8 == v7)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "VolumeControl.cpp";
      v18 = 1024;
      v19 = 528;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  do
  {
    result = (*(**v8 + 72))();
    if (result)
    {
      result = (*(**v8 + 64))(*v8, a2, a3, a4, a5);
    }

    ++v8;
  }

  while (v8 != v7);
  return result;
}

uint64_t sub_3DDF18(uint64_t a1, float a2)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 136);
  if (v3 == v4)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "VolumeControl.cpp";
      v13 = 1024;
      v14 = 486;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  while (1)
  {
    result = (*(**v3 + 40))();
    if (result)
    {
      break;
    }

    v3 += 8;
    if (v3 == v4)
    {
      return result;
    }
  }

  v7 = *(**v3 + 56);
  v6.n128_f32[0] = a2;

  return v7(v6);
}

uint64_t sub_3DE0EC(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  v3 = *(a1 + 136);
  if (v3 == v2)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VolumeControl.cpp";
      v12 = 1024;
      v13 = 463;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = v3 + 8;
  do
  {
    result = (*(**(v4 - 8) + 40))(*(v4 - 8));
    if (result)
    {
      break;
    }

    v6 = v4 == v2;
    v4 += 8;
  }

  while (!v6);
  return result;
}

uint64_t sub_3DE254(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  for (i = *(result + 144); v2 != i; result = (*(*v5 + 32))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_3DE2BC(uint64_t a1)
{
  *a1 = off_6D0D10;
  v3 = (a1 + 136);
  sub_13F058(&v3);

  return sub_13EFE4(a1);
}

void sub_3DE324(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D0E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3DE398(uint64_t a1, unsigned int a2)
{
  v4 = sub_275004(a1 + 104, a2, 0);
  if ((a1 + 112) == v4)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v14 = v17 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v19 = "VolumeControl.cpp";
      v20 = 1024;
      v21 = 296;
      v22 = 2080;
      v23 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v5 = v4;
  v6 = *(a1 + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(a1 + 24))
  {
    sub_E933C();
    v9 = *(v5 + 14);
    v10 = (*(qword_6EB0E0 + 56))();
  }

  else
  {
    v10 = 0;
  }

  sub_1A8C0(v8);
  return v10;
}

void sub_3DE5A4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_E92B4(a1 + 104, a2, 0);
  if ((a1 + 112) == v6)
  {
    v43 = sub_5544(14);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v54, a2);
      v45 = v55 >= 0 ? v54 : v54[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.cpp";
      v57 = 1024;
      v58 = 335;
      v59 = 2080;
      v60 = v45;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v55 < 0)
      {
        operator delete(v54[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v7 = v6;
  v8 = sub_5544(19);
  v9 = sub_5544(39);
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
    sub_22170(v54, a3);
    v47 = a3;
    if (v55 >= 0)
    {
      v14 = v54;
    }

    else
    {
      v14 = v54[0];
    }

    sub_22170(v52, a2);
    v15 = v53;
    v16 = v52[0];
    v17 = *(v7 + 14);
    sub_E896C(__p, a1);
    v18 = v52;
    if (v15 < 0)
    {
      v18 = v16;
    }

    if (v51 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136316418;
    *&buf[4] = "VolumeControl.cpp";
    v57 = 1024;
    v58 = 338;
    v59 = 2080;
    v60 = v14;
    v61 = 2080;
    v62 = v18;
    v63 = 1024;
    v64 = v17;
    v65 = 2080;
    v66 = v19;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Setting property '%s' on processor type '%s' index %u on chain '%s'.", buf, 0x36u);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    a3 = v47;
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (v55 < 0)
    {
      operator delete(v54[0]);
    }
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v21 = std::__shared_weak_count::lock(v20);
  if (!v21 || !*(a1 + 24))
  {
LABEL_33:
    v29 = sub_5544(19);
    v30 = sub_5544(39);
    v31 = 0;
    *buf = 0x100000002;
    v32 = *(v29 + 8);
    while (1)
    {
      v33 = *&buf[v31];
      if (((v32 & v33) != 0) != ((*(v30 + 8) & v33) != 0))
      {
        break;
      }

      v31 += 4;
      if (v31 == 8)
      {
        goto LABEL_39;
      }
    }

    if ((v32 & v33) == 0)
    {
      v29 = v30;
    }

LABEL_39:
    v34 = *v29;
    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VolumeControl.cpp";
      v57 = 1024;
      v58 = 353;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeCommand: DSPChain unavailable for setting parameter", buf, 0x12u);
    }

LABEL_42:
    if (!v21)
    {
      return;
    }

    goto LABEL_43;
  }

  sub_E933C();
  v22 = *(v7 + 14);
  v23 = (*(qword_6EB0E0 + 80))();
  if (v23)
  {
    v24 = sub_5544(19);
    v25 = sub_5544(39);
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
        goto LABEL_47;
      }
    }

    if ((v27 & v28) == 0)
    {
      v24 = v25;
    }

LABEL_47:
    v35 = *v24;
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v54;
      sub_22170(v54, a3);
      if (v55 < 0)
      {
        v36 = v54[0];
      }

      v37 = v52;
      sub_22170(v52, a2);
      if (v53 < 0)
      {
        v37 = v52[0];
      }

      v38 = *(v7 + 14);
      sub_22170(__p, v23);
      v39 = v51;
      v40 = __p[0];
      sub_E896C(v48, a1);
      v41 = __p;
      if (v39 < 0)
      {
        v41 = v40;
      }

      if (v49 >= 0)
      {
        v42 = v48;
      }

      else
      {
        v42 = v48[0];
      }

      *buf = 136316674;
      *&buf[4] = "VolumeControl.cpp";
      v57 = 1024;
      v58 = 348;
      v59 = 2080;
      v60 = v36;
      v61 = 2080;
      v62 = v37;
      v63 = 1024;
      v64 = v38;
      v65 = 2080;
      v66 = v41;
      v67 = 2080;
      v68 = v42;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d VolumeCommand: Failed to set property '%s' on processor type '%s' index %u, err: %s on chain '%s'.", buf, 0x40u);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v51 < 0)
      {
        operator delete(__p[0]);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }
    }

    goto LABEL_42;
  }

LABEL_43:
  sub_1A8C0(v21);
}

void sub_3DEBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3DEC5C(uint64_t a1, unsigned int a2)
{
  v4 = sub_275004(a1 + 104, a2, 0);
  if ((a1 + 112) == v4)
  {
    v12 = a2;
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v12);
      v15 = v18 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v20 = "VolumeControl.cpp";
      v21 = 1024;
      v22 = 362;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v5 = v4;
  *buf = 0;
  v6 = *(a1 + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(a1 + 24))
  {
    sub_E933C();
    v9 = *(v5 + 14);
    v10 = (*(qword_6EB0E0 + 88))() == 0;
  }

  else
  {
    v10 = 0;
  }

  sub_1A8C0(v8);
  return v10;
}

unint64_t sub_3DEE80(uint64_t a1)
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

BOOL sub_3DEEFC(uint64_t a1, void *a2)
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

void sub_3DEF74(uint64_t a1)
{
  sub_367FA8(a1);

  operator delete();
}

uint64_t sub_3DEFB0(uint64_t a1, _DWORD *a2)
{
  v2 = a2[3];
  if (v2 != 1986817381 && v2 != 1936744814)
  {
    return 0;
  }

  if ((*(*a2 + 144))(a2) == 1886679669)
  {
    return 1768845428;
  }

  return 0;
}

uint64_t sub_3DF030(uint64_t a1, _DWORD *a2)
{
  v2 = a2[3];
  if (v2 <= 1852601963)
  {
    v3 = v2 == 1668047723 || v2 == 1684370292;
    v4 = 1685287523;
  }

  else if (v2 > 1937072757)
  {
    v3 = v2 == 1986817381;
    v4 = 1937072758;
  }

  else
  {
    v3 = v2 == 1852601964;
    v4 = 1936744814;
  }

  if (v3 || v2 == v4)
  {
    return (*(*a2 + 144))(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DF0DC(uint64_t a1, _DWORD *a2)
{
  v2 = a2[3];
  if (v2 == 1936744814)
  {
    v3 = 1836281891;
  }

  else
  {
    if (v2 != 1986817381)
    {
      return 0;
    }

    v3 = 1836475427;
  }

  if ((*(*a2 + 144))(a2) == 1886679669)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DF170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 == 1986817381)
  {
    v3 = 1986290211;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1937072758)
  {
    v4 = 1937138723;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1936744814)
  {
    v5 = 1936748067;
  }

  else
  {
    v5 = 0;
  }

  if (v2 == 1852601964)
  {
    v6 = 1852601891;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1937072757)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 == 1685287523)
  {
    v8 = 1936941859;
  }

  else
  {
    v8 = 0;
  }

  if (v2 == 1684370292)
  {
    v9 = 1835295779;
  }

  else
  {
    v9 = v8;
  }

  if (v2 == 1668047723)
  {
    v10 = 1668506403;
  }

  else
  {
    v10 = v9;
  }

  if (v2 <= 1852601963)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_3DF240(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 1986817381)
  {
    return 0;
  }

  if ((*(*a2 + 144))(a2) == 1886679669)
  {
    return 1768845428;
  }

  return 0;
}

uint64_t sub_3DF2B4(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 1986817381)
  {
    return 0;
  }

  if ((*(*a2 + 144))(a2) == 1886679669)
  {
    return 1768845428;
  }

  return 0;
}

uint64_t sub_3DF328(uint64_t a1, _DWORD *a2)
{
  result = 0;
  v3 = a2[3];
  if (v3 <= 1936744813)
  {
    if (v3 == 1836414053)
    {
LABEL_8:
      if ((*(*a2 + 144))(a2) == 1886679669)
      {
        return 1768845428;
      }

      else
      {
        return 0;
      }
    }

    v4 = 1936682095;
LABEL_7:
    if (v3 != v4)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v3 != 1986817381 && v3 != 1937072758)
  {
    v4 = 1936744814;
    goto LABEL_7;
  }

  v5 = *(*a2 + 144);

  return v5(a2);
}

uint64_t sub_3DF41C(uint64_t a1, _DWORD *a2)
{
  v2 = a2[3];
  if (v2 <= 1852601963)
  {
    if (v2 <= 1685287522)
    {
      v3 = v2 == 1668047723;
      v4 = 1684370292;
    }

    else
    {
      v3 = v2 == 1685287523 || v2 == 1784767339;
      v4 = 1836414053;
    }
  }

  else if (v2 > 1937072748)
  {
    v3 = v2 == 1937072749 || v2 == 1986817381;
    v4 = 1937072758;
  }

  else
  {
    v3 = v2 == 1852601964 || v2 == 1936682095;
    v4 = 1936744814;
  }

  if (v3 || v2 == v4)
  {
    return (*(*a2 + 144))(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DF508(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 1986817381)
  {
    return 0;
  }

  if ((*(*a2 + 144))(a2) == 1886679669)
  {
    return 1836475490;
  }

  return 0;
}

uint64_t sub_3DF57C(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 1986817381)
  {
    return 0;
  }

  if ((*(*a2 + 144))(a2) == 1886679669)
  {
    return 1836479331;
  }

  return 0;
}

uint64_t sub_3DF5F0(uint64_t a1, _DWORD *a2)
{
  result = 0;
  v3 = a2[3];
  if (v3 <= 1936744813)
  {
    if (v3 == 1836414053)
    {
      v6 = (*(*a2 + 144))(a2);
      v5 = 1953002101;
      v4 = v6 == 1886679669;
    }

    else
    {
      if (v3 != 1936682095)
      {
        return result;
      }

      v4 = (*(*a2 + 144))(a2) == 1886679669;
      v5 = 1953002099;
    }
  }

  else
  {
    if (v3 == 1986817381)
    {
      return 1987013732;
    }

    if (v3 == 1937072758)
    {
      return 1937140836;
    }

    if (v3 != 1936744814)
    {
      return result;
    }

    v4 = (*(*a2 + 144))(a2) == 1886679669;
    v5 = 1836281966;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3DF748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 == 1986817381)
  {
    v3 = 1987013741;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1937072758)
  {
    v4 = 1937140845;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1937072749)
  {
    v5 = 1936553332;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 1936744814)
  {
    v6 = 1936744814;
  }

  else
  {
    v6 = 0;
  }

  if (v2 == 1936682095)
  {
    v7 = 1936682095;
  }

  else
  {
    v7 = v6;
  }

  if (v2 == 1852601964)
  {
    v8 = 1852601964;
  }

  else
  {
    v8 = v7;
  }

  if (v2 <= 1937072748)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 == 1836414053)
  {
    v10 = 1836414053;
  }

  else
  {
    v10 = 0;
  }

  if (v2 == 1784767339)
  {
    v11 = 1784767339;
  }

  else
  {
    v11 = v10;
  }

  if (v2 == 1685287523)
  {
    v12 = 1936945763;
  }

  else
  {
    v12 = v11;
  }

  if (v2 == 1684370292)
  {
    v13 = 1835295859;
  }

  else
  {
    v13 = 0;
  }

  if (v2 == 1668047723)
  {
    v14 = 1668510307;
  }

  else
  {
    v14 = v13;
  }

  if (v2 <= 1685287522)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v2 <= 1852601963)
  {
    return v15;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_3DF86C(uint64_t a1, uint64_t a2)
{
  if ((~*(a2 + 56) & 3) != 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "HP_Device.cpp";
        v9 = 1024;
        v10 = 1734;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: both the sample time and the host time need to be valid for return value", &v7, 0x12u);
      }
    }
  }

  if (*a2 == 0.0)
  {
    (*(*a1 + 616))(a1, a2, *a2);
  }

  return 1;
}

double sub_3DF994(uint64_t a1)
{
  if (!(*(*a1 + 528))(a1))
  {
    return 0.0;
  }

  v2 = *(*a1 + 648);

  v2(a1);
  return result;
}

double sub_3DFA30(void *a1)
{
  v1 = a1[35];
  v2 = a1[36];
  if (((v2 - v1) & 0x7FFFFFFF8) != 0)
  {
    if (v2 == v1)
    {
      return 0.0;
    }

LABEL_8:
    v6 = *v1;
    if (v6)
    {
      return *(*(v6 + 104) + 16);
    }

    return 0.0;
  }

  v1 = a1[38];
  v3 = a1[39];
  result = 0.0;
  if (((v3 - v1) & 0x7FFFFFFF8) != 0 && v3 != v1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_3DFA9C(double a1)
{
  if (a1 < 32000.0)
  {
    return 256;
  }

  if (a1 < 64000.0)
  {
    return 512;
  }

  if (a1 < 128000.0)
  {
    return 1024;
  }

  if (a1 >= 256000.0)
  {
    return 4096;
  }

  return 2048;
}

void sub_3DFB10()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "HP_Device.cpp";
      v5 = 1024;
      v6 = 1624;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Not supported by this device", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1852797029;
}

unint64_t sub_3DFBF4(_DWORD *a1, unint64_t *a2, unsigned int *a3, double a4)
{
  if (!dword_6FC3A8)
  {
    dword_6FC3A8 = 12000;
    dword_6FC3AC = 7200;
    byte_6FC3B0 = 1;
  }

  LODWORD(a4) = a1[68];
  v6 = (*&a4 / (*(*a1 + 656))(a1) * 24000000.0);
  *a2 = v6;
  result = __udivti3();
  if (byte_6FC3B0)
  {
    v8 = 2400;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  if (result >= 0x16E360)
  {
    if (result > 0x43CF5F)
    {
      goto LABEL_11;
    }

    v9 = &dword_6FC3AC;
  }

  else
  {
    v9 = &dword_6FC3A8;
  }

  v8 = *v9;
  *a3 = v8;
LABEL_11:
  if (result < v8)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_3DFD14(_DWORD *a1, int a2)
{
  result = (*(*a1 + 472))(a1);
  if ((result & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "HP_Device.cpp";
      v10 = 1024;
      v11 = 1501;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): buffer size isn't valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (a1[68] != a2)
  {
    operator new();
  }

  return result;
}

void sub_3DFF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3DFF4C(_DWORD *a1, int a2)
{
  result = (*(*a1 + 472))(a1);
  if ((result & 1) == 0)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "HP_Device.cpp";
      v10 = 1024;
      v11 = 1492;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): buffer size isn't valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (a1[68] != a2)
  {
    operator new();
  }

  return result;
}

void sub_3E0144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

unsigned int sub_3E0188(_DWORD *a1)
{
  if (sub_3E01F4(a1))
  {
    return a1[68];
  }

  else
  {
    return vcvtpd_u64_f64((*(*a1 + 648))(a1) * 0.25);
  }
}

BOOL sub_3E01F4(void *a1)
{
  v1 = a1[35];
  v2 = a1[36] - v1;
  if ((v2 & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    v4 = (v2 >> 3);
    do
    {
      v5 = *(*(*(v1 + 8 * v3++) + 104) + 24);
    }

    while (v5 == 1819304813 && v3 < v4);
    if (v5 != 1819304813)
    {
      return 1;
    }
  }

  v7 = a1[38];
  v8 = a1[39] - v7;
  if ((v8 & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  v9 = 0;
  v10 = (v8 >> 3);
  do
  {
    v11 = *(*(*(v7 + 8 * v9++) + 104) + 24);
  }

  while (v11 == 1819304813 && v9 < v10);
  return v11 != 1819304813;
}

unsigned int sub_3E0288(_DWORD *a1)
{
  if (sub_3E01F4(a1))
  {
    return a1[68];
  }

  else
  {
    return vcvtpd_u64_f64((*(*a1 + 648))(a1) * 0.0003);
  }
}

uint64_t *sub_3E0308(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_54C20(*v1, 1, *(v1 + 48), *(v1 + 200), (v1 + 176), *(v1 + 53));
    *(v1 + 200) = 0;
    sub_54C20(*v1, 0, *(v1 + 48), *(v1 + 232), (v1 + 208), *(v1 + 53));
    *(v1 + 232) = 0;
    v2 = *(v1 + 32);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(v1 + 40);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v1 + 208);
    if (v4)
    {
      *(v1 + 216) = v4;
      operator delete(v4);
    }

    v5 = *(v1 + 176);
    if (v5)
    {
      *(v1 + 184) = v5;
      operator delete(v5);
    }

    v6 = *(v1 + 152);
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(v1 + 128);
    if (v7)
    {
      operator delete(v7);
    }

    operator delete();
  }

  return result;
}

void sub_3E03F4(uint64_t a1, uint64_t a2, int a3, unsigned int a4, _BYTE *a5)
{
  v5 = *(a1 + 248);
  for (i = *(v5 + 8); i != *(v5 + 16); i += 8)
  {
    if (*i == a2)
    {
      if (a2)
      {
LABEL_7:
        sub_178D38(*(a1 + 248), a2, a3, a4, a5);
        return;
      }

      break;
    }

    if (*(*i + 8) == a2)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 256);
  for (j = *(v7 + 8); j != *(v7 + 16); j += 8)
  {
    if (*j == a2)
    {
      if (!a2)
      {
        return;
      }

LABEL_14:
      sub_3E046C(v7, a2, a3, a4, a5);
      return;
    }

    if (*(*j + 8) == a2)
    {
      goto LABEL_14;
    }
  }
}

void sub_3E046C(uint64_t a1, uint64_t a2, int a3, unsigned int a4, _BYTE *a5)
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
      sub_212460(a1, v9);

      sub_21250C(a1);
    }
  }
}

void sub_3E0580(uint64_t a1, uint64_t a2)
{
  if (sub_552D0(a1, a2))
  {
    operator new();
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "HP_Device.cpp";
      v7 = 1024;
      v8 = 1355;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): IOProc wasn't previously added", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1852797029;
}

void sub_3E07E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E085C(void *a1)
{
  v2 = a1[31];
  v3 = *(v2 + 112);
  v4 = *(v2 + 116);
  if (v3)
  {
    sub_3E0A08(v2);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    sub_3E0A08(v2);
  }

  (*(*a1 + 592))(a1, 1);
  if (v3)
  {
LABEL_7:
    (*(*a1 + 592))(a1, 0);
  }

LABEL_8:
  v5 = a1[32];
  if (*(v5 + 112) || *(v5 + 116))
  {
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    while (v7 != v6)
    {
      v8 = *v7;
      if (*(*v7 + 54) == 1)
      {
        *(v8 + 54) = 0;
        --*(v5 + 112);
        sub_212460(v5, v8);
        v6 = *(v5 + 16);
      }

      ++v7;
    }

    sub_21250C(v5);
    *(v5 + 116) = 0;
    if (v4)
    {
      (*(*a1 + 592))(a1, 1);
    }

    if (v3)
    {
      v9 = *(*a1 + 592);

      v9(a1, 0);
    }
  }
}

void sub_3E0A08(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = *v3;
    if (*(*v3 + 54) == 1)
    {
      *(v4 + 54) = 0;
      --*(a1 + 112);
      sub_55360(a1, v4);
      v2 = *(a1 + 16);
    }

    ++v3;
  }

  sub_5540C(a1);
  *(a1 + 116) = 0;
}

void sub_3E0B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E0B78(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = a1[32];
  for (i = *(v8 + 8); i != *(v8 + 16); i += 8)
  {
    if (*i == a2)
    {
      if (a2)
      {
LABEL_7:
        sub_2121BC(v8, a2, a3, a4);
        if (*(a1[32] + 112) != 1)
        {
          return;
        }

        goto LABEL_20;
      }

      break;
    }

    if (*(*i + 8) == a2)
    {
      goto LABEL_7;
    }
  }

  v10 = a1[31];
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  if (v11 == v12)
  {
    v14 = 0;
    if (!a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    while (1)
    {
      v13 = *v11;
      if (*v11 == a2)
      {
        break;
      }

      if (*(v13 + 8) == a2)
      {
        goto LABEL_17;
      }

      if (++v11 == v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = a2;
LABEL_17:
    v14 = v13 != 0;
    if (!a2)
    {
      goto LABEL_19;
    }
  }

  if (!v14)
  {
    return;
  }

LABEL_19:
  sub_2122CC(v10, a2, a3, a4);
  if (*(a1[31] + 112) != 1)
  {
    return;
  }

LABEL_20:
  (*(*a1 + 584))(a1, a3, a4, a2 == 0);
}

uint64_t sub_3E0F18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (sub_552D0(a1, a2))
    {
      v6 = 280;
      if ((a4 & 1) == 0)
      {
        v6 = 304;
      }

      v7 = 288;
      if ((a4 & 1) == 0)
      {
        v7 = 312;
      }

      if (((*(a1 + v7) - *(a1 + v6)) & 0x7FFFFFFF8) != 0)
      {
        operator new();
      }

      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HP_Device.cpp";
          v18 = 1024;
          v19 = 1210;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Device doesn't have the given section", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "HP_Device.cpp";
      v18 = 1024;
      v19 = 1209;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): IOProc wasn't previously added", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = &off_6DDDD0;
    v12[2] = 1852797029;
  }

  v8 = *(*a1 + 360);

  return v8();
}

void sub_3E126C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E12B0(void *a1, uint64_t a2)
{
  v4 = a1[32];
  for (i = *(v4 + 8); ; i += 8)
  {
    if (i == *(v4 + 16))
    {
      goto LABEL_10;
    }

    if (*i == a2)
    {
      break;
    }

    if (*(*i + 8) == a2)
    {
      goto LABEL_7;
    }
  }

  if (!a2)
  {
LABEL_10:
    v9 = a1[31];
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    if (v10 == v11)
    {
      v13 = 0;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      while (1)
      {
        v12 = *v10;
        if (*v10 == a2)
        {
          break;
        }

        if (*(v12 + 8) == a2)
        {
          goto LABEL_18;
        }

        if (++v10 == v11)
        {
          v12 = 0;
          goto LABEL_18;
        }
      }

      v12 = a2;
LABEL_18:
      v13 = v12 != 0;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    if (!v13)
    {
      return;
    }

LABEL_20:
    sub_4C9A4(v9, a2);
    v14 = a1[31];
    v15 = *(v14 + 112);
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      if (v15)
      {
        return;
      }

      v16 = 1;
    }

    if (*(v14 + 116) == v16)
    {
      goto LABEL_28;
    }

    return;
  }

LABEL_7:
  sub_212A14(v4, a2);
  v6 = a1[32];
  v7 = *(v6 + 112);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    if (v7)
    {
      return;
    }

    v8 = 1;
  }

  if (*(v6 + 116) == v8)
  {
LABEL_28:
    (*(*a1 + 576))(a1, a2 == 0);
  }
}

void sub_3E1660(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 400))(a1);
  v4 = *(a1 + 248);
  for (i = *(v4 + 8); i != *(v4 + 16); ++i)
  {
    v6 = *i;
    if (*i == a2 || *(v6 + 8) == a2)
    {
      sub_93F70(*(a1 + 248), v6);
      v7 = i + 1;
      v8 = *(v4 + 16);
      if (i + 1 != v8)
      {
        do
        {
          v9 = *v7;
          *v7++ = 0;
          sub_140D84(i++, v9);
        }

        while (v7 != v8);
        v8 = *(v4 + 16);
      }

      while (v8 != i)
      {
        sub_140D84(--v8, 0);
      }

      *(v4 + 16) = i;
      break;
    }
  }

  if (*(a1 + 368) == 1)
  {
    *(a1 + 368) = 0;
  }
}

uint64_t sub_3E1758(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  while (v3 != v4)
  {
    if (*v3 == a2)
    {
      if (a2)
      {
LABEL_15:
        v8 = sub_5544(14);
        v9 = *v8;
        if (*v8)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v12 = "HP_Device.cpp";
            v13 = 1024;
            v14 = 1117;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): IOProc was present in the clocked IO proc list; Do_RemoveIOProc is not supported for clocked IO procs", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 1852797029;
      }

      break;
    }

    if (*(*v3 + 8) == a2)
    {
      goto LABEL_15;
    }

    v3 += 8;
  }

  v5 = *(result + 248);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  while (v6 != v7)
  {
    if (*v6 == a2)
    {
      if (a2)
      {
LABEL_13:
        operator new();
      }

      return result;
    }

    if (*(*v6 + 8) == a2)
    {
      goto LABEL_13;
    }

    v6 += 8;
  }

  return result;
}

void sub_3E1978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E19C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  while (v3 != v4)
  {
    if (*(*v3 + 8) == a2)
    {
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v9 = "HP_Device.cpp";
          v10 = 1024;
          v11 = 1105;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): IOProc was already added", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v3 += 8;
  }

  operator new();
}

void sub_3E1BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3E1BF8(uint64_t a1, uint64_t a2)
{
  result = sub_552D0(a1, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_3E1CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3E1D0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[31];
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  while (v5 != v6)
  {
    if (*(*v5 + 40) == a3 && *(*v5 + 32) == a2)
    {
      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HP_Device.cpp";
          v18 = 1024;
          v19 = 1054;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): An IOProc ID has already been created for the given IOBlock", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v5 += 8;
  }

  if (!(*(*a1 + 272))(a1))
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "HP_Device.cpp";
      v18 = 1024;
      v19 = 1087;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Can't create the IOProc ID in the current thread context", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = &off_6DDDD0;
    v14[2] = 1852797029;
  }

  v15 = 0;
  if ((*(*a1 + 280))(a1, 0, &v15))
  {
    v7 = a1[31];
    operator new();
  }

  return 0;
}

void sub_3E219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, std::exception a15, int a16)
{
  if (a2)
  {
    v18 = v16[26];
    if (v18)
    {
      v16[27] = v18;
      operator delete(v18);
    }

    v19 = v16[22];
    if (v19)
    {
      v16[23] = v19;
      operator delete(v19);
    }

    v20 = v16[19];
    if (v20)
    {
      operator delete(v20);
    }

    if (*v17)
    {
      operator delete(*v17);
    }

    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3E22A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[32];
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  while (v5 != v6)
  {
    v7 = *(*v5 + 8);
    if (*(*v5 + 24) == 1)
    {
      if (v7 == a2 && *(*v5 + 16) == a3)
      {
LABEL_13:
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10)
        {
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "HP_Device.cpp";
            v19 = 1024;
            v20 = 1010;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): An IOProc ID has already been created for the given IOProc", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 1852797029;
      }
    }

    else if (v7 == a2)
    {
      goto LABEL_13;
    }

    v5 += 8;
  }

  if (!(*(*a1 + 272))(a1))
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HP_Device.cpp";
      v19 = 1024;
      v20 = 1043;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Can't create the IOProc ID in the current thread context", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 1852797029;
  }

  v16 = 0;
  if ((*(*a1 + 280))(a1, 0, &v16))
  {
    v8 = a1[32];
    operator new();
  }

  return 0;
}

void sub_3E27D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, std::exception a15, int a16)
{
  if (a2)
  {
    if (a2 == 2)
    {
      exception_ptr = __cxa_get_exception_ptr(exception_object);
      a15.__vftable = &off_6DDDD0;
      a16 = exception_ptr[2];
      __cxa_begin_catch(exception_object);
      std::exception::~exception(&a15);
    }

    else
    {
      __cxa_begin_catch(exception_object);
    }

    __cxa_end_catch();
    JUMPOUT(0x3E24E8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3E2894(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_3E2900(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

__n128 sub_3E298C(uint64_t a1, uint64_t a2)
{
  *a2 = off_6D1418;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_3E2A60(uint64_t result, int a2, uint64_t a3)
{
  v3 = 304;
  if (a2)
  {
    v3 = 280;
  }

  v4 = (result + v3);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    do
    {
      v8 = *v5++;
      v7 = (*(*(v8 + 104) + 44) + v7);
    }

    while (v5 != v6);
    *a3 = 0;
    *(a3 + 8) = v7;
    if (v7)
    {
      v9 = (a3 + 16);
      do
      {
        *(v9 - 1) = -1;
        *v9 = 0;
        v9[1] = 0;
        v9 = (v9 + 20);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void sub_3E2B70(void **a1, void **a2, void *a3, int a4, unsigned int a5, uint64_t a6)
{
  while (a1 != a2)
  {
    v6 = *a1;
    if (*a1 == a3)
    {
      if (!a3)
      {
        return;
      }

LABEL_6:
      if (a4)
      {
        v7 = 16;
      }

      else
      {
        v7 = 19;
      }

      v8 = 304;
      if (a4)
      {
        v8 = 280;
      }

      v9 = 312;
      if (a4)
      {
        v9 = 288;
      }

      v10 = (*(*v6 + v9) - *(*v6 + v8)) >> 3;
      if (v10 >= a5)
      {
        v11 = a5;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        v12 = 0;
        v13 = &v6[v7];
        v14 = v13[1];
        do
        {
          if (v14 <= v12)
          {
            LOBYTE(v15) = 1;
          }

          else
          {
            v15 = (*(*v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1;
          }

          *(a6 + v12++) = v15;
        }

        while (v11 != v12);
      }

      if (v10 < a5)
      {
        bzero((a6 + v11), ~v11 + a5 + 1);
      }

      return;
    }

    if (v6[1] == a3)
    {
      goto LABEL_6;
    }

    ++a1;
  }
}

uint64_t sub_3E2C8C(uint64_t a1)
{
  v2 = *(a1 + 12);
  v16 = 0x676C6F626C6E616DLL;
  v17 = 0;
  theString = 0;
  v14 = 8;
  (*(*a1 + 72))(a1, &v16, 0, 0, &v14, &theString);
  buffer[0] = 0;
  if (theString)
  {
    usedBufLen = 0;
    v19.length = CFStringGetLength(theString);
    v19.location = 0;
    CFStringGetBytes(theString, v19, 0x8000100u, 0, 0, buffer, 255, &usedBufLen);
    buffer[usedBufLen] = 0;
    CFRelease(theString);
  }

  v3 = *(a1 + 280);
  v4 = *(a1 + 288);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v5 += *(*(v6 + 104) + 44);
    }

    while (v3 != v4);
  }

  v7 = *(a1 + 304);
  v8 = *(a1 + 312);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      v9 += *(*(v10 + 104) + 44);
    }

    while (v7 != v8);
  }

  v11 = "Audio Device";
  if (v2 == 1633773415)
  {
    v11 = "Aggregate Device";
  }

  return printf("AudioObjectID:\t\t\t0x%X\n\tClass:\t\t\t\t%s\n\tName:\t\t\t\t%s\n\tInput Channels:\t\t%u\n\tOutput Channels:\t%u\n", *(a1 + 8), v11, buffer, v5, v9);
}

void sub_3E2E38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x3E2D10);
  }

  _Unwind_Resume(a1);
}

void sub_3E2E58()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  *v10 = 0;
  v0 = sub_106F10();
  v10[4] = (v0 > 0xFFu) & v0;
  v10[5] = 1;
  *&v10[6] = 0;
  v11 = 0;
  v12 = 16777473;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v15 = 0;
  v16 = 0;
  v17 = -1044381696;
  v18 = 1;
  v19 = -1044381696;
  v20 = 1;
  v21 = 0;
  v22 = 1;
  v23 = -1056964608;
  v24 = 1;
  v25 = -1033371648;
  v26 = 1;
  v27 = 0;
  v28 = 1;
  v29 = -1033371648;
  v30 = 1;
  v31 = 0;
  v32 = 1;
  v33 = -1044381696;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = -1033371648;
  v38 = 1;
  v39 = 0;
  v40 = 1;
  v41 = -1033371648;
  v42 = 1;
  v43 = -1055916032;
  v44 = 1;
  v45 = -1033371648;
  v46 = 1;
  v47 = 0;
  v48 = 1;
  v49 = -1055916032;
  v50 = 1;
  v51 = -1033371648;
  v52 = 1;
  v53 = -1055916032;
  v54 = 1;
  v55 = -1033371648;
  v56 = 1;
  v57 = 0;
  v58 = 1;
  v59 = -1055916032;
  v60 = 1;
  v61 = -1043333120;
  v62 = 1;
  v63 = 0x40000000;
  v64 = 1;
  v65 = 16777472;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1103626240;
  v71 = 1;
  v72 = 0;
  v73 = 1;
  v74 = 1094713344;
  v75 = 1;
  v76 = 1094713344;
  v77 = 1;
  v78 = 1094713344;
  v79 = 1;
  v80 = -1061158912;
  v81 = 1;
  v82 = 1107296256;
  v83 = 1;
  v84 = 1107296256;
  v85 = 1;
  v86 = 1092616192;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 16777472;
  v93[0] = 0;
  v93[72] = 0;
  v93[80] = 0;
  v93[120] = 0;
  v93[128] = 0;
  v93[200] = 0;
  v93[208] = 0;
  v93[248] = 0;
  LOBYTE(v94) = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  v97 = 0;
  LOBYTE(v98) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  v105 = 0;
  LOBYTE(v106) = 0;
  v107 = 0;
  LOBYTE(v108) = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  LOBYTE(v112) = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
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
  v126 = 1;
  v127 = 0;
  v128 = 0;
  LOBYTE(v129) = 0;
  v130 = 0;
  LOBYTE(v131) = 0;
  v132 = 0;
  LOBYTE(v133) = 0;
  v134 = 0;
  LOBYTE(v135) = 0;
  v136 = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  LOBYTE(v140) = 0;
  v141 = 0;
  LOBYTE(v142) = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  LOBYTE(v148) = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v151 = 0;
  LOBYTE(v152) = 0;
  v153 = 0;
  LOBYTE(v154) = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  LOBYTE(__p) = 0;
  v162 = 0;
  v163.__r_.__value_.__s.__data_[0] = 0;
  v164 = 0;
  v165.__r_.__value_.__s.__data_[0] = 0;
  v166 = 0;
  v167.__r_.__value_.__s.__data_[0] = 0;
  v168 = 0;
  v169 = 256;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  *v10 = 0x101010101000100;
  *&v10[12] = 257;
  v12 = 16843008;
  v61 = -1047527424;
  v62 = 1;
  v70 = 1103101952;
  v71 = 1;
  v76 = 0;
  v77 = 1;
  v78 = 0;
  v79 = 1;
  v74 = 0;
  v75 = 1;
  v90 = 1090519040;
  v91 = 1;
  v80 = -1040187392;
  v81 = 1;
  v63 = 0;
  v64 = 1;
  v92 = 16843009;
  if ((v95 & 1) == 0)
  {
    v95 = 1;
  }

  v94 = 1836282987;
  if ((v97 & 1) == 0)
  {
    v97 = 1;
  }

  v96 = 2;
  if ((v99 & 1) == 0)
  {
    v99 = 1;
  }

  v98 = 2;
  if ((v101 & 1) == 0)
  {
    v101 = 1;
  }

  v100 = 4;
  if ((v139 & 1) == 0)
  {
    v139 = 1;
  }

  v138 = 2;
  if ((v143 & 1) == 0)
  {
    v143 = 1;
  }

  v142 = 2;
  if ((v141 & 1) == 0)
  {
    v141 = 1;
  }

  v140 = 2;
  v104 = 13;
  v105 = 1;
  v106 = 13;
  v107 = 1;
  v108 = 13;
  v109 = 1;
  v112 = 13;
  v113 = 1;
  v129 = 18;
  v130 = 1;
  v131 = 3;
  v132 = 1;
  v133 = 12;
  v134 = 1;
  v135 = 18;
  v136 = 1;
  v137 = 257;
  v148 = 18;
  v149 = 1;
  v150 = 18;
  v151 = 1;
  v152 = 10;
  v153 = 1;
  v154 = 5;
  v155 = 1;
  sub_30F70C(&__src, 83);
  if (v162 == 1)
  {
    if (SHIBYTE(v161) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v161 = v178;
  }

  else
  {
    __p = __src;
    v161 = v178;
    v162 = 1;
  }

  sub_1F826C(&v163, "_top_mic_general");
  sub_1F826C(&v165, "_top_mic_measurement");
  sub_1F826C(&v167, "_top_mic_hearing_accessibility");
  LOBYTE(v15) = 1;
  sub_47DB04(&v1);
  sub_1E0054(v93);
  sub_477A0(v14[0]);
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

uint64_t sub_3E3510()
{
  sub_CE168();
  sub_53E8(__p, "Speaker");
  sub_CDEB8(&v4, __p);
  sub_5659C(&v6, &v4, "", 60);
  v0 = v6;
  if (v7)
  {
    sub_1A8C0(v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return v0;
}

void sub_3E3598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E35C8(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v6 = (*(*a2 + 104))(a2);
  std::to_string(&v22, v6);
  sub_53E8(&__p, "sampleRate");
  v21.__r_.__value_.__r.__words[0] = &__p;
  v7 = sub_3E39BC(a1, &__p);
  v8 = v7;
  if (*(v7 + 63) < 0)
  {
    operator delete(v7[5]);
  }

  *(v8 + 5) = v22;
  *(&v22.__r_.__value_.__s + 23) = 0;
  v22.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  v9 = (*(*a2 + 96))(a2, 1, 0);
  (*(*v9 + 120))(v9, &v22);
  std::to_string(&__p, v23);
  sub_53E8(&v21, "numChannelsIn");
  v17[0] = &v21;
  v10 = sub_3E39BC(a1, &v21);
  v11 = v10;
  if (*(v10 + 63) < 0)
  {
    operator delete(v10[5]);
  }

  *(v11 + 5) = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&__p, v23);
  sub_53E8(&v21, "numChannelsOut");
  v17[0] = &v21;
  v12 = sub_3E39BC(a1, &v21);
  v13 = v12;
  if (*(v12 + 63) < 0)
  {
    operator delete(v12[5]);
  }

  *(v13 + 5) = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a3 == 1668049011)
  {
    v14 = (*(*a2 + 96))(a2, 0, 0);
    if (v14)
    {
      (*(*v14 + 120))(v14, &__p);
      std::to_string(&v21, __val);
      sub_53E8(v17, "numChannelsTelemetry");
      v24 = v17;
      v15 = sub_3E39BC(a1, v17);
      v16 = v15;
      if (*(v15 + 63) < 0)
      {
        operator delete(v15[5]);
      }

      *(v16 + 5) = v21;
      *(&v21.__r_.__value_.__s + 23) = 0;
      v21.__r_.__value_.__s.__data_[0] = 0;
      if (v18 < 0)
      {
        operator delete(v17[0]);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_3E38FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_1D8EB0(v29);
  _Unwind_Resume(a1);
}

void *sub_3E39BC(void *a1, void *a2)
{
  v4 = sub_1DC1CC(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
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
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1DC61C(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_3E3E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DC0EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E3E28(uint64_t a1, void **a2, int a3)
{
  v6 = sub_3E3510();
  if (a3 == 1668049011)
  {
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    sub_4625C(&v19, &v18, &v19, 1uLL);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  sub_229ED0(&v17, *a2, a2[1]);
  v7 = sub_229D90(*a2, a2[1]);
  sub_22A3DC(&v16, v7, 1635087216);
  v8 = sub_229D90(*a2, a2[1]);
  sub_22A3DC(&v15, v8, 1886548848);
  sub_22A4D8(&cf, a2);
  v9 = sub_3E3510();
  sub_3E35C8(__p, v9, a3);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 16) = v6;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  v10 = cf;
  *(a1 + 72) = cf;
  if (v10)
  {
    CFRetain(v10);
  }

  sub_1D8F88(a1, &v19, &v17, &v16, &v15, __p);
  sub_1D92B8(a1);
  sub_1D8EEC(__p[2]);
  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  *(a1 + 160) = a2;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  return a1;
}

void sub_3E4028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, const void *a16, const void *a17, const void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_4BA7C(&a16);
  sub_4BA7C(&a17);
  sub_452F0(&a18);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_3E40E4(unint64_t result)
{
  v1 = ***result;
  if (*(v1 + 168) == 1)
  {
    v2 = *(v1 + 160);
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 != v4)
    {
      v5 = 0;
      do
      {
        v6 = sub_130F70(**v3, 1634625388);
        if (v6)
        {
          v7 = v6[3];
          if (*(v7 + 40))
          {
            sub_20B4EC();
          }

          v5 = *v7;
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v5)
      {
        v8 = *(v1 + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_136E60((v1 + 80), buf);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }

    v9 = (*(**(v1 + 16) + 120))(*(v1 + 16));
    if (!sub_4DA614())
    {
      v10 = *sub_5544(25);
      v11 = v10;
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "SpeakerPowerUsageIODelegate.mm";
        *&buf[12] = 1024;
        *&buf[14] = 210;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to find/load SMC functions", buf, 0x12u);
      }
    }

    result = sub_4DA614();
    if (result)
    {
      v12 = &dword_5C7698;
      v13 = 12;
      do
      {
        v18 = v9;
        strcpy(buf, "mhgdptuo");
        buf[9] = 0;
        *&buf[10] = 0;
        result = sub_542F0(&v18, buf, 4u, v12);
        *(&v15 + 1) = v14;
        *&v15 = result;
        v16 = ((v15 >> 32) >> 32) & (HIDWORD(result) != 0);
        v17 = v16 != 1 || v13 == 0;
        v13 -= 4;
        ++v12;
      }

      while (!v17);
      if (v16)
      {
        (*(**(v1 + 16) + 120))(*(v1 + 16));
        operator new();
      }
    }
  }

  return result;
}

void sub_3E43EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E442C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 144) != 1886613611)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Speaker_Aspen.cpp";
      v15 = 1024;
      v16 = 564;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to get trim gains on non-speaker port", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get trim gains on non-speaker port");
  }

  v5 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *buf = 0x6F75747061747363;
  for (i = 1; i != 5; ++i)
  {
    *&buf[8] = i;
    if (!(*(*a1 + 16))(a1, buf))
    {
      break;
    }

    v12 = 4;
    v13 = 0;
    (*(*a1 + 40))(a1, buf, 0, 0, &v12, &v13);
    v7 = v5;
    v8 = v5 >> 2;
    if (((v5 >> 2) + 1) >> 62)
    {
      a3[1] = v5;
      a3[2] = 0;
      *a3 = 0;
      sub_189A00();
    }

    if (v5 >> 2 != -1)
    {
      sub_1D7C28((v5 >> 2) + 1);
    }

    *(4 * v8) = v13;
    v5 = 4 * v8 + 4;
    memcpy(0, 0, v7);
  }

  a3[1] = v5;
  a3[2] = 0;
  *a3 = 0;
}

void sub_3E46F8(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  sub_ABF48();
  if (dword_6FD638 || ((*(*a1 + 312))(a1) & 0x100000000) != 0)
  {
    sub_ABF48();
    if (!dword_6FD638 || ((*(*a1 + 312))(a1) & 0x100000000) == 0)
    {
      v2 = (*(*a1 + 120))(a1);
      outData[1] = 0.0;
      *&inAddress.mSelector = *"#bdvptuo";
      inAddress.mElement = 0;
      outData[0] = 0.0;
      if (AudioObjectHasProperty(v2, &inAddress))
      {
        ioDataSize[0] = 16;
        if (AudioObjectGetPropertyData(v2, &inAddress, 0, 0, ioDataSize, outData))
        {
          v8 = sub_5544(14);
          v9 = *v8;
          if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Device_Speaker_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 463;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not retrieve hardware volume range", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Could not retrieve hardware volume range");
        }

        v3 = outData[0];
        if (outData[0] < -58.0)
        {
          v3 = -58.0;
        }

        outData[0] = v3;
      }

      v14 = 0x676C6F626D757465;
      v15 = 0;
      if ((*(*a1 + 16))(a1, &v14))
      {
        *buf = 1;
        (*(*a1 + 48))(a1, &v14, 0, 0, 4, buf);
      }

      v4 = *(a1 + 11);
      *ioDataSize = *(a1 + 10);
      *&ioDataSize[2] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Speaker_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 663;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): TapStream is disabled by policy but found", buf, 0x12u);
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v7, "TapStream is disabled by policy but found");
  }

  v11 = sub_5544(14);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "Device_Speaker_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 662;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): TapStream is enabled by policy but not found", buf, 0x12u);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v13, "TapStream is enabled by policy but not found");
}

uint64_t sub_3E5B50(uint64_t a1, unsigned int **a2)
{
  v4 = sub_5544(18);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        sub_10898C(&__p, *a2, a2[1]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v10 = "Device_Speaker_Aspen.cpp";
        v11 = 1024;
        v12 = 688;
        v13 = 2080;
        v14 = p_p;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting output data sources: [%s]", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  return sub_3E5C74(*(a1 + 268), &qword_6FC530, a2);
}

uint64_t sub_3E5C74(AudioObjectID a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v82.__cv_.__sig = *a2;
    *v82.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v83);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v83.__m_.__opaque, 0, sizeof(v83.__m_.__opaque));
    v83.__m_.__sig = 850045863;
    memset(v82.__cv_.__opaque, 0, sizeof(v82.__cv_.__opaque));
    v82.__cv_.__sig = 1018212795;
    v74 = 0;
    sub_745E8(v73, a1, a2, &v82, &v83, &v74);
    v69 = *a2;
    v7 = *(a2 + 8);
    v68 = a1;
    v70 = v7;
    v71 = 0;
    v72 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v13 = sub_5544(14);
      v9 = 1852797029;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        __p = *a2;
        LODWORD(v51) = *(a2 + 8);
        sub_22CE0(&v65);
      }

LABEL_110:
      sub_73C20(v73);
      std::condition_variable::~condition_variable(&v82);
      std::mutex::~mutex(&v83);
      return v9;
    }

    sub_3E6B30(&v65, &v68);
    if (v67)
    {
      goto LABEL_8;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    sub_46980(&v62, v65, v66, (v66 - v65) >> 2);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_46980(&v59, *a3, a3[1], (a3[1] - *a3) >> 2);
    v14 = v62;
    v15 = v59;
    if (v63 - v62 == v60 - v59)
    {
      v16 = memcmp(v62, v59, v63 - v62) == 0;
      if (!v15)
      {
LABEL_28:
        if (v14)
        {
          v63 = v14;
          operator delete(v14);
          if (v16)
          {
LABEL_32:
            v17 = sub_5544(14);
            if (*(v17 + 8))
            {
              v9 = *v17;
              if (!*v17)
              {
LABEL_37:
                LOBYTE(v11) = 0;
LABEL_38:
                if (v65)
                {
                  operator delete(v65);
                }

                if (v11)
                {
                  sub_3E6B30(&v65, &v68);
                  if (v67)
                  {
LABEL_42:
                    v39 = 2000;
                    while (1)
                    {
                      sub_3E6B30(&__p, &v68);
                      v18 = __p;
                      if (v52)
                      {
                        v19 = 1;
                        v9 = v52;
                        if (__p)
                        {
                          goto LABEL_81;
                        }

                        goto LABEL_82;
                      }

                      v47 = 0;
                      v48 = 0;
                      v49 = 0;
                      sub_46980(&v47, __p, v51, (v51 - __p) >> 2);
                      v44 = 0;
                      v45 = 0;
                      v46 = 0;
                      sub_46980(&v44, *a3, a3[1], (a3[1] - *a3) >> 2);
                      v20 = v47;
                      v21 = v44;
                      if (v48 - v47 != v45 - v44)
                      {
                        break;
                      }

                      v22 = memcmp(v47, v44, v48 - v47) == 0;
                      if (v21)
                      {
                        goto LABEL_50;
                      }

LABEL_51:
                      if (v20)
                      {
                        v48 = v20;
                        operator delete(v20);
                      }

                      if (v22)
                      {
                        v19 = 16;
                        if (v18)
                        {
                          goto LABEL_81;
                        }

                        goto LABEL_82;
                      }

                      if (v39 > 0)
                      {
                        v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                        v24 = sub_5544(14);
                        if (*(v24 + 8))
                        {
                          v25 = *v24;
                          if (*v24)
                          {
                            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
                            {
                              buf.mSelector = 136315906;
                              *&buf.mScope = "HALPropertySynchronizer.h";
                              v76 = 1024;
                              v77 = 354;
                              v78 = 2080;
                              v79 = "with timeout";
                              v80 = 1024;
                              v81 = a1;
                              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
                            }
                          }
                        }

                        sub_27A4();
                        LOBYTE(v42) = sub_2E6B08();
                        *&buf.mSelector = &v83;
                        LOBYTE(buf.mElement) = 1;
                        std::mutex::lock(&v83);
                        v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
                        while (1)
                        {
                          if ((v74 & 1) != 0 || v26.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
                          {
LABEL_78:
                            if (LOBYTE(buf.mElement) == 1)
                            {
                              std::mutex::unlock(*&buf.mSelector);
                            }

                            sub_1DB4C4(&v42);
                            v19 = 0;
                            v39 += (std::chrono::system_clock::now().__d_.__rep_ - v23.__d_.__rep_) / -1000;
                            if (v18)
                            {
                              goto LABEL_81;
                            }

                            goto LABEL_82;
                          }

                          v27.__d_.__rep_ = v26.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
                          if (v27.__d_.__rep_ >= 1)
                          {
                            break;
                          }

LABEL_77:
                          if (std::chrono::steady_clock::now().__d_.__rep_ >= v26.__d_.__rep_)
                          {
                            goto LABEL_78;
                          }
                        }

                        std::chrono::steady_clock::now();
                        v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
                        if (v28.__d_.__rep_)
                        {
                          if (v28.__d_.__rep_ < 1)
                          {
                            if (v28.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                            {
                              goto LABEL_72;
                            }

                            v29 = 0x8000000000000000;
                          }

                          else
                          {
                            if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
                            {
                              v29 = 0x7FFFFFFFFFFFFFFFLL;
                              goto LABEL_73;
                            }

LABEL_72:
                            v29 = 1000 * v28.__d_.__rep_;
LABEL_73:
                            if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                            {
                              v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_76:
                              std::condition_variable::__do_timed_wait(&v82, &buf, v30);
                              std::chrono::steady_clock::now();
                              goto LABEL_77;
                            }
                          }
                        }

                        else
                        {
                          v29 = 0;
                        }

                        v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
                        goto LABEL_76;
                      }

                      v31 = sub_5544(14);
                      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
                      {
                        v40 = *a2;
                        v41 = *(a2 + 8);
                        sub_22CE0(&v42);
                      }

                      v19 = 1;
                      v9 = 2003329396;
                      if (v18)
                      {
LABEL_81:
                        operator delete(v18);
                      }

LABEL_82:
                      if (v19)
                      {
                        if (v19 == 16)
                        {
                          v32 = sub_5544(14);
                          if ((*(v32 + 8) & 1) != 0 && *v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
                          {
                            v42 = *a2;
                            v43 = *(a2 + 8);
                            sub_22CE0(&__p);
                          }

                          goto LABEL_107;
                        }

                        goto LABEL_108;
                      }
                    }

                    v22 = 0;
                    if (!v44)
                    {
                      goto LABEL_51;
                    }

LABEL_50:
                    v45 = v21;
                    operator delete(v21);
                    goto LABEL_51;
                  }

                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  sub_46980(&v56, v65, v66, (v66 - v65) >> 2);
                  v53 = 0;
                  v54 = 0;
                  v55 = 0;
                  sub_46980(&v53, *a3, a3[1], (a3[1] - *a3) >> 2);
                  v33 = v56;
                  v34 = v53;
                  v35 = v57 - v56 == v54 - v53 && memcmp(v56, v53, v57 - v56) == 0;
                  if (v34)
                  {
                    v54 = v34;
                    operator delete(v34);
                  }

                  if (v33)
                  {
                    v57 = v33;
                    operator delete(v33);
                    if (!v35)
                    {
                      goto LABEL_42;
                    }
                  }

                  else if (!v35)
                  {
                    goto LABEL_42;
                  }

                  v36 = sub_5544(14);
                  if (*(v36 + 8))
                  {
                    v37 = *v36;
                    if (*v36)
                    {
                      if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
                      {
                        buf.mSelector = 136315650;
                        *&buf.mScope = "HALPropertySynchronizer.h";
                        v76 = 1024;
                        v77 = 322;
                        v78 = 1024;
                        LODWORD(v79) = a1;
                        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
                      }
                    }
                  }

LABEL_107:
                  v9 = 0;
LABEL_108:
                  if (v65)
                  {
                    operator delete(v65);
                  }
                }

                goto LABEL_110;
              }

              if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
              {
                buf.mSelector = 136315650;
                *&buf.mScope = "HALPropertySynchronizer.h";
                v76 = 1024;
                v77 = 294;
                v78 = 1024;
                LODWORD(v79) = a1;
                _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
              }
            }

            LOBYTE(v11) = 0;
            v9 = 0;
            goto LABEL_38;
          }
        }

        else if (v16)
        {
          goto LABEL_32;
        }

LABEL_8:
        v8 = sub_5544(14);
        if ((*(v8 + 8) & 1) != 0 && *v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v56 = *a2;
          LODWORD(v57) = *(a2 + 8);
          sub_22CE0(&__p);
        }

        buf = *a2;
        v9 = sub_1F79B8(a1, &buf, *a3, a3[1]);
        if (!v9)
        {
          LOBYTE(v11) = 1;
          goto LABEL_38;
        }

        v10 = sub_5544(14);
        v11 = *v10;
        if (!*v10)
        {
          goto LABEL_38;
        }

        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, v9);
          v53 = *a2;
          LODWORD(v54) = *(a2 + 8);
          sub_22CE0(&v56);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v16 = 0;
      if (!v59)
      {
        goto LABEL_28;
      }
    }

    v60 = v15;
    operator delete(v15);
    goto LABEL_28;
  }

  v12 = sub_5544(14);
  v9 = 2003332927;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    v82.__cv_.__sig = *a2;
    *v82.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v83);
  }

  return v9;
}

void sub_3E6A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, AudioObjectPropertySelector a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a61);
  std::condition_variable::~condition_variable((v61 - 216));
  std::mutex::~mutex((v61 - 168));
  _Unwind_Resume(a1);
}

void sub_3E6B30(uint64_t a1, uint64_t a2)
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

void sub_3E6D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
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

void sub_3E6D7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D16A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3E6E18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D1670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3E6E8C(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, uint64_t a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v28 = *&a2->mSelector;
      LODWORD(v29) = a2->mElement;
      sub_22CE0(v32);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v28 = *&a2->mSelector;
      LODWORD(v29) = a2->mElement;
      sub_22CE0(v32);
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
      v28 = *&a2->mSelector;
      LODWORD(v29) = a2->mElement;
      sub_22CE0(v32);
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
      v28 = *&a2->mSelector;
      LODWORD(v29) = a2->mElement;
      sub_22CE0(v32);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 1852797029;
  }

  if (a2->mSelector == 1986164323)
  {
    v31 = 1886613611;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    sub_4625C(v32, &v31, v32, 1uLL);
    *__p = *v32;
    __p[2] = v33;
    strcpy(v35, "cwdv");
    v35[8] = 0;
    v36 = 3;
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v39 = 44739242;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    sub_161C7C(&v28, a1, __p);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    sub_477A0(v38[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v30 == 1)
    {
      v16 = *(v29 + 24);
      if (v16)
      {
        v17 = *(v29 + 16);
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v18 = std::__shared_weak_count::lock(v16);
        if (v18)
        {
          v19 = v18;
          if (v17)
          {
            (*(*v17 + 48))(v17, a2, a3, a4, a5, a6);
          }

          sub_1A8C0(v19);
        }

        std::__shared_weak_count::__release_weak(v16);
      }
    }

    sub_65310(&v28);
  }

  else if (a2->mSelector == 1396926579)
  {
    memset(__p, 0, sizeof(__p));
    sub_4625C(__p, a6, &a6[a5 >> 2], a5 >> 2);
    v12 = sub_3E5B50(a1, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v12)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "Device_Speaker_Aspen.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 424;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result): Error setting output data sources", __p, 0x12u);
        }
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      *v15 = &off_6DDDD0;
      v15[2] = v12;
    }
  }

  else
  {

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_3E7684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  sub_1A8C0(v18);
  std::__shared_weak_count::__release_weak(v17);
  sub_65310(&a9);
  _Unwind_Resume(a1);
}

void sub_3E76D4(void *a1, uint64_t a2)
{
  *a1 = &off_6D1650;
  a1[1] = 0;
  if ((*(*a2 + 16))(a2, &qword_6FC540))
  {
    strcpy(&v27, "tDCSptuo");
    BYTE9(v27) = 0;
    WORD5(v27) = 0;
    if (sub_5BA08(a2))
    {
      *buf = 2003329396;
      v35[4] = 0;
      LOBYTE(v36) = 0;
      *v28 = sub_59580(a2);
      if (*v28)
      {
        v26[0] = 0;
        *buf = sub_5C060(a2);
        if (!*buf)
        {
          __p = &off_6D1650;
          theDict = 0;
          *&v35[4] = &off_6D1650;
          *&v35[12] = v26[0];
          LOBYTE(v36) = 1;
          sub_8AAAC(&__p);
        }
      }

      if (!*buf && (v36 & 1) != 0)
      {
        sub_224064(bytes, *&v35[12]);
        bytes[0] = &off_6D1650;
        if (v36 == 1)
        {
          sub_8AAAC(&v35[4]);
        }

        v4 = a1[1];
        a1[1] = bytes[1];
        bytes[1] = v4;
        sub_8AAAC(bytes);
        return;
      }
    }

    else
    {
      *buf = 2003332927;
      v35[4] = 0;
      LOBYTE(v36) = 0;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v21 = *buf;
    *exception = &off_6DDDD0;
    exception[2] = v21;
  }

  if (!(*(*a2 + 16))(a2, &qword_6FC550))
  {
    return;
  }

  strcpy(bytes, "eDCSptuo");
  BYTE1(bytes[1]) = 0;
  WORD1(bytes[1]) = 0;
  sub_339F80(buf, a2);
  if (*buf || (v36 & 1) == 0)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    v23 = *buf;
    *v22 = &off_6DDDD0;
    v22[2] = v23;
  }

  sub_224064(&__p, *&v35[12]);
  __p = &off_6DDB78;
  if (v36 == 1)
  {
    sub_8AAAC(&v35[4]);
  }

  sub_306900(buf, theDict, @"Version");
  v5 = sub_3069C0(*&v35[4]);
  sub_8AAAC(buf);
  sub_306900(buf, theDict, @"NumSpkCalibs");
  v6 = sub_3069C0(*&v35[4]);
  sub_8AAAC(buf);
  sub_306900(buf, theDict, @"BytesPerSpkCalib");
  v7 = sub_3069C0(*&v35[4]);
  sub_8AAAC(buf);
  if (v6)
  {
    if (v5 == 2)
    {
      v8 = 12;
    }

    else
    {
      v8 = v7 * v6 + 4;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_5544(18);
  v10 = *v9;
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *v35 = "Device_Speaker_Aspen.cpp";
    *&v35[8] = 1024;
    *&v35[10] = 131;
    *&v35[14] = 1024;
    *&v35[16] = v5;
    LOWORD(v36) = 1024;
    *(&v36 + 2) = v6;
    HIWORD(v36) = 1024;
    v37 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d version: %u, NumSpkCalibs: %u, BytesPerSpkCalib: %u", buf, 0x24u);
  }

  sub_8AAAC(&__p);
  if (!v8)
  {
    return;
  }

  strcpy(v28, "aDCSptuo");
  v29 = 0;
  v30 = 0;
  if ((sub_5BA08(a2) & 1) == 0)
  {
    LOBYTE(v27) = 0;
    v14 = 2003332927;
    goto LABEL_47;
  }

  *buf = 2003329396;
  v35[4] = 0;
  LOBYTE(v37) = 0;
  v11 = sub_59580(a2);
  v33 = v11;
  if (v11)
  {
    sub_EF2C0(&__p, v11);
    v12 = sub_5C060(a2);
    *buf = v12;
    v13 = v12 == 0;
    if (v12)
    {
      v14 = v12;
      LOBYTE(v27) = 0;
      v15 = __p;
      if (!__p)
      {
        goto LABEL_47;
      }

      goto LABEL_33;
    }

    *&v35[4] = 0;
    *&v35[12] = 0;
    v36 = 0;
    sub_3E7DF8(&v35[4], __p, theDict, theDict - __p);
    LOBYTE(v37) = 1;
    v14 = *buf;
    v15 = __p;
    v27 = *&v35[4];
    *&v35[12] = 0;
    v36 = 0;
    *&v35[4] = 0;
    if (__p)
    {
LABEL_33:
      theDict = v15;
      operator delete(v15);
      if ((v37 & 1) != 0 && *&v35[4])
      {
        operator delete(*&v35[4]);
      }

      goto LABEL_36;
    }
  }

  else
  {
    v14 = 0;
    v27 = 0uLL;
  }

  v13 = 1;
LABEL_36:
  if (v14 || !v13)
  {
LABEL_47:
    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = v14;
  }

  memset(bytes, 0, sizeof(bytes));
  v16 = v27;
  sub_3E7DF8(bytes, v27, *(&v27 + 1), *(&v27 + 1) - v27);
  if (v16)
  {
    operator delete(v16);
  }

  v17 = bytes[0];
  v18 = CFDataCreate(0, bytes[0], v8);
  v19 = a1[1];
  a1[1] = v18;
  v26[0] = &off_6D1650;
  v26[1] = v19;
  sub_8AAAC(v26);
  if (v17)
  {
    operator delete(v17);
  }
}

void sub_3E7D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const __CFData *sub_3E7DD8(const __CFData *result)
{
  if (result)
  {
    return CFDataGetLength(result);
  }

  return result;
}

uint64_t sub_3E7DF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_EF334(result, a4);
  }

  return result;
}

void sub_3E7E58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E7E74(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

void sub_3E7EB0(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_3E7EEC(uint64_t a1, UInt32 a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6D1460;
  *(v4 + 532) = 2;
  sub_ABF48();
  if (!dword_6FD638)
  {
    sub_4B4F1C(a1, 1, 0x6F757470u, 0);
  }

  return a1;
}

uint64_t sub_3E7F7C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_6FC570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC570))
  {
    byte_6FC56C = (*(*a1 + 16))(a1, &qword_6FC530);
    __cxa_guard_release(&qword_6FC570);
  }

  if ((atomic_load_explicit(&qword_6FC580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC580))
  {
    sub_ABF48();
    byte_6FC578 = DWORD2(xmmword_6FD620) == 1;
    __cxa_guard_release(&qword_6FC580);
  }

  return byte_6FC56C & byte_6FC578 & 1;
}

void sub_3E808C(uint64_t a1, int a2, uint64_t a3)
{
  if ((sub_3E7F7C(a1) & 1) == 0)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "Device_Speaker_Aspen.cpp";
      *&v25[12] = 1024;
      *&v25[14] = 189;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v25, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_ABF48();
  *&v25[8] = 0;
  *&v25[16] = 0;
  *v25 = &v25[8];
  v6 = qword_6FD608;
  if (qword_6FD608 == &xmmword_6FD610)
  {
    goto LABEL_15;
  }

  do
  {
    sub_3E845C(v25, &v25[8], *(v6 + 32));
    v7 = *(v6 + 8);
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
        v8 = *(v6 + 16);
        v9 = *v8 == v6;
        v6 = v8;
      }

      while (!v9);
    }

    v6 = v8;
  }

  while (v8 != &xmmword_6FD610);
  v10 = *&v25[8];
  if (!*&v25[8])
  {
LABEL_15:
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v24 = "Device_Speaker_Aspen.cpp";
      *&v24[8] = 1024;
      *&v24[10] = 191;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "Precondition failure.");
  }

  while (1)
  {
    v11 = *(v10 + 8);
    if (v11 <= a2)
    {
      break;
    }

LABEL_14:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  if (v11 < a2)
  {
    ++v10;
    goto LABEL_14;
  }

  *(a1 + 532) = a2;
  v15 = sub_5544(18);
  v16 = *v15;
  if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v24 = "Device_Speaker_Aspen.cpp";
    *&v24[8] = 1024;
    *&v24[10] = 207;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Notifying listeners about speaker channel configuration change", buf, 0x12u);
  }

  v17 = sub_17D104();
  v22 = 1886613611;
  sub_4BA00(buf, &v22, 1);
  v21 = 0;
  sub_17CC28(v17, a3, buf, &v21);
  sub_477A0(*&v24[4]);
  sub_3E8408(*&v25[8]);
}

void sub_3E8408(void *a1)
{
  if (a1)
  {
    sub_3E8408(*a1);
    sub_3E8408(a1[1]);
    sub_188544(a1 + 4);

    operator delete(a1);
  }
}

void *sub_3E845C(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
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

    if (*(v7 + 8) < a3)
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
        v15 = *(v13 + 32);
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

  if (v10 != v3 && *(v10 + 8) <= a3)
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
        v19 = *(v17 + 32);
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

void sub_3E86B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_3E86E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E86E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_188544(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_3E8734(uint64_t a1)
{
  v2 = *(a1 + 592);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 584);
      if (v4)
      {
        v5 = (*(*v4 + 112))(v4) == 0;
LABEL_16:
        sub_1A8C0(v3);
        return v5;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = sub_5544(19);
  v7 = sub_5544(39);
  v8 = 0;
  *v13 = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&v13[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_12;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_12:
  v11 = *v6;
  if (v11)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 136315394;
      *&v13[4] = "SoftwareOnlyVolumeControl.cpp";
      v14 = 1024;
      v15 = 488;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software command expired", v13, 0x12u);
    }
  }

  v5 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_16;
  }

  return result;
}

void sub_3E88E0(uint64_t a1)
{
  v2 = sub_5544(19);
  v3 = sub_5544(39);
  v4 = 0;
  *v17 = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&v17[v4];
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
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "SoftwareOnlyVolumeControl.cpp";
    v18 = 1024;
    v19 = 468;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling software mute", v17, 0x12u);
  }

  v8 = *(a1 + 592);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 584);
      if (v10)
      {
        (*(*v10 + 104))(v10, 1);
LABEL_25:
        sub_1A8C0(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_5544(19);
  v12 = sub_5544(39);
  v13 = 0;
  *v17 = 0x100000002;
  v14 = *(v11 + 8);
  while (1)
  {
    v15 = *&v17[v13];
    if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_21;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_21:
  v16 = *v11;
  if (v16)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136315394;
      *&v17[4] = "SoftwareOnlyVolumeControl.cpp";
      v18 = 1024;
      v19 = 475;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software command expired", v17, 0x12u);
    }
  }

  if (v9)
  {
    goto LABEL_25;
  }
}

void sub_3E8B44(uint64_t a1)
{
  v2 = sub_5544(19);
  v3 = sub_5544(39);
  v4 = 0;
  *v17 = 0x100000002;
  v5 = *(v2 + 8);
  while (1)
  {
    v6 = *&v17[v4];
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
  v7 = *v2;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "SoftwareOnlyVolumeControl.cpp";
    v18 = 1024;
    v19 = 454;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling software mute", v17, 0x12u);
  }

  v8 = *(a1 + 592);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 584);
      if (v10)
      {
        (*(*v10 + 104))(v10, 0);
LABEL_25:
        sub_1A8C0(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_5544(19);
  v12 = sub_5544(39);
  v13 = 0;
  *v17 = 0x100000002;
  v14 = *(v11 + 8);
  while (1)
  {
    v15 = *&v17[v13];
    if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_21;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_21:
  v16 = *v11;
  if (v16)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136315394;
      *&v17[4] = "SoftwareOnlyVolumeControl.cpp";
      v18 = 1024;
      v19 = 461;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software command expired", v17, 0x12u);
    }
  }

  if (v9)
  {
    goto LABEL_25;
  }
}

void sub_3E8DA0(uint64_t a1)
{
  sub_3E8DDC(a1 - 80);

  operator delete();
}

uint64_t sub_3E8DDC(uint64_t a1)
{
  *a1 = off_6D16E0;
  *(a1 + 80) = off_6D17A8;
  sub_140514(a1 + 104);
  v2 = *(a1 + 592);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_477A0(*(a1 + 544));

  return sub_1405C0(a1);
}

double sub_3E8E80(uint64_t a1)
{
  result = *(a1 + 512);
  v2 = *(a1 + 520);
  return result;
}

void sub_3E8E8C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "SoftwareOnlyVolumeControl.cpp";
      v5 = 1024;
      v6 = 445;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Not implemented for Software only volume control", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Not implemented for Software only volume control");
}

void sub_3E8F74(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x100000000) == 0)
  {
    LODWORD(a3) = 0;
  }

  sub_3E8FA4(a1, a2, a3, a4);
  *(a1 + 610) = 0;
}

void sub_3E8FA4(uint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a2[1] < *a2)
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      v32 = *a2;
      v31 = *(a2 + 1);
      v34 = 136315906;
      *v35 = "SoftwareOnlyVolumeControl.cpp";
      *&v35[8] = 1024;
      *&v35[10] = 500;
      *&v35[14] = 2048;
      *&v35[16] = v31;
      *&v35[24] = 2048;
      *&v35[26] = v32;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Argument desiredVolumeCurveRangeDB's mMaximum (%f) < mMinimum (%f)", &v34, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "Argument desiredVolumeCurveRangeDB's mMaximum (%f) < mMinimum (%f)");
  }

  v8 = *(a4 + 24);
  v7 = *(a4 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 584) = v8;
  v9 = *(a1 + 592);
  *(a1 + 592) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
    v7 = *(a1 + 592);
  }

  *(a1 + 608) = 0;
  if (v7)
  {
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v11 = *(a1 + 584);
      if (v11)
      {
        (*(*v11 + 144))(*(a1 + 584), *(a1 + 616) == 0);
        if ((*(*v11 + 72))(v11))
        {
          (*(*v11 + 64))(v11, 1, 0, 1.0, 0.5);
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (!*(a1 + 616))
  {
    v20 = sub_5544(19);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315394;
        *v35 = "SoftwareOnlyVolumeControl.cpp";
        *&v35[8] = 1024;
        *&v35[10] = 508;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requested software only volume, but given software volume command (and external volume handler proc) are null. This may be expected if waiting for the external volume handler proc for telephony", &v34, 0x12u);
      }
    }
  }

LABEL_13:
  if (sub_99D84() == 2 || sub_99D84() == 3)
  {
    v34 = 0;
    memset(&v35[12], 0, 17);
    *&v35[4] = &v35[12];
    *&v35[32] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v35[36] = _D0;
    sub_477A0(0);
    *&v35[12] = 0;
    *&v35[20] = 0;
    *&v35[4] = &v35[12];
    sub_160214(&v34, 0, 858993458);
    sub_160214(&v34, 858993458, 0x7FFFFFFF);
    *(a1 + 528) = v34;
    v17 = a1 + 544;
    sub_477A0(*(a1 + 544));
    v18 = *&v35[12];
    *(a1 + 536) = *&v35[4];
    *(a1 + 544) = v18;
    v19 = *&v35[20];
    *(a1 + 552) = *&v35[20];
    if (v19)
    {
      v18[2] = v17;
      *&v35[4] = &v35[12];
      *&v35[12] = 0;
      *&v35[20] = 0;
      v18 = 0;
    }

    else
    {
      *(a1 + 536) = v17;
    }

    *(a1 + 560) = *&v35[28];
    sub_477A0(v18);
  }

  else
  {
    v23 = *a2;
    v22 = *(a2 + 1);
    *(a1 + 564) = a3;
    if (a3 > 0xF)
    {
      v26 = 1.0;
      v25 = 2.0;
      v24 = 1;
    }

    else
    {
      v24 = byte_517610[a3];
      v25 = flt_518BC8[a3];
      v26 = flt_518C08[a3];
    }

    *(a1 + 560) = v24;
    *(a1 + 568) = v25;
    *(a1 + 572) = v26;
    if (*(a1 + 552))
    {
      v27 = *(*(a1 + 536) + 28);
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_55A7C(a1 + 528);
    sub_477A0(*(a1 + 544));
    *(a1 + 536) = a1 + 544;
    *(a1 + 544) = 0u;
    sub_160214(a1 + 528, v27, v28);
  }

  if (v10)
  {
    sub_1A8C0(v10);
  }
}

void sub_3E93DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    sub_1A8C0(v11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3E942C(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      v17 = 1024;
      *v18 = 708;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (*a2 == 1987013741)
  {
    goto LABEL_5;
  }

  if (*a2 == 1986817377)
  {
    __p[0] = 1986817377;
    *&__p[1] = *(a1 + 500);
    *buf = *a2;
    *&buf[8] = a2[2];
    *&v18[2] = a3;
    v19 = a4;
    sub_185D3C(a1 + 19, __p, buf);
LABEL_5:
    __p[0] = 1987013732;
    *&__p[1] = *(a1 + 500);
    *buf = *a2;
    *&buf[8] = a2[2];
    *&v18[2] = a3;
    v19 = a4;
    sub_185D3C(a1 + 19, __p, buf);
    return 1;
  }

  v9 = sub_5544(18);
  if (!*v9)
  {
    return 0;
  }

  result = os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v13 = *a2;
    v14 = a2[2];
    sub_22CE0(__p);
  }

  return result;
}

BOOL sub_3E96CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      v17 = 1024;
      *v18 = 669;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (*a2 == 1987013741)
  {
    __p[0] = 1987013732;
    *&__p[1] = *(a1 + 500);
    *buf = *a2;
    *&buf[8] = *(a2 + 2);
    *&v18[2] = a3;
    v19 = a4;
    sub_17C118((a1 + 152), __p, buf);
  }

  if (*a2 == 1986817377)
  {
    __p[0] = 1986817377;
    *&__p[1] = *(a1 + 500);
    *buf = *a2;
    *&buf[8] = *(a2 + 2);
    *&v18[2] = a3;
    v19 = a4;
    sub_17C118((a1 + 152), __p, buf);
  }

  v8 = sub_5544(18);
  if (!*v8)
  {
    return 0;
  }

  result = os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    sub_22CE0(__p);
  }

  return result;
}

void sub_3E996C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 347;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > a5)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 348;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Data size insufficient.", buf, 0x12u);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    *v39 = &off_6DDDD0;
    v39[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 349;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnsupportedOperationError): Property is not settable.", buf, 0x12u);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    *v42 = &off_6DDDD0;
    v42[2] = 1970171760;
  }

  v12 = *a2;
  if (*a2 <= 1986817376)
  {
    if (v12 == 1836414053)
    {
      *(a1 + 609) = sub_306740(a5, a6) == 1;

      sub_3EA420(a1);
    }

    if (v12 != 1986098020)
    {
LABEL_21:
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 422;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: GetPropertyDataSize() is correct and IsPropertySettable() and HasProperty() returned true, but I do not know about it.", buf, 0x12u);
        }
      }

      return;
    }

    v13 = *(a1 + 592);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(a1 + 584);
        if (v15 && ((*(*v15 + 72))(v15) & 1) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 401;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Ducking is not supported!", buf, 0x12u);
    }

LABEL_38:
    if (a5 != 8)
    {
      v43 = sub_5544(14);
      v44 = *v43;
      if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 403;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v45 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v45, "Precondition failure.");
    }

    *&v27 = COERCE_DOUBLE(CFRetain(*a6));
    v53 = COERCE_DOUBLE(&off_6DDB78);
    theDict = v27;
    if (sub_3068D8(v27, @"ducking type"))
    {
      if (sub_3068D8(theDict, @"ducking enable"))
      {
        if (sub_3068D8(theDict, @"ducking gain"))
        {
          if (sub_3068D8(theDict, @"ducking time"))
          {
            sub_306900(buf, theDict, @"ducking type");
            v28 = sub_3069C0(*&buf[8]);
            sub_8AAAC(buf);
            sub_306900(buf, theDict, @"ducking enable");
            v29 = sub_3069C0(*&buf[8]);
            sub_8AAAC(buf);
            sub_306900(buf, theDict, @"ducking time");
            v30 = sub_3069F8(*&buf[8]);
            v31 = *&v30;
            sub_8AAAC(buf);
            sub_306900(buf, theDict, @"ducking gain");
            v32 = sub_3069F8(*&buf[8]);
            v33 = *&v32;
            sub_8AAAC(buf);
            (*(*v15 + 64))(v15, v28, v29, v33, v31);
            sub_8AAAC(&v53);
            if (v14)
            {
              sub_1A8C0(v14);
            }

            return;
          }

          v51 = sub_5544(14);
          v47 = *v51;
          if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 410;
            v48 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingTimeKey is required";
            goto LABEL_77;
          }

LABEL_78:
          v52 = __cxa_allocate_exception(0x10uLL);
          *v52 = &off_6DDDD0;
          v52[2] = 1852797029;
        }

        v50 = sub_5544(14);
        v47 = *v50;
        if (!*v50 || !os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *buf = 136315394;
        *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 409;
        v48 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingGainKey is required";
      }

      else
      {
        v49 = sub_5544(14);
        v47 = *v49;
        if (!*v49 || !os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *buf = 136315394;
        *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 408;
        v48 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingEnableKey is required";
      }
    }

    else
    {
      v46 = sub_5544(14);
      v47 = *v46;
      if (!*v46 || !os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 407;
      v48 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioDevicePropertyDucking - kVirtualAudioPlugInDuckingTypeKey is required";
    }

LABEL_77:
    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x12u);
    goto LABEL_78;
  }

  if (v12 == 1986817377)
  {
    goto LABEL_8;
  }

  if (v12 != 2021027692)
  {
    if (v12 == 1987013741)
    {
LABEL_8:
      *buf = sub_5908C(a5, a6);
      LODWORD(v53) = 0;
      v55 = 1065353216;
      *(a1 + 600) = *sub_E521C(&v53, buf, &v55);
      sub_3EA420(a1);
    }

    goto LABEL_21;
  }

  v16 = *(a1 + 616);
  *(a1 + 616) = *a6;
  if (*(a1 + 552))
  {
    v17 = *(*(a1 + 536) + 36);
  }

  else
  {
    v17 = 0.0;
  }

  v53 = v17;
  v20 = sub_59224(a1 + 528);
  *&theDict = *&v20;
  v21 = *(a1 + 564);
  v22 = *(a1 + 576);
  v23 = *(a1 + 584);
  v24 = *(a1 + 592);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *buf = 0;
    *&buf[8] = 0;
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v24);
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
  }

  *&buf[16] = v22;
  v57 = v23;
  v58 = v24;
  sub_3E8FA4(a1, &v53, v21, buf);
  if (*(a1 + 610) == 1 && (*(a1 + 616) || v16 && *(a1 + 576)))
  {
    sub_3EA420(a1);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }
}

void sub_3EA3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v11);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  _Unwind_Resume(a1);
}

void sub_3EA420(uint64_t a1)
{
  sub_5B898(a1 + 528, *(a1 + 600));
  v3 = v2;
  if (*(a1 + 552))
  {
    if (vabds_f32(v2, *(*(a1 + 536) + 36)) <= 0.001)
    {
      v4 = *(*(a1 + 536) + 36);
      goto LABEL_5;
    }
  }

  else
  {
    v4 = 0.0;
    if (fabsf(v2) <= 0.001)
    {
LABEL_5:
      v5 = sub_59224(a1 + 528);
      if (v4 != *&v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (*(a1 + 609) != 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

LABEL_7:
  v6 = 1;
LABEL_9:
  v7 = (*(**(a1 + 632) + 32))(*(a1 + 632));
  v8 = sub_5544(19);
  v9 = sub_5544(39);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v8 + 8);
  do
  {
    v12 = *&buf[v10];
    if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
    {
      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

      if (*(v8 + 8))
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

    v10 += 4;
  }

  while (v10 != 8);
  if ((v11 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  v13 = *v8;
  if (!v13 || !os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_33;
  }

  if (v7)
  {
    v14 = "muted";
  }

  else
  {
    v14 = "unmuted";
  }

  sub_53E8(v48, v14);
  v15 = v50;
  v16 = *v48;
  if (v6)
  {
    v17 = "muted";
  }

  else
  {
    v17 = "unmuted";
  }

  sub_53E8(__p, v17);
  v18 = v48;
  if (v15 < 0)
  {
    v18 = v16;
  }

  if (v47 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  *buf = 136315906;
  *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 635;
  *&buf[18] = 2080;
  *&buf[20] = v18;
  v52 = 2080;
  v53 = v19;
  _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d MuteStateModel: currentState = %s, nextState =%s", buf, 0x26u);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*v48);
    if (v6)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_33:
    if (v6)
    {
      goto LABEL_44;
    }
  }

  v20 = sub_5544(19);
  v21 = sub_5544(39);
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
      goto LABEL_40;
    }
  }

  if ((v23 & v24) == 0)
  {
    v20 = v21;
  }

LABEL_40:
  v25 = *v20;
  if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 609);
    *buf = 136315650;
    *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 641;
    *&buf[18] = 1024;
    *&buf[20] = v26;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Unmuting (explicitly unmuted: %u)", buf, 0x18u);
  }

  (*(**(a1 + 632) + 24))(*(a1 + 632));
LABEL_44:
  if (*(a1 + 616))
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
        goto LABEL_60;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_60:
    v41 = *v27;
    if (v41)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 573;
        *&buf[18] = 2048;
        *&buf[20] = v3;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Volume = %f dB, External Volume Handler: Yes", buf, 0x1Cu);
      }
    }

    (*(a1 + 616))(*(a1 + 624), *(a1 + 600));
LABEL_82:
    *v48 = 1986817377;
    *&v48[4] = *(a1 + 500);
    memset(buf, 0, 24);
    sub_2C8104(buf, v48, &v49, 1uLL);
  }

  v32 = *(a1 + 592);
  if (v32)
  {
    v33 = std::__shared_weak_count::lock(v32);
    if (v33)
    {
      v34 = *(a1 + 584);
      if (v34)
      {
        v35 = (*(*v34 + 136))(*(a1 + 584));
        if (v35 == 1935895666)
        {
          v3 = sub_E9780(a1 + 528, v3);
        }

        v36 = sub_5544(19);
        v37 = sub_5544(39);
        v38 = 0;
        *buf = 0x100000002;
        v39 = *(v36 + 8);
        while (1)
        {
          v40 = *&buf[v38];
          if (((v39 & v40) != 0) != ((*(v37 + 8) & v40) != 0))
          {
            break;
          }

          v38 += 4;
          if (v38 == 8)
          {
            goto LABEL_72;
          }
        }

        if ((v39 & v40) == 0)
        {
          v36 = v37;
        }

LABEL_72:
        v44 = *v36;
        if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = "dB";
          *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 583;
          *buf = 136315906;
          if (v35 == 1935895666)
          {
            v45 = "scalar";
          }

          *&buf[18] = 2048;
          *&buf[20] = v3;
          v52 = 2080;
          v53 = v45;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     SW Volume: %f %s", buf, 0x26u);
        }

        if (v3 != *(a1 + 604) || (*(a1 + 608) & 1) == 0)
        {
          (*(*v34 + 16))(v34, v3);
          *(a1 + 604) = v3;
          *(a1 + 608) = 1;
        }

        goto LABEL_80;
      }
    }
  }

  else
  {
    v33 = 0;
  }

  v42 = sub_5544(14);
  v43 = *v42;
  if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 594;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: software volume is required but we have a NULL software volume command", buf, 0x12u);
  }

LABEL_80:
  if (v33)
  {
    sub_1A8C0(v33);
  }

  goto LABEL_82;
}

void sub_3EAC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (v18)
  {
    sub_1A8C0(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_3EAC64(uint64_t a1, unsigned int *a2, uint64_t a3, double *a4, int *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v63 = sub_5544(14);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      v79 = 1024;
      v80 = 225;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > *a5)
  {
    v66 = sub_5544(14);
    v67 = *v66;
    if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      v79 = 1024;
      v80 = 226;
      _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Data size insufficient.", buf, 0x12u);
    }

    v68 = __cxa_allocate_exception(0x10uLL);
    *v68 = &off_6DDDD0;
    v68[2] = 561211770;
  }

  v13 = *a2;
  if (*a2 > 1986098019)
  {
    if (v13 <= 1986290210)
    {
      if (v13 != 1986098020)
      {
        if (v13 == 1986225518)
        {
          goto LABEL_59;
        }

        if (v13 != 1986229104)
        {
          goto LABEL_67;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v13 <= 1987013740)
      {
        if (v13 == 1986290211)
        {
          v12 = *a5;
          if (v12 != (*(*a1 + 32))(a1, a2, 0, 0))
          {
            v69 = sub_5544(14);
            if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
            {
              v74 = *a2;
              v75 = a2[2];
              sub_22CE0(__p);
            }

            v70 = __cxa_allocate_exception(0x10uLL);
            *v70 = &off_6DDDD0;
            v70[2] = 561211770;
          }

          if (*(a1 + 552))
          {
            v46 = *(*(a1 + 536) + 36);
          }

          else
          {
            v46 = 0.0;
          }

          *a6 = v46;
          v49 = sub_59224(a1 + 528);
          *(a6 + 1) = *&v49;
          return;
        }

        v29 = 1986817377;
        goto LABEL_56;
      }

      if (v13 != 2021027692)
      {
        v29 = 1987013741;
LABEL_56:
        if (v13 != v29)
        {
          goto LABEL_67;
        }

        v45 = *(a1 + 600);
        goto LABEL_76;
      }
    }

    *a5 = 0;
    return;
  }

  if (v13 <= 1684633186)
  {
    if (v13 != 1064725619 && v13 != 1668705648)
    {
      if (v13 != 1684157046)
      {
        goto LABEL_67;
      }

      v30 = *(a1 + 592);
      if (v30)
      {
        v31 = std::__shared_weak_count::lock(v30);
        if (v31)
        {
          v19 = v31;
          v32 = *(a1 + 584);
          if (v32 && (*(*v32 + 288))(*(a1 + 584)))
          {
            v33 = sub_5544(19);
            v34 = *v33;
            if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_INFO))
            {
              v35 = *a6;
              *buf = 136315650;
              *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
              v79 = 1024;
              v80 = 262;
              v81 = 2048;
              v82 = v35;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d Request to convert %f dB to scalar.", buf, 0x1Cu);
            }

            v36 = (*(*v32 + 296))(v32, *a6);
            sub_B3FA4(a5, a6, v36);
            goto LABEL_95;
          }

          sub_1A8C0(v19);
        }
      }

      v45 = sub_E9780(a1 + 528, *a6);
      goto LABEL_76;
    }

LABEL_43:
    v37 = 1;
LABEL_64:

    sub_5440C(v37, a5, a6);
    return;
  }

  if (v13 > 1836414052)
  {
    if (v13 == 1836414053)
    {
      v37 = *(a1 + 609);
      goto LABEL_64;
    }

    if (v13 != 1983013986)
    {
      goto LABEL_67;
    }

    v38 = *(a1 + 592);
    if (v38)
    {
      v39 = std::__shared_weak_count::lock(v38);
      if (v39)
      {
        v19 = v39;
        v40 = *(a1 + 584);
        if (v40 && (*(*v40 + 288))(*(a1 + 584)))
        {
          v41 = sub_5544(19);
          v42 = *v41;
          if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_INFO))
          {
            v43 = *a6;
            *buf = 136315650;
            *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
            v79 = 1024;
            v80 = 249;
            v81 = 2048;
            v82 = v43;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%25s:%-5d Request to convert %f scalar to dB.", buf, 0x1Cu);
          }

          v44 = (*(*v40 + 304))(v40, *a6);
          sub_B3FA4(a5, a6, v44);
          goto LABEL_95;
        }

        sub_1A8C0(v19);
      }
    }

    sub_5B898(a1 + 528, *a6);
LABEL_76:

    sub_B3FA4(a5, a6, v45);
    return;
  }

  if (v13 == 1684633187)
  {
LABEL_59:
    v37 = 0;
    goto LABEL_64;
  }

  if (v13 != 1685484390)
  {
LABEL_67:
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      v79 = 1024;
      v80 = 339;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: GetPropertyDataSize() is correct and HasProperty() returned true, but I do not know about it.", buf, 0x12u);
    }

    return;
  }

  v14 = sub_5544(19);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, *a2);
    if (v77 >= 0)
    {
      *&v16 = COERCE_DOUBLE(__p);
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
    v79 = 1024;
    v80 = 308;
    v81 = 2080;
    v82 = *&v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software volume mode: calculating %s in-house", buf, 0x1Cu);
    if (v77 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3 != 8)
  {
    v71 = sub_5544(14);
    v72 = *v71;
    if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
      v79 = 1024;
      v80 = 309;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v73 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v73, "Precondition failure.");
  }

  v17 = *(a1 + 592);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 584);
      if (!v20)
      {
LABEL_95:
        sub_1A8C0(v19);
        return;
      }

      if (*(a1 + 600) > 0.0 && (*(*v20 + 288))(*(a1 + 584)))
      {
        v21 = *a4;
        v22 = v21 - (*(*v20 + 304))(v20, *(a1 + 600));
        v23 = __exp10(v22 / 20.0);
        v24 = sub_5544(19);
        v25 = sub_5544(39);
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
            goto LABEL_90;
          }
        }

        if ((v27 & v28) == 0)
        {
          v24 = v25;
        }

LABEL_90:
        v61 = *v24;
        if (!v61 || !os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_94;
        }

        v62 = *(a1 + 600);
        *buf = 136316418;
        *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
        v79 = 1024;
        v80 = 322;
        v81 = 2048;
        v82 = v23;
        v83 = 2048;
        v84 = v21;
        v85 = 2048;
        v86 = v62;
        v87 = 2048;
        v88 = v22;
        v58 = "%25s:%-5d Calculated required attenuation of %f for requested DB %f and current scalar volume %f required attenuation in dB %f.";
        v59 = v61;
        v60 = 58;
      }

      else
      {
        v50 = sub_5544(19);
        v51 = sub_5544(39);
        v52 = 0;
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
        v23 = 0.0;
        if (!v55 || !os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_94;
        }

        v56 = *(a1 + 600);
        v57 = (*(*v20 + 288))(v20);
        *buf = 136315906;
        *&buf[4] = "SoftwareOnlyVolumeControl.cpp";
        v79 = 1024;
        v80 = 329;
        v81 = 2048;
        v82 = v56;
        v83 = 1024;
        LODWORD(v84) = v57;
        v58 = "%25s:%-5d Returning 0 attenuation due to volume %f or volume converter support %d";
        v59 = v55;
        v60 = 34;
      }

      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, v58, buf, v60);
LABEL_94:
      __p[0] = *&v23;
      *buf = 0;
      v74 = 0x3FF0000000000000;
      *a6 = *sub_592D8(buf, __p, &v74);
      *a5 = 8;
      goto LABEL_95;
    }
  }
}

void sub_3EB9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3EBA24(uint64_t a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "SoftwareOnlyVolumeControl.cpp";
      v15 = 1024;
      v16 = 178;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v3 = *a2;
  result = 4;
  if (*a2 > 1986098019)
  {
    if (v3 > 1986290210)
    {
      if (v3 > 1987013740)
      {
        if (v3 == 1987013741)
        {
          return result;
        }

        if (v3 != 2021027692)
        {
          goto LABEL_31;
        }
      }

      else if (v3 != 1986290211)
      {
        v5 = 1986817377;
        goto LABEL_25;
      }

      return 16;
    }

    if (v3 == 1986098020)
    {
      return 8;
    }

    if (v3 == 1986225518)
    {
      return result;
    }

    v5 = 1986229104;
LABEL_25:
    if (v3 == v5)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v3 <= 1684633186)
  {
    if (v3 == 1064725619 || v3 == 1668705648 || v3 == 1684157046)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v3 > 1836414052)
  {
    if (v3 == 1836414053)
    {
      return result;
    }

    v5 = 1983013986;
    goto LABEL_25;
  }

  if (v3 == 1684633187)
  {
    return result;
  }

  if (v3 == 1685484390)
  {
    return 8;
  }

LABEL_31:
  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8)
  {
    result = os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v13 = 136315394;
    v14 = "SoftwareOnlyVolumeControl.cpp";
    v15 = 1024;
    v16 = 215;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty() returned true, but I do not know about it.", &v13, 0x12u);
  }

  return 0;
}

NSObject *sub_3EBD0C(void *a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "SoftwareOnlyVolumeControl.cpp";
      v21 = 1024;
      v22 = 135;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v4 = *a2;
  v5 = (&dword_0 + 1);
  if (v4 > 1986098019)
  {
    if (v4 > 1986290210)
    {
      if (v4 > 1987013740)
      {
        if (v4 == 1987013741)
        {
          return v5;
        }

        v7 = 2021027692;
      }

      else
      {
        if (v4 == 1986290211)
        {
          return 0;
        }

        v7 = 1986817377;
      }

      if (v4 == v7)
      {
        return v5;
      }

      goto LABEL_30;
    }

    if (v4 != 1986098020)
    {
      if (v4 == 1986225518)
      {
        return 0;
      }

      v6 = 1986229104;
LABEL_24:
      if (v4 == v6)
      {
        return 0;
      }

LABEL_30:
      v11 = sub_5544(14);
      v5 = *v11;
      if (!*v11)
      {
        return v5;
      }

      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "SoftwareOnlyVolumeControl.cpp";
        v21 = 1024;
        v22 = 168;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty() returned true, but I do not know about it.", &v19, 0x12u);
      }

      return 0;
    }

    v12 = a1[74];
    if (!v12)
    {
      return 0;
    }

    v13 = std::__shared_weak_count::lock(v12);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = a1[73];
    if (v15)
    {
      v5 = (*(*v15 + 72))(v15);
    }

    else
    {
      v5 = 0;
    }

    sub_1A8C0(v14);
  }

  else
  {
    if (v4 <= 1684633186)
    {
      if (v4 == 1064725619 || v4 == 1668705648 || v4 == 1684157046)
      {
        return 0;
      }

      goto LABEL_30;
    }

    if (v4 <= 1836414052)
    {
      if (v4 != 1684633187)
      {
        v6 = 1685484390;
        goto LABEL_24;
      }

      return 0;
    }

    if (v4 != 1836414053)
    {
      v6 = 1983013986;
      goto LABEL_24;
    }
  }

  return v5;
}

uint64_t sub_3EC064(uint64_t a1, int *a2)
{
  v3 = 0;
  v4 = *a2;
  if (*a2 > 1986098019)
  {
    if (v4 <= 1986290210)
    {
      if (v4 == 1986098020)
      {
        v14 = *(a1 + 592);
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v7 = v15;
            v16 = *(a1 + 584);
            if (v16)
            {
              v9 = (*(*v16 + 72))(v16);
              goto LABEL_32;
            }

LABEL_34:
            v3 = 0;
            goto LABEL_35;
          }
        }

        return 0;
      }

      v10 = v4 == 1986225518;
      v11 = 1986229104;
    }

    else if (v4 > 1987013740)
    {
      v10 = v4 == 2021027692;
      v11 = 1987013741;
    }

    else
    {
      v10 = v4 == 1986290211;
      v11 = 1986817377;
    }

LABEL_21:
    if (!v10 && v4 != v11)
    {
      return v3;
    }

    return 1;
  }

  if (v4 <= 1684633186)
  {
    v10 = v4 == 1064725619 || v4 == 1668705648;
    v11 = 1684157046;
    goto LABEL_21;
  }

  if (v4 > 1836414052)
  {
    v10 = v4 == 1836414053;
    v11 = 1983013986;
    goto LABEL_21;
  }

  if (v4 == 1684633187)
  {
    return 1;
  }

  if (v4 == 1685484390)
  {
    v5 = *(a1 + 592);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 584);
        if (v8)
        {
          v9 = (*(*v8 + 288))(v8);
LABEL_32:
          v3 = v9;
LABEL_35:
          sub_1A8C0(v7);
          return v3;
        }

        goto LABEL_34;
      }
    }

    return 0;
  }

  return v3;
}

void sub_3EC268(uint64_t a1)
{
  sub_3E8DDC(a1);

  operator delete();
}

void sub_3EC380(CFArrayRef *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    *a1 = 0;
  }

  else
  {
    v4 = a2;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v28 = *a2;
    v5 = v28;
    sub_3EC854(&v28);
    v6 = 0;
    v7 = v4 + 4;
    v8 = (v5 >> 24) * BYTE2(v5);
    v9 = -4 - v8;
    do
    {
      v10 = *v4++;
      v6 += v10;
      ++v9;
    }

    while (v9);
    if (0x10000 - v6 == *&v7[v8])
    {
      if (BYTE3(v5))
      {
        do
        {
          v11 = *v7;
          v12 = *(v7 + 2);
          v13 = CFStringCreateWithBytes(0, "trim_gain_data_source_id", 24, 0x8000100u, 0);
          v33[1] = v13;
          if (!v13)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          LODWORD(valuePtr[0]) = v12;
          v14 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
          v33[0] = v14;
          if (!v14)
          {
            v24 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v24, "Could not construct");
          }

          sub_3EC9AC(buf, v13, v33);
          v15 = CFStringCreateWithBytes(0, "trim_gain_db", 12, 0x8000100u, 0);
          v32[1] = v15;
          if (!v15)
          {
            v25 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v25, "Could not construct");
          }

          *valuePtr = v11 * 0.1;
          v16 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          v32[0] = v16;
          if (!v16)
          {
            v26 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v26, "Could not construct");
          }

          sub_3EC9AC((v37 + 2), v15, v32);
          valuePtr[0] = buf;
          valuePtr[1] = 2;
          v17 = 0;
          cf = sub_69CE8(valuePtr);
          do
          {
            v18 = *(&v37[v17 + 2] + 2);
            if (v18)
            {
              CFRelease(v18);
            }

            v19 = *(&v37[v17] + 2);
            if (v19)
            {
              CFRelease(v19);
            }

            v17 -= 4;
          }

          while (v17 != -8);
          CFRelease(v16);
          CFRelease(v15);
          CFRelease(v14);
          CFRelease(v13);
          sub_75F38(&v29, &cf);
          if (cf)
          {
            CFRelease(cf);
          }

          v7 += 6;
        }

        while (v5 >> 24 > (v30 - v29) >> 3);
      }

      v20 = sub_76110(&v29);
    }

    else
    {
      v21 = sub_5544(14);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "FDRDataImpl.cpp";
        v36 = 1024;
        v37[0] = 495;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d FDR Checksum failed for data returned from EDT! Returning empty ascf::ArrayRef", buf, 0x12u);
      }

      v20 = 0;
    }

    *a1 = v20;
    *buf = &v29;
    sub_761AC(buf);
  }
}

void sub_3EC75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a12;
  sub_761AC(&a21);
  _Unwind_Resume(a1);
}

void sub_3EC854(unsigned __int16 *a1)
{
  if (*a1 - 1 >= 5)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v4 = *a1;
        v7 = 136315650;
        v8 = "FDRDataImpl.cpp";
        v9 = 1024;
        v10 = 167;
        v11 = 1024;
        v12 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: FDRData accessor returned version: %d", &v7, 0x18u);
      }
    }
  }

  if (!*(a1 + 2))
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "FDRDataImpl.cpp";
        v9 = 1024;
        v10 = 168;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: FDRData accessor for TrimGains has a size of zero!", &v7, 0x12u);
      }
    }
  }
}

void *sub_3EC9AC(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

void sub_3ECA0C(CFArrayRef *a1, const __CFArray **a2, const __CFArray **a3)
{
  v4 = *a2;
  if (*a2)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    Count = CFArrayGetCount(v4);
    v7 = Count;
    v8 = *a2;
    if (v8)
    {
      v9 = CFArrayGetCount(v8);
      if (!v7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = 0;
      if (!Count)
      {
        goto LABEL_25;
      }
    }

    v11 = 0;
    do
    {
      if (v4 == v8 && v9 == v11)
      {
        break;
      }

      sub_233E00(&cf, v4, v11);
      if (v28 >= v29)
      {
        v13 = v28 - v27;
        if ((v13 + 1) >> 61)
        {
          sub_189A00();
        }

        v14 = (v29 - v27) >> 2;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v29 - v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v35 = &v27;
        if (v15)
        {
          sub_1DB8DC(v15);
        }

        v16 = (8 * v13);
        v31 = 0;
        v32 = v16;
        v34 = 0;
        sub_3ECD4C(v16, cf);
        v33 = (v16 + 1);
        sub_76010(&v27, &v31);
        v12 = v28;
        sub_760C0(&v31);
      }

      else
      {
        v12 = sub_3ECD4C(v28, cf) + 1;
      }

      v28 = v12;
      if (cf)
      {
        CFRelease(cf);
      }

      ++v11;
    }

    while (v7 != v11);
LABEL_25:
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_47;
    }

    goto LABEL_26;
  }

  v10 = *a3;
  if (*a3)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_26:
    v17 = CFArrayGetCount(v10);
    v18 = v17;
    v19 = *a3;
    if (v19)
    {
      v20 = CFArrayGetCount(v19);
      if (!v18)
      {
        goto LABEL_47;
      }

LABEL_30:
      v21 = 0;
      do
      {
        if (v10 == v19 && v20 == v21)
        {
          break;
        }

        sub_233E00(&cf, v10, v21);
        if (v28 >= v29)
        {
          v23 = v28 - v27;
          if ((v23 + 1) >> 61)
          {
            sub_189A00();
          }

          v24 = (v29 - v27) >> 2;
          if (v24 <= v23 + 1)
          {
            v24 = v23 + 1;
          }

          if (v29 - v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          v35 = &v27;
          if (v25)
          {
            sub_1DB8DC(v25);
          }

          v31 = 0;
          v32 = 8 * v23;
          v34 = 0;
          sub_3ECD4C((8 * v23), cf);
          v33 = 8 * v23 + 8;
          sub_76010(&v27, &v31);
          v22 = v28;
          sub_760C0(&v31);
        }

        else
        {
          v22 = sub_3ECD4C(v28, cf) + 1;
        }

        v28 = v22;
        if (cf)
        {
          CFRelease(cf);
        }

        ++v21;
      }

      while (v18 != v21);
      goto LABEL_47;
    }

    v20 = 0;
    if (v17)
    {
      goto LABEL_30;
    }

LABEL_47:
    *a1 = sub_76110(&v27);
    v31 = &v27;
    sub_761AC(&v31);
    return;
  }

  *a1 = 0;
}

void sub_3ECD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_761AC(&a13);
  _Unwind_Resume(a1);
}

void *sub_3ECD4C(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void sub_3ECD88(CFArrayRef *a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v1)
  {
    v68 = sub_5544(14);
    v69 = *v68;
    if (*v68 && os_log_type_enabled(*v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v2 = CFStringCreateWithBytes(0, "mic-trim-gains-2", 16, 0x8000100u, 0);
  *buf = v2;
  if (!v2)
  {
    v71 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v71, "Could not construct");
  }

  CFProperty = IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0);
  *v251 = CFProperty;
  if (!CFProperty)
  {
    goto LABEL_205;
  }

  v4 = CFGetTypeID(CFProperty);
  if (v4 != CFDataGetTypeID())
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v76, "Could not construct");
  }

  if (!*v251)
  {
LABEL_205:
    v64 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v64, "Could not construct");
  }

  sub_28DF08(&cf, *v251);
  if (*v251)
  {
    CFRelease(*v251);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v1);
  v5 = cf;
  memset(buf, 0, 24);
  if (cf != v243)
  {
    sub_3E7DF8(buf, cf, v243, v243 - cf);
  }

  if (v5)
  {
    operator delete(v5);
  }

  if (*&buf[8] - *buf < 4uLL)
  {
    v6 = 0;
    v7 = 0;
    if (!*buf)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = **buf;
  }

  operator delete(*buf);
  v7 = v6;
LABEL_18:
  v8 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v8)
  {
    v72 = sub_5544(14);
    v73 = *v72;
    if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    v74 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v74, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v9 = CFStringCreateWithBytes(0, "mic-trim-gains-1", 16, 0x8000100u, 0);
  *buf = v9;
  if (!v9)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v75, "Could not construct");
  }

  v10 = IORegistryEntryCreateCFProperty(v8, v9, kCFAllocatorDefault, 0);
  *v251 = v10;
  if (!v10)
  {
    goto LABEL_206;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
    v81 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v81, "Could not construct");
  }

  if (!*v251)
  {
LABEL_206:
    v65 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v65, "Could not construct");
  }

  sub_28DF08(&cf, *v251);
  if (*v251)
  {
    CFRelease(*v251);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v8);
  v12 = cf;
  memset(buf, 0, 24);
  if (cf != v243)
  {
    sub_3E7DF8(buf, cf, v243, v243 - cf);
  }

  if (v12)
  {
    operator delete(v12);
  }

  if (*&buf[8] - *buf < 4uLL)
  {
    v13 = 0;
    v233 = 0;
    if (!*buf)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v13 = **buf;
  }

  operator delete(*buf);
  v233 = v13;
LABEL_35:
  v14 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
  if (!v14)
  {
    v77 = sub_5544(14);
    v78 = *v77;
    if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "EDTUtilsImpl.h";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      *&buf[18] = 2080;
      *&buf[20] = "IODeviceTree:/product/audio";
      _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
    }

    v79 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v79, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
  }

  v15 = CFStringCreateWithBytes(0, "mic-trim-gains-0", 16, 0x8000100u, 0);
  *buf = v15;
  if (!v15)
  {
    v80 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v80, "Could not construct");
  }

  v16 = IORegistryEntryCreateCFProperty(v14, v15, kCFAllocatorDefault, 0);
  *v251 = v16;
  if (!v16)
  {
    goto LABEL_207;
  }

  v17 = CFGetTypeID(v16);
  if (v17 != CFDataGetTypeID())
  {
    v82 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v82, "Could not construct");
  }

  if (!*v251)
  {
LABEL_207:
    v66 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v66, "Could not construct");
  }

  sub_28DF08(&cf, *v251);
  if (*v251)
  {
    CFRelease(*v251);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  IOObjectRelease(v14);
  v18 = cf;
  memset(buf, 0, 24);
  if (cf != v243)
  {
    sub_3E7DF8(buf, cf, v243, v243 - cf);
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (*&buf[8] - *buf >= 4uLL)
  {
    v19 = **buf;
LABEL_51:
    operator delete(*buf);
    v230 = v19;
    goto LABEL_52;
  }

  v19 = 0;
  v230 = 0;
  if (*buf)
  {
    goto LABEL_51;
  }

LABEL_52:
  v20 = sub_5544(18);
  v21 = *v20;
  if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "FDRDataImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 356;
    *&buf[18] = 2080;
    *&buf[20] = "mic-trim-gains-2";
    *&buf[28] = 1024;
    *&buf[30] = v7;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Trim Gain key '%s' using version %u", buf, 0x22u);
  }

  if ((v7 - 1) < 4)
  {
    v22 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v22)
    {
      v83 = sub_5544(14);
      v84 = *v83;
      if (*v83 && os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      v85 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v85, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v23 = CFStringCreateWithBytes(0, "mic-trim-gains-2", 16, 0x8000100u, 0);
    *buf = v23;
    if (!v23)
    {
      v86 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v86, "Could not construct");
    }

    v24 = IORegistryEntryCreateCFProperty(v22, v23, kCFAllocatorDefault, 0);
    cf = v24;
    if (!v24)
    {
      goto LABEL_208;
    }

    v25 = CFGetTypeID(v24);
    if (v25 != CFDataGetTypeID())
    {
      v87 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v87, "Could not construct");
    }

    if (!cf)
    {
LABEL_208:
      v67 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v67, "Could not construct");
    }

    sub_28DF08(&v249, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v22);
    if (v249 != v250)
    {
      sub_3EC380(&v238, v249, v250);
      v26 = sub_5544(18);
      if (*(v26 + 8))
      {
        v27 = *v26;
        if (*v26)
        {
          if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
          {
            v28 = CFCopyDescription(v238);
            *v251 = v28;
            sub_1267C(&cf, v28);
            if (v28)
            {
              CFRelease(v28);
            }

            p_cf = &cf;
            if (SHIBYTE(v244) < 0)
            {
              p_cf = cf;
            }

            *buf = 136316162;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 319;
            *&buf[18] = 2080;
            *&buf[20] = "IODeviceTree:/product/audio";
            *&buf[28] = 2080;
            *&buf[30] = "mic-trim-gains-2";
            v259 = 2080;
            v260 = p_cf;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(cf);
            }
          }
        }
      }

      if ((atomic_load_explicit(&qword_6FC608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC608))
      {
        word_6FC600 = sub_286A28();
        __cxa_guard_release(&qword_6FC608);
      }

      if (word_6FC600 != 1 || HIBYTE(word_6FC600) != 1)
      {
        goto LABEL_249;
      }

      if (v238)
      {
        v30 = sub_5544(18);
        v31 = *v30;
        if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "mic-trim-gains-2";
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
        }

        v32 = v238;
        if (!v238)
        {
          goto LABEL_249;
        }

        Count = CFArrayGetCount(v238);
        v219 = v238;
        v215 = v238 ? CFArrayGetCount(v238) : 0;
        if (!Count)
        {
          goto LABEL_249;
        }

        v44 = 0;
LABEL_121:
        if (v32 == v219 && v44 == v215)
        {
          goto LABEL_249;
        }

        sub_233E00(&v248, v32, v44);
        v45 = sub_5544(18);
        v46 = *v45;
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 333;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
        }

        sub_36CAF8(buf, v248);
        sub_36CAF8(&cf, v248);
        v243 = (v245 - v244) >> 3;
        while (1)
        {
          if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
          {
            v47 = cf;
          }

          else
          {
            v47 = cf;
            if (!cf || v243 == (v245 - v244) >> 3)
            {
LABEL_145:
              if (v246)
              {
                v247 = v246;
                operator delete(v246);
              }

              if (v244)
              {
                v245 = v244;
                operator delete(v244);
              }

              if (v260)
              {
                v261 = v260;
                operator delete(v260);
              }

              if (*&buf[16])
              {
                *&buf[24] = *&buf[16];
                operator delete(*&buf[16]);
              }

              v51 = sub_5544(18);
              v52 = *v51;
              if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "FDRDataImpl.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 338;
                _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
              }

              if (v248)
              {
                CFRelease(v248);
              }

              if (++v44 == Count)
              {
                goto LABEL_249;
              }

              goto LABEL_121;
            }
          }

          if (*buf == v47 && *&buf[8] == v243)
          {
            goto LABEL_145;
          }

          sub_36CB7C(__p, buf);
          v48 = sub_5544(18);
          v49 = *v48;
          if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_DEFAULT))
          {
            v50 = __p;
            if (v240 < 0)
            {
              v50 = __p[0];
            }

            *v251 = 136315906;
            *&v251[4] = "FDRDataImpl.cpp";
            v252 = 1024;
            v253 = 336;
            v254 = 2080;
            v255 = v50;
            v256 = 2112;
            v257 = v241;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v251, 0x26u);
          }

          if (v241)
          {
            CFRelease(v241);
          }

          if (v240 < 0)
          {
            operator delete(__p[0]);
          }

          ++*&buf[8];
        }
      }

LABEL_160:
      v53 = sub_5544(18);
      v54 = *v53;
      if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 326;
        *&buf[18] = 2080;
        *&buf[20] = "mic-trim-gains-2";
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
      }

      goto LABEL_249;
    }

LABEL_248:
    v238 = 0;
    goto LABEL_249;
  }

  if (v7 == 5)
  {
    v33 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v33)
    {
      v89 = sub_5544(14);
      v90 = *v89;
      if (*v89 && os_log_type_enabled(*v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      v91 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v91, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v34 = CFStringCreateWithBytes(0, "mic-trim-gains-2", 16, 0x8000100u, 0);
    *buf = v34;
    if (!v34)
    {
      v92 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v92, "Could not construct");
    }

    v35 = IORegistryEntryCreateCFProperty(v33, v34, kCFAllocatorDefault, 0);
    cf = v35;
    if (!v35)
    {
      goto LABEL_235;
    }

    v36 = CFGetTypeID(v35);
    if (v36 != CFDataGetTypeID())
    {
      v93 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v93, "Could not construct");
    }

    if (!cf)
    {
LABEL_235:
      v88 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v88, "Could not construct");
    }

    sub_28DF08(&v249, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v33);
    if (v249 == v250)
    {
      goto LABEL_248;
    }

    sub_3F19CC(&v238, v249, v250);
    v37 = sub_5544(18);
    if (*(v37 + 8))
    {
      v38 = *v37;
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEBUG))
        {
          v39 = CFCopyDescription(v238);
          *v251 = v39;
          sub_1267C(&cf, v39);
          if (v39)
          {
            CFRelease(v39);
          }

          v40 = &cf;
          if (SHIBYTE(v244) < 0)
          {
            v40 = cf;
          }

          *buf = 136316162;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          *&buf[28] = 2080;
          *&buf[30] = "mic-trim-gains-2";
          v259 = 2080;
          v260 = v40;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
          if (SHIBYTE(v244) < 0)
          {
            operator delete(cf);
          }
        }
      }
    }

    if ((atomic_load_explicit(&qword_6FC618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC618))
    {
      word_6FC610 = sub_286A28();
      __cxa_guard_release(&qword_6FC618);
    }

    if (word_6FC610 != 1 || HIBYTE(word_6FC610) != 1)
    {
      goto LABEL_249;
    }

    if (!v238)
    {
      goto LABEL_160;
    }

    v41 = sub_5544(18);
    v42 = *v41;
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 330;
      *&buf[18] = 2080;
      *&buf[20] = "mic-trim-gains-2";
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
    }

    v43 = v238;
    if (!v238 || ((v222 = CFArrayGetCount(v238), (v220 = v238) == 0) ? (v216 = 0) : (v216 = CFArrayGetCount(v238)), !v222))
    {
LABEL_249:
      if (v249)
      {
        operator delete(v249);
      }

      goto LABEL_251;
    }

    v55 = 0;
LABEL_166:
    if (v43 == v220 && v55 == v216)
    {
      goto LABEL_249;
    }

    sub_233E00(&v248, v43, v55);
    v56 = sub_5544(18);
    v57 = *v56;
    if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 333;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
    }

    sub_36CAF8(buf, v248);
    sub_36CAF8(&cf, v248);
    v243 = (v245 - v244) >> 3;
    while (1)
    {
      if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
      {
        v58 = cf;
      }

      else
      {
        v58 = cf;
        if (!cf || v243 == (v245 - v244) >> 3)
        {
LABEL_190:
          if (v246)
          {
            v247 = v246;
            operator delete(v246);
          }

          if (v244)
          {
            v245 = v244;
            operator delete(v244);
          }

          if (v260)
          {
            v261 = v260;
            operator delete(v260);
          }

          if (*&buf[16])
          {
            *&buf[24] = *&buf[16];
            operator delete(*&buf[16]);
          }

          v62 = sub_5544(18);
          v63 = *v62;
          if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 338;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
          }

          if (v248)
          {
            CFRelease(v248);
          }

          if (++v55 == v222)
          {
            goto LABEL_249;
          }

          goto LABEL_166;
        }
      }

      if (*buf == v58 && *&buf[8] == v243)
      {
        goto LABEL_190;
      }

      sub_36CB7C(__p, buf);
      v59 = sub_5544(18);
      v60 = *v59;
      if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = __p;
        if (v240 < 0)
        {
          v61 = __p[0];
        }

        *v251 = 136315906;
        *&v251[4] = "FDRDataImpl.cpp";
        v252 = 1024;
        v253 = 336;
        v254 = 2080;
        v255 = v61;
        v256 = 2112;
        v257 = v241;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v251, 0x26u);
      }

      if (v241)
      {
        CFRelease(v241);
      }

      if (v240 < 0)
      {
        operator delete(__p[0]);
      }

      ++*&buf[8];
    }
  }

  if (v7)
  {
    v94 = sub_5544(14);
    v95 = *v94;
    if (*v94 && os_log_type_enabled(*v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      *&buf[24] = 2080;
      *&buf[26] = "mic-trim-gains-2";
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unrecognized FDRVersion: %u using key %s", buf, 0x22u);
    }

    v96 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v96, "Unrecognized FDRVersion: %u using key %s");
  }

  v238 = 0;
LABEL_251:
  v97 = sub_5544(18);
  v98 = *v97;
  if (*v97 && os_log_type_enabled(*v97, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "FDRDataImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 356;
    *&buf[18] = 2080;
    *&buf[20] = "mic-trim-gains-1";
    *&buf[28] = 1024;
    *&buf[30] = v233;
    _os_log_impl(&dword_0, v98, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Trim Gain key '%s' using version %u", buf, 0x22u);
  }

  if ((v233 - 1) < 4)
  {
    v99 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v99)
    {
      v142 = sub_5544(14);
      v143 = *v142;
      if (*v142 && os_log_type_enabled(*v142, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v143, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      v144 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v144, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v100 = CFStringCreateWithBytes(0, "mic-trim-gains-1", 16, 0x8000100u, 0);
    *buf = v100;
    if (!v100)
    {
      v145 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v145, "Could not construct");
    }

    v101 = IORegistryEntryCreateCFProperty(v99, v100, kCFAllocatorDefault, 0);
    cf = v101;
    if (!v101)
    {
      goto LABEL_404;
    }

    v102 = CFGetTypeID(v101);
    if (v102 != CFDataGetTypeID())
    {
      v146 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v146, "Could not construct");
    }

    if (!cf)
    {
LABEL_404:
      v141 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v141, "Could not construct");
    }

    sub_28DF08(&v249, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v99);
    if (v249 != v250)
    {
      sub_3EC380(&v237, v249, v250);
      v103 = sub_5544(18);
      if (*(v103 + 8))
      {
        v104 = *v103;
        if (*v103)
        {
          if (os_log_type_enabled(*v103, OS_LOG_TYPE_DEBUG))
          {
            v105 = CFCopyDescription(v237);
            *v251 = v105;
            sub_1267C(&cf, v105);
            if (v105)
            {
              CFRelease(v105);
            }

            v106 = &cf;
            if (SHIBYTE(v244) < 0)
            {
              v106 = cf;
            }

            *buf = 136316162;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 319;
            *&buf[18] = 2080;
            *&buf[20] = "IODeviceTree:/product/audio";
            *&buf[28] = 2080;
            *&buf[30] = "mic-trim-gains-1";
            v259 = 2080;
            v260 = v106;
            _os_log_impl(&dword_0, v104, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(cf);
            }
          }
        }
      }

      if ((atomic_load_explicit(&qword_6FC628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC628))
      {
        word_6FC620 = sub_286A28();
        __cxa_guard_release(&qword_6FC628);
      }

      if (word_6FC620 != 1 || HIBYTE(word_6FC620) != 1)
      {
        goto LABEL_427;
      }

      if (v237)
      {
        v107 = sub_5544(18);
        v108 = *v107;
        if (*v107 && os_log_type_enabled(*v107, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "mic-trim-gains-1";
          _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
        }

        v109 = v237;
        if (!v237)
        {
          goto LABEL_427;
        }

        v228 = CFArrayGetCount(v237);
        v223 = v237;
        v217 = v237 ? CFArrayGetCount(v237) : 0;
        if (!v228)
        {
          goto LABEL_427;
        }

        v121 = 0;
LABEL_320:
        if (v109 == v223 && v121 == v217)
        {
          goto LABEL_427;
        }

        sub_233E00(&v248, v109, v121);
        v122 = sub_5544(18);
        v123 = *v122;
        if (*v122 && os_log_type_enabled(*v122, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 333;
          _os_log_impl(&dword_0, v123, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
        }

        sub_36CAF8(buf, v248);
        sub_36CAF8(&cf, v248);
        v243 = (v245 - v244) >> 3;
        while (1)
        {
          if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
          {
            v124 = cf;
          }

          else
          {
            v124 = cf;
            if (!cf || v243 == (v245 - v244) >> 3)
            {
LABEL_344:
              if (v246)
              {
                v247 = v246;
                operator delete(v246);
              }

              if (v244)
              {
                v245 = v244;
                operator delete(v244);
              }

              if (v260)
              {
                v261 = v260;
                operator delete(v260);
              }

              if (*&buf[16])
              {
                *&buf[24] = *&buf[16];
                operator delete(*&buf[16]);
              }

              v128 = sub_5544(18);
              v129 = *v128;
              if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "FDRDataImpl.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 338;
                _os_log_impl(&dword_0, v129, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
              }

              if (v248)
              {
                CFRelease(v248);
              }

              if (++v121 == v228)
              {
                goto LABEL_427;
              }

              goto LABEL_320;
            }
          }

          if (*buf == v124 && *&buf[8] == v243)
          {
            goto LABEL_344;
          }

          sub_36CB7C(__p, buf);
          v125 = sub_5544(18);
          v126 = *v125;
          if (*v125 && os_log_type_enabled(*v125, OS_LOG_TYPE_DEFAULT))
          {
            v127 = __p;
            if (v240 < 0)
            {
              v127 = __p[0];
            }

            *v251 = 136315906;
            *&v251[4] = "FDRDataImpl.cpp";
            v252 = 1024;
            v253 = 336;
            v254 = 2080;
            v255 = v127;
            v256 = 2112;
            v257 = v241;
            _os_log_impl(&dword_0, v126, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v251, 0x26u);
          }

          if (v241)
          {
            CFRelease(v241);
          }

          if (v240 < 0)
          {
            operator delete(__p[0]);
          }

          ++*&buf[8];
        }
      }

LABEL_359:
      v130 = sub_5544(18);
      v131 = *v130;
      if (*v130 && os_log_type_enabled(*v130, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 326;
        *&buf[18] = 2080;
        *&buf[20] = "mic-trim-gains-1";
        _os_log_impl(&dword_0, v131, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
      }

      goto LABEL_427;
    }

LABEL_426:
    v237 = 0;
    goto LABEL_427;
  }

  if (v233 == 5)
  {
    v110 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v110)
    {
      v148 = sub_5544(14);
      v149 = *v148;
      if (*v148 && os_log_type_enabled(*v148, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      v150 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v150, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v111 = CFStringCreateWithBytes(0, "mic-trim-gains-1", 16, 0x8000100u, 0);
    *buf = v111;
    if (!v111)
    {
      v151 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v151, "Could not construct");
    }

    v112 = IORegistryEntryCreateCFProperty(v110, v111, kCFAllocatorDefault, 0);
    cf = v112;
    if (!v112)
    {
      goto LABEL_413;
    }

    v113 = CFGetTypeID(v112);
    if (v113 != CFDataGetTypeID())
    {
      v152 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v152, "Could not construct");
    }

    if (!cf)
    {
LABEL_413:
      v147 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v147, "Could not construct");
    }

    sub_28DF08(&v249, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v110);
    if (v249 == v250)
    {
      goto LABEL_426;
    }

    sub_3F19CC(&v237, v249, v250);
    v114 = sub_5544(18);
    if (*(v114 + 8))
    {
      v115 = *v114;
      if (*v114)
      {
        if (os_log_type_enabled(*v114, OS_LOG_TYPE_DEBUG))
        {
          v116 = CFCopyDescription(v237);
          *v251 = v116;
          sub_1267C(&cf, v116);
          if (v116)
          {
            CFRelease(v116);
          }

          v117 = &cf;
          if (SHIBYTE(v244) < 0)
          {
            v117 = cf;
          }

          *buf = 136316162;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          *&buf[28] = 2080;
          *&buf[30] = "mic-trim-gains-1";
          v259 = 2080;
          v260 = v117;
          _os_log_impl(&dword_0, v115, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
          if (SHIBYTE(v244) < 0)
          {
            operator delete(cf);
          }
        }
      }
    }

    if ((atomic_load_explicit(&qword_6FC638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC638))
    {
      word_6FC630 = sub_286A28();
      __cxa_guard_release(&qword_6FC638);
    }

    if (word_6FC630 != 1 || HIBYTE(word_6FC630) != 1)
    {
      goto LABEL_427;
    }

    if (!v237)
    {
      goto LABEL_359;
    }

    v118 = sub_5544(18);
    v119 = *v118;
    if (*v118 && os_log_type_enabled(*v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 330;
      *&buf[18] = 2080;
      *&buf[20] = "mic-trim-gains-1";
      _os_log_impl(&dword_0, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
    }

    v120 = v237;
    if (!v237 || ((v229 = CFArrayGetCount(v237), (v224 = v237) == 0) ? (v218 = 0) : (v218 = CFArrayGetCount(v237)), !v229))
    {
LABEL_427:
      if (v249)
      {
        operator delete(v249);
      }

      goto LABEL_429;
    }

    v132 = 0;
LABEL_365:
    if (v120 == v224 && v132 == v218)
    {
      goto LABEL_427;
    }

    sub_233E00(&v248, v120, v132);
    v133 = sub_5544(18);
    v134 = *v133;
    if (*v133 && os_log_type_enabled(*v133, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 333;
      _os_log_impl(&dword_0, v134, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
    }

    sub_36CAF8(buf, v248);
    sub_36CAF8(&cf, v248);
    v243 = (v245 - v244) >> 3;
    while (1)
    {
      if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
      {
        v135 = cf;
      }

      else
      {
        v135 = cf;
        if (!cf || v243 == (v245 - v244) >> 3)
        {
LABEL_389:
          if (v246)
          {
            v247 = v246;
            operator delete(v246);
          }

          if (v244)
          {
            v245 = v244;
            operator delete(v244);
          }

          if (v260)
          {
            v261 = v260;
            operator delete(v260);
          }

          if (*&buf[16])
          {
            *&buf[24] = *&buf[16];
            operator delete(*&buf[16]);
          }

          v139 = sub_5544(18);
          v140 = *v139;
          if (*v139 && os_log_type_enabled(*v139, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 338;
            _os_log_impl(&dword_0, v140, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
          }

          if (v248)
          {
            CFRelease(v248);
          }

          if (++v132 == v229)
          {
            goto LABEL_427;
          }

          goto LABEL_365;
        }
      }

      if (*buf == v135 && *&buf[8] == v243)
      {
        goto LABEL_389;
      }

      sub_36CB7C(__p, buf);
      v136 = sub_5544(18);
      v137 = *v136;
      if (*v136 && os_log_type_enabled(*v136, OS_LOG_TYPE_DEFAULT))
      {
        v138 = __p;
        if (v240 < 0)
        {
          v138 = __p[0];
        }

        *v251 = 136315906;
        *&v251[4] = "FDRDataImpl.cpp";
        v252 = 1024;
        v253 = 336;
        v254 = 2080;
        v255 = v138;
        v256 = 2112;
        v257 = v241;
        _os_log_impl(&dword_0, v137, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v251, 0x26u);
      }

      if (v241)
      {
        CFRelease(v241);
      }

      if (v240 < 0)
      {
        operator delete(__p[0]);
      }

      ++*&buf[8];
    }
  }

  if (v233)
  {
    v153 = sub_5544(14);
    v154 = *v153;
    if (*v153 && os_log_type_enabled(*v153, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 1024;
      *&buf[20] = v233;
      *&buf[24] = 2080;
      *&buf[26] = "mic-trim-gains-1";
      _os_log_impl(&dword_0, v154, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unrecognized FDRVersion: %u using key %s", buf, 0x22u);
    }

    v155 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v155, "Unrecognized FDRVersion: %u using key %s");
  }

  v237 = 0;
LABEL_429:
  v156 = sub_5544(18);
  v157 = *v156;
  if (*v156 && os_log_type_enabled(*v156, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "FDRDataImpl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 356;
    *&buf[18] = 2080;
    *&buf[20] = "mic-trim-gains-0";
    *&buf[28] = 1024;
    *&buf[30] = v230;
    _os_log_impl(&dword_0, v157, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Trim Gain key '%s' using version %u", buf, 0x22u);
  }

  if ((v230 - 1) < 4)
  {
    v158 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v158)
    {
      v201 = sub_5544(14);
      v202 = *v201;
      if (*v201 && os_log_type_enabled(*v201, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v202, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      v203 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v203, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v159 = CFStringCreateWithBytes(0, "mic-trim-gains-0", 16, 0x8000100u, 0);
    *buf = v159;
    if (!v159)
    {
      v204 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v204, "Could not construct");
    }

    v160 = IORegistryEntryCreateCFProperty(v158, v159, kCFAllocatorDefault, 0);
    cf = v160;
    if (!v160)
    {
      goto LABEL_582;
    }

    v161 = CFGetTypeID(v160);
    if (v161 != CFDataGetTypeID())
    {
      v205 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v205, "Could not construct");
    }

    if (!cf)
    {
LABEL_582:
      v200 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v200, "Could not construct");
    }

    sub_28DF08(&v249, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v158);
    if (v249 != v250)
    {
      sub_3EC380(&v236, v249, v250);
      v162 = sub_5544(18);
      if (*(v162 + 8))
      {
        v163 = *v162;
        if (*v162)
        {
          if (os_log_type_enabled(*v162, OS_LOG_TYPE_DEBUG))
          {
            v164 = CFCopyDescription(v236);
            *v251 = v164;
            sub_1267C(&cf, v164);
            if (v164)
            {
              CFRelease(v164);
            }

            v165 = &cf;
            if (SHIBYTE(v244) < 0)
            {
              v165 = cf;
            }

            *buf = 136316162;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 319;
            *&buf[18] = 2080;
            *&buf[20] = "IODeviceTree:/product/audio";
            *&buf[28] = 2080;
            *&buf[30] = "mic-trim-gains-0";
            v259 = 2080;
            v260 = v165;
            _os_log_impl(&dword_0, v163, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(cf);
            }
          }
        }
      }

      if ((atomic_load_explicit(&qword_6FC658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC658))
      {
        word_6FC650 = sub_286A28();
        __cxa_guard_release(&qword_6FC658);
      }

      if (word_6FC650 != 1 || HIBYTE(word_6FC650) != 1)
      {
        goto LABEL_605;
      }

      if (v236)
      {
        v166 = sub_5544(18);
        v167 = *v166;
        if (*v166 && os_log_type_enabled(*v166, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "mic-trim-gains-0";
          _os_log_impl(&dword_0, v167, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
        }

        v168 = v236;
        if (!v236)
        {
          goto LABEL_605;
        }

        v234 = CFArrayGetCount(v236);
        v231 = v236;
        v225 = v236 ? CFArrayGetCount(v236) : 0;
        if (!v234)
        {
          goto LABEL_605;
        }

        v180 = 0;
LABEL_498:
        if (v168 == v231 && v180 == v225)
        {
          goto LABEL_605;
        }

        sub_233E00(&v248, v168, v180);
        v181 = sub_5544(18);
        v182 = *v181;
        if (*v181 && os_log_type_enabled(*v181, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 333;
          _os_log_impl(&dword_0, v182, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
        }

        sub_36CAF8(buf, v248);
        sub_36CAF8(&cf, v248);
        v243 = (v245 - v244) >> 3;
        while (1)
        {
          if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
          {
            v183 = cf;
          }

          else
          {
            v183 = cf;
            if (!cf || v243 == (v245 - v244) >> 3)
            {
LABEL_522:
              if (v246)
              {
                v247 = v246;
                operator delete(v246);
              }

              if (v244)
              {
                v245 = v244;
                operator delete(v244);
              }

              if (v260)
              {
                v261 = v260;
                operator delete(v260);
              }

              if (*&buf[16])
              {
                *&buf[24] = *&buf[16];
                operator delete(*&buf[16]);
              }

              v187 = sub_5544(18);
              v188 = *v187;
              if (*v187 && os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "FDRDataImpl.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 338;
                _os_log_impl(&dword_0, v188, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
              }

              if (v248)
              {
                CFRelease(v248);
              }

              if (++v180 == v234)
              {
                goto LABEL_605;
              }

              goto LABEL_498;
            }
          }

          if (*buf == v183 && *&buf[8] == v243)
          {
            goto LABEL_522;
          }

          sub_36CB7C(__p, buf);
          v184 = sub_5544(18);
          v185 = *v184;
          if (*v184 && os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
          {
            v186 = __p;
            if (v240 < 0)
            {
              v186 = __p[0];
            }

            *v251 = 136315906;
            *&v251[4] = "FDRDataImpl.cpp";
            v252 = 1024;
            v253 = 336;
            v254 = 2080;
            v255 = v186;
            v256 = 2112;
            v257 = v241;
            _os_log_impl(&dword_0, v185, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v251, 0x26u);
          }

          if (v241)
          {
            CFRelease(v241);
          }

          if (v240 < 0)
          {
            operator delete(__p[0]);
          }

          ++*&buf[8];
        }
      }

LABEL_537:
      v189 = sub_5544(18);
      v190 = *v189;
      if (*v189 && os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "FDRDataImpl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 326;
        *&buf[18] = 2080;
        *&buf[20] = "mic-trim-gains-0";
        _os_log_impl(&dword_0, v190, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Parsing EDT key %s failed. Returning", buf, 0x1Cu);
      }

      goto LABEL_605;
    }

LABEL_604:
    v236 = 0;
    goto LABEL_605;
  }

  if (v230 == 5)
  {
    v169 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/product/audio");
    if (!v169)
    {
      v207 = sub_5544(14);
      v208 = *v207;
      if (*v207 && os_log_type_enabled(*v207, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "EDTUtilsImpl.h";
        *&buf[12] = 1024;
        *&buf[14] = 46;
        *&buf[18] = 2080;
        *&buf[20] = "IODeviceTree:/product/audio";
        _os_log_impl(&dword_0, v208, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).", buf, 0x1Cu);
      }

      v209 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v209, "IORegistryEntryFromPath %s returned MACH_PORT_NULL (i.e. failed).");
    }

    v170 = CFStringCreateWithBytes(0, "mic-trim-gains-0", 16, 0x8000100u, 0);
    *buf = v170;
    if (!v170)
    {
      v210 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v210, "Could not construct");
    }

    v171 = IORegistryEntryCreateCFProperty(v169, v170, kCFAllocatorDefault, 0);
    cf = v171;
    if (!v171)
    {
      goto LABEL_591;
    }

    v172 = CFGetTypeID(v171);
    if (v172 != CFDataGetTypeID())
    {
      v211 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v211, "Could not construct");
    }

    if (!cf)
    {
LABEL_591:
      v206 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v206, "Could not construct");
    }

    sub_28DF08(&v249, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    IOObjectRelease(v169);
    if (v249 == v250)
    {
      goto LABEL_604;
    }

    sub_3F19CC(&v236, v249, v250);
    v173 = sub_5544(18);
    if (*(v173 + 8))
    {
      v174 = *v173;
      if (*v173)
      {
        if (os_log_type_enabled(*v173, OS_LOG_TYPE_DEBUG))
        {
          v175 = CFCopyDescription(v236);
          *v251 = v175;
          sub_1267C(&cf, v175);
          if (v175)
          {
            CFRelease(v175);
          }

          v176 = &cf;
          if (SHIBYTE(v244) < 0)
          {
            v176 = cf;
          }

          *buf = 136316162;
          *&buf[4] = "FDRDataImpl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "IODeviceTree:/product/audio";
          *&buf[28] = 2080;
          *&buf[30] = "mic-trim-gains-0";
          v259 = 2080;
          v260 = v176;
          _os_log_impl(&dword_0, v174, OS_LOG_TYPE_DEBUG, "%25s:%-5d ascf::make_DictionaryRef description from EDT Path: %s Key: %s: %s", buf, 0x30u);
          if (SHIBYTE(v244) < 0)
          {
            operator delete(cf);
          }
        }
      }
    }

    if ((atomic_load_explicit(&qword_6FC648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FC648))
    {
      word_6FC640 = sub_286A28();
      __cxa_guard_release(&qword_6FC648);
    }

    if (word_6FC640 != 1 || HIBYTE(word_6FC640) != 1)
    {
      goto LABEL_605;
    }

    if (!v236)
    {
      goto LABEL_537;
    }

    v177 = sub_5544(18);
    v178 = *v177;
    if (*v177 && os_log_type_enabled(*v177, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 330;
      *&buf[18] = 2080;
      *&buf[20] = "mic-trim-gains-0";
      _os_log_impl(&dword_0, v178, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: Result of parsing data from EDT key %s:", buf, 0x1Cu);
    }

    v179 = v236;
    if (!v236 || ((v235 = CFArrayGetCount(v236), (v232 = v236) == 0) ? (v226 = 0) : (v226 = CFArrayGetCount(v236)), !v235))
    {
LABEL_605:
      if (v249)
      {
        operator delete(v249);
      }

      goto LABEL_607;
    }

    v191 = 0;
LABEL_543:
    if (v179 == v232 && v191 == v226)
    {
      goto LABEL_605;
    }

    sub_233E00(&v248, v179, v191);
    v192 = sub_5544(18);
    v193 = *v192;
    if (*v192 && os_log_type_enabled(*v192, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 333;
      _os_log_impl(&dword_0, v193, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: {", buf, 0x12u);
    }

    sub_36CAF8(buf, v248);
    sub_36CAF8(&cf, v248);
    v243 = (v245 - v244) >> 3;
    while (1)
    {
      if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
      {
        v194 = cf;
      }

      else
      {
        v194 = cf;
        if (!cf || v243 == (v245 - v244) >> 3)
        {
LABEL_567:
          if (v246)
          {
            v247 = v246;
            operator delete(v246);
          }

          if (v244)
          {
            v245 = v244;
            operator delete(v244);
          }

          if (v260)
          {
            v261 = v260;
            operator delete(v260);
          }

          if (*&buf[16])
          {
            *&buf[24] = *&buf[16];
            operator delete(*&buf[16]);
          }

          v198 = sub_5544(18);
          v199 = *v198;
          if (*v198 && os_log_type_enabled(*v198, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "FDRDataImpl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 338;
            _os_log_impl(&dword_0, v199, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: }", buf, 0x12u);
          }

          if (v248)
          {
            CFRelease(v248);
          }

          if (++v191 == v235)
          {
            goto LABEL_605;
          }

          goto LABEL_543;
        }
      }

      if (*buf == v194 && *&buf[8] == v243)
      {
        goto LABEL_567;
      }

      sub_36CB7C(__p, buf);
      v195 = sub_5544(18);
      v196 = *v195;
      if (*v195 && os_log_type_enabled(*v195, OS_LOG_TYPE_DEFAULT))
      {
        v197 = __p;
        if (v240 < 0)
        {
          v197 = __p[0];
        }

        *v251 = 136315906;
        *&v251[4] = "FDRDataImpl.cpp";
        v252 = 1024;
        v253 = 336;
        v254 = 2080;
        v255 = v197;
        v256 = 2112;
        v257 = v241;
        _os_log_impl(&dword_0, v196, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FACTORYDEBUG: \t%s: %@", v251, 0x26u);
      }

      if (v241)
      {
        CFRelease(v241);
      }

      if (v240 < 0)
      {
        operator delete(__p[0]);
      }

      ++*&buf[8];
    }
  }

  if (v230)
  {
    v212 = sub_5544(14);
    v213 = *v212;
    if (*v212 && os_log_type_enabled(*v212, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "FDRDataImpl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 1024;
      *&buf[20] = v230;
      *&buf[24] = 2080;
      *&buf[26] = "mic-trim-gains-0";
      _os_log_impl(&dword_0, v213, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unrecognized FDRVersion: %u using key %s", buf, 0x22u);
    }

    v214 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v214, "Unrecognized FDRVersion: %u using key %s");
  }

  v236 = 0;
LABEL_607:
  sub_3ECA0C(buf, &v237, &v236);
  sub_3ECA0C(a1, &v238, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v236)
  {
    CFRelease(v236);
  }

  if (v237)
  {
    CFRelease(v237);
  }

  if (v238)
  {
    CFRelease(v238);
  }
}