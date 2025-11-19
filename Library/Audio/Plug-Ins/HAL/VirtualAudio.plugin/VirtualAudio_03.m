void sub_44DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __cxa_guard_abort(&qword_6E8630);
  sub_477A0(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_44E44(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  sub_47714(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_44E98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = (a2 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = a1 + 24;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 16) = v4;
    *v4 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6;
  }

  *(a1 + 40) = *(a2 + 40);
  v8 = (a2 + 48);
  v9 = *(a2 + 48);
  *(a1 + 48) = v9;
  v10 = a1 + 48;
  v11 = *(a2 + 56);
  *(a1 + 56) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 40) = v8;
    *v8 = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 40) = v10;
  }

  *(a1 + 64) = *(a2 + 64);
  v12 = (a2 + 72);
  v13 = *(a2 + 72);
  *(a1 + 72) = v13;
  v14 = a1 + 72;
  v15 = *(a2 + 80);
  *(a1 + 80) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 64) = v12;
    *v12 = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    *(a1 + 64) = v14;
  }

  *(a1 + 88) = *(a2 + 88);
  v16 = (a2 + 96);
  v17 = *(a2 + 96);
  *(a1 + 96) = v17;
  v18 = a1 + 96;
  v19 = *(a2 + 104);
  *(a1 + 104) = v19;
  if (v19)
  {
    *(v17 + 16) = v18;
    *(a2 + 88) = v16;
    *v16 = 0;
    *(a2 + 104) = 0;
  }

  else
  {
    *(a1 + 88) = v18;
  }

  *(a1 + 112) = *(a2 + 112);
  v20 = (a2 + 120);
  v21 = *(a2 + 120);
  *(a1 + 120) = v21;
  v22 = a1 + 120;
  v23 = *(a2 + 128);
  *(a1 + 128) = v23;
  if (v23)
  {
    *(v21 + 16) = v22;
    *(a2 + 112) = v20;
    *v20 = 0;
    *(a2 + 128) = 0;
  }

  else
  {
    *(a1 + 112) = v22;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v24 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v24;
  *(a1 + 168) = *(a2 + 168);
  v25 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v25;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  v26 = *(a2 + 200);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 200) = v26;
  *(a1 + 208) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  sub_450F8(a1 + 256, (a2 + 256));
  sub_450F8(a1 + 296, (a2 + 296));
  sub_450F8(a1 + 336, (a2 + 336));
  v27 = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 376) = v27;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    v28 = *(a2 + 392);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 392) = v28;
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 392) = 0;
    *(a1 + 416) = 1;
  }

  *(a1 + 424) = *(a2 + 424);
  v29 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v29;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0;
  *(a1 + 456) = *(a2 + 456);
  return a1;
}

uint64_t sub_450F8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

BOOL sub_45168()
{
  if ((atomic_load_explicit(&qword_6E9B28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B28))
  {
    v1 = sub_DD858();
    word_6E9B20 = sub_1192CC(v1);
    __cxa_guard_release(&qword_6E9B28);
  }

  return (word_6E9B20 & 0xFFFE) == 2;
}

void *sub_451EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 279) < 0)
  {
    v3 = result[33];
    if (v3)
    {
      v4 = result[32];
      return sub_54A0(a2, v4, v3);
    }
  }

  else if (*(result + 279))
  {
    *a2 = *(result + 16);
    v2 = result[34];
LABEL_8:
    *(a2 + 16) = v2;
    return result;
  }

  if ((*(result + 231) & 0x80000000) == 0)
  {
    *a2 = *(result + 13);
    v2 = result[28];
    goto LABEL_8;
  }

  v4 = result[26];
  v3 = result[27];
  return sub_54A0(a2, v4, v3);
}

CFStringRef *sub_45240(CFStringRef *a1, const UInt8 *a2, CFIndex a3)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    *a1 = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

const void **sub_452F0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_45324(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = a2;
  v10 = HIDWORD(a2);
  v13 = *(a1 + 8);
  v11 = a1 + 8;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

  v17 = v11;
  do
  {
    v18 = *(v12 + 32);
    v19 = v18 >= a2;
    v20 = v18 < a2;
    if (v19)
    {
      v17 = v12;
    }

    v12 = *(v12 + 8 * v20);
  }

  while (v12);
  if (v17 != v11 && *(v17 + 32) <= a2 && sub_455CC(a4, v17 + 40, *(v17 + 72), a2, a3, a5))
  {
    LODWORD(v35[0]) = a4;
    sub_4BA00(buf, v35, 1);
    v21 = sub_45738(buf, v17 + 40, v10, a6, a7, a8);
    sub_477A0(*&v38[4]);
  }

  else
  {
LABEL_11:
    v21 = 0;
  }

  v22 = sub_5544(8);
  if (*(v22 + 8))
  {
    v23 = *v22;
    if (*v22)
    {
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(v35, v9);
        if (v36 >= 0)
        {
          v24 = v35;
        }

        else
        {
          v24 = v35[0];
        }

        sub_22170(v33, v10);
        v25 = v34;
        v26 = v33[0];
        sub_22170(__p, a4);
        v27 = v33;
        *v38 = "RoutingManager.cpp";
        if (v25 < 0)
        {
          v27 = v26;
        }

        v28 = "does not";
        if (v21)
        {
          v28 = "does";
        }

        *&v38[8] = 1024;
        *&v38[10] = 4932;
        v29 = __p[0];
        *buf = 136316418;
        v39 = 2080;
        if (v32 >= 0)
        {
          v29 = __p;
        }

        v40 = v24;
        v41 = 2080;
        v42 = v27;
        v43 = 2080;
        v44 = v28;
        v45 = 2080;
        v46 = v29;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Category %s and mode %s %s support port type %s", buf, 0x3Au);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        if (v36 < 0)
        {
          operator delete(v35[0]);
        }
      }
    }
  }

  return v21;
}

uint64_t sub_455CC(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a3 == 1668510820;
  v19 = a4;
  v20 = a5;
  v17[0] = a2;
  v17[1] = a6;
  v21 = 0;
  v22 = 0;
  v7 = sub_456B8(v17);
  v9 = v17[0];
  if (v17[0] == v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = v8;
  while (1)
  {
    v12 = *(v10 + 24);
    if (v12 != v10 + 16)
    {
      do
      {
        v13 = *(v12 + 16) == a1 || *(v12 + 20) == a1;
        v14 = v13;
        if (v13)
        {
          break;
        }

        v12 = *(v12 + 8);
      }

      while (v12 != v10 + 16);
      if (v14)
      {
        return 1;
      }
    }

    v15 = *(v10 + 8);
    v10 = *v11;
    while (v15 != v10)
    {
      if (sub_4B65C((v11 + 1), v15 + 16))
      {
        v10 = v15;
        break;
      }

      v15 = *(v15 + 8);
    }

    if (v10 == v9)
    {
      return 0;
    }
  }
}

uint64_t sub_456B8(uint64_t *a1)
{
  if (*(a1 + 48) == 1)
  {
    return a1[5];
  }

  v2 = *a1;
  for (i = *(*a1 + 8); i != v2; i = *(i + 8))
  {
    if (sub_4B65C((a1 + 1), i + 16))
    {
      v2 = i;
      break;
    }
  }

  a1[5] = v2;
  *(a1 + 48) = 1;
  return v2;
}

uint64_t sub_45738(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6)
{
  if (a6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  sub_458CC(v29, a2 + 40, a3, v9);
  if (v30 != 1)
  {
    return 1;
  }

  sub_44E44(&v27, v29);
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  sub_7E598(v31, *a1, (a1 + 8), v27, &v28, &v25, v26);
  v10 = v25;
  if (v25 == v26)
  {
LABEL_23:
    v23 = 1;
  }

  else
  {
    v13 = *(a4 + 8);
    v12 = a4 + 8;
    v11 = v13;
    if (v13)
    {
      while (1)
      {
        v14 = *(v10 + 7);
        v15 = v12;
        v16 = v11;
        do
        {
          v17 = *(v16 + 28);
          v18 = v17 >= v14;
          v19 = v17 < v14;
          if (v18)
          {
            v15 = v16;
          }

          v16 = *(v16 + 8 * v19);
        }

        while (v16);
        if (v15 == v12 || *(v15 + 28) > v14)
        {
          break;
        }

        v20 = v10[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v10[2];
            v22 = *v21 == v10;
            v10 = v21;
          }

          while (!v22);
        }

        v10 = v21;
        if (v21 == v26)
        {
          goto LABEL_23;
        }
      }
    }

    v23 = 0;
  }

  sub_477A0(v26[0]);
  sub_477A0(v28);
  if (v30)
  {
    sub_477A0(v29[1]);
  }

  return v23;
}

void sub_45894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18)
{
  sub_477A0(a10);
  sub_477A0(a13);
  if (a18 == 1)
  {
    sub_477A0(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_458CC(uint64_t *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = a2 + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == a2 + 8 || *(v9 + 32) > a3)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    if (*(v9 + 192) == 1)
    {
      v15 = *(v9 + 176);
      v13 = v9 + 176;
      v14 = v15;
      if (v15)
      {
        v16 = v13;
        do
        {
          if (*(v14 + 32) >= a4)
          {
            v16 = v14;
          }

          v14 = *(v14 + 8 * (*(v14 + 32) < a4));
        }

        while (v14);
        if (v16 != v13 && *(v16 + 32) <= a4)
        {
          result = sub_44E44(result, v16 + 40);
          *(v7 + 24) = 1;
          return result;
        }
      }
    }

    goto LABEL_23;
  }

  if (*(v9 + 136) != 1)
  {
LABEL_23:
    if (a3 == 1768776806)
    {
      *result = 0;
      *(result + 24) = 0;
    }

    else
    {
      v17 = sub_5544(21);
      if (*(v17 + 8))
      {
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v25, a3);
            v19 = v26;
            v20 = v25[0];
            sub_53E8(__p, off_6D1818[a4]);
            v21 = v25;
            if (v19 < 0)
            {
              v21 = v20;
            }

            if (v24 >= 0)
            {
              v22 = __p;
            }

            else
            {
              v22 = __p[0];
            }

            *buf = 136315906;
            v28 = "RoutingTypes.cpp";
            v29 = 1024;
            v30 = 2176;
            v31 = 2080;
            v32 = v21;
            v33 = 2080;
            v34 = v22;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: (%s, %s), Looking in default mode instead.", buf, 0x26u);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            if (v26 < 0)
            {
              operator delete(v25[0]);
            }
          }
        }
      }

      return sub_458CC(v7, a2, 1768776806, a4);
    }

    return result;
  }

  return sub_7E530(result, v9 + 112);
}

void sub_45B5C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

const __CFNumber *sub_45B7C(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_38;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v15 = Value != 0;
          if (Value)
          {
            LOBYTE(v16) = LOBYTE(valuePtr);
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = SLOBYTE(valuePtr) < 0 && v15;
          v18 = v17 << 63 >> 63;
          return (v16 | (v18 << 8));
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v12 = v11 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLOWORD(valuePtr);
          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_38:
          v12 = v10 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLODWORD(valuePtr);
LABEL_39:
          v19 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
          if (v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }

          goto LABEL_42;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_33;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
          v7 = v5 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v8 = valuePtr;
LABEL_34:
          if (v7)
          {
            v16 = 0;
          }

          else
          {
            v16 = v8;
          }

LABEL_42:
          v18 = v16 >> 8;
          break;
        default:
          v18 = 0;
          LOBYTE(v16) = 0;
          break;
      }

      return (v16 | (v18 << 8));
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return CFBooleanGetValue(v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_45E90(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1E2544(a2);
  }

  sub_189A00();
}

_BYTE *sub_45ED0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_27A4();
  v21 = (*(qword_6E94F8 + 16))();
  v5 = *(a2 + 40);
  v6 = (a2 + 48);
  if (v5 != (a2 + 48))
  {
    do
    {
      if (!v5[6])
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PortManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 156;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v7 = v5[5];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = v5[4];
          if (v10)
          {
            memset(buf, 0, sizeof(buf));
            sub_46980(buf, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
            v23 = *(a3 + 24);
            v24 = *(a3 + 32);
            v25 = *(a3 + 40);
            sub_44E44(v26, a3 + 48);
            v11 = *(a3 + 72);
            v27 = v11;
            if (*(a3 + 103) < 0)
            {
              sub_54A0(&__p, *(a3 + 80), *(a3 + 88));
              v11 = v27;
            }

            else
            {
              __p = *(a3 + 80);
              v29 = *(a3 + 96);
            }

            v27 = v11 & 0xFFFFFFFC;
            v12 = sub_46398(v10, buf);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p);
            }

            sub_477A0(v26[1]);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            if (v12)
            {
              v13 = *(v5[6] + 8);
              operator new();
            }
          }

          sub_1A8C0(v9);
        }
      }

      v14 = v5[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v5[2];
          v16 = *v15 == v5;
          v5 = v15;
        }

        while (!v16);
      }

      v5 = v15;
    }

    while (v15 != v6);
  }

  return sub_210C50(&v21);
}

void sub_461A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  sub_477A0(a21);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_1A8C0(v22);
  sub_210C50(&a13);
  sub_4E0BC(v21);
  _Unwind_Resume(a1);
}

const void **sub_46228(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_4625C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_469FC(result, a4);
  }

  return result;
}

void sub_462B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_462D0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_7009A8, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v3 = __cxa_guard_acquire(&qword_7009A8);
    a1 = v4;
    if (v3)
    {
      qword_700940 = 0;
      *algn_700948 = 0;
      qword_700950 = 0;
      strcpy(&dword_700958, "cwdv");
      byte_700960 = 0;
      dword_700968 = 3;
      qword_700980 = 0;
      qword_700978 = 0;
      qword_700970 = &qword_700978;
      dword_700988 = 44739242;
      qword_700998 = 0;
      unk_7009A0 = 0;
      qword_700990 = 0;
      __cxa_guard_release(&qword_7009A8);
      a1 = v4;
    }
  }

  return sub_46754(a1, &qword_700940);
}

