uint64_t sub_1E53DCBC0(int a1, int a2)
{
  if ((atomic_load_explicit(&qword_1EE30C2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C2D8))
  {
    qword_1EE30C300 = sub_1E53DD3B4(5, 13, 16, 8);
    qword_1EE30C308 = v5;
    __cxa_guard_release(&qword_1EE30C2D8);
  }

  if ((atomic_load_explicit(&qword_1EE30C2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C2E0))
  {
    qword_1EE30C310 = sub_1E53DD250(13, 10, 5, 11, 4);
    qword_1EE30C318 = v6;
    __cxa_guard_release(&qword_1EE30C2E0);
  }

  return sub_1E53DD014(a1, a2, qword_1EE30C300, qword_1EE30C308, 5, 13, 16, 8, qword_1EE30C310, qword_1EE30C318, 5, 13, 10, 11, 4);
}

double sub_1E53DCD04(double a1)
{
  if ((atomic_load_explicit(&qword_1EE30C2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C2E8))
  {
    qword_1EE30C320 = sub_1E53DD97C(6, 13, 13, 7);
    unk_1EE30C328 = v5;
    __cxa_guard_release(&qword_1EE30C2E8);
  }

  v2 = qword_1EE30C320;
  v3 = unk_1EE30C328;

  return sub_1E53DD870(v2, v3, 6, 13, 13, 7, a1);
}

double sub_1E53DCDBC(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    return 0.0;
  }

  *&result = (-1 << (53 - a1)) & COERCE_UNSIGNED_INT64(COERCE_DOUBLE((*&a2 - (a1 << 52)) & 0xFFF0000000000000) + a2);
  return result;
}

void sub_1E53DCE08(double a1)
{
  if ((atomic_load_explicit(&qword_1EE30C2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C2F0))
  {
    qword_1EE30C330 = sub_1E53DD3B4(7, 16, 17, 9);
    qword_1EE30C338 = v2;
    __cxa_guard_release(&qword_1EE30C2F0);
  }

  sub_1E53DD2C0(qword_1EE30C330, qword_1EE30C338, 7, 16, 17, 9, fabs(a1));
}

void sub_1E53DCEC0(double a1)
{
  if ((atomic_load_explicit(&qword_1EE30C2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C2F8))
  {
    qword_1EE30C340 = sub_1E53DD5FC(8, 18, 19, 10);
    qword_1EE30C348 = v2;
    __cxa_guard_release(&qword_1EE30C2F8);
  }

  sub_1E53DD2C0(qword_1EE30C340, qword_1EE30C348, 8, 18, 19, 10, fabs(a1));
}

uint64_t sub_1E53DCF78(uint64_t a1, uint64_t a2, int a3, int a4, char a5, char a6, int a7, int a8)
{
  if (1 << (a4 - 1) <= a3)
  {
    return (1 << (a5 - 1));
  }

  v8 = a4 - 1 - a6;
  v9 = (a3 >> v8) & ~(1 << a6);
  v10 = a3 - (a3 >> v8 << v8) + (-1 << (v8 - 1));
  v11 = *(a1 + 4 * v9);
  v12 = *(a2 + 4 * v9);
  v13 = a8 + a4;
  v14 = a8 + a4 - (a7 + 2);
  v15 = a7 + 2 - (a8 + a4);
  if (a7 + 2 > a8 + a4)
  {
    v14 = 0;
  }

  if (a7 + 2 <= v13)
  {
    v15 = 0;
  }

  v16 = v13 + ~a5;
  if (a7 + 2 > a8 + a4)
  {
    v16 = a7 - a5 + 1;
  }

  return ((((((v12 * v10) << v15) + (v11 << v14)) >> (v16 - 1)) + 1) >> 1);
}

uint64_t sub_1E53DD014(int a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, int a14, int a15)
{
  if (a2 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = -a2;
  }

  if (a1 >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = -a1;
  }

  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;
  if (v18 <= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v18;
  }

  v23 = sub_1E53DD2C0(a3, a4, a5, a6, a7, a8, COERCE_DOUBLE((-1 << (53 - a6)) & COERCE_UNSIGNED_INT64(v22))) * COERCE_DOUBLE(v15 & *&v21);
  v24 = ldexp(1.0, a12 - 1);
  result = sub_1E53DCF78(a9, a10, (v23 * v24 + 0.5), a12, a13, a11, a14, a15);
  if (((a2 | a1) & 0x80000000) == 0 && v18 >= v19)
  {
    return result;
  }

  v26 = v18 >= v19;
  if (((a2 | a1) & 0x80000000) == 0 && v18 < v19)
  {
    v27 = result;
    v28 = ldexp(1.0, a13 + 1);
    v29 = 0.5;
LABEL_18:
    v30 = v28 * v29;
    return (v30 - v27);
  }

  v31 = a1 >= 0 && a2 < 0;
  v32 = !v31;
  if (v31 && v18 < v19)
  {
    v34 = result;
    v36 = ldexp(1.0, a13 + 1);
    v37 = 0.5;
LABEL_38:
    v35 = v36 * v37;
    return (v34 + v35);
  }

  if (v18 < v19)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    v27 = result;
    v30 = ldexp(1.0, a13 + 1);
    return (v30 - v27);
  }

  if ((a2 & a1) < 0 != __OFSUB__(v18, v19) && v18 >= v19)
  {
    v34 = result;
    v35 = ldexp(1.0, a13 + 1);
    return (v34 + v35);
  }

  if ((a2 & a1) < 0 && v18 < v19)
  {
    v27 = result;
    v28 = ldexp(1.0, a13 + 1);
    v29 = 1.5;
    goto LABEL_18;
  }

  v39 = a1 >= 0 || a2 < 0;
  v40 = v39;
  if (v39)
  {
    v26 = 1;
  }

  if (!v26)
  {
    v34 = result;
    v36 = ldexp(1.0, a13 + 1);
    v37 = 1.5;
    goto LABEL_38;
  }

  if (v18 < v19)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  if ((v41 & 1) == 0)
  {
    v27 = result;
    v42 = ldexp(1.0, a13 + 1);
    v30 = v42 + v42;
    return (v30 - v27);
  }

  return result;
}

void *sub_1E53DD250(int a1, int a2, int a3, int a4, int a5)
{
  if (a1 == 10 && a2 == 7 && a3 == 3 && a4 == 7 && a5 == 3)
  {
    return &unk_1EE30A4C0;
  }

  v9 = a1 == 13 && a2 == 10 && a3 == 5 && a4 == 11;
  if (v9 && a5 == 4)
  {
    return &unk_1EE30A500;
  }

  else
  {
    return 0;
  }
}

double sub_1E53DD2C0(uint64_t a1, uint64_t a2, char a3, int a4, int a5, int a6, double a7)
{
  v13 = sub_1E53DDB3C(a4, a7);
  v14 = ~a3 + a4;
  v15 = (v13 >> v14) & ~(1 << a3);
  v16 = *(a1 + 4 * v15);
  v17 = (1 << (v14 - 1)) - v13 + (v13 >> v14 << v14);
  v18 = *(a2 + 4 * v15);
  v19 = a4 + a6 - 1;
  v20 = a4 + a6 - 2;
  v21 = a5 - v20;
  v22 = __OFSUB__(v20, a5);
  v24 = v20 - a5;
  v23 = (v24 < 0) ^ v22;
  if (v23)
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v21 = 0;
  }

  if (v23)
  {
    v19 = a5 + 1;
  }

  v25 = sub_1E53DDBF0(((v16 << v24) + (1 << (v19 - a4 - 2)) + ((v18 * v17) << v21)) >> (v19 - a4 - 1), ~((v13 >> 16) >> 16), a4);

  return sub_1E53DDBB0(v25);
}

void *sub_1E53DD3B4(int a1, int a2, int a3, int a4)
{
  if (a1 == 3 && a2 == 9 && a3 == 10 && a4 == 6)
  {
    return &unk_1EE30A600;
  }

  if (a4 == 7 && a1 == 5 && a2 == 11 && a3 == 13)
  {
    return &unk_1EE30A680;
  }

  if (a4 == 7 && a1 == 5 && a2 == 12 && a3 == 12)
  {
    return &unk_1EE30A780;
  }

  if (a1 == 5 && a2 == 13 && a3 == 16 && a4 == 8)
  {
    return &unk_1EE30A880;
  }

  if (a4 == 8 && a1 == 6 && a2 == 14 && a3 == 14)
  {
    return &unk_1EE30AC80;
  }

  if (a1 == 6 && a2 == 15 && a3 == 17 && a4 == 10)
  {
    return &unk_1EE30AE80;
  }

  if (a1 == 7 && a2 == 13 && a3 == 16 && a4 == 8)
  {
    return &unk_1ECFD78E8;
  }

  if (a4 == 10 && a1 == 7 && a2 == 14 && a3 == 19)
  {
    return &unk_1ECFD7CE8;
  }

  v5 = a1 == 7 && a2 == 16;
  v6 = v5;
  if (v5 && a3 == 17 && a4 == 9)
  {
    return &unk_1ECFD80E8;
  }

  if (a3 != 20 || a4 != 11)
  {
    v6 = 0;
  }

  if (v6)
  {
    return &unk_1ECFD84E8;
  }

  if (a3 == 20 && a1 == 7 && a2 == 17 && a4 == 13)
  {
    return &unk_1ECFD88E8;
  }

  if (a1 != 9 || a2 != 21 || a3 != 26 || a4 != 15)
  {
    abort();
  }

  return &unk_1ECFD58E8;
}

void *sub_1E53DD5FC(int a1, int a2, int a3, int a4)
{
  if (a1 == 3 && a2 == 9 && a3 == 10 && a4 == 6)
  {
    return &unk_1EE30A640;
  }

  if (a4 == 7 && a1 == 5 && a2 == 11 && a3 == 13)
  {
    return &unk_1EE30A980;
  }

  if (a4 == 7 && a1 == 5 && a2 == 12 && a3 == 12)
  {
    return &unk_1EE30AA80;
  }

  if (a1 == 5 && a2 == 13 && a3 == 16 && a4 == 8)
  {
    return &unk_1EE30AB80;
  }

  if (a4 == 8 && a1 == 6 && a2 == 14 && a3 == 14)
  {
    return &unk_1EE30B080;
  }

  if (a1 == 6 && a2 == 15 && a3 == 17 && a4 == 10)
  {
    return &unk_1EE30B280;
  }

  if (a1 == 7 && a2 == 13 && a3 == 16 && a4 == 8)
  {
    return &unk_1ECFD8CE8;
  }

  if (a1 == 7 && a2 == 14 && a3 == 19 && a4 == 10)
  {
    return &unk_1ECFD90E8;
  }

  v5 = a1 == 7 && a2 == 16;
  v6 = v5;
  if (v5 && a3 == 17 && a4 == 9)
  {
    return &unk_1ECFD94E8;
  }

  if (a3 != 20 || a4 != 11)
  {
    v6 = 0;
  }

  if (v6)
  {
    return &unk_1ECFD98E8;
  }

  if (a3 == 20 && a1 == 7 && a2 == 17 && a4 == 13)
  {
    return &unk_1ECFD9CE8;
  }

  if (a1 == 8 && a2 == 18 && a3 == 19 && a4 == 10)
  {
    return &unk_1ECFDA0E8;
  }

  if (a1 != 9 || a2 != 21 || a3 != 26 || a4 != 15)
  {
    abort();
  }

  return &unk_1ECFD68E8;
}

double sub_1E53DD870(uint64_t a1, uint64_t a2, char a3, int a4, int a5, int a6, double a7)
{
  v13 = sub_1E53DDB3C(a4, a7);
  v14 = v13 >> (a4 - a3);
  v15 = (1 << (a3 - 1)) & (((v13 >> 16) << 15) >> 31) | v14 & ~(1 << (a3 - 1));
  v16 = *(a1 + 4 * v15);
  v17 = *(a2 + 4 * v15);
  if (((v13 >> 16) & 0x10000) != 0)
  {
    v18 = -((v13 >> 16) >> 16) >> 1;
  }

  else
  {
    v18 = ~((v13 >> 16) >> 17);
  }

  v19 = a6 + a4;
  v20 = a6 + a4 - 1 - a5;
  if (a6 + a4 - 1 < a5)
  {
    v20 = 0;
  }

  v21 = v16 << v20;
  v22 = ((1 << (a4 - a3 - 1)) - v13 + (v14 << (a4 - a3))) * v17;
  if (v19 - 1 >= a5)
  {
    v23 = 0;
  }

  else
  {
    v23 = a5 - (a6 + a4 - 1);
  }

  v24 = v22 << v23;
  if (v19 - 1 < a5)
  {
    LOBYTE(v19) = a5 + 1;
  }

  v25 = sub_1E53DDBF0((v21 + (1 << (v19 - a4 - 2)) + v24) >> (v19 - a4 - 1), v18, a4);

  return sub_1E53DDBB0(v25);
}

void *sub_1E53DD97C(int a1, int a2, int a3, int a4)
{
  if (a3 == 12 && a1 == 5 && a2 == 11 && a4 == 5)
  {
    return &unk_1EE30B480;
  }

  if (a1 == 5 && a2 == 12 && a3 == 12 && a4 == 7)
  {
    return &unk_1EE30B580;
  }

  if (a4 == 7 && a2 == 13 && a1 == 6 && a3 == 13)
  {
    return &unk_1EE30B680;
  }

  if (a3 == 17 && a1 == 7 && a2 == 13 && a4 == 12)
  {
    return &unk_1EE30B880;
  }

  v5 = a1 == 7 && a2 == 14;
  v6 = v5;
  if (v5 && a3 == 18 && a4 == 10)
  {
    return &unk_1EE30BC80;
  }

  v7 = v6 ^ 1;
  if (a3 != 19)
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0 && a4 == 9)
  {
    return &unk_1EE30C080;
  }

  if (a3 == 18 && a1 == 7 && a2 == 15 && a4 == 8)
  {
    return &unk_1ECFDAEE8;
  }

  if (a1 == 7 && a2 == 16 && a3 == 17 && a4 == 9)
  {
    return &unk_1ECFDB2E8;
  }

  if (a2 != 15 || a1 != 8 || a3 != 21 || a4 != 11)
  {
    abort();
  }

  return &unk_1ECFDB6E8;
}

unint64_t sub_1E53DDB3C(char a1, double a2)
{
  if (a2 == 0.0)
  {
    return 0;
  }

  v3 = ((*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000uLL) >> (52 - a1)) + 1;
  v4 = v3 >> 1;
  v5 = v3 >> 1 >> a1;
  v6 = v3 >> 2;
  if (v5 == 1)
  {
    v7 = -1022;
  }

  else
  {
    LODWORD(v6) = v4;
    v7 = -1023;
  }

  return v6 | ((v7 + ((*&a2 >> 52) & 0x7FF)) << 32) | ((a1 & 0x1F) << 49) | (*&a2 >> 63 << 48);
}

double sub_1E53DDBB0(uint64_t a1)
{
  result = 0.0;
  v2 = __clz(a1);
  if (a1)
  {
    *&result = ((a1 << 20) + 0x3FF0000000000000) & 0x7FF0000000000000 | (BYTE6(a1) << 63) | (a1 << (v2 + 21)) & 0xFFFFFFFFFFFFELL;
  }

  return result;
}

unint64_t sub_1E53DDBF0(int a1, unsigned __int16 a2, int a3)
{
  LODWORD(v3) = a1;
  result = (a3 & 0x1F) << 49;
  if (v3)
  {
    v5 = a3 + __clz(v3) - 32;
    if (v5)
    {
      if ((v5 & 0x80000000) != 0)
      {
        v3 = v3 >> -v5;
      }

      else
      {
        v3 = (v3 << v5);
      }

      v6 = (a2 - v5);
    }

    else
    {
      v3 = v3;
      v6 = a2;
    }

    result |= v3 | (v6 << 32);
  }

  return result;
}

uint64_t sub_1E53DDC48(uint64_t a1)
{
  if (**(a1 + 32))
  {
    FigBaseObject = FigCaptureDeviceGetFigBaseObject();
    if (FigBaseObject)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(FigBaseObject);
      }
    }

    CFRelease(**(a1 + 32));
    **(a1 + 32) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (!CMNotificationCenterRemoveListener() || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1E54900DC();
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
LABEL_9:
    MEMORY[0x1E6928650](v4, 0x1020C403A5D3213);
  }

LABEL_10:
  v5 = *(a1 + 24);
  if (v5 == a1)
  {
    (*(*v5 + 32))(v5);
    return a1;
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }
}

void sub_1E53DDDF0(int a1, uint64_t a2, CFTypeRef cf2)
{
  if (CFEqual(*MEMORY[0x1E6991538], cf2))
  {
    v7 = 1;
    v5 = *(a2 + 24);
    if (v5)
    {
      (*(*v5 + 48))(v5, &v7);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1E5490154();
    }
  }

  else if (CFEqual(*MEMORY[0x1E6991530], cf2))
  {
    v8 = 2;
    v6 = *(a2 + 24);
    if (v6)
    {
      (*(*v6 + 48))(v6, &v8);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1E5490198();
  }
}

BOOL sub_1E53DDF44(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696CD60];
  v3 = 4;
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v6 = *(a1 + 32);
    cf = 0;
    v7 = IOServiceMatching("AppleH16CamIn");
    if (IOServiceGetMatchingService(v2, v7))
    {
      v8 = dlopen("/System/Library/MediaCapture/H16ISP.mediacapture", 4);
      if (v8 && (v9 = dlsym(v8, "H16ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v9(v4, 0, &cf);
        v11 = cf;
        if (cf)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (cf)
        {
LABEL_8:
          v12 = off_1E876F330;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v13 = IOServiceMatching("AppleH13CamIn");
    if (IOServiceGetMatchingService(v2, v13))
    {
      v14 = dlopen("/System/Library/MediaCapture/H13ISP.mediacapture", 4);
      if (v14 && (v15 = dlsym(v14, "H13ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v15(v4, 0, &cf);
        v11 = cf;
        if (cf)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (cf)
        {
LABEL_25:
          v12 = off_1E876F350;
          goto LABEL_30;
        }
      }
    }

    v16 = IOServiceMatching("AppleH10CamIn");
    if (IOServiceGetMatchingService(v2, v16))
    {
      v17 = dlopen("/System/Library/MediaCapture/H10ISP.mediacapture", 4);
      if (v17 && (v18 = dlsym(v17, "H10ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v18(v4, 0, &cf);
        v11 = cf;
        if (cf)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (cf)
        {
LABEL_27:
          v12 = off_1E876F370;
          goto LABEL_30;
        }
      }
    }

    v19 = IOServiceMatching("AppleH9CamIn");
    if (IOServiceGetMatchingService(v2, v19))
    {
      v20 = dlopen("/System/Library/MediaCapture/H9ISP.mediacapture", 4);
      if (v20 && (v21 = dlsym(v20, "H9ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v21(v4, 0, &cf);
        v11 = cf;
        if (!cf)
        {
LABEL_22:
          if (!v6)
          {
            goto LABEL_32;
          }

          v11 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (!cf)
        {
          goto LABEL_22;
        }
      }

      v12 = off_1E876F390;
LABEL_30:
      *(v6 + 8) = *(v12 + 6);
LABEL_31:
      *v6 = v11;
      goto LABEL_32;
    }

    v11 = cf;
    if (v6)
    {
      goto LABEL_31;
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_32:
    if (v10 != -536870186)
    {
      break;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E54901DC(buf, v3 - 2, &v25);
      if (--v3 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (--v3 <= 1)
    {
      goto LABEL_43;
    }
  }

  if (!v10)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    return **(a1 + 32) != 0;
  }

LABEL_43:
  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1E5490228();
    return 0;
  }

  return result;
}

void sub_1E53DE2EC(int a1@<W0>, uint64_t *a2@<X8>)
{
  if (atomic_load_explicit(&qword_1EE30C350, memory_order_acquire))
  {
    v4 = qword_1EE30C360;
    if (!qword_1EE30C360)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E54902A0();
    v4 = qword_1EE30C360;
    if (!qword_1EE30C360)
    {
      goto LABEL_13;
    }
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = qword_1EE30C358) == 0)
  {
LABEL_13:
    operator new();
  }

  v7 = v5;
  if (**(qword_1EE30C358 + 32))
  {
    v8 = 1;
  }

  else
  {
    v8 = a1 == 0;
  }

  if (v8 || sub_1E53DDF44(qword_1EE30C358))
  {
    *a2 = v6;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_1E53DE538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

void sub_1E53DE54C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1E53F7E98(va);
  sub_1E53F7E98(va1);
  _Unwind_Resume(a1);
}

void sub_1E53DE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1E53DF37C(va1);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

void sub_1E53DE584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = sub_1E53DF210(v4);
  MEMORY[0x1E6928650](v6, 0x1020C40BD065CB0);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

void sub_1E53DE5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53DE5C8(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1E53DE600(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (!**(a1 + 32))
  {
    return 0;
  }

  v7 = *MEMORY[0x1E6991540];
  v8[0] = &unk_1F5F0B3A0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = **(a1 + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 0;
  }

  if (v4(v3, *MEMORY[0x1E695E480], v2, &v6))
  {
    return 0;
  }

  return v6;
}

BOOL sub_1E53DE73C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = v4(a1, *MEMORY[0x1E6991550], v3);
  }

  else
  {
    v5 = -12782;
  }

  v6 = v5 == 0;

  return v6;
}

BOOL sub_1E53DE7FC(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E53DE998;
  v9[3] = &unk_1E876F310;
  v11 = &v12;
  v3 = v2;
  v10 = v3;
  v4 = v9;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = v5(a1, v4);

  if (v6 == -12780)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 6) == 0;
LABEL_7:

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_1E53DE970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53DE9AC(const void *a1)
{
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v2 || v2(a1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1E5490310();
        v3 = 0;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (!v4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 0;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (!v4)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = 1;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (!v4)
      {
LABEL_14:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          sub_1E5490388();
        }

LABEL_10:
        v3 = 0;
        goto LABEL_11;
      }
    }

    if (!v4(a1))
    {
LABEL_11:
      CFRelease(a1);
      return v3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

BOOL sub_1E53DEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v7)
  {
    v8 = v7(a2, 0, 0, a3, a4, 0);
    kdebug_trace();
    if (!v8)
    {
      return 1;
    }

    kdebug_trace();
    if ((v8 + 12788) > 8)
    {
LABEL_19:
      kdebug_trace();
      if (v8)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_1E549044C();
          return 0;
        }

        return result;
      }

      return 1;
    }

    if (((1 << (v8 - 12)) & 0x1DB) == 0)
    {
      v9 = 0;
      v10 = MEMORY[0x1E69E9C10];
      while (1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1E5490400(v16, v8, &v17);
        }

        usleep(0x3E8u);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v12)
        {
          break;
        }

        v13 = v12(a2, 0, 0, a3, a4, 0);
        v8 = v13;
        if ((v13 == -12786 || v13 == -12783) && v9++ < 9)
        {
          continue;
        }

        goto LABEL_19;
      }

      v8 = -12782;
      goto LABEL_19;
    }
  }

  else
  {
    kdebug_trace();
    kdebug_trace();
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1E54904BC();
    return 0;
  }

  return result;
}

BOOL sub_1E53DEE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7)
{
  kdebug_trace();
  v13 = a6[1] - *a6;
  if ((v13 >> 3) != -3)
  {
    if ((v13 >> 3) > -4)
    {
      operator new();
    }

    sub_1E5415338();
  }

  v14 = (v13 << 29) >> 28;
  *v14 = @"OperationsList";
  *(v14 + 8) = a3;
  v15 = ((v13 << 29) + 0x100000000) >> 28;
  *v15 = @"ActionsList";
  *(v15 + 8) = a4;
  v16 = ((v13 << 29) + 0x200000000) >> 28;
  *v16 = @"StatsBuffer";
  *(v16 + 8) = a5;
  v17 = kdebug_trace();
  v18 = sub_1E53DEB74(v17, a2, ((v13 >> 3) + 3), 0);
  if (v18 & a7)
  {
    kdebug_trace();
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v19)
    {
      v20 = v19(a2);
    }

    else
    {
      v20 = -12782;
    }

    kdebug_trace();
    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        sub_1E549052C();
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  operator delete(0);
  return v18;
}

void sub_1E53DF180(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1E53DF1DC(exception, a1);
  __cxa_throw(exception, off_1E876F2F0, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1E53DF1DC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t sub_1E53DF210(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_1E53DF2A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E53DF2D8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1E53DDC48(result);

    JUMPOUT(0x1E6928650);
  }

  return result;
}

uint64_t sub_1E53DF31C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1E53DF37C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1E53DDC48(v2);
    MEMORY[0x1E6928650](v4, 0x1020C40BD065CB0);
    return v3;
  }

  return v1;
}

void sub_1E53DF3E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void sub_1E53DF404(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE30C370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C370))
  {
    sub_1E53DF4B4();
  }

  *a1 = qword_1EE30C368;
}

void sub_1E53DF564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1E53DF59C(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E6928430](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_1E53DF748(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E6928440](v14);
  return a1;
}

void sub_1E53DF6E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1E6928440](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1E53DF6C0);
}

uint64_t sub_1E53DF748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1E53DF584();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_1E53DF924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1E53DF940(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *result = a2;
  result[1] = a3;
  if (v3)
  {
    std::mutex::~mutex((v3 + 56));
    v4 = *(v3 + 32);
    if (v4)
    {
      do
      {
        v6 = *v4;
        v7 = *(v4 + 5);
        *(v4 + 5) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        if (v4[39] < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }

    v5 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    sub_1E53DFA24((v3 + 8));

    JUMPOUT(0x1E6928650);
  }

  return result;
}

void *sub_1E53DFA24(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 56));
    v3 = *(v1 + 32);
    if (v3)
    {
      do
      {
        v5 = *v3;
        v6 = *(v3 + 5);
        *(v3 + 5) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v5;
      }

      while (v5);
    }

    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    sub_1E53DFA24(v1 + 8);
    MEMORY[0x1E6928650](v1, 0x10A0C400EF86968);
    return v2;
  }

  return result;
}

uint64_t sub_1E53DFAF4(uint64_t result, char a2)
{
  *result = &unk_1F5F0AA98;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_1E53DFB24(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 56))
  {
    operator new();
  }

  v13 = 0;
  va_copy(__dst, va);
  v3 = vsnprintf(__str, 0x200uLL, __format, va);
  if (v3 >= 0x200)
  {
    operator new();
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v3 >= 0x17)
  {
    operator new();
  }

  v12 = v3;
  if (v3)
  {
    memmove(__dst, __str, v3);
  }

  *(__dst + v4) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  sub_1E53DF59C((v5 + 16), v6, v7);
  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = v13;
  if (v13)
  {
    v9 = *v13;
    if (*v13)
    {
      *(v13 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x1E6928650](v8, 0x10C402FEFCB83);
  }

  return a1;
}

void sub_1E53DFF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53E5374(va);
  _Unwind_Resume(a1);
}

void sub_1E53DFF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1E53E5374(&a17);
    _Unwind_Resume(a1);
  }

  sub_1E53E5374(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53E0038(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 24);
  v8 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x1E69E5560] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x1E6928590](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_1E53E768C(v5);
  return a1;
}

void sub_1E53E031C(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E69285E0](v1);
  _Unwind_Resume(a1);
}

void sub_1E53E036C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = &unk_1F5F0A048;
  *(a1 + 8) = v2;
  *(a1 + 39) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  operator new();
}

void sub_1E53E0560(_Unwind_Exception *a1)
{
  sub_1E53F7E98(v2);
  sub_1E53E0864((v1 + 48));
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

void sub_1E53E05EC(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1E53E6FE0();
}

void sub_1E53E0790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

void sub_1E53E07A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

void sub_1E53E07B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53E2E54(va);
  _Unwind_Resume(a1);
}

void *sub_1E53E07CC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_1E53E5544(v1 + 128, *(v1 + 136));
    std::mutex::~mutex((v1 + 64));
    sub_1E53E5544(v1 + 40, *(v1 + 48));
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x1E6928650](v1, 0x10A0C40AA1AA5A8);
    return v2;
  }

  return result;
}

void *sub_1E53E0864(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x1E6928650](v2, 0x30C40EEE2E2AFLL);
    return v3;
  }

  return v1;
}

uint64_t sub_1E53E090C(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  *a1 = &unk_1F5F0A048;
  *(a1 + 8) = v8;
  if (*(a3 + 23) < 0)
  {
    sub_1E53E53CC((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v9;
  }

  v10 = *a4;
  v11 = *(*a4 + 64);
  *(a1 + 56) = *(*a4 + 56);
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  v12 = *a5;
  if (!*a5)
  {
    operator new();
  }

  *a5 = 0;
  *(a1 + 80) = v12;
  return a1;
}

void sub_1E53E0A40(_Unwind_Exception *a1)
{
  sub_1E53F7E98(v2);
  sub_1E53E0864(v3);
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1E53E0A6C(uint64_t a1)
{
  *a1 = &unk_1F5F0A048;
  sub_1E53E07CC((a1 + 80));
  v2 = *(a1 + 64);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }

    MEMORY[0x1E6928650](v3, 0x30C40EEE2E2AFLL);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1E53E0B98(uint64_t a1)
{
  sub_1E53E0A6C(a1);

  JUMPOUT(0x1E6928650);
}

void sub_1E53E0BD0(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  std::mutex::lock((*a1 + 7));
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = 0;
  while (v8[v9] == 46)
  {
    if (v7 == ++v9)
    {
      goto LABEL_15;
    }
  }

  if (v9 == -1)
  {
LABEL_15:
    *a3 = **a1;
  }

  else
  {
    if (sub_1E53E1618(a2))
    {
      if (*(a2 + 23) < 0)
      {
        sub_1E53E53CC(&v11, *a2, *(a2 + 8));
      }

      else
      {
        v11 = *a2;
        v12 = *(a2 + 16);
      }
    }

    else
    {
      sub_1E53E18A8(a2, &v11);
    }

    v10 = sub_1E53E78B0((v6 + 16), &v11);
    if (!v10)
    {
      operator new();
    }

    *a3 = v10[5];
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }
  }

  std::mutex::unlock((v6 + 56));
}

void sub_1E53E14A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  (*(*v37 + 8))(v37);
  sub_1E53E07CC((v39 - 136));
  sub_1E547EE14(&a35);
  MEMORY[0x1E6928650](v36, v35);
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  std::mutex::unlock((v38 + 56));
  _Unwind_Resume(a1);
}

BOOL sub_1E53E1618(void *__s)
{
  v2 = *(__s + 23);
  if (v2 < 0)
  {
    v4 = __s[1];
    if (v4)
    {
      v3 = *__s;
      goto LABEL_6;
    }

    return 1;
  }

  if (!*(__s + 23))
  {
    return 1;
  }

  v3 = __s;
  v4 = *(__s + 23);
LABEL_6:
  v5 = 0;
  while (*(v3 + v5) != 46)
  {
    if (v4 == ++v5)
    {
      goto LABEL_12;
    }
  }

  if (v4 != v5 && !v5)
  {
    return 0;
  }

LABEL_12:
  v7 = *__s;
  v6 = __s[1];
  if (v2 >= 0)
  {
    v8 = __s;
  }

  else
  {
    v8 = *__s;
  }

  if (v2 >= 0)
  {
    v9 = *(__s + 23);
  }

  else
  {
    v9 = __s[1];
  }

  v10 = v8 - 1;
  while (v9)
  {
    v11 = v10[v9--];
    if (v11 == 46)
    {
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }
  }

  v9 = -1;
  if ((v2 & 0x80000000) == 0)
  {
LABEL_22:
    v7 = __s;
    v6 = *(__s + 23);
    if (v9 == v2 - 1)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_25:
  if (v9 == v6 - 1)
  {
    return 0;
  }

LABEL_27:
  if (v6 >= 2)
  {
    v12 = v7 + v6;
    v13 = v7;
    do
    {
      v14 = memchr(v13, 46, v6 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 == v12 || v14 - v7 == -1)
        {
          break;
        }

        return 0;
      }

      v13 = v14 + 1;
      v6 = v12 - v13;
    }

    while (v12 - v13 >= 2);
  }

  if ((atomic_load_explicit(qword_1ECFDEDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ECFDEDA0))
  {
    sub_1E53F7C9C(&qword_1ECFDEE80, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.");
    __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDEE80, &dword_1E53D8000);
    __cxa_guard_release(qword_1ECFDEDA0);
  }

  v16 = *(__s + 23);
  if (v16 >= 0)
  {
    v17 = __s;
  }

  else
  {
    v17 = *__s;
  }

  if (v16 >= 0)
  {
    v18 = *(__s + 23);
  }

  else
  {
    v18 = __s[1];
  }

  if (byte_1ECFDEE97 >= 0)
  {
    v19 = &qword_1ECFDEE80;
  }

  else
  {
    v19 = qword_1ECFDEE80;
  }

  if (byte_1ECFDEE97 >= 0)
  {
    v20 = byte_1ECFDEE97;
  }

  else
  {
    v20 = qword_1ECFDEE88;
  }

  if (!v18)
  {
    return 1;
  }

  v21 = v17;
  if (v20)
  {
    while (memchr(v19, *v21, v20))
    {
      ++v21;
      if (!--v18)
      {
        return 1;
      }
    }
  }

  return v21 - v17 == -1;
}

void sub_1E53E18A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1E53E1618(a1))
  {
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
      v5 = *(a1 + 8);

      sub_1E53E53CC(a2, v4, v5);
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
    }

    return;
  }

  if (*(a1 + 23) < 0)
  {
    sub_1E53E53CC(&v83, *a1, *(a1 + 8));
  }

  else
  {
    v83 = *a1;
    v84 = *(a1 + 16);
  }

LABEL_10:
  v6 = HIBYTE(v84);
  v7 = *(&v83 + 1);
  v8 = v83;
  if (v84 >= 0)
  {
    v9 = &v83;
  }

  else
  {
    v9 = v83;
  }

  if (v84 >= 0)
  {
    v10 = HIBYTE(v84);
  }

  else
  {
    v10 = *(&v83 + 1);
  }

  if (v10 >= 2)
  {
    v11 = v9 + v10;
    v12 = v10;
    v13 = v9;
    do
    {
      v14 = memchr(v13, 46, v12 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 == v11)
        {
          break;
        }

        v15 = v14 - v9;
        if (v14 - v9 == -1)
        {
          break;
        }

        if (v10 < v15)
        {
          sub_1E53E60F0();
        }

        sub_1E53E6108(&v83, v15, 1uLL);
        goto LABEL_10;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
    }

    while (v11 - v13 >= 2);
  }

  if (v10)
  {
    v16 = 0;
    while (*(v9 + v16) != 46)
    {
      if (v10 == ++v16)
      {
        goto LABEL_34;
      }
    }

    if (v10 != v16 && !v16)
    {
      sub_1E53E6108(&v83, 0, 1uLL);
      v6 = HIBYTE(v84);
      v7 = *(&v83 + 1);
      v8 = v83;
    }
  }

LABEL_34:
  if ((v6 & 0x80u) == 0)
  {
    v17 = &v83;
  }

  else
  {
    v17 = v8;
  }

  if ((v6 & 0x80u) == 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = v7;
  }

  v19 = v17 - 1;
  while (v18)
  {
    v20 = v19[v18--];
    if (v20 == 46)
    {
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_44;
      }

LABEL_47:
      if (v18 == v7 - 1)
      {
        goto LABEL_48;
      }

LABEL_51:
      v21 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        v22 = v83;
        goto LABEL_53;
      }

LABEL_89:
      *(a2 + 23) = 0;
      *a2 = 0;
      if ((v6 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_175;
    }
  }

  v18 = -1;
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v7 = v6;
  if (v18 == v6 - 1)
  {
LABEL_48:
    sub_1E53E6108(&v83, v7, 1uLL);
    LODWORD(v6) = HIBYTE(v84);
    if (SHIBYTE(v84) < 0)
    {
      goto LABEL_51;
    }
  }

  if (!v6)
  {
    goto LABEL_89;
  }

  v21 = v6;
  v22 = &v83;
LABEL_53:
  v23 = (v22 + v21);
  v24 = v21 - 1;
  while (1)
  {
    v25 = *v22;
    if ((atomic_load_explicit(qword_1ECFDEDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ECFDEDA0))
    {
      sub_1E53F7C9C(&qword_1ECFDEE80, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.");
      __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDEE80, &dword_1E53D8000);
      __cxa_guard_release(qword_1ECFDEDA0);
    }

    v26 = byte_1ECFDEE97 >= 0 ? byte_1ECFDEE97 : qword_1ECFDEE88;
    if (!v26)
    {
      break;
    }

    v27 = byte_1ECFDEE97 >= 0 ? &qword_1ECFDEE80 : qword_1ECFDEE80;
    v28 = memchr(v27, v25, v26);
    if (!v28 || v28 - v27 == -1)
    {
      break;
    }

    v22 = (v22 + 1);
    --v24;
    if (v22 == v23)
    {
      goto LABEL_92;
    }
  }

  if (v22 == v23 || (v22 + 1) == v23)
  {
    v23 = v22;
  }

  else
  {
    v30 = 1;
    v23 = v22;
    do
    {
      v31 = *(v22 + v30);
      if ((atomic_load_explicit(qword_1ECFDEDA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ECFDEDA0))
      {
        sub_1E53F7C9C(&qword_1ECFDEE80, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.");
        __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDEE80, &dword_1E53D8000);
        __cxa_guard_release(qword_1ECFDEDA0);
      }

      if (byte_1ECFDEE97 >= 0)
      {
        v32 = byte_1ECFDEE97;
      }

      else
      {
        v32 = qword_1ECFDEE88;
      }

      if (v32)
      {
        v33 = byte_1ECFDEE97 >= 0 ? &qword_1ECFDEE80 : qword_1ECFDEE80;
        v34 = memchr(v33, v31, v32);
        if (v34 && v34 - v33 != -1)
        {
          *v23 = *(v22 + v30);
          v23 = (v23 + 1);
        }
      }

      ++v30;
      --v24;
    }

    while (v24);
  }

LABEL_92:
  v36 = HIBYTE(v84);
  v37 = v83;
  v38 = (v83 + *(&v83 + 1));
  v39 = &v83;
  if (v84 < 0)
  {
    v36 = *(&v83 + 1);
    v39 = v83;
  }

  else
  {
    v38 = &v83 + HIBYTE(v84);
  }

  v40 = v23 - v39;
  if (v36 < v23 - v39)
  {
    sub_1E53E60F0();
  }

  if (v38 - v23 == -1)
  {
    if (SHIBYTE(v84) < 0)
    {
      *(&v83 + 1) = v23 - v39;
    }

    else
    {
      HIBYTE(v84) = v40 & 0x7F;
      v37 = &v83;
    }

    *(v37 + v40) = 0;
  }

  else
  {
    sub_1E53E6108(&v83, v40, v38 - v23);
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  sub_1E53E230C(v68, &v83, 24);
  __p[0] = 0;
  __p[1] = 0;
  v67 = 0;
  while (1)
  {
    v42 = sub_1E53E25D0(v68, __p, 0x2Eu);
    if ((*(v42 + *(*v42 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v43 = v81;
    if (v81 < v82)
    {
      if (SHIBYTE(v67) < 0)
      {
        sub_1E53E53CC(v81, __p[0], __p[1]);
      }

      else
      {
        v41 = *__p;
        v81[2] = v67;
        *v43 = v41;
      }

      v81 = v43 + 3;
    }

    else
    {
      v81 = sub_1E53E5600(&v80, __p);
    }
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p[0]);
  }

  v68[0] = *MEMORY[0x1E69E54D8];
  v44 = v68[0];
  v45 = *(MEMORY[0x1E69E54D8] + 72);
  v46 = *(MEMORY[0x1E69E54D8] + 64);
  *(v68 + *(v68[0] - 24)) = v46;
  v47 = v45;
  v69 = v45;
  v70 = MEMORY[0x1E69E5548] + 16;
  if (v76 < 0)
  {
    operator delete(v75);
  }

  v70 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v71);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69285E0](v79);
  v48 = HIBYTE(v84);
  if (v84 < 0)
  {
    v48 = *(&v83 + 1);
  }

  if (v48)
  {
    sub_1E53E0038(v68);
    v49 = v80;
    v50 = v81;
    if (v80 != v81)
    {
      if (*(v80 + 23) < 0)
      {
        sub_1E53E53CC(__p, *v80, v80[1]);
      }

      else
      {
        v51 = *v80;
        v67 = v80[2];
        *__p = v51;
      }

      if (SHIBYTE(v67) >= 0)
      {
        v53 = HIBYTE(v67);
      }

      else
      {
        v53 = __p[1];
      }

      if (v53)
      {
        if (SHIBYTE(v67) >= 0)
        {
          v54 = __p;
        }

        else
        {
          v54 = __p[0];
        }

        sub_1E53DF59C(&v69, v54, v53);
      }

      else
      {
        sub_1E53DF59C(&v69, "_", 1);
      }

      if (SHIBYTE(v67) < 0)
      {
        operator delete(__p[0]);
      }

      v55 = v49 + 3;
      if ((v49 + 24) != v50)
      {
        do
        {
          if (*(v55 + 23) < 0)
          {
            sub_1E53E53CC(__p, *v55, v55[1]);
          }

          else
          {
            v56 = *v55;
            v67 = v55[2];
            *__p = v56;
          }

          sub_1E53DF59C(&v69, ".", 1);
          if (SHIBYTE(v67) >= 0)
          {
            v57 = HIBYTE(v67);
          }

          else
          {
            v57 = __p[1];
          }

          if (v57)
          {
            if (SHIBYTE(v67) >= 0)
            {
              v58 = __p;
            }

            else
            {
              v58 = __p[0];
            }

            sub_1E53DF59C(&v69, v58, v57);
          }

          else
          {
            sub_1E53DF59C(&v69, "_", 1);
          }

          if (SHIBYTE(v67) < 0)
          {
            operator delete(__p[0]);
          }

          v55 += 3;
        }

        while (v55 != v50);
      }
    }

    if ((v78 & 0x10) != 0)
    {
      v60 = v77;
      if (v77 < v74)
      {
        v77 = v74;
        v60 = v74;
      }

      v61 = &v73;
    }

    else
    {
      if ((v78 & 8) == 0)
      {
        v59 = 0;
        *(a2 + 23) = 0;
        goto LABEL_164;
      }

      v61 = v72;
      v60 = v72[2];
    }

    v62 = *v61;
    v59 = v60 - *v61;
    if (v59 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1E53DF584();
    }

    if (v59 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v59;
    if (v59)
    {
      memmove(a2, v62, v59);
    }

LABEL_164:
    *(a2 + v59) = 0;
    v68[0] = v44;
    *(v68 + *(v44 - 24)) = v46;
    v69 = v47;
    v70 = MEMORY[0x1E69E5548] + 16;
    if (v76 < 0)
    {
      operator delete(v75);
    }

    v70 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v71);
    std::iostream::~basic_iostream();
    MEMORY[0x1E69285E0](v79);
    v52 = v80;
    if (!v80)
    {
      goto LABEL_174;
    }

    goto LABEL_167;
  }

  *(a2 + 23) = 1;
  *a2 = 95;
  v52 = v80;
  if (v80)
  {
LABEL_167:
    v63 = v81;
    v64 = v52;
    if (v81 != v52)
    {
      do
      {
        v65 = *(v63 - 1);
        v63 -= 3;
        if (v65 < 0)
        {
          operator delete(*v63);
        }
      }

      while (v63 != v52);
      v64 = v80;
    }

    v81 = v52;
    operator delete(v64);
  }

LABEL_174:
  if ((v84 & 0x8000000000000000) == 0)
  {
    return;
  }

LABEL_175:
  operator delete(v83);
}

void sub_1E53E2270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  __cxa_guard_abort(qword_1ECFDEDA0);
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1E53E230C(uint64_t *a1, __int128 *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v9 = MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 24);
  v11 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x1E69E5560] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_1E53E7A68((a1 + 3), a2, a3);
  return a1;
}

void sub_1E53E259C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E69285E0](v1);
  _Unwind_Resume(a1);
}

void *sub_1E53E25D0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1E6928400](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1E53E2734(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1E53E26F4);
  }

  __cxa_rethrow();
}

uint64_t sub_1E53E27C4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E69285E0](a1 + 128);
  return a1;
}

void ***sub_1E53E2918(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1E53E298C(char *a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 1);
    if (v3 <= v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = a1[23];
    if (v3 <= v4)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9)
  {
    if (v3 >= v9)
    {
      v10 = &v7[v3];
      v11 = *v8;
      v12 = v3;
      v13 = v7;
      while (1)
      {
        v14 = v12 - v9;
        if (v14 == -1)
        {
          break;
        }

        result = memchr(v13, v11, v14 + 1);
        if (!result)
        {
          return result;
        }

        v15 = result;
        result = memcmp(result, v8, v9);
        if (!result)
        {
          if (v15 == v10 || v15 != v7)
          {
            return result;
          }

          goto LABEL_30;
        }

        result = 0;
        v13 = (v15 + 1);
        v12 = &v10[-v15 - 1];
        if (v12 < v9)
        {
          return result;
        }
      }
    }

    return 0;
  }

LABEL_30:
  if (v7[v9] != 46 || v3 <= v9 + 1)
  {
    return 0;
  }

  while (v7[v9 + 1] == 46)
  {
    result = 0;
    if (v3 - 1 == ++v9)
    {
      return result;
    }
  }

  return v9 != -2;
}

BOOL sub_1E53E2B24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  std::mutex::lock(v4 + 1);
  std::mutex::lock((a1 + 64));
  v5 = *(a2 + 80);
  v6 = *(v5 + 128);
  if (v6 != v5 + 136)
  {
    v7 = *(v6 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1E53E6FE0();
  }

  v8 = *(a1 + 152) != 0;
  std::mutex::unlock((a1 + 64));
  std::mutex::unlock(v4 + 1);
  return v8;
}

void sub_1E53E2D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_1E53E2E54(va2);
  sub_1E53F7E98(va1);
  sub_1E53F7E98(va);
  std::mutex::unlock(v2 + 1);
  std::mutex::unlock(v3 + 1);
  _Unwind_Resume(a1);
}

void sub_1E53E2D84(uint64_t a1, uint64_t *a2)
{
  v6 = (*(a1 + 80) + 64);
  std::mutex::lock(v6);
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  *a2 = 0;
  a2[1] = 0;
  sub_1E53E05EC(a1, v5);
}

void sub_1E53E2E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::mutex *a12)
{
  sub_1E53F7E98(&a10);
  std::mutex::unlock(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53E2E54(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_1E53E2ECC(std::mutex *a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    sub_1E53E57C8(a1, &v5);
  }

  std::mutex::lock(a1 + 1);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v8 = v4;
  v9 = v4;
  v6 = 0;
  v7 = 0;
  sub_1E53E6FE0();
}

void sub_1E53E3068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1E53E2E54(va1);
  sub_1E53F7E98(va);
  std::mutex::unlock(v4 + 1);
  _Unwind_Resume(a1);
}

void *sub_1E53E30A0(void *result, uint64_t a2)
{
  v2 = *(*(a2 + 80) + 16);
  if (v2)
  {
    v3 = result;
    v4 = result[1];
    v5 = *(*(v2 + 16) + 80);
    *&v6 = *v3;
    *(&v6 + 1) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1E53E2ECC(v5, &v6, 0);
  }

  return result;
}

uint64_t **sub_1E53E318C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  result = v4[6];
  if (result)
  {
    v7 = v4 + 6;
    v8 = v4[6];
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 == v4 + 6)
    {
      return 0;
    }

    else if (v7[4] <= a2)
    {
      v12 = v7[1];
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
        v14 = v7;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (v4[5] == v7)
      {
        v4[5] = v13;
      }

      --v4[7];
      sub_1E53E72D8(result, v7);
      v17 = v7[6];
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      operator delete(v7);
      v18 = *(a1 + 80);
      if (a3)
      {
        sub_1E53E58B8(*(a1 + 80), a2);
        v19 = *(v18 + 152);
      }

      else
      {
        std::mutex::lock((v18 + 64));
        sub_1E53E58B8(v18, a2);
        v19 = *(v18 + 152);
        std::mutex::unlock((v18 + 64));
      }

      *(a1 + 72) = v19 != 0;
      v20 = a2;
      sub_1E53E335C(&v20, a1);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E53E335C(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 80) + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      v5 = *v3;
      v6 = *(v4 + 80);
      std::mutex::lock((v6 + 64));
      sub_1E53E58B8(v6, v5);
      v7 = *(v6 + 152);
      std::mutex::unlock((v6 + 64));
      *(v4 + 72) = v7 != 0;
      result = sub_1E53E335C(v3, v2[2]);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_1E53E33F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::mutex::lock((v2 + 56));
  v4 = (*(a1 + 80) + 64);
  std::mutex::lock(v4);
  while (1)
  {
    v3 = *(a1 + 80);
    if (!*(v3 + 56))
    {
      break;
    }

    sub_1E53E318C(a1, *(*(v3 + 40) + 32), &v4);
  }

  std::mutex::unlock(v4);
  std::mutex::unlock((v2 + 56));
}

void sub_1E53E3484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  std::mutex::unlock(a10);
  std::mutex::unlock((v10 + 56));
  _Unwind_Resume(a1);
}

void **sub_1E53E34A0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_1E53E3554(uint64_t a1, const char *a2, int a3, unint64_t a4)
{
  v8 = *(a1 + 80);
  std::mutex::lock(v8 + 1);
  v9 = 40;
  if (a3)
  {
    v9 = 128;
  }

  v10 = (*(a1 + 80) + v9);
  if (!a4)
  {
    goto LABEL_14;
  }

  v11 = v10[1];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v10 + 1;
  do
  {
    v13 = v11[4];
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v11;
    }

    v11 = v11[v15];
  }

  while (v11);
  if (v12 == v10 + 1 || (v16 = v12[4], v16 > a4))
  {
LABEL_14:
    if (!a2)
    {
      goto LABEL_25;
    }

    v19 = *v10;
    v18 = v10 + 1;
    v17 = v19;
    if (v19 != v18)
    {
      while (1)
      {
        v20 = (*(*v17[4] + 24))(v17[4]);
        if (v20 == a2 || !strcmp(v20, a2))
        {
          break;
        }

        v21 = v17[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v17[2];
            v23 = *v22 == v17;
            v17 = v22;
          }

          while (!v23);
        }

        v17 = v22;
        if (v22 == v18)
        {
          goto LABEL_25;
        }
      }
    }

    if (v17 == v18)
    {
LABEL_25:
      v16 = 0;
    }

    else
    {
      v16 = v17[4];
    }
  }

  std::mutex::unlock(v8 + 1);
  return v16;
}

uint64_t sub_1E53E36B0(uint64_t result, int a2)
{
  v2 = *(result + 48);
  if (!v2)
  {
    std::mutex::lock((*(result + 8) + 56));
    operator new();
  }

  **v2 = a2;
  return result;
}

void sub_1E53E3B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (a11 == a10)
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      std::mutex::unlock((v11 + 56));
      _Unwind_Resume(a1);
    }
  }

  operator delete(v13);
  std::mutex::unlock((v11 + 56));
  _Unwind_Resume(a1);
}

void sub_1E53E3B80(_Unwind_Exception *a1)
{
  MEMORY[0x1E6928650](v2, 0x1000C4052888210);
  MEMORY[0x1E6928650](v1, 0x30C40EEE2E2AFLL);
  std::mutex::unlock((v3 + 56));
  _Unwind_Resume(a1);
}

void sub_1E53E3BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1E53E9050(&a9);
  std::mutex::unlock((v9 + 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1E53E3BFC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  v3 = *(v2 + 128);
  v4 = (v2 + 136);
  if (v3 != (v2 + 136))
  {
    do
    {
      result = v3[5];
      if (*(result + 8) == 1)
      {
        result = (*(*result + 16))(result, a2);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_1E53E404C(_Unwind_Exception *a1)
{
  MEMORY[0x1E6928650](v3, 0x1093C402D7449D9);
  MEMORY[0x1E6928650](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1E53E407C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_1E53E34A0(va);
  sub_1E53F7E98(va2);
  MEMORY[0x1E6928650](v2, 0x10F3C40CC411903);
  sub_1E53F7E98(va1);
  _Unwind_Resume(a1);
}

void sub_1E53E40C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

void *sub_1E53E4140()
{
  if ((atomic_load_explicit(qword_1ECFDEDC0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_1ECFDEDC0))
  {
    return &unk_1ECFDEF60;
  }

  sub_1E53F7C9C(__p, "%d [%t] %p %c: %m%n");
  sub_1E53E42C8(&unk_1ECFDEF60, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_atexit(sub_1E53E436C, &unk_1ECFDEF60, &dword_1E53D8000);
  __cxa_guard_release(qword_1ECFDEDC0);
  return &unk_1ECFDEF60;
}

void sub_1E53E4200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(qword_1ECFDEDC0);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(qword_1ECFDEDC0);
  _Unwind_Resume(a1);
}

void *sub_1E53E4250@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 48))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1E53E42C8(uint64_t result, __int128 *a2)
{
  *result = &unk_1F5F0A098;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *a2;
    *(result + 24) = *(a2 + 2);
    *(result + 8) = v2;
    if (atomic_load_explicit(&qword_1ECFDEDE0, memory_order_acquire))
    {
      return result;
    }

LABEL_5:
    v4 = result;
    sub_1E549059C();
    return v4;
  }

  v3 = result;
  sub_1E53E53CC((result + 8), *a2, *(a2 + 1));
  result = v3;
  if ((atomic_load_explicit(&qword_1ECFDEDE0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1E53E436C(uint64_t result)
{
  *result = &unk_1F5F0A098;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1E53E43C8(uint64_t a1)
{
  *a1 = &unk_1F5F0A098;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E6928650);
}

char *sub_1E53E445C()
{
  if ((atomic_load_explicit(&qword_1ECFDED98, memory_order_acquire) & 1) == 0)
  {
    sub_1E54905E8();
  }

  return aPatternlayout;
}

uint64_t sub_1E53E449C(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a2 / 1000 % 1000;
  if (v3 >= 0)
  {
    v4 = *a2 / 1000 % 1000;
  }

  else
  {
    v4 = v3 + 1000;
  }

  *&__t.tm_sec = *a2 - 1000 * v4;
  v16 = std::chrono::system_clock::to_time_t(&__t);
  v5 = localtime_r(&v16, &__t);
  strcpy(__s, "yyyy.mm.dd.HH-MM.SS.fff");
  v6 = strlen(__s);
  strftime(__s, v6, "%Y-%m-%d %H:%M:%S", v5);
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1E53DF584();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v14 = v7;
  if (v7)
  {
    memcpy(__dst, __s, v7);
  }

  *(__dst + v8) = 0;
  if ((v14 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = __dst[1];
  }

  v11 = sub_1E53DF59C((a1 + 16), v9, v10);
  sub_1E53DF59C(v11, ",", 1);
  if (v14 < 0)
  {
    operator delete(__dst[0]);
    if (v4 <= 9)
    {
      goto LABEL_18;
    }
  }

  else if (v4 <= 9)
  {
LABEL_18:
    sub_1E53DF59C((a1 + 16), "00", 2);
    return MEMORY[0x1E6928480](a1 + 16, v4);
  }

  if (v4 <= 0x63)
  {
    sub_1E53DF59C((a1 + 16), "0", 1);
  }

  return MEMORY[0x1E6928480](a1 + 16, v4);
}

void sub_1E53E46B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1E53E46E0()
{
  if ((atomic_load_explicit(&qword_1ECFDED98, memory_order_acquire) & 1) == 0)
  {
    sub_1E54905E8();
  }

  return aPatternlayout;
}

void sub_1E53E4720(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ECFDEDD0, memory_order_acquire) & 1) == 0)
  {
    v3 = sub_1E5490640(v4);
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1E53E53CC(v4, *aPatternlayout, *&aPatternlayout[8]);
      }

      v7 = 0x700000000000000;
      *__p = *"ILayout";
      qword_1ECFDEEA0 = 0;
      unk_1ECFDEEA8 = 0;
      qword_1ECFDEE98 = 0;
      sub_1E53E6360(&qword_1ECFDEE98, v4, &v8, 2uLL);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }

      if (v5 < 0)
      {
        operator delete(v4[0]);
      }

      __cxa_atexit(sub_1E53E2918, &qword_1ECFDEE98, &dword_1E53D8000);
      __cxa_guard_release(&qword_1ECFDEDD0);
    }
  }

  if (a2 != &qword_1ECFDEE98)
  {
    sub_1E53E6530(a2, qword_1ECFDEE98, qword_1ECFDEEA0, 0xAAAAAAAAAAAAAAABLL * ((qword_1ECFDEEA0 - qword_1ECFDEE98) >> 3));
  }
}

void sub_1E53E4884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_1ECFDEDD0);
      _Unwind_Resume(a1);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  __cxa_guard_abort(&qword_1ECFDEDD0);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53E4994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1E53E0038(v40);
  v6 = *(a1 + 31);
  v39 = a3;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
    if (v6 < 2)
    {
      goto LABEL_75;
    }

    goto LABEL_5;
  }

  if (v6 >= 2)
  {
LABEL_5:
    v7 = 0;
    v8 = (a1 + 8);
    v9 = 1;
    while (1)
    {
      if (*(a1 + 31) < 0)
      {
        v12 = *(a1 + 31);
        if (*(*v8 + v7) != 37)
        {
LABEL_37:
          v18 = a1 + 8;
          if (v12 < 0)
          {
            v18 = *v8;
          }

          LOBYTE(__dst[0]) = *(v18 + v7);
          sub_1E53DF59C(&v41, __dst, 1);
          v9 = v7;
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *(a1 + 31);
        if (*(v8 + v7) != 37)
        {
          goto LABEL_37;
        }
      }

      v13 = a1 + 8;
      if (v12 < 0)
      {
        v13 = *v8;
      }

      v14 = (v13 + v9);
      v15 = v6 <= v9 + 1 ? v9 + 1 : v6;
      while (1)
      {
        v16 = *v14;
        if (v16 > 101)
        {
          break;
        }

        if (v16 <= 75)
        {
          if (v16 == 37)
          {
            v26 = "%";
            goto LABEL_52;
          }

          if (v16 == 70)
          {
            v10 = *(a2 + 32);
            v22 = strrchr(v10, 47);
            if (v22)
            {
              v10 = v22 + 1;
            }

            else
            {
              v30 = strrchr(v10, 92);
              if (v30)
              {
                v10 = v30 + 1;
              }
            }

            goto LABEL_7;
          }
        }

        else
        {
          switch(v16)
          {
            case 'L':
              MEMORY[0x1E6928450](&v41, *(a2 + 40));
              goto LABEL_8;
            case 'c':
              v10 = *a2;
LABEL_7:
              v11 = strlen(v10);
              sub_1E53DF59C(&v41, v10, v11);
              goto LABEL_8;
            case 'd':
              sub_1E53E449C(v40, (a2 + 16));
              goto LABEL_8;
          }
        }

LABEL_34:
        v17 = a1 + 8;
        if (*(a1 + 31) < 0)
        {
          v17 = *v8;
        }

        v14 = (v17 + v9++ + 1);
        if (v9 >= v6)
        {
          v9 = v15;
          goto LABEL_8;
        }
      }

      if (v16 > 111)
      {
        switch(v16)
        {
          case 'p':
            v10 = off_1E876F3B0[*(a2 + 24)];
            goto LABEL_7;
          case 'r':
            if ((atomic_load_explicit(&qword_1ECFDEDE0, memory_order_acquire) & 1) == 0)
            {
              sub_1E54906A4();
            }

            MEMORY[0x1E6928480](&v41, (*(a2 + 8) - qword_1ECFDEDD8) / 1000000);
            goto LABEL_8;
          case 't':
            v23 = pthread_self();
            v24 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ (v23 >> 32));
            v25 = 0x9DDFEA08EB382D69 * ((v23 >> 32) ^ (v24 >> 47) ^ v24);
            MEMORY[0x1E6928470](&v41, 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47)));
            goto LABEL_8;
        }

        goto LABEL_34;
      }

      if (v16 == 102)
      {
        v10 = *(a2 + 48);
        goto LABEL_7;
      }

      if (v16 != 109)
      {
        break;
      }

      v19 = *(a2 + 56);
      v20 = *(v19 + 120);
      if ((v20 & 0x10) != 0)
      {
        v27 = *(v19 + 112);
        v28 = *(v19 + 72);
        if (v27 < v28)
        {
          *(v19 + 112) = v28;
          v27 = v28;
        }

        v29 = *(v19 + 64);
        v21 = v27 - v29;
        if (v27 - v29 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_62;
        }

LABEL_91:
        sub_1E53DF584();
      }

      if ((v20 & 8) == 0)
      {
        v21 = 0;
        v54 = 0;
        goto LABEL_67;
      }

      v29 = *(v19 + 40);
      v21 = *(v19 + 56) - v29;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_91;
      }

LABEL_62:
      if (v21 >= 0x17)
      {
        operator new();
      }

      v54 = v21;
      if (v21)
      {
        memmove(__dst, v29, v21);
      }

LABEL_67:
      *(__dst + v21) = 0;
      if ((v54 & 0x80u) == 0)
      {
        v31 = __dst;
      }

      else
      {
        v31 = __dst[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = __dst[1];
      }

      sub_1E53DF59C(&v41, v31, v32);
      if (v54 < 0)
      {
        operator delete(__dst[0]);
      }

LABEL_8:
      v7 = v9 + 1;
      v9 += 2;
      if (v9 >= v6)
      {
        goto LABEL_75;
      }
    }

    if (v16 == 110)
    {
      v26 = "\n";
LABEL_52:
      sub_1E53DF59C(&v41, v26, 1);
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_75:
  if ((v51 & 0x10) != 0)
  {
    v35 = v50;
    v33 = v39;
    if (v50 < v47)
    {
      v50 = v47;
      v35 = v47;
    }

    v36 = v46;
    v34 = v35 - v46;
    if (v35 - v46 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v33 = v39;
    if ((v51 & 8) == 0)
    {
      v34 = 0;
      v39[23] = 0;
      goto LABEL_86;
    }

    v36 = v44;
    v34 = v45 - v44;
    if ((v45 - v44) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_90:
      sub_1E53DF584();
    }
  }

  if (v34 >= 0x17)
  {
    operator new();
  }

  v33[23] = v34;
  if (v34)
  {
    memmove(v33, v36, v34);
  }

LABEL_86:
  v33[v34] = 0;
  v40[0] = *MEMORY[0x1E69E54D8];
  v37 = *(MEMORY[0x1E69E54D8] + 72);
  *(v40 + *(v40[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v41 = v37;
  v42 = MEMORY[0x1E69E5548] + 16;
  if (v49 < 0)
  {
    operator delete(__p);
  }

  v42 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E69285E0](&v52);
}

void sub_1E53E4FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53E27C4(va);
  _Unwind_Resume(a1);
}

void *sub_1E53E501C(void *result)
{
  *result = &unk_1F5F0A068;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_1E53E5094(void *a1)
{
  *a1 = &unk_1F5F0A068;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1E6928650);
}

void sub_1E53E5128(uint64_t a1, uint64_t a2)
{
  if (((1 << (*(a2 + 24) - 1)) | *(a1 + 24)) == *(a1 + 24))
  {
    if ((atomic_load_explicit(&qword_1ECFDEDE8, memory_order_acquire) & 1) == 0)
    {
      v8 = a1;
      sub_1E54906DC();
      a1 = v8;
    }

    (*(**(a1 + 16) + 40))(&__p);
    std::mutex::lock(&stru_1ECFDBAE8);
    v3 = *(a2 + 24);
    if ((v3 - 1) < 3)
    {
      if ((atomic_load_explicit(qword_1ECFDEDF0, memory_order_acquire) & 1) == 0)
      {
        sub_1E5490734();
      }

      if ((v11 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v11 & 0x80u) == 0)
      {
        v7 = v11;
      }

      else
      {
        v7 = v10;
      }

      sub_1E53DF59C(qword_1ECFDEE70, p_p, v7);
      if (atomic_load_explicit(qword_1ECFDEDF0, memory_order_acquire))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v3 - 4) >= 3)
      {
        goto LABEL_26;
      }

      if ((atomic_load_explicit(qword_1ECFDEDF0, memory_order_acquire) & 1) == 0)
      {
        sub_1E5490734();
      }

      if ((v11 & 0x80u) == 0)
      {
        v4 = &__p;
      }

      else
      {
        v4 = __p;
      }

      if ((v11 & 0x80u) == 0)
      {
        v5 = v11;
      }

      else
      {
        v5 = v10;
      }

      sub_1E53DF59C(qword_1ECFDEE78, v4, v5);
      if (atomic_load_explicit(qword_1ECFDEDF0, memory_order_acquire))
      {
LABEL_25:
        std::ostream::flush();
LABEL_26:
        std::mutex::unlock(&stru_1ECFDBAE8);
        if (v11 < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    if (__cxa_guard_acquire(qword_1ECFDEDF0))
    {
      qword_1ECFDEE70 = MEMORY[0x1E69E5310];
      qword_1ECFDEE78 = MEMORY[0x1E69E5300];
      __cxa_guard_release(qword_1ECFDEDF0);
    }

    goto LABEL_25;
  }
}

void sub_1E53E52F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E53E5340()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *sub_1E53E5374(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E6928650](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

void *sub_1E53E53CC(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1E53DF584();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_1E53E548C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E53E54C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1E6928650);
  }

  return result;
}

uint64_t sub_1E53E54E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E53E5544(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1E53E5544(a1, *a2);
    sub_1E53E5544(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

uint64_t sub_1E53E5600(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1E5415338();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_1E53E53CC(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_1E53E5740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E548B928(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53E5754(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1E53E57C8(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  sub_1E53E6FE0();
}

void sub_1E53E58A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53E2E54(va);
  _Unwind_Resume(a1);
}

void sub_1E53E58B8(void *a1, unint64_t a2)
{
  v4 = a1 + 17;
  v3 = a1[17];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4)
    {
      v10 = v5[4];
      if (v10 <= a2)
      {
        if (*(v10 + 8) == 1)
        {
          --a1[19];
        }

        v11 = v5[1];
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
          v13 = v5;
          do
          {
            v12 = v13[2];
            v14 = *v12 == v13;
            v13 = v12;
          }

          while (!v14);
        }

        if (a1[16] == v5)
        {
          a1[16] = v12;
        }

        --a1[18];
        sub_1E53E72D8(v3, v5);
        v15 = v5[6];
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
          v16 = v5;
        }

        else
        {
          v16 = v5;
        }

        operator delete(v16);
      }
    }
  }
}

void *sub_1E53E5A0C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1E53E5340();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1E53E5DCC(a1, &v11);
}

void sub_1E53E5D74(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1E53E5DCC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_1E53E5F58(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t *sub_1E53E6108(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
      v6 = v4 - a2;
      if (v4 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v4 - a2;
      }

      if (v4 - a2 <= a3)
      {
LABEL_7:
        v8 = v4 - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(result + 23) = v8 & 0x7F;
LABEL_15:
          *(v5 + v8) = 0;
          return result;
        }

LABEL_14:
        result[1] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - a2;
      if (v3 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v3 - a2;
      }

      if (v3 - a2 <= a3)
      {
        goto LABEL_7;
      }
    }

    v9 = result;
    memmove(v5 + a2, v5 + a2 + v7, v6 - v7);
    result = v9;
    v8 = v4 - v7;
    if ((*(v9 + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_1E53E61AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1E53E6208(exception, a1);
  __cxa_throw(exception, off_1E876F2F8, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1E53E6208(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void ***sub_1E53E623C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1E53E6300(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_1E53E6360(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1E5415338();
  }
}

void sub_1E53E648C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_1E53E6300(&a11);
  *(v11 + 8) = v12;
  sub_1E53E64AC(&a9);
  _Unwind_Resume(a1);
}

void ****sub_1E53E64AC(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1E53E6530(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1E5415338();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = *v5;
            }

            if (v22 >= 0)
            {
              v21 = *(v5 + 23);
            }

            else
            {
              v21 = v5[1];
            }

            sub_1E53E6DF0(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_1E53E6D20(v8, *v5, v5[1]);
          }

          else
          {
            v23 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v23;
          }
        }

        v5 += 3;
        v8 += 24;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v29 = *(v13 - 1);
      v13 -= 3;
      if (v29 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = &v14[a2];
      do
      {
        if (v5 != v8)
        {
          v18 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = *v5;
            }

            if (v18 >= 0)
            {
              v17 = *(v5 + 23);
            }

            else
            {
              v17 = v5[1];
            }

            sub_1E53E6DF0(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_1E53E6D20(v8, *v5, v5[1]);
          }

          else
          {
            v19 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v19;
          }
        }

        v5 += 3;
        v8 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
      v5 = v15;
    }

    v30 = v13;
    v27 = v13;
    if (v5 != a3)
    {
      v27 = v13;
      do
      {
        while ((*(v5 + 23) & 0x80000000) == 0)
        {
          v28 = *v5;
          v27[2] = v5[2];
          *v27 = v28;
          v27 += 3;
          v5 += 3;
          v30 = v27;
          if (v5 == a3)
          {
            goto LABEL_55;
          }
        }

        sub_1E53E53CC(v27, *v5, v5[1]);
        v5 += 3;
        v27 = v30 + 3;
        v30 += 3;
      }

      while (v5 != a3);
    }

LABEL_55:
    a1[1] = v27;
  }
}

void sub_1E53E68A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1E53E6300(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1E53E68BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1E53E6300(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unint64_t sub_1E53E68D4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

_BYTE *sub_1E53E6D20(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_1E53DF584();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

uint64_t sub_1E53E6DF0(uint64_t a1, const void *a2, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    sub_1E53DF584();
  }

  v6 = *a1;
  *(a1 + 8) = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

uint64_t sub_1E53E6F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1E69283E0](a1 + 2);

  return std::istream::~istream();
}

uint64_t *sub_1E53E712C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **sub_1E53E72D8(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
  }

  else
  {
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

uint64_t sub_1E53E768C(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void sub_1E53E77D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E53E7810(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1E53E7840(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E549171BLL)
  {
    if (((v2 & 0x80000001E549171BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E549171BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E549171BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_1E53E78B0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1E53E68D4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1E53E7A68(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E6928590](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_1E53E6D20((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_1E53E768C(a1);
  return a1;
}

void sub_1E53E7B38(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_1E53E7B60(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_1E53E7ECC@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_1E53E8004(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t **sub_1E53E8370(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1E53E68D4(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1E53E874C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53E8764(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1E53E8764(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1E53E87E8(void *result, void *a2, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    result = sub_1E53E8950(result, a3 - v11);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v12 = (v6 + 8 * (v10 >> 9));
  if (v7 != v6)
  {
    v13 = *v12 + 8 * (v10 & 0x1FF);
    v14 = v13;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16 = v12;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = a3 + ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 511 - v15;
    v16 = &v12[-(v17 >> 9)];
    v14 = *v16 + 8 * (~v17 & 0x1FF);
  }

  else
  {
    v16 = &v12[v15 >> 9];
    v14 = *v16 + 8 * (v15 & 0x1FF);
  }

LABEL_22:
  while (v13 != v14)
  {
    v18 = v14;
    if (v12 != v16)
    {
      v18 = *v12 + 4096;
    }

    if (v13 == v18)
    {
      v5[5] = v9;
      if (v12 == v16)
      {
        return result;
      }
    }

    else
    {
      v19 = v13;
      do
      {
        *v19++ = a2[2];
        a2 = *a2;
      }

      while (v19 != v18);
      v9 = v5[5] + ((v18 - v13) >> 3);
      v5[5] = v9;
      if (v12 == v16)
      {
        return result;
      }
    }

    v20 = v12[1];
    ++v12;
    v13 = v20;
  }

  return result;
}

void *sub_1E53E8950(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_1E53E5DCC(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_1E53E5340();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_1E53E5DCC(v2, &v14);
    }
  }

  return result;
}

void sub_1E53E8FE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1E53E9050(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1E53E9120(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E53E9158(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1E53E9188(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E53E91E8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t sub_1E53E9234(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v4, a2, a3);
}

uint64_t sub_1E53E9254(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E5328];

  return __cxa_atexit(v4, a2, a3);
}

CFMutableDictionaryRef sub_1E53E9280(int a1, int a2, int a3, int a4, int a5, int a6, char a7, int a8)
{
  v32 = a2;
  valuePtr = a1;
  v30 = a4;
  v31 = a3;
  v28 = a6;
  v29 = a5;
  ++qword_1ECFDD9C8;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ++qword_1ECFDD9D0;
    ++qword_1ECFDDA18;
    return Mutable;
  }

  v12 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
    v26 = &qword_1ECFDD9D8;
LABEL_20:
    ++*v26;
    ++qword_1ECFDDA18;
    ++qword_1ECFDDA30;
    CFRelease(Mutable);
    return 0;
  }

  v13 = v12;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966208], v12);
  CFRelease(v13);
  v14 = CFNumberCreate(v10, kCFNumberIntType, &v32);
  if (!v14)
  {
    v26 = &qword_1ECFDD9E0;
    goto LABEL_20;
  }

  v15 = v14;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660B8], v14);
  CFRelease(v15);
  v16 = CFNumberCreate(v10, kCFNumberIntType, &v31);
  if (!v16)
  {
    v26 = &qword_1ECFDD9E8;
    goto LABEL_20;
  }

  v17 = v16;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v16);
  CFRelease(v17);
  v18 = CFNumberCreate(v10, kCFNumberIntType, &v30);
  if (!v18)
  {
    v26 = &qword_1ECFDD9F0;
    goto LABEL_20;
  }

  v19 = v18;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966020], v18);
  CFRelease(v19);
  v20 = CFNumberCreate(v10, kCFNumberIntType, &v29);
  if (!v20)
  {
    v26 = &qword_1ECFDD9F8;
    goto LABEL_20;
  }

  v21 = v20;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966140], v20);
  CFRelease(v21);
  v22 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v22)
  {
    v26 = &qword_1ECFDDA00;
    goto LABEL_20;
  }

  v23 = v22;
  v24 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(v22, *MEMORY[0x1E696CF68], *MEMORY[0x1E695E4D0]);
  if ((a7 & 1) == 0)
  {
    ++qword_1ECFDDA08;
    CFDictionarySetValue(v23, *MEMORY[0x1E696D0D8], *MEMORY[0x1E695E4C0]);
  }

  if (a8)
  {
    ++qword_1ECFDDA10;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6966100], v24);
  }

  v25 = CFNumberCreate(v10, kCFNumberIntType, &v28);
  CFDictionarySetValue(v23, *MEMORY[0x1E696CE60], v25);
  CFRelease(v25);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69660D8], v23);
  CFRelease(v23);
  return Mutable;
}

uint64_t sub_1E53E95C0(unsigned int a1, unsigned int a2, OSType a3, CVPixelBufferRef *a4, int a5, int a6, int a7, char a8, unsigned __int8 a9)
{
  ++qword_1ECFDDA38;
  v13 = &qword_1ECFDDA40;
  v14 = sub_1E53E9280(a1, a2, a3, a5, a6, a7, a8, a9);
  if (v14)
  {
    v15 = v14;
    v16 = CVPixelBufferCreate(0, a1, a2, a3, v14, a4);
    CFRelease(v15);
    result = v16;
    if (!v16)
    {
      return result;
    }

    v13 = &qword_1ECFDDA48;
  }

  else
  {
    result = 4294960636;
  }

  ++*v13;
  ++qword_1ECFDDA50;
  *a4 = 0;
  return result;
}

uint64_t CVHWAFeatureExtractionCreate(uint64_t a1)
{
  if (a1)
  {
    sub_1E548B810(&v2);
    sub_1E53E33F8(v2);
    operator new();
  }

  return 2;
}

void sub_1E53E998C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1E53F7E98(va1);
  sub_1E53F7D54(va);
  _Unwind_Resume(a1);
}

void sub_1E53E99A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53F7D54(va);
  _Unwind_Resume(a1);
}

void sub_1E53E99BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 65) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v23 - 41) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v23 - 65) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v23 - 88));
  if ((*(v23 - 41) & 0x80000000) == 0)
  {
LABEL_4:
    MEMORY[0x1E6928650](v22, v21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v23 - 64));
  MEMORY[0x1E6928650](v22, v21);
  _Unwind_Resume(a1);
}

uint64_t CVHWAFeatureExtractionRelease(uint64_t a1)
{
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 16) == 1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v2 = a1;
      sub_1E547B7A4(v1 + 360);
      sub_1E541B450(v1 + 336, *(v1 + 344));
      if (*(v1 + 63) < 0)
      {
        operator delete(*(v1 + 40));
      }

      v3 = *v1;
      *v1 = 0;
      if (v3)
      {
        v4 = sub_1E547343C(v3);
        MEMORY[0x1E6928650](v4, 0x10B2C40FE7A4E93);
      }

      v5 = 0x10B2C403B92AAD9;
      v6 = v1;
      goto LABEL_12;
    }
  }

  else if (*a1)
  {
    v2 = a1;
    v6 = sub_1E5427710(*a1);
    v5 = 0x10A0C404E35D39ELL;
LABEL_12:
    MEMORY[0x1E6928650](v6, v5);
    MEMORY[0x1E6928650](v2, 0x1020C40A95220FALL);
    return 0;
  }

  return 1;
}

uint64_t CVHWAFeatureExtractionInitDirect(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  v3 = *(a2 + 512);
  *(a1 + 16) = v3;
  if (v3 == 1)
  {
    v4 = operator new(0x2C8uLL, MEMORY[0x1E69E5398]);
    if (v4)
    {
      sub_1E54732F8(v4);
    }

    return 1;
  }

  return !sub_1E544E18C((a2 + 64)) || sub_1E542405C(*a1);
}

uint64_t CVHWAFeatureExtractionInitDirectWithLacc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v24);
    if (**(v24 + 56) <= 4)
    {
      v6 = *(v24 + 72);
      v7 = sub_1E53E3554(v24, "OSLogSurrogateAppender", 1, 0);
      if (v7 || v6)
      {
        v17[0] = &v24;
        v17[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v17[2] = std::chrono::system_clock::now().__d_.__rep_;
        v18 = 4;
        v19 = "unknown file";
        v20 = 170;
        v22 = 0;
        v23 = 0;
        v21 = "unknown function";
        v8 = *(v24 + 39);
        if ((v8 & 0x8000000000000000) != 0)
        {
          v9 = *(v24 + 16);
          v8 = *(v24 + 24);
        }

        else
        {
          v9 = (v24 + 16);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&v25);
          sub_1E53F807C("com.apple.AppleCVHWA", &v25, &qword_1ECFDBB28);
          if (v27 == 1 && SHIBYTE(v26) < 0)
          {
            operator delete(v25);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v11 = &qword_1ECFDBB28;
        }

        else
        {
          v11 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v12 = byte_1ECFDBB3F;
        }

        else
        {
          v12 = unk_1ECFDBB30;
        }

        *&v25 = os_log_create(v11, v9);
        if (v12 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        v28 = v12;
        if (v12)
        {
          memmove(&v25 + 8, v11, v12);
        }

        *(&v25 + v12 + 8) = 0;
        LOBYTE(v29) = 1;
        if (v8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v8 >= 0x17)
        {
          operator new();
        }

        v31 = v8;
        if (v8)
        {
          memmove(&v30, v9, v8);
        }

        *(&v30 + v8) = 0;
        v32 = 1;
        v13 = v25;
        if (v31 < 0)
        {
          operator delete(v30);
        }

        if (v29 == 1 && v28 < 0)
        {
          operator delete(*(&v25 + 1));
        }

        if (v13)
        {
          os_release(v13);
        }

        if (v7 && *(v7 + 24))
        {
          v14 = _os_log_pack_size();
          operator new(v14, 8uLL);
          operator new();
        }

        os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        LODWORD(v25) = 136315138;
        *(&v25 + 4) = "CVHWAFeatureExtractionInitDirectWithLacc";
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          free(v15);
        }

        if (v6)
        {
          sub_1E53DFB24(v17, "%s has no effect in swproxy", "CVHWAFeatureExtractionInitDirectWithLacc");
          sub_1E53EA844(v17);
        }

        sub_1E53EA844(v17);
        v16 = v23;
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }
      }
    }
  }

  if (!sub_1E544E18C((a2 + 64)))
  {
    return 1;
  }

  *(a2 + 192) = a3;
  result = sub_1E542405C(*a1);
  if (result)
  {
    return 1;
  }

  *(a1 + 16) = 0;
  return result;
}

void sub_1E53EA5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 152) == 1 && *(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EA5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EA618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53F816C(v6 - 176);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EA634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_1E53F816C(&a31);
    sub_1E53EAA0C(&a14);
    _Unwind_Resume(a1);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EA67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EA6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EA6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E53EA72C(void *a1)
{
  if ((atomic_load_explicit(&qword_1EE30C380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE30C380))
  {
    sub_1E548B75C(&v4);
    sub_1E53F7C9C(__p, "cvhwa.vio");
    sub_1E53E3CC0(&v4, __p, &qword_1EE30C378);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(nullsub_3, &qword_1EE30C378, &dword_1E53D8000);
    __cxa_guard_release(&qword_1EE30C380);
  }

  *a1 = qword_1EE30C378;
}

void sub_1E53EA7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_1EE30C380);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_1EE30C380);
  _Unwind_Resume(a1);
}

void sub_1E53EA844(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = (*v1 + 16);
      if (*(*v1 + 39) < 0)
      {
        v4 = *v4;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v4;
      v14 = v5;
      v15 = v6;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v3;
      v20 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 >= **(*v1 + 56))
      {
        sub_1E53E3BFC(*v1, &v13);
        v10 = v20;
      }

      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v11 = *(a1 + 64);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      if (v11)
      {
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }
}

void sub_1E53EA9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1E53F7E20(va1);
  sub_1E53F7E98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1E53EAA0C(uint64_t a1)
{
  sub_1E53EA844(a1);
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

uint64_t CVHWAFeatureExtractionProcess(uint64_t a1, __CVBuffer *a2, CVPixelBufferRef *a3)
{
  v7 = a2;
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 16) == 1)
  {
    if (!sub_1E5472C10(*(a1 + 8)))
    {
      sub_1E5459834(*(a1 + 8), a3);
      return 0;
    }

    return 1;
  }

  v6 = 0;
  result = sub_1E54270F0(*a1, &v7, &v6);
  if (result)
  {
    return 1;
  }

  *a3 = v6;
  return result;
}

uint64_t CVHWAFeatureExtractionProcessKeyOutputs(uint64_t a1, __CVBuffer *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v22);
    if (**(v22 + 56) <= 4)
    {
      v4 = *(v22 + 72);
      v5 = sub_1E53E3554(v22, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v15[0] = &v22;
        v15[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v15[2] = std::chrono::system_clock::now().__d_.__rep_;
        v16 = 4;
        v17 = "unknown file";
        v18 = 236;
        v20 = 0;
        v21 = 0;
        v19 = "unknown function";
        v6 = *(v22 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v22 + 16);
          v6 = *(v22 + 24);
        }

        else
        {
          v7 = (v22 + 16);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&v23);
          sub_1E53F807C("com.apple.AppleCVHWA", &v23, &qword_1ECFDBB28);
          if (v25 == 1 && SHIBYTE(v24) < 0)
          {
            operator delete(v23);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v9 = &qword_1ECFDBB28;
        }

        else
        {
          v9 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v10 = byte_1ECFDBB3F;
        }

        else
        {
          v10 = unk_1ECFDBB30;
        }

        *&v23 = os_log_create(v9, v7);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        v26 = v10;
        if (v10)
        {
          memmove(&v23 + 8, v9, v10);
        }

        *(&v23 + v10 + 8) = 0;
        LOBYTE(v27) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v29 = v6;
        if (v6)
        {
          memmove(&v28, v7, v6);
        }

        *(&v28 + v6) = 0;
        v30 = 1;
        v11 = v23;
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(*(&v23 + 1));
        }

        if (v11)
        {
          os_release(v11);
        }

        if (v5 && *(v5 + 24))
        {
          v12 = _os_log_pack_size();
          operator new(v12, 8uLL);
          operator new();
        }

        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        LODWORD(v23) = 136315138;
        *(&v23 + 4) = "CVHWAFeatureExtractionProcessKeyOutputs";
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          free(v13);
        }

        if (v4)
        {
          sub_1E53DFB24(v15, "%s has no effect in swproxy", "CVHWAFeatureExtractionProcessKeyOutputs");
          sub_1E53EA844(v15);
        }

        sub_1E53EA844(v15);
        v14 = v21;
        if (v21)
        {
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }
    }
  }

  return sub_1E542494C(*a1, a2) != 0;
}

void sub_1E53EB460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 152) == 1 && *(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EB4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EB4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EB50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EB538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EB54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionProcessHwOutputs(uint64_t a1, __CVBuffer *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v22);
    if (**(v22 + 56) <= 4)
    {
      v4 = *(v22 + 72);
      v5 = sub_1E53E3554(v22, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v15[0] = &v22;
        v15[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v15[2] = std::chrono::system_clock::now().__d_.__rep_;
        v16 = 4;
        v17 = "unknown file";
        v18 = 254;
        v20 = 0;
        v21 = 0;
        v19 = "unknown function";
        v6 = *(v22 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v22 + 16);
          v6 = *(v22 + 24);
        }

        else
        {
          v7 = (v22 + 16);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&v23);
          sub_1E53F807C("com.apple.AppleCVHWA", &v23, &qword_1ECFDBB28);
          if (v25 == 1 && SHIBYTE(v24) < 0)
          {
            operator delete(v23);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v9 = &qword_1ECFDBB28;
        }

        else
        {
          v9 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v10 = byte_1ECFDBB3F;
        }

        else
        {
          v10 = unk_1ECFDBB30;
        }

        *&v23 = os_log_create(v9, v7);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        v26 = v10;
        if (v10)
        {
          memmove(&v23 + 8, v9, v10);
        }

        *(&v23 + v10 + 8) = 0;
        LOBYTE(v27) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v29 = v6;
        if (v6)
        {
          memmove(&v28, v7, v6);
        }

        *(&v28 + v6) = 0;
        v30 = 1;
        v11 = v23;
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(*(&v23 + 1));
        }

        if (v11)
        {
          os_release(v11);
        }

        if (v5 && *(v5 + 24))
        {
          v12 = _os_log_pack_size();
          operator new(v12, 8uLL);
          operator new();
        }

        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        LODWORD(v23) = 136315138;
        *(&v23 + 4) = "CVHWAFeatureExtractionProcessHwOutputs";
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          free(v13);
        }

        if (v4)
        {
          sub_1E53DFB24(v15, "%s has no effect in swproxy", "CVHWAFeatureExtractionProcessHwOutputs");
          sub_1E53EA844(v15);
        }

        sub_1E53EA844(v15);
        v14 = v21;
        if (v21)
        {
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }
    }
  }

  return sub_1E542494C(*a1, a2) != 0;
}

void sub_1E53EBED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 152) == 1 && *(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EBF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EBF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EBF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EBFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EBFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionProcessHwOutputsToOutBuf(uint64_t a1, __CVBuffer *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v22);
    if (**(v22 + 56) <= 4)
    {
      v4 = *(v22 + 72);
      v5 = sub_1E53E3554(v22, "OSLogSurrogateAppender", 1, 0);
      if (v5 || v4)
      {
        v15[0] = &v22;
        v15[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v15[2] = std::chrono::system_clock::now().__d_.__rep_;
        v16 = 4;
        v17 = "unknown file";
        v18 = 272;
        v20 = 0;
        v21 = 0;
        v19 = "unknown function";
        v6 = *(v22 + 39);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v7 = *(v22 + 16);
          v6 = *(v22 + 24);
        }

        else
        {
          v7 = (v22 + 16);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&v23);
          sub_1E53F807C("com.apple.AppleCVHWA", &v23, &qword_1ECFDBB28);
          if (v25 == 1 && SHIBYTE(v24) < 0)
          {
            operator delete(v23);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v9 = &qword_1ECFDBB28;
        }

        else
        {
          v9 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v10 = byte_1ECFDBB3F;
        }

        else
        {
          v10 = unk_1ECFDBB30;
        }

        *&v23 = os_log_create(v9, v7);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        v26 = v10;
        if (v10)
        {
          memmove(&v23 + 8, v9, v10);
        }

        *(&v23 + v10 + 8) = 0;
        LOBYTE(v27) = 1;
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        v29 = v6;
        if (v6)
        {
          memmove(&v28, v7, v6);
        }

        *(&v28 + v6) = 0;
        v30 = 1;
        v11 = v23;
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(*(&v23 + 1));
        }

        if (v11)
        {
          os_release(v11);
        }

        if (v5 && *(v5 + 24))
        {
          v12 = _os_log_pack_size();
          operator new(v12, 8uLL);
          operator new();
        }

        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        LODWORD(v23) = 136315138;
        *(&v23 + 4) = "CVHWAFeatureExtractionProcessHwOutputsToOutBuf";
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          free(v13);
        }

        if (v4)
        {
          sub_1E53DFB24(v15, "%s has no effect in swproxy", "CVHWAFeatureExtractionProcessHwOutputsToOutBuf");
          sub_1E53EA844(v15);
        }

        sub_1E53EA844(v15);
        v14 = v21;
        if (v21)
        {
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }
    }
  }

  return sub_1E542494C(*a1, a2) != 0;
}

void sub_1E53EC94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 152) == 1 && *(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EC990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EC9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53EC9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53ECA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53ECA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionInitGPWithSession(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  if (!a2)
  {
    return 2;
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v24);
    if (**(v24 + 56) <= 4)
    {
      v6 = *(v24 + 72);
      v7 = sub_1E53E3554(v24, "OSLogSurrogateAppender", 1, 0);
      if (v7 || v6)
      {
        v17[0] = &v24;
        v17[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v17[2] = std::chrono::system_clock::now().__d_.__rep_;
        v18 = 4;
        v19 = "unknown file";
        v20 = 300;
        v22 = 0;
        v23 = 0;
        v21 = "unknown function";
        v8 = *(v24 + 39);
        if ((v8 & 0x8000000000000000) != 0)
        {
          v9 = *(v24 + 16);
          v8 = *(v24 + 24);
        }

        else
        {
          v9 = (v24 + 16);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&v25);
          sub_1E53F807C("com.apple.AppleCVHWA", &v25, &qword_1ECFDBB28);
          if (v27 == 1 && SHIBYTE(v26) < 0)
          {
            operator delete(v25);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v11 = &qword_1ECFDBB28;
        }

        else
        {
          v11 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v12 = byte_1ECFDBB3F;
        }

        else
        {
          v12 = unk_1ECFDBB30;
        }

        *&v25 = os_log_create(v11, v9);
        if (v12 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        v28 = v12;
        if (v12)
        {
          memmove(&v25 + 8, v11, v12);
        }

        *(&v25 + v12 + 8) = 0;
        LOBYTE(v29) = 1;
        if (v8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v8 >= 0x17)
        {
          operator new();
        }

        v31 = v8;
        if (v8)
        {
          memmove(&v30, v9, v8);
        }

        *(&v30 + v8) = 0;
        v32 = 1;
        v13 = v25;
        if (v31 < 0)
        {
          operator delete(v30);
        }

        if (v29 == 1 && v28 < 0)
        {
          operator delete(*(&v25 + 1));
        }

        if (v13)
        {
          os_release(v13);
        }

        if (v7 && *(v7 + 24))
        {
          v14 = _os_log_pack_size();
          operator new(v14, 8uLL);
          operator new();
        }

        os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        LODWORD(v25) = 136315138;
        *(&v25 + 4) = "CVHWAFeatureExtractionInitGPWithSession";
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          free(v15);
        }

        if (v6)
        {
          sub_1E53DFB24(v17, "%s has no effect in swproxy", "CVHWAFeatureExtractionInitGPWithSession");
          sub_1E53EA844(v17);
        }

        sub_1E53EA844(v17);
        v16 = v23;
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }
      }
    }
  }

  if (!sub_1E544E18C((a2 + 64)))
  {
    return 1;
  }

  result = sub_1E5423F24(*a1, a2, a3);
  if (result)
  {
    return 1;
  }

  *(a1 + 16) = 0;
  return result;
}

void sub_1E53ED428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 152) == 1 && *(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53ED46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1E53F8434(&a28);
  sub_1E53F8434(&a24);
  sub_1E53F816C(v28 - 176);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53ED498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53F816C(v6 - 176);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53ED4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_1E53F816C(&a31);
    sub_1E53EAA0C(&a14);
    _Unwind_Resume(a1);
  }

  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a14);
  _Unwind_Resume(a1);
}

void sub_1E53ED4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x1E6928650](v6, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53ED528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53ED53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef CVHWAFeatureExtractionGetActionBuffer(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 328, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 330;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v6 = &qword_1ECFDBB28;
        }

        else
        {
          v6 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v7 = byte_1ECFDBB3F;
        }

        else
        {
          v7 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v6, v4);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v8)
        {
          os_release(v8);
        }

        if (v3 && *(v3 + 24))
        {
          v9 = _os_log_pack_size();
          operator new(v9, 8uLL);
          operator new();
        }

        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionGetActionBuffer";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetActionBuffer");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E542453C(*a1);
}

void sub_1E53EDEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EDF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EDF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EDF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EDFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EDFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef CVHWAFeatureExtractionGetOperationBuffer(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 337, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 339;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v6 = &qword_1ECFDBB28;
        }

        else
        {
          v6 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v7 = byte_1ECFDBB3F;
        }

        else
        {
          v7 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v6, v4);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v8)
        {
          os_release(v8);
        }

        if (v3 && *(v3 + 24))
        {
          v9 = _os_log_pack_size();
          operator new(v9, 8uLL);
          operator new();
        }

        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionGetOperationBuffer";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetOperationBuffer");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E5424660(*a1);
}

void sub_1E53EE978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EE9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EE9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EEA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EEA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EEA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetActionSizeInBytes(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 346, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 348;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v6 = &qword_1ECFDBB28;
        }

        else
        {
          v6 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v7 = byte_1ECFDBB3F;
        }

        else
        {
          v7 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v6, v4);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v8)
        {
          os_release(v8);
        }

        if (v3 && *(v3 + 24))
        {
          v9 = _os_log_pack_size();
          operator new(v9, 8uLL);
          operator new();
        }

        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionGetActionSizeInBytes";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetActionSizeInBytes");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E54245F8(*a1);
}

void sub_1E53EF408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EF44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EF480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EF4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EF4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EF4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetOperationSizeInBytes(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 355, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 357;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v6 = &qword_1ECFDBB28;
        }

        else
        {
          v6 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v7 = byte_1ECFDBB3F;
        }

        else
        {
          v7 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v6, v4);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v8)
        {
          os_release(v8);
        }

        if (v3 && *(v3 + 24))
        {
          v9 = _os_log_pack_size();
          operator new(v9, 8uLL);
          operator new();
        }

        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionGetOperationSizeInBytes";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetOperationSizeInBytes");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E542471C(*a1);
}

void sub_1E53EFE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ECFDBB40);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EFEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1E53F8434(&a26);
  sub_1E53F8434(&a22);
  sub_1E53F816C(&a31);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EFF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1E53F816C(&a29);
  sub_1E53EAA0C(&a12);
  _Unwind_Resume(a1);
}

void sub_1E53EFF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x1E6928650](v4, 0x10D0C40B950D02ALL);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EFF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1E53EAA0C(va);
  _Unwind_Resume(a1);
}

void sub_1E53EFF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *object, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1E53DDDDC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CVHWAFeatureExtractionGetOutputSizeInBytes(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/product/AppleCVHWA/AppleCVHWA/src/CVHWAFeatureExtraction.cpp", 364, "ctx != nullptr", 14, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (*(a1 + 16) == 1)
  {
    sub_1E53EA72C(&v20);
    if (**(v20 + 56) <= 4)
    {
      v2 = *(v20 + 72);
      v3 = sub_1E53E3554(v20, "OSLogSurrogateAppender", 1, 0);
      if (v3 || v2)
      {
        v13[0] = &v20;
        v13[1] = std::chrono::steady_clock::now().__d_.__rep_;
        v13[2] = std::chrono::system_clock::now().__d_.__rep_;
        v14 = 4;
        v15 = "unknown file";
        v16 = 366;
        v18 = 0;
        v19 = 0;
        v17 = "unknown function";
        v4 = (v20 + 16);
        v5 = *(v20 + 39);
        if ((v5 & 0x8000000000000000) != 0)
        {
          v4 = *(v20 + 16);
          v5 = *(v20 + 24);
        }

        if ((atomic_load_explicit(&qword_1ECFDBB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECFDBB40))
        {
          sub_1E548E6E4(&object);
          sub_1E53F807C("com.apple.AppleCVHWA", &object, &qword_1ECFDBB28);
          if (v23 == 1 && SHIBYTE(v22) < 0)
          {
            operator delete(object);
          }

          __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1ECFDBB28, &dword_1E53D8000);
          __cxa_guard_release(&qword_1ECFDBB40);
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v6 = &qword_1ECFDBB28;
        }

        else
        {
          v6 = qword_1ECFDBB28;
        }

        if (byte_1ECFDBB3F >= 0)
        {
          v7 = byte_1ECFDBB3F;
        }

        else
        {
          v7 = unk_1ECFDBB30;
        }

        *&object = os_log_create(v6, v4);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v7 >= 0x17)
        {
          operator new();
        }

        v24 = v7;
        if (v7)
        {
          memmove(&object + 8, v6, v7);
        }

        *(&object + v7 + 8) = 0;
        LOBYTE(v25) = 1;
        if (v5 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1E53DF584();
        }

        if (v5 >= 0x17)
        {
          operator new();
        }

        v27 = v5;
        if (v5)
        {
          memmove(&__p, v4, v5);
        }

        *(&__p + v5) = 0;
        v28 = 1;
        v8 = object;
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 == 1 && v24 < 0)
        {
          operator delete(*(&object + 1));
        }

        if (v8)
        {
          os_release(v8);
        }

        if (v3 && *(v3 + 24))
        {
          v9 = _os_log_pack_size();
          operator new(v9, 8uLL);
          operator new();
        }

        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        LODWORD(object) = 136315138;
        *(&object + 4) = "CVHWAFeatureExtractionGetOutputSizeInBytes";
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          free(v10);
        }

        if (v2)
        {
          sub_1E53DFB24(v13, "%s has no effect in swproxy", "CVHWAFeatureExtractionGetOutputSizeInBytes");
          sub_1E53EA844(v13);
        }

        sub_1E53EA844(v13);
        v11 = v19;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return sub_1E5424784(*a1);
}