uint64_t sub_41CF0C(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v4 = 0;
  v3 = 0x707472755354656ELL;
  (*(*a1 + 48))(a1, &v3, 0, 0, 4, &v4 + 4);
  return 1;
}

void sub_41CF88(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_41CFC4(uint64_t a1)
{
  v2 = (*(*a1 + 112))(a1);
  if ((v2 & 0x100000000) == 0)
  {
    return 0;
  }

  if (v2 == 1701869160)
  {
    return 1667982960;
  }

  if (v2 != 1701865584)
  {
    return 0;
  }

  result = (*(*a1 + 360))(a1);
  if (result)
  {
    return 1634231920;
  }

  return result;
}

void *sub_41D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_365018(&v14, a1);
  sub_41D2EC(&v16, v14, COERCE_DOUBLE(1735159650));
  v3 = v13;
  v13[0] = &off_6DDB78;
  v13[1] = 0;
  if (v18)
  {
    v3 = &v16;
  }

  v4 = v3[1];
  v3[1] = 0;
  v19 = &off_6DDB78;
  theDict = v4;
  sub_8AAAC(v13);
  if (v18 == 1)
  {
    sub_8AAAC(&v16);
  }

  if (v15)
  {
    sub_1A8C0(v15);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = Mutable;
  *(a2 + 8) = 257;
  if (sub_3068D8(theDict, @"BT_GainUplink"))
  {
    sub_306900(&v16, theDict, @"BT_GainUplink");
    v6 = sub_3069F8(v17);
    v7 = *&v6;
    sub_8AAAC(&v16);
    sub_2E74D8(a2, @"gain", v7);
  }

  if (sub_3068D8(theDict, @"BT_AGCUplink"))
  {
    sub_306900(&v16, theDict, @"BT_AGCUplink");
    v8 = sub_34D460(v17);
    sub_8AAAC(&v16);
    sub_A1CA4(a2, @"agc", v8);
  }

  if (sub_3068D8(theDict, @"BT_NSdBUplink"))
  {
    sub_306900(&v16, theDict, @"BT_NSdBUplink");
    v9 = sub_3069F8(v17);
    v10 = *&v9;
    sub_8AAAC(&v16);
    sub_2E74D8(a2, @"noise suppression", v10);
  }

  if (sub_3068D8(theDict, @"BT_EQValuesUplink"))
  {
    sub_41D384(&v16, theDict, @"BT_EQValuesUplink");
    v11 = v17;
    sub_8AAAC(&v16);
    if (v11)
    {
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"eq", v11);
      }
    }
  }

  return sub_8AAAC(&v19);
}

void sub_41D2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_8AAAC(va);
  _Unwind_Resume(a1);
}

void *sub_41D2EC(uint64_t a1, uint64_t a2, double a3)
{
  v10 = 1650750320;
  v11 = a3;
  result = sub_339F80(&v6, a2);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (v9 == 1)
  {
    v5 = v8;
    v8 = 0;
    *a1 = &off_6DDB78;
    *(a1 + 8) = v5;
    *(a1 + 16) = 1;
    return sub_8AAAC(&v7);
  }

  return result;
}

uint64_t sub_41D384(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &off_6D3230;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFArrayGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return sub_306F94(v6, v7);
      }
    }
  }

  return result;
}

void sub_41D444(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

uint64_t sub_41D480(uint64_t a1)
{
  sub_365018(&v5, a1);
  v3 = 0x676C6F6262647370;
  v4 = 0;
  v1 = (*(*v5 + 16))(v5, &v3);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v1;
}

void sub_41D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_41D518(uint64_t a1)
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

BOOL sub_41D594(uint64_t a1, void *a2)
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
    v8 = v5 != 1885892674 && v5 != 1886152041 && v5 != 1886152047;
  }

  else
  {
    v8 = 0;
  }

  sub_1A8C0(v4);
  return v8;
}

void sub_41D614(uint64_t a1)
{
  sub_367FA8(a1);

  operator delete();
}

uint64_t sub_41D650(uint64_t a1)
{
  v2 = 2003068262;
  v3 = (*(*a1 + 112))(a1);
  if ((v3 & 0x100000000) != 0)
  {
    if (v3 == 1701869160)
    {
      return 1667982960;
    }

    else if (v3 == 1701865584 && (*(*a1 + 360))(a1))
    {
      return 1634231920;
    }
  }

  return v2;
}

uint64_t sub_41D70C(uint64_t a1, signed int a2)
{
  v4 = 1;
  if (a2 <= 1987208038)
  {
    if (a2 == 1751212899)
    {
      v21 = sub_34AEE4(a1);
      sub_365018(buf, a1);
      __dst[0] = 0x676C6F626C6C7370;
      LODWORD(__dst[1]) = 0;
      v22 = sub_59410(*buf);
      *(&v25 + 1) = v23;
      *&v25 = v22;
      v24 = v25 >> 32;
      if ((v24 & 0x100000000) != 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v26)
      {
        v4 = (*(*a1 + 160))(a1) & (v21 != 2);
      }

      else
      {
        v4 = 0;
      }

      v29 = sub_5544(29);
      v30 = sub_5544(24);
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
          if ((v32 & 1) == 0)
          {
            return v4;
          }

          goto LABEL_48;
        }
      }

      if ((v32 & v33) == 0)
      {
        v29 = v30;
      }

      if ((*(v29 + 8) & 1) == 0)
      {
        return v4;
      }

LABEL_48:
      v34 = *v29;
      if (!v34 || !os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        return v4;
      }

      if (*(a1 + 303) < 0)
      {
        sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
      }

      else
      {
        *__dst = *(a1 + 280);
        v53 = *(a1 + 296);
      }

      v43 = SHIBYTE(v53);
      v44 = __dst[0];
      sub_22170(__p, 0x68616363u);
      v45 = __dst;
      *&buf[4] = "Port_BluetoothHFPOutput_Aspen.cpp";
      if (v43 < 0)
      {
        v45 = v44;
      }

      v46 = "is not";
      if (v4)
      {
        v46 = "is";
      }

      *&buf[12] = 1024;
      *&buf[14] = 159;
      v47 = __p[0];
      *buf = 136316418;
      v55 = 2080;
      if (v51 >= 0)
      {
        v47 = __p;
      }

      v56 = v45;
      v57 = 2080;
      v58 = v46;
      v59 = 2048;
      v60 = v26;
      v61 = 2080;
      v62 = v47;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port %s %s allowed (%lu) for mode %s", buf, 0x3Au);
    }

    else
    {
      if (a2 != 1987080813)
      {
        return v4;
      }

      v5 = (*(*a1 + 112))(a1);
      v6 = v5;
      v4 = 0;
      if ((v5 & 0x100000000) != 0 && v5 == 1701869160)
      {
        strcpy(buf, "atbtbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = sub_59410(a1);
        *(&v9 + 1) = v8;
        *&v9 = v7;
        v4 = ((v9 >> 32) >> 32) & (HIDWORD(v7) != 0);
      }

      v10 = sub_5544(29);
      v11 = sub_5544(24);
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
            return v4;
          }

          goto LABEL_35;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

      if ((*(v10 + 8) & 1) == 0)
      {
        return v4;
      }

LABEL_35:
      v28 = *v10;
      if (!v28 || !os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        return v4;
      }

      if (*(a1 + 303) < 0)
      {
        sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
      }

      else
      {
        *__dst = *(a1 + 280);
        v53 = *(a1 + 296);
      }

      if (v53 >= 0)
      {
        v40 = __dst;
      }

      else
      {
        v40 = __dst[0];
      }

      if ((v6 & 0x100000000) != 0)
      {
        v41 = __p;
        sub_22170(__p, v6);
        if (v51 < 0)
        {
          v41 = __p[0];
        }
      }

      else
      {
        v41 = "none";
      }

      sub_22170(v48, 0x7670726Du);
      if (v49 >= 0)
      {
        v42 = v48;
      }

      else
      {
        v42 = v48[0];
      }

      *buf = 136316418;
      *&buf[4] = "Port_BluetoothHFPOutput_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 148;
      v55 = 2080;
      v56 = v40;
      v57 = 2080;
      v58 = v41;
      v59 = 2080;
      v60 = v42;
      v61 = 1024;
      LODWORD(v62) = v4;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port %s (endpoint type %s) allowed for mode %s: %u", buf, 0x36u);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if ((v6 & 0x100000000) == 0)
      {
        goto LABEL_90;
      }
    }

    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_90:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__dst[0]);
    }

    return v4;
  }

  if (a2 == 1987208039 || a2 == 1987211117)
  {
    v15 = sub_34B0F0(a1);
    if (v15)
    {
      v16 = sub_5544(29);
      v17 = sub_5544(24);
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
          goto LABEL_28;
        }
      }

      if ((v19 & v20) == 0)
      {
        v16 = v17;
      }

LABEL_28:
      v27 = *v16;
      if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 303) < 0)
        {
          sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
        }

        else
        {
          *__dst = *(a1 + 280);
          v53 = *(a1 + 296);
        }

        v35 = SHIBYTE(v53);
        v36 = __dst[0];
        sub_22170(__p, a2);
        v37 = __dst;
        if (v35 < 0)
        {
          v37 = v36;
        }

        if (v51 >= 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "Port_BluetoothHFPOutput_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 165;
        v55 = 2080;
        v56 = v37;
        v57 = 2080;
        v58 = v38;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port %s is not allowed for mode %s.", buf, 0x26u);
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v53) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    return v15 ^ 1u;
  }

  return v4;
}

void sub_41DDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_41DDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_365018(&v11, a1);
  sub_41D2EC(&v13, v11, COERCE_DOUBLE(1735159650));
  v3 = v10;
  v10[0] = &off_6DDB78;
  v10[1] = 0;
  if (v15)
  {
    v3 = &v13;
  }

  v4 = v3[1];
  v3[1] = 0;
  v16 = &off_6DDB78;
  theDict = v4;
  sub_8AAAC(v10);
  if (v15 == 1)
  {
    sub_8AAAC(&v13);
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a2 = Mutable;
  *(a2 + 8) = 257;
  if (sub_3068D8(theDict, @"BT_GainDownlink"))
  {
    sub_306900(&v13, theDict, @"BT_GainDownlink");
    v6 = sub_3069F8(v14);
    v7 = *&v6;
    sub_8AAAC(&v13);
    sub_2E74D8(a2, @"gain", v7);
  }

  if (sub_3068D8(theDict, @"BT_EQValuesDownlink"))
  {
    sub_41D384(&v13, theDict, @"BT_EQValuesDownlink");
    v8 = v14;
    sub_8AAAC(&v13);
    if (v8)
    {
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"eq", v8);
      }
    }
  }

  return sub_8AAAC(&v16);
}

void sub_41DF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A1D30(v9);
  sub_8AAAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_41DFC0(uint64_t a1)
{
  sub_365018(&v5, a1);
  v3 = 0x676C6F6262647370;
  v4 = 0;
  v1 = (*(*v5 + 16))(v5, &v3);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v1;
}

void sub_41E040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_41E058(uint64_t a1)
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

BOOL sub_41E0D4(uint64_t a1, void *a2)
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
    v8 = v5 != 1885892674 && v5 != 1886152041 && v5 != 1886152047;
  }

  else
  {
    v8 = 0;
  }

  sub_1A8C0(v4);
  return v8;
}

void sub_41E154(void *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v43[0] = *a2;
      LODWORD(v43[1]) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 != 0) == (a4 == 0))
  {
    v36 = sub_5544(14);
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v43[0] = *a2;
      LODWORD(v43[1]) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    *v37 = &off_6DDDD0;
    v37[2] = 561211770;
  }

  if (!a6)
  {
    v38 = sub_5544(14);
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      v43[0] = *a2;
      LODWORD(v43[1]) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    v39 = __cxa_allocate_exception(0x10uLL);
    *v39 = &off_6DDDD0;
    v39[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v40 = sub_5544(14);
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      v43[0] = *a2;
      LODWORD(v43[1]) = *(a2 + 8);
      sub_22CE0(&__p);
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    *v41 = &off_6DDDD0;
    v41[2] = 1852797029;
  }

  if (*a2 == 1952609377)
  {
    v12 = a1[25];
    __p = a1[24];
    v46 = &v12->__vftable;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, &__p, "", 262);
    strcpy(v43, "atbtbolg");
    BYTE1(v43[1]) = 0;
    WORD1(v43[1]) = 0;
    v14 = sub_59410(*buf);
    if (v14 || (v13 & 1) == 0)
    {
      v42 = __cxa_allocate_exception(0x10uLL);
      *v42 = &off_6DDDD0;
      v42[2] = v14;
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    v15 = HIDWORD(v14);
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v16 = *a6;
    if (a4)
    {
      v17 = *a4;
    }

    else
    {
      v17 = 1;
    }

    if (v16 != v15 && v16)
    {
      v18 = sub_5544(24);
      v19 = sub_5544(29);
      v20 = 0;
      *buf = 0x100000002;
      v21 = *(v18 + 8);
      while (1)
      {
        v22 = *&buf[v20];
        if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
        {
          break;
        }

        v20 += 4;
        if (v20 == 8)
        {
          goto LABEL_28;
        }
      }

      if ((v21 & v22) == 0)
      {
        v18 = v19;
      }

LABEL_28:
      v23 = *v18;
      if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *a6;
        *buf = 136316162;
        *&buf[4] = "Port_BluetoothHFPOutput_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 1024;
        *&buf[20] = v15;
        LOWORD(v50) = 1024;
        *(&v50 + 2) = v17;
        HIWORD(v50) = 1024;
        v51 = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d oldPropertyValue: %u; shouldPrioritizeThisPort: %u, newValue: %u.", buf, 0x24u);
      }

      v25 = a1[25];
      __p = a1[24];
      v46 = &v25->__vftable;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_5659C(buf, &__p, "", 272);
      strcpy(v43, "atbtbolg");
      BYTE1(v43[1]) = 0;
      WORD1(v43[1]) = 0;
      (*(**buf + 48))(*buf, v43, a3, a4, a5, a6);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_weak(v25);
      }

      if (v17 == 1)
      {
        v26 = a1[11];
        v47 = a1[10];
        v48 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_22ED54(v43, &v47, 1);
        *buf = 1717793397;
        *&buf[8] = &buf[8];
        *&buf[16] = &buf[8];
        v50 = 0;
        v27 = v44;
        if (v44)
        {
          v29 = v43[0];
          v28 = v43[1];
          v30 = *(v43[0] + 8);
          v31 = *v43[1];
          *(v31 + 8) = v30;
          *v30 = v31;
          v32 = *&buf[8];
          *(*&buf[8] + 8) = v28;
          *v28 = v32;
          *&buf[8] = v29;
          *(v29 + 8) = &buf[8];
          v50 = v27;
          v44 = 0;
        }

        sub_246958(&__p, buf, 1);
        sub_65310(&buf[8]);
        sub_65310(v43);
        if (v48)
        {
          std::__shared_weak_count::__release_weak(v48);
        }

        v33 = sub_809C0();
        sub_11ABFC(v33, &__p, 0);
        sub_D169C(v46);
      }
    }
  }

  else
  {

    sub_365BAC(a1, a2, a3, a4, a5, a6);
  }
}

void sub_41EA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_65310(v18);
  sub_65310(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(a1);
}

void sub_41EA98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v23 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v21 = *a2;
      v24 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = &off_6DDDD0;
    v17[2] = 561211770;
  }

  if (!a6)
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v25 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = 561211770;
  }

  if (*a2 == 1952609377)
  {
    v12 = a1[24];
    v13 = a1[25];
    __p[0] = v12;
    __p[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, __p, "", 241);
    (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
    if (v28)
    {
      sub_1A8C0(v28);
    }

    if (v13)
    {

      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {

    sub_366384(a1, a2, a3, a4, a5, a6);
  }
}

void sub_41EFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t sub_41EFF0(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v18 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *a2;
      v19 = a2[2];
      sub_22CE0(__p);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = 561211770;
  }

  if (*a2 == 1952609377)
  {
    v8 = a1[24];
    v9 = a1[25];
    __p[0] = v8;
    __p[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, __p, "", 221);
    v10 = (*(**buf + 32))(*buf, a2, a3, a4);
    if (v22)
    {
      sub_1A8C0(v22);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    return v10;
  }

  else
  {

    return sub_366C68(a1, a2, a3, a4);
  }
}

void sub_41F3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t sub_41F3D4(uint64_t a1, int *a2)
{
  if (*a2 == 1952609377)
  {
    v3 = *(a1 + 200);
    v6[0] = *(a1 + 192);
    v6[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(&v7, v6, "", 200);
    v4 = (*(*v7 + 24))(v7, a2);
    if (v8)
    {
      sub_1A8C0(v8);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    return v4;
  }

  else
  {

    return sub_3672D8(a1, a2);
  }
}

void sub_41F4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_41F4DC(uint64_t a1, int *a2)
{
  if (*a2 == 1952609377)
  {
    v3 = *(a1 + 200);
    v6[0] = *(a1 + 192);
    v6[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(&v7, v6, "", 182);
    v4 = (*(*v7 + 16))(v7, a2);
    if (v8)
    {
      sub_1A8C0(v8);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    return v4;
  }

  else
  {

    return sub_36754C(a1, a2);
  }
}

void sub_41F5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_41F5E4(uint64_t a1)
{
  sub_367FA8(a1);

  operator delete();
}

void sub_41F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_FC3EC(*(a5 + 8), 1))
  {
    if (sub_FC3EC(*(a5 + 8), 0))
    {
      v8 = sub_14BD5C(a5, 0);
      v45 = sub_14BD5C(a5, 1);
      sub_25704(&v58, (v45 + 16), "", 60);
      sub_25704(&v56, v8, "", 61);
      v9 = *(v56 + 200);
      if (v9)
      {
        v10 = v58;
        v11 = *(v58 + 144);
        v12 = v56;
        v13 = *(v56 + 192);
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = std::__shared_weak_count::lock(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (v14 && v13)
        {
          v15 = v13;
          sub_CE1E4(&v55, v13, v12, a2, v8[7], *(a2 + 12));
          v16 = v57;
          *buf = v12;
          *&buf[8] = v57;
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_FC464(&v55, buf, v15);
          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          v17 = *(v10 + 200);
          if (v17)
          {
            v18 = *(v10 + 192);
            atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v19 = std::__shared_weak_count::lock(v17);
            std::__shared_weak_count::__release_weak(v17);
            if (v19)
            {
              if (v18)
              {
                v20 = (*(*&v18->_os_unfair_lock_opaque + 240))(v18, v11);
                v53 = 0x6F7574706D757465;
                v54 = v20;
                if ((*(*&v18->_os_unfair_lock_opaque + 24))(v18, &v53))
                {
                  operator new();
                }

                sub_2FBAF8(v18, 1, *(a2 + 12), *(a2 + 184), *(v45 + 56), a3);
                sub_C4A80(&v52, v10, a2, *(v45 + 56), *(a2 + 12), 0);
                v21 = v59;
                *buf = v10;
                *&buf[8] = v59;
                if (v59)
                {
                  atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                sub_FC464(&v52, buf, v18);
                if (v21)
                {
                  std::__shared_weak_count::__release_weak(v21);
                }

                (*(*&v18->_os_unfair_lock_opaque + 248))(&v50, v18, 1, v11);
                (*(*&v18->_os_unfair_lock_opaque + 256))(&v49, v18, 1, v11);
                (*(*&v15->_os_unfair_lock_opaque + 256))(&v48, v15, 0, v12[36]);
                if (v51 && v51->__shared_owners_ != -1)
                {
                  if (v15 != v18)
                  {
                    v60 = v12;
                    v61 = &v16->__vftable;
                    if (v16)
                    {
                      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    }

                    sub_CF934(&__src, &v60, 1);
                    operator new();
                  }

                  v60 = &v60;
                  v61 = &v60;
                  v62 = 0;
                  if (v16)
                  {
                    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  operator new();
                }

                v29 = sub_5544(14);
                v30 = *v29;
                if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "RoutingHandler_PlaybackAndRecord_Unk.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 101;
                  _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate mute control.", buf, 0x12u);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Unable to locate mute control.");
              }
            }
          }

          v22 = sub_5544(14);
          v23 = *v22;
          if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            (*(*v10 + 144))(&__src, v10);
            v24 = SHIBYTE(v47);
            v25 = __src;
            sub_22170(&v60, *(v10 + 144));
            p_src = &__src;
            if (v24 < 0)
            {
              p_src = v25;
            }

            if (v62 >= 0)
            {
              v27 = &v60;
            }

            else
            {
              v27 = v60;
            }

            *buf = 136315906;
            *&buf[4] = "RoutingHandler_PlaybackAndRecord_Unk.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 82;
            v64 = 2080;
            v65 = p_src;
            v66 = 2080;
            v67 = v27;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [outputIODevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
            if (SHIBYTE(v62) < 0)
            {
              operator delete(v60);
            }

            if (SHIBYTE(v47) < 0)
            {
              operator delete(__src);
            }
          }

          v28 = __cxa_allocate_exception(0x10uLL);
          *v28 = &off_6DDDD0;
          v28[2] = 2003329396;
        }
      }

      else
      {
        v12 = v56;
      }

      v38 = sub_5544(14);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
      {
        (*(*v12 + 144))(&__src, v12);
        v40 = SHIBYTE(v47);
        v41 = __src;
        sub_22170(&v60, v12[36]);
        v42 = &__src;
        if (v40 < 0)
        {
          v42 = v41;
        }

        if (v62 >= 0)
        {
          v43 = &v60;
        }

        else
        {
          v43 = v60;
        }

        *buf = 136315906;
        *&buf[4] = "RoutingHandler_PlaybackAndRecord_Unk.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        v64 = 2080;
        v65 = v42;
        v66 = 2080;
        v67 = v43;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [inputIODevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(v60);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(__src);
        }
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = &off_6DDDD0;
      v44[2] = 2003329396;
    }

    v35 = sub_5544(14);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_PlaybackAndRecord_Unk.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 55;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v37, "Precondition failure.");
  }

  v32 = sub_5544(14);
  v33 = *v32;
  if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "RoutingHandler_PlaybackAndRecord_Unk.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 54;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  v34 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v34, "Precondition failure.");
}

void sub_420E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, std::__shared_weak_count *a62, uint64_t a63)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a72)
  {
    operator delete(a72);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  if (STACK[0x200])
  {
    sub_1A8C0(STACK[0x200]);
  }

  if (STACK[0x210])
  {
    sub_1A8C0(STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4213FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_F90FC(result, a4);
  }

  return result;
}

uint64_t sub_4214F8(uint64_t result)
{
  if (atomic_load((result + 8)))
  {
    CAVerboseAbort();
  }

  if (!atomic_load((result + 8)))
  {
    v3 = result;
    v4 = pthread_attr_init(&v16);
    if (v4)
    {
      v7 = v4;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v13 = "CAPThread.cpp";
      v14 = 1024;
      v15 = 255;
      v8 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v16, 2);
      if (v5)
      {
        v7 = v5;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v13 = "CAPThread.cpp";
        v14 = 1024;
        v15 = 258;
        v8 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v16, &v11);
        v11.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v16, &v11);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v16, 4);
        }

        v10 = 0;
        v6 = pthread_create(&v10, &v16, sub_421764, v3);
        if (!v6 && v10)
        {
          atomic_store(v10, (v3 + 8));
          return pthread_attr_destroy(&v16);
        }

        v7 = v6;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v7;
        }

        *buf = 136315394;
        v13 = "CAPThread.cpp";
        v14 = 1024;
        v15 = 272;
        v8 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_421764(uint64_t a1)
{
  atomic_store(pthread_self(), (a1 + 8));
  if (*(a1 + 40))
  {
    pthread_setname_np((a1 + 40));
  }

  if (*(a1 + 121) != 1)
  {
    goto LABEL_6;
  }

  *(a1 + 121) = 1;
  if (!atomic_load((a1 + 8)))
  {
    goto LABEL_6;
  }

  *policy_info = *(a1 + 108);
  v3 = *(a1 + 120);
  v11 = *(a1 + 116);
  v12 = v3;
  v4 = atomic_load((a1 + 8));
  v5 = pthread_mach_thread_np(v4);
  if (thread_policy_set(v5, 2u, policy_info, 4u))
  {
    v8 = CAVerboseAbort();
    __cxa_begin_catch(v8);
    __cxa_end_catch();
  }

  else
  {
LABEL_6:
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = v6(*(a1 + 32));
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  atomic_store(0, (a1 + 8));
  if (*(a1 + 123) == 1)
  {
    (*(*a1 + 8))(a1);
  }

  return v7;
}

_opaque_pthread_t *sub_4218A4(_opaque_pthread_t *result)
{
  if (result)
  {
    v1 = result;
    thread_info_outCnt = 10;
    v2 = pthread_mach_thread_np(result);
    thread_info(v2, 3u, thread_info_out, &thread_info_outCnt);
    switch(v11)
    {
      case 4:
        thread_info_outCnt = 4;
        v5 = pthread_mach_thread_np(v1);
        thread_info(v5, 0xCu, v9, &thread_info_outCnt);
        return v9[1];
      case 2:
        thread_info_outCnt = 5;
        v4 = pthread_mach_thread_np(v1);
        thread_info(v4, 0xBu, v8, &thread_info_outCnt);
        return v8[1];
      case 1:
        thread_info_outCnt = 5;
        v3 = pthread_mach_thread_np(v1);
        thread_info(v3, 0xAu, v7, &thread_info_outCnt);
        return v7[1];
      default:
        return 0;
    }
  }

  return result;
}

void sub_42198C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 55);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 55))
    {
      goto LABEL_3;
    }

LABEL_6:
    snprintf(__str, 0x13uLL, "%p", a1);
    sub_53E8(&v9, __str);
    v5 = std::string::insert(&v9, 0, "[ addr: ", 8uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v10, " ]", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::string::operator=((a1 + 32), &v11);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + 55) & 0x80) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    sub_54A0(a2, *(a1 + 32), *(a1 + 40));
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  *a2 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 48);
LABEL_14:
  os_unfair_lock_unlock((a1 + 24));
}

void sub_421AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

  os_unfair_lock_unlock(v28 + 6);
  _Unwind_Resume(a1);
}

_BYTE *sub_421B5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 16) + 80;
  v5 = *(a1 + 8);
  if (!a4)
  {
    dispatch_get_global_queue(0, 0);
    operator new();
  }

  sub_49C48(&v9);
  if (AudioObjectPropertiesChanged())
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "HP_Object.cpp";
        v11 = 1024;
        v12 = 281;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theError): got an error calling the listeners", buf, 0x12u);
      }
    }
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    sub_1DB63C(result);
    operator delete();
  }

  return result;
}

void sub_421D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB848(va, 0);
  _Unwind_Resume(a1);
}

uint64_t **sub_421DA8(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        *(v2 + 8) = v3;
        operator delete(v3);
      }

      operator delete();
    }

    operator delete();
  }

  return result;
}

uint64_t **sub_421E2C(uint64_t a1)
{
  v7 = a1;
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = -1431655765 * ((*(*a1 + 8) - **a1) >> 2);
  if (AudioObjectPropertiesChanged())
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HP_Object.cpp";
        v10 = 1024;
        v11 = 291;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theError): got an error calling the listeners", buf, 0x12u);
      }
    }
  }

  return sub_421DA8(&v7);
}

uint64_t sub_422208(_DWORD *a1, uint8x8_t a2)
{
  a2.i32[0] = a1[3];
  v3 = vrev64_s16(*&vmovl_u8(a2));
  v10 = vuzp1_s8(v3, v3).u32[0];
  v11 = 0;
  v8 = 0x676C6F626C6E616DLL;
  v9 = 0;
  theString = 0;
  v6 = 8;
  (*(*a1 + 72))(a1, &v8, 0, 0, &v6, &theString);
  buffer[0] = 0;
  if (theString)
  {
    usedBufLen = 0;
    v13.length = CFStringGetLength(theString);
    v13.location = 0;
    CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, buffer, 255, &usedBufLen);
    buffer[usedBufLen] = 0;
    CFRelease(theString);
  }

  return printf("AudioObjectID:\t\t0x%X\n\tAudioClassID:\t'%s'\n\tName:\t\t\t%s\n", a1[2], &v10, buffer);
}

void sub_422348(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x4222A0);
  }

  _Unwind_Resume(a1);
}

void sub_422360(uint64_t a1)
{
  sub_13E5EC(a1);

  operator delete();
}

void sub_4223E4(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x4223D8);
}

_BYTE *sub_422418(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 32))();
  }

  return a1;
}

void sub_422474(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v109 = &v109;
  v110 = &v109;
  v111 = 0;
  v108[0] = 0;
  v108[1] = 0;
  v107 = v108;
  memset(v106, 0, sizeof(v106));
  v97 = a2[3];
  v3 = sub_5544(20);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(*a2 + 32);
        *buf = 136315650;
        *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 69;
        v119 = 2048;
        v120 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Connection list size %lu.", buf, 0x1Cu);
      }
    }
  }

  v6 = *(*a2 + 24);
  if (v6 == (*a2 + 16))
  {
LABEL_162:
    if (v111)
    {
      v66 = v110;
      if (&v109 != v110)
      {
        *v128 = v128;
        *&v128[8] = v128;
        v67 = 1;
        v129 = 0;
        while (1)
        {
          v68 = v67;
          if (v67)
          {
            v69 = 4;
          }

          else
          {
            v69 = 7;
          }

          v70 = &v66[v69];
          v71 = v66[v69];
          if (v70[1] != v71)
          {
            v72 = 0;
            v73 = 1;
            do
            {
              sub_135EA8(v128, v128, *(v71 + 24 * v72 + 8), v71 + 24 * v72);
              v72 = v73;
              v71 = *v70;
            }

            while (0xAAAAAAAAAAAAAAABLL * ((v70[1] - *v70) >> 3) > v73++);
          }

          v67 = 0;
          if ((v68 & 1) == 0)
          {
            v75 = sub_102988(a2[3]);
            if (*(a2 + 268))
            {
              v76 = a2[66];
            }

            else
            {
              v76 = v75;
            }

            if (a2[32])
            {
              v77 = 0;
            }

            else
            {
              v77 = a2[31] == 1986291046;
            }

            v78 = v77;
            LODWORD(__p) = v76;
            BYTE4(__p) = 0;
            BYTE5(__p) = v78;
            operator new();
          }
        }
      }

      v79 = *a2;
      v100 = a2[3];
      sub_103670(v105, *(a1 + 8), a2);
      sub_168F08(&v109);
      operator new();
    }

    v94 = sub_5544(14);
    v95 = *v94;
    if (*v94 && os_log_type_enabled(*v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 218;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): could not get any IO devices for multi route", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  while (1)
  {
    sub_25704(v105, v6 + 2, "", 72);
    sub_25704(&v116, v6 + 4, "", 73);
    v7 = v105[0];
    v8 = *(v105[0] + 36);
    if (v8 == 1885433888)
    {
      v9 = &v116;
    }

    else
    {
      v10 = v116;
      if (v116[36]._os_unfair_lock_opaque != 1885433888)
      {
        v87 = sub_5544(14);
        v88 = *v87;
        if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v128, v7[36]._os_unfair_lock_opaque);
          v89 = SHIBYTE(v129);
          v90 = *v128;
          sub_22170(__src, v10[36]._os_unfair_lock_opaque);
          v91 = v128;
          if (v89 < 0)
          {
            v91 = v90;
          }

          if (v127 >= 0)
          {
            v92 = __src;
          }

          else
          {
            v92 = *__src;
          }

          *buf = 136315906;
          *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 80;
          v119 = 2080;
          v120 = v91;
          v121 = 2080;
          v122 = v92;
          _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Database error: encountered a connection for which neither source nor destination is kVirtualAudioPortTypeAP (src:  %s; dst: %s).", buf, 0x26u);
          if (v127 < 0)
          {
            operator delete(*__src);
          }

          if (SHIBYTE(v129) < 0)
          {
            operator delete(*v128);
          }
        }

        v93 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v93, "Database error: encountered a connection for which neither source nor destination is kVirtualAudioPortTypeAP (src: %s; dst: %s).");
      }

      v9 = v105;
    }

    LODWORD(v115) = (*v9)[36];
    v11 = v115;
    sub_75788(&v107, v115);
    v12 = sub_5544(20);
    if (*(v12 + 8))
    {
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          sub_14B79C(v128, v6 + 2);
          v14 = v128;
          if (v129 < 0)
          {
            v14 = *v128;
          }

          *buf = 136315650;
          *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 89;
          v119 = 2080;
          v120 = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Processing connection %s.", buf, 0x1Cu);
          if (SHIBYTE(v129) < 0)
          {
            operator delete(*v128);
          }
        }
      }
    }

    v15 = *&(*v9)[50]._os_unfair_lock_opaque;
    if (!v15 || (v16 = *&(*v9)[48]._os_unfair_lock_opaque, atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed), v17 = std::__shared_weak_count::lock(v15), std::__shared_weak_count::__release_weak(v15), (v103 = v17) == 0) || !v16)
    {
      v80 = sub_5544(14);
      v81 = *v80;
      if (*v80 && os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
      {
        (*(*&(*v9)->_os_unfair_lock_opaque + 144))(v128);
        v82 = SHIBYTE(v129);
        v83 = *v128;
        sub_22170(__src, (*v9)[36]._os_unfair_lock_opaque);
        v84 = v128;
        if (v82 < 0)
        {
          v84 = v83;
        }

        if (v127 >= 0)
        {
          v85 = __src;
        }

        else
        {
          v85 = *__src;
        }

        *buf = 136315906;
        *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 98;
        v119 = 2080;
        v120 = v84;
        v121 = 2080;
        v122 = v85;
        _os_log_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [activeDevice is NULL]: could not get device for port \\%s\\ (type: %s).", buf, 0x26u);
        if (v127 < 0)
        {
          operator delete(*__src);
        }

        if (SHIBYTE(v129) < 0)
        {
          operator delete(*v128);
        }
      }

      v86 = __cxa_allocate_exception(0x10uLL);
      *v86 = &off_6DDDD0;
      v86[2] = 2003329396;
    }

    if ((*v9)[76]._os_unfair_lock_opaque == 1752709424)
    {
      sub_300D58(a2[3], v16);
    }

    if (v8 != 1885433888)
    {
      sub_147688();
      if (byte_6E6560)
      {
        v25 = sub_3F8E40(*(a2 + 13), a2[3], v11);
        v7 = v105[0];
        v26 = *(v105[0] + 25);
        *v128 = *(v105[0] + 24);
        *&v128[8] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_5659C(buf, v128, "", 109);
        sub_300DD0((v25 > 0xFFu) & v25, *buf);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }
      }

      else
      {
        v7 = v105[0];
      }

      sub_CE1E4(v128, v16, v7, a2, v6[9], a2[3]);
      *__src = 0;
      v126 = 0;
      v27 = v6[3];
      if (v27)
      {
        v28 = std::__shared_weak_count::lock(v27);
        v29 = v28;
        if (v28)
        {
          v30 = v6[2];
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *__src = v30;
          v126 = v28;
          sub_1A8C0(v28);
        }

        else
        {
          *__src = 0;
          v126 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      sub_301DE0(buf, v128, __src);
      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      v31 = *buf;
      v32 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          sub_9EF84(v106, v31++);
        }

        while (v31 != v32);
        v31 = *buf;
      }

      if (v31)
      {
        *&buf[8] = v31;
        operator delete(v31);
      }

      v18 = sub_304BB8(v16, &v109);
      if (!v18)
      {
        v45 = sub_5544(20);
        if (*(v45 + 8))
        {
          v46 = *v45;
          if (*v45)
          {
            if (os_log_type_enabled(*v45, OS_LOG_TYPE_DEBUG))
            {
              sub_23148(__src, v16 + 2);
              if (v127 >= 0)
              {
                v47 = __src;
              }

              else
              {
                v47 = *__src;
              }

              sub_23148(&__p, v7 + 2);
              v48 = v114;
              v49 = __p;
              sub_128174(&v112, *v128, *&v128[8]);
              p_p = &__p;
              if (v48 < 0)
              {
                p_p = v49;
              }

              v51 = &v112;
              if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v51 = v112.__r_.__value_.__r.__words[0];
              }

              *buf = 136316162;
              *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 154;
              v119 = 2080;
              v120 = v47;
              v121 = 2080;
              v122 = p_p;
              v123 = 2080;
              v124 = v51;
              _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding device description for device %s using port %s and sub-ports %s.", buf, 0x30u);
              if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v112.__r_.__value_.__l.__data_);
              }

              if (v114 < 0)
              {
                operator delete(__p);
              }

              if (v127 < 0)
              {
                operator delete(*__src);
              }

              v7 = v105[0];
            }
          }
        }

        *__src = v16;
        v126 = v103;
        atomic_fetch_add_explicit(&v103->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_3175B8(buf, __src, v7, v128);
        std::__shared_weak_count::__release_weak(v103);
        sub_168F94();
      }

LABEL_58:
      v33 = v18;
      v34 = sub_5544(20);
      if (*(v34 + 8))
      {
        v35 = *v34;
        if (*v34)
        {
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEBUG))
          {
            sub_23148(__src, v16 + 2);
            if (v127 >= 0)
            {
              v36 = __src;
            }

            else
            {
              v36 = *__src;
            }

            sub_23148(&__p, *v9 + 2);
            v37 = v114;
            v38 = __p;
            sub_128174(&v112, *v128, *&v128[8]);
            v39 = &__p;
            if (v37 < 0)
            {
              v39 = v38;
            }

            v40 = &v112;
            if ((v112.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v40 = v112.__r_.__value_.__r.__words[0];
            }

            *buf = 136316162;
            *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 133;
            v119 = 2080;
            v120 = v36;
            v121 = 2080;
            v122 = v39;
            v123 = 2080;
            v124 = v40;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d Located device description for device %s. Adding support for port %s and sub-ports %s.", buf, 0x30u);
            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (v114 < 0)
            {
              operator delete(__p);
            }

            if (v127 < 0)
            {
              operator delete(*__src);
            }
          }
        }
      }

      if (v8 == 1885433888)
      {
        v41 = 40;
      }

      else
      {
        v41 = 16;
      }

      v101 = v105[1];
      v102 = v117;
      if (v8 == 1885433888)
      {
        v42 = v117;
      }

      else
      {
        v42 = v105[1];
      }

      if ((*(*&v16->_os_unfair_lock_opaque + 88))(v16, v8 == 1885433888))
      {
        v43 = *(&v33->__vftable + v41);
        v44 = *v9;
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      if (v8 == 1885433888)
      {
        sub_426E8C(buf, v116, v102, v128);
        sub_316F8C();
      }

      sub_426E8C(buf, v7, v101, v128);
      sub_316F8C();
    }

    sub_C4A80(v128, v116, a2, v6[9], a2[3], 0);
    v18 = sub_304BB8(v16, &v109);
    if (v18)
    {
      goto LABEL_58;
    }

    v19 = sub_5544(20);
    if (*(v19 + 8))
    {
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
        {
          sub_23148(__src, v16 + 2);
          v21 = v127;
          v22 = *__src;
          sub_23148(&__p, v116 + 2);
          v23 = __src;
          if (v21 < 0)
          {
            v23 = v22;
          }

          v24 = &__p;
          if (v114 < 0)
          {
            v24 = __p;
          }

          *buf = 136315906;
          *&buf[4] = "RoutingHandler_Multi_GenericConfig1.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 160;
          v119 = 2080;
          v120 = v23;
          v121 = 2080;
          v122 = v24;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding device description for device %s using port %s.", buf, 0x26u);
          if (v114 < 0)
          {
            operator delete(__p);
          }

          if (v127 < 0)
          {
            operator delete(*__src);
          }
        }
      }
    }

    if ((*(*&v16->_os_unfair_lock_opaque + 88))(v16, 1) == 1)
    {
      *__src = v16;
      v126 = v103;
      atomic_fetch_add_explicit(&v103->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_16632C(buf, __src, v116);
    }

    if ((*(*&v16->_os_unfair_lock_opaque + 88))(v16, 1) >= 2)
    {
      *__src = v16;
      v126 = v103;
      atomic_fetch_add_explicit(&v103->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_31614C(buf, __src, v116);
      sub_3564C4();
    }

    v52 = *&(*v9)[50]._os_unfair_lock_opaque;
    if (v52)
    {
      v53 = *&(*v9)[48]._os_unfair_lock_opaque;
      atomic_fetch_add_explicit(&v52->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v54 = std::__shared_weak_count::lock(v52);
      if (v54)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0;
      }

      std::__shared_weak_count::__release_weak(v52);
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    (*(*v55 + 128))(buf, v55);
    if (SBYTE3(v120) < 0)
    {
      if (*&buf[8] != 5)
      {
        goto LABEL_122;
      }

      v56 = *buf;
    }

    else
    {
      if (SBYTE3(v120) != 5)
      {
        goto LABEL_122;
      }

      v56 = buf;
    }

    v57 = *v56;
    v58 = v56[4];
    if (v57 == 1701080899 && v58 == 99)
    {
      v60 = 1;
      if ((BYTE3(v120) & 0x80) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_129;
    }

LABEL_122:
    (*(*v55 + 128))(__src, v55);
    if (v127 < 0)
    {
      v60 = v126 == &dword_8 && **__src == 0x7265766965636552;
      operator delete(*__src);
    }

    else
    {
      v60 = v127 == 8 && *__src == 0x7265766965636552;
    }

    if ((BYTE3(v120) & 0x80) == 0)
    {
LABEL_134:
      if (!v60)
      {
        goto LABEL_137;
      }

      goto LABEL_135;
    }

LABEL_129:
    operator delete(*buf);
    if (!v60)
    {
      goto LABEL_137;
    }

LABEL_135:
    v61 = (*(*&v16->_os_unfair_lock_opaque + 240))(v16, v115);
    *buf = 0x6F7574706D757465;
    *&buf[8] = v61;
    if ((*(*&v16->_os_unfair_lock_opaque + 16))(v16, buf))
    {
      operator new();
    }

LABEL_137:
    if (qword_6E83A0 != -1)
    {
      dispatch_once(&qword_6E83A0, &stru_6BD088);
    }

    if ((byte_6E8398 & 1) == 0)
    {
      goto LABEL_149;
    }

    (*(*v55 + 128))(buf, v55);
    if (SBYTE3(v120) < 0)
    {
      if (*&buf[8] == 8)
      {
        v62 = **buf;
        operator delete(*buf);
        if (v62 == 0x726F746175746341)
        {
          goto LABEL_146;
        }
      }

      else
      {
        operator delete(*buf);
      }
    }

    else if (SBYTE3(v120) == 8 && *buf == 0x726F746175746341)
    {
LABEL_146:
      v63 = (*(*&v16->_os_unfair_lock_opaque + 240))(v16, v115);
      *buf = 0x6F7574706D757465;
      *&buf[8] = v63;
      if ((*(*&v16->_os_unfair_lock_opaque + 16))(v16, buf))
      {
        operator new();
      }
    }

LABEL_149:
    if (sub_166260(v16))
    {
      v64 = v115;
      if (!sub_108CA8(v115))
      {
        v65 = (*(*&v16->_os_unfair_lock_opaque + 240))(v16, v64);
        *buf = 0x6F7574706D757465;
        *&buf[8] = v65;
        if ((*(*&v16->_os_unfair_lock_opaque + 16))(v16, buf))
        {
          operator new();
        }
      }
    }

    sub_2FBAF8(v16, 1, a2[3], *(a2 + 184), v6[9], a3);
    if (v54)
    {
      sub_1A8C0(v54);
    }

    if (*v128)
    {
      *&v128[8] = *v128;
      operator delete(*v128);
    }

    sub_1A8C0(v103);
    if (v117)
    {
      sub_1A8C0(v117);
    }

    if (v105[1])
    {
      sub_1A8C0(v105[1]);
    }

    v6 = v6[1];
    if (v6 == (*a2 + 16))
    {
      goto LABEL_162;
    }
  }
}

void sub_4265E8()
{
  if (v0)
  {
    sub_1A8C0(v0);
  }

  operator delete();
}

void sub_4269D0()
{
  if (STACK[0x248])
  {
    sub_1A8C0(STACK[0x248]);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x426CA8);
}

void sub_426A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    JUMPOUT(0x426D7CLL);
  }

  _Unwind_Resume(a1);
}

void sub_426A54()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x426BE8);
}

void sub_426A6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1A8C0(v2);
    JUMPOUT(0x426BB0);
  }

  _Unwind_Resume(a1);
}

void sub_426AB0()
{
  v1 = *(v0 - 256);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x426D44);
}

void sub_426B0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_65310((v2 - 192));
    JUMPOUT(0x426BA8);
  }

  _Unwind_Resume(a1);
}

void sub_426B20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x426BA8);
}

void sub_426B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_477A0(a66);
  sub_14B120(&a68);
  _Unwind_Resume(a1);
}

void sub_426B68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x426D7CLL);
  }

  _Unwind_Resume(a1);
}

void sub_426B94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a71)
    {
      sub_1A8C0(a71);
    }

    sub_128368(&STACK[0x208]);
    __cxa_begin_catch(a1);
    sub_140AD4(LODWORD(STACK[0x2E4]), STACK[0x2E8]);
    sub_140C30(LODWORD(STACK[0x2E4]));
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_426BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (!STACK[0x248])
  {
    if (a62)
    {
      operator delete(a62);
    }

    sub_477A0(a66);
    sub_14B120(&a68);
    JUMPOUT(0x426E7CLL);
  }

  JUMPOUT(0x426CC0);
}

void sub_426BE4()
{
  if (v0)
  {
    sub_1A8C0(v0);
  }

  JUMPOUT(0x426C90);
}

void sub_426C30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x426D88);
}

void sub_426C48()
{
  if (STACK[0x240])
  {
    STACK[0x248] = STACK[0x240];
    JUMPOUT(0x426C58);
  }

  JUMPOUT(0x426C90);
}

void sub_426C78()
{
  if (v0)
  {
    JUMPOUT(0x426C80);
  }

  JUMPOUT(0x426C90);
}

void sub_426C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  v61 = *(v60 - 192);
  if (v61)
  {
    *(v60 - 184) = v61;
    operator delete(v61);
  }

  if (a47)
  {
    sub_1A8C0(a47);
  }

  if (STACK[0x238])
  {
    sub_1A8C0(STACK[0x238]);
  }

  if (a60)
  {
    sub_1A8C0(a60);
  }

  JUMPOUT(0x426E54);
}

void sub_426CD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_3D2DD0(v2 - 192);
    JUMPOUT(0x426D7CLL);
  }

  _Unwind_Resume(a1);
}

void sub_426CF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v2 = STACK[0x208];
    if (STACK[0x208])
    {
      STACK[0x210] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x426D70);
  }

  _Unwind_Resume(a1);
}

void sub_426D10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_3D2DD0(v2 - 192);
    JUMPOUT(0x426D70);
  }

  _Unwind_Resume(a1);
}

void sub_426D34(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a2)
  {
    if (STACK[0x238])
    {
      sub_1A8C0(STACK[0x238]);
    }

    __cxa_begin_catch(a1);
    v43 = (*(*a42 + 120))(a42);
    sub_140C30(v43);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_426E74(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x426E7CLL);
  }

  sub_1CC130(a1);
}

void *sub_426E8C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_46980((a1 + 2), *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_426EE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_426F10(os_unfair_lock_s *a1, AudioObjectPropertyAddress *a2, uint64_t a3, __CFString *a4, UInt32 *a5, uint64_t *a6)
{
  if (((*(*&a1->_os_unfair_lock_opaque + 16))(a1) & 1) == 0)
  {
    v28 = sub_5544(14);
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v41 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v30 = sub_5544(14);
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      v42 = *&a2->mSelector;
      v46 = a2->mElement;
      sub_22CE0(__p);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    *v31 = &off_6DDDD0;
    v31[2] = 561211770;
  }

  if (!a6)
  {
    v32 = sub_5544(14);
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      v43 = *&a2->mSelector;
      v47 = a2->mElement;
      sub_22CE0(__p);
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    *v33 = &off_6DDDD0;
    v33[2] = 561211770;
  }

  if (a2->mSelector == 1936879204 || a2->mSelector == 1936876644)
  {
    sub_F31A0(buf, &a1[46]);
    v13 = *&v56[2];
    sub_65310(buf);
    if (!v13)
    {
      v26 = sub_5544(14);
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Multi.cpp";
          v55 = 1024;
          *v56 = 420;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because there are no physical devices in the aggregate.", buf, 0x12u);
        }
      }
    }

    *buf = *&a2->mSelector;
    *&buf[8] = a2->mElement;
    sub_4278DC(&v51, a1, buf);
    v14 = v51;
    if (!v51)
    {
      v34 = sub_5544(14);
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        v49 = *&a2->mSelector;
        v50 = a2->mElement;
        sub_22CE0(__p);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      *v35 = &off_6DDDD0;
      v35[2] = 2003329396;
    }

    if (*v51)
    {
      v36 = sub_5544(14);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        v55 = 1024;
        *v56 = 427;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v38, "Precondition failure.");
    }

    v15 = sub_20A884(*(v51 + 2));
    v16 = sub_20A8FC(v15);
    if (v16 > *a5)
    {
      v39 = sub_5544(14);
      if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
      {
        v44 = *&a2->mSelector;
        v48 = a2->mElement;
        sub_22CE0(__p);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = &off_6DDDD0;
      v40[2] = 561211770;
    }

    *a5 = v16;
    memcpy(a6, v14, v16);
    free(v14);
  }

  else
  {
    sub_10B440(a1, a2, a3, a4, a5, a6);
  }

  if (a2->mSelector == 1853059700)
  {
    v17 = sub_5544(17);
    v18 = sub_5544(37);
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
        if ((v20 & 1) == 0)
        {
          return;
        }

        goto LABEL_23;
      }
    }

    if ((v20 & v21) == 0)
    {
      v17 = v18;
    }

    if (*(v17 + 8))
    {
LABEL_23:
      v22 = *v17;
      if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *a6;
        sub_22170(__p, a2->mScope);
        if (v53 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        v25 = a2->mElement;
        *buf = 136316162;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        v55 = 1024;
        *v56 = 446;
        *&v56[4] = 2048;
        *&v56[6] = v23;
        v57 = 2080;
        v58 = v24;
        v59 = 1024;
        v60 = v25;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Get sample rate value of %f from AggregateDevice_Common (selector: kAudioDevicePropertyNominalSampleRate; scope: '%s'; element: %u).", buf, 0x2Cu);
        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_427884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4278DC(char **a1, os_unfair_lock_s *a2, _DWORD *a3)
{
  if (!sub_4296AC(a3))
  {
    v151 = sub_5544(14);
    if (*v151 && os_log_type_enabled(*v151, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(&v173);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1970171760;
  }

  if (((*(*&a2->_os_unfair_lock_opaque + 16))(a2, a3) & 1) == 0)
  {
    v153 = sub_5544(14);
    if (*v153 && os_log_type_enabled(*v153, OS_LOG_TYPE_ERROR))
    {
      sub_23148(&v173, a2 + 2);
      sub_22CE0(&__p);
    }

    v154 = __cxa_allocate_exception(0x10uLL);
    *v154 = &off_6DDDD0;
    v154[2] = 1970171760;
  }

  v6 = sub_5544(17);
  v7 = sub_5544(34);
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
      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

  if (*(v6 + 8))
  {
LABEL_11:
    v11 = *v6;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_22CE0(&v173);
    }
  }

LABEL_14:
  v12 = sub_71E60(a3[1]);
  v13 = 206;
  if (v12)
  {
    v13 = 212;
  }

  v14 = &a2[v13];
  v15 = 218;
  if (v12)
  {
    v15 = 224;
  }

  v175 = 0;
  *buf = &v173;
  v162 = v14;
  v18 = v14;
  v17 = *&v14->_os_unfair_lock_opaque;
  v16 = *&v18[2]._os_unfair_lock_opaque;
  v157 = a2;
  v19 = &a2[v15];
  v173 = 0;
  v174 = 0;
  buf[8] = 0;
  if (v16 != v17)
  {
    if (!(((v16 - v17) >> 3) >> 60))
    {
      operator new();
    }

    sub_189A00();
  }

  v20 = *&v19->_os_unfair_lock_opaque;
  v21 = *&v19[2]._os_unfair_lock_opaque;
  if (*&v19->_os_unfair_lock_opaque == v21)
  {
    v82 = 0;
    v83 = 0;
    goto LABEL_147;
  }

  v158 = a1;
  v22 = 0;
  v23 = 0;
  v24 = "input";
  if (v12)
  {
    v24 = "output";
  }

  __s = v24;
  v161 = *&v19[2]._os_unfair_lock_opaque;
  do
  {
    v25 = *v20;
    if (!*v20)
    {
      goto LABEL_116;
    }

    v26 = (*(*v25 + 168))(*v20);
    v27 = v26;
    if (v26 >= 0xFFFFFFFE)
    {
      v28 = sub_5544(17);
      v29 = sub_5544(34);
      v30 = 0;
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
          if ((v31 & 1) == 0)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }
      }

      if ((v31 & v32) == 0)
      {
        v28 = v29;
      }

      if (*(v28 + 8))
      {
LABEL_53:
        v42 = *v28;
        if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_53E8(&__p, __s);
          p_p = &__p;
          if (v172 < 0)
          {
            p_p = __p;
          }

          v44 = "hidden";
          if (v27 == -1)
          {
            v44 = "disabled";
          }

          *buf = 136316162;
          *&buf[4] = "AggregateDevice_Multi.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 570;
          v177 = 2080;
          *v178 = p_p;
          *&v178[8] = 1024;
          *&v178[10] = v23;
          *&v178[14] = 2080;
          *&v178[16] = v44;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d The %s underlying stream cache item at index %d references a %s client stream", buf, 0x2Cu);
          if (v172 < 0)
          {
            operator delete(__p);
          }
        }

        goto LABEL_116;
      }

      goto LABEL_116;
    }

    if (v26 >= ((v174 - v173) >> 4))
    {
      sub_269EF8();
    }

    v164 = v26;
    if (*&v173[16 * v26])
    {
      v74 = sub_5544(14);
      v75 = *v74;
      if (*v74)
      {
        if (os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "AggregateDevice_Multi.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 574;
          v177 = 1024;
          *v178 = v27;
          *&v178[4] = 1024;
          *&v178[6] = v23;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Duplicate channel layout information found for client stream index %d. New layout from underlying stream index %d will override the previously retrieved data for this index.", buf, 0x1Eu);
        }
      }
    }

    (*(*v25 + 192))(buf, v25);
    if (!*&buf[8])
    {
      goto LABEL_207;
    }

    v33 = std::__shared_weak_count::lock(*&buf[8]);
    v34 = *buf;
    if (!v33)
    {
      v34 = 0;
    }

    v165 = v34;
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    if (!v165)
    {
LABEL_207:
      v128 = sub_5544(14);
      v129 = *v128;
      if (*v128 && os_log_type_enabled(*v128, OS_LOG_TYPE_ERROR))
      {
        sub_53E8(&__p, __s);
        v130 = v172 >= 0 ? &__p : __p;
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 580;
        v177 = 2080;
        *v178 = v130;
        *&v178[8] = 1024;
        *&v178[10] = v23;
        _os_log_impl(&dword_0, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [associatedDevice.get() is NULL]: The %s underlying stream cache item at index %d returned a NULL PhysicalDevice", buf, 0x22u);
        if (v172 < 0)
        {
          operator delete(__p);
        }
      }

      v131 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v131, "The %s underlying stream cache item at index %d returned a NULL PhysicalDevice");
    }

    v35 = *(*&v162->_os_unfair_lock_opaque + 8 * v164);
    if (!v35)
    {
      v110 = sub_5544(14);
      v111 = *v110;
      if (*v110 && os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
      {
        v112 = &__p;
        sub_53E8(&__p, __s);
        if (v172 < 0)
        {
          v112 = __p;
        }

        std::to_string(&v169, v27);
        v113 = SHIBYTE(v169.__r_.__value_.__r.__words[2]);
        v114 = v169.__r_.__value_.__r.__words[0];
        sub_23148(v167, v157 + 2);
        v115 = &v169;
        if (v113 < 0)
        {
          v115 = v114;
        }

        if (v168 >= 0)
        {
          v116 = v167;
        }

        else
        {
          v116 = v167[0];
        }

        *buf = 136316162;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 587;
        v177 = 2080;
        *v178 = v112;
        *&v178[8] = 2080;
        *&v178[10] = v115;
        *&v178[18] = 2080;
        *&v178[20] = v116;
        _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [clientStreamCache[clientStreamCacheIndex] is NULL]: Encountered NULL %s client stream cache item at index %s in device %s", buf, 0x30u);
        if (v168 < 0)
        {
          operator delete(v167[0]);
        }

        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }

        if (v172 < 0)
        {
          operator delete(__p);
        }
      }

      v117 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v117, "Encountered NULL %s client stream cache item at index %s in device %s");
    }

    (*(*v35 + 144))(&__p, *(*&v162->_os_unfair_lock_opaque + 8 * v164));
    if (!v171 || (v36 = std::__shared_weak_count::lock(v171)) == 0 || !__p)
    {
      v132 = sub_5544(14);
      v133 = *v132;
      if (*v132 && os_log_type_enabled(*v132, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 68;
        _os_log_impl(&dword_0, v133, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inStream is NULL]: Encountered a NULL stream", buf, 0x12u);
      }

      v134 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v134, "Encountered a NULL stream");
    }

    v163 = v22;
    sub_617EC(__p, buf);
    v37 = *&v178[8];
    sub_1A8C0(v36);
    if (v171)
    {
      std::__shared_weak_count::__release_weak(v171);
    }

    v166 = *((*(*v35 + 56))(v35) + 28);
    if (*((*(*v25 + 64))(v25) + 28) != v37)
    {
      v76 = sub_5544(14);
      v77 = *v76;
      if (*v76)
      {
        if (os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
        {
          (*(*v35 + 144))(&v169, v35);
          log = v77;
          v156 = std::__shared_weak_count::lock(v169.__r_.__value_.__l.__size_);
          sub_23148(&__p, (v169.__r_.__value_.__r.__words[0] + 8));
          v78 = v172;
          v79 = __p;
          v80 = *((*(*v25 + 64))(v25) + 28);
          v81 = &__p;
          if (v78 < 0)
          {
            v81 = v79;
          }

          *buf = 136316162;
          *&buf[4] = "AggregateDevice_Multi.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 592;
          v177 = 2080;
          *v178 = v81;
          *&v178[8] = 1024;
          *&v178[10] = v80;
          *&v178[14] = 1024;
          *&v178[16] = v37;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Encountered an unexpected number of channels in stream %s: expected %u, found %u", buf, 0x28u);
          if (v172 < 0)
          {
            operator delete(__p);
          }

          sub_1A8C0(v156);
          if (v169.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_weak(v169.__r_.__value_.__l.__size_);
          }
        }
      }
    }

    if ((*(*&v165->_os_unfair_lock_opaque + 16))(v165, a3))
    {
      if (v166 == v37)
      {
        *buf = (*(*&v165->_os_unfair_lock_opaque + 32))(v165, a3, 0, 0);
        v38 = malloc_type_malloc(*buf, 0x1000040E0EAB150uLL);
        (*(*&v165->_os_unfair_lock_opaque + 40))(v165, a3, 0, 0, buf, v38);
        v39 = (*(*v25 + 184))(v25);
        v40 = v39 + v37;
        v41 = v39;
        goto LABEL_91;
      }

      if (v37 == 1 && v166 >= 2)
      {
        *buf = (*(*&v165->_os_unfair_lock_opaque + 32))(v165, a3, 0, 0);
        v38 = sub_46D388(v166);
        (*(*&v165->_os_unfair_lock_opaque + 40))(v165, a3, 0, 0, buf, v38);
        v51 = v166 - 1;
        v52 = 32;
        do
        {
          v53 = &v38[v52];
          v54 = *(v38 + 12);
          *(v53 + 4) = *(v38 + 7);
          *v53 = v54;
          v52 += 20;
          --v51;
        }

        while (v51);
        goto LABEL_90;
      }

      v55 = sub_5544(17);
      v56 = sub_5544(34);
      v57 = 0;
      *buf = 0x100000002;
      v58 = *(v55 + 8);
      while (1)
      {
        v59 = *&buf[v57];
        if (((v58 & v59) != 0) != ((*(v56 + 8) & v59) != 0))
        {
          break;
        }

        v57 += 4;
        if (v57 == 8)
        {
          goto LABEL_83;
        }
      }

      if ((v58 & v59) == 0)
      {
        v55 = v56;
      }

LABEL_83:
      v60 = *v55;
      if (v60 && os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        sub_53E8(&__p, __s);
        v61 = &__p;
        if (v172 < 0)
        {
          v61 = __p;
        }

        *buf = 136316418;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 629;
        v177 = 2080;
        *v178 = v61;
        *&v178[8] = 1024;
        *&v178[10] = v27;
        *&v178[14] = 1024;
        *&v178[16] = v37;
        *&v178[20] = 1024;
        *&v178[22] = v166;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d Encountered an incompatible stream format conversion in the %s client stream at index %d. Format is converted from underlying format %u to virtualized format %u", buf, 0x2Eu);
        if (v172 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v45 = sub_5544(17);
      v46 = sub_5544(34);
      v47 = 0;
      *buf = 0x100000002;
      v48 = *(v45 + 8);
      while (1)
      {
        v49 = *&buf[v47];
        if (((v48 & v49) != 0) != ((*(v46 + 8) & v49) != 0))
        {
          break;
        }

        v47 += 4;
        if (v47 == 8)
        {
          if ((v48 & 1) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_69;
        }
      }

      if ((v48 & v49) == 0)
      {
        v45 = v46;
      }

      if (*(v45 + 8))
      {
LABEL_69:
        v50 = *v45;
        if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          sub_23148(&__p, v165 + 2);
          sub_22CE0(&v169);
        }
      }
    }

LABEL_89:
    v38 = sub_46D388(v166);
LABEL_90:
    v41 = 0;
    v40 = v166;
LABEL_91:
    v62 = sub_5544(17);
    v63 = sub_5544(34);
    v64 = 0;
    *buf = 0x100000002;
    v65 = *(v62 + 8);
    while (1)
    {
      v66 = *&buf[v64];
      if (((v65 & v66) != 0) != ((*(v63 + 8) & v66) != 0))
      {
        break;
      }

      v64 += 4;
      if (v64 == 8)
      {
        if ((v65 & 1) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_99;
      }
    }

    if ((v65 & v66) == 0)
    {
      v62 = v63;
    }

    if (*(v62 + 8))
    {
LABEL_99:
      v67 = *v62;
      if (v67 && os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v159 = v33;
        sub_53E8(&__p, __s);
        v68 = v172;
        v69 = __p;
        sub_28CBB4(&v169, v38);
        v70 = &__p;
        if (v68 < 0)
        {
          v70 = v69;
        }

        v71 = &v169;
        if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v71 = v169.__r_.__value_.__r.__words[0];
        }

        *buf = 136316418;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 640;
        v177 = 2080;
        *v178 = v70;
        *&v178[8] = 1024;
        *&v178[10] = v27;
        *&v178[14] = 1024;
        *&v178[16] = v23;
        *&v178[20] = 2080;
        *&v178[22] = v71;
        _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEBUG, "%25s:%-5d Channel layout information for %s client stream index %d (for underlying stream index %d): %s", buf, 0x32u);
        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }

        v33 = v159;
        if (v172 < 0)
        {
          operator delete(__p);
        }
      }
    }

LABEL_109:
    if (*v38)
    {
      v135 = sub_5544(14);
      v136 = *v135;
      if (*v135 && os_log_type_enabled(*v135, OS_LOG_TYPE_ERROR))
      {
        sub_23148(&__p, v165 + 2);
        v137 = v172;
        v138 = __p;
        sub_53E8(&v169, __s);
        v139 = &__p;
        if (v137 < 0)
        {
          v139 = v138;
        }

        if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v140 = &v169;
        }

        else
        {
          v140 = v169.__r_.__value_.__r.__words[0];
        }

        v141 = *v38;
        *buf = 136316418;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 643;
        v177 = 2080;
        *v178 = v139;
        *&v178[8] = 2080;
        *&v178[10] = v140;
        *&v178[18] = 1024;
        *&v178[20] = v141;
        *&v178[24] = 1024;
        *&v178[26] = 0;
        _os_log_impl(&dword_0, v136, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Device %s describes its %s channel layout with tag %#X (expected %#X)", buf, 0x32u);
        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }

        if (v172 < 0)
        {
          operator delete(__p);
        }
      }

      v142 = __cxa_allocate_exception(0x10uLL);
      *v142 = &off_6DDDD0;
      v142[2] = 2003329396;
    }

    if (v166 > *(v38 + 2))
    {
      v143 = sub_5544(14);
      v144 = *v143;
      if (*v143 && os_log_type_enabled(*v143, OS_LOG_TYPE_ERROR))
      {
        sub_53E8(&__p, __s);
        v145 = v172;
        v146 = __p;
        sub_23148(&v169, v165 + 2);
        v147 = &__p;
        if (v145 < 0)
        {
          v147 = v146;
        }

        if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v148 = &v169;
        }

        else
        {
          v148 = v169.__r_.__value_.__r.__words[0];
        }

        v149 = *(v38 + 2);
        *buf = 136316418;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        v177 = 2080;
        *v178 = v147;
        *&v178[8] = 2080;
        *&v178[10] = v148;
        *&v178[18] = 1024;
        *&v178[20] = v149;
        *&v178[24] = 1024;
        *&v178[26] = v166;
        _os_log_impl(&dword_0, v144, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Malformed channel layout: The %s channel layout for device %s contains %u channel descriptions (expeted at least %u)", buf, 0x32u);
        if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v169.__r_.__value_.__l.__data_);
        }

        if (v172 < 0)
        {
          operator delete(__p);
        }
      }

      v150 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v150, "Malformed channel layout: The %s channel layout for device %s contains %u channel descriptions (expeted at least %u)");
    }

    if (v164 >= (v174 - v173) >> 4)
    {
      sub_269EF8();
    }

    v72 = &v173[16 * v164];
    v73 = *v72;
    *v72 = v38;
    if (v73)
    {
      free(v73);
    }

    v72[1] = (v41 | (v40 << 32));
    v22 = v166 + v163;
    v21 = v161;
    if (v33)
    {
      sub_1A8C0(v33);
    }

LABEL_116:
    ++v23;
    ++v20;
  }

  while (v20 != v21);
  v83 = v173;
  v82 = v174;
  if (v173 != v174)
  {
    a1 = v158;
    v84 = 0;
    v85 = v173;
    do
    {
      v84 = *(v85 + 3) + v84 - *(v85 + 2);
      v85 += 16;
    }

    while (v85 != v174);
    if (v84 == v22)
    {
      v86 = v173;
      while (*v86)
      {
        v86 += 16;
        if (v86 == v174)
        {
          goto LABEL_147;
        }
      }

      v125 = sub_5544(14);
      v126 = *v125;
      if (*v125 && os_log_type_enabled(*v125, OS_LOG_TYPE_ERROR))
      {
        sub_23148(&__p, v157 + 2);
        v127 = v172 >= 0 ? &__p : __p;
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Multi.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 661;
        v177 = 2080;
        *v178 = v127;
        _os_log_impl(&dword_0, v126, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered a NULL underlying stream description in multi-route aggregate %s", buf, 0x1Cu);
        if (v172 < 0)
        {
          operator delete(__p);
        }
      }

      v90 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v90, "Encountered a NULL underlying stream description in multi-route aggregate %s");
LABEL_206:
    }

LABEL_138:
    v87 = sub_5544(14);
    v88 = *v87;
    if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
    {
      sub_23148(&__p, v157 + 2);
      v89 = v172 >= 0 ? &__p : __p;
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Multi.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 659;
      v177 = 2080;
      *v178 = v89;
      _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered an unexpected number of client stream channel descriptions in multi-route aggregate %s", buf, 0x1Cu);
      if (v172 < 0)
      {
        operator delete(__p);
      }
    }

    v90 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v90, "Encountered an unexpected number of client stream channel descriptions in multi-route aggregate %s");
    goto LABEL_206;
  }

  a1 = v158;
  if (v22)
  {
    goto LABEL_138;
  }

LABEL_147:
  if (v83 == v82)
  {
    v91 = 0;
  }

  else
  {
    v91 = 0;
    do
    {
      v91 = *(v83 + 3) + v91 - *(v83 + 2);
      v83 += 16;
    }

    while (v83 != v82);
  }

  v92 = sub_46D388(v91);
  *a1 = v92;
  v94 = v173;
  v93 = v174;
  if (v173 != v174)
  {
    v95 = 0;
    do
    {
      v96 = *(v94 + 2);
      v97 = *(v94 + 3);
      if (v97 != v96)
      {
        v98 = 0;
        v99 = v95;
        v100 = 20 * v95 + 12;
        do
        {
          if (!*v94)
          {
            v122 = sub_5544(14);
            v123 = *v122;
            if (*v122 && os_log_type_enabled(*v122, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Multi.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 106;
              _os_log_impl(&dword_0, v123, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            v124 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v124, "Precondition failure.");
          }

          if (v97 - v96 <= v98)
          {
            v118 = sub_5544(14);
            v119 = *v118;
            if (*v118 && os_log_type_enabled(*v118, OS_LOG_TYPE_ERROR))
            {
              v120 = *(v94 + 3) + ~*(v94 + 2);
              *buf = 136315906;
              *&buf[4] = "AggregateDevice_Multi.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 107;
              v177 = 1024;
              *v178 = v98;
              *&v178[4] = 1024;
              *&v178[6] = v120;
              _os_log_impl(&dword_0, v119, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): Attempt to access index %u. Max index: %u", buf, 0x1Eu);
            }

            v121 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v121, "Attempt to access index %u. Max index: %u");
          }

          v101 = *v94 + 20 * (v96 + v98);
          ++v99;
          v102 = &v92[v100];
          v103 = *(v101 + 12);
          *(v102 + 4) = *(v101 + 28);
          *v102 = v103;
          ++v98;
          v96 = *(v94 + 2);
          v97 = *(v94 + 3);
          v100 += 20;
        }

        while (v98 < v97 - v96);
        v95 = v99;
      }

      v94 += 16;
    }

    while (v94 != v93);
  }

  if (v92)
  {
    v104 = sub_5544(17);
    v105 = sub_5544(34);
    v106 = 0;
    *buf = 0x100000002;
    v107 = *(v104 + 8);
    while (1)
    {
      v108 = *&buf[v106];
      if (((v107 & v108) != 0) != ((*(v105 + 8) & v108) != 0))
      {
        break;
      }

      v106 += 4;
      if (v106 == 8)
      {
        if ((v107 & 1) == 0)
        {
          goto LABEL_173;
        }

        goto LABEL_170;
      }
    }

    if ((v107 & v108) == 0)
    {
      v104 = v105;
    }

    if (*(v104 + 8))
    {
LABEL_170:
      v109 = *v104;
      if (v109 && os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        sub_22CE0(&__p);
      }
    }
  }

LABEL_173:
  *buf = &v173;
  sub_429750(buf);
}

void sub_429414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, std::__shared_weak_count *a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  sub_1A8C0(a10);
  if (a33)
  {
    std::__shared_weak_count::__release_weak(a33);
  }

  if (v43)
  {
    sub_1A8C0(v43);
  }

  __p = (v44 - 200);
  sub_429750(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_4296AC(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_6FCFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FCFC8))
  {
    xmmword_6FCFB0 = xmmword_517490;
    qword_6FCFC0 = 1869968496;
    __cxa_guard_release(&qword_6FCFC8);
  }

  v2 = &xmmword_6FCFB0;
  v3 = 12;
  do
  {
    v4 = v3;
    result = sub_15414(v2, a1);
    if (result)
    {
      break;
    }

    v3 = v4 - 12;
    v2 += 3;
  }

  while (v4);
  return result;
}

void sub_429750(void ***a1)
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
        v7 = *(v4 - 2);
        v4 -= 2;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          free(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_4297D8(os_unfair_lock_s *a1, AudioObjectPropertyAddress *a2, uint64_t a3, __CFString *a4)
{
  if (((*(*&a1->_os_unfair_lock_opaque + 16))(a1) & 1) == 0)
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v21 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
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
      v22 = *&a2->mSelector;
      v24 = a2->mElement;
      sub_22CE0(__p);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  if (a2->mSelector == 1936879204 || a2->mSelector == 1936876644)
  {
    if (!*&a1[50]._os_unfair_lock_opaque)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13)
      {
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Multi.cpp";
          v30 = 1024;
          v31 = 391;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because there are no physical devices in the aggregate.", buf, 0x12u);
        }
      }
    }

    *buf = *&a2->mSelector;
    *&buf[8] = a2->mElement;
    sub_4278DC(&v27, a1, buf);
    v9 = v27;
    if (!v27)
    {
      v19 = sub_5544(14);
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        v25 = *&a2->mSelector;
        v26 = a2->mElement;
        sub_22CE0(__p);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = &off_6DDDD0;
      v20[2] = 2003329396;
    }

    v10 = sub_20A884(*(v27 + 2));
    v11 = sub_20A8FC(v10);
    free(v9);
    return v11;
  }

  else
  {

    return sub_F5AC0(a1, a2, a3, a4);
  }
}

void sub_429D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_429D54(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1936876644 || a2->mSelector == 1936879204)
  {
    return 0;
  }

  else
  {
    return sub_165390(a1, a2);
  }
}

uint64_t sub_429D80(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector != 1936879204 && a2->mSelector != 1936876644)
  {

    return sub_10BAE4(a1, a2);
  }

  v5 = sub_4296AC(a2);
  for (i = *(a1 + 192); ; i = i[1])
  {
    if (i == (a1 + 184))
    {
      v12 = 0;
      if (v5)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    v7 = i[3];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        break;
      }
    }

LABEL_14:
    ;
  }

  v9 = v8;
  v10 = i[2];
  if (!v10)
  {
    sub_1A8C0(v9);
    goto LABEL_14;
  }

  v11 = (*(*v10 + 16))(v10, a2);
  sub_1A8C0(v9);
  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = 1;
  if (v5)
  {
    goto LABEL_31;
  }

LABEL_16:
  v13 = sub_5544(17);
  v14 = sub_5544(34);
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
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  if ((v16 & v17) == 0)
  {
    v13 = v14;
  }

  if (*(v13 + 8))
  {
LABEL_27:
    v19 = *v13;
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_23148(v31, (a1 + 8));
      v26 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }
  }

LABEL_31:
  if ((v12 & 1) == 0)
  {
    v20 = sub_5544(17);
    v21 = sub_5544(34);
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
        if ((v23 & 1) == 0)
        {
          return v5 & v12;
        }

        goto LABEL_40;
      }
    }

    if ((v23 & v24) == 0)
    {
      v20 = v21;
    }

    if (*(v20 + 8))
    {
LABEL_40:
      v25 = *v20;
      if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_23148(v31, (a1 + 8));
        v27 = *&a2->mSelector;
        v29 = a2->mElement;
        sub_22CE0(__p);
      }
    }
  }

  return v5 & v12;
}

void sub_42A1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_42A1E4(unint64_t a1)
{
  sub_3D9164(a1);

  operator delete();
}

uint64_t sub_42A220(uint64_t a1, uint64_t a2)
{
  result = sub_310A30();
  if ((result & 1) == 0)
  {
    v5 = *(*a2 + 112);
    v4.n128_u64[0] = 0x40CF400000000000;

    return v5(a2, v4);
  }

  return result;
}

BOOL sub_42A2A8(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  v4 = atomic_load((a1 + 96));
  if (v4 != pthread_self())
  {
    result = std::mutex::try_lock((a1 + 32));
    if (!result)
    {
      return result;
    }

    *a2 = 1;
    atomic_store(pthread_self(), (a1 + 96));
  }

  return 1;
}

void sub_42A318(uint64_t a1)
{
  v2 = atomic_load((a1 + 96));
  if (v2 == pthread_self())
  {
    atomic_store(0, (a1 + 96));

    std::mutex::unlock((a1 + 32));
  }

  else
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "CAMutexWrapper.cpp";
      v7 = 1024;
      v8 = 107;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v5, 0x12u);
    }
  }
}

void sub_42A430(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

BOOL sub_42A43C(uint64_t a1)
{
  v2 = atomic_load((a1 + 96));
  v3 = pthread_self();
  if (v2 != v3)
  {
    std::mutex::lock((a1 + 32));
    atomic_store(pthread_self(), (a1 + 96));
  }

  return v2 != v3;
}

void sub_42A4A0(uint64_t a1)
{
  sub_42A4D8(a1);

  operator delete();
}

uint64_t sub_42A4D8(uint64_t a1)
{
  *a1 = off_6D3C50;
  std::mutex::~mutex((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_42A678(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_42A690(uint64_t a1)
{
  *a1 = &off_6D3DF8;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

uint64_t sub_42A704(uint64_t a1)
{
  *a1 = &off_6D3DF8;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_42A79C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D3D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

NSObject *sub_42A810(CFStringRef *a1, const char *a2)
{
  v2 = a1;
  if (a1)
  {
    if (sub_42A924(a1, "Generic", "VAD", a2, 0))
    {
      v4 = sub_5544(21);
      v2 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315906;
          v7 = "RoutingSettings_Aspen.cpp";
          v8 = 1024;
          v9 = 685;
          v10 = 2080;
          v11 = "VAD";
          v12 = 2080;
          v13 = a2;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot find strips file Generic/%s/%s", &v6, 0x26u);
        }

        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_42A924(CFStringRef *a1, const char *a2, const char *a3, const char *a4, unsigned int a5)
{
  theString = CFStringCreateWithCString(0, a2, 0x600u);
  v37 = 1;
  v34 = CFStringCreateWithCString(0, a3, 0x600u);
  v35 = 1;
  v32 = CFStringCreateWithCString(0, a4, 0x600u);
  v33 = 1;
  v41[0] = &theString;
  v41[1] = &v34;
  v42 = &v32;
  if (theString && CFStringHasPrefix(theString, @"/"))
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, &stru_6DFDA0);
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, *a1);
  }

  v10 = 0;
  v38 = MutableCopy;
  v39 = 1;
  if (!MutableCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  CFStringAppend(MutableCopy, @"/");
  if (v38)
  {
    CFStringAppend(v38, *v41[v10]);
  }

LABEL_8:
  while (v10 != 2)
  {
    MutableCopy = v38;
    ++v10;
    if (v38)
    {
      goto LABEL_6;
    }
  }

  v31 = a1;
  v11 = strlen(off_6DA0D0[a5]);
  v12 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, off_6DA0D0[a5], v11, 0x600u, 0, kCFAllocatorNull);
  if (v38)
  {
    HasSuffix = CFStringHasSuffix(v38, v12);
    v14 = v38;
    if (!HasSuffix && v38)
    {
      CFStringAppend(v38, v12);
      v14 = v38;
    }
  }

  else
  {
    v14 = 0;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 512);
  v16 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v14, kCFURLPOSIXPathStyle, 0);
  if (v16 && (v17 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v16), CFRelease(v16), v17) && (CFReadStreamOpen(v17), v18 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v17, 0, 0, 0, 0), CFReadStreamClose(v17), CFRelease(v17), v18))
  {
    CFRelease(Mutable);
    v19 = *v42;
    if (a5)
    {
      v30 = *v42;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v30 = v38;
      v40 = 0;
      do
      {
        v24 = off_6DA0F0[v23];
        if (!CFDictionaryContainsKey(v18, v24))
        {
          if (!v22)
          {
            Count = CFDictionaryGetCount(v18);
            v21 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count + 2, v18);
            v40 = v21;
          }

          CFDictionaryAddValue(v21, v24, v19);
          v22 = v21;
        }

        ++v23;
      }

      while (v23 != 2);
      if (v21)
      {
        CFRelease(v18);
      }

      else
      {
        v21 = v18;
      }

      v18 = v21;
    }

    Value = CFDictionaryGetValue(v18, @"name");
    if (Value)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(Value) && CFDictionaryGetCount(v31[a5 + 2]) >= 1)
      {
        operator new[]();
      }
    }

    CFDictionarySetValue(v31[a5 + 2], v30, v18);
    v28 = v31[6];
    if (v28)
    {
      sub_478200(v31[a5 + 2], "@@ Strips Oct 18 2025 19:26:29", v28);
    }

    v20 = 0;
    if (v12)
    {
LABEL_42:
      CFRelease(v12);
    }
  }

  else
  {
    if (Mutable)
    {
      CFStringAppend(Mutable, @"Error loading plist file ");
      CFStringAppend(Mutable, v14);
      CFStringAppend(Mutable, @"\n");
    }

    CFRelease(Mutable);
    v18 = 0;
    v20 = 0xFFFFFFFFLL;
    if (v12)
    {
      goto LABEL_42;
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  sub_4781C0(&v38);
  sub_BDC5C(&v32);
  sub_BDC5C(&v34);
  sub_BDC5C(&theString);
  return v20;
}

void sub_42AE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  va_copy(va4, va3);
  v14 = va_arg(va4, void);
  v16 = va_arg(va4, void);
  sub_4787A8(va4);
  sub_4781C0(va3);
  sub_BDC5C(va);
  sub_BDC5C(va1);
  sub_BDC5C(va2);
  _Unwind_Resume(a1);
}

os_log_t sub_42AED0(NSObject *a1, const char *a2, const __CFString **a3)
{
  v3 = a1;
  if (a1)
  {
    if (!*a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    sub_125D8(__p, *a3);
    if (SBYTE3(v17) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    v7 = sub_42A924(v3, v6, "VAD", a2, 0);
    v8 = v7;
    if (SBYTE3(v17) < 0)
    {
      operator delete(*__p);
      if (!v8)
      {
        return v3;
      }
    }

    else if (!v7)
    {
      return v3;
    }

    v9 = sub_5544(21);
    v3 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        *__p = 136316162;
        *&__p[4] = "RoutingSettings_Aspen.cpp";
        v14 = 1024;
        v15 = 700;
        v16 = 2112;
        v17 = v10;
        v18 = 2080;
        v19 = "VAD";
        v20 = 2080;
        v21 = a2;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot find strips file %@/%s/%s", __p, 0x30u);
      }

      return 0;
    }
  }

  return v3;
}

NSObject *sub_42B09C(CFStringRef *a1, const char *a2)
{
  v2 = a1;
  if (a1)
  {
    if (sub_42A924(a1, "Generic", "Headphones", a2, 1u))
    {
      v4 = sub_5544(21);
      v2 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136316162;
          v7 = "RoutingSettings_Aspen.cpp";
          v8 = 1024;
          v9 = 753;
          v10 = 2080;
          v11 = "Generic";
          v12 = 2080;
          v13 = "Headphones";
          v14 = 2080;
          v15 = a2;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot find preset file %s/%s/%s", &v6, 0x30u);
        }

        return 0;
      }
    }
  }

  return v2;
}

os_log_t sub_42B1BC(NSObject *a1, const char *a2, const __CFString **a3, unsigned int a4)
{
  v4 = a1;
  if (a1)
  {
    if (!*a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    sub_125D8(__p, *a3);
    if (SBYTE3(v19) >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    v9 = sub_42A924(v4, v8, "AU", a2, a4);
    v10 = v9;
    if (SBYTE3(v19) < 0)
    {
      operator delete(*__p);
      if (!v10)
      {
        return v4;
      }
    }

    else if (!v9)
    {
      return v4;
    }

    v11 = sub_5544(21);
    v4 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *a3;
        *__p = 136316162;
        *&__p[4] = "RoutingSettings_Aspen.cpp";
        v16 = 1024;
        v17 = 772;
        v18 = 2112;
        v19 = v12;
        v20 = 2080;
        v21 = "AU";
        v22 = 2080;
        v23 = a2;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot find preset file %@/%s/%s", __p, 0x30u);
      }

      return 0;
    }
  }

  return v4;
}

void sub_42B38C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v4 = a4;
  operator new();
}

void sub_42B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  sub_12A2C4(v11);
  _Unwind_Resume(a1);
}

const __CFDictionary *sub_42B534(uint64_t a1, _DWORD *a2, const char *a3, int a4, uint64_t a5, int a6)
{
  if (!a5)
  {
    return 0;
  }

  result = sub_478844(a5, a3, 0);
  if (result)
  {
    v10 = result;
    Value = CFDictionaryGetValue(result, @"strips");
    if (Value && (v12 = Value, TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(v12)))
    {
      Count = CFArrayGetCount(v12);
      v15 = Count - 1;
      if (Count < 1)
      {
        return 0;
      }

      v48 = a6;
      v49 = a4;
      v47 = a2;
    }

    else
    {
      v48 = a6;
      v49 = a4;
      v47 = a2;
      v15 = 0;
    }

    v16 = 0;
    v17 = @"unit";
    while (1)
    {
      v18 = CFDictionaryGetValue(v10, @"strips");
      if (v18)
      {
        v19 = v18;
        v20 = CFArrayGetTypeID();
        if (v20 == CFGetTypeID(v19) && CFArrayGetCount(v19) > v16)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v19, v16);
          if (ValueAtIndex)
          {
            v22 = ValueAtIndex;
            v23 = CFDictionaryGetTypeID();
            if (v23 == CFGetTypeID(v22))
            {
              v24 = CFDictionaryGetValue(v22, @"effects");
              if (v24)
              {
                v25 = v24;
                v26 = CFArrayGetTypeID();
                if (v26 == CFGetTypeID(v25))
                {
                  v27 = CFArrayGetCount(v25);
                  if (v27 >= 1)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_32:
      if (v16++ == v15)
      {
        return 0;
      }
    }

    v28 = v27;
    v29 = 0;
    v46 = v49;
    while (1)
    {
      v51 = 0;
      LODWORD(cf) = 0;
      v52 = 0;
      v30 = CFArrayGetValueAtIndex(v25, v29);
      if (v30)
      {
        v31 = v30;
        v32 = CFDictionaryGetTypeID();
        if (v32 == CFGetTypeID(v31))
        {
          v33 = CFDictionaryGetValue(v31, v17);
          if (v33)
          {
            v34 = v33;
            v35 = v17;
            v36 = CFDictionaryGetTypeID();
            if (v36 == CFGetTypeID(v34))
            {
              v37 = CFDictionaryGetValue(v34, @"manufacturer");
              v17 = v35;
              if (sub_4787DC(v37, &v51))
              {
                v38 = CFDictionaryGetValue(v34, @"type");
                if (sub_4787DC(v38, &cf))
                {
                  v39 = CFDictionaryGetValue(v34, @"subtype");
                  if (sub_4787DC(v39, &v52) && v51 == 1634758764 && cf == 1635083896 && v52 == v48)
                  {
                    if (!v46)
                    {
                      v41 = CFDictionaryGetValue(v31, @"aupreset");
                      if (v41)
                      {
                        v42 = CFDictionaryGetTypeID();
                        if (v42 != CFGetTypeID(v41))
                        {
                          v41 = 0;
                        }
                      }

                      v51 = 0;
                      v43 = CFDictionaryGetValue(v31, @"bypass");
                      v44 = sub_4787DC(v43, &v51);
                      v45 = v51;
                      if (!v44)
                      {
                        v45 = 0;
                      }

                      *v47 = v45;
                      if (v41)
                      {
                        sub_10FD4(&cf, v41);
                        operator new();
                      }

                      return 0;
                    }

                    v46 = 0;
                  }
                }
              }
            }

            else
            {
              v17 = v35;
            }
          }
        }
      }

      if (v28 == ++v29)
      {
        goto LABEL_32;
      }
    }
  }

  return result;
}

void sub_42B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_1A8C0(a17);
  }

  sub_4BA7C(&a14);
  _Unwind_Resume(a1);
}

void sub_42B930(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_42BA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_12A2C4(&a10);
  if (a17)
  {
    sub_1A8C0(a17);
  }

  _Unwind_Resume(a1);
}

void sub_42BA48(void *a1, uint64_t a2)
{
  sub_129D90(__p, a2);
  v3 = sub_130F70(a1, 1685090928);
  if (v3)
  {
    v4 = v3;
    v5 = v3[3];
    if (*(v5 + 40) != 7)
    {
      sub_20B4EC();
    }

    for (i = *(v5 + 16); i; i = *i)
    {
      sub_EF5E8(__p, *(i + 4));
    }

    sub_42BC10(a1, v4);
  }

  sub_42BD3C();
}

void sub_42BBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

void sub_42BC10(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a2);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v8 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *a2;
    }
  }

  *v6 = v9;
  *a2 = 0;
  --a1[3];
  sub_20B704(1, a2);
}

void sub_42BDB8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_42BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_12A2C4(&a14);
  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_42BEFC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_12A2C4(va);
  operator delete();
}

void sub_42C074()
{
  *__p = 0u;
  *v1 = 0u;
  v2 = 1065353216;
  operator new();
}

void sub_42C2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 - 56);
  if (v11)
  {
    sub_1A8C0(v11);
  }

  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_42C338(uint64_t result)
{
  if (result)
  {
    sub_12A2C4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_42C378(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1)
  {
    sub_42C338(**(a1 + 8));
  }

  return a1;
}

void sub_42C3B8()
{
  *v1 = 0u;
  *v2 = 0u;
  v3 = 1065353216;
  v0[0] = v0;
  v0[1] = v0;
  v0[2] = 0;
  operator new();
}

void sub_42C700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_12A2C4(va2);
  sub_87980(va);
  sub_12A2C4(va1);
  _Unwind_Resume(a1);
}

void sub_42C790(uint64_t a1, const char *a2, const __CFString **a3, NSObject *a4)
{
  if (a2)
  {
    v6 = sub_42B1BC(a4, a2, a3, 2u);
    if (v6)
    {
      v7 = sub_478844(v6, a2, 2u);
      v8 = sub_5544(21);
      if (v7)
      {
        if (*(v8 + 8))
        {
          v9 = *v8;
          if (*v8)
          {
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
            {
              buf[0] = 136315906;
              *&buf[1] = "RoutingSettings_Aspen.cpp";
              v17 = 1024;
              *__p = 305;
              *&__p[4] = 2080;
              *&__p[6] = a2;
              v19 = 2112;
              v20 = v7;
              _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Inserting plist (%s): (%@)", buf, 0x26u);
            }
          }
        }

        sub_10FD4(&cf, v7);
        operator new();
      }

      v11 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *a3;
        buf[0] = 136315906;
        *&buf[1] = "RoutingSettings_Aspen.cpp";
        v17 = 1024;
        *__p = 302;
        *&__p[4] = 2112;
        *&__p[6] = v14;
        v19 = 2080;
        v20 = a2;
        v13 = "%25s:%-5d Could not load AU plist by name for %@: %s";
        goto LABEL_15;
      }
    }

    else
    {
      v10 = sub_5544(21);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *a3;
        buf[0] = 136315906;
        *&buf[1] = "RoutingSettings_Aspen.cpp";
        v17 = 1024;
        *__p = 296;
        *&__p[4] = 2112;
        *&__p[6] = v12;
        v19 = 2080;
        v20 = a2;
        v13 = "%25s:%-5d Could not load disk tunings for %@ using plist file %s";
LABEL_15:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x26u);
      }
    }
  }
}

void sub_42CA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_42CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_12A2C4(va1);
  v5 = *(v3 - 64);
  if (v5)
  {
    sub_1A8C0(v5);
  }

  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

void sub_42CFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_12A2C4(&a14);
  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_42D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_12A2C4(&a14);
  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_42D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_12A2C4(&a14);
  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_42D358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_12A2C4(va2);
  sub_87980(va);
  sub_12A2C4(va1);
  _Unwind_Resume(a1);
}

void sub_42D3CC(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_12A818();
}

void sub_42D4B4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_42D4CC()
{
  *v1 = 0u;
  *v2 = 0u;
  v3 = 1065353216;
  v0 = 0;
  operator new();
}

void sub_42D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_12A2C4(va1);
  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

void sub_42D994(uint64_t a1, uint64_t a2, CFStringRef *a3, char *__s)
{
  if (!__s)
  {
    goto LABEL_25;
  }

  sub_53E8(v15, __s);
  if (v16 < 0)
  {
    if (!v15[1])
    {
LABEL_20:
      v10 = 1;
      goto LABEL_21;
    }

    v7 = v15[0];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_25;
    }

    v7 = v15;
  }

  if (!sub_42B09C(a3, v7))
  {
    v12 = sub_5544(21);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v15;
      if (v16 < 0)
      {
        v14 = v15[0];
      }

      __p = 136315650;
      __p_4 = "RoutingSettings_Aspen.cpp";
      v22 = 1024;
      v23 = 526;
      v24 = 2080;
      v25 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not load a tuning preset file with name %s", &__p, 0x1Cu);
    }

    goto LABEL_20;
  }

  *v17 = 0u;
  *v18 = 0u;
  v19 = 1065353216;
  if (v16 >= 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = v15[0];
  }

  v9 = sub_478844(a3, v8, 1u);
  v10 = v9 == 0;
  if (v9)
  {
    operator new();
  }

  sub_EF820(v18[0]);
  v11 = v17[0];
  v17[0] = 0;
  if (v11)
  {
    operator delete(v11);
  }

LABEL_21:
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if (!v10)
    {
      return;
    }

LABEL_25:
    sub_42CFF8(a1, a2, 0);
  }

  if (v10)
  {
    goto LABEL_25;
  }
}

void sub_42DCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_42DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a5 + 8);
  }

  if (v5)
  {
    if (a2)
    {
      sub_42B38C(&v12, a2, 0, 0);
    }

    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        __p[0] = 136315394;
        *&__p[1] = "RoutingSettings_Aspen.cpp";
        v14 = 1024;
        v15 = 1201;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    __p[0] = 136315394;
    *&__p[1] = "RoutingSettings_Aspen.cpp";
    v14 = 1024;
    v15 = 1200;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v8, "Precondition failure.");
}

void sub_42E1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1DB0E0(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_12A2C4(&a16);
  _Unwind_Resume(a1);
}

void sub_42E294(std::string *a1, const __CFString **a2, uint64_t a3)
{
  sub_53E8(&v26, off_6E4C30);
  v6 = std::string::append(&v26, "/", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_F76D4(__p, *a2);
  if ((v25 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v9 = v25;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v27, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v28, "/", 1uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v29, "AU", 2uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v30, "/", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  v21 = std::string::append(&v31, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v32, ".plist", 6uLL);
  *a1 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_42E4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_42E57C(uint64_t a1, const char *a2, CFStringRef *a3)
{
  if (a2 && a3)
  {
    if (sub_42A924(a3, "Generic", "VAD", a2, 1u))
    {
      v5 = sub_5544(21);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 136316162;
          *&buf[1] = "RoutingSettings_Aspen.cpp";
          v14 = 1024;
          *v15 = 803;
          *&v15[4] = 2080;
          *&v15[6] = "Generic";
          v16 = 2080;
          v17 = "VAD";
          v18 = 2080;
          v19 = a2;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot find preset file %s/%s/%s", buf, 0x30u);
        }
      }
    }

    else
    {
      *__p = 0u;
      *v11 = 0u;
      v12 = 1065353216;
      if (sub_478844(a3, a2, 1u))
      {
        operator new();
      }

      v7 = sub_5544(21);
      v8 = *v7;
      if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315650;
        *&buf[1] = "RoutingSettings_Aspen.cpp";
        v14 = 1024;
        *v15 = 558;
        *&v15[4] = 2080;
        *&v15[6] = a2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not load a tuning preset file with name %s", buf, 0x1Cu);
      }

      sub_EF820(v11[0]);
      v9 = __p[0];
      __p[0] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }
  }
}

void sub_42E8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

const void *sub_42E968(const char *a1, const __CFString **a2, CFStringRef *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_125D8(__p, v4);
  if (SBYTE3(v25) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = *__p;
  }

  v8 = sub_42A924(a3, v7, "ANC", a1, 2u);
  v9 = v8;
  if (SBYTE3(v25) < 0)
  {
    operator delete(*__p);
    if (v9)
    {
LABEL_8:
      v10 = sub_5544(21);
      v11 = *v10;
      if (!*v10 || !os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v12 = *a2;
      *__p = 136316162;
      *&__p[4] = "RoutingSettings_Aspen.cpp";
      v22 = 1024;
      v23 = 739;
      v24 = 2112;
      v25 = v12;
      v26 = 2080;
      v27 = "ANC";
      v28 = 2080;
      v29 = a1;
      v13 = "%25s:%-5d Cannot find strips file %@/%s/%s";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 48;
LABEL_11:
      _os_log_impl(&dword_0, v14, v15, v13, __p, v16);
      return 0;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  result = sub_478844(a3, a1, 2u);
  if (!result)
  {
    v18 = sub_5544(21);
    v19 = *v18;
    if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *__p = 136315394;
    *&__p[4] = "RoutingSettings_Aspen.cpp";
    v22 = 1024;
    v23 = 1275;
    v13 = "%25s:%-5d Failed to get ANC dictionary from disk tunings";
    v14 = v19;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 18;
    goto LABEL_11;
  }

  return result;
}

const void *sub_42EBAC(const char *a1, const char *a2, CFStringRef *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (sub_42A924(a3, a2, "Sidetone", a1, 1u))
  {
    v6 = sub_5544(21);
    v7 = *v6;
    if (!*v6 || !os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v15 = 136316162;
    v16 = "RoutingSettings_Aspen.cpp";
    v17 = 1024;
    v18 = 789;
    v19 = 2080;
    v20 = a2;
    v21 = 2080;
    v22 = "Sidetone";
    v23 = 2080;
    v24 = a1;
    v8 = "%25s:%-5d Cannot find preset file %s/%s/%s";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 48;
LABEL_6:
    _os_log_impl(&dword_0, v9, v10, v8, &v15, v11);
    return 0;
  }

  result = sub_478844(a3, a1, 1u);
  if (!result)
  {
    v13 = sub_5544(21);
    v14 = *v13;
    if (!*v13 || !os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v15 = 136315394;
    v16 = "RoutingSettings_Aspen.cpp";
    v17 = 1024;
    v18 = 1288;
    v8 = "%25s:%-5d Failed to get sidetone dictionary from sidetone preset file";
    v9 = v14;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 18;
    goto LABEL_6;
  }

  return result;
}

void sub_42ED40(std::string *a1, const __CFString **a2)
{
  sub_53E8(&v17, off_6E4C30);
  v4 = std::string::append(&v17, "/", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_F76D4(__p, *a2);
  if ((v16 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v18, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v19, "/", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v20, "VAD", 3uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v21, "/", 1uLL);
  *a1 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_42EED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_42EF68(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  strcpy((a1 + 48), "tlfd");
  *(a1 + 56) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  if ((atomic_load_explicit(&qword_6FD1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD1E0))
  {
    sub_42F0E0();
  }

  v2 = qword_6FD1D0;
  v3 = qword_6FD1D8;
  if (qword_6FD1D8)
  {
    atomic_fetch_add_explicit((qword_6FD1D8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(a1, v2, v3);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  sub_42BDD0(a1, "volume only", 0, 0);
}

void sub_42F084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_6FD1E0);
  sub_2B1E18(v15);
  _Unwind_Resume(a1);
}

void sub_42F1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  sub_42B38C(&v3, a2, a3, 0);
}

void sub_42F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_12A2C4(&a14);
  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_42F278(uint64_t a1)
{
  *a1 = &off_6D3F70;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

uint64_t sub_42F308(uint64_t a1)
{
  *a1 = &off_6D3F70;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_42F35C(double a1, double a2)
{
  v2 = a1;
  v3 = a2;
  operator new();
}

void sub_42F3E8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

uint64_t sub_42F40C(uint64_t a1, _OWORD *a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v21[0] = 0;
    v23 = 0;
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v21[0] = 0;
    v23 = 0;
  }

  sub_149330(v24, v21);
  sub_42F790(a1, 1684234860, a3, a4, v24);
  if (v26 == 1)
  {
    sub_477A0(v25);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *a1 = &off_6D5BA0;
  *(a1 + 136) = *a2;
  *(a1 + 152) = sub_42F870(a1);
  *(a1 + 164) = 5;
  *(a1 + 184) = 0x100000001;
  *(a1 + 156) = 0x700000001;
  *(a1 + 168) = *"";
  if (*(a1 + 144) < *(a1 + 136))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 136);
        v14 = *(a1 + 144);
        *buf = 136315906;
        v28 = "VolumeControl.h";
        v29 = 1024;
        v30 = 1310;
        v31 = 2048;
        v32 = v13;
        v33 = 2048;
        v34 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Encountered an invalid range for the variable EQ's current gain parameter: [%f, %f]", buf, 0x26u);
      }
    }
  }

  if (*(a1 + 88) == 1)
  {
    v8 = *(a1 + 64) ? *(*(a1 + 48) + 36) : 0.0;
    if (*(a1 + 136) != v8 || (v9 = sub_59224(a1 + 40), *(a1 + 144) != *&v9))
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 64))
          {
            v17 = *(*(a1 + 48) + 36);
          }

          else
          {
            v17 = 0.0;
          }

          v18 = sub_59224(a1 + 40);
          v19 = *(a1 + 136);
          v20 = *(a1 + 144);
          *buf = 136316418;
          v28 = "VolumeControl.h";
          v29 = 1024;
          v30 = 1315;
          v31 = 2048;
          v32 = v17;
          v33 = 2048;
          v34 = *&v18;
          v35 = 2048;
          v36 = v19;
          v37 = 2048;
          v38 = v20;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VolumeCurve's range [%f, %f] doesn't match volume range of command [%f, %f]", buf, 0x3Au);
        }
      }
    }
  }

  if (v23 == 1)
  {
    sub_477A0(v22);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }

  *(a1 + 160) = 0x500000007;
  return a1;
}

void sub_42F724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_13EFE4(v16);
  if (a15 == 1)
  {
    sub_477A0(a11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_42F790(void *a1, int a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5)
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

  *a1 = off_6D5CF8;
  return a1;
}

void sub_42F83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

float sub_42F870(double *a1)
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

uint64_t sub_42F9F8(void *a1, float *a2)
{
  v4 = (a1 + 13);
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 312))(a1);
  v7 = sub_275004(v4, v5, 0);
  if (a1 + 14 == v7)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, v5);
      v29 = v34 >= 0 ? v33 : v33[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 521;
      v38 = 2080;
      v39 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v8 = v7;
  v9 = sub_5544(19);
  v10 = sub_5544(39);
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
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  if ((v12 & v13) == 0)
  {
    v9 = v10;
  }

  if (*(v9 + 8))
  {
LABEL_10:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v33, v6);
      v15 = v34;
      v16 = v33[0];
      v17 = *a2;
      sub_22170(__p, v5);
      v18 = v33;
      if (v15 < 0)
      {
        v18 = v16;
      }

      v19 = __p[0];
      v20 = *(v8 + 14);
      if (v32 >= 0)
      {
        v19 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "VolumeControl.h";
      v36 = 1024;
      v37 = 525;
      v38 = 2080;
      v39 = v18;
      v40 = 2048;
      v41 = v17;
      v42 = 2080;
      v43 = v19;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u", buf, 0x36u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }
  }

LABEL_20:
  v21 = a1[4];
  if (!v21)
  {
    return 0;
  }

  v22 = std::__shared_weak_count::lock(v21);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = a1[3];
  if (v24)
  {
    v25 = (*(*v24 + 64))(v24, v5, v6, a2, 0);
  }

  else
  {
    v25 = 0;
  }

  sub_1A8C0(v23);
  return v25;
}

void sub_42FDC8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_42FE08@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2288C(v15);
  sub_22170(__p, 0x76727132u);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_22564(&v16, v4, v5);
  sub_22564(&v16, " ", 1);
  if (a1[15])
  {
    v6 = *(a1[13] + 56);
  }

  v7 = std::ostream::operator<<();
  sub_22564(v7, " ", 1);
  v8 = (*(*a1 + 136))(a1);
  if (v8 == 1684234860)
  {
    v9 = "dB";
  }

  else
  {
    v9 = "Scalar";
  }

  if (v8 == 1684234860)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  sub_22564(v7, v9, v10);
  sub_22564(v7, " ", 1);
  std::ostream::operator<<();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_8E878(a2, v15);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_4300CC(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*a1 + 16))(a1, *(a1 + 152));
    v3 = 1;
  }

  else
  {
    v4 = (*(*a1 + 128))(a1, 1684234860);
    v5 = (*(*a1 + 128))(a1, 1935895666);
    v6 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v6, *(a1 + 160), v4);
    v7 = (*(*a1 + 320))(a1);
    sub_E8A40(a1, v7, *(a1 + 164), v5);
    v3 = 0;
  }

  *(a1 + 156) = v3;
}

void sub_43024C(unsigned int *a1, unsigned int a2, int a3, float a4, float a5)
{
  v50 = a3;
  if (a1[42])
  {
    v10 = sub_5544(39);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v12 = "enabled";
      }

      else
      {
        v12 = "disabled";
      }

      v13 = v48;
      sub_22170(v48, a1[42]);
      if (v49 < 0)
      {
        v13 = v48[0];
      }

      sub_22170(v46, a2);
      v14 = v47;
      v15 = v46[0];
      sub_E896C(__p, a1);
      v16 = v46;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *buf = 136316930;
      *&buf[4] = "VolumeControl.h";
      if (v45 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v52 = 1024;
      v53 = 1435;
      v54 = 2080;
      v55 = v12;
      v56 = 2080;
      *v57 = v13;
      *&v57[8] = 2080;
      v58 = v16;
      v59 = 2048;
      v60 = a4;
      v61 = 2048;
      v62 = a5;
      v63 = 2080;
      v64 = v17;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set Duck command  %s, mParameterID: '%s', type: '%s', gain: %f, time: %f on chain '%s'.", buf, 0x4Eu);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }
    }

    if (a2 != 1)
    {
      v35 = sub_5544(14);
      v36 = *v35;
      if (*v35)
      {
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v48, a2);
          v37 = v49 >= 0 ? v48 : v48[0];
          *buf = 136315650;
          *&buf[4] = "VolumeControl.h";
          v52 = 1024;
          v53 = 1437;
          v54 = 2080;
          v55 = v37;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: duck type: '%s' not supported!", buf, 0x1Cu);
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }
        }
      }
    }

    *buf = a1[43];
    v46[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!v46[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    *buf = a1[44];
    __p[0] = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!__p[0])
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
    }

    *buf = a1[45];
    cf = CFNumberCreate(0, kCFNumberIntType, buf);
    if (!cf)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, "Could not construct");
    }

    v18 = a5 * 1000.0;
    v19 = a1[46];
    if (a1[47] != 1)
    {
      v18 = a5;
    }

    v42 = v18;
    if (v19 == 1)
    {
      a4 = log10f(a4) * 20.0;
    }

    v41 = a4;
    sub_2759A8(buf, v46[0], &v50);
    sub_275A8C((&v53 + 2), __p[0], &v41);
    sub_275A8C(&v57[2], cf, &v42);
    v48[0] = buf;
    v48[1] = &dword_0 + 3;
    v20 = sub_69CE8(v48);
    for (i = 0; i != -6; i -= 2)
    {
      v22 = (&v58)[i];
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *&v57[i * 8 + 2];
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *buf = v20;
    v24 = (*(*a1 + 320))(a1);
    sub_3DE5A4(a1, v24, a1[42]);
    CFRelease(v20);
    if (cf)
    {
      CFRelease(cf);
    }

    if (__p[0])
    {
      CFRelease(__p[0]);
    }

    if (v46[0])
    {
      CFRelease(v46[0]);
    }
  }

  if (sub_DD820())
  {
    v25 = (*(*a1 + 320))(a1);
    if (sub_3DEC5C(a1, v25))
    {
      v26 = sub_8703C();
      v27 = (*(*v26 + 296))(v26);
      v28 = v27;
      if (a3)
      {
        v29 = 1;
      }

      else
      {
        v29 = v27 == 0;
      }

      v30 = v29;
      LODWORD(v48[0]) = v30;
      v31 = sub_5544(39);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[4] = "VolumeControl.h";
        v53 = 1481;
        v33 = "enabled";
        v54 = 2080;
        *buf = 136316162;
        v52 = 1024;
        if (!a3)
        {
          v33 = "disabled";
        }

        v55 = v33;
        v56 = 1024;
        *v57 = v28;
        *&v57[4] = 1024;
        *&v57[6] = v30;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Duck %s, enhance dialog level %u, Set AUSI bypass %u", buf, 0x28u);
      }

      v34 = (*(*a1 + 320))(a1);
      sub_3DE5A4(a1, v34, 0x73697073u);
    }
  }
}

void sub_4308BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_430A04(uint64_t a1, float a2)
{
  v2 = a2;
  *(a1 + 152) = a2;
  if ((*(*a1 + 136))(a1) == 1935895666)
  {
    sub_5B898(a1 + 40, v2);
    v2 = v4;
  }

  v6 = *(a1 + 136);
  v5 = *(a1 + 144);
  v7 = v5 - v6;
  v8 = v2 - v6;
  v9 = fminf(fmaxf(v8 / v7, 0.0), 1.0);
  v10 = v6 <= v2;
  v11 = 0.5;
  if (!v10)
  {
    v11 = 0.0;
  }

  v12 = v11;
  if (v5 >= v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  if (v7 == 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  v15 = sub_5544(19);
  v16 = sub_5544(39);
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
      goto LABEL_17;
    }
  }

  if ((v18 & v19) == 0)
  {
    v15 = v16;
  }

LABEL_17:
  v20 = *v15;
  if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    sub_E896C(__p, a1);
    if (v25 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "VolumeControl.h";
    v27 = 1024;
    v28 = 1400;
    v29 = 2048;
    v30 = v2;
    v31 = 2048;
    v32 = v14;
    v33 = 2080;
    v34 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d Setting Volume (VEQv2) with preGain %f dB, currentGain %f on chain '%s'.", buf, 0x30u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v22 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v22, *(a1 + 160), v2);
  v23 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v23, *(a1 + 164), v14);
}

void sub_430CBC(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_430D8C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_430DD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D3EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_430E4C(void *a1, unint64_t a2)
{
  cf[0] = CFStringCreateWithBytes(0, "Generic", 7, 0x8000100u, 0);
  if (!cf[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_42ED40(v21, cf);
  v4 = std::string::append(v21, "volume_only.dspg", 0x10uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if ((v21[23] & 0x80000000) != 0)
  {
    operator delete(*v21);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v6 = sub_5544(21);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v20.__r_.__value_.__r.__words[0];
    }

    *v21 = 136315650;
    *&v21[4] = "RoutingSettings_Aspen.cpp";
    *&v21[12] = 1024;
    *&v21[14] = 1319;
    *&v21[18] = 2080;
    *&v21[20] = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume only graph is %s", v21, 0x1Cu);
  }

  sub_53E8(v18, "volume only");
  LOBYTE(cf[0]) = 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  v14 = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v23 = xmmword_5C76D0;
  v24 = 2;
  sub_123D6C(v21, &v23, 3);
  sub_431270(a1, v18, &v20, cf, &__p, 0, a2 | 0x100000000, HIDWORD(a2) | 0x100000000);
  sub_DDE50(v21);
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(cf[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if ((atomic_load_explicit(&qword_6FD208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD208))
  {
    sub_27433C();
  }

  v9 = qword_6FD1F8;
  v10 = unk_6FD200;
  if (unk_6FD200)
  {
    atomic_fetch_add_explicit((unk_6FD200 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2760A0(a1, v9, v10);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_431168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_guard_abort(&qword_6FD208);
  sub_2B1E18(v37);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_431270(uint64_t a1, char *a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(__p, 0, sizeof(__p));
  if ((a7 & 0x100000000) != 0 && (a8 & 0x100000000) != 0)
  {
    v15 = __PAIR64__(a8, a7);
    sub_43138C(__p, &v15);
  }

  sub_43145C(a1, a2, 1684434036, a3, a4, a5, a6);
  v14 = __p[0];
  if (__p[0])
  {

    operator delete(v14);
  }
}

void sub_431370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_43138C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_189A00();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_1E2544(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_43145C(uint64_t a1, char *a2, int a3, std::string *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1E1A58(buf, a4);
  std::__fs::filesystem::__status(v12, 0);
  if (SBYTE3(v27) < 0)
  {
    operator delete(*buf);
  }

  if (v24 == 255 || v24 == 0)
  {
    v14 = sub_5544(21);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = a4->__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RoutingSettings_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3287;
        v26 = 2080;
        v27 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find graph file %s", buf, 0x1Cu);
      }
    }
  }

  if (a2[23] >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  result = sub_346990(a1, v17, a3);
  if (a7 || (*(a5 + 24) & 1) == 0)
  {
    v19 = sub_1E1A58(buf, a4);
    std::__fs::filesystem::__status(v19, 0);
    if (SBYTE3(v27) < 0)
    {
      operator delete(*buf);
    }

    if (v24 == 255 || !v24)
    {
      v20 = sub_5544(21);
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
        {
          if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = a4;
          }

          else
          {
            v22 = a4->__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "RoutingSettings_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1870;
          v26 = 2080;
          v27 = v22;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find graph file %s", buf, 0x1Cu);
        }
      }
    }

    operator new();
  }

  return result;
}

void sub_4324F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  __cxa_guard_abort(&qword_6FD4D0);
  sub_477A0(*(v37 - 160));
  sub_1A8C0(v36);
  sub_12A2C4(&a13);
  sub_12A2C4(&a19);
  sub_2B1E18(a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_4327F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_DDE50(v2);
    operator delete();
  }

  return a1;
}

void sub_432840(std::__fs::filesystem::path *a1, std::string *a2, std::string *a3, char *a4)
{
  sub_1E1A58(&v23.__pn_, a2);
  v7 = std::__fs::filesystem::path::__filename(&v23);
  if (v7.__size_)
  {
    if ((SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v9 = v23.__pn_.__r_.__value_.__r.__words[0];
      v8 = &v7.__data_[-v23.__pn_.__r_.__value_.__r.__words[0]];
      if (v23.__pn_.__r_.__value_.__l.__size_ >= &v7.__data_[-v23.__pn_.__r_.__value_.__r.__words[0]])
      {
        v23.__pn_.__r_.__value_.__l.__size_ = &v7.__data_[-v23.__pn_.__r_.__value_.__r.__words[0]];
        goto LABEL_7;
      }
    }

    else
    {
      v8 = (v7.__data_ - &v23);
      if ((v7.__data_ - &v23) <= SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]))
      {
        *(&v23.__pn_.__r_.__value_.__s + 23) = v7.__data_ - &v23;
        v9 = &v23;
LABEL_7:
        v8[v9] = 0;
        goto LABEL_8;
      }
    }

    sub_1DE47C();
  }

LABEL_8:
  if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_54A0(&__dst, v23.__pn_.__r_.__value_.__l.__data_, v23.__pn_.__r_.__value_.__l.__size_);
    if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __dst = v23;
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = a3->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  v12 = a4[23];
  if (v12 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  if (v12 >= 0)
  {
    v14 = a4[23];
  }

  else
  {
    v14 = *(a4 + 1);
  }

  if (v14)
  {
    if (size >= v14)
    {
      v15 = &size[v11];
      v16 = *v13;
      v17 = v11;
      do
      {
        v18 = &size[-v14];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v16, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, v13, v14))
        {
          if (v20 == v15 || &v20[-v11] == -1)
          {
            break;
          }

          goto LABEL_39;
        }

        v17 = v20 + 1;
        size = (v15 - (v20 + 1));
      }

      while (size >= v14);
    }

    sub_284070(&v21, &a3->__r_.__value_.__l.__data_, a4);
    __p = v21;
    memset(&v21, 0, sizeof(v21));
    sub_1E1AC0(&v23, &__dst, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(a1, v23.__pn_.__r_.__value_.__l.__data_, v23.__pn_.__r_.__value_.__l.__size_);
      goto LABEL_44;
    }

LABEL_42:
    *a1 = v23;
    goto LABEL_46;
  }

LABEL_39:
  sub_1E1A58(&__p, a3);
  sub_1E1AC0(&v23, &__dst, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  sub_54A0(a1, v23.__pn_.__r_.__value_.__l.__data_, v23.__pn_.__r_.__value_.__l.__size_);
LABEL_44:
  if (SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_432AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_432B28(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_54A0(v4, *a2, *(a2 + 8));
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 16);
  }

  v6 = a3;
  operator new();
}

void sub_432C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v24);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_432E14(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

double sub_432E2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  v5 = sub_5544(25);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(__p, *(a1 + 32));
    v7 = v11 >= 0 ? __p : __p[0];
    v8 = *(a1 + 31) >= 0 ? v4 : *(a1 + 8);
    *buf = 136315906;
    v13 = "RoutingSettings_Aspen.cpp";
    v14 = 1024;
    *v15 = 1838;
    *&v15[4] = 2080;
    *&v15[6] = v7;
    v16 = 2080;
    v17 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading plist for property %s from path %s", buf, 0x26u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_EE47C(__p, v4);
  if (__p[0])
  {
    operator new();
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return result;
}

void sub_43303C(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void sub_433080(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

_BYTE *sub_433094(uint64_t a1, void *a2)
{
  *a2 = off_6D3CD0;
  result = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    result = sub_54A0(result, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *result = v5;
  }

  a2[4] = *(a1 + 32);
  return result;
}

void sub_4331A0(uint64_t a1)
{
  *a1 = off_6D3CD0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_433210(uint64_t a1)
{
  *a1 = off_6D3CD0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_43326C(uint64_t a1)
{
  v2 = *(a1 + 24);
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

void sub_4332EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DCE80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_433360()
{
  xmmword_701F38 = 0u;
  unk_701F48 = 0u;
  xmmword_701F28 = 0u;
  strcpy(&dword_701F58, "tlfd");
  byte_701F60 = 0;
  byte_701FA8 = 0;
  xmmword_701FB8 = 0u;
  unk_701FC8 = 0u;
  xmmword_701FD8 = 0u;
  unk_701FE8 = 0u;
  qword_701FF8 = 0;
  sub_16040C(&v0, 0);
  if ((atomic_load_explicit(&qword_6FD220, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6FD220))
    {
      sub_42A564();
    }
  }

  sub_42BDD0(&xmmword_701F28, 0, 0, 0);
}

void sub_433480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_guard_abort(&qword_6FD220);
  sub_477A0(a11);
  sub_2B1E18(&xmmword_701F28);
  _Unwind_Resume(a1);
}

void sub_4334D4(uint64_t a1, float *a2)
{
  sub_37E0FC(a1, "fixed_gain");
  v3 = *a2;
  v4 = sub_5544(21);
  v5 = *v4;
  if (*v4)
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "RoutingSettings_Aspen.cpp";
      v8 = 1024;
      v9 = 627;
      v10 = 2048;
      v11 = v3;
      v12 = 1024;
      v13 = 64003;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Instantiating FixedGain AU. Gain value: %f, Gain type: %u", buf, 0x22u);
    }
  }

  sub_42B38C(&__p, 0, 0, 0);
}

void sub_43371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_12A2C4(v5 - 80);
  sub_87980(va);
  sub_12A2C4(va1);
  sub_2B1E18(v4);
  _Unwind_Resume(a1);
}

void sub_43379C(uint64_t a1, float *a2)
{
  sub_37E0FC(a1, "fixed_gain");
  v3 = *a2;
  v4 = sub_5544(21);
  v5 = *v4;
  if (*v4)
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "RoutingSettings_Aspen.cpp";
      v8 = 1024;
      v9 = 627;
      v10 = 2048;
      v11 = v3;
      v12 = 1024;
      v13 = 64002;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Instantiating FixedGain AU. Gain value: %f, Gain type: %u", buf, 0x22u);
    }
  }

  sub_42B38C(&__p, 0, 0, 0);
}

void sub_4339E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_12A2C4(v5 - 80);
  sub_87980(va);
  sub_12A2C4(va1);
  sub_2B1E18(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_433A64(unsigned int a1)
{
  v2 = qword_70A108;
  if (!qword_70A108)
  {
LABEL_7:
    if (a1 > 1635085419)
    {
      if (a1 == 2003068262)
      {
        goto LABEL_19;
      }

      v5 = 1635085420;
    }

    else
    {
      if (a1 == 1633759844)
      {
        goto LABEL_19;
      }

      v5 = 1634231920;
    }

    if (a1 != v5)
    {
      v14 = sub_5544(21);
      v15 = *v14;
      if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      sub_22170(__p, a1);
      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315650;
      v20 = "RoutingSettings_Aspen.cpp";
      v21 = 1024;
      v22 = 493;
      v23 = 2080;
      v24 = v16;
      v11 = "%25s:%-5d Invalid headset sub-type: '%s' not found in kDSPTuningHeadsetFilenames";
      v12 = v15;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_25;
    }

LABEL_19:
    v8 = sub_5544(21);
    v9 = *v8;
    if (!*v8 || !os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    sub_22170(__p, a1);
    if (v18 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    v20 = "RoutingSettings_Aspen.cpp";
    v21 = 1024;
    v22 = 491;
    v23 = 2080;
    v24 = v10;
    v11 = "%25s:%-5d Skip loading tunings for headset sub-type: '%s'";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
LABEL_25:
    _os_log_impl(&dword_0, v12, v13, v11, buf, 0x1Cu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v3 = qword_70A108;
  while (1)
  {
    v4 = *(v3 + 32);
    if (v4 <= a1)
    {
      break;
    }

LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (v4 < a1)
  {
    v3 += 8;
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
      v6 = *(v2 + 32);
      if (v6 <= a1)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
LABEL_34:
        sub_DE7DC("map::at:  key not found");
      }
    }

    if (v6 >= a1)
    {
      return *(v2 + 40);
    }

    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_34;
    }
  }
}

void sub_433CB4(void *a1, int a2, char *a3, CFStringRef *a4, unsigned int a5, int a6, int a7)
{
  v14 = sub_5544(21);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1391;
    v32 = 1024;
    *v33 = a2;
    *&v33[4] = 2080;
    *&v33[6] = a3;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d GetHeadsetPlaybackDSPChain: ChainType: %d, strip: %s", buf, 0x22u);
  }

  v16 = sub_433A64(a5);
  sub_37E0FC(a1, a3);
  v17 = sub_42A810(a4, a3);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      sub_53E8(buf, a3);
      sub_42F1B0(a1, buf, 0);
    }
  }

  else if (!a2)
  {
    if (a5 && a5 != 1752709424)
    {
      sub_42D994(a1, a3, v17, v16);
    }

    if (a6 && a7)
    {
      v18 = sub_5544(21);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, a5);
        if (v30 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingSettings_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1434;
        v32 = 2080;
        *v33 = v20;
        *&v33[8] = 1024;
        *&v33[10] = 1;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding Volume AU (bypassed) for wireless headset %s for volume strategy %d", buf, 0x22u);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_42BDD0(a1, a3, 0, 1);
    }

    if (a6 == 1)
    {
      v21 = sub_5544(21);
      v22 = *v21;
      if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingSettings_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 352;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PlaybackDosimetry : Using AggregateVolumeCommand with direct mode for SW volume control on headphones", buf, 0x12u);
      }

      v23 = qword_6FD0A0;
      v24 = *algn_6FD0A8;
      if (*algn_6FD0A8)
      {
        atomic_fetch_add_explicit((*algn_6FD0A8 + 8), 1uLL, memory_order_relaxed);
      }

      sub_2760A0(a1, v23, v24);
      if (v24)
      {
        sub_1A8C0(v24);
      }

      sub_42BDD0(a1, a3, 0, 0);
    }

    sub_53E8(v26, a3);
    if (v27 >= 0)
    {
      v25 = v26;
    }

    else
    {
      v25 = v26[0];
    }

    sub_42B38C(&v28, v25, 0, 0);
  }

  buf[0] = 0;
  buf[8] = 0;
  sub_42CAB0();
}

void sub_434A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  __cxa_guard_abort(&qword_6FD238);
  sub_2B1E18(v38);
  _Unwind_Resume(a1);
}

void sub_434D70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_434DE4(void *a1, int a2, char *a3, char *a4, std::string::size_type a5, unsigned int a6, int a7, int a8, char *__s, void *a10)
{
  v15 = sub_5544(21);
  v16 = *v15;
  if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1486;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    *&buf[24] = 2080;
    *&buf[26] = a3;
    v100 = 2080;
    v101 = a4;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d GetHeadsetPlaybackDSPGraph: ChainType: %d, graph: %s, strip: %s", buf, 0x2Cu);
  }

  v17 = sub_433A64(a6);
  v92 = 0u;
  v93 = 0u;
  v94 = 1065353216;
  if (a6 - 1647718502 < 2 || a6 == 1214394677 || a6 == 1214329654)
  {
    if (!v17)
    {
      v79 = sub_5544(14);
      v80 = *v79;
      if (*v79 && os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingSettings_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1514;
        _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v102.__r_.__value_.__r.__words[0] = off_6D3C88;
    v102.__r_.__value_.__l.__size_ = a5;
    v102.__r_.__value_.__r.__words[2] = v17;
    v103 = &v102;
    sub_43760C(buf, v17, "AUNBandEQ", &v102);
    sub_437A0C(&v102);
    if (BYTE4(v101) == 1)
    {
      sub_42BA48(&v92, buf);
    }
  }

  LOBYTE(__p) = 0;
  v91 = 0;
  if (__s)
  {
    sub_53E8(&v102, __s);
    if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v102.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v102.__r_.__value_.__l.__size_;
    }

    sub_B0848(buf, size + 10);
    if (buf[23] >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    if (size)
    {
      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v102;
      }

      else
      {
        v20 = v102.__r_.__value_.__r.__words[0];
      }

      memmove(v19, v20, size);
    }

    strcpy(&v19[size], ".propstrip");
    if (v91 == 1)
    {
      if (SHIBYTE(v90) < 0)
      {
        operator delete(__p);
      }

      __p = *buf;
      v90 = *&buf[16];
    }

    else
    {
      __p = *buf;
      v90 = *&buf[16];
      v91 = 1;
    }

    v21 = sub_5544(21);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = &v102;
      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v102.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1527;
      *&buf[18] = 2080;
      *&buf[20] = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d headset propstrip name is %s", buf, 0x1Cu);
    }

    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }
  }

  *&cf = CFStringCreateWithBytes(0, "Generic", 7, 0x8000100u, 0);
  if (!cf)
  {
    v78 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v78, "Could not construct");
  }

  sub_42ED40(&v102, &cf);
  v24 = strlen(a3);
  v25 = std::string::append(&v102, a3, v24);
  *buf = *v25;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v82 = a8;
  if (cf)
  {
    CFRelease(cf);
  }

  v26 = buf[23];
  if (buf[23] >= 0)
  {
    v27 = buf[23];
  }

  else
  {
    v27 = *&buf[8];
  }

  sub_B0848(&v88, v27 + 5);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v88;
  }

  else
  {
    v28 = v88.__r_.__value_.__r.__words[0];
  }

  if (v27)
  {
    if (v26 >= 0)
    {
      v29 = buf;
    }

    else
    {
      v29 = *buf;
    }

    memmove(v28, v29, v27);
  }

  strcpy(v28 + v27, ".dspg");
  if (v26 < 0)
  {
    operator delete(*buf);
  }

  v30 = sub_5544(21);
  v31 = *v30;
  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
  {
    v32 = &v88;
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v88.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1535;
    *&buf[18] = 2080;
    *&buf[20] = v32;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d headset graph name is %s", buf, 0x1Cu);
  }

  if (a6 - 1647718502 < 2 || a6 == 1214394677 || a6 == 1214329654)
  {
    LODWORD(v104.__r_.__value_.__l.__data_) = 1652122993;
    LODWORD(v87[0]) = 0;
    v96.__pn_.__r_.__value_.__r.__words[0] = 0;
    sub_437A8C(&v102, &v104);
    sub_280AF8(&v95, v87, 4);
    sub_437B60(&v102.__r_.__value_.__r.__words[2], &v95);
    *&cf = &v102;
    *(&cf + 1) = 2;
    v33 = 0;
    v96.__pn_.__r_.__value_.__r.__words[0] = sub_69CE8(&cf);
    while (1)
    {
      v34 = *(&v102 + v33 * 8 + 24);
      if (v34)
      {
        CFRelease(v34);
      }

      v35 = v102.__r_.__value_.__r.__words[v33 + 2];
      if (v35)
      {
        CFRelease(v35);
      }

      v33 -= 2;
      if (v33 == -4)
      {
        if (v95)
        {
          CFRelease(v95);
        }

        operator new();
      }
    }
  }

  v36 = sub_DDE9C(a10, 2);
  sub_53E8(buf, a3);
  v37 = buf[23];
  v39 = *buf;
  v38 = *&buf[8];
  if (buf[23] >= 0)
  {
    v40 = buf;
  }

  else
  {
    v40 = *buf;
  }

  if (buf[23] >= 0)
  {
    v38 = buf[23];
  }

  v41 = &v40[v38];
  if (v38 >= 4)
  {
    v43 = v40;
    do
    {
      v42 = memchr(v43, 115, v38 - 3);
      if (!v42)
      {
        break;
      }

      if (*v42 == 1769105779)
      {
        goto LABEL_81;
      }

      v43 = v42 + 1;
      v38 = v41 - v43;
    }

    while (v41 - v43 > 3);
    v42 = v41;
  }

  else
  {
    v42 = &v40[v38];
  }

LABEL_81:
  v45 = v42 == v41 || v42 - v40 == -1;
  if (v37 < 0)
  {
    operator delete(v39);
    if (v45)
    {
      goto LABEL_89;
    }
  }

  else if (v45)
  {
LABEL_89:
    if ((atomic_load_explicit(&qword_6FD378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD378))
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_6FD390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD390))
    {
      sub_42D438();
    }

    if ((atomic_load_explicit(&qword_6FD3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD3B8))
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_6FD3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD3E0))
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_6FD408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD408))
    {
      operator new();
    }

    sub_281510();
  }

  if (v36)
  {
    if ((atomic_load_explicit(&qword_6FD478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD478))
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_6FD490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD490))
    {
      sub_42D438();
    }

    if ((atomic_load_explicit(&qword_6FD4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD4B8))
    {
      operator new();
    }

    sub_281510();
  }

  v87[0] = v87;
  v87[1] = v87;
  v87[2] = 0;
  sub_53E8(&v102, a4);
  sub_53E8(&cf, a4);
  *buf = cf;
  *&buf[16] = v98;
  v98 = 0;
  cf = 0uLL;
  buf[24] = 1;
  sub_431270(a1, &v102, &v88, buf, &__p, a5, 0x100000002, 0x100000002);
  if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(cf);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (a7)
  {
    if (sub_DDE9C(a10, 1))
    {
      if ((atomic_load_explicit(&qword_6FD250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD250))
      {
        sub_437E84();
      }

      v46 = qword_6FD240;
      v47 = qword_6FD248;
      if (qword_6FD248)
      {
        atomic_fetch_add_explicit((qword_6FD248 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v48 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v88;
      }

      else
      {
        v49 = v88.__r_.__value_.__r.__words[0];
      }

      if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v88.__r_.__value_.__l.__size_;
      }

      if (v48 >= 11)
      {
        v50 = v49 + v48;
        v51 = v49;
        do
        {
          v52 = memchr(v51, 118, v48 - 10);
          if (!v52)
          {
            break;
          }

          if (*v52 == 0x696C656D756C6F76 && *(v52 + 3) == 0x74696D696C656D75)
          {
            if (v52 == v50 || v52 - v49 == -1)
            {
              break;
            }

            if ((atomic_load_explicit(&qword_6FD268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD268))
            {
              sub_437F28();
            }

            v46 = qword_6FD258;
            v47 = qword_6FD260;
            if (qword_6FD260)
            {
              atomic_fetch_add_explicit((qword_6FD260 + 8), 1uLL, memory_order_relaxed);
            }

            goto LABEL_146;
          }

          v51 = (v52 + 1);
          v48 = v50 - v51;
        }

        while (v50 - v51 >= 11);
      }

      if (v82)
      {
        LODWORD(v104.__r_.__value_.__l.__data_) = 1652127340;
        LOBYTE(__dst) = 1;
        v96.__pn_.__r_.__value_.__r.__words[0] = 0;
        sub_437A8C(&v102, &v104);
        sub_280AF8(&v95, &__dst, 1);
        sub_437B60(&v102.__r_.__value_.__r.__words[2], &v95);
        *&cf = &v102;
        *(&cf + 1) = 2;
        v54 = 0;
        v96.__pn_.__r_.__value_.__r.__words[0] = sub_69CE8(&cf);
        while (1)
        {
          v55 = *(&v102 + v54 * 8 + 24);
          if (v55)
          {
            CFRelease(v55);
          }

          v56 = v102.__r_.__value_.__r.__words[v54 + 2];
          if (v56)
          {
            CFRelease(v56);
          }

          v54 -= 2;
          if (v54 == -4)
          {
            if (v95)
            {
              CFRelease(v95);
            }

            operator new();
          }
        }
      }

      v46 = qword_6FD0B0;
      v47 = *algn_6FD0B8;
      if (*algn_6FD0B8)
      {
        atomic_fetch_add_explicit((*algn_6FD0B8 + 8), 1uLL, memory_order_relaxed);
      }
    }

LABEL_146:
    sub_2760A0(a1, v46, v47);
    if (v47)
    {
      sub_1A8C0(v47);
    }
  }

  v57 = sub_5544(21);
  v58 = *v57;
  if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_DEFAULT))
  {
    v59 = &v88;
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v59 = v88.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "RoutingSettings_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1642;
    *&buf[18] = 2080;
    *&buf[20] = v59;
    _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding SW Volume Property to Headset Playback DSPGraph chain %s", buf, 0x1Cu);
  }

  v60 = buf;
  sub_53E8(buf, a3);
  v61 = buf[23];
  v63 = *buf;
  v62 = *&buf[8];
  if (buf[23] < 0)
  {
    v60 = *buf;
  }

  if (buf[23] >= 0)
  {
    v62 = buf[23];
  }

  v64 = &v60[v62];
  if (v62 >= 4)
  {
    v65 = v60;
    do
    {
      v66 = memchr(v65, 115, v62 - 3);
      if (!v66)
      {
        break;
      }

      if (*v66 == 1769105779)
      {
        goto LABEL_163;
      }

      v65 = v66 + 1;
      v62 = v64 - v65;
    }

    while (v64 - v65 > 3);
  }

  v66 = v64;
LABEL_163:
  v68 = v66 == v64 || v66 - v60 == -1;
  if (v61 < 0)
  {
    operator delete(v63);
    if (!v68)
    {
      goto LABEL_199;
    }
  }

  else if (!v68)
  {
    goto LABEL_199;
  }

  v69 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v88;
  }

  else
  {
    v70 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v69 = v88.__r_.__value_.__l.__size_;
  }

  if (v69 >= 11)
  {
    v71 = v70 + v69;
    v72 = v70;
    do
    {
      v73 = memchr(v72, 118, v69 - 10);
      if (!v73)
      {
        break;
      }

      if (*v73 == 0x696C656D756C6F76 && *(v73 + 3) == 0x74696D696C656D75)
      {
        if (v73 == v71 || v73 - v70 == -1)
        {
          break;
        }

        if (a6 >> 1 == 823859251)
        {
          if ((atomic_load_explicit(&qword_6FD280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD280))
          {
            *buf = 1752659567;
            v102.__r_.__value_.__s.__data_[0] = 1;
            sub_2795A4();
          }

          v75 = qword_6FD270;
          v76 = *algn_6FD278;
          if (*algn_6FD278)
          {
            atomic_fetch_add_explicit((*algn_6FD278 + 8), 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          if ((atomic_load_explicit(&qword_6FD298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD298))
          {
            *buf = 1752659567;
            v102.__r_.__value_.__s.__data_[0] = 0;
            sub_2795A4();
          }

          v75 = qword_6FD288;
          v76 = unk_6FD290;
          if (unk_6FD290)
          {
            atomic_fetch_add_explicit((unk_6FD290 + 8), 1uLL, memory_order_relaxed);
          }
        }

        goto LABEL_197;
      }

      v72 = (v73 + 1);
      v69 = v71 - v72;
    }

    while (v71 - v72 >= 11);
  }

  if ((atomic_load_explicit(&qword_6FD2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD2B0))
  {
    *buf = 1752659567;
    sub_437FF8();
  }

  v75 = qword_6FD2A0;
  v76 = qword_6FD2A8;
  if (qword_6FD2A8)
  {
    atomic_fetch_add_explicit((qword_6FD2A8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_197:
  sub_2760A0(a1, v75, v76);
  if (v76)
  {
    sub_1A8C0(v76);
  }

LABEL_199:
  sub_87980(v87);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v91 == 1 && SHIBYTE(v90) < 0)
  {
    operator delete(__p);
  }

  sub_EF820(v93);
  v77 = v92;
  *&v92 = 0;
  if (v77)
  {
    operator delete(v77);
  }
}

void sub_436EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, int a57, __int16 a58)
{
  __cxa_guard_abort(&qword_6FD298);
  sub_2B1E18(v58);
  sub_87980(&a41);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a56 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  sub_12A2C4(&a58);
  _Unwind_Resume(a1);
}

void sub_43760C(_BYTE *a1, const char *a2, const char *a3, uint64_t a4)
{
  if (!a4)
  {
    sub_46A74();
  }

  v7 = (*(*a4 + 48))(a4);
  if (v7)
  {
    v8 = sub_478844(v7, a2, 1u);
    v9 = sub_5544(21);
    v10 = *v9;
    if (v8)
    {
      if (v10 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "RoutingSettings_Aspen.cpp";
        v22 = 1024;
        *__p = 580;
        *&__p[4] = 2080;
        *&__p[6] = a2;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding supplementary preset  %s (%@)", buf, 0x26u);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      theDict = Mutable;
      v20 = 257;
      if (a3)
      {
        v12 = CFStringCreateWithCString(0, a3, 0x600u);
        *buf = v12;
        buf[8] = 1;
        if (v12 && HIBYTE(v20) == 1 && theDict)
        {
          CFDictionarySetValue(theDict, @"BoxName", v12);
        }

        sub_BDC5C(buf);
        Mutable = theDict;
      }

      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"Preset", v8);
        Mutable = theDict;
      }

      sub_10FD4(&cf, Mutable);
      operator new();
    }

    if (v10 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      v22 = 1024;
      *__p = 576;
      *&__p[4] = 2080;
      *&__p[6] = a3;
      v24 = 2080;
      v25 = a2;
      v15 = "%25s:%-5d Could not load AU preset by name for %s: %s";
      v16 = v10;
      v17 = 38;
      goto LABEL_22;
    }
  }

  else
  {
    v13 = sub_5544(21);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "RoutingSettings_Aspen.cpp";
      v22 = 1024;
      *__p = 571;
      *&__p[4] = 2080;
      *&__p[6] = a2;
      v15 = "%25s:%-5d Could not load disk tunings using preset file %s";
      v16 = v14;
      v17 = 28;
LABEL_22:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  *a1 = 0;
  a1[40] = 0;
}

void sub_4379A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_BDC5C(va1);
  sub_A1D30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_437A0C(uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t sub_437A8C(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "ID");
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

void sub_437B2C(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_437B60(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "data");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_437DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  sub_12A2C4(va);
  sub_12A2C4(va2);
  sub_87980(va1);
  _Unwind_Resume(a1);
}

void sub_4380D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_438148(uint64_t a1)
{
  *a1 = &off_6D40E0;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  operator delete();
}

uint64_t sub_4381BC(uint64_t a1)
{
  *a1 = &off_6D40E0;
  if (*(a1 + 112) == 1)
  {
    sub_477A0(*(a1 + 80));
  }

  return a1;
}

void sub_438210(double a1, double a2)
{
  v2 = a1;
  v3 = a2;
  operator new();
}

void sub_43829C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void *sub_4382C0(void *a1, _OWORD *a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v9 = 0;
  sub_2746D4(a1, a2, a3, a4, v7);
  if (v9 == 1)
  {
    sub_477A0(v8);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
    a1[20] = 0x76657167766F6C75;
    std::__shared_weak_count::__release_weak(a4);
  }

  else
  {
    a1[20] = 0x76657167766F6C75;
  }

  *a1 = &off_6D43E0;
  return a1;
}

void sub_43837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
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

  _Unwind_Resume(exception_object);
}

void sub_4383B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 24);
      if (v7 && (*(*v7 + 104))(*(a1 + 24), 1685287015, 1652127340, 0))
      {
        v8 = a2 ^ 1;
        (*(*v7 + 128))(v7, 1685287015, 1652127340, &v8, 4, 0, 0, 0);
        sub_1A8C0(v6);
        return;
      }

      sub_1A8C0(v6);
    }
  }

  (*(*a1 + 144))(a1, a2);
  *(a1 + 96) = a2;
}

void sub_4384F4(uint64_t a1)
{
  sub_13EFE4(a1);

  operator delete();
}

void sub_4385BC()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_438608(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_438718()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_438764(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D4198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_4387EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_6D3C88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_438888(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  sub_42B38C(&v2, a2, 0, 0);
}

void sub_438A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_12A2C4(&a14);
  sub_12A2C4(&a9);
  _Unwind_Resume(a1);
}

void sub_438DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  if (a8)
  {
    sub_1A8C0(a8);
  }

  sub_20BDB8(va1);
  sub_87980(va);
  sub_1A8C0(v9);
  _Unwind_Resume(a1);
}

void sub_438E4C(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_346990(a1, a3, 1936749172);
  if (a2 == 10)
  {
    sub_439000(a1, a3, a5, a6);
    sub_42BDD0(a1, a3, 0, 0);
  }

  v11 = sub_5544(21);
  v12 = *v11;
  if (*v11)
  {
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "RoutingSettings_Aspen.cpp";
      v15 = 1024;
      v16 = 2000;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d GetBuiltInSpeakerDSPChain_OpenLoop: Ignoring invalid SpeakerDSPChainType: %d", &v13, 0x18u);
    }
  }
}

uint64_t sub_439000(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
      sub_42BDD0(result, a2, 0, 0);
    }

    sub_42BDD0(result, a2, 0, 0);
  }

  return result;
}