uint64_t sub_46398(void *a1, uint64_t a2)
{
  if (sub_462D0(a2))
  {
    return 1;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a2;
  if (*a2 != v6)
  {
    while (*v7 != *(a1 + 36))
    {
      if (++v7 == v6)
      {
        return 0;
      }
    }

    if (v6 == v7)
    {
      return 0;
    }
  }

  if (qword_6E7C90 == a1[22])
  {
    v8 = qword_6E7C80;
    if (qword_6E7C80 == &unk_6E7C88)
    {
      goto LABEL_25;
    }

    v9 = a1[20];
    while (*(v8 + 28) == *(v9 + 7))
    {
      v10 = *(v8 + 8);
      v11 = v8;
      if (v10)
      {
        do
        {
          v8 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v8 = *(v11 + 16);
          v12 = *v8 == v11;
          v11 = v8;
        }

        while (!v12);
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
          v12 = *v14 == v9;
          v9 = v14;
        }

        while (!v12);
      }

      v9 = v14;
      if (v8 == &unk_6E7C88)
      {
        goto LABEL_25;
      }
    }
  }

  v15 = *(a2 + 24);
  if (v15 != 1986295651)
  {
    v20 = a1[21];
    if (!v20)
    {
      return 0;
    }

    v21 = a1 + 21;
    do
    {
      v22 = *(v20 + 28);
      v23 = v22 >= v15;
      v24 = v22 < v15;
      if (v23)
      {
        v21 = v20;
      }

      v20 = *(v20 + 8 * v24);
    }

    while (v20);
    if (v21 == a1 + 21 || v15 < *(v21 + 7))
    {
      return 0;
    }
  }

LABEL_25:
  v16 = *(a2 + 103);
  v17 = v16;
  v18 = *(a2 + 88);
  if ((v16 & 0x80u) == 0)
  {
    v19 = *(a2 + 103);
  }

  else
  {
    v19 = *(a2 + 88);
  }

  if (!v19)
  {
    goto LABEL_55;
  }

  if (*(a1 + 303) < 0)
  {
    sub_54A0(__p, a1[35], a1[36]);
    v16 = *(a2 + 103);
    v18 = *(a2 + 88);
    v17 = *(a2 + 103);
  }

  else
  {
    *__p = *(a1 + 35);
    v34 = a1[37];
  }

  if (v34 >= 0)
  {
    v25 = HIBYTE(v34);
  }

  else
  {
    v25 = __p[1];
  }

  if (v17 < 0)
  {
    v16 = v18;
  }

  if (v25 == v16 && (v34 >= 0 ? (v26 = __p) : (v26 = __p[0]), v17 >= 0 ? (v27 = (a2 + 80)) : (v27 = *(a2 + 80)), !memcmp(v26, v27, v25)))
  {
LABEL_55:
    v28 = *(a2 + 72);
    if ((v28 & 3) == (*(*a1 + 152))(a1) || (v29 = *(a2 + 72), ((v29 >> 2) & 3) == (*(*a1 + 160))(a1)) || (v30 = *(a2 + 72), v31 = *(a1 + 92), ((v30 >> 4) & 3) == (v31 & 1)) || v30 >> 6 == ((v31 >> 1) & 1) || ((v30 >> 8) & 3) == ((v31 >> 2) & 1) || ((v30 >> 10) & 3) == ((v31 >> 3) & 1) || ((v30 >> 12) & 3) == ((v31 >> 4) & 1) || v30 >> 14 == ((v31 >> 5) & 1) || (HIWORD(v30) & 3) == ((v31 >> 6) & 1) || ((v30 >> 18) & 3) == ((v31 >> 7) & 1) || ((v30 >> 20) & 3) == ((v31 >> 8) & 1) || ((v30 >> 22) & 3) == ((v31 >> 9) & 1) || *(a2 + 32) == 1 && !sub_84264(a1, *(a2 + 28)))
    {
      v4 = 0;
      if (!v19)
      {
        return v4;
      }
    }

    else
    {
      v4 = sub_4B8C4(a2 + 40, *(a1 + 37));
      if (!v19)
      {
        return v4;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_46734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_46754(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  v7 = *a2;
  if (v6 != *(a2 + 8) - v7 || memcmp(v4, v7, v6) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 == v10 && *(a1 + 32))
  {
    v9 = *(a1 + 28);
    v10 = *(a2 + 28);
  }

  if (v9 != v10 || *(a1 + 40) != *(a2 + 40) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v11 = *(a1 + 48);
  if (v11 != (a1 + 56))
  {
    v12 = *(a2 + 48);
    while (*(v11 + 7) == *(v12 + 7))
    {
      v13 = v11[1];
      v14 = v11;
      if (v13)
      {
        do
        {
          v11 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v11 = v14[2];
          v15 = *v11 == v14;
          v14 = v11;
        }

        while (!v15);
      }

      v16 = v12[1];
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
          v17 = v12[2];
          v15 = *v17 == v12;
          v12 = v17;
        }

        while (!v15);
      }

      v12 = v17;
      if (v11 == (a1 + 56))
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v18 = *(a1 + 103);
  if (v18 >= 0)
  {
    v19 = *(a1 + 103);
  }

  else
  {
    v19 = *(a1 + 88);
  }

  v20 = *(a2 + 103);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 88);
  }

  if (v19 != v20)
  {
    return 0;
  }

  v22 = (a2 + 80);
  if (v18 >= 0)
  {
    v23 = (a1 + 80);
  }

  else
  {
    v23 = *(a1 + 80);
  }

  v24 = *v22;
  if (v21 >= 0)
  {
    v25 = (a2 + 80);
  }

  else
  {
    v25 = *v22;
  }

  return memcmp(v23, v25, v19) == 0;
}

id sub_468EC(int a1, void *a2, char a3)
{
  if (a1 < 6 || (a3 & 1) != 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_46934(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_477A0(*(a1 + 56));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_46980(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_469FC(result, a4);
  }

  return result;
}

void sub_469E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_469FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1D7C28(a2);
  }

  sub_189A00();
}

void sub_46A74()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_46AC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

uint64_t *sub_46B44(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_46B9C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_46B9C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

std::__shared_weak_count *sub_46D38(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (!*v25 || !os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 136315394;
    v46 = "HP_HardwarePlugInInterface.cpp";
    v47 = 1024;
    v48 = 327;
    v27 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_ObjectGetPropertyData: no plug-in";
LABEL_44:
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x12u);
    goto LABEL_45;
  }

  if (!a3)
  {
    v28 = sub_5544(14);
    v26 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 136315394;
    v46 = "HP_HardwarePlugInInterface.cpp";
    v47 = 1024;
    v48 = 328;
    v27 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inAddress is NULL]: HP_HardwarePlugIn_ObjectGetPropertyData: no address";
    goto LABEL_44;
  }

  if (!a6)
  {
    v29 = sub_5544(14);
    v26 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "HP_HardwarePlugInInterface.cpp";
      v47 = 1024;
      v48 = 329;
      v27 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [ioDataSize is NULL]: HP_HardwarePlugIn_ObjectGetPropertyData: no info about the size of the property data";
      goto LABEL_44;
    }

LABEL_45:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  if (*a3 != 1651798132)
  {
    sub_2820();
    v43 = a2;
    sub_26C0(&unk_6FCDC8);
    v17 = sub_23B090(&xmmword_6FCEE8, a2);
    if (!v17)
    {
      v34 = sub_5544(14);
      v35 = *v34;
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "HP_ObjectManager.h";
        v47 = 1024;
        v48 = 56;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      *v36 = &off_6DDDD0;
      v36[2] = 560947818;
    }

    v18 = atomic_load((v17[3] + 312));
    if (v18)
    {
      v19 = v17[3];
      v15 = v17[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = 0;
      v19 = 0;
    }

    sub_3174(&unk_6FCDC8);
    if (v19)
    {
      sub_26C0(v19 + 24);
      operator new();
    }

    v21 = sub_5544(5);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v46 = "HP_ObjectManager.h";
      v47 = 1024;
      v48 = 66;
      v49 = 2048;
      v50 = v43;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }

    if (!v15)
    {
      return 0;
    }

    goto LABEL_26;
  }

  sub_2820();
  v44 = sub_5C838(&unk_6FCDC8);
  if ((v44 & 1) == 0)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "HP_ObjectManager.h";
      v47 = 1024;
      v48 = 98;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): TryExecuteSynchronized: unable to lock object map mutex", buf, 0x12u);
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    *v33 = &off_6DDDD0;
    v33[2] = 560947818;
  }

  v13 = sub_23B090(&xmmword_6FCEE8, a2);
  if (!v13)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "HP_ObjectManager.h";
      v47 = 1024;
      v48 = 101;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    *v39 = &off_6DDDD0;
    v39[2] = 560947818;
  }

  v14 = atomic_load((v13[3] + 312));
  if (v14)
  {
    v16 = v13[3];
    v15 = v13[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  if (v44 == 1)
  {
    sub_3174(&unk_6FCDC8);
  }

  if (v16)
  {
    if ((sub_5C838(v16 + 24) & 1) == 0)
    {
      v40 = sub_5544(14);
      v41 = *v40;
      if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "HP_ObjectManager.h";
        v47 = 1024;
        v48 = 126;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): TryExecuteSynchronized: unable to lock object mutex", buf, 0x12u);
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      *v42 = &off_6DDDD0;
      v42[2] = 560947818;
    }

    (*(**(v16 + 16) + 72))(*(v16 + 16), a3, a4, a5, a6, a7);
    sub_3174(v16 + 24);
  }

  else
  {
    v23 = sub_5544(5);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v46 = "HP_ObjectManager.h";
      v47 = 1024;
      v48 = 111;
      v49 = 2048;
      v50 = a2;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }
  }

  if (v15)
  {
LABEL_26:
    sub_1A8C0(v15);
    return 0;
  }

  return v15;
}

void sub_475AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_47634(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  if (a2)
  {
    sub_422418(va);
    sub_4650(va1);
    JUMPOUT(0x47680);
  }

  JUMPOUT(0x47624);
}

void sub_47674(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (!a11)
    {
      JUMPOUT(0x476B8);
    }

    JUMPOUT(0x476B4);
  }

  JUMPOUT(0x47624);
}

void sub_47690(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x4769CLL);
  }

  JUMPOUT(0x47624);
}

void sub_476C0(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x4700CLL);
  }

  JUMPOUT(0x47624);
}

void sub_476DC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x476E4);
  }

  JUMPOUT(0x47624);
}

uint64_t *sub_47714(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_49DA0(v5, v5 + 1, *(v4 + 7));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_477A0(void *a1)
{
  if (a1)
  {
    sub_477A0(*a1);
    sub_477A0(a1[1]);

    operator delete(a1);
  }
}

CFArrayRef sub_477F0(const void ***a1)
{
  sub_4788C(&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  v6 = sub_47904(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_47870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4788C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_49F7C(result, a2);
  }

  return result;
}

void sub_478E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef sub_47904(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, &kCFTypeArrayCallBacks);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return result;
}

void sub_47988(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_4A0BC(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_47A08(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1DB8DC(a2);
    }

    sub_189A00();
  }

  return result;
}

CFArrayRef sub_47A88(int *a1, int *a2)
{
  v3 = a1;
  if (a1 == a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    do
    {
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a2);
  }

  memset(v13, 0, sizeof(v13));
  sub_47A08(v13, v4);
  if (v3 != a2)
  {
    do
    {
      sub_EAD30(v13, v3 + 7);
      v9 = *(v3 + 1);
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
          v10 = *(v3 + 2);
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v3 = v10;
    }

    while (v10 != a2);
  }

  v11 = sub_477F0(v13);
  v14 = v13;
  sub_47988(&v14);
  return v11;
}

void sub_47B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_47988(&a12);
  _Unwind_Resume(a1);
}

const void **sub_47BA4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_47BD8(uint64_t a1)
{
  v2 = pthread_self();
  std::recursive_mutex::lock((a1 + 168));
  if (*(a1 + 232) == v2)
  {
    v3 = *(a1 + 240) + 1;
  }

  else
  {
    if (sub_2160(a1))
    {
      sub_4828((a1 + 248), v2);
      std::__shared_mutex_base::unlock_shared(a1);
    }

    std::recursive_mutex::unlock((a1 + 168));
    std::__shared_mutex_base::lock(a1);
    std::recursive_mutex::lock((a1 + 168));
    v3 = 1;
    *(a1 + 232) = v2;
  }

  *(a1 + 240) = v3;

  std::recursive_mutex::unlock((a1 + 168));
}

void sub_47C90(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 168));
  v2 = *(a1 + 240);
  if (v2 < 2)
  {
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    std::recursive_mutex::unlock((a1 + 168));

    std::__shared_mutex_base::unlock(a1);
  }

  else
  {
    *(a1 + 240) = v2 - 1;

    std::recursive_mutex::unlock((a1 + 168));
  }
}

BOOL sub_47D0C(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  v7 = CFDictionaryContainsKey(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7 != 0;
}

void sub_47DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

BOOL sub_47E08(const __CFDictionary *a1)
{
  v2 = CFStringCreateWithBytes(0, "route to builtinspeaker", 23, 0x8000100u, 0);
  cf = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = CFDictionaryContainsKey(a1, v2);
  CFRelease(cf);
  return v3 != 0;
}

void sub_47EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

BOOL sub_47EF0(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_47FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_20B45C(va);
  _Unwind_Resume(a1);
}

const UInt8 *sub_47FE0(const __CFDictionary *a1, const UInt8 *__s)
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

void sub_480A8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x48054);
}

void sub_480F4(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_11198(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t sub_4817C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_48204(result, a4);
  }

  return result;
}

void sub_481E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_11C50(&a9);
  _Unwind_Resume(a1);
}

void sub_48204(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1D8BB8(a2);
  }

  sub_189A00();
}

uint64_t sub_48254(uint64_t a1)
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

void sub_482B4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

char *sub_48304(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_54A0(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_48254(v9);
  return v4;
}

uint64_t sub_483C4(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  v6 = a3[1];
  while (2)
  {
    v7 = *a3;
    if (*(v5 + 23) < 0)
    {
      sub_54A0(v15, *v5, *(v5 + 8));
    }

    else
    {
      *v15 = *v5;
      v16 = *(v5 + 16);
    }

    if (v7 == v6)
    {
      goto LABEL_27;
    }

    do
    {
      if (!*v7)
      {
        goto LABEL_25;
      }

      sub_48540(__p, *(*v7 + 400));
      v8 = v18;
      if ((v18 & 0x80u) == 0)
      {
        v9 = v18;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = HIBYTE(v16);
      if (v16 < 0)
      {
        v10 = v15[1];
      }

      if (v9 != v10)
      {
        v13 = 0;
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(__p[0]);
        goto LABEL_24;
      }

      if ((v18 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v16 >= 0)
      {
        v12 = v15;
      }

      else
      {
        v12 = v15[0];
      }

      v13 = memcmp(v11, v12, v9) == 0;
      if (v8 < 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v13)
      {
        goto LABEL_27;
      }

LABEL_25:
      ++v7;
    }

    while (v7 != v6);
    v7 = v6;
LABEL_27:
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    v6 = a3[1];
    if (v7 == v6 || (result = *v7) == 0)
    {
      v5 += 24;
      if (v5 == a2)
      {
        return 0;
      }

      continue;
    }

    return result;
  }
}

void sub_48524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_48540(_BYTE *result, CFStringRef theString)
{
  v2 = result;
  if (theString && (v9 = 0, v10.length = CFStringGetLength(theString), v10.location = 0, result = CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0x7FFFFFFFLL, &v9), v9))
  {
    __chkstk_darwin(result);
    v6 = &v9 - ((v5 + 15) & 0x1FFFFFFF0);
    if ((v7 & 1) == 0)
    {
      v8 = v4;
      v9 = 0;
      v11.length = CFStringGetLength(theString);
      v11.location = 0;
      CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v6, v8, &v9);
      v6[v9] = 0;
    }

    return sub_53E8(v2, v6);
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  return result;
}

void sub_486AC(void *a1, uint64_t a2)
{
  sub_48908(a1, a2);
  if (a1[111] == a1[110])
  {
    return;
  }

  v4 = 1;
  v5 = sub_4CF4((a1 + 107), 1, 0);
  v6 = *(v5 + 192);
  if ((*(v6 + 448) & 1) == 0 && !*(v6 + 584) && !*(v6 + 672))
  {
    v7 = *(v6 + 1160);
    if (!v7 || (*(v7 + 104) & 1) == 0)
    {
      v4 = *(v6 + 1168) != 0;
    }
  }

  if (!v4)
  {
    return;
  }

  if (*(v5 + 8) != 1819304813)
  {
    return;
  }

  v8 = *(sub_4CF4((a1 + 107), 1, 0) + 192);
  if (*(v8 + 796) != 1)
  {
    return;
  }

  v9 = *(v8 + 736);
  if (qword_6EB708 != -1)
  {
    dispatch_once(&qword_6EB708, &stru_6C4FE0);
  }

  if (off_6EB728)
  {
    v10 = off_6EB728(v9, a2);
    if (!v10)
    {
      v11 = sub_5544(17);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = (*(a2 + 8) - *a2) >> 3;
        v20 = 136315906;
        v21 = "AggregateDevice_Common.cpp";
        v22 = 1024;
        v23 = 1600;
        v24 = 2048;
        v25 = v9;
        v26 = 2048;
        v27 = v13;
        v14 = "%25s:%-5d PlaybackDosimetry: updated reporter IDs for session %llu, # of IDs: %lu";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEBUG;
        v17 = 38;
LABEL_22:
        _os_log_impl(&dword_0, v15, v16, v14, &v20, v17);
        return;
      }

      return;
    }
  }

  else
  {
    v10 = 560033897;
  }

  v18 = sub_5544(17);
  v19 = *v18;
  if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315906;
    v21 = "AggregateDevice_Common.cpp";
    v22 = 1024;
    v23 = 1598;
    v24 = 2048;
    v25 = v9;
    v26 = 1024;
    LODWORD(v27) = v10;
    v14 = "%25s:%-5d PlaybackDosimetry: unable to update reporter IDs for session:%llu, err: %d";
    v15 = v19;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 34;
    goto LABEL_22;
  }
}

void sub_48908(void *a1, char **a2)
{
  v4 = a1[21];
  if (qword_6FCB80 != -1)
  {
    dispatch_once(&qword_6FCB80, &stru_6C1C18);
  }

  if (off_6FCBC0)
  {
    v5 = off_6FCBC0(v4, a2);
    if (!v5)
    {
      if (a1 + 18 != a2)
      {
        sub_48C94(a1 + 18, *a2, a2[1], (a2[1] - *a2) >> 3);
      }

      v6 = sub_5544(17);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v27 = "AggregateDevice.h";
        v28 = 1024;
        v29 = 741;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Current reporterIDs:", buf, 0x12u);
      }

      for (i = a1[18]; i != a1[19]; ++i)
      {
        v9 = sub_5544(17);
        v10 = *v9;
        if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          v11 = *i;
          *buf = 136315650;
          v27 = "AggregateDevice.h";
          v28 = 1024;
          v29 = 745;
          v30 = 2048;
          v31 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d reporterID: %ld", buf, 0x1Cu);
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    v5 = -1;
  }

  v12 = sub_5544(17);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v27 = "AggregateDevice.h";
    v28 = 1024;
    v29 = 750;
    v30 = 1024;
    LODWORD(v31) = v5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d updating reporter IDs", buf, 0x18u);
  }

LABEL_20:
  *&inAddress.mSelector = 0x676C6F6261697273;
  inAddress.mElement = 0;
  v14 = *(a2 + 2) - *a2;
  if (*a2)
  {
    v15 = *a2;
  }

  else
  {
    v15 = &v25;
  }

  v16 = (*(*a1 + 120))(a1);
  v17 = AudioObjectSetPropertyData(v16, &inAddress, 0, 0, v14 & 0xFFFFFFF8, v15);
  if (v17)
  {
    v18 = v17;
    v19 = sub_5544(17);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v18);
        if (v23 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136315650;
        v27 = "AggregateDevice.cpp";
        v28 = 1024;
        v29 = 778;
        v30 = 2080;
        v31 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d HAL returned an error for kAudioDevicePropertyIssueReporterIDs: '%s'", buf, 0x1Cu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void *sub_48C94(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_45E90(v7, v11);
    }

    sub_189A00();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t sub_48DC8()
{
  if ((atomic_load_explicit(&qword_6E85E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E85E0))
  {
    byte_6E85D8 = sub_28AB28();
    __cxa_guard_release(&qword_6E85E0);
  }

  if (byte_6E85D8)
  {
    return 2;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = sub_48EDC();
    if (v1)
    {
      return 2;
    }

    device_class = caulk::product::get_device_class(v1);
    if (device_class == 1)
    {
      if ((sub_48EDC() & 1) == 0 && (!MGGetBoolAnswer() || (MGGetBoolAnswer() & 1) == 0))
      {
        return _os_feature_enabled_impl();
      }

      return 2;
    }

    if (caulk::product::get_device_class(device_class) == 3)
    {
      v3 = sub_DD858();
      if (sub_1192CC(v3) == 3)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_48EDC()
{
  if ((atomic_load_explicit(&qword_6E9C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C28))
  {
    byte_6E9C20 = sub_30F5B8();
    __cxa_guard_release(&qword_6E9C28);
  }

  return byte_6E9C20;
}

_BYTE *sub_48F50(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

BOOL sub_48FAC(uint64_t a1, int a2)
{
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
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_SessionManager.cpp";
    v16 = 1024;
    v17 = 80;
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating session object: session id = %u", buf, 0x18u);
  }

  v10 = *(*(a1 + 8) + 8);
  if (!AudioObjectCreate())
  {
    v14 = *(a1 + 8);
    operator new();
  }

  v11 = sub_5544(14);
  v12 = *v11;
  if (*v11)
  {
    result = os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    *&buf[4] = "VirtualAudio_SessionManager.cpp";
    v16 = 1024;
    v17 = 89;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theResult): error creating virtual audio session object", buf, 0x12u);
  }

  return 0;
}

uint64_t sub_495C8(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = off_6D37F0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  if (a2)
  {
    sub_2820();
    sub_49670();
  }

  return result;
}

void sub_49644(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_49B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_20B704(1, v10);
  sub_1A8C0(v9);
  sub_216C10(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49BE8(uint64_t a1)
{
  v2 = std::__shared_mutex_base::__shared_mutex_base(a1);
  std::recursive_mutex::recursive_mutex(&v2[1]);
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  return a1;
}

void *sub_49C48(void *a1)
{
  *a1 = 0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    operator new();
  }

  return a1;
}

CFNumberRef sub_49CF4(CFNumberRef *a1, int a2)
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

uint64_t *sub_49DA0(void *a1, uint64_t *a2, unsigned int a3)
{
  v3 = a2;
  v4 = a1 + 1;
  if (a1 + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 28);
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return v3;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 7) <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 28);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v3 = *v9;
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return v3;
}

void sub_49F7C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1D5F64(a2);
  }

  sub_189A00();
}

void sub_49FBC(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      sub_4A0BC(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t sub_4A06C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_4A0BC(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_4A0BC(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void *sub_4A0DC(const __CFDictionary *a1, char *__s)
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

void sub_4A190(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x4A140);
}

void sub_4A1E0(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_4A0DC(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t sub_4A268(const __CFDictionary **a1, const __CFString *a2)
{
  v4 = *a1;
  if (v4 && sub_4A3D0(v4, a2))
  {
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    sub_27CA10(&cf, *a1, a2);
    v6 = cf;
    if (!cf)
    {
      goto LABEL_13;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFNumberGetTypeID())
    {
      v8 = sub_4A8F8(v6);
      v9 = v8;
      v10 = 0;
      v2 = v8 >> 8;
    }

    else
    {
      v12 = CFGetTypeID(v6);
      if (v12 == CFBooleanGetTypeID())
      {
        v9 = sub_27CA94(v6);
        v2 = 0;
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 1;
      }
    }

    CFRelease(v6);
    if (!v10)
    {
      v11 = 0x100000000;
    }

    else
    {
LABEL_13:
      v11 = 0;
      v9 = 0;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  return v11 | v9 | (v2 << 8);
}

void sub_4A394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D5FE0(va);
  _Unwind_Resume(a1);
}

BOOL sub_4A3D0(const __CFDictionary *a1, CFStringRef a2)
{
  v2 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v2->info;
    if ((data_high & 0x80u) == 0)
    {
      v6 = data_high;
    }

    else
    {
      v6 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  v8 = CFDictionaryContainsKey(a1, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8 != 0;
}

void sub_4A4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

const void *sub_4A4DC(const __CFDictionary *a1, char *__s)
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

void sub_4A590(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x4A540);
}

void sub_4A5E0(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_4A4DC(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

const void *sub_4A668(const __CFDictionary *a1, char *__s)
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

void sub_4A71C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x4A6CCLL);
}

void sub_4A76C(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_4A668(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

const void *sub_4A7F4(const __CFDictionary *a1, char *__s)
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

void sub_4A8A8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x4A858);
}

uint64_t sub_4A8F8(const __CFNumber *a1)
{
  result = sub_113A0(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  return result;
}

uint64_t sub_4A960(const __CFDictionary *a1, char *a2)
{
  v2 = sub_4A4DC(a1, a2);
  if (v2)
  {
    LOWORD(v2) = sub_11DA8(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

const void *sub_4A994(const __CFDictionary *a1, char *__s)
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

void sub_4AA48(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x4A9F8);
}

void sub_4AA98(_BYTE *a1, const __CFDictionary *a2)
{
  v3 = sub_4A668(a2, "initiation context");
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  CFRetain(v3);
  v5 = CFGetTypeID(v4);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
LABEL_5:
    v6 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v4;
  v6 = 1;
LABEL_6:
  a1[8] = v6;
}

void sub_4AB28(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v6 = sub_4A0DC(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFDictionaryGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

uint64_t **sub_4ABC8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v19 = result;
    v20 = v9;
    v21 = v9;
    if (v9)
    {
      v10 = sub_1658B4(v9);
      v20 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 7);
          *(v9 + 28) = v13;
          v14 = *v8;
          v15 = v5 + 1;
          v16 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v15 = v14;
                if (v13 >= *(v14 + 7))
                {
                  break;
                }

                v14 = *v14;
                v16 = v15;
                if (!*v15)
                {
                  goto LABEL_14;
                }
              }

              v14 = v14[1];
            }

            while (v14);
            v16 = v15 + 1;
          }

LABEL_14:
          sub_46B44(v5, v15, v16, v9);
          if (v12)
          {
            v10 = sub_1658B4(v12);
          }

          else
          {
            v10 = 0;
          }

          v17 = v11[1];
          if (v17)
          {
            do
            {
              a2 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v18 = *a2 == v11;
              v11 = a2;
            }

            while (!v18);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v20 = v10;
        v21 = v12;
      }
    }

    result = sub_165908(&v19);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t sub_4ADC8(const __CFDictionary *a1, char *a2)
{
  v2 = sub_4A668(a1, a2);
  if (v2)
  {
    LOWORD(v2) = sub_11DA8(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void sub_4ADFC(_BYTE *a1, const __CFDictionary *a2)
{
  v3 = sub_1129C(a2, "camera parameters");
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  CFRetain(v3);
  v5 = CFGetTypeID(v4);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
LABEL_5:
    v6 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v4;
  v6 = 1;
LABEL_6:
  a1[8] = v6;
}

uint64_t sub_4AE8C(uint64_t a1)
{
  if (*(a1 + 792) == 1)
  {
    sub_76304((a1 + 768));
  }

  if (*(a1 + 760) == 1)
  {
    v2 = *(a1 + 736);
    if (v2)
    {
      *(a1 + 744) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 728);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 712);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 688);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(a1 + 672) == 1)
  {
    v6 = *(a1 + 664);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 632);
  if (v7)
  {
    *(a1 + 640) = v7;
    operator delete(v7);
  }

  if (*(a1 + 624) == 1)
  {
    v8 = *(a1 + 616);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  sub_477A0(*(a1 + 600));
  sub_477A0(*(a1 + 576));
  sub_477A0(*(a1 + 552));
  sub_477A0(*(a1 + 528));
  sub_477A0(*(a1 + 504));
  sub_477A0(*(a1 + 480));

  return sub_4AF90(a1);
}

uint64_t sub_4AF90(uint64_t a1)
{
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 416) == 1 && *(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  sub_4B064(a1 + 336);
  sub_4B064(a1 + 296);
  sub_4B064(a1 + 256);
  v4 = (a1 + 232);
  sub_11C50(&v4);
  v4 = (a1 + 208);
  sub_11C50(&v4);
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v2 = *(a1 + 144);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_477A0(*(a1 + 120));
  sub_477A0(*(a1 + 96));
  sub_4B14C(*(a1 + 72));
  sub_4B0F4(*(a1 + 48));
  sub_4B0F4(*(a1 + 24));
  return a1;
}

uint64_t sub_4B064(uint64_t a1)
{
  sub_4B0A0(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_4B0A0(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      sub_11C50(&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_4B0F4(void *a1)
{
  if (a1)
  {
    sub_4B0F4(*a1);
    sub_4B0F4(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void sub_4B14C(void *a1)
{
  if (a1)
  {
    sub_4B14C(*a1);
    sub_4B14C(a1[1]);
    sub_4B0F4(a1[6]);

    operator delete(a1);
  }
}

uint64_t sub_4B1A0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = HIDWORD(a2);
  if (sub_4B8C4(a1 + 24, SHIDWORD(a2)))
  {
    sub_4B938();
    v5 = (&dword_0 + 1);
    if (v2 > 1668313714)
    {
      if (v2 > 1668576376)
      {
        if (v2 != 1668576377 && v2 != 1668703084)
        {
          return v5;
        }

        goto LABEL_39;
      }

      if (v2 == 1668313715)
      {
LABEL_23:
        if (v4 > 1919776354)
        {
          if (v4 > 1987081832)
          {
            if (v4 == 1987081833)
            {
              goto LABEL_39;
            }

            v13 = 30319;
          }

          else
          {
            if (v4 == 1919776355)
            {
              goto LABEL_39;
            }

            v13 = 26467;
          }

          v12 = v13 | 0x76700000;
        }

        else
        {
          if (v4 <= 1768779618)
          {
            if (v4 != 1735222132)
            {
              v12 = 1768057203;
              goto LABEL_38;
            }

LABEL_39:
            v14 = qword_6EAD28;
            if (qword_6EAD28 == qword_6EAD30)
            {
              return 1;
            }

            while (1)
            {
              if (*(a1 + 8) != a1)
              {
                v15 = *v14;
                v16 = *(a1 + 8);
                do
                {
                  v17 = *(v16 + 16) == v15 || *(v16 + 20) == v15;
                  v18 = v17;
                  if (v17)
                  {
                    break;
                  }

                  v16 = *(v16 + 8);
                }

                while (v16 != a1);
                if (v18)
                {
                  break;
                }
              }

              if (++v14 == qword_6EAD30)
              {
                return 1;
              }
            }

            v19 = *sub_8703C();
            if (v5)
            {
              v20 = (*(v19 + 104))();
            }

            else
            {
              v20 = (*(v19 + 112))();
            }

            v21 = *(a1 + 56);
            v22 = *(a1 + 64);
            v23 = (a1 + 72);
            if (v22 != (a1 + 72))
            {
              while (*(v22 + 7) != v20)
              {
                v24 = v22[1];
                if (v24)
                {
                  do
                  {
                    v25 = v24;
                    v24 = *v24;
                  }

                  while (v24);
                }

                else
                {
                  do
                  {
                    v25 = v22[2];
                    v17 = *v25 == v22;
                    v22 = v25;
                  }

                  while (!v17);
                }

                v22 = v25;
                if (v25 == v23)
                {
                  if (v21 == 3)
                  {
                    return 1;
                  }

                  goto LABEL_67;
                }
              }
            }

            if ((v21 != 3) != (v22 == v23))
            {
              return 1;
            }

LABEL_67:
            v26 = sub_5544(8);
            if ((*(v26 + 8) & 1) == 0)
            {
              return 0;
            }

            v5 = *v26;
            if (*v26)
            {
              if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
              {
                sub_3FEB1C(&v30, a1);
                if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &v30;
                }

                else
                {
                  v27 = v30.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                v32 = "RouteUtilities.cpp";
                v33 = 1024;
                v34 = 881;
                v35 = 2080;
                v36 = v27;
                _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d System settings disallow BTLE ports in abstract route %s.", buf, 0x1Cu);
LABEL_74:
                if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v30.__r_.__value_.__l.__data_);
                }

                return 0;
              }

              return 0;
            }

            return v5;
          }

          if (v4 == 1768779619)
          {
            goto LABEL_39;
          }

          v12 = 1768781411;
        }

LABEL_38:
        if (v4 != v12)
        {
          return v5;
        }

        goto LABEL_39;
      }

      if (v2 != 1668505974)
      {
        return v5;
      }
    }

    else
    {
      if (v2 > 1668309361)
      {
        if (v2 == 1668309362)
        {
          goto LABEL_23;
        }

        v6 = 29250;
        goto LABEL_22;
      }

      if (v2 != 1668182896)
      {
        v6 = 17011;
LABEL_22:
        if (v2 != (v6 | 0x63700000))
        {
          return v5;
        }

        goto LABEL_23;
      }
    }

    LODWORD(v5) = 0;
    goto LABEL_39;
  }

  v7 = sub_5544(8);
  if ((*(v7 + 8) & 1) == 0)
  {
    return 0;
  }

  v5 = *v7;
  if (*v7)
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(&v30, v4);
      v8 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      v9 = v30.__r_.__value_.__r.__words[0];
      sub_3FEB1C(&__p, a1);
      v10 = &v30;
      if (v8 < 0)
      {
        v10 = v9;
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
      v32 = "RouteUtilities.cpp";
      v33 = 1024;
      v34 = 868;
      v35 = 2080;
      v36 = v10;
      v37 = 2080;
      v38 = p_p;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mode %s is disallowed in abstract route %s.", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_74;
    }

    return 0;
  }

  return v5;
}

void sub_4B63C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B65C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  result = sub_4B1A0(a2, *(a1 + 12));
  if (result)
  {
    if (*(a1 + 8) == 1)
    {
      v6 = *a1 + 8;
      v7 = **a1;
      if (v7 != v6)
      {
        while (1)
        {
          if (*(a2 + 8) != a2)
          {
            v8 = *(v7 + 7);
            v9 = *(a2 + 8);
            do
            {
              v10 = *(v9 + 16) == v8 || *(v9 + 20) == v8;
              v11 = v10;
              if (v10)
              {
                break;
              }

              v9 = *(v9 + 8);
            }

            while (v9 != a2);
            if (v11)
            {
              break;
            }
          }

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
            do
            {
              v13 = v7[2];
              v10 = *v13 == v7;
              v7 = v13;
            }

            while (!v10);
          }

          v7 = v13;
          if (v13 == v6)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      if (!*(a2 + 16))
      {
        v25 = sub_5544(8);
        v26 = *v25;
        if (*v25)
        {
          result = os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v27 = 136315394;
          v28 = "RouteUtilities.h";
          v29 = 1024;
          v30 = 718;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No connections in connection list?", &v27, 0x12u);
        }

        return 0;
      }

      v14 = *a1;
      if (*(*a1 + 16))
      {
        v15 = *(a2 + 8);
        if (v15 == a2)
        {
          return 0;
        }

        v18 = *v14;
        v16 = v14 + 1;
        v17 = v18;
        while (1)
        {
          v19 = v17;
          if (v17 != v16)
          {
            v20 = v17;
            while (*(v20 + 7) != *(v15 + 16))
            {
              v21 = v20[1];
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
                  v22 = v20[2];
                  v10 = *v22 == v20;
                  v20 = v22;
                }

                while (!v10);
              }

              v20 = v22;
              if (v22 == v16)
              {
                goto LABEL_37;
              }
            }

            if (v20 != v16)
            {
              goto LABEL_47;
            }

LABEL_37:
            v19 = v17;
            while (*(v19 + 7) != *(v15 + 20))
            {
              v23 = v19[1];
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
                  v24 = v19[2];
                  v10 = *v24 == v19;
                  v19 = v24;
                }

                while (!v10);
              }

              v19 = v24;
              if (v24 == v16)
              {
                return 1;
              }
            }
          }

          if (v19 == v16)
          {
            break;
          }

LABEL_47:
          result = 0;
          v15 = *(v15 + 8);
          if (v15 == a2)
          {
            return result;
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_4B8C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    while (*(v2 + 7) != a2)
    {
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
      if (v5 == v3)
      {
        v2 = (a1 + 16);
        return (*a1 != 3) ^ (v2 == v3);
      }
    }
  }

  return (*a1 != 3) ^ (v2 == v3);
}

void sub_4B938()
{
  if ((atomic_load_explicit(&qword_6EAD40, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6EAD40))
    {
      v0 = xmmword_517310;
      qword_6EAD30 = 0;
      unk_6EAD38 = 0;
      qword_6EAD28 = 0;
      sub_4625C(&qword_6EAD28, &v0, &v1, 4uLL);
      __cxa_guard_release(&qword_6EAD40);
    }
  }
}

void *sub_4BA00(void *a1, unsigned int *a2, uint64_t a3)
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
      sub_49DA0(a1, v4, *a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

const void **sub_4BA7C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_4BAB8(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v17 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_21:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v18 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_21;
  }

  v8 = *a2;
  if (*a2 == 1937204590 || v8 == 1986814563)
  {
    return 4;
  }

  if (v8 != 1986164323)
  {
    sub_24E33C(a1, a2, a3, a4);
  }

  return 0;
}

void sub_4BDB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v33 = *a2;
      v37 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v34 = *a2;
      v38 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 561211770;
  }

  if (!a6)
  {
    v28 = sub_5544(14);
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v35 = *a2;
      v39 = *(a2 + 2);
      sub_22CE0(__p);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = &off_6DDDD0;
    v29[2] = 561211770;
  }

  v13 = *a2;
  if (*a2 == 1986814563)
  {
    v14 = *a5;
    if (v14 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v31 = sub_5544(14);
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v40 = *(a2 + 2);
        sub_22CE0(__p);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = &off_6DDDD0;
      v32[2] = 561211770;
    }

    v15 = sub_441880(*(a1 + 192), *(a1 + 200));
    strcpy(buf, "#sVCptuo");
    buf[9] = 0;
    v43 = 0;
    v16 = sub_59410(v15);
    v18 = v16;
    if (v16 || (v17 & 1) == 0)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      *v30 = &off_6DDDD0;
      v30[2] = v18;
    }

    v19 = fabsf(*(&v16 + 1));
    v20 = 1.0;
    if (v19 >= 1.0)
    {
      v20 = v19;
    }

    v21 = fabsf(v20 * 0.00000011921);
    v22 = 0.0;
    if (v19 > v21)
    {
      v23 = log10f(*(&v16 + 1));
      v22 = sub_E9780(a1 + 592, v23 * 20.0);
    }

    *a6 = v22;
  }

  else if (v13 != 1986164323)
  {
    if (v13 == 1937204590)
    {
      *a6 = sub_45168();
    }

    else
    {

      sub_24DFD8(a1, a2, a3, a4, v12, a6);
    }
  }
}

void sub_4C4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4C4CC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 16);
    if (*(result + 92) == 1)
    {
      return (*(*a2 + 384))(a2, v2, result + 24, *(result + 88));
    }

    else
    {
      return (*(*a2 + 368))(a2, v2);
    }
  }

  return result;
}

uint64_t sub_4C554(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  for (i = *(v4 + 8); ; i += 8)
  {
    if (i == *(v4 + 16))
    {
      goto LABEL_9;
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
LABEL_9:
    result = *(a1 + 248);
    v9 = *(result + 8);
    v10 = *(result + 16);
    if (v9 == v10)
    {
      v12 = 0;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      while (1)
      {
        v11 = *v9;
        if (*v9 == a2)
        {
          break;
        }

        if (*(v11 + 8) == a2)
        {
          goto LABEL_17;
        }

        if (++v9 == v10)
        {
          v11 = 0;
          goto LABEL_17;
        }
      }

      v11 = a2;
LABEL_17:
      v12 = v11 != 0;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    if (!v12)
    {
      return result;
    }

LABEL_19:
    sub_4C9A4(result, a2);
    sub_5064C(a1);
    v13 = **(a1 + 872);
    if (a2)
    {
      result = (*(v13 + 480))();
      v14 = *(*(a1 + 248) + 112);
    }

    else
    {
      result = (*(v13 + 472))();
      v14 = *(*(a1 + 248) + 116);
    }

    if (v14 == 1 && (result & 1) == 0)
    {
      return (*(*a1 + 576))(a1, a2 == 0);
    }

    return result;
  }

LABEL_7:
  sub_212A14(v4, a2);
  sub_5064C(a1);
  v6 = **(a1 + 872);
  if (a2)
  {
    result = (*(v6 + 480))();
    v8 = *(*(a1 + 248) + 112);
  }

  else
  {
    result = (*(v6 + 472))();
    v8 = *(*(a1 + 248) + 116);
  }

  if (v8 == 1 && (result & 1) == 0)
  {
    return (*(*a1 + 576))(a1, a2 == 0);
  }

  return result;
}

void sub_4C9A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    for (i = *(a1 + 8); i != *(a1 + 16); ++i)
    {
      v4 = *i;
      if (*i == a2 || *(v4 + 8) == a2)
      {
        if ((*(v4 + 54) & 1) == 0)
        {
          *(v4 + 54) = 1;
          *(v4 + 56) = 0u;
          *(v4 + 72) = 0u;
          *(v4 + 88) = 0u;
          *(v4 + 104) = 0u;
          *(v4 + 120) = 0;
          ++*(a1 + 112);
          sub_55360(a1, v4);

          sub_5540C(a1);
        }

        return;
      }
    }
  }

  else
  {
    ++*(a1 + 116);
  }
}

uint64_t sub_4CA64(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HP_HardwarePlugInInterface.cpp";
      v30 = 1024;
      *v31 = 589;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [inSelf is NULL]: HP_HardwarePlugIn_DeviceStart: no plug-in", buf, 0x12u);
    }

    v22 = 1852797029;
LABEL_36:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v22;
  }

  sub_2820();
  v5 = sub_3D90(a2);
  v6 = v5;
  if (!v5 || ((v7 = v5[3], v7 != 1633773415) ? (v8 = v7 == 1633969526) : (v8 = 1), !v8))
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_HardwarePlugInInterface.cpp";
        v30 = 1024;
        *v31 = 593;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: HP_HardwarePlugIn_DeviceStart: no device with given ID", buf, 0x12u);
      }
    }

    v22 = 560227702;
    goto LABEL_36;
  }

  (*(*v5 + 112))(__p, v5);
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_StartIOProc", 0xEuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v9 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        v11 = __p;
        if (v28 < 0)
        {
          v11 = __p[0];
        }

        *buf = 134218242;
        *&buf[4] = a3;
        v30 = 2080;
        *v31 = v11;
        _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VA_StartIOProc", "Start IOProc %p on VAD '%s'", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  sub_4D27C(&v26, v9);
  v12 = sub_5544(5);
  v13 = sub_5544(32);
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
      goto LABEL_24;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

LABEL_24:
  v17 = *v12;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = __p;
    if (v28 < 0)
    {
      v18 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "HP_HardwarePlugInInterface.cpp";
    v30 = 1024;
    *v31 = 598;
    *&v31[4] = 2048;
    *&v31[6] = a3;
    v32 = 2080;
    v33 = v18;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client request to start IO proc ID %p on VAD: '%s'.", buf, 0x26u);
  }

  (*(*v6 + 360))(v6, a3);
  sub_6A684(&v26);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void *sub_4D27C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = sub_5544(43);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315650;
        v7 = "SignpostUtilities.h";
        v8 = 1024;
        v9 = 114;
        v10 = 2080;
        v11 = "kStartIOProc";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v6, 0x1Cu);
      }
    }
  }

  return a1;
}

void sub_4D360(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 384);
  kdebug_trace();
  sub_4D3E8(a1, a2);
}

void sub_4D3E8(uint64_t a1, uint64_t a2)
{
  if (!a2 || (sub_552D0(a1, a2) & 1) != 0)
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
      v8 = 1135;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): IOProc wasn't previously added", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 1852797029;
}

void sub_4D610(uint64_t a1, uint64_t *a2)
{
  if ((*(*a1 + 272))(a1))
  {
    sub_2820();
    v30 = *(a1 + 8);
    sub_26C0(&unk_6FCDC8);
    v4 = sub_23B090(&xmmword_6FCEE8, v30);
    if (!v4)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "HP_ObjectManager.h";
        v32 = 1024;
        v33 = 56;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 560947818;
    }

    v5 = atomic_load((v4[3] + 312));
    if (v5)
    {
      v7 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    sub_3174(&unk_6FCDC8);
    if (v7)
    {
      sub_26C0(v7 + 24);
      operator new();
    }

    v17 = sub_5544(5);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "HP_ObjectManager.h";
      v32 = 1024;
      v33 = 66;
      v34 = 2048;
      v35 = v30;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }

    if (v6)
    {
      sub_1A8C0(v6);
    }
  }

  else
  {
    v9 = *(a1 + 224);
    v8 = *(a1 + 232);
    v10 = *(a1 + 240);
    if (v8 >= v10)
    {
      v14 = ((v8 - v9) >> 3) + 1;
      if (!(v14 >> 61))
      {
        v15 = v10 - v9;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_1DC9A4(v16);
        }

        v36 = a1 + 224;
        sub_1DC9A4(1uLL);
      }

      sub_189A00();
    }

    if (v9 == v8)
    {
      v19 = *a2;
      *a2 = 0;
      *v8 = v19;
      *(a1 + 232) = v8 + 8;
    }

    else
    {
      v11 = v8 - 8;
      if (v8 < 8)
      {
        v13 = *(a1 + 232);
      }

      else
      {
        v12 = *v11;
        *v11 = 0;
        *v8 = v12;
        v13 = v8 + 8;
      }

      *(a1 + 232) = v13;
      if (v8 != v9 + 8)
      {
        v20 = v8 - v9;
        v21 = v9 - 16;
        do
        {
          v22 = *&v21[v20];
          *&v21[v20] = 0;
          v23 = *v11;
          *v11 = v22;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          v11 -= 8;
          v20 -= 8;
        }

        while (v20 != 8);
      }

      v24 = *a2;
      *a2 = 0;
      v25 = *v9;
      *v9 = v24;
      if (v25)
      {
        v26 = *(*v25 + 8);

        v26();
      }
    }
  }
}

uint64_t sub_4DDCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && ((v5 = *(a2 + 8), v5 != 1047097200) ? (v6 = v5 == 1013868911) : (v6 = 1), v6))
  {
    if (!sub_42A43C(a1 + 464))
    {
      v9 = *sub_5544(14);
      if (v9)
      {
        log = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v14 = "IOMonitor.h";
          v15 = 1024;
          v16 = 85;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not take io monitor core lock in the start thread.", buf, 0x12u);
        }
      }
    }

    if (sub_42A43C(a1 + 672))
    {
      v7 = 2;
    }

    else
    {
      v10 = sub_5544(14);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "IOMonitor.h";
        v15 = 1024;
        v16 = 88;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Could not take mIOThreadCallingNormalMutex in the start thread.", buf, 0x12u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = sub_93D0C(a1 + 464);
  }

  *a3 = v7;
  return 1;
}

BOOL sub_4DF80(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = pthread_self();
    return pthread_equal(v1, v2) != 0;
  }

  return result;
}

void sub_4DFC0(std::mutex *a1)
{
  std::mutex::lock(a1 + 5);

  std::mutex::unlock(a1 + 5);
}

CFArrayRef sub_4DFFC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 == a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    do
    {
      ++v4;
      v5 = *(v5 + 8);
    }

    while (v5 != a2);
  }

  memset(v8, 0, sizeof(v8));
  sub_47A08(v8, v4);
  while (v3 != a2)
  {
    sub_EAD30(v8, (v3 + 16));
    v3 = *(v3 + 8);
  }

  v6 = sub_477F0(v8);
  v9 = v8;
  sub_47988(&v9);
  return v6;
}

void sub_4E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_47988(&a12);
  _Unwind_Resume(a1);
}

void *sub_4E0BC(void *result)
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
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t *sub_4E120(unsigned int *a1)
{
  v31[0] = a1;
  sub_4E890();
  v2 = *a1;
  v3 = *(a1 + 4);
  dispatch_assert_queue_V2(qword_709738);
  v31[1] = &unk_709740;
  v32 = 1;
  sub_26C0(&unk_709740);
  v4 = qword_709860;
  if (qword_709860 == &qword_709868)
  {
LABEL_13:
    v9 = sub_5544(44);
    if (*(v9 + 8))
    {
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          sub_1DB6A0(&__p, *(a1 + 1), *(a1 + 2));
          v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          v37 = "AudioObjectPropertyListenerManager.cpp";
          v38 = 1024;
          v39 = 400;
          v40 = 2048;
          v41 = v2;
          v42 = 2080;
          v43 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Dispatching listener callbacks for device ID %lu for properties %s.", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    v12 = sub_52B64(&qword_709738, v2);
    if (v12)
    {
      sub_4E890();
      dispatch_assert_queue_V2(qword_709738);
      v13 = *(v12 + 2);
      if (!v13)
      {
        goto LABEL_30;
      }

      v14 = v12 + 4;
      do
      {
        v15 = *(v13 + 32);
        v16 = v15 >= v3;
        v17 = v15 < v3;
        if (v16)
        {
          v14 = v13;
        }

        v13 = *(v13 + 8 * v17);
      }

      while (v13);
      if (v14 == v12 + 4 || *(v14 + 4) > v3)
      {
LABEL_30:
        v18 = sub_5544(44);
        if ((*(v18 + 8) & 1) == 0)
        {
          goto LABEL_56;
        }

        v19 = *v18;
        if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_56;
        }

        v20 = *v12;
        sub_1DB6A0(&__p, *(a1 + 1), *(a1 + 2));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        v37 = "AudioObjectPropertyListenerManager.cpp";
        v38 = 1024;
        v39 = 111;
        v40 = 2048;
        v41 = v20;
        v42 = 2080;
        v43 = p_p;
        v22 = "%25s:%-5d Listener key not found, did not dispatch callback for device ID %lu properties %s.";
        goto LABEL_44;
      }

      v25 = sub_5544(44);
      if (*(v25 + 8))
      {
        v26 = *v25;
        if (*v25)
        {
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
          {
            v27 = *v12;
            sub_1DB6A0(&__p, *(a1 + 1), *(a1 + 2));
            v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315906;
            v37 = "AudioObjectPropertyListenerManager.cpp";
            v38 = 1024;
            v39 = 98;
            v40 = 2048;
            v41 = v27;
            v42 = 2080;
            v43 = v28;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Dispatching listener callback for device ID %lu properties %s.", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      sub_4E890();
      sub_255810(&v33, &unk_709740);
      v29 = *(v14 + 6);
      (*(v14 + 5))(*v12, -1431655765 * ((*(a1 + 2) - *(a1 + 1)) >> 2));
      if (v34 == 1)
      {
        sub_26C0(v33);
      }
    }
  }

  else
  {
    while (1)
    {
      if (*(v4 + 32) == v2)
      {
        v5 = *(v4 + 40);
        v6 = !v5 || v5 == v3;
        if (v6)
        {
          break;
        }
      }

      v7 = *(v4 + 8);
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
          v8 = *(v4 + 16);
          v6 = *v8 == v4;
          v4 = v8;
        }

        while (!v6);
      }

      v4 = v8;
      if (v8 == &qword_709868)
      {
        goto LABEL_13;
      }
    }

    v23 = sub_5544(44);
    if (*(v23 + 8))
    {
      v19 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1DB6A0(&__p, *(a1 + 1), *(a1 + 2));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          v37 = "AudioObjectPropertyListenerManager.cpp";
          v38 = 1024;
          v39 = 395;
          v40 = 2048;
          v41 = v2;
          v42 = 2080;
          v43 = v24;
          v22 = "%25s:%-5d Listener expired for device ID %lu. Not dispatching listener callbacks for properties %s.";
LABEL_44:
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, v22, buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

LABEL_56:
  sub_3174(&unk_709740);
  return sub_53AC0(v31);
}

void sub_4E5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_2185D4(&a10);
  sub_53AC0(&a9);
  _Unwind_Resume(a1);
}

void sub_4E890()
{
  if ((atomic_load_explicit(&qword_709890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709890))
  {
    sub_34DEDC();

    __cxa_guard_release(&qword_709890);
  }
}

uint64_t sub_4E90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 656;
  v19 = a1 + 656;
  v20 = 1;
  sub_26C0(a1 + 656);
  if ((*(a1 + 616) & 1) == 0)
  {
    v5 = sub_5544(23);
    if (*(v5 + 8))
    {
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v25 = "VirtualStream.cpp";
          v26 = 1024;
          v27 = 793;
          v28 = 2048;
          v29 = a1;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d VirtualStream at %p is being queried for its current formats after it has already been flagged as untrustworthy -- any resulting errors will throw quietly", buf, 0x1Cu);
        }
      }
    }
  }

  sub_5EE3C(v21, (a1 + 80), "", 797);
  v7 = *v21;
  v8 = *(a1 + 152);
  if (v8 && ((*(*v8 + 192))(v8) & 1) != 0)
  {
    v9 = 1936092532;
  }

  else
  {
    v9 = 1885762592;
  }

  v10 = (*(*v7 + 128))(v7, buf, v9);
  if (*&v21[8])
  {
    sub_1A8C0(*&v21[8]);
  }

  if (v10)
  {
    v11 = sub_5544(23);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, v10);
      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *v21 = 136315650;
      *&v21[4] = "VirtualStream.cpp";
      *&v21[12] = 1024;
      *&v21[14] = 800;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' getting physical stream format", v21, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v10 = sub_5EFE0(a1, buf, a2);
    if (v10)
    {
      v14 = sub_5544(23);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v10);
        sub_618A4(&v16);
      }
    }

    else
    {
      sub_64CA8(*(a1 + 96), a2);
      v10 = 0;
    }
  }

  sub_3174(v4);
  return v10;
}

void sub_4EC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  sub_2185D4(&a15);
  _Unwind_Resume(a1);
}

void sub_4ECCC(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_4EF90(&v10, a3, a3 + 12 * a2, a2);
  v6 = sub_5544(44);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1DB6A0(&__p, v10, v11);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *v14 = "AudioObjectPropertyListenerManager.cpp";
        *&v14[8] = 1024;
        *&v14[10] = 356;
        *&v14[14] = 2048;
        *&v14[16] = a1;
        *&v14[24] = 2080;
        *&v14[26] = p_p;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Listener fired for device ID %lu properties %s.", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_4E890();
  *buf = a1;
  memset(&v14[4], 0, 24);
  sub_4F010(&v14[4], v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 2));
  *&v14[28] = a4;
  operator new();
}

void sub_4EEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4EF30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_189A00();
}

uint64_t sub_4EF90(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_4EF30(result, a4);
  }

  return result;
}

void sub_4EFF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4F010(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_4EF30(result, a4);
  }

  return result;
}

void sub_4F070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4F08C()
{
  if ((atomic_load_explicit(&qword_70A4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_70A4F0))
  {
    v0 = sub_68E60();
    v1 = v0;
    if (v0)
    {
      dispatch_retain(v0);
    }

    object = v1;
    caulk::concurrent::messenger::messenger(&unk_70A4E0, &object);
    if (object)
    {
      dispatch_release(object);
    }

    __cxa_guard_release(&qword_70A4F0);
  }
}

void sub_4F114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  __cxa_guard_abort(&qword_70A4F0);
  _Unwind_Resume(a1);
}

void sub_4F140(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v135 = 0;
  v155 = 0;
  v156[0] = 0;
  v156[1] = 0;
  v153 = 0;
  v154[0] = 0;
  v154[1] = 0;
  v3 = 1;
  do
  {
    v4 = v2;
    v5 = (v2 & 1) == 0;
    if (v2)
    {
      v6 = &v153;
    }

    else
    {
      v6 = &v155;
    }

    v7 = 640;
    if (!v5)
    {
      v7 = 664;
    }

    v133 = (v1 + v7);
    v8 = *(v1 + v7 + 8) - *(v1 + v7);
    if (v8)
    {
      v136 = v6;
      v9 = 0;
      v132 = v4 ^ 1;
      v10 = v8 >> 4;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v131 = v10;
      v11 = &v147;
      if (v4)
      {
        v12 = &v150;
      }

      else
      {
        v12 = &v147;
      }

      if ((v4 & 1) == 0)
      {
        v11 = &v150;
      }

      v129 = v11;
      v130 = v12;
      if (v4)
      {
        v13 = &v153;
      }

      else
      {
        v13 = &v155;
      }

      v14 = "input";
      if (v4)
      {
        v14 = "output";
      }

      __s = v14;
      while (1)
      {
        v15 = v13;
        v16 = (*v133 + 16 * v9);
        v152 = 0;
        v150 = 0u;
        v151 = 0u;
        v17 = sub_4E90C(*v16, &v150);
        if (v17)
        {
          v103 = sub_5544(14);
          v104 = *v103;
          if (*v103 && os_log_type_enabled(*v103, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1091;
            _os_log_impl(&dword_0, v104, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Stream::GetCurrentFormat() returned an error.", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v17;
        }

        if (!DWORD2(v151))
        {
          v122 = sub_5544(14);
          v123 = *v122;
          if (*v122 && os_log_type_enabled(*v122, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1092;
            _os_log_impl(&dword_0, v123, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Stream::GetCurrentFormat() returned mBytesPerFrame of 0.", buf, 0x12u);
          }

          v124 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v124, "Stream::GetCurrentFormat() returned mBytesPerFrame of 0.");
        }

        v149 = 0;
        v147 = 0u;
        v148 = 0u;
        v18 = sub_617EC(*v16, &v147);
        if (v18)
        {
          v106 = sub_5544(14);
          v107 = *v106;
          if (*v106 && os_log_type_enabled(*v106, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1096;
            _os_log_impl(&dword_0, v107, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: VirtualStream::GetCurrentHALIOProcFormat() returned an error.", buf, 0x12u);
          }

          v108 = __cxa_allocate_exception(0x10uLL);
          *v108 = &off_6DDDD0;
          v108[2] = v18;
        }

        if (!DWORD2(v148))
        {
          v125 = sub_5544(14);
          v126 = *v125;
          if (*v125 && os_log_type_enabled(*v125, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1097;
            _os_log_impl(&dword_0, v126, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VirtualStream::GetCurrentHALIOProcFormat() returned mBytesPerFrame of 0.", buf, 0x12u);
          }

          v127 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v127, "VirtualStream::GetCurrentHALIOProcFormat() returned mBytesPerFrame of 0.");
        }

        v19 = sub_5544(17);
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_618A4(__p);
        }

        v20 = 0;
        v21 = *(*v16 + 152);
        if (DWORD2(v150) == 1819304813 && DWORD2(v147) == 1819304813)
        {
          break;
        }

LABEL_67:
        v36 = sub_5544(17);
        v37 = *v36;
        if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_INFO))
        {
          sub_62260(__p, v21);
          v38 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v38 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1122;
          *&buf[18] = 2080;
          *&buf[20] = v38;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%25s:%-5d Chain Description: %s", buf, 0x1Cu);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_65234(v146, *v16 + 120);
        for (i = v146[1]; i != v146; i = i[1])
        {
          v40 = i[3];
          if (v40)
          {
            v41 = std::__shared_weak_count::lock(v40);
            if (v41)
            {
              v42 = i[2];
              if (v42)
              {
                v43 = *(v42 + 144);
                if (v43 <= 1886155112)
                {
                  v44 = v43 == 1885432182;
                  v45 = 1885891433;
                }

                else
                {
                  v44 = v43 == 1886155113 || v43 == 1886155119;
                  v45 = 1886613618;
                }

                if (v44 || v43 == v45)
                {
                  sub_1A8C0(v41);
                  v50 = 0;
                  v51 = 0;
                  goto LABEL_101;
                }
              }

              sub_1A8C0(v41);
            }
          }
        }

        sub_8E920(&v157, v146, 0);
        std::operator+<char>();
        v47 = v130[1];
        *buf = *v130;
        *&buf[16] = v47;
        v161 = *(v130 + 4);
        sub_8EB20(a1 + 144, v3, v144, buf, v132 & 1);
        v48 = v3 + 1;
        if (v20)
        {
          std::operator+<char>();
          v49 = v129[1];
          *__p = *v129;
          *&__p[2] = v49;
          __p[4] = *(v129 + 4);
          sub_8EB20(a1 + 144, v3 + 1, v142, __p, v132 & 1);
          if (v143 < 0)
          {
            operator delete(v142[0]);
          }

          v50 = v3 + 1;
          v48 = v3 + 2;
        }

        else
        {
          v50 = 0;
        }

        sub_8FDCC(a1 + 144);
        if (v145 < 0)
        {
          operator delete(v144[0]);
        }

        if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v157.__r_.__value_.__l.__data_);
        }

        v51 = v3;
        v3 = v48;
LABEL_101:
        if ((BYTE12(v150) & 0x20) != 0)
        {
          v52 = HIDWORD(v151);
        }

        else
        {
          v52 = 1;
        }

        v54 = v135;
        v53 = HIDWORD(v135);
        if (v4)
        {
          v55 = HIDWORD(v135);
        }

        else
        {
          v55 = v135;
        }

        v56 = v52 + v55;
        if (v4)
        {
          v53 = v56;
        }

        else
        {
          v54 = v56;
        }

        v135 = __PAIR64__(v53, v54);
        if (v20)
        {
          if (*(v21 + 992) == *(v21 + 984))
          {
            v57 = (v21 + 952);
          }

          else
          {
            v57 = *(v21 + 984);
          }

          sub_8FF68(&v140, *v57, 0);
          v58 = *(v21 + 992);
          if (v58 == *(v21 + 984))
          {
            v59 = (v21 + 952);
          }

          else
          {
            v59 = (v58 - 16);
          }

          sub_8FF68(&v138, *v59, 0);
          if (!v140 || !*v140 || !v138 || !*v138)
          {
            v119 = sub_5544(14);
            v120 = *v119;
            if (*v119)
            {
              if (os_log_type_enabled(*v119, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AggregateDevice_Common.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1159;
                _os_log_impl(&dword_0, v120, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): DSP chain ABL should not be invalid if DSP processing is enabled", buf, 0x12u);
              }
            }

            v121 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v121, "DSP chain ABL should not be invalid if DSP processing is enabled");
          }
        }

        else
        {
          v140 = 0;
          v141 = 0;
          v138 = 0;
          v139 = 0;
        }

        v60 = sub_649C8(v21);
        v61 = sub_65088(v21);
        sub_5D734(buf, &v150, &v147, &v140, &v138, v60, v61, v21);
        v166 = v51;
        v167 = v50;
        v62 = v15[1];
        v63 = v136[2];
        if (v62 >= v63)
        {
          v65 = 0x4EC4EC4EC4EC4EC5 * ((v62 - *v136) >> 4);
          v66 = v65 + 1;
          if ((v65 + 1) > 0x13B13B13B13B13BLL)
          {
            sub_189A00();
          }

          v67 = 0x4EC4EC4EC4EC4EC5 * ((v63 - *v136) >> 4);
          if (2 * v67 > v66)
          {
            v66 = 2 * v67;
          }

          if (v67 >= 0x9D89D89D89D89DLL)
          {
            v68 = 0x13B13B13B13B13BLL;
          }

          else
          {
            v68 = v66;
          }

          __p[4] = v136;
          if (v68)
          {
            sub_36E778(v68);
          }

          __p[0] = 0;
          __p[1] = (208 * v65);
          __p[2] = (208 * v65);
          __p[3] = 0;
          sub_5D8EC(208 * v65, buf);
          __p[2] = __p[2] + 208;
          v69 = v15[1];
          v70 = *v136;
          v157.__r_.__value_.__r.__words[0] = v136;
          v157.__r_.__value_.__l.__size_ = v142;
          v157.__r_.__value_.__r.__words[2] = v144;
          v158 = 0;
          v71 = v70;
          v72 = __p[1] + v70 - v69;
          v144[0] = v72;
          v142[0] = v72;
          v73 = v72;
          if (v70 == v69)
          {
            v158 = 1;
          }

          else
          {
            do
            {
              sub_5D8EC(v73, v71);
              v71 += 208;
              v73 = v144[0] + 208;
              v144[0] = v144[0] + 208;
            }

            while (v71 != v69);
            v158 = 1;
            do
            {
              sub_5D988(v70 + 22);
              sub_5D988(v70 + 20);
              v70 += 26;
            }

            while (v70 != v69);
          }

          sub_5DA08(&v157);
          v74 = *v136;
          *v136 = v72;
          v75 = v136[2];
          v134 = __p[2];
          v13 = v15;
          *(v15 + 1) = *&__p[2];
          __p[2] = v74;
          __p[3] = v75;
          __p[0] = v74;
          __p[1] = v74;
          sub_5DA70(__p);
          v64 = v134;
        }

        else
        {
          v13 = v15;
          sub_5D8EC(v15[1], buf);
          v64 = v62 + 208;
          v15[1] = v62 + 208;
        }

        v13[1] = v64;
        v76 = sub_5544(17);
        if ((*(v76 + 8) & 1) != 0 && *v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_DEBUG))
        {
          sub_53E8(&v157, __s);
          v77 = v15[1];
          sub_618A4(v144);
        }

        sub_5D988(&v165);
        sub_5D988(&v164);
        sub_5D988(&v138);
        sub_5D988(&v140);
        sub_65310(v146);
        if (++v9 == v131)
        {
          goto LABEL_152;
        }
      }

      v22 = (*(*a1 + 624))(a1, v4 & 1, *(*v16 + 152), &v147, &v150);
      if (v22)
      {
        v23 = sub_5544(17);
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1113;
            *&buf[18] = 1024;
            *&buf[20] = v22;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d setting the DSP chain format", buf, 0x18u);
          }
        }
      }

      v25 = *(v21 + 448);
      if (v25)
      {
        if (DWORD2(v150) != 1819304813)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (*(v21 + 584) || *(v21 + 672) || (v26 = *(v21 + 1160)) != 0 && (*(v26 + 104) & 1) != 0 || *(v21 + 1168))
        {
          if (DWORD2(v150) != 1819304813)
          {
            goto LABEL_54;
          }

          if (v25)
          {
            goto LABEL_49;
          }
        }

        else if (*(v21 + 800) != 1 || DWORD2(v150) != 1819304813)
        {
LABEL_54:
          v29 = sub_5544(17);
          v30 = sub_5544(25);
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
              goto LABEL_60;
            }
          }

          if ((v32 & v33) == 0)
          {
            v29 = v30;
          }

LABEL_60:
          v34 = *v29;
          if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            sub_62260(__p, v21);
            v35 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v35 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "AggregateDevice_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1117;
            *&buf[18] = 2080;
            *&buf[20] = v35;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d All DSP is disabled:\n%s", buf, 0x1Cu);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v20 = 0;
          goto LABEL_67;
        }

        if (!*(v21 + 584) && !*(v21 + 672))
        {
          v27 = *(v21 + 1160);
          if ((!v27 || (*(v27 + 104) & 1) == 0) && !*(v21 + 1168))
          {
            v78 = sub_5544(17);
            v79 = *v78;
            if (*v78)
            {
              if (os_log_type_enabled(*v78, OS_LOG_TYPE_DEFAULT))
              {
                sub_62260(__p, v21);
                v80 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v80 = __p[0];
                }

                *buf = 136315650;
                *&buf[4] = "AggregateDevice_Common.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1119;
                *&buf[18] = 2080;
                *&buf[20] = v80;
                _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSP currently disabled, but may be enabled later for voice isolation:\n%s", buf, 0x1Cu);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }
      }

LABEL_49:
      v20 = 1;
      goto LABEL_67;
    }

LABEL_152:
    v2 = 1;
    v1 = a1;
  }

  while ((v4 & 1) == 0);
  sub_658AC(&v147, v135);
  sub_658AC(&v157, SHIDWORD(v135));
  v81 = 0;
  do
  {
    v82 = v81;
    v83 = (v81 & 1) == 0;
    if (v81)
    {
      v84 = &v153;
    }

    else
    {
      v84 = &v155;
    }

    if (v83)
    {
      v85 = &v147;
    }

    else
    {
      v85 = &v157;
    }

    v86 = v154;
    if (v83)
    {
      v86 = v156;
    }

    v87 = *v86;
    v88 = v87 - *v84;
    if (v87 != *v84)
    {
      v89 = 0;
      v90 = 0;
      v91 = 0x4EC4EC4EC4EC4EC5 * (v88 >> 4);
      if (v82)
      {
        v92 = 160;
      }

      else
      {
        v92 = 176;
      }

      if (v91 <= 1)
      {
        v91 = 1;
      }

      while (1)
      {
        v93 = *v84 + 208 * v89;
        if ((*(v93 + 12) & 0x20) == 0)
        {
          break;
        }

        v94 = *(v93 + 28);
        if (v94)
        {
          goto LABEL_172;
        }

LABEL_182:
        if (++v89 == v91)
        {
          goto LABEL_183;
        }
      }

      v94 = 1;
LABEL_172:
      v95 = 0;
      v96 = 2;
      do
      {
        v97 = v90 + v95;
        v98 = *(v93 + v92);
        if (v98 && v95 < *v98)
        {
          *(*v85 + 16 * v97 + 8) = *&v98[v96];
        }

        else
        {
          if ((*(v93 + 12) & 0x20) != 0)
          {
            v99 = 1;
          }

          else
          {
            v99 = *(v93 + 28);
          }

          *(*v85 + 16 * v97 + 8) = v99;
        }

        ++v95;
        v96 += 4;
      }

      while (v94 != v95);
      v90 += v95;
      goto LABEL_182;
    }

LABEL_183:
    v81 = 1;
  }

  while ((v82 & 1) == 0);
  sub_6591C(buf, &v155, &v153, &v147, &v157);
  if (!sub_65A20(v162[0], *(a1 + 904)))
  {
    goto LABEL_203;
  }

  if (!sub_65A20(v163[0], *(a1 + 920)))
  {
    goto LABEL_203;
  }

  v100 = *buf;
  v101 = *&buf[8];
  v102 = *(a1 + 856);
  if (*&buf[8] - *buf != *(a1 + 864) - v102)
  {
    goto LABEL_203;
  }

  while (v100 != v101)
  {
    if (!sub_8ED8C(v100, v102))
    {
      goto LABEL_203;
    }

    v100 += 208;
    v102 += 26;
  }

  v109 = *&buf[24];
  v110 = v161;
  v111 = *(a1 + 880);
  if ((v161 - *&buf[24]) != (*(a1 + 888) - v111))
  {
    goto LABEL_203;
  }

  if (*&buf[24] != v161)
  {
    do
    {
      v112 = sub_8ED8C(v109, v111);
      if (!v112)
      {
        break;
      }

      v109 += 208;
      v111 += 26;
    }

    while (v109 != v110);
    if ((v112 & 1) == 0)
    {
LABEL_203:
      if ((a1 + 856) != buf)
      {
        sub_65CAC((a1 + 856), *buf, *&buf[8], 0x4EC4EC4EC4EC4EC5 * ((*&buf[8] - *buf) >> 4));
        sub_65CAC((a1 + 880), *&buf[24], v161, 0x4EC4EC4EC4EC4EC5 * ((v161 - *&buf[24]) >> 4));
      }

      sub_5D7F4((a1 + 904), v162);
      sub_5D7F4((a1 + 920), v163);
      v113 = sub_5544(17);
      v114 = *v113;
      if (*v113 && os_log_type_enabled(*v113, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&v150, *(a1 + 276));
        v115 = (SBYTE7(v151) & 0x80u) == 0 ? &v150 : v150;
        v116 = *(a1 + 880);
        v117 = -991146299 * ((*(a1 + 888) - v116) >> 4);
        if (*(a1 + 888) == v116 && (v116 = *(a1 + 856), *(a1 + 864) == v116))
        {
          v118 = 0;
        }

        else
        {
          v118 = *(v116 + 40);
        }

        LODWORD(__p[0]) = 136316162;
        *(__p + 4) = "AggregateDevice_Common.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 1220;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v115;
        WORD2(__p[3]) = 1024;
        *(&__p[3] + 6) = v117;
        WORD1(__p[4]) = 2048;
        *(&__p[4] + 4) = v118;
        _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updated IOProcCache for VAD '%s'. NumStreams: %u SampleRate: %f", __p, 0x2Cu);
        if (SBYTE7(v151) < 0)
        {
          operator delete(v150);
        }
      }
    }
  }

  sub_5D988(v163);
  sub_5D988(v162);
  __p[0] = &buf[24];
  sub_5DD9C(__p);
  __p[0] = buf;
  sub_5DD9C(__p);
  sub_5D988(&v157);
  sub_5D988(&v147);
  *buf = &v153;
  sub_5DD9C(buf);
  *buf = &v155;
  sub_5DD9C(buf);
}

void sub_5046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_36E720(&a69);
  sub_5D988(&a57);
  sub_5D988(&a39);
  a69 = &a51;
  sub_5DD9C(&a69);
  a69 = &a54;
  sub_5DD9C(&a69);
  _Unwind_Resume(a1);
}

void sub_5064C(uint64_t a1)
{
  if (*(a1 + 937) == 1)
  {
    v2 = 100;
    while ((*(**(a1 + 872) + 288))(*(a1 + 872)))
    {
      usleep(0x1388u);
      v3 = sub_5544(1);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v6 = "VirtualAudio_Device.cpp";
          v7 = 1024;
          v8 = 3781;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Timeout waiting for Stop to finish.", buf, 0x12u);
        }
      }

      *(a1 + 937) = 0;
      if (!--v2)
      {
        return;
      }
    }

    *(a1 + 937) = 0;
  }
}

uint64_t *sub_50794(std::string::size_type a1, uint64_t a2)
{
  if (!*(a1 + 872))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "VirtualAudio_Device.cpp";
      v22 = 1024;
      v23 = 4129;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = atomic_load((a1 + 560));
  if (v4 != pthread_self())
  {
    v5 = atomic_load((a1 + 664));
    if (v5 != pthread_self())
    {
      v6 = sub_5544(1);
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 384);
          sub_68108(&__p, &v17);
          v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          v21 = "VirtualAudio_Device.cpp";
          v22 = 1024;
          v23 = 4131;
          v24 = 2080;
          v25 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d The IO monitor should be held prior to calling StartIOEngine on VAD: '%s'.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  __p.__r_.__value_.__r.__words[0] = a1;
  sub_27A4();
  __p.__r_.__value_.__s.__data_[8] = sub_2E6B94();
  *(a1 + 940) = 0;
  (*(**(a1 + 872) + 256))(*(a1 + 872), a2);
  v17 = 0x676C6F626E6E696FLL;
  v18 = 0;
  v9 = *(a1 + 16);
  v10 = *(a1 + 8);
  if (AudioObjectPropertiesChanged())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "VirtualAudio_Device.cpp";
        v22 = 1024;
        v23 = 4146;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theError): got an error calling the listeners", buf, 0x12u);
      }
    }
  }

  result = sub_6A300(&__p);
  *(a1 + 776) = 0;
  return result;
}

void sub_50BBC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_50BD4(uint64_t a1, unsigned int a2)
{
  sub_51AF8(a1);
  if (!*(a1 + 536))
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common.cpp";
      v44 = 1024;
      v45 = 393;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mHALIOProcID is NULL]: No HAL IO Proc has been set.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No HAL IO Proc has been set.");
  }

  if (!*(a1 + 576))
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common.cpp";
      v44 = 1024;
      v45 = 394;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mClientIOProc is NULL]: No client IO Proc has been set.", buf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "No client IO Proc has been set.");
  }

  v4 = sub_51840(a1, a2, 1);
  if ((v4 & 3) == 0)
  {
    v11 = *(a1 + 120);
    if (v11)
    {
      caulk::concurrent::messenger::drain(v11);
    }

    (*(*a1 + 648))(a1);
    (*(*a1 + 248))(a1);
    sub_5DDF0(a1);
  }

  v5 = v4;
  v6 = sub_5544(17);
  v7 = sub_5544(32);
  if (a2 == 1 && (v5 & 1) != 0)
  {
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
        goto LABEL_30;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_30:
    v21 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = (*(*a1 + 120))(a1);
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Common.cpp";
        v44 = 1024;
        v45 = 464;
        v46 = 1024;
        LODWORD(v47) = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant NULL I/O proc start request on AggregateDevice %u. Returning before AudioDeviceStart() call.", buf, 0x18u);
      }
    }
  }

  else
  {
    v12 = 0;
    *buf = 0x100000002;
    v13 = *(v6 + 8);
    while (1)
    {
      v14 = *&buf[v12];
      if (((v13 & v14) != 0) != ((*(v7 + 8) & v14) != 0))
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
      v6 = v7;
    }

LABEL_19:
    v15 = *v6;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, a2);
      v16 = v42;
      v17 = __p[0];
      v18 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "AggregateDevice_Common.cpp";
      v19 = v16 >= 0 ? __p : v17;
      v44 = 1024;
      v45 = 469;
      v46 = 2080;
      v47 = v19;
      v48 = 1024;
      LODWORD(v49) = v18;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO type %s on AggregateDevice %u.", buf, 0x22u);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    kdebug_trace();
    if (a2 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a1 + 536);
    }

    v23 = AudioDeviceStart(*(a1 + 128), v20);
    kdebug_trace();
    if (v23)
    {
      sub_51840(a1, a2, 0);
      v30 = sub_5544(17);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v23);
        v32 = v42;
        v33 = __p[0];
        sub_23148(v39, (a1 + 8));
        v34 = __p;
        if (v32 < 0)
        {
          v34 = v33;
        }

        if (v40 >= 0)
        {
          v35 = v39;
        }

        else
        {
          v35 = v39[0];
        }

        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Common.cpp";
        v44 = 1024;
        v45 = 477;
        v46 = 2080;
        v47 = v34;
        v48 = 2080;
        v49 = v35;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", buf, 0x26u);
        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        if (v42 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v36 = sub_5544(14);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Common.cpp";
        v44 = 1024;
        v45 = 478;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (startResult): Unable to start IO.", buf, 0x12u);
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      *v38 = &off_6DDDD0;
      v38[2] = v23;
    }
  }
}

void sub_51800(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_51840(unsigned int *a1, int a2, int a3)
{
  __p = 0uLL;
  v23 = 0;
  if (a2)
  {
    if (a2 != 1)
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AggregateDevice.cpp";
        v25 = 1024;
        v26 = 573;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unexpected IOProc type %d", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected IOProc type %d");
    }

    HIBYTE(v23) = 10;
    WORD4(__p) = 25455;
    *&__p = *"NullIOProc";
    v6 = (a1 + 120);
    v7 = 1;
    if (!a3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v8 = atomic_fetch_or(v6, v7);
    goto LABEL_7;
  }

  HIBYTE(v23) = 13;
  qmemcpy(&__p, "NonNullIOProc", 13);
  v6 = (a1 + 120);
  v7 = 2;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = atomic_fetch_and(v6, ~v7);
LABEL_7:
  v9 = sub_5544(17);
  v10 = sub_5544(32);
  v11 = 0;
  *buf = 0x100000002;
  v12 = *(v9 + 8);
  while (1)
  {
    v13 = *&buf[v11];
    if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
    {
      break;
    }

    v11 += 4;
    if (v11 == 8)
    {
      goto LABEL_13;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

LABEL_13:
  v14 = (*(*a1 + 120))(a1);
  p_p = &__p;
  if (v23 < 0)
  {
    p_p = __p;
  }

  v16 = "not running";
  if (a3)
  {
    v16 = "running";
  }

  v17 = atomic_load(a1 + 120);
  sub_51E48(3, v9, "", 575, "", "IOProc (AggregateDevice %u, IO type %s) running state is now %s (%u).", v14, p_p, v16, v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  return v8;
}

uint64_t sub_51AF8(uint64_t result)
{
  if (!*(result + 128))
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "AggregateDevice_Common.cpp";
      v15 = 1024;
      v16 = 1443;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  if (!*(result + 536))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "AggregateDevice_Common.cpp";
      v15 = 1024;
      v16 = 1444;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v13, 0x12u);
    }

    v6 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v6, "Invariant failure.");
  }

  if (!*(result + 560))
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "AggregateDevice_Common.cpp";
      v15 = 1024;
      v16 = 1445;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v13, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v9, "Invariant failure.");
  }

  if ((*(result + 576) == 0) == (*(result + 584) != 0))
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "AggregateDevice_Common.cpp";
        v15 = 1024;
        v16 = 1446;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v13, 0x12u);
      }
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "Invariant failure.");
  }

  return result;
}

uint64_t sub_51E48(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *__format, ...)
{
  va_start(va, __format);
  LODWORD(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  LODWORD(__src[3]) = a4;
  __src[4] = a5;
  vsnprintf(&__src[5], 0x100uLL, __format, va);
  sub_4F08C();
  if (!caulk::g_realtime_safe_resource)
  {
    __break(1u);
  }

  v6 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x140uLL, 8uLL);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  memcpy((v6 + 24), __src, 0x128uLL);
  *v6 = &off_6D0AB0;
  return caulk::concurrent::messenger::enqueue(&unk_70A4E0, v6);
}

uint64_t sub_51F38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

_BYTE *sub_51FD0(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;
  sub_51F38((a1 + 8), a3);
  if (!*(a3 + 24))
  {
    v6 = *sub_5544(14);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "Oath.h";
        v11 = 1024;
        v12 = 32;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inFunction is NULL]: inFunction is a nullptr.", &v9, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inFunction is a nullptr.");
  }

  return a1;
}

uint64_t sub_52124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_52588();
  if (sub_52604(&unk_6FC990))
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12)
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "ListenerRelayManager.cpp";
        v18 = 1024;
        v19 = 131;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: relayListMutex held by the current thread.", buf, 0x12u);
      }
    }
  }

  sub_26C0(&unk_6FC990);
  if ((sub_2160(&unk_6FC990) & 1) == 0)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "ListenerRelayManager.cpp";
        v18 = 1024;
        v19 = 162;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: relayListMutex not held by the current thread.", buf, 0x12u);
      }
    }
  }

  for (i = qword_6FC980; i != &qword_6FC978; i = i[1])
  {
    v8 = atomic_load((i[2] + 56));
    if ((v8 & 1) == 0)
    {
      v9 = i[2];
      if (*v9 == a4)
      {
        v10 = i[3];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(v9 + 40))(*(v9 + 16), a2, a3, *(v9 + 48));
        if (v10)
        {
          sub_1A8C0(v10);
        }

        break;
      }
    }
  }

  sub_3174(&unk_6FC990);
  return 0;
}

void sub_52588()
{
  if ((atomic_load_explicit(&qword_6FCAB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FCAB8))
  {
    sub_41528C();

    __cxa_guard_release(&qword_6FCAB8);
  }
}

BOOL sub_52604(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 168));
  v2 = *(a1 + 232) == pthread_self();
  std::recursive_mutex::unlock((a1 + 168));
  return v2;
}

void sub_5264C(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "VirtualAudio_DevicePropertyCache.cpp";
      v32 = 1024;
      v33 = 245;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inObject is NULL]: inObject is nullptr.", &v30, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inObject is nullptr.");
  }

  if (a2 && !a3)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315650;
      v31 = "VirtualAudio_DevicePropertyCache.cpp";
      v32 = 1024;
      v33 = 247;
      v34 = 1024;
      v35 = a2;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inAddresses is nullptr, but inNumberAddresses is %u.", &v30, 0x18u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "inAddresses is nullptr, but inNumberAddresses is %u.");
  }

  if (!a4)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "VirtualAudio_DevicePropertyCache.cpp";
      v32 = 1024;
      v33 = 248;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inClientData is NULL]: inClientData is nullptr.", &v30, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "inClientData is nullptr.");
  }

  if (*(a4 + 55) == 1)
  {
    v8 = *(a4 + 32);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(a4 + 24);
        if (v10)
        {
          v11 = a3;
          if (a2)
          {
            v12 = 12 * a2;
            v11 = a3;
            while (v11[1] != *(a4 + 44) || *v11 != *(a4 + 40) || v11[2] != *(a4 + 48))
            {
              v11 += 3;
              v12 -= 12;
              if (!v12)
              {
                goto LABEL_34;
              }
            }
          }

          if (v11 != &a3[3 * a2])
          {
            v15 = *(a4 + 16);
            if (!v15 || (v16 = *(a4 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
            {
              sub_175EA0();
            }

            v18 = v17;
            if (*(v10 + 40) == a1 && (*(*v16 + 24))(v16, a1))
            {
              if (*(v16 + 40) == 1635153007)
              {
                v19 = sub_5544(1);
                v20 = *v19;
                if (*v19)
                {
                  if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = 136315394;
                    v31 = "VirtualAudio_DevicePropertyCache.cpp";
                    v32 = 1024;
                    v33 = 434;
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d The AOP driver reports a Hey Siri trigger.", &v30, 0x12u);
                  }
                }
              }

              if (*(v10 + 72))
              {
                if ((*(v16 + 54) & 1) == 0)
                {
                  std::mutex::lock((v10 + 80));
                  sub_172ED8((v10 + 144), (v16 + 40));
                  std::mutex::unlock((v10 + 80));
                }
              }

              else
              {
                sub_52D0C(v10, 1);
              }
            }

            sub_1A8C0(v18);
          }

          goto LABEL_34;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = sub_5544(1);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315394;
      v31 = "VirtualAudio_DevicePropertyCache.cpp";
      v32 = 1024;
      v33 = 285;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PropertyCache has expired, ignoring property changed notification.", &v30, 0x12u);
    }

LABEL_34:
    if (v9)
    {
      sub_1A8C0(v9);
    }
  }
}

void sub_52B08(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 80));
  sub_1A8C0(v3);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_52B64(uint64_t a1, unsigned int a2)
{
  dispatch_assert_queue_V2(*a1);
  v4 = *(a1 + 320);
  v5 = *(a1 + 328);
  if (v4 != v5)
  {
    while (**v4 != a2)
    {
      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v4 != v5)
  {
    return *v4;
  }

LABEL_7:
  v7 = sub_5544(44);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315650;
        v10 = "AudioObjectPropertyListenerManager.cpp";
        v11 = 1024;
        v12 = 378;
        v13 = 2048;
        v14 = a2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Listener client for device ID %lu does not exist.", &v9, 0x1Cu);
      }
    }
  }

  return 0;
}

uint64_t sub_52C88(uint64_t a1)
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

void sub_52D0C(uint64_t a1, int a2)
{
  v4 = sub_368114(a1);
  if (v4)
  {
    v5 = atomic_load((v4 + 96));
    if (v5 == pthread_self())
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          buf_4 = "VirtualAudio_DevicePropertyCache.cpp";
          v24 = 1024;
          v25 = 543;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Cache mutex is held.", &buf, 0x12u);
        }
      }
    }
  }

  if (a2)
  {
    sub_2820();
    v19 = *(a1 + 16);
    v20 = &unk_6FCDC8;
    LOBYTE(v21) = 1;
    sub_26C0(&unk_6FCDC8);
    v6 = sub_23B090(&xmmword_6FCEE8, v19);
    if (!v6)
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        buf_4 = "HP_ObjectManager.h";
        v24 = 1024;
        v25 = 56;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", &buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 560947818;
    }

    v7 = atomic_load((v6[3] + 312));
    if (v7)
    {
      v9 = v6[3];
      v8 = v6[4];
      v17 = v9;
      v18 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v17 = 0;
      v18 = 0;
    }

    if (v21 == 1)
    {
      sub_3174(v20);
    }

    if (v9)
    {
      sub_26C0(v9 + 24);
      operator new();
    }

    v10 = sub_5544(5);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315650;
      buf_4 = "HP_ObjectManager.h";
      v24 = 1024;
      v25 = 66;
      v26 = 2048;
      v27 = v19;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", &buf, 0x1Cu);
    }

    if (v8)
    {
      sub_1A8C0(v8);
    }
  }
}

void sub_5384C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void sub_53920(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x53910);
  }

  JUMPOUT(0x539A0);
}

void sub_53938(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x53944);
  }

  JUMPOUT(0x53910);
}

__n128 sub_53A38(uint64_t a1, uint64_t a2)
{
  *a2 = off_6B99B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_53A64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = *(a1 + 60);
  v6 = sub_B622C(a1, a2, &v7);
  if (!v6)
  {
    *(a1 + 56) = v7;
  }

  return !v6;
}

uint64_t *sub_53AC0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_53B18(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    (*(*result + 48))(result);

    return sub_52C88(a1 + 8);
  }

  return result;
}

uint64_t sub_53B84(uint64_t result)
{
  if (**(result + 8) == 1)
  {
    return sub_93D0C(*(result + 16) + 464);
  }

  return result;
}

uint64_t sub_53BA4(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 32))
    {
      v2 = sub_5544(14);
      v3 = *v2;
      if (*v2)
      {
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v6 = "Oath.h";
          v7 = 1024;
          v8 = 39;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Contract broken: object initialized to require a call to Fulfill, but no call was made. Manually executing Fulfill to avoid breaking the oath.", buf, 0x12u);
        }
      }
    }
  }

  sub_53B18(a1);
  sub_52C88(a1 + 8);
  sub_4C70(a1 + 8);
  return a1;
}

uint64_t sub_53F34(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315394;
      *&v23[4] = "VirtualAudio_IONotificationManager.cpp";
      v24 = 1024;
      v25 = 104;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inNumberAddresses is 0.", v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNumberAddresses is 0.");
  }

  if (!a4)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315394;
      *&v23[4] = "VirtualAudio_IONotificationManager.cpp";
      v24 = 1024;
      v25 = 105;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inClientData is NULL]: inClientData is NULL.", v23, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "inClientData is NULL.");
  }

  if (!a3)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315394;
      *&v23[4] = "VirtualAudio_IONotificationManager.cpp";
      v24 = 1024;
      v25 = 106;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inAddresses is NULL]: inAddresses is NULL.", v23, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "inAddresses is NULL.");
  }

  v6 = sub_5544(1);
  v7 = sub_5544(32);
  v8 = 0;
  *v23 = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&v23[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

  if (*(v6 + 8))
  {
LABEL_12:
    v11 = *v6;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 136315650;
      *&v23[4] = "VirtualAudio_IONotificationManager.cpp";
      v24 = 1024;
      v25 = 110;
      v26 = 1024;
      v27 = a1;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d IO State for VAD %u changed.", v23, 0x18u);
    }
  }

LABEL_15:
  sub_4F08C();
  if (!caulk::g_realtime_safe_resource)
  {
    __break(1u);
  }

  v12 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x28uLL, 8uLL);
  *(v12 + 16) = 0;
  *(v12 + 24) = a4;
  *v12 = &off_6B89A8;
  *(v12 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&unk_70A4E0, v12);
  return 0;
}

unint64_t sub_542F0(AudioObjectID *a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (AudioObjectHasProperty(*a1, a2))
  {
    ioDataSize[0] = 2003329396;
    *&ioDataSize[1] = 0;
    PropertyData = 2003329396;
    v9 = 0;
    ioDataSize[0] = sub_543D0(*a1, a2, a3, a4);
    if (ioDataSize[0])
    {
      outData[0] = 0;
      PropertyData = AudioObjectGetPropertyData(*a1, a2, a3, a4, ioDataSize, outData);
      if (PropertyData)
      {
        v9 = 0;
      }

      else
      {
        v9 = outData[0];
      }
    }
  }

  else
  {
    v9 = 0;
    PropertyData = 2003332927;
  }

  return PropertyData | (v9 << 32);
}

uint64_t sub_543D0(AudioObjectID a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  outDataSize = 0;
  if (AudioObjectGetPropertyDataSize(a1, a2, a3, a4, &outDataSize))
  {
    return 0;
  }

  else
  {
    return outDataSize;
  }
}

void sub_5440C(int a1, _DWORD *a2, _DWORD *a3)
{
  if (!a3)
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

  if (*a2 <= 3u)
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

  *a2 = 4;
  *a3 = a1;
}

BOOL sub_545D0(uint64_t a1)
{
  sub_4EBC(a1);
  if (!*(a1 + 536))
  {
    return 0;
  }

  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = 0x676C6F62676F696ELL;
  inAddress.mElement = 0;
  if (AudioObjectGetPropertyData(*(a1 + 128), &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  if (outData >= 2)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "AggregateDevice_CommonBase.cpp";
      v14 = 1024;
      v15 = 618;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a non-BOOLean value", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The HAL returned a non-BOOLean value");
  }

  if (ioDataSize != 4)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "AggregateDevice_CommonBase.cpp";
        v14 = 1024;
        v15 = 619;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned an oddly sized value", buf, 0x12u);
      }
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "The HAL returned an oddly sized value");
  }

  return outData == 1;
}

uint64_t sub_54800(uint64_t a1)
{
  v1 = *(*(a1 + 872) + 304);
  if ((v1 & 0x100000000) != 0 && v1)
  {
    return 1;
  }

  v3 = *(a1 + 384);
  result = 1;
  if (v3 <= 1986552182)
  {
    v4 = v3 == 1986224492;
    v5 = 1986293108;
  }

  else
  {
    v4 = v3 == 1986552183 || v3 == 1986818404;
    v5 = 1987276900;
  }

  if (!v4 && v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_54880(void *a1, int *a2)
{
  v2 = *a2;
  v3 = 8;
  if (*a2 > 1818455661)
  {
    if (v2 <= 1870030193)
    {
      if (v2 <= 1819173228)
      {
        if (v2 == 1818455662)
        {
          return v3;
        }

        if (v2 == 1818850926)
        {
          return 4;
        }

        v6 = 1819107691;
        goto LABEL_52;
      }

      if (v2 > 1836411235)
      {
        if (v2 != 1836411236)
        {
          v4 = 1869180523;
          goto LABEL_56;
        }
      }

      else if (v2 != 1819173229)
      {
        v4 = 1819569763;
        goto LABEL_56;
      }
    }

    else
    {
      v5 = a2[1];
      if (v2 <= 1937009954)
      {
        if (v2 > 1936092275)
        {
          if (v2 != 1936092276)
          {
            if (v2 == 1936482681)
            {
              v9 = 38;
              if (v5 == 1768845428)
              {
                v9 = 35;
              }

              v10 = 39;
              if (v5 == 1768845428)
              {
                v10 = 36;
              }

              return (16 * ((LODWORD(a1[v10]) - LODWORD(a1[v9])) >> 3)) | 8;
            }

            return sub_E1CEC(a1, a2);
          }
        }

        else if (v2 != 1870030194)
        {
          v4 = 1935763060;
          goto LABEL_56;
        }

        return 4;
      }

      if (v2 <= 1953653101)
      {
        if (v2 == 1937009955)
        {
          if (v5 == 1735159650)
          {
            return 4 * (((a1[36] - a1[35]) >> 3) + ((a1[39] - a1[38]) >> 3));
          }

          v12 = v5 == 1768845428;
          v13 = 38;
          v14 = 39;
          if (v12)
          {
            v14 = 36;
          }

          v15 = a1[v14];
          if (v12)
          {
            v13 = 35;
          }

          return ((v15 - a1[v13]) >> 1) & 0xFFFFFFFC;
        }

        if (v2 == 1937077093)
        {
          v7 = 38;
          if (v5 == 1768845428)
          {
            v7 = 35;
          }

          v8 = 39;
          if (v5 == 1768845428)
          {
            v8 = 36;
          }

          return (((a1[v8] - a1[v7]) >> 1) & 0xFFFFFFFC) + 12;
        }

        return sub_E1CEC(a1, a2);
      }

      if (v2 != 1969841184)
      {
        v4 = 1953653102;
        goto LABEL_56;
      }
    }

    return v3;
  }

  if (v2 <= 1718843938)
  {
    if (v2 > 1668049763)
    {
      if (v2 > 1684629093)
      {
        if (v2 != 1684629094)
        {
          v4 = 1718839674;
          goto LABEL_56;
        }
      }

      else if (v2 != 1668049764)
      {
        v4 = 1684434036;
        goto LABEL_56;
      }

      return 4;
    }

    if (v2 == 1634429294)
    {
      return 4;
    }

    if (v2 != 1634955892)
    {
      v6 = 1667330160;
LABEL_52:
      if (v2 != v6)
      {
        return sub_E1CEC(a1, a2);
      }
    }

    return v3;
  }

  if (v2 > 1751737453)
  {
    if (v2 > 1818452845)
    {
      if (v2 == 1818452846)
      {
        return v3;
      }

      v6 = 1818454126;
    }

    else
    {
      if (v2 == 1751737454)
      {
        return 4;
      }

      v6 = 1768124270;
    }

    goto LABEL_52;
  }

  if (v2 > 1735356004)
  {
    if (v2 != 1735356005)
    {
      v4 = 1751412337;
      goto LABEL_56;
    }

    return 4;
  }

  if (v2 == 1718843939)
  {
    return 16;
  }

  v4 = 1735354734;
LABEL_56:
  if (v2 == v4)
  {
    return 4;
  }

  return sub_E1CEC(a1, a2);
}

void sub_54C20(uint64_t a1, int a2, uint64_t a3, void *a4, vm_address_t **a5, int a6)
{
  if (a4)
  {
    free(a4);
  }

  v12 = *a5;
  v11 = a5[1];
  if (*a5 != v11)
  {
    v13 = 0;
    v14 = 304;
    if (a2)
    {
      v14 = 280;
    }

    v15 = (a1 + v14);
    do
    {
      v16 = *v12;
      if (*v12)
      {
        if (v13 < ((v15[1] - *v15) >> 3))
        {
          v17 = *(*v15 + 8 * v13);
          if (v17)
          {
            v18 = *(v16 + 8);
            v19 = *v17 + 184;
            if (a6)
            {
              v18 = (v18 + 16);
              v20 = a3;
              v21 = *v12;
            }

            else
            {
              v21 = v16 + 16;
              v20 = a3;
            }

            (*(*v17 + 184))(v17, v20, v18, v21);
          }
        }

        vm_deallocate(mach_task_self_, v16, *(v16 + 8) + 16);
        v11 = a5[1];
      }

      ++v13;
      ++v12;
    }

    while (v12 != v11);
    v12 = *a5;
  }

  a5[1] = v12;
}

uint64_t *sub_54D38(uint64_t *result, int a2, uint64_t *a3)
{
  v3 = *result;
  v4 = 304;
  v5 = 312;
  if (a2)
  {
    v5 = 288;
  }

  v6 = *(v3 + v5);
  if (a2)
  {
    v4 = 280;
  }

  v7 = v6 - *(v3 + v4);
  a3[1] = 0;
  if ((v7 & 0x7FFFFFFF8) != 0)
  {
    v9 = result;
    v10 = 0;
    if (a2)
    {
      v11 = 128;
    }

    else
    {
      v11 = 152;
    }

    v12 = (v7 >> 3);
    do
    {
      v19 = 0;
      v13 = v9[1];
      v14 = v9[2];
      if (v13 != v14)
      {
        v15 = 0;
        while (1)
        {
          while (1)
          {
            v16 = *v13;
            if (*(*v13 + 54) == 1)
            {
              break;
            }

            v13 += 8;
            if (v13 == v14)
            {
              goto LABEL_21;
            }
          }

          if (*(v16 + v11 + 8) <= v10)
          {
            break;
          }

          v17 = *(*(v16 + v11) + 8 * (v10 >> 6)) & (1 << v10);
          v15 = v17 != 0;
          v13 += 8;
          if (v17)
          {
            v18 = 1;
          }

          else
          {
            v18 = v13 == v14;
          }

          if (v18)
          {
LABEL_21:
            v19 = v15;
            goto LABEL_22;
          }
        }

        v19 = 1;
      }

LABEL_22:
      result = sub_55558(a3, &v19);
      ++v10;
    }

    while (v10 != v12);
  }

  return result;
}

_DWORD *sub_54E5C(_DWORD *a1, int a2, void *a3, unsigned int a4, void *a5, int a6, int a7)
{
  a5[1] = *a5;
  v10 = a1[68];
  v33 = (*(*a1 + 496))(a1);
  v11 = 76;
  if (a2)
  {
    v11 = 70;
  }

  v12 = 78;
  if (a2)
  {
    v12 = 72;
  }

  v13 = &a1[v11];
  v14 = *&a1[v12] - *&a1[v11];
  v15 = v14 >> 3;
  v16 = malloc_type_calloc(1uLL, (2 * v14) & 0xFFFFFFF6 | 8, 0x10800404ACF7207uLL);
  if (v16)
  {
    *v16 = v15;
  }

  v28 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = (v16 + 4);
    do
    {
      if (v17 >= (v13[1] - *v13) >> 3)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(*v13 + 8 * v17);
      }

      v20 = sub_5519C(v19[13], v10);
      v21 = sub_5519C(v19[13], v33);
      if (a3[1] <= v17)
      {
        if (a7)
        {
          goto LABEL_15;
        }
      }

      else if ((*(*a3 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) != 0 && (a7)
      {
LABEL_15:
        v22 = (v21 + v20);
        address = 0;
        if (vm_allocate(mach_task_self_, &address, (v22 + 16), 1))
        {
          v23 = sub_5544(14);
          v24 = *v23;
          if (*v23)
          {
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HP_IOProcList.h";
              v36 = 1024;
              v37 = 873;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theKernelError): vm_allocate failed", buf, 0x12u);
            }
          }
        }

        if (address)
        {
          bzero(address, (v22 + 16));
          v25 = address;
          *address = v20;
          v25[1] = v10;
          v25[2] = v22;
          v25[3] = v20;
          if (a6)
          {
            (*(*v19 + 22))(v19, a4, (v22 + 16));
          }

          else
          {
            (*(*v19 + 22))(v19, a4, v22, v25 + 4);
          }

          sub_5318(a5, &address);
          *(v18 - 2) = v19[13][11];
          v26 = address + 16;
          *(v18 - 1) = *address;
          *v18 = v26;
        }

        goto LABEL_26;
      }

      *buf = 0;
      sub_5318(a5, buf);
      *(v18 - 2) = v19[13][11];
      *(v18 - 1) = v20;
      *v18 = 0;
LABEL_26:
      ++v17;
      v18 += 2;
    }

    while ((v14 >> 3) != v17);
  }

  return v28;
}

uint64_t sub_5519C(_DWORD *a1, int a2)
{
  v3 = a1[6];
  result = a1[8];
  if (v3 > 1836343850)
  {
    if (v3 != 1836344107 && v3 != 1836343851)
    {
      goto LABEL_4;
    }

    return (a1[10] * a2);
  }

  if (v3 == 1667326771)
  {
    return (4 * a2);
  }

  if (v3 == 1819304813)
  {
    return (a1[10] * a2);
  }

LABEL_4:
  if (a1[9] != a2)
  {
    v8 = result;
    v5 = *sub_5544(14);
    if (v5)
    {
      log = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "HP_FormatList.cpp";
        v11 = 1024;
        v12 = 364;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: illegal buffer size", buf, 0x12u);
      }
    }

    return v8;
  }

  return result;
}

uint64_t sub_552D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  while (v3 != v4)
  {
    if (*v3 == a2)
    {
      if (a2)
      {
        return 1;
      }

      break;
    }

    if (*(*v3 + 8) == a2)
    {
      return 1;
    }

    v3 += 8;
  }

  v6 = *(a1 + 256);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v7 == v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = *v7;
    if (*v7 == a2)
    {
      break;
    }

    if (*(v9 + 8) == a2)
    {
      return v9 != 0;
    }

    if (++v7 == v8)
    {
      v9 = 0;
      return v9 != 0;
    }
  }

  v9 = a2;
  return v9 != 0;
}

void sub_55360(uint64_t a1, uint64_t a2)
{
  sub_54C20(*a2, 1, *(a2 + 48), *(a2 + 200), (a2 + 176), *(a2 + 53));
  *(a2 + 200) = 0;
  if (*(a1 + 40) == 2)
  {
    sub_212390(a2, 1);
  }

  sub_54C20(*a2, 0, *(a2 + 48), *(a2 + 232), (a2 + 208), *(a2 + 53));
  *(a2 + 232) = 0;
  if (*(a1 + 44) == 2)
  {

    sub_212390(a2, 0);
  }
}

void sub_5540C(_DWORD **a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_54C20(*a1, 1, *(a1 + 8), v2, a1 + 6, *(a1 + 36));
    a1[9] = 0;
  }

  if (*(a1 + 10) <= 1u)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    sub_54D38(a1, 1, &__p);
    a1[9] = sub_54E5C(*a1, 1, &__p, *(a1 + 8), a1 + 6, *(a1 + 36), *(a1 + 10) == 1);
    if (__p)
    {
      operator delete(__p);
    }
  }

  v3 = a1[13];
  if (v3)
  {
    sub_54C20(*a1, 0, *(a1 + 8), v3, a1 + 10, *(a1 + 36));
    a1[13] = 0;
  }

  if (*(a1 + 11) <= 1u)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    sub_54D38(a1, 0, &__p);
    a1[13] = sub_54E5C(*a1, 0, &__p, *(a1 + 8), a1 + 10, *(a1 + 36), *(a1 + 11) == 1);
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_55534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_55558(uint64_t *result, _BYTE *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 == v2 << 6)
  {
    if ((v3 + 1) < 0)
    {
      goto LABEL_8;
    }

    if (v3 > 0x3FFFFFFFFFFFFFFELL)
    {
LABEL_9:
      operator new();
    }

    v4 = v2 << 7;
    if (v4 <= (v3 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v4 = (v3 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v3 < v4)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_8:
        sub_189A00();
      }

      goto LABEL_9;
    }
  }

  result[1] = v3 + 1;
  v5 = *result;
  v6 = v3 >> 6;
  v7 = 1 << v3;
  if (*a2 == 1)
  {
    v8 = *(v5 + 8 * v6) | v7;
  }

  else
  {
    v8 = *(v5 + 8 * v6) & ~v7;
  }

  *(v5 + 8 * v6) = v8;
  return result;
}

uint64_t sub_55704(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  while (1)
  {
    v6 = *(v2 + 24);
    if (v4 == 707406378 || ((v7 = *(v2 + 20), v7 != 707406378) ? (v8 = v7 == v4) : (v8 = 1), v8))
    {
      if (v3 == 707406378 || ((v9 = *(v2 + 16), v9 != 707406378) ? (v10 = v9 == v3) : (v10 = 1), v10))
      {
        v11 = 1;
        if (v5 == -1)
        {
          break;
        }

        if (v6 == -1 || v6 == v5)
        {
          break;
        }
      }
    }

    v2 = *(v2 + 8);
    if (v2 == a1)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_55784(uint64_t a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v15 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v3 = *a2;
  result = 4;
  if (*a2 <= 1983013985)
  {
    if (v3 > 1836414052)
    {
      v6 = v3 == 1836414053;
      v7 = 1836478308;
    }

    else
    {
      v6 = v3 == 1064725619;
      v7 = 1684157046;
    }
  }

  else
  {
    if (v3 > 1986290210)
    {
      if (v3 != 1987013741 && v3 != 1987013732)
      {
        if (v3 == 1986290211)
        {
          return 16;
        }

        goto LABEL_20;
      }

      return result;
    }

    v6 = v3 == 1983013986;
    v7 = 1986229104;
  }

  if (!v6 && v3 != v7)
  {
LABEL_20:
    v9 = sub_5544(14);
    if (*v9)
    {
      result = os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v12 = *a2;
        v14 = a2[2];
        sub_22CE0(__p);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_55A7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  sub_55ACC(&v3, v1 - 1);
  return *(v3 + 8);
}

void **sub_55ACC(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void sub_55B58(uint64_t a1)
{
  v2 = *(a1 + 616);
  v67 = v2;
  if (*(a1 + 664) == 1)
  {
    v3 = *(a1 + 648);
    if (v2 < v3 || (v3 = *(a1 + 652), v4 = 0.0, v2 > v3))
    {
      v4 = v2 - v3;
      v67 = v3;
    }
  }

  else
  {
    *buf = v2;
    v5 = *sub_592D8((a1 + 632), buf, (a1 + 640));
    v67 = v5;
    v4 = 0.0;
  }

  sub_5659C(&v65, (a1 + 528), "", 163);
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
      goto LABEL_12;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_12:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 616);
    *buf = 136316162;
    *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 165;
    *&buf[18] = 2048;
    *&buf[20] = v12;
    v72 = 2048;
    v73 = v67;
    v74 = 2048;
    v75 = v4;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d   Setting Input Volume: %f dB, Final HW Volume: %f dB, Final SW Volume: %f dB", buf, 0x30u);
  }

  v13 = sub_5544(19);
  v14 = sub_5544(39);
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
      goto LABEL_21;
    }
  }

  if ((v16 & v17) == 0)
  {
    v13 = v14;
  }

LABEL_21:
  v18 = *v13;
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    sub_23148(__p, v65 + 2);
    v19 = v64 >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 166;
    *&buf[18] = 2080;
    *&buf[20] = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d   VAD '%s'", buf, 0x1Cu);
    if (v64 < 0)
    {
      operator delete(*__p);
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
      goto LABEL_34;
    }
  }

  if ((v23 & v24) == 0)
  {
    v20 = v21;
  }

LABEL_34:
  v25 = *v20;
  if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    (*(*&v65->_os_unfair_lock_opaque + 128))(__p);
    v26 = v64 >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 168;
    *&buf[18] = 2080;
    *&buf[20] = v26;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d   PhysicalDevice UID = %s", buf, 0x1Cu);
    if (v64 < 0)
    {
      operator delete(*__p);
    }
  }

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
      goto LABEL_47;
    }
  }

  if ((v30 & v31) == 0)
  {
    v27 = v28;
  }

LABEL_47:
  v32 = *v27;
  if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(__p, *(a1 + 544));
    v33 = v64 >= 0 ? __p : *__p;
    *buf = 136315650;
    *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 169;
    *&buf[18] = 2080;
    *&buf[20] = v33;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d   Scope = '%s'", buf, 0x1Cu);
    if (v64 < 0)
    {
      operator delete(*__p);
    }
  }

  v34 = sub_5544(19);
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
      goto LABEL_60;
    }
  }

  if ((v37 & v38) == 0)
  {
    v34 = v35;
  }

LABEL_60:
  v39 = *v34;
  if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 548);
    *buf = 136315650;
    *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 170;
    *&buf[18] = 1024;
    *&buf[20] = v40;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d   Element = %u", buf, 0x18u);
  }

  if (!*(a1 + 664))
  {
    v52 = sub_5544(19);
    v53 = sub_5544(39);
    v54 = 0;
    *buf = 0x100000002;
    v55 = *(v52 + 8);
    while (1)
    {
      v56 = *&buf[v54];
      if (((v55 & v56) != 0) != ((*(v53 + 8) & v56) != 0))
      {
        break;
      }

      v54 += 4;
      if (v54 == 8)
      {
        goto LABEL_94;
      }
    }

    if ((v55 & v56) == 0)
    {
      v52 = v53;
    }

LABEL_94:
    v60 = *v52;
    if (v60 && os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 172;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d   SW Volume: disabled", buf, 0x12u);
    }
  }

  *__p = 1987013732;
  *&__p[4] = *(a1 + 544);
  if (*(a1 + 626) == 1 && (*(a1 + 656) = v67, v41 = v65, sub_594E4(v65) != *(a1 + 656)))
  {
    (*(*&v41->_os_unfair_lock_opaque + 48))(v41, __p, 0, 0, 4, &v67);
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  if (*(a1 + 664))
  {
    v43 = *(a1 + 680);
    if (v43)
    {
      v44 = std::__shared_weak_count::lock(v43);
      if (v44)
      {
        v45 = *(a1 + 672);
        if (v45)
        {
          v46 = (*(*v45 + 136))(*(a1 + 672));
          if (v46 == 1935895666)
          {
            v4 = sub_E9780(a1 + 568, v4);
          }

          v47 = sub_5544(19);
          v48 = sub_5544(39);
          v49 = 0;
          *buf = 0x100000002;
          v50 = *(v47 + 8);
          while (1)
          {
            v51 = *&buf[v49];
            if (((v50 & v51) != 0) != ((*(v48 + 8) & v51) != 0))
            {
              break;
            }

            v49 += 4;
            if (v49 == 8)
            {
              goto LABEL_100;
            }
          }

          if ((v50 & v51) == 0)
          {
            v47 = v48;
          }

LABEL_100:
          v61 = *v47;
          if (v61 && os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v62 = "dB";
            *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 198;
            *buf = 136315906;
            if (v46 == 1935895666)
            {
              v62 = "scalar";
            }

            *&buf[18] = 2048;
            *&buf[20] = v4;
            v72 = 2080;
            v73 = *&v62;
            _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d   Input SW Volume: %f %s", buf, 0x26u);
          }

          if (v4 != *(a1 + 660) || (*(a1 + 688) & 1) == 0)
          {
            (*(*v45 + 16))(v45, v4);
            v59 = 0;
            *(a1 + 660) = v4;
            *(a1 + 688) = 1;
LABEL_86:
            sub_1A8C0(v44);
LABEL_87:
            if (((v42 | v59) & 1) == 0)
            {
              v68 = *__p;
              v69 = *&__p[8];
              memset(buf, 0, 24);
              sub_2C8104(buf, &v68, &v70, 1uLL);
            }

            goto LABEL_89;
          }

LABEL_85:
          v59 = 1;
          if (!v44)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }
      }
    }

    else
    {
      v44 = 0;
    }

    v57 = sub_5544(14);
    v58 = *v57;
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 210;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: software volume is required but we have a NULL software volume command", buf, 0x12u);
    }

    goto LABEL_85;
  }

LABEL_89:
  if (v66)
  {
    sub_1A8C0(v66);
  }
}