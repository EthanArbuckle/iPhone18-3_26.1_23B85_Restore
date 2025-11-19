void sub_68788(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_687A8(uint64_t *a1)
{
  sub_65388(&v33, kCTAudioInputsKey);
  sub_68F9C(&v32, (a1 + 3), 1);
  sub_69ADC(buf, v33, &v32);
  sub_65388(&v31, kCTAudioOutputsKey);
  sub_68F9C(&v30, (a1 + 3), 0);
  sub_69ADC((&v41 + 2), v31, &v30);
  sub_65388(&cf, kCTAudioNoiseReductionEnabledKey);
  v2 = a1[9];
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = &kCFBooleanTrue;
  if (!v2)
  {
    v4 = &kCFBooleanFalse;
  }

  v5 = *v4;
  *&v43[3] = v3;
  *&v43[5] = v5;
  sub_65388(&v28, kCTAudioConnectedPortsKey);
  v6 = a1[10];
  if (v6 == a1 + 11)
  {
LABEL_13:
    __p = 0;
    v36 = 0;
    v37 = 0;
    v10 = sub_69BCC(&__p);
    p_p = &__p;
    sub_69C68(&p_p);
  }

  else
  {
    while (*(v6 + 7) != 1885892727)
    {
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == a1 + 11)
      {
        goto LABEL_13;
      }
    }

    sub_65388(&p_p, kCTAudioHeadphonesWiredPort);
    sub_4788C(&__p, 1uLL);
    *__p = p_p;
    v10 = sub_47904(__p, v36);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    if (p_p)
    {
      CFRelease(p_p);
    }
  }

  v11 = v28;
  if (v28)
  {
    CFRetain(v28);
  }

  v44 = v11;
  CFRetain(v10);
  v45 = v10;
  v34[0] = buf;
  v34[1] = 4;
  v12 = sub_69CE8(v34);
  for (i = 0; i != -64; i -= 16)
  {
    v14 = *(&v45 + i);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(&v44 + i);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  CFRelease(v10);
  if (v28)
  {
    CFRelease(v28);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v16 = a1[2];
  if (!v16 || !CFEqual(v12, v16))
  {
    v17 = sub_5544(13);
    if (*(v17 + 8))
    {
      v18 = *v17;
      if (*v17)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = CFCopyDescription(v12);
          v34[0] = v19;
          sub_1267C(&__p, v19);
          if (v19)
          {
            CFRelease(v19);
          }

          v20 = &__p;
          if (v37 < 0)
          {
            v20 = __p;
          }

          *buf = 136315650;
          v39 = "CoreTelephonyInterface.cpp";
          v40 = 1024;
          v41 = 632;
          v42 = 2080;
          *v43 = v20;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Sending route info '%s' to Core Telephony", buf, 0x1Cu);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }

    v21 = *a1;
    active = _CTServerConnectionSetActiveAudioSystemConfiguration();
    v23 = active;
    v24 = HIDWORD(active);
    if (HIDWORD(active) || active)
    {
      v25 = sub_5544(13);
      v26 = *v25;
      if (*v25)
      {
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v39 = "CoreTelephonyInterface.cpp";
          v40 = 1024;
          v41 = 638;
          v42 = 1024;
          v43[0] = v23;
          LOWORD(v43[1]) = 1024;
          *(&v43[1] + 2) = v24;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d _CTServerConnectionSetActiveAudioSystemConfiguration returned error: {domain, error} : {%d, %d}", buf, 0x1Eu);
        }
      }
    }

    v27 = a1[2];
    a1[2] = v12;
    CFRetain(v12);
    if (v27)
    {
      CFRelease(v27);
    }
  }

  CFRelease(v12);
}

void sub_68C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void *sub_68DB4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1DB894(a2);
    }

    sub_189A00();
  }

  return result;
}

uint64_t sub_68E60()
{
  if ((atomic_load_explicit(&qword_70A500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_70A500))
  {
    qword_70A4F8 = 0;
    __cxa_guard_release(&qword_70A500);
  }

  result = qword_70A4F8;
  if (!qword_70A4F8)
  {
    v1 = sub_5544(6);
    v2 = *v1;
    if (*v1 && os_log_type_enabled(*v1, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315394;
      v6 = "VirtualAudioQueue.h";
      v7 = 1024;
      v8 = 78;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to create VirtualAudio queue.", &v5, 0x12u);
    }

    v3 = dispatch_queue_create("VirtualAudio Queue", 0);
    v4 = qword_70A4F8;
    qword_70A4F8 = v3;
    if (v4)
    {
      dispatch_release(v4);
      v3 = qword_70A4F8;
    }

    dispatch_queue_set_specific(v3, "VirtualAudioQueueKey", "VirtualAudioQueueKey", 0);
    return qword_70A4F8;
  }

  return result;
}

void sub_68F9C(CFDictionaryRef *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 24;
  }

  if (a3)
  {
    sub_65388(&v49, kCTAudioBuiltInMic1Key);
    *buf = v49;
    v49 = 0;
    buf[8] = 0;
    sub_65388(&v51, kCTAudioBuiltInMic2Key);
    *&buf[16] = v51;
    v51 = 0;
    buf[24] = 0;
    sub_65388(&cf, kCTAudioBuiltInMic3Key);
    *&buf[32] = cf;
    cf = 0;
    v53 = 0;
    sub_69788(&v46, buf, 3);
    for (i = 32; i != -16; i -= 16)
    {
      v7 = *&buf[i];
      if (v7)
      {
        CFRelease(v7);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    v8 = v49;
    if (v49)
    {
LABEL_24:
      CFRelease(v8);
    }
  }

  else
  {
    sub_65388(&v49, kCTAudioSpeakerKey);
    *buf = v49;
    v49 = 0;
    buf[8] = 0;
    sub_65388(&v51, kCTAudioOtherKey);
    *&buf[16] = v51;
    v51 = 0;
    buf[24] = 0;
    sub_65388(&cf, kCTAudioReceiverKey);
    *&buf[32] = cf;
    cf = 0;
    v53 = 0;
    sub_69788(&v46, buf, 3);
    for (j = 32; j != -16; j -= 16)
    {
      v10 = *&buf[j];
      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    v8 = v49;
    if (v49)
    {
      goto LABEL_24;
    }
  }

  v11 = (a2 + v5);
  v14 = *v11;
  v12 = v11 + 1;
  v13 = v14;
  if (v14 != v12)
  {
    v15 = "Output";
    v16 = kCTAudioReceiverKey;
    v17 = kCTAudioSpeakerKey;
    if (a3)
    {
      v15 = "Input";
    }

    v41 = v15;
    v18 = kCTAudioOtherKey;
    v43 = kCTAudioBuiltInMic3Key;
    v19 = kCTAudioBuiltInMic2Key;
    v44 = kCTAudioBuiltInMic1Key;
    while (!v13[5])
    {
LABEL_58:
      v27 = v13[1];
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
        do
        {
          v28 = v13[2];
          v29 = *v28 == v13;
          v13 = v28;
        }

        while (!v29);
      }

      v13 = v28;
      if (v28 == v12)
      {
        goto LABEL_64;
      }
    }

    v20 = *(v13 + 8);
    if (a3)
    {
      if (v20 <= 1768778033)
      {
        v21 = v43;
        if (v20 != 1718446435)
        {
          v21 = v44;
          if (v20 != 1768778033)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v21 = v19;
        if (v20 != 1936550243)
        {
          v21 = v44;
          if (v20 != 1768778083)
          {
            v21 = v19;
            if (v20 != 1768778034)
            {
LABEL_48:
              v51 = 0;
              goto LABEL_49;
            }
          }
        }
      }
    }

    else
    {
      if (v20 == 1886613611)
      {
        v22 = v17;
      }

      else
      {
        v22 = v18;
      }

      if (v20 == 1886545251)
      {
        v21 = v16;
      }

      else
      {
        v21 = v22;
      }
    }

    sub_65388(&v51, v21);
    if (v51)
    {
      v23 = *sub_69B3C(&v46, &v49, &v51);
      if (!v23)
      {
        operator new();
      }

      LOBYTE(v23[1].info) = 1;
      goto LABEL_56;
    }

LABEL_49:
    v24 = sub_5544(13);
    if (*(v24 + 8))
    {
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&v49, *(v13 + 8));
          v26 = &v49;
          if (v50[3] < 0)
          {
            v26 = v49;
          }

          *buf = 136315906;
          *&buf[4] = "CoreTelephonyInterface.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 202;
          *&buf[18] = 2080;
          *&buf[20] = v41;
          *&buf[28] = 2080;
          *&buf[30] = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to determine CTkey for %s %s", buf, 0x26u);
          if (SHIBYTE(v50[3]) < 0)
          {
            operator delete(v49);
          }
        }
      }
    }

LABEL_56:
    if (v51)
    {
      CFRelease(v51);
    }

    goto LABEL_58;
  }

LABEL_64:
  v49 = 0;
  memset(v50, 0, sizeof(v50));
  sub_68DB4(&v49, v47[1]);
  v30 = v46;
  if (v46 != v47)
  {
    v31 = *v50;
    do
    {
      if (v31 >= *&v50[2])
      {
        v32 = (v31 - v49) >> 4;
        if ((v32 + 1) >> 60)
        {
          sub_189A00();
        }

        v33 = (*&v50[2] - v49) >> 3;
        if (v33 <= v32 + 1)
        {
          v33 = v32 + 1;
        }

        if (*&v50[2] - v49 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v34 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        *&buf[32] = &v49;
        if (v34)
        {
          sub_1DB894(v34);
        }

        *buf = 0;
        *&buf[8] = 16 * v32;
        *&buf[16] = (16 * v32);
        sub_69A00((16 * v32), v30[4], v30 + 40);
        *&buf[16] += 16;
        v35 = v49 + *&buf[8] - *v50;
        sub_65184(&v49, v49, *v50, v35);
        v36 = v49;
        v37 = *&v50[2];
        v49 = v35;
        v45 = *&buf[16];
        *v50 = *&buf[16];
        *&buf[16] = v36;
        *&buf[24] = v37;
        *buf = v36;
        *&buf[8] = v36;
        sub_65134(buf);
        v31 = v45;
      }

      else
      {
        v31 = (sub_69A00(v31, v30[4], v30 + 40) + 2);
      }

      *v50 = v31;
      v38 = v30[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v30[2];
          v29 = *v39 == v30;
          v30 = v39;
        }

        while (!v29);
      }

      v30 = v39;
    }

    while (v39 != v47);
  }

  v40 = sub_65448(&v49);
  *buf = &v49;
  sub_65830(buf);
  *a1 = v40;
  sub_69A68(v47[0]);
}

void sub_69618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_69788(void *a1, const __CFString **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[2 * a3];
    do
    {
      v7 = a1[1];
      if (*a1 == v4)
      {
        v9 = v4;
        if (!v7)
        {
LABEL_10:
          v13 = v4;
LABEL_15:
          operator new();
        }
      }

      else
      {
        v8 = v4;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = *(v7 + 8);
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (v10);
        }

        if (sub_69954(v9[4], v5) < 2)
        {
          v11 = sub_69B3C(a1, &v13, v5);
          goto LABEL_14;
        }

        if (!*v4)
        {
          goto LABEL_10;
        }
      }

      v13 = v9;
      v11 = v9 + 1;
LABEL_14:
      if (!*v11)
      {
        goto LABEL_15;
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  return a1;
}

uint64_t sub_69908(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_69ABC(v2[4]);
    }

    operator delete(v2);
  }

  return a1;
}

CFComparisonResult sub_69954(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

void *sub_69A00(void *a1, CFTypeRef cf, _BYTE *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a3)
  {
    v6 = &kCFBooleanTrue;
  }

  else
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = *v6;
  *a1 = cf;
  a1[1] = v7;
  return a1;
}

void sub_69A68(void *a1)
{
  if (a1)
  {
    sub_69A68(*a1);
    sub_69A68(a1[1]);
    sub_69ABC(a1[4]);

    operator delete(a1);
  }
}

void sub_69ABC(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *sub_69ADC(void *a1, CFTypeRef cf, const void **a3)
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

const __CFString **sub_69B3C(uint64_t a1, const __CFString ***a2, const __CFString **a3)
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
        if (sub_69954(*a3, v4 + 4) < 2)
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

      if (sub_69954(v7[4], a3) < 2)
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

CFArrayRef sub_69BCC(const void ***a1)
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

void sub_69C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_69C68(void ***a1)
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
        sub_23EC90(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CFDictionaryRef sub_69CE8(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  sub_6578C(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  sub_6578C(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          sub_189A00();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          sub_1D5F64(v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          sub_189A00();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_1D5F64(v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_69F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_69FC0(uint64_t a1)
{
  v1 = (a1 + 184);
  for (i = *(a1 + 192); i != v1; i = i[1])
  {
    v3 = i[3];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = i[2];
        if (v6)
        {
          (*(*v6 + 152))(v6);
        }

        sub_1A8C0(v5);
      }
    }
  }

  return 0;
}

void sub_6A048(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  __cxa_end_catch();
  sub_1A8C0(v2);
  JUMPOUT(0x6A038);
}

void sub_6A09C(size_t *a1)
{
  v1 = a1[80];
  for (i = a1[81]; v1 != i; v1 += 16)
  {
    v4 = *(*v1 + 152);
    if (*(v4 + 735) < 0)
    {
      sub_54A0(&v9, *(v4 + 712), *(v4 + 720));
    }

    else
    {
      v5 = (v4 + 712);
      v9 = *v5;
      v10 = *(v5 + 2);
    }

    if (SHIBYTE(v10) < 0)
    {
      if (*(&v9 + 1) != 11)
      {
        operator delete(v9);
        continue;
      }

      v8 = *v9 != 0x6C6F686563616C70 || *(v9 + 3) != 0x7265646C6F686563;
      operator delete(v9);
      if (v8)
      {
        continue;
      }
    }

    else
    {
      if (SHIBYTE(v10) != 11)
      {
        continue;
      }

      if (v9 != 0x6C6F686563616C70 || *(&v9 + 3) != 0x7265646C6F686563)
      {
        continue;
      }
    }

    (*(**(*v1 + 152) + 88))(*(*v1 + 152), a1);
    (*(**(*v1 + 152) + 96))(&v9);
    sub_20B2B8(a1, v9, *(&v9 + 1));
    v11 = &v9;
    sub_F5714(&v11);
  }
}

void sub_6A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_F5714(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_6A240(void *a1)
{
  result = (*(*a1 + 576))(a1);
  v4 = a1[31];
  v3 = a1[32];
  while (v4 != v3)
  {
    v5 = *v4;
    v4 += 2;
    result = (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_6A2C4(uint64_t a1)
{
  v1 = *(a1 + 664);
  v2 = *(a1 + 672);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    sub_96F48(v3);
  }
}

uint64_t *sub_6A300(uint64_t *a1)
{
  sub_27A4();
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    std::mutex::lock(&qword_6E9560);
    v3 = qword_6E95A8;
    if (qword_6E95A8 == &qword_6E95A0)
    {
LABEL_5:
      v5 = sub_5544(14);
      v6 = *v5;
      if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "RoutingMutex.cpp";
        v11 = 1024;
        v12 = 175;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: VAD instance not found in list", &v9, 0x12u);
      }
    }

    else
    {
      while (1)
      {
        v4 = v3[1];
        if (v3[2] == v2)
        {
          break;
        }

        v3 = v3[1];
        if (v4 == &qword_6E95A0)
        {
          goto LABEL_5;
        }
      }

      v7 = *v3;
      *(v7 + 8) = v4;
      *v4 = v7;
      --qword_6E95B0;
      operator delete(v3);
    }

    std::mutex::lock(&qword_6E95C0);
    byte_6E9600 = 1;
    std::condition_variable::notify_all(&qword_6E9608);
    std::mutex::unlock(&qword_6E95C0);
    std::mutex::unlock(&qword_6E9560);
    sub_42A43C(&qword_6E94F8);
  }

  return a1;
}

void sub_6A470(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::mutex::unlock(&qword_6E9560);
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_6A4A4(unint64_t *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = atomic_load(a1 + 96);
    if (v4 != pthread_self())
    {
      v6 = *sub_5544(14);
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v10 = 136315394;
          v11 = "IOMonitor.h";
          v12 = 1024;
          v13 = 114;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: It is illegal to Unlock_FromStartOrNullStopThread from a thread that does not own mIOThreadCallingNormalMutex.", &v10, 0x12u);
        }
      }
    }

    sub_42A318((a1 + 84));
    v5 = atomic_load(a1 + 70);
    if (v5 != pthread_self())
    {
      v8 = *sub_5544(14);
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 136315394;
          v11 = "IOMonitor.h";
          v12 = 1024;
          v13 = 117;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: It is illegal to call Unlock_FromStartOrNullStopThread from a thread that does not own the IO Monitor.", &v10, 0x12u);
        }
      }
    }

    sub_42A318((a1 + 58));
  }

  else if (a2 == 1)
  {
    v3 = a1 + 58;

    sub_9650C(v3);
  }
}

void sub_6A65C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_6A684(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 114;
        v11 = 2080;
        v12 = "kStartIOProc";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
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

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_StartIOProc", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_6A814(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void *sub_6A820(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_1D7C28(a2);
    }

    sub_189A00();
  }

  return result;
}

void sub_6A8C4(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = sub_543D0(*a2, inAddress, 0, 0);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v7 = outData;
        v10 = outData;
        sub_6A9B8(&v9, &v10);
        v8 = v9;
        *(a1 + 16) = 1;
        *(a1 + 8) = v8;
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

const void *sub_6A9B8(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFArrayGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFArrayGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_6AA9C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DC7F8(v1);
  _Unwind_Resume(a1);
}

void sub_6AADC(void **a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  Count = CFArrayGetCount(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_6A820(a1, Count);
  if (Count >= 1)
  {
    v6 = 0;
    v7 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      v9 = sub_4A8F8(ValueAtIndex);
      v10 = v9;
      v12 = a1[1];
      v11 = a1[2];
      if (v12 >= v11)
      {
        v14 = *a1;
        v15 = v12 - *a1;
        v16 = (v15 >> 2) + 1;
        if (v16 >> 62)
        {
          sub_189A00();
        }

        v17 = v11 - v14;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_1D7C28(v18);
        }

        v19 = (4 * (v15 >> 2));
        *v19 = v10;
        v13 = v19 + 1;
        memcpy(0, v14, v15);
        *a1 = 0;
        a1[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v12 = v9;
        v13 = v12 + 1;
      }

      a1[1] = v13;
      ++v6;
    }

    while (v7 != v6);
  }
}

uint64_t sub_6AC8C(uint64_t result, uint64_t a2)
{
  if (*(result + 12) == 1)
  {
    v3 = result;
    notify_set_state(*(result + 8), a2);
    v4 = *v3;

    return notify_post(v4);
  }

  return result;
}

void sub_6ACD8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_6AD0C(void *a1)
{
  v2 = a1[148];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v3[1];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = *v3;
          if (*v3)
          {
            v8 = v3[2];
            if (v8)
            {
              v9 = 2;
              goto LABEL_10;
            }

            v8 = v3[3];
            if (v8)
            {
              v9 = 3;
LABEL_10:
              (*(*v8 + 40))(v8, v7);
              while (++v9 != 4)
              {
                v8 = v3[v9];
                if (v8)
                {
                  goto LABEL_10;
                }
              }
            }
          }

          sub_1A8C0(v6);
        }
      }
    }
  }

  sub_47BD8((a1 + 6));
  v10 = a1[4] - a1[3];
  if (v10)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = 8;
    do
    {
      (*(**(a1[3] + v13) + 32))(*(a1[3] + v13));
      v13 += 24;
      --v12;
    }

    while (v12);
  }

  sub_47C90((a1 + 6));
}

uint64_t sub_6AE80()
{
  if ((atomic_load_explicit(&qword_6E9AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9AE8))
  {
    byte_6E9AE0 = sub_3103F4();
    __cxa_guard_release(&qword_6E9AE8);
  }

  return byte_6E9AE0;
}

uint64_t sub_6AEF4(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  sub_4EBC(a1);
  result = 0;
  mSelector = a2->mSelector;
  if (a2->mSelector <= 1718383986)
  {
    if (mSelector <= 1668047202)
    {
      if (mSelector <= 1634890858)
      {
        if (mSelector <= 1633907569)
        {
          if (mSelector > 1633903464)
          {
            if (mSelector == 1633903465)
            {
              return result;
            }

            v9 = 1633904999;
          }

          else
          {
            if (mSelector == 1165513555)
            {
              goto LABEL_116;
            }

            v9 = 1633776747;
          }

LABEL_85:
          if (mSelector == v9)
          {
            return 1;
          }

LABEL_120:
          v15 = *(a1 + 128);

          return sub_D9160(v15, a2);
        }

        if (mSelector > 1633973867)
        {
          if (mSelector != 1633973868)
          {
            if (mSelector == 1634169456)
            {
              return result;
            }

            v6 = 1634692199;
            goto LABEL_115;
          }

LABEL_116:
          v19 = *&a2->mSelector;
          mElement = a2->mElement;
          return sub_BE40C(&v19, (a1 + 184));
        }

        if (mSelector != 1633907570)
        {
          v9 = 1633970532;
          goto LABEL_85;
        }

        return 1;
      }

      if (mSelector > 1650881393)
      {
        if (mSelector == 1650881394)
        {
          return result;
        }

        if (mSelector == 1651664739)
        {
          goto LABEL_116;
        }

        v7 = 1651798898;
      }

      else
      {
        if ((mSelector - 1635152993) <= 0xE && ((1 << (mSelector - 97)) & 0x4015) != 0)
        {
          goto LABEL_116;
        }

        if (mSelector == 1634890859)
        {
          return 1;
        }

        v7 = 1635020147;
      }

LABEL_104:
      if (mSelector == v7)
      {
        return result;
      }

      goto LABEL_120;
    }

    if (mSelector > 1684500588)
    {
      if (mSelector <= 1685287010)
      {
        if (mSelector <= 1685087595)
        {
          if (mSelector != 1684500589)
          {
            v9 = 1684500594;
            goto LABEL_85;
          }

          return 1;
        }

        if (mSelector == 1685087596)
        {
          goto LABEL_116;
        }

        v13 = 18515;
      }

      else
      {
        if (mSelector > 1685483629)
        {
          if (mSelector == 1685483630 || mSelector == 1702248804)
          {
            goto LABEL_116;
          }

          v6 = 1702392685;
          goto LABEL_115;
        }

        if (mSelector == 1685287011)
        {
          return 1;
        }

        v13 = 29283;
      }

      v6 = v13 | 0x64730000;
      goto LABEL_115;
    }

    if (mSelector > 1684365923)
    {
      if (mSelector <= 1684498540)
      {
        if (mSelector != 1684365924)
        {
          v6 = 1684370276;
          goto LABEL_115;
        }

        goto LABEL_116;
      }

      if (mSelector == 1684498541)
      {
        return result;
      }

      v7 = 1684498544;
      goto LABEL_104;
    }

    if (mSelector > 1684103986)
    {
      if (mSelector != 1684103987)
      {
        v6 = 1684304756;
        goto LABEL_115;
      }

      goto LABEL_116;
    }

    if (mSelector == 1668047203)
    {
      return result;
    }

    v6 = 1668576114;
LABEL_115:
    if (mSelector == v6)
    {
      goto LABEL_116;
    }

    goto LABEL_120;
  }

  if (mSelector <= 1935962991)
  {
    if (mSelector <= 1869575793)
    {
      if (mSelector <= 1819569762)
      {
        if (mSelector <= 1752657011)
        {
          if (mSelector == 1718383987)
          {
            goto LABEL_116;
          }

          v7 = 1735682404;
          goto LABEL_104;
        }

        if (mSelector == 1752657012)
        {
          return result;
        }

        v6 = 1818326127;
        goto LABEL_115;
      }

      if (mSelector <= 1836348004)
      {
        if (mSelector == 1819569763)
        {
          return result;
        }

        if (mSelector == 1835888484)
        {
          return a2->mScope == 1768845428;
        }

        goto LABEL_120;
      }

      if (mSelector == 1836348005)
      {
        return result;
      }

      if (mSelector != 1869574756)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (mSelector > 1886413425)
      {
        if (mSelector > 1886807153)
        {
          if (mSelector == 1886807154)
          {
            goto LABEL_116;
          }

          if (mSelector != 1919773028)
          {
            v6 = 1935762281;
            goto LABEL_115;
          }

          return 1;
        }

        if (mSelector == 1886413426)
        {
          return result;
        }

        v6 = 1886807139;
        goto LABEL_115;
      }

      if (mSelector > 1885631345)
      {
        if (mSelector == 1885631346)
        {
          goto LABEL_116;
        }

        if (mSelector != 1886413412)
        {
          goto LABEL_120;
        }

        if (a2->mScope == 1869968496)
        {
          v19 = 0x6F75747050504277;
          goto LABEL_126;
        }

        return 0;
      }

      if (mSelector != 1869575794)
      {
        v7 = 1885434482;
        goto LABEL_104;
      }
    }

    if (a2->mScope == 1768845428)
    {
      LODWORD(v19) = 0;
      LOBYTE(v18) = 0;
      v14 = (*(*a1 + 408))(a1, 1685287015, 1818980210, &v19, &v18, 0, 0);
      return (v14 & v18);
    }

    return 0;
  }

  if (mSelector > 1953002353)
  {
    if (mSelector <= 1983997010)
    {
      if (mSelector <= 1969844081)
      {
        if (mSelector == 1953002354)
        {
          goto LABEL_116;
        }

        if (mSelector != 1953719148)
        {
          goto LABEL_120;
        }

        if (a2->mScope == 1869968496)
        {
          v18 = 0;
          v17 = 0;
          v10 = (a1 + 184);
          v11 = (*(*a1 + 408))(a1, 1987013737, 64001, &v18, &v17, 0, 1);
          v12 = v17;
          v19 = 0x6F75747054547323;
          mElement = 0;
          return v11 & v12 | sub_BE40C(&v19, v10);
        }

        return 0;
      }

      if (mSelector == 1969844082)
      {
        return 1;
      }

      if (mSelector != 1983996971)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (mSelector > 1986225267)
      {
        if (mSelector == 2004053366)
        {
          goto LABEL_116;
        }

        if (mSelector == 1986361444)
        {
          return 1;
        }

        v8 = 25716;
LABEL_91:
        v6 = v8 | 0x76630000;
        goto LABEL_115;
      }

      if (mSelector != 1983997011)
      {
        v8 = 25714;
        goto LABEL_91;
      }
    }

    if ((*(a1 + 308) & 1) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_120;
  }

  if (mSelector > 1937138531)
  {
    if (mSelector <= 1952997987)
    {
      if (mSelector != 1937138532)
      {
        v6 = 1937204590;
        goto LABEL_115;
      }

      goto LABEL_116;
    }

    if (mSelector != 1952997988)
    {
      if (mSelector == 1952998002)
      {
        return result;
      }

      v6 = 1953002093;
      goto LABEL_115;
    }

    if (a2->mScope == 1869968496)
    {
      if (sub_6AE80())
      {
        return 1;
      }

      mScope = a2->mScope;
      LODWORD(v19) = 1416118903;
      HIDWORD(v19) = mScope;
LABEL_126:
      mElement = 0;
      return sub_BE40C(&v19, (a1 + 184));
    }

    return 0;
  }

  if (mSelector <= 1936876643)
  {
    if (mSelector == 1935962992)
    {
      return result;
    }

    v7 = 1936744803;
    goto LABEL_104;
  }

  if (mSelector != 1936876644 && mSelector != 1936879204)
  {
    goto LABEL_120;
  }

  return sub_20AEF0(a1, a2);
}

uint64_t sub_6B708(uint64_t a1, AudioObjectPropertyAddress *a2, uint64_t a3, __CFString *a4)
{
  sub_4EBC(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v16 = 2003332927;
LABEL_141:
    exception[2] = v16;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v19 = *&a2->mSelector;
      v21 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v16 = 561211770;
    goto LABEL_141;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector > 1752657011)
  {
    if (mSelector > 1936744802)
    {
      if (mSelector > 1953002353)
      {
        if (mSelector <= 1983997010)
        {
          if (mSelector <= 1969844081)
          {
            if (mSelector == 1953002354)
            {
              goto LABEL_114;
            }

            v12 = 1953719148;
            goto LABEL_109;
          }

          if (mSelector == 1969844082)
          {
            return result;
          }

          if (mSelector != 1983996971)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (mSelector > 1986225267)
          {
            if (mSelector == 1986225268)
            {
              goto LABEL_114;
            }

            if (mSelector == 1986361444)
            {
              return result;
            }

            v10 = 2004053366;
            goto LABEL_113;
          }

          if (mSelector != 1983997011)
          {
            v10 = 1986225266;
            goto LABEL_113;
          }
        }

        if ((*(a1 + 308) & 1) == 0)
        {
          goto LABEL_114;
        }

        goto LABEL_118;
      }

      if (mSelector <= 1937204589)
      {
        if (mSelector > 1936879203)
        {
          if (mSelector != 1936879204)
          {
            v10 = 1937138532;
            goto LABEL_113;
          }

          return sub_113978(a1, a2, a3, a4);
        }

        else
        {
          if (mSelector == 1936744803)
          {
            return result;
          }

          if (mSelector != 1936876644)
          {
            goto LABEL_118;
          }

          return sub_11429C(a1, a2, a3, a4);
        }
      }

      if (mSelector > 1952998001)
      {
        if (mSelector != 1952998002)
        {
          v10 = 1953002093;
          goto LABEL_113;
        }

        return 8;
      }

      if (mSelector == 1937204590)
      {
        goto LABEL_114;
      }

      v11 = 1952997988;
    }

    else
    {
      if (mSelector <= 1885434481)
      {
        if (mSelector > 1835888483)
        {
          if (mSelector > 1869574755)
          {
            if (mSelector == 1869574756)
            {
              return 16 * (a2->mScope == 1768845428);
            }

            if (mSelector == 1869575794)
            {
              if (a2->mScope != 1768845428)
              {
                return 0;
              }

              *buf = 0;
              LOBYTE(__p[0]) = 0;
              if ((*(*a1 + 408))(a1, 1685287015, 1818980210, buf, __p, 0, 0))
              {
                return *buf;
              }

              else
              {
                return 4;
              }
            }

            goto LABEL_118;
          }

          if (mSelector == 1835888484)
          {
            return result;
          }

          v12 = 1836348005;
        }

        else if (mSelector > 1818326126)
        {
          if (mSelector == 1818326127)
          {
            goto LABEL_114;
          }

          v12 = 1819569763;
        }

        else
        {
          if (mSelector == 1752657012)
          {
            return result;
          }

          v12 = 1769302372;
        }

        goto LABEL_109;
      }

      if (mSelector <= 1886807138)
      {
        if (mSelector > 1886413411)
        {
          if (mSelector != 1886413412)
          {
            v11 = 1886413426;
            goto LABEL_103;
          }

          return 8;
        }

        if (mSelector == 1885434482)
        {
          return result;
        }

        v10 = 1885631346;
        goto LABEL_113;
      }

      if (mSelector <= 1919773027)
      {
        if (mSelector != 1886807139)
        {
          v10 = 1886807154;
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      if (mSelector == 1919773028)
      {
        return 8;
      }

      if (mSelector == 1935762281)
      {
        goto LABEL_114;
      }

      v11 = 1935962992;
    }

LABEL_103:
    if (mSelector == v11)
    {
      return 8;
    }

LABEL_118:
    v13 = *(a1 + 128);

    return sub_D7C9C(v13, a2, a3, a4);
  }

  if (mSelector <= 1651798897)
  {
    if (mSelector <= 1634890858)
    {
      if (mSelector > 1633907569)
      {
        if (mSelector > 1633973867)
        {
          if (mSelector != 1633973868)
          {
            if (mSelector == 1634169456)
            {
              return (4 * *(a1 + 200));
            }

            v10 = 1634692199;
            goto LABEL_113;
          }

LABEL_114:

          return sub_4DC4A4(a2, a3, a4, (a1 + 184));
        }

        if (mSelector != 1633907570)
        {
          v11 = 1633970532;
          goto LABEL_103;
        }

        return 8;
      }

      if (mSelector > 1633903464)
      {
        if (mSelector == 1633903465)
        {
          return 8;
        }

        v12 = 1633904999;
      }

      else
      {
        if (mSelector == 1165513555)
        {
          goto LABEL_114;
        }

        v12 = 1633776747;
      }

LABEL_109:
      if (mSelector == v12)
      {
        return result;
      }

      goto LABEL_118;
    }

    if (mSelector <= 1635152992)
    {
      if (mSelector == 1634890859)
      {
        return result;
      }

      v12 = 1635020147;
      goto LABEL_109;
    }

    if ((mSelector - 1635152993) <= 0xE && ((1 << (mSelector - 97)) & 0x4015) != 0)
    {
      goto LABEL_114;
    }

    if (mSelector == 1650881394)
    {
      return result;
    }

    v10 = 1651664739;
LABEL_113:
    if (mSelector == v10)
    {
      goto LABEL_114;
    }

    goto LABEL_118;
  }

  if (mSelector <= 1684500588)
  {
    if (mSelector > 1684365923)
    {
      if (mSelector <= 1684498540)
      {
        if (mSelector != 1684365924)
        {
          v10 = 1684370276;
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      if (mSelector == 1684498541)
      {
        return result;
      }

      v12 = 1684498544;
    }

    else
    {
      if (mSelector > 1668576113)
      {
        if (mSelector != 1668576114)
        {
          v10 = 1684103987;
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      if (mSelector == 1651798898)
      {
        return 8;
      }

      v12 = 1668047203;
    }

    goto LABEL_109;
  }

  if (mSelector <= 1685287010)
  {
    if (mSelector > 1685087595)
    {
      if (mSelector != 1685087596)
      {
        v10 = 1685276755;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (mSelector == 1684500589)
    {

      return sub_116E58(a1, a2, a3, a4);
    }

    else
    {
      if (mSelector != 1684500594)
      {
        goto LABEL_118;
      }

      return sub_20AAFC(a1, a2, a3, a4);
    }
  }

  else
  {
    if (mSelector > 1702248803)
    {
      if (mSelector != 1702248804 && mSelector != 1702392685)
      {
        v10 = 1718383987;
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    if (mSelector != 1685287011)
    {
      v12 = 1685483630;
      goto LABEL_109;
    }

    return sub_20A9A0(a4);
  }
}

void sub_6C22C(CFComparisonResult a1, AudioObjectPropertyAddress *a2, uint64_t a3, int *a4, uint64_t a5, double *a6)
{
  sub_4EBC(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v55 = sub_5544(14);
    if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
    {
      v103 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&v106);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v57 = sub_5544(14);
    if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      v103 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&v106);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    *v58 = &off_6DDDD0;
    v58[2] = 561211770;
  }

  if (!a6)
  {
    v59 = sub_5544(14);
    if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
    {
      v103 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&v106);
    }

    v60 = __cxa_allocate_exception(0x10uLL);
    *v60 = &off_6DDDD0;
    v60[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v61 = sub_5544(14);
    if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
    {
      v103 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&v106);
    }

    v62 = __cxa_allocate_exception(0x10uLL);
    *v62 = &off_6DDDD0;
    v62[2] = 1852797029;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1718839673)
  {
    if (mSelector > 1919773027)
    {
      if (mSelector <= 1952997987)
      {
        if (mSelector > 1936879203)
        {
          if (mSelector != 1936879204)
          {
            if (mSelector == 1937138532)
            {
              goto LABEL_102;
            }

            v14 = 1937204590;
            goto LABEL_101;
          }
        }

        else
        {
          if (mSelector == 1919773028)
          {
            std::mutex::lock((a1 + 688));
            if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
            {
              v80 = sub_5544(14);
              if (*v80 && os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
              {
                v103 = *&a2->mSelector;
                mElement = a2->mElement;
                sub_22CE0(&v106);
              }

              v81 = __cxa_allocate_exception(0x10uLL);
              *v81 = &off_6DDDD0;
              v81[2] = 561211770;
            }

            memset(&__p, 0, sizeof(__p));
            sub_1215C(&__p, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 3);
            size = __p.__r_.__value_.__l.__size_;
            v26 = sub_201D4C(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, a6);
            if (v26 != size)
            {
              __p.__r_.__value_.__l.__size_ = v26;
            }

LABEL_160:
            (*(*a1 + 528))(a1, &__p);
            if (__p.__r_.__value_.__r.__words[0])
            {
              __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::mutex::unlock((a1 + 688));
            return;
          }

          if (mSelector == 1935762281)
          {
            goto LABEL_102;
          }

          if (mSelector != 1936876644)
          {
            goto LABEL_112;
          }
        }

        sub_1FF098(a1, a2, a3, a4, a5, a6);
      }

      else if (mSelector <= 1953719147)
      {
        if (mSelector != 1952997988)
        {
          if (mSelector == 1953002093)
          {
            goto LABEL_102;
          }

          v14 = 1953002354;
          goto LABEL_101;
        }

        sub_6E548(a1, a2, a4, a5, a6);
      }

      else if (mSelector > 1983996970)
      {
        if (mSelector == 1983996971)
        {
          if ((*(a1 + 308) & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_112;
        }

        if (mSelector != 1986361444)
        {
LABEL_112:
          v24 = *(a1 + 128);

          sub_140EB8(v24, a2, a3, a4, a5, a6);
          return;
        }

        v21 = *(*a1 + 384);
        v12.n128_f32[0] = *a6;

        v21(a1, 1818521197, 40, 0, v12);
      }

      else if (mSelector == 1953719148)
      {
        mScope = a2->mScope;

        sub_1FF4A0(a1, 1953719148, mScope, a3, a4, a5, a6);
      }

      else
      {
        if (mSelector != 1969844082)
        {
          goto LABEL_112;
        }

        v15 = a2->mScope;

        sub_200820(a1, 1969844082, v15, a6);
      }

      return;
    }

    if (mSelector > 1885434481)
    {
      if (mSelector <= 1886807138)
      {
        if (mSelector == 1885434482 || mSelector == 1885631346)
        {
          goto LABEL_102;
        }

        if (mSelector != 1886413412)
        {
          goto LABEL_112;
        }

        v18 = a2->mScope;

        sub_1FF91C(a1, 1886413412, v18, a6);
        return;
      }

      if (mSelector == 1886807139 || mSelector == 1886807154)
      {
        goto LABEL_102;
      }

      if (mSelector != 1902539642)
      {
        goto LABEL_112;
      }
    }

    else
    {
      if (mSelector > 1853059699)
      {
        switch(mSelector)
        {
          case 1853059700:
            if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
            {
              v72 = sub_5544(14);
              if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
              {
                v103 = *&a2->mSelector;
                mElement = a2->mElement;
                sub_22CE0(&v106);
              }

              v73 = __cxa_allocate_exception(0x10uLL);
              *v73 = &off_6DDDD0;
              v73[2] = 561211770;
            }

            v29 = (*(*a1 + 112))(a1, *a6);
            if (v29)
            {
              v30 = v29;
              v31 = sub_5544(14);
              v32 = *v31;
              if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
                WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = 1738;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Failed to set sample rate.", &__p, 0x12u);
              }

              v33 = __cxa_allocate_exception(0x10uLL);
              *v33 = &off_6DDDD0;
              v33[2] = v30;
            }

            break;
          case 1869574756:
            v35 = a2->mScope;

            sub_1FFC6C(a1, 1869574756, v35, a5, a6);
            break;
          case 1869575794:
            v20 = a2->mScope;

            sub_200390(a1, 1869575794, v20, a5, a6);
            break;
          default:
            goto LABEL_112;
        }

        return;
      }

      if (mSelector != 1718839674)
      {
        if (mSelector == 1818326127)
        {
          goto LABEL_102;
        }

        if (mSelector != 1835888484)
        {
          goto LABEL_112;
        }

        if (a2->mScope != 1768845428)
        {
          v63 = sub_5544(14);
          v64 = *v63;
          if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = 1974;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): invalid property scope for kVirtualAudioDevicePropertyMicMode", &__p, 0x12u);
          }

          v65 = __cxa_allocate_exception(0x10uLL);
          *v65 = &off_6DDDD0;
          v65[2] = 2003332927;
        }

        v16 = *a6;
        v17 = *(a1 + 760);
        if (v17 && *(v17 + 8) == 1)
        {
          sub_3C29C0(v17, v16 | 0x100000000);
LABEL_183:
          v102 = 0;
          (*(*a1 + 40))(a1, a2, 0, 0, &v102 + 4, &v102);
          if (v102)
          {
            v51 = &kCFBooleanTrue;
          }

          else
          {
            v51 = &kCFBooleanFalse;
          }

          v101 = *v51;
          sub_88CE8(&v106, "voice_isolation_running");
          sub_1C9388(&cf, v101);
          __p.__r_.__value_.__r.__words[0] = &v106;
          __p.__r_.__value_.__l.__size_ = 1;
          v52 = sub_69CE8(&__p);
          v103 = v52;
          if (cf)
          {
            CFRelease(cf);
          }

          if (v106)
          {
            CFRelease(v106);
          }

          sub_1C93C0(&v101);
          sub_1C93F4(&v100, v52);
          memset(&__p, 0, sizeof(__p));
          sub_1215C(&__p, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 3);
          v53 = __p.__r_.__value_.__r.__words[0];
          if (v102)
          {
            v54 = 3;
          }

          else
          {
            v54 = 4;
          }

          sub_A9D34(&v100, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 8, v54);
          if (v53)
          {
            operator delete(v53);
          }

          sub_4BA7C(&v100);
          if (*(a1 + 756) == 1)
          {
            __p.__r_.__value_.__r.__words[0] = 0x696E70746673697ALL;
            LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
            sub_D92E4(a1, &__p, 0, 0, 4u, (a1 + 752));
          }

          sub_4BA7C(&v103);
          return;
        }

        v37 = *(a1 + 640);
        v38 = *(a1 + 648);
        if (v37 == v38)
        {
          goto LABEL_183;
        }

        v39 = v16 == 1;
        while (1)
        {
          sub_67EA8();
          v40 = qword_6E8D50;
          if (!qword_6E8D50)
          {
            goto LABEL_173;
          }

          v41 = *(a1 + 288);
          v42 = &qword_6E8D50;
          do
          {
            v43 = *(v40 + 32);
            v44 = v43 >= v41;
            v45 = v43 < v41;
            if (v44)
            {
              v42 = v40;
            }

            v40 = *(v40 + 8 * v45);
          }

          while (v40);
          if (v42 != &qword_6E8D50 && v41 >= *(v42 + 8))
          {
            sub_67EA8();
            v48 = *(a1 + 292);
            (*(*a1 + 504))(&__p, a1);
            LOBYTE(v48) = sub_1C8EF0((v42 + 9), v48, &__p);
            sub_477A0(__p.__r_.__value_.__l.__size_);
            if (v48)
            {
              v49 = *(*v37 + 152);
              v50 = (*(*a1 + 288))(a1);
              if (*(v49 + 800) == 1 && *(v49 + 799))
              {
                *(v49 + 799) = 0;
                sub_2CC390(v49, v50);
              }

              goto LABEL_177;
            }
          }

          else
          {
LABEL_173:
            sub_67EA8();
          }

          v46 = *(*v37 + 152);
          v47 = (*(*a1 + 288))(a1);
          if (*(v46 + 800) == 1 && *(v46 + 799) != v39)
          {
            *(v46 + 799) = v39;
            sub_2CC390(v46, v47);
          }

LABEL_177:
          v37 += 16;
          if (v37 == v38)
          {
            goto LABEL_183;
          }
        }
      }
    }

    sub_D92E4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (mSelector <= 1668576113)
  {
    if (mSelector <= 1634890858)
    {
      if (mSelector > 1633970531)
      {
        if (mSelector <= 1634692198)
        {
          if (mSelector != 1633970532)
          {
            v14 = 1633973868;
            goto LABEL_101;
          }

          std::mutex::lock((a1 + 688));
          if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
          {
            v82 = sub_5544(14);
            if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_ERROR))
            {
              v103 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(&v106);
            }

            v83 = __cxa_allocate_exception(0x10uLL);
            *v83 = &off_6DDDD0;
            v83[2] = 561211770;
          }

          memset(&__p, 0, sizeof(__p));
          sub_1215C(&__p, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 3);
          v27 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            while (*v27 != *a6)
            {
              if (++v27 == __p.__r_.__value_.__l.__size_)
              {
                goto LABEL_159;
              }
            }
          }

          if (v27 == __p.__r_.__value_.__l.__size_)
          {
LABEL_159:
            sub_201C74(&__p, a6);
          }

          goto LABEL_160;
        }

        if (mSelector != 1634692199)
        {
          if (mSelector == 1634755428)
          {
            v22 = *a6;
            sub_201DB4(*a6);
            sub_1F08CC(&v103, v22);
            sub_201DE8(&v106, &v103);
            sub_125D8(&__p, *v106);
            sub_3236FC(a1, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            sub_452F0(&v103);
            return;
          }

          goto LABEL_112;
        }

LABEL_102:

        sub_4DC394(a2, a3, a4, a5, a6, (a1 + 184));
        return;
      }

      if (mSelector != 1633776747)
      {
        if (mSelector == 1633904999)
        {
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v74 = sub_5544(14);
            v75 = *v74;
            if (*v74 && os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
              *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
              WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = 1959;
              _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
            }

            v76 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v76, "Precondition failure.");
          }

          sub_1FB4B0(&v106, a1);
          if (v106)
          {
            if ((sub_2021DC(v106, *a4) & 1) == 0)
            {
              v90 = sub_5544(14);
              v91 = *v90;
              if (*v90 && os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
                WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = 1965;
                _os_log_impl(&dword_0, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Do not have control of device.", &__p, 0x12u);
              }

              v92 = __cxa_allocate_exception(0x10uLL);
              *v92 = &off_6DDDD0;
              v92[2] = 1852797029;
            }

            sub_202340(a1, a2->mElement, *a6);
          }
        }

        else
        {
          if (mSelector != 1633907570)
          {
            goto LABEL_112;
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v66 = sub_5544(14);
            v67 = *v66;
            if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
              *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
              WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = 1943;
              _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
            }

            v68 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v68, "Precondition failure.");
          }

          sub_1FB4B0(&v106, a1);
          v19 = v106;
          if (v106)
          {
            if (sub_2021DC(v106, *a4))
            {
              (*(*v19 + 112))(v19, *a6);
              sub_201FB8();
            }

            v84 = sub_5544(14);
            v85 = *v84;
            if (*v84 && os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
              *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
              WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = 1949;
              _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Do not have control of device.", &__p, 0x12u);
            }

            v86 = __cxa_allocate_exception(0x10uLL);
            *v86 = &off_6DDDD0;
            v86[2] = 1852797029;
          }
        }

        goto LABEL_156;
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v69 = sub_5544(14);
        v70 = *v69;
        if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = 1909;
          _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
        }

        v71 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v71, "Precondition failure.");
      }

      sub_1FB4B0(&v106, a1);
      v28 = v106;
      if (v106)
      {
        if (sub_1FB770(v106))
        {
          v87 = sub_5544(14);
          v88 = *v87;
          if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = 1913;
            v89 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Device is already controlled.";
LABEL_264:
            _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, v89, &__p, 0x12u);
          }
        }

        else
        {
          sub_201E54(v28, *a6);
          if (sub_1FB770(v28))
          {
            sub_201FB8();
          }

          v96 = sub_5544(14);
          v88 = *v96;
          if (*v96 && os_log_type_enabled(*v96, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = 1917;
            v89 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Failed to take control of device.";
            goto LABEL_264;
          }
        }

        v97 = __cxa_allocate_exception(0x10uLL);
        *v97 = &off_6DDDD0;
        v97[2] = 1852797029;
      }

LABEL_156:
      if (cf)
      {
        sub_1A8C0(cf);
      }

      return;
    }

    if ((mSelector - 1635152993) <= 0xE && ((1 << (mSelector - 97)) & 0x4015) != 0)
    {
      goto LABEL_102;
    }

    if (mSelector != 1634890859)
    {
      v14 = 1651664739;
      goto LABEL_101;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v77 = sub_5544(14);
      v78 = *v77;
      if (*v77 && os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = 1926;
        _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
      }

      v79 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v79, "Precondition failure.");
    }

    sub_1FB4B0(&v106, a1);
    v36 = v106;
    if (!v106)
    {
      goto LABEL_156;
    }

    if (sub_1FB770(v106))
    {
      sub_202060(v36, *a6);
      if (!sub_1FB770(v36))
      {
        sub_201FB8();
      }

      v98 = sub_5544(14);
      v94 = *v98;
      if (*v98 && os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = 1934;
        v95 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Failed to relinquish control of device.";
        goto LABEL_269;
      }
    }

    else
    {
      v93 = sub_5544(14);
      v94 = *v93;
      if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = "AggregateDevice_CommonBase.cpp";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = 1930;
        v95 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Device is not controlled.";
LABEL_269:
        _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, v95, &__p, 0x12u);
      }
    }

    v99 = __cxa_allocate_exception(0x10uLL);
    *v99 = &off_6DDDD0;
    v99[2] = 1852797029;
  }

  if (mSelector <= 1685087595)
  {
    if (mSelector <= 1684370275)
    {
      if (mSelector == 1668576114 || mSelector == 1684304756)
      {
        goto LABEL_102;
      }

      v14 = 1684365924;
LABEL_101:
      if (mSelector == v14)
      {
        goto LABEL_102;
      }

      goto LABEL_112;
    }

    switch(mSelector)
    {
      case 1684370276:
        goto LABEL_102;
      case 1684500589:

        sub_1176F0(a1, a2, a3, a4, a5, a6);
        break;
      case 1684500594:

        sub_20194C(a1, a2, a3, a4, a5, a6);
        break;
      default:
        goto LABEL_112;
    }
  }

  else
  {
    if (mSelector > 1685483629)
    {
      if (mSelector > 1702392684)
      {
        if (mSelector == 1702392685)
        {
          goto LABEL_102;
        }

        v14 = 1718383987;
      }

      else
      {
        if (mSelector == 1685483630)
        {
          goto LABEL_102;
        }

        v14 = 1702248804;
      }

      goto LABEL_101;
    }

    if (mSelector == 1685087596)
    {
      goto LABEL_102;
    }

    if (mSelector != 1685287011)
    {
      v14 = 1685287523;
      goto LABEL_101;
    }

    v34 = a2->mScope;

    sub_201118(a1, 1685287011, v34, a4, a6);
  }
}

void sub_6E3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v32 + 688));
  _Unwind_Resume(a1);
}

void sub_6E548(uint64_t a1, _DWORD *a2, int *a3, int a4, CFTypeRef *a5)
{
  if (*a2 != 1952997988)
  {
    v70 = sub_5544(14);
    v71 = *v70;
    if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2506;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a2[1] != 1869968496)
  {
    return;
  }

  v10 = (a1 + 184);
  if (sub_6AE80())
  {
    if (sub_6F9C4((a1 + 184)))
    {
      v11 = sub_5544(17);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2515;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS: Setting Actuator ThermalBudget", buf, 0x12u);
      }

      v13 = *(a1 + 192);
      if (v13 != v10)
      {
        do
        {
          v14 = v13[3];
          if (v14)
          {
            v15 = std::__shared_weak_count::lock(v14);
            if (v15)
            {
              v16 = v15;
              v17 = v13[2];
              if (v17)
              {
                v18 = sub_6FA60(v17);
                sub_1A8C0(v16);
                if (v18)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                sub_1A8C0(v16);
              }
            }
          }

          v13 = v13[1];
        }

        while (v13 != v10);
        return;
      }

LABEL_43:
      if (v13 == v10)
      {
        return;
      }

      sub_5659C(buf, v13 + 2, "", 2527);
      if (sub_71704() && (v34 = *buf, sub_72C9C(*buf)))
      {
        v35 = sub_6FB1C();
        v36 = sub_72D44(v35, a5);
        (*(*v34 + 224))(v34, v36);
        (*(*v34 + 216))(v34, HIDWORD(v36));
      }

      else if (sub_71704())
      {
        v37 = sub_6FB1C();
        v38 = sub_2E3494(v37, a5);
        (*(**buf + 224))(*buf, v38);
      }

      else if (sub_310658())
      {
        v56 = sub_6FB1C();
        v57 = sub_2E3494(v56, a5);
        (*(**buf + 216))(*buf, v57);
      }

LABEL_36:
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      return;
    }

    if (a3 && (sub_6FB1C(), sub_6FB88(*a3)))
    {
      v25 = 0;
    }

    else
    {
      v30 = sub_5544(17);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2570;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS: Setting Speaker ThermalBudget", buf, 0x12u);
      }

      v32 = sub_6FB1C();
      sub_10FD4(buf, *a5);
      sub_6F320(v32, buf);
      v33 = (v32 + 24);
      if (*(v32 + 24))
      {
        sub_6F5FC(v32, buf, a4, v32, v33);
      }

      else
      {
        sub_2E2D88(v32, buf, a4, v32, v33);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }

      v39 = sub_6FB1C();
      if (sub_6FE08(v39 + 408, &qword_6E9378))
      {
        sub_6FF5C(v39 + 408, &qword_6E9378);
      }

      v25 = 1;
    }

    v40 = sub_71E60(a2[1]);
    v41 = 640;
    if (v40)
    {
      v41 = 664;
    }

    v42 = (a1 + v41);
    if (*v42 == v42[1])
    {
      return;
    }

    v43 = *(**v42 + 152);
    if ((*(*v43 + 104))(v43, 1936748595, 64008, 0))
    {
      __p = 0;
      v77 = 0;
      if (!v25 || *(a1 + 292) == 1650811758)
      {
        v44 = sub_5544(17);
        v45 = *v44;
        if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2599;
          v83 = 2080;
          v84[0] = "Speaker";
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS sent asynchronously for %s", buf, 0x1Cu);
        }

LABEL_74:
        v53 = sub_6FB1C();
        sub_735A0(buf, v53, 0);
        v54 = *buf;
        if (*buf)
        {
          v55 = sub_72578(*buf, qword_6E93A0);
          if (v55)
          {
            sub_725A0(v55);
          }

          CFRelease(v54);
          sub_71224();
          sub_68E60();
          operator new();
        }

        v68 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v68, "Could not construct");
      }

      v50 = sub_6FB1C();
      sub_735A0(buf, v50, 0);
      v47 = *buf;
      __p = *buf;
      *buf = 0;
      v51 = *&buf[8];
      v77 = *&buf[8];
      if (!__p)
      {
        v80 = 0;
        goto LABEL_74;
      }

      CFRetain(v47);
      v80 = v47;
      v81 = v51;
      CFRelease(v47);
      v79 = v47;
      v52 = (*(*v43 + 128))(v43, 1936748595, 64008, &v79, v51, 0, 0, 0);
      if (v52)
      {
        v62 = sub_5544(14);
        v63 = *v62;
        if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, 0xFA08u);
          v64 = v78 >= 0 ? &__p : __p;
          *buf = 136315906;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2610;
          v83 = 1024;
          LODWORD(v84[0]) = v52;
          WORD2(v84[0]) = 2080;
          *(v84 + 6) = v64;
          _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) setting DSP Property %s", buf, 0x22u);
          if (v78 < 0)
          {
            operator delete(__p);
          }
        }

        v65 = __cxa_allocate_exception(0x10uLL);
        *v65 = &off_6DDDD0;
        v65[2] = v52;
      }
    }

    else
    {
      if (!(*(*v43 + 104))(v43, 1668312369, 64100, 0))
      {
        goto LABEL_74;
      }

      v80 = 0;
      v81 = 0;
      if (!v25 || (v46 = sub_6FB1C(), sub_735A0(buf, v46, 0), v47 = *buf, v80 = *buf, v48 = *&buf[8], v81 = *&buf[8], !*buf))
      {
        v69 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v69, "Could not construct");
      }

      if (!CFDictionaryGetCount(*buf))
      {
        v73 = sub_5544(14);
        v74 = *v73;
        if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2622;
          _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CPMS: ThermalBudget is empty", buf, 0x12u);
        }

        v75 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v75, "CPMS: ThermalBudget is empty");
      }

      v79 = v47;
      v49 = (*(*v43 + 128))(v43, 1668312369, 64100, &v79, v48, 0, 0, 0);
      if (v49)
      {
        v58 = sub_5544(14);
        v59 = *v58;
        if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, 0xFA64u);
          v60 = v78 >= 0 ? &__p : __p;
          *buf = 136315906;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2626;
          v83 = 1024;
          LODWORD(v84[0]) = v49;
          WORD2(v84[0]) = 2080;
          *(v84 + 6) = v60;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error (%d) setting DSP Property %s", buf, 0x22u);
          if (v78 < 0)
          {
            operator delete(__p);
          }
        }

        v61 = __cxa_allocate_exception(0x10uLL);
        *v61 = &off_6DDDD0;
        v61[2] = v49;
      }
    }

    CFRelease(v47);
    goto LABEL_74;
  }

  v19 = *(a1 + 192);
  if (v19 == v10)
  {
LABEL_29:
    if (v19 == v10)
    {
      return;
    }

    v26 = sub_5544(17);
    if (*(v26 + 8))
    {
      v27 = *v26;
      if (*v26)
      {
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2647;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Legacy: Setting ThermalBudget (AEA property supported)", buf, 0x12u);
        }
      }
    }

    v28 = *a5;
    if (!*a5)
    {
      v66 = sub_5544(14);
      v67 = *v66;
      if (*v66)
      {
        if (os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2649;
          _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Dictionary is null!", buf, 0x12u);
        }
      }
    }

    v29 = sub_203364(v28, @"HapticTargetPower");
    sub_5659C(buf, v19 + 2, "", 2652);
    (*(**buf + 224))(*buf, v29);
    goto LABEL_36;
  }

  do
  {
    v20 = v19[3];
    if (v20)
    {
      v21 = std::__shared_weak_count::lock(v20);
      if (v21)
      {
        v22 = v21;
        v23 = v19[2];
        if (v23)
        {
          strcpy(buf, "wBhTptuo");
          buf[9] = 0;
          *&buf[10] = 0;
          v24 = (*(*v23 + 16))(v23, buf);
          sub_1A8C0(v22);
          if (v24)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1A8C0(v22);
        }
      }
    }

    v19 = v19[1];
  }

  while (v19 != v10);
}

void sub_6F218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_6F320(uint64_t a1, CFDictionaryRef *a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  Count = CFDictionaryGetCount(*a2);
  v6 = *(a1 + 248);
  v5 = *(a1 + 256);
  v7 = *a2;
  if (!*a2)
  {
    *buf = 0;
    if (v6 != v5)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v21, "Could not construct");
    }

    goto LABEL_20;
  }

  v8 = Count;
  CFRetain(*a2);
  if (v6 == v5)
  {
    v11 = 0;
  }

  else
  {
    v9 = v6 + 8;
    do
    {
      v10 = *(v9 - 8);
      if (v10)
      {
        v11 = CFDictionaryContainsKey(v7, v10) != 0;
        if (v11)
        {
          break;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v9 == v5;
      v9 += 8;
    }

    while (!v12);
  }

  CFRelease(v7);
  if ((v8 - 1) >= 4 || !v11)
  {
LABEL_20:
    v15 = sub_5544(14);
    v16 = sub_468EC(1, *v15, *(v15 + 8));
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_2E3338(__p, *a2);
        if (v23 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "CPMSInterface.mm";
        v25 = 1024;
        v26 = 212;
        v27 = 1024;
        v28 = 0;
        v29 = 2080;
        v30 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Given CPMS dictionary was not valid. Returning %u for the dictionary: %s", buf, 0x22u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Given CPMS dictionary was not valid. Returning %u for the dictionary: %s");
  }
}

void sub_6F5FC(uint64_t a1, CFDictionaryRef *a2, int a3, uint64_t a4, _DWORD *a5)
{
  std::mutex::lock((a1 + 344));
  v10 = *(a1 + 248);
  for (i = *(a1 + 256); v10 != i; ++v10)
  {
    v12 = *v10;
    if (*v10)
    {
      CFRetain(*v10);
      v20 = v12;
      if (!*a2)
      {
        goto LABEL_13;
      }

      if (CFDictionaryContainsKey(*a2, v12))
      {
        if (!*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        Value = CFDictionaryGetValue(*a2, v12);
        if (!Value)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v17, "Could not find item");
        }

        v14 = sub_6FCD8(Value);
        sub_125D8(__p, v12);
        v21 = __p;
        *(sub_6FD40(a4, __p) + 56) = v14;
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      CFRelease(v12);
    }

    else
    {
      v20 = 0;
      if (!*a2)
      {
LABEL_13:
        v15 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v15, "Could not construct");
      }
    }
  }

  *a5 = a3;
  std::mutex::unlock((a1 + 344));
}

void sub_6F7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  sub_452F0(&a16);
  std::mutex::unlock((v16 + 344));
  _Unwind_Resume(a1);
}

uint64_t sub_6F834(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_232D8(a1, v2, v5, v6);
}

void *sub_6F86C(uint64_t a1, void *a2, void **a3)
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
        if ((sub_6F834(a3, (v4 + 32)) & 0x80) == 0)
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

      if ((sub_6F834(v7 + 4, a3) & 0x80) == 0)
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

uint64_t sub_6F8FC(uint64_t a1, void **a2)
{
  v2 = *sub_6F86C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_6F9C4(void *a1)
{
  for (i = a1[1]; i != a1; i = i[1])
  {
    v3 = i[3];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = i[2];
        if (v6)
        {
          v7 = sub_6FA60(v6);
          sub_1A8C0(v5);
          if (v7)
          {
            return 1;
          }
        }

        else
        {
          sub_1A8C0(v5);
        }
      }
    }
  }

  return 0;
}

BOOL sub_6FA60(uint64_t a1)
{
  (*(*a1 + 128))(v3);
  if (v4 < 0)
  {
    v1 = v3[1] == &dword_8 && *v3[0] == 0x726F746175746341;
    operator delete(v3[0]);
  }

  else
  {
    return v4 == 8 && v3[0] == 0x726F746175746341;
  }

  return v1;
}

uint64_t sub_6FB1C()
{
  if (atomic_load_explicit(&qword_6FD538, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_6FD538, &v4, sub_1FE7C4);
  }

  return qword_6FD540;
}

uint64_t sub_6FB88(int a1)
{
  if (a1 == 5)
  {
    return 0;
  }

  if (a1 != 6)
  {
    v3 = sub_5544(14);
    v4 = sub_468EC(1, *v3, *(v3 + 8));
    v5 = v4;
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315650;
        v8 = "CPMSInterface.mm";
        v9 = 1024;
        v10 = 133;
        v11 = 1024;
        v12 = a1;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unrecognized CPMS Client Qualifier data sent with kVirtualAudioDevicePropertyThermalBudgetRange: %u", &v7, 0x18u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unrecognized CPMS Client Qualifier data sent with kVirtualAudioDevicePropertyThermalBudgetRange: %u");
  }

  return 1;
}

uint64_t sub_6FCD8(const __CFNumber *a1)
{
  result = sub_43A54(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DAEBC(exception);
  }

  return result;
}

uint64_t sub_6FD40(uint64_t a1, void **a2)
{
  v2 = *sub_6F86C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL sub_6FE08(uint64_t a1, uint64_t a2)
{
  sub_26C0(a1);
  v4 = a1 + 296;
  v5 = *(a1 + 296);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = a1 + 296;
  do
  {
    v7 = *(a1 + 336);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = (*(*v7 + 48))(v7, v5 + 32, a2);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + v9);
  }

  while (v5);
  if (v4 == v6)
  {
    goto LABEL_13;
  }

  v10 = *(a1 + 336);
  if (!v10)
  {
LABEL_15:
    sub_46A74();
  }

  if ((*(*v10 + 48))(v10, a2, v6 + 32))
  {
LABEL_13:
    v6 = a1 + 296;
  }

  sub_3174(a1);
  return v4 != v6;
}

BOOL sub_6FF28(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v5 = *a2 >= *a3;
    if (*a2 == *a3)
    {
      v5 = a2[2] >= a3[2];
    }
  }

  return !v5;
}

uint64_t sub_6FF5C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_5544(14);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(__p, *a2);
        v5 = __p[23];
        v6 = a2;
        v7 = *__p;
        sub_22170(v49, v6[1]);
        v8 = __p;
        if (v5 < 0)
        {
          v8 = v7;
        }

        if (v50 >= 0)
        {
          v9 = v49;
        }

        else
        {
          v9 = v49[0];
        }

        v10 = v6[2];
        *buf = 136316162;
        *&buf[4] = "StandardUtilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 995;
        *&buf[18] = 2080;
        *&buf[20] = v8;
        v43 = 2080;
        v44 = v9;
        v45 = 1024;
        v46 = v10;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to execute trigger (mSelector: '%s'; mScope: '%s'; mElement: %u)", buf, 0x2Cu);
        a2 = v6;
        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

  sub_70934(buf);
  v40 = a2;
  sub_26C0(a1);
  if (buf != (a1 + 288))
  {
    sub_70B40(__p, a1 + 312);
    v11 = *&__p[24];
    if (*&__p[24] == __p)
    {
      if (v47 == &buf[24])
      {
        (*(**&__p[24] + 24))();
        (*(**&__p[24] + 32))(*&__p[24]);
        *&__p[24] = 0;
        (*(*v47 + 24))(v47, __p);
        (*(*v47 + 32))(v47);
        v47 = 0;
        *&__p[24] = __p;
        (*(v49[0] + 3))(v49, &buf[24]);
        (*(v49[0] + 4))(v49);
      }

      else
      {
        (*(**&__p[24] + 24))();
        (*(**&__p[24] + 32))(*&__p[24]);
        *&__p[24] = v47;
      }

      v47 = &buf[24];
    }

    else
    {
      v12 = a1;
      if (v47 != &buf[24])
      {
        *&__p[24] = v47;
        v47 = v11;
LABEL_23:
        sub_70ABC(__p);
        v13 = *(v12 + 288);
        v14 = (v12 + 296);
        if (*&buf[16])
        {
          v15 = *buf;
          *(*&buf[8] + 16) = 0;
          *buf = &buf[8];
          *&buf[8] = 0uLL;
          if (*(v15 + 8))
          {
            v16 = *(v15 + 8);
          }

          else
          {
            v16 = v15;
          }

          *__p = buf;
          *&__p[8] = v16;
          *&__p[16] = v16;
          if (!v16 || (*&__p[8] = sub_1658B4(v16), v13 == v14))
          {
            v30 = v13;
          }

          else
          {
            do
            {
              v17 = v13[4];
              *(v16 + 40) = *(v13 + 10);
              *(v16 + 32) = v17;
              if (v16 != v13)
              {
                v18 = v13 + 6;
                v19 = (v16 + 48);
                v20 = v13[7];
                for (i = *(v16 + 56); ; i = i[1])
                {
                  v22 = v20 == v18 || i == v19;
                  if (v22)
                  {
                    break;
                  }

                  v23 = *(v20 + 16);
                  *(i + 6) = *(v20 + 24);
                  i[2] = v23;
                  *(i + 2) = *(v20 + 32);
                  v20 = *(v20 + 8);
                }

                if (i == v19)
                {
                  if (v20 != v18)
                  {
                    operator new();
                  }
                }

                else
                {
                  v24 = *(*(v16 + 48) + 8);
                  v25 = *i;
                  *(v25 + 8) = v24;
                  *v24 = v25;
                  do
                  {
                    v26 = i[1];
                    --*(v16 + 64);
                    operator delete(i);
                    i = v26;
                  }

                  while (v26 != v19);
                }

                v16 = *&__p[16];
              }

              v27 = sub_70C24(buf, v49, v16 + 32);
              v28 = v49[0];
              *v16 = 0;
              *(v16 + 8) = 0;
              *(v16 + 16) = v28;
              *v27 = v16;
              if (**buf)
              {
                *buf = **buf;
                v16 = *v27;
              }

              sub_46B9C(*&buf[8], v16);
              ++*&buf[16];
              *&__p[16] = *&__p[8];
              if (*&__p[8])
              {
                *&__p[8] = sub_1658B4(*&__p[8]);
              }

              v29 = v13[1];
              if (v29)
              {
                do
                {
                  v30 = v29;
                  v29 = *v29;
                }

                while (v29);
              }

              else
              {
                do
                {
                  v30 = v13[2];
                  v22 = *v30 == v13;
                  v13 = v30;
                }

                while (!v22);
              }

              v16 = *&__p[16];
              if (*&__p[16])
              {
                v31 = v30 == v14;
              }

              else
              {
                v31 = 1;
              }

              v13 = v30;
            }

            while (!v31);
          }

          sub_2B9D14(__p);
          v13 = v30;
        }

        if (v13 != v14)
        {
          operator new();
        }

        goto LABEL_62;
      }

      (*(*v47 + 24))(v47, __p);
      (*(*v47 + 32))(v47);
      v47 = *&__p[24];
      *&__p[24] = __p;
    }

    v12 = a1;
    goto LABEL_23;
  }

LABEL_62:
  sub_3174(a1);
  v32 = sub_70CD4(buf, v40);
  if (&buf[8] == v32)
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v49, *v40);
      if (v50 >= 0)
      {
        v38 = v49;
      }

      else
      {
        v38 = v49[0];
      }

      *__p = 136315650;
      *&__p[4] = "StandardUtilities.h";
      *&__p[12] = 1024;
      *&__p[14] = 1008;
      *&__p[18] = 2080;
      *&__p[20] = v38;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): The trigger address %s was never registered with the relay map.", __p, 0x1Cu);
      if (v50 < 0)
      {
        operator delete(v49[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The trigger address %s was never registered with the relay map.");
  }

  v33 = v32 + 48;
  for (j = *(v32 + 56); j != v33; j = *(j + 8))
  {
    (*(j + 32))(0, 1, j + 16, *(j + 40));
  }

  sub_71E0C(*&buf[8]);
  return sub_70ABC(&buf[24]);
}

void sub_70844(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x7092CLL);
}

void sub_708A4(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x7092CLL);
}

void sub_708E4(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x7092CLL);
}

void sub_708F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_71E0C(a7);
  sub_70ABC(va);
  _Unwind_Resume(a1);
}

void *sub_70934(void *a1)
{
  v5[0] = off_6DD1C8;
  v5[3] = v5;
  sub_70A1C(v3, v5);
  sub_70ABC(v5);
  sub_70B40(v4, v3);
  a1[1] = 0;
  a1[2] = 0;
  sub_70B40((a1 + 3), v4);
  *a1 = a1 + 1;
  sub_70ABC(v4);
  sub_70ABC(v3);
  return a1;
}

void sub_709F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_70ABC(va1);
  sub_70ABC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_70A1C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_70ABC(uint64_t a1)
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

uint64_t sub_70B40(uint64_t a1, uint64_t a2)
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

uint64_t sub_70BD8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_4E0BC(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_70C24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
LABEL_9:
      sub_46A74();
    }

    v5 = v4;
    while (1)
    {
      if ((*(*v7 + 48))(v7, a3, v5 + 4))
      {
        v9 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = v5[1];
        if (!v9)
        {
          result = v5 + 1;
          goto LABEL_12;
        }
      }

      v7 = *(a1 + 48);
      v5 = v9;
      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  result = (a1 + 8);
LABEL_12:
  *a2 = v5;
  return result;
}

uint64_t sub_70CD4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = (*(*v7 + 48))(v7, v3 + 32, a2);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + v9);
  }

  while (v3);
  if (v2 == v6)
  {
    return v2;
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
LABEL_15:
    sub_46A74();
  }

  if ((*(*v10 + 48))(v10, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_70DB0(unsigned int a1, unsigned int a2)
{
  LOBYTE(v2) = a2;
  if (a1 == 1685287015)
  {
    v3 = a2 & 0xFFFFFF00;
    v4 = 0x100000000;
  }

  else
  {
    v5 = sub_72320(&unk_6E6D30, a1, a2);
    if (v5 == &unk_6E6D38)
    {
      v4 = 0;
      LOBYTE(v2) = 0;
      v3 = 0;
    }

    else
    {
      v2 = *(v5 + 9);
      v3 = v2 & 0xFFFFFF00;
      v4 = 0x100000000;
    }
  }

  return v4 | v3 | v2;
}

BOOL sub_70E38(int a1)
{
  if (a1 <= 1936745080)
  {
    if (a1 == 1634625388)
    {
      return sub_45168();
    }

    v1 = 1668312435;
  }

  else
  {
    if (a1 == 1936745081 || a1 == 1936749683)
    {
      return sub_45168();
    }

    v1 = 1936748645;
  }

  if (a1 == v1)
  {
    return sub_45168();
  }

  return 0;
}

unint64_t sub_70EA0(uint64_t a1, unsigned int a2)
{
  v15 = a2;
  v3 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  if (*(a1 + 148))
  {
    v4 = 1768845428;
  }

  else
  {
    v4 = 1869968496;
  }

  LODWORD(__p[0]) = v3;
  buf.mSelector = 1684498544;
  *&buf.mScope = v4;
  v5 = sub_542F0(__p, &buf, 4u, &v15);
  *(&v7 + 1) = v6;
  *&v7 = v5;
  v8 = ((v7 >> 32) >> 32) & (HIDWORD(v5) != 0);
  if ((((v7 >> 32) >> 32) & (HIDWORD(v5) != 0)) == 0)
  {
    v9 = sub_5544(25);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, v15);
        if (v14 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "DSPHALInterface.cpp";
        v17 = 1024;
        v18 = 147;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPHALInterface::HasDSPProperty(%s) = %u", &buf, 0x22u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

CFDictionaryRef sub_7103C(void *a1)
{
  v18 = 0;
  v19 = 0uLL;
  sub_68DB4(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v19;
    do
    {
      if (v5 >= *(&v19 + 1))
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          sub_189A00();
        }

        v7 = (*(&v19 + 1) - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*(&v19 + 1) - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          sub_1DB894(v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        sub_72390((16 * v6), v3 + 32, v3 + 14);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - v19];
        sub_65184(&v18, v18, v19, v9);
        v10 = v18;
        v11 = *(&v19 + 1);
        v18 = v9;
        v17 = v22;
        v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        sub_65134(&v20);
        v5 = v17;
      }

      else
      {
        sub_72390(v5, v3 + 32, v3 + 14);
        v5 += 2;
      }

      *&v19 = v5;
      v12 = v3[1];
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
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  v15 = sub_65448(&v18);
  v20 = &v18;
  sub_65830(&v20);
  return v15;
}

void sub_711E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  sub_65830(&a15);
  _Unwind_Resume(a1);
}

void sub_71224()
{
  if ((atomic_load_explicit(&qword_6E5D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E5D10))
  {
    v0 = 0x3F2666663EB33333;
    sub_1E63AC(&v0);

    __cxa_guard_release(&qword_6E5D10);
  }
}

void sub_71298(uint64_t a1)
{
  if (dispatch_get_specific("VirtualAudioQueueKey") != "VirtualAudioQueueKey")
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34)
    {
      if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ControlEffortValueManager.cpp";
        v42 = 1024;
        v43 = 111;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Must be called on the VirtualAudio queue!", buf, 0x12u);
      }
    }
  }

  v2 = COERCE_FLOAT(atomic_load((a1 + 104)));
  if (*(a1 + 120) <= v2)
  {
    atomic_store(0, (a1 + 112));
  }

  else
  {
    v3 = COERCE_FLOAT(atomic_load((a1 + 104)));
    v4 = 1.0;
    v5 = 1.0;
    if (*(a1 + 116) < v3)
    {
      v6 = COERCE_FLOAT(atomic_load((a1 + 104)));
      v5 = 1.0 - ((v6 - *(a1 + 116)) / *(a1 + 124));
    }

    v7 = COERCE_FLOAT(atomic_load((a1 + 108)));
    v8 = v5 + v7;
    if (v8 <= 1.0)
    {
      v4 = v8;
    }

    if (v8 < 0.0)
    {
      v4 = 0.0;
    }

    atomic_store(LODWORD(v4), (a1 + 112));
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::recursive_mutex::lock(a1);
  for (i = *(a1 + 80); i; i = *i)
  {
    v10 = i[4];
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = i[3];
        if (v12)
        {
          v13 = v39;
          if (v39 >= v40)
          {
            v15 = v38;
            v16 = v39 - v38;
            v17 = (v39 - v38) >> 4;
            v18 = v17 + 1;
            if ((v17 + 1) >> 60)
            {
              sub_189A00();
            }

            v19 = v40 - v38;
            if ((v40 - v38) >> 3 > v18)
            {
              v18 = v19 >> 3;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF0)
            {
              v20 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              if (!(v20 >> 60))
              {
                operator new();
              }

              sub_6ACD8();
            }

            v21 = (v39 - v38) >> 4;
            v22 = (16 * v17);
            *v22 = v12;
            v22[1] = v11;
            v14 = 16 * v17 + 16;
            v23 = (16 * v17 - 16 * v21);
            memcpy(v23, v15, v16);
            v38 = v23;
            v39 = v14;
            v40 = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v39 = v12;
            v13[1] = v11;
            v14 = (v13 + 2);
          }

          v39 = v14;
        }

        else
        {
          sub_1A8C0(v11);
        }
      }
    }
  }

  std::recursive_mutex::unlock(a1);
  v24 = v38;
  for (j = v39; v24 != j; v24 += 2)
  {
    v26 = sub_5544(25);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = COERCE_FLOAT(atomic_load((a1 + 112)));
      v29 = *v24;
      if (*(*v24 + 735) < 0)
      {
        sub_54A0(__p, *(v29 + 712), *(v29 + 720));
      }

      else
      {
        v30 = v29 + 712;
        *__p = *v30;
        v37 = *(v30 + 16);
      }

      v31 = __p;
      if (v37 < 0)
      {
        v31 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "ControlEffortValueManager.cpp";
      v42 = 1024;
      v43 = 152;
      v44 = 2048;
      v45 = v28;
      v46 = 2080;
      v47 = v31;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControlEffortValueManager - Setting control effort value of %f on registered DSP chain %s", buf, 0x26u);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v32 = *v24;
    v33 = COERCE_FLOAT(atomic_load((a1 + 112)));
    (*(*v32 + 72))(v32, 1685287015, 1668572518, 0, v33);
  }

  *buf = &v38;
  sub_72C14(buf);
}

void sub_716BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a14;
  sub_72C14(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_71704()
{
  if ((atomic_load_explicit(&qword_6E9AF8, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_6E9AF8);
    if (v1)
    {
      byte_6E9AF0 = caulk::product::get_device_class(v1) == 1;
      __cxa_guard_release(&qword_6E9AF8);
    }
  }

  return byte_6E9AF0;
}

uint64_t sub_71780(uint64_t a1, const __CFString *a2, int a3, float a4)
{
  sub_125D8(&v31, a2);
  *cf = a2;
  if (!a2)
  {
    goto LABEL_46;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!*cf)
  {
LABEL_46:
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
  }

  sub_125D8(v29, *cf);
  if (*cf)
  {
    CFRelease(*cf);
  }

  if ((v30 & 0x80u) == 0)
  {
    v9 = v30;
  }

  else
  {
    v9 = v29[1];
  }

  v10 = *(a1 + 295);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 280);
  }

  if (v9 == v10)
  {
    v12 = (a1 + 272);
    v13 = (v30 & 0x80u) == 0 ? v29 : v29[0];
    v14 = *v12;
    v15 = (v11 >= 0 ? a1 + 272 : *v12);
    if (!memcmp(v13, v15, v9) && a3)
    {
      *cf = a1 + 272;
      v16 = *(sub_6FD40(a1 + 64, (a1 + 272)) + 56);
      *cf = a1 + 320;
      if (v16 >= *(sub_6FD40(a1 + 64, (a1 + 320)) + 56))
      {
        v17 = (a1 + 320);
      }

      else
      {
        v17 = (a1 + 272);
      }

      std::string::operator=(&v31, v17);
    }
  }

  *cf = &v31;
  v18 = *(sub_6FD40(a1 + 64, &v31.__r_.__value_.__l.__data_) + 56);
  v19 = *sub_5544(17);
  v20 = v19;
  if (v19)
  {
    v21 = v19;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (CFStringCompare(a2, qword_6E9388, 0))
      {
        if (CFStringCompare(a2, qword_6E9390, 0))
        {
          if (CFStringCompare(a2, qword_6E9398, 0))
          {
            v22 = CFStringCompare(a2, qword_6E93A0, 0) ? "Unknown" : "1min";
          }

          else
          {
            v22 = "1ms";
          }
        }

        else
        {
          v22 = "100ms";
        }
      }

      else
      {
        v22 = "1000ms";
      }

      sub_53E8(__p, v22);
      v23 = v28 >= 0 ? __p : __p[0];
      *cf = 136316162;
      *&cf[4] = "CPMSInterface.mm";
      v33 = 1024;
      v34 = 277;
      v35 = 2080;
      v36 = v23;
      v37 = 1024;
      v38 = v18;
      v39 = 2048;
      v40 = a4;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Continuous Haptics -- In Battery Referenced Value[%s]: %u ; Efficiency Factor: %4.3f", cf, 0x2Cu);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return (v18 * a4);
}

void sub_71B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25)
{
  __cxa_free_exception(v25);
  sub_1DB0E0(&a25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_71BA8(uint64_t a1, char *a2, const __CFString *a3, float a4)
{
  if (a4 == 0.0)
  {
    v12 = sub_5544(14);
    v13 = sub_468EC(1, *v12, *(v12 + 8));
    v14 = v13;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "CPMSInterface.mm";
      v17 = 1024;
      v18 = 341;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CPMS Continuous Haptics -- EfficiencyFactor is zero! Sending a zero value to AHS!", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CPMS Continuous Haptics -- EfficiencyFactor is zero! Sending a zero value to AHS!");
  }

  v6 = sub_71780(a1, a3, 1, a4);
  v7 = sub_5544(17);
  if (*(v7 + 8))
  {
    v8 = *v7;
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = a2;
        if (a2[23] < 0)
        {
          v10 = *a2;
        }

        *v16 = 136315906;
        *&v16[4] = "CPMSInterface.mm";
        v17 = 1024;
        v18 = 343;
        v19 = 2080;
        v20 = v10;
        v21 = 1024;
        v22 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d CPMS Continuous Haptics -- Updated %s mwValue %u", v16, 0x22u);
      }
    }
  }

  *v16 = a2;
  result = sub_6F8FC(a1 + 144, a2);
  *(result + 56) = v6;
  return result;
}

uint64_t sub_71DB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = *(a1 + 64);
  v6 = sub_368CCC(a1, a2, v7);
  if (!v6)
  {
    *(a1 + 56) = v7[0];
  }

  return !v6;
}

void sub_71E0C(void *a1)
{
  if (a1)
  {
    sub_71E0C(*a1);
    sub_71E0C(a1[1]);
    sub_4E0BC(a1 + 6);

    operator delete(a1);
  }
}

uint64_t sub_71E60(unsigned int a1)
{
  if (a1 == 1768845428)
  {
    return 0;
  }

  if (a1 != 1869968496)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a1);
      if (v8 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136315650;
      v10 = "ParameterTypes.cpp";
      v11 = 1024;
      v12 = 30;
      v13 = 2080;
      v14 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Scope %s is not an explicit input/output scope", buf, 0x1Cu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797029;
  }

  return 1;
}

unint64_t sub_71FD4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_70DB0(a2, a3);
  if (HIDWORD(v8))
  {
    v16 = v8;
    if (sub_70E38(v8))
    {
      v17 = *(a1 + 1216);
      if (!v17)
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v25 = *(a1 + 728);
          }

          v20 = __dst;
          if (v25 < 0)
          {
            v20 = __dst[0];
          }

          *buf = 136315650;
          v27 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v28 = 1024;
          v29 = 161;
          v30 = 2080;
          v31 = v20;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      return sub_70EA0(v17, v16);
    }

    else
    {

      return sub_163270(a1, 0x64737067u, v16, a4);
    }
  }

  else
  {
    v9 = sub_5544(25);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v11 = SHIBYTE(v25);
      v12 = __dst[0];
      sub_22170(__p, a3);
      v13 = __dst;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v23 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315906;
      v27 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v28 = 1024;
      v29 = 172;
      v30 = 2080;
      v31 = v13;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphProperty failure for AU subtype %s as graph property %s", buf, 0x26u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 0;
  }
}

uint64_t *sub_72320(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 7);
    if (v7 < a2 || v7 == a2 && *(v4 + 8) < a3)
    {
      ++v4;
    }

    else
    {
      v6 = v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v8 = *(v6 + 7);
  if (v8 > a2 || v8 == a2 && *(v6 + 8) > a3)
  {
    return v3;
  }

  return v6;
}

CFStringRef *sub_72390(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  return a1;
}

void sub_72494(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1DC860(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_724E8(uint64_t a1, char a2, int a3, UInt32 a4, const void *a5)
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
  return AudioObjectSetPropertyData(v8, &v10, 4u, &inQualifierData, a4, a5);
}

const void *sub_72578(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_725A0(uint64_t result)
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
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_19;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_11;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_24:
          v6 = SLOBYTE(valuePtr);
          goto LABEL_25;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_19:
          v6 = SLOWORD(valuePtr);
LABEL_25:
          v7 = v6;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = SLODWORD(valuePtr);
          goto LABEL_30;
        case kCFNumberLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_11:
          v5 = LODWORD(valuePtr);
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = *&valuePtr;
          goto LABEL_30;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v7 = valuePtr;
LABEL_30:
          v5 = LODWORD(v7);
LABEL_31:
          v8 = v5 | 0x100000000;
          if (!Value)
          {
            v8 = 0;
          }

          v9 = v8 & 0x100000000;
          break;
        default:
          v9 = 0;
          LODWORD(v8) = 0;
          break;
      }

      return v8 | v9;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_72864(uint64_t a1)
{
  v2 = *a1;
  v3 = sub_5544(25);
  v4 = *v3;
  if (*v3)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 8);
      *buf = 136315650;
      v7 = "ControlEffortValueManager.cpp";
      v8 = 1024;
      v9 = 103;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControlEffortValueManager - Got an updated thermal budget of %f watts", buf, 0x1Cu);
    }
  }

  atomic_store(*(a1 + 8), (v2 + 104));
  sub_71298(v2);
  operator delete();
}

void sub_72C14(void ***a1)
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
        if (v6)
        {
          sub_1A8C0(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_72C9C(uint64_t a1)
{
  v6 = 0x6F75747054684277;
  v7 = 0;
  v4 = 0x6F75747050504277;
  v5 = 0;
  v2 = (*(*a1 + 16))(a1, &v6);
  result = 0;
  if (v2)
  {
    return (*(*a1 + 16))(a1, &v4);
  }

  return result;
}

uint64_t sub_72D44(uint64_t a1, CFTypeRef *a2)
{
  sub_10FD4(theDict, *a2);
  if (!theDict[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Count = CFDictionaryGetCount(theDict[0]);
  v4 = *sub_5544(17);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CFCopyDescription(theDict[0]);
      theDict[1] = v7;
      sub_1267C(__p, v7);
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = __p;
      if (v27 < 0)
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "CPMSInterface.mm";
      *&buf[12] = 1024;
      *&buf[14] = 366;
      *&buf[18] = 2080;
      *&buf[20] = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Haptics -- In Reference Dictionary: %s", buf, 0x1Cu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_6F320(a1, theDict);
  v9 = (a1 + 88);
  v10 = a1 + 64;
  if (*(a1 + 88))
  {
    sub_6F5FC(a1, theDict, Count, v10, v9);
  }

  else
  {
    sub_2E2D88(a1, theDict, Count, v10, v9);
  }

  v11 = (a1 + 192);
  if (*(a1 + 215) < 0)
  {
    sub_54A0(buf, *(a1 + 192), *(a1 + 200));
  }

  else
  {
    *buf = *v11;
    *&buf[16] = *(a1 + 208);
  }

  sub_71BA8(a1, buf, qword_6E9390, *(a1 + 240));
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v12 = (a1 + 216);
  if (*(a1 + 239) < 0)
  {
    sub_54A0(__p, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    *__p = *v12;
    v27 = *(a1 + 232);
  }

  sub_71BA8(a1, __p, qword_6E9398, *(a1 + 244));
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = a1 + 192;
  v13 = sub_6F8FC(a1 + 144, (a1 + 192));
  *buf = a1 + 216;
  v14 = sub_6F8FC(a1 + 144, (a1 + 216));
  v15 = *(v13 + 56);
  if (!v15 || (v16 = *(v14 + 56), !v16))
  {
    v21 = sub_5544(14);
    v22 = sub_468EC(1, *v21, *(v21 + 8));
    v23 = v22;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CPMSInterface.mm";
      *&buf[12] = 1024;
      *&buf[14] = 332;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): mCalculatedAPC2Power not initialized; Sending a zero value to AHS!", buf, 0x12u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "mCalculatedAPC2Power not initialized; Sending a zero value to AHS!");
  }

  v17 = *sub_5544(17);
  v18 = v17;
  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 215) < 0)
    {
      v11 = *v11;
    }

    if (*(a1 + 239) < 0)
    {
      v12 = *v12;
    }

    *buf = 136316418;
    *&buf[4] = "CPMSInterface.mm";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    *&buf[18] = 2080;
    *&buf[20] = v11;
    v29 = 1024;
    v30 = v15;
    v31 = 2080;
    v32 = v12;
    v33 = 1024;
    v34 = v16;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CPMS Continuous Haptics -- Out APC2 Values { %s : %u }, { %s : %u }", buf, 0x32u);
  }

  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }

  return v15 | (v16 << 32);
}

void sub_7317C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  sub_4BA7C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_73218(uint64_t a1, int a2)
{
  v34 = a2;
  sub_4DFC0(a1);
  v4 = sub_5544(18);
  v5 = sub_5544(37);
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
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "Device_HAL_Common.mm";
      v36 = 1024;
      v37 = 457;
      v38 = 1024;
      *v39 = a2;
      *&v39[4] = 1024;
      *&v39[6] = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously setting thermal budget to %u mW on physical device %u.", buf, 0x1Eu);
    }
  }

  v13 = *(a1 + 268);
  strcpy(buf, "wBhTptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  v14 = sub_4ACE78(v13, buf, &v34);
  if (v14)
  {
    v15 = sub_5544(18);
    v16 = sub_5544(37);
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
        goto LABEL_18;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

LABEL_18:
    v20 = *v15;
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v32, v14);
        v23 = v33;
        v24 = v32[0];
        v25 = v34;
        v26 = *(a1 + 268);
        (*(*a1 + 128))(__p, a1);
        v27 = v32;
        if (v23 < 0)
        {
          v27 = v24;
        }

        if (v31 >= 0)
        {
          v28 = __p;
        }

        else
        {
          v28 = __p[0];
        }

        *buf = 136316418;
        *&buf[4] = "Device_HAL_Common.mm";
        v36 = 1024;
        v37 = 465;
        v38 = 2080;
        *v39 = v27;
        *&v39[8] = 1024;
        v40 = v25;
        v41 = 1024;
        v42 = v26;
        v43 = 2080;
        v44 = v28;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' setting thermal budget to %d mW on HAL device %u with UID %s", buf, 0x32u);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }

        if (v33 < 0)
        {
          operator delete(v32[0]);
        }
      }
    }
  }

  return v14;
}

void sub_73560(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_735A0(uint64_t a1, uint64_t a2, int a3)
{
  std::mutex::lock((a2 + 344));
  v19 = 0;
  if (a3)
  {
    if (a3 == 2)
    {
      v6 = sub_7103C((a2 + 32));
    }

    else
    {
      v6 = sub_7103C((a2 + 64));
    }
  }

  else
  {
    v6 = sub_7103C(a2);
  }

  v7 = v6;
  v19 = v6;
  v8 = sub_5544(14);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_53E8(v17, off_6C07B0[a3]);
        if (v18 >= 0)
        {
          v11 = v17;
        }

        else
        {
          v11 = v17[0];
        }

        v12 = CFCopyDescription(v7);
        v20 = v12;
        sub_1267C(__p, v12);
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = __p;
        if (v16 < 0)
        {
          v13 = __p[0];
        }

        *buf = 136315906;
        v22 = "CPMSInterface.mm";
        v23 = 1024;
        v24 = 455;
        v25 = 2080;
        v26 = v11;
        v27 = 2080;
        v28 = v13;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetching cached CPMS speaker dictionary from %s: %s", buf, 0x26u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v18 < 0)
        {
          operator delete(v17[0]);
        }
      }
    }
  }

  if (a3)
  {
    v14 = 56;
  }

  else
  {
    v14 = 24;
  }

  if (v7)
  {
    CFRetain(v7);
    *a1 = v7;
    *(a1 + 8) = *(a2 + v14);
    CFRelease(v7);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = *(a2 + v14);
  }

  std::mutex::unlock((a2 + 344));
}

void sub_737B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_73838(AudioObjectID a1, const AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (_os_feature_enabled_impl())
  {
    mSelector = a2->mSelector;
    mScope = a2->mScope;
    mElement = a2->mElement;
    operator new();
  }

  return AudioObjectAddPropertyListener(a1, a2, a3, a4);
}

void sub_73BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AudioObjectPropertySelector *sub_73C20(AudioObjectPropertySelector *a1)
{
  v2 = *a1;
  v16.mSelector = *a1;
  v3 = *(a1 + 1);
  *&v16.mScope = *v3;
  v17 = *(v3 + 8);
  std::mutex::lock(&stru_6E4B50);
  v4 = off_6E4B90;
  v5 = off_6E4B98;
  if (off_6E4B90 != off_6E4B98)
  {
    while (v2 != *v4 || !sub_15414(&v16.mScope, v4 + 1))
    {
      v4 += 4;
      if (v4 == v5)
      {
        goto LABEL_16;
      }
    }

    if (v4 != v5 && v4 + 4 != v5)
    {
      v6 = v4 + 5;
      do
      {
        v7 = *(v6 - 1);
        if (v16.mSelector != v7 || !sub_15414(&v16.mScope, v6))
        {
          *v4 = v7;
          v8 = *v6;
          v4[3] = v6[2];
          *(v4 + 1) = v8;
          v4 += 4;
        }

        v9 = v6 + 3;
        v6 += 4;
      }

      while (v9 != v5);
      v5 = off_6E4B98;
    }
  }

  if (v4 != v5)
  {
    off_6E4B98 = v4;
  }

LABEL_16:
  std::mutex::unlock(&stru_6E4B50);
  sub_49C48(&v15);
  sub_4E890();
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(v11 + 8);
  *&v16.mSelector = *v11;
  v16.mElement = v12;
  sub_74D2C(v10, &v16, sub_118060, a1);
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    sub_1DB63C(v13);
    operator delete();
  }

  return a1;
}

uint64_t sub_73DEC(uint64_t a1, int a2)
{
  v34 = a2;
  sub_4DFC0(a1);
  v4 = sub_5544(18);
  v5 = sub_5544(37);
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
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "Device_HAL_Common.mm";
      v36 = 1024;
      v37 = 439;
      v38 = 1024;
      *v39 = a2;
      *&v39[4] = 1024;
      *&v39[6] = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously setting peak power budget to %u mW on physical device %u.", buf, 0x1Eu);
    }
  }

  v13 = *(a1 + 268);
  strcpy(buf, "wBPPptuo");
  buf[9] = 0;
  *&buf[10] = 0;
  v14 = sub_4ACE78(v13, buf, &v34);
  if (v14)
  {
    v15 = sub_5544(18);
    v16 = sub_5544(37);
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
        goto LABEL_18;
      }
    }

    if ((v18 & v19) == 0)
    {
      v15 = v16;
    }

LABEL_18:
    v20 = *v15;
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v32, v14);
        v23 = v33;
        v24 = v32[0];
        v25 = v34;
        v26 = *(a1 + 268);
        (*(*a1 + 128))(__p, a1);
        v27 = v32;
        if (v23 < 0)
        {
          v27 = v24;
        }

        if (v31 >= 0)
        {
          v28 = __p;
        }

        else
        {
          v28 = __p[0];
        }

        *buf = 136316418;
        *&buf[4] = "Device_HAL_Common.mm";
        v36 = 1024;
        v37 = 447;
        v38 = 2080;
        *v39 = v27;
        *&v39[8] = 1024;
        v40 = v25;
        v41 = 1024;
        v42 = v26;
        v43 = 2080;
        v44 = v28;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' setting peak power budget to %d mW on HAL device %u with UID %s", buf, 0x32u);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }

        if (v33 < 0)
        {
          operator delete(v32[0]);
        }
      }
    }
  }

  return v14;
}

void sub_74134(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_74174(uint64_t a1)
{
  v2 = *a1;
  v3 = sub_52B64(*a1, *(a1 + 8));
  if (v3)
  {
    v4 = *(a1 + 16);
    sub_4E890();
    dispatch_assert_queue_V2(qword_709738);
    v6 = v3 + 2;
    v5 = v3[2];
    if (!v5)
    {
      goto LABEL_10;
    }

    v7 = v3 + 2;
    v8 = v3[2];
    do
    {
      v9 = v8[4];
      v10 = v9 >= v4;
      v11 = v9 < v4;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 != v6 && v7[4] <= v4)
    {
      v15 = v3 + 2;
      v16 = v3[2];
      do
      {
        v17 = v16[4];
        v10 = v17 >= v4;
        v18 = v17 < v4;
        if (v10)
        {
          v15 = v16;
        }

        v16 = v16[v18];
      }

      while (v16);
      if (v15 != v6 && v4 >= v15[4])
      {
        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          v21 = v15;
          do
          {
            v20 = v21[2];
            v27 = *v20 == v21;
            v21 = v20;
          }

          while (!v27);
        }

        if (v3[1] == v15)
        {
          v3[1] = v20;
        }

        --v3[3];
        sub_75234(v5, v15);
        operator delete(v15);
      }
    }

    else
    {
LABEL_10:
      v12 = sub_5544(44);
      if (*(v12 + 8))
      {
        v13 = *v12;
        if (*v12)
        {
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            v14 = *v3;
            v48 = 136315906;
            v49 = "AudioObjectPropertyListenerManager.cpp";
            v50 = 1024;
            v51 = 80;
            v52 = 2048;
            v53 = v14;
            v54 = 2048;
            v55 = v4;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID %lu listener not found for key %lu.", &v48, 0x26u);
          }
        }
      }
    }
  }

  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  sub_47BD8(v2 + 8);
  v24 = *(v2 + 304);
  if (v24)
  {
    v25 = v2 + 304;
    do
    {
      v26 = *(v24 + 32);
      v27 = v26 == v22;
      if (v26 >= v22)
      {
        v28 = 1;
      }

      else
      {
        v28 = -1;
      }

      if (v27)
      {
        v29 = *(v24 + 40);
        v30 = v29 == v23;
        v28 = v29 >= v23 ? 1 : -1;
        if (v30)
        {
          v28 = 0;
        }
      }

      v31 = v28 & 0x80;
      v27 = v31 == 0;
      v32 = v31 >> 4;
      if (v27)
      {
        v25 = v24;
      }

      v24 = *(v24 + v32);
    }

    while (v24);
    if (v2 + 304 != v25)
    {
      v33 = *(v25 + 32);
      v34 = v22 == v33;
      if (v22 >= v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = -1;
      }

      if (v34)
      {
        v36 = *(v25 + 40);
        v10 = v23 >= v36;
        v37 = v23 == v36;
        v35 = -1;
        if (v10)
        {
          v35 = 1;
        }

        if (v37)
        {
          v35 = 0;
        }
      }

      if ((v35 & 0x80) == 0)
      {
        sub_3145D4((v2 + 296), v25);
        operator delete(v25);
      }
    }
  }

  sub_47C90(v2 + 8);
  v38 = sub_52B64(v2, *(a1 + 8));
  if (v38)
  {
    sub_4E890();
    dispatch_assert_queue_V2(qword_709738);
    if (!*(v38 + 3))
    {
      v39 = sub_5544(44);
      if (*(v39 + 8))
      {
        v40 = *v39;
        if (*v39)
        {
          if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
          {
            v48 = 136315394;
            v49 = "AudioObjectPropertyListenerManager.cpp";
            v50 = 1024;
            v51 = 280;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d Listener client has no more listeners, erasing from listener client list.", &v48, 0x12u);
          }
        }
      }

      v42 = *(v2 + 320);
      v41 = *(v2 + 328);
      if (v42 != v41)
      {
        do
        {
          if (*v42 == v38)
          {
            goto LABEL_68;
          }

          ++v42;
        }

        while (v42 != v41);
        v42 = *(v2 + 328);
      }

LABEL_68:
      if (v41 == v42)
      {
        v46 = sub_5544(44);
        if (*(v46 + 8))
        {
          v47 = *v46;
          if (*v46)
          {
            if (os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
            {
              v48 = 136315394;
              v49 = "AudioObjectPropertyListenerManager.cpp";
              v50 = 1024;
              v51 = 292;
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Listener client not found, did not alter listener client list.", &v48, 0x12u);
            }
          }
        }
      }

      else
      {
        v43 = v42 + 1;
        if (v42 + 1 != v41)
        {
          do
          {
            v42 = v43;
            v44 = v43 - 1;
            v45 = *v43;
            *v43++ = 0;
            sub_10CCFC(v44, v45);
          }

          while (v43 != v41);
          v41 = *(v2 + 328);
        }

        while (v41 != v42)
        {
          sub_10CCFC(--v41, 0);
        }

        *(v2 + 328) = v42;
      }
    }
  }

  operator delete();
}

void sub_745B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_745E8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  sub_4E890();
  v7 = *a1;
  v8 = a1[1];
  v9 = *(v8 + 8);
  *&v28.mSelector = *v8;
  v28.mElement = v9;
  v10 = sub_73838(v7, &v28, sub_118060, a1);
  if (v10)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *a1;
        v28.mSelector = 136315906;
        *&v28.mScope = "HALPropertySynchronizer.h";
        v29 = 1024;
        v30 = 130;
        v31 = 1024;
        v32 = v10;
        v33 = 1024;
        v34 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d registering property listener on id %u.", &v28, 0x1Eu);
      }
    }
  }

  v14 = *a1;
  v28 = *a1[1];
  std::mutex::lock(&stru_6E4B50);
  v15 = off_6E4B98;
  if (off_6E4B98 >= qword_6E4BA0)
  {
    v17 = off_6E4B90;
    v18 = (off_6E4B98 - off_6E4B90) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      sub_189A00();
    }

    v20 = qword_6E4BA0 - off_6E4B90;
    if ((qword_6E4BA0 - off_6E4B90) >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 60))
      {
        operator new();
      }

      sub_6ACD8();
    }

    v22 = (off_6E4B98 - off_6E4B90) >> 4;
    v23 = 16 * v18;
    *v23 = v14;
    *(v23 + 4) = v28;
    v16 = 16 * v18 + 16;
    v24 = 16 * v18 - 16 * v22;
    if (v17 != v15)
    {
      v25 = v24;
      do
      {
        *v25 = *v17;
        v26 = *(v17 + 4);
        *(v25 + 12) = *(v17 + 3);
        *(v25 + 4) = v26;
        v17 += 16;
        v25 += 16;
      }

      while (v17 != v15);
      v17 = off_6E4B90;
    }

    off_6E4B90 = v24;
    off_6E4B98 = 16 * v18 + 16;
    qword_6E4BA0 = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *off_6E4B98 = v14;
    *(v15 + 4) = v28;
    v16 = v15 + 16;
  }

  off_6E4B98 = v16;
  std::mutex::unlock(&stru_6E4B50);
  return a1;
}

void sub_748A8(uint64_t a1)
{
  v2 = sub_52B64(*a1, *(a1 + 8));
  v3 = sub_5544(44);
  v4 = *(v3 + 8);
  if (!v2)
  {
    if (v4)
    {
      v7 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a1 + 8);
          buf[0] = 136315650;
          *&buf[1] = "AudioObjectPropertyListenerManager.cpp";
          v23 = 1024;
          v24 = 185;
          v25 = 2048;
          v26 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating new listener client for device ID %lu", buf, 0x1Cu);
        }
      }
    }

    operator new();
  }

  if (v4)
  {
    v5 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 8);
        buf[0] = 136315650;
        *&buf[1] = "AudioObjectPropertyListenerManager.cpp";
        v23 = 1024;
        v24 = 179;
        v25 = 2048;
        v26 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Returning existing listener client for device ID %lu", buf, 0x1Cu);
      }
    }
  }

  v9 = *(a1 + 16);
  v21 = *(a1 + 24);
  sub_4E890();
  dispatch_assert_queue_V2(qword_709738);
  v10 = *(v2 + 2);
  if (v10)
  {
    v11 = v2 + 4;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= v9;
      v14 = v12 < v9;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != v2 + 4 && *(v11 + 4) <= v9)
    {
      v15 = sub_5544(44);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = *v2;
          buf[0] = 136315906;
          *&buf[1] = "AudioObjectPropertyListenerManager.cpp";
          v23 = 1024;
          v24 = 67;
          v25 = 2048;
          v26 = v17;
          v27 = 2048;
          v28 = v9;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID %lu listener already exists for key %lu. Will be overwritten.", buf, 0x26u);
        }
      }
    }

    for (i = *(v2 + 2); i; i = v19[1])
    {
      while (1)
      {
        v19 = i;
        v20 = i[4];
        if (v9 >= v20)
        {
          break;
        }

        i = *v19;
        if (!*v19)
        {
          goto LABEL_28;
        }
      }

      if (v20 >= v9)
      {
        *(v19 + 5) = v21;
        operator delete();
      }
    }
  }

LABEL_28:
  operator new();
}

void sub_74D00(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10CCFC(va, 0);
  operator delete();
}

uint64_t sub_74D2C(uint64_t a1, const AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (_os_feature_enabled_impl())
  {
    v8 = (a2->mScope ^ a2->mSelector ^ a2->mElement) + 2654435769;
    v9 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ (a3 >> 32));
    v10 = 0x9DDFEA08EB382D69 * ((a3 >> 32) ^ (v9 >> 47) ^ v9);
    v11 = (0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47)) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
    v12 = 0x9DDFEA08EB382D69 * ((8 * (a4 & 0x1FFFFFFF) + 8) ^ HIDWORD(a4));
    v13 = 0x9DDFEA08EB382D69 * (HIDWORD(a4) ^ (v12 >> 47) ^ v12);
    v14 = ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47)) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11);
    sub_47BD8(&unk_709740);
    *buf = a1;
    v21 = v14;
    sub_34DF70(a1, v14);
    v15 = sub_5544(44);
    if ((*(v15 + 8) & 1) != 0 && *v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      sub_22CE0(__p);
    }

    sub_47C90(&unk_709740);
    v16 = AudioObjectRemovePropertyListener(a1, a2, sub_4ECCC, v14) == 0;
    v17 = sub_5544(44);
    if (v16)
    {
      if ((*(v17 + 8) & 1) != 0 && *v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        sub_22CE0(__p);
      }
    }

    else if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        sub_22CE0(__p);
      }
    }

    *buf = *&a2->mSelector;
    LODWORD(v21) = a2->mElement;
    operator new();
  }

  return AudioObjectRemovePropertyListener(a1, a2, a3, a4);
}

uint64_t *sub_75234(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
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
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
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
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

BOOL sub_755C4(const __CFDictionary **a1)
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
          v16 = "kVirtualAudioPlugInPropertyActivePortsForRouteConfiguration";
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

uint64_t sub_75788(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_75848(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_A4DBC();
  }

  return result;
}

uint64_t sub_758D4(int a1, int a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 != a4)
  {
    while (1)
    {
      v4 = *a3;
      if (*a3)
      {
        if (*(v4 + 388) == a2 && *(v4 + 384) == a1)
        {
          break;
        }
      }

      if (++a3 == a4)
      {
        return 0;
      }
    }
  }

  if (a3 == a4)
  {
    return 0;
  }

  else
  {
    return *a3;
  }
}

uint64_t sub_75920(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "device ID");
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

void sub_759C0(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_75A04(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "device name");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_75A50(CFDictionaryRef *a1, uint64_t a2, int **a3, CFTypeRef **a4)
{
  v29 = 0;
  v30 = 0uLL;
  LODWORD(v31) = *(a2 + 8);
  sub_75920(&v33, &v31);
  sub_88E68(&v29, &v33);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  sub_65388(&v31, *(a2 + 400));
  sub_75EEC(&v33, &v31);
  sub_88E68(&v29, &v33);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  sub_65388(&v31, *(a2 + 400));
  sub_75A04(&v33, &v31);
  sub_88E68(&v29, &v33);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v8 = *(a2 + 384);
  sub_88CE8(&v33, "device type");
  valuePtr = v8;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_88E68(&v29, &v33);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    v11 = sub_3A635C(*a3, v10);
    v31 = v11;
    sub_3A6400(&v33, &v31);
    sub_88E68(&v29, &v33);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  v13 = *a4;
  v12 = a4[1];
  v14 = v12 - *a4;
  if (v14 >> 4 >= 1)
  {
    v15 = v30;
    if (*(&v30 + 1) - v30 >= v14)
    {
      while (v13 != v12)
      {
        v19 = *v13;
        if (*v13)
        {
          CFRetain(*v13);
        }

        *v15 = v19;
        v20 = v13[1];
        if (v20)
        {
          CFRetain(v13[1]);
        }

        *(v15 + 1) = v20;
        v13 += 2;
        v15 += 16;
      }

      *&v30 = v15;
    }

    else
    {
      v16 = (v14 >> 4) + ((v30 - v29) >> 4);
      if (v16 >> 60)
      {
        sub_189A00();
      }

      v17 = *(&v30 + 1) - v29;
      if ((*(&v30 + 1) - v29) >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      v36 = &v29;
      if (v18)
      {
        sub_1DB894(v18);
      }

      v21 = (16 * ((v30 - v29) >> 4));
      v33 = 0;
      cf = v21;
      v35 = v21;
      v22 = (v21 + v14);
      do
      {
        v23 = *v13;
        if (*v13)
        {
          CFRetain(*v13);
        }

        *v21 = v23;
        v24 = v13[1];
        if (v24)
        {
          CFRetain(v13[1]);
        }

        v21[1] = v24;
        v21 += 2;
        v13 += 2;
      }

      while (v21 != v22);
      *&v35 = v22;
      sub_65184(&v29, v15, v30, v22);
      *&v35 = v35 + v30 - v15;
      *&v30 = v15;
      v25 = (cf + v29 - v15);
      sub_65184(&v29, v29, v15, v25);
      v26 = v29;
      v27 = *(&v30 + 1);
      v29 = v25;
      v30 = v35;
      *&v35 = v26;
      *(&v35 + 1) = v27;
      v33 = v26;
      cf = v26;
      sub_65134(&v33);
    }
  }

  *a1 = sub_65448(&v29);
  v33 = &v29;
  sub_65830(&v33);
}

void sub_75DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, const void *a14)
{
  sub_1D5FAC((v14 + 8));
  sub_1D5FE0(&a14);
  a12 = &a9;
  sub_65830(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_75EEC(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "device UID");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

void *sub_75F38(void *result, void *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_189A00();
    }

    v7 = v3 - *result;
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

    v14 = v2;
    if (v9)
    {
      sub_1DB8DC(v9);
    }

    v10 = 0;
    v11 = (8 * v6);
    *v11 = *a2;
    *a2 = 0;
    v12 = 8 * v6 + 8;
    v13 = 0;
    sub_76010(v2, &v10);
    v5 = *(v2 + 8);
    result = sub_760C0(&v10);
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
  }

  *(v2 + 8) = v5;
  return result;
}

void sub_76010(uint64_t a1, void *a2)
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
      sub_7622C(v9);
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

uint64_t sub_760C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_7622C(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFArrayRef sub_76110(const void ***a1)
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

void sub_76190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_761AC(void ***a1)
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
        sub_7622C(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_7622C(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_7624C(void *a1)
{
  if (a1)
  {
    sub_7624C(*a1);
    sub_7624C(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void sub_762A8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 56)
  {
    sub_65310((i - 24));
    sub_65310((i - 48));
  }

  *(a1 + 8) = a2;
}

void sub_76304(uint64_t *a1)
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
        sub_A5114((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_76388(uint64_t *a1, void *a2)
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

void sub_764BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A8C0(v2);
  sub_87980(va);
  _Unwind_Resume(a1);
}

void sub_764E0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v185[1] = 0;
  v185[0] = 0;
  v184[2] = v185;
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    v155 = 0;
    goto LABEL_305;
  }

  v3 = a2;
  v4 = a1;
  do
  {
    if ((sub_A5224(v2 + 16) & 1) == 0)
    {
      goto LABEL_240;
    }

    sub_AEE74(v182, v2 + 16);
    sub_A5750(v180, v2 + 16);
    v5 = *(v2 + 264);
    if ((v5 & 0x100000000) == 0)
    {
      LODWORD(v5) = 0;
    }

    if (v5 > 1935962991)
    {
      v9 = v5 == 1935962992 || v5 == 1936290409;
      v7 = 1987208039;
      v8 = 1668510307;
      if (v9)
      {
        goto LABEL_41;
      }

      v7 = 1768776806;
      v8 = 1668510307;
      if (v5 == 1936614497)
      {
        goto LABEL_41;
      }

LABEL_18:
      v7 = 1768776806;
      v10 = 29283;
      goto LABEL_40;
    }

    if (!v5)
    {
      sub_1F1CD4(@"VoiceOver", &cf);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      sub_125D8(__p, cf);
      if ((v183 & 0x80u) == 0)
      {
        v11 = v183;
      }

      else
      {
        v11 = v182[1];
      }

      v12 = __p[23];
      v13 = __p[23];
      if (__p[23] < 0)
      {
        v12 = *&__p[8];
      }

      if (v11 == v12)
      {
        if ((v183 & 0x80u) == 0)
        {
          v14 = v182;
        }

        else
        {
          v14 = v182[0];
        }

        if (__p[23] >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = *__p;
        }

        v16 = memcmp(v14, v15, v11) == 0;
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v16 = 0;
        if ((__p[23] & 0x80000000) == 0)
        {
LABEL_36:
          if (cf)
          {
            CFRelease(cf);
          }

          if (!v16)
          {
            if ((atomic_load_explicit(&qword_6E5FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E5FD0))
            {
              sub_65388(&v226, @"AmbientSound");
              v100 = sub_1F070C(&v226);
              sub_125D8(&cf, *v100);
              v101 = cf;
              v263[0] = v178;
              *(v263 + 7) = *(&v178 + 7);
              v102 = HIBYTE(v178);
              cf = 0;
              v178 = 0uLL;
              *__p = v101;
              *&__p[8] = v263[0];
              *&__p[15] = *(v263 + 7);
              __p[23] = v102;
              v263[0] = 0;
              *(v263 + 7) = 0;
              *&__p[24] = 1667394407;
              sub_65388(&v225, @"SoloAmbientSound");
              v103 = sub_1F070C(&v225);
              sub_125D8(&v244, *v103);
              v104 = v244;
              v262[0] = v245;
              *(v262 + 7) = *(&v245 + 7);
              v105 = HIBYTE(v245);
              v244 = 0;
              v245 = 0uLL;
              *&__p[32] = v104;
              *v265 = v262[0];
              *&v265[7] = *(v262 + 7);
              v266 = v105;
              v262[0] = 0;
              *(v262 + 7) = 0;
              v267 = 1667394407;
              sub_65388(&v224, @"MediaPlayback");
              v106 = sub_1F070C(&v224);
              sub_125D8(&v241, *v106);
              v107 = v241;
              v261[0] = v242;
              *(v261 + 7) = *(&v242 + 7);
              v108 = HIBYTE(v242);
              v241 = 0;
              v242 = 0uLL;
              v268 = v107;
              *v269 = v261[0];
              *&v269[7] = *(v261 + 7);
              v270 = v108;
              v261[0] = 0;
              *(v261 + 7) = 0;
              v271 = 1668505974;
              sub_65388(&v223, @"Record");
              v109 = sub_1F070C(&v223);
              sub_125D8(&v238, *v109);
              v110 = v238;
              v260[0] = v239;
              *(v260 + 7) = *(&v239 + 7);
              v111 = HIBYTE(v239);
              v238 = 0;
              v239 = 0uLL;
              v272 = v110;
              *v273 = v260[0];
              *&v273[7] = *(v260 + 7);
              v274 = v111;
              v260[0] = 0;
              *(v260 + 7) = 0;
              v275 = 1668441443;
              sub_65388(&v222, @"PlayAndRecord");
              v112 = sub_1F070C(&v222);
              sub_125D8(&v235, *v112);
              v113 = v235;
              v259[0] = v236;
              *(v259 + 7) = *(&v236 + 7);
              v114 = HIBYTE(v236);
              v235 = 0;
              v236 = 0uLL;
              v276 = v113;
              *v277 = v259[0];
              *&v277[7] = *(v259 + 7);
              v278 = v114;
              v259[0] = 0;
              *(v259 + 7) = 0;
              v279 = 1668309362;
              sub_65388(&v221, @"Ringtone");
              v115 = sub_1F070C(&v221);
              sub_125D8(&v232, *v115);
              v116 = v232;
              v258[0] = v233;
              *(v258 + 7) = *(&v233 + 7);
              v117 = HIBYTE(v233);
              v232 = 0;
              v233 = 0uLL;
              v280 = v116;
              *v281 = v258[0];
              *&v281[7] = *(v258 + 7);
              v282 = v117;
              v258[0] = 0;
              *(v258 + 7) = 0;
              v283 = 1668443751;
              sub_65388(&v218, @"Voicemail");
              v118 = sub_1F070C(&v218);
              sub_125D8(&v219, *v118);
              v119 = v219;
              v257[0] = v220;
              *(v257 + 7) = *(&v220 + 7);
              v120 = HIBYTE(v220);
              v219 = 0;
              v220 = 0uLL;
              v284 = v119;
              *v285 = v257[0];
              *&v285[7] = *(v257 + 7);
              v286 = v120;
              v257[0] = 0;
              *(v257 + 7) = 0;
              v287 = 1668705568;
              sub_65388(&v216, @"VoicemailGreeting");
              v121 = sub_1F070C(&v216);
              sub_125D8(&v217, *v121);
              v256[0] = v217.__r_.__value_.__l.__size_;
              v122 = v217.__r_.__value_.__r.__words[0];
              *(v256 + 7) = *(&v217.__r_.__value_.__r.__words[1] + 7);
              v123 = HIBYTE(v217.__r_.__value_.__r.__words[2]);
              memset(&v217, 0, sizeof(v217));
              v288 = v122;
              *v289 = v256[0];
              *&v289[7] = *(v256 + 7);
              v290 = v123;
              v256[0] = 0;
              *(v256 + 7) = 0;
              v291 = 1668705639;
              sub_65388(&v213, @"PhoneCall");
              v124 = sub_1F070C(&v213);
              sub_125D8(&v214, *v124);
              v125 = v214;
              v255[0] = v215;
              *(v255 + 7) = *(&v215 + 7);
              v126 = HIBYTE(v215);
              v214 = 0;
              v215 = 0uLL;
              v292 = v125;
              *v293 = v255[0];
              *&v293[7] = *(v255 + 7);
              v294 = v126;
              v255[0] = 0;
              *(v255 + 7) = 0;
              v295 = 1668703084;
              sub_65388(&v210, @"TTYCall");
              v127 = sub_1F070C(&v210);
              sub_125D8(&v211, *v127);
              v128 = v211;
              v254[0] = v212;
              *(v254 + 7) = *(&v212 + 7);
              v129 = HIBYTE(v212);
              v211 = 0;
              v212 = 0uLL;
              v296 = v128;
              *v297 = v254[0];
              *&v297[7] = *(v254 + 7);
              v298 = v129;
              v254[0] = 0;
              *(v254 + 7) = 0;
              v299 = 1668576377;
              sub_65388(&v207, @"Alarm");
              v130 = sub_1F070C(&v207);
              sub_125D8(&v208, *v130);
              v131 = v208;
              v253[0] = v209;
              *(v253 + 7) = *(&v209 + 7);
              v132 = HIBYTE(v209);
              v208 = 0;
              v209 = 0uLL;
              v300 = v131;
              *v301 = v253[0];
              *&v301[7] = *(v253 + 7);
              v302 = v132;
              v253[0] = 0;
              *(v253 + 7) = 0;
              v303 = 1667329133;
              sub_65388(&v204, @"MediaPlaybackNoSpeaker");
              v133 = sub_1F070C(&v204);
              sub_125D8(&v205, *v133);
              v134 = v205;
              v252[0] = v206;
              *(v252 + 7) = *(&v206 + 7);
              v135 = HIBYTE(v206);
              v205 = 0;
              v206 = 0uLL;
              v304 = v134;
              *v305 = v252[0];
              *&v305[7] = *(v252 + 7);
              v306 = v135;
              v252[0] = 0;
              *(v252 + 7) = 0;
              v307 = 1668182896;
              sub_65388(&v201, @"Alert");
              v136 = sub_1F070C(&v201);
              sub_125D8(&v202, *v136);
              v137 = v202;
              v251[0] = v203;
              *(v251 + 7) = *(&v203 + 7);
              v138 = HIBYTE(v203);
              v202 = 0;
              v203 = 0uLL;
              v308 = v137;
              *v309 = v251[0];
              *&v309[7] = *(v251 + 7);
              v310 = v138;
              v251[0] = 0;
              *(v251 + 7) = 0;
              v311 = 1667591521;
              sub_65388(&v198, @"EmergencyAlert");
              v139 = sub_1F070C(&v198);
              sub_125D8(&v199, *v139);
              v140 = v199;
              v250[0] = v200;
              *(v250 + 7) = *(&v200 + 7);
              v141 = HIBYTE(v200);
              v199 = 0;
              v200 = 0uLL;
              v312 = v140;
              *v313 = v250[0];
              *&v313[7] = *(v250 + 7);
              v314 = v141;
              v250[0] = 0;
              *(v250 + 7) = 0;
              v315 = 1667591521;
              sub_65388(&v195, @"EmergencyAlert_Muteable");
              v142 = sub_1F070C(&v195);
              sub_125D8(&v196, *v142);
              v143 = v196;
              v249[0] = v197;
              *(v249 + 7) = *(&v197 + 7);
              v144 = HIBYTE(v197);
              v196 = 0;
              v197 = 0uLL;
              v316 = v143;
              *v317 = v249[0];
              *&v317[7] = *(v249 + 7);
              v318 = v144;
              v249[0] = 0;
              *(v249 + 7) = 0;
              v319 = 1667591533;
              sub_65388(&v192, @"FindMyPhone");
              v145 = sub_1F070C(&v192);
              sub_125D8(&v193, *v145);
              v146 = v193;
              v248[0] = v194;
              *(v248 + 7) = *(&v194 + 7);
              v147 = HIBYTE(v194);
              v193 = 0;
              v194 = 0uLL;
              v320 = v146;
              *v321 = v248[0];
              *&v321[7] = *(v248 + 7);
              v322 = v147;
              v248[0] = 0;
              *(v248 + 7) = 0;
              v323 = 1667657072;
              sub_65388(&v189, @"FindMyAudioDevice");
              v148 = sub_1F070C(&v189);
              sub_125D8(&v190, *v148);
              v149 = v190;
              v247[0] = v191;
              *(v247 + 7) = *(&v191 + 7);
              v150 = HIBYTE(v191);
              v190 = 0;
              v191 = 0uLL;
              v324 = v149;
              *v325 = v247[0];
              *&v325[7] = *(v247 + 7);
              v326 = v150;
              v247[0] = 0;
              *(v247 + 7) = 0;
              v327 = 1667657057;
              sub_65388(&v186, @"InputInjection");
              v151 = sub_1F070C(&v186);
              sub_125D8(&v187, *v151);
              v152 = v187;
              *v329 = v188;
              *&v329[7] = *(&v188 + 7);
              v153 = HIBYTE(v188);
              v187 = 0;
              v188 = 0uLL;
              v328 = v152;
              v330 = v153;
              v331 = 1667853930;
              sub_1F0774(qword_6E5FB8, __p, 18);
              v154 = 72;
              do
              {
                if (SHIBYTE(v263[v154]) < 0)
                {
                  operator delete(v262[v154]);
                }

                v154 -= 4;
              }

              while (v154 * 8);
              if (SHIBYTE(v188) < 0)
              {
                operator delete(v187);
              }

              sub_452F0(&v186);
              if (SHIBYTE(v191) < 0)
              {
                operator delete(v190);
              }

              sub_452F0(&v189);
              if (SHIBYTE(v194) < 0)
              {
                operator delete(v193);
              }

              sub_452F0(&v192);
              if (SHIBYTE(v197) < 0)
              {
                operator delete(v196);
              }

              sub_452F0(&v195);
              if (SHIBYTE(v200) < 0)
              {
                operator delete(v199);
              }

              sub_452F0(&v198);
              if (SHIBYTE(v203) < 0)
              {
                operator delete(v202);
              }

              sub_452F0(&v201);
              if (SHIBYTE(v206) < 0)
              {
                operator delete(v205);
              }

              sub_452F0(&v204);
              if (SHIBYTE(v209) < 0)
              {
                operator delete(v208);
              }

              sub_452F0(&v207);
              if (SHIBYTE(v212) < 0)
              {
                operator delete(v211);
              }

              sub_452F0(&v210);
              if (SHIBYTE(v215) < 0)
              {
                operator delete(v214);
              }

              sub_452F0(&v213);
              if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v217.__r_.__value_.__l.__data_);
              }

              sub_452F0(&v216);
              if (SHIBYTE(v220) < 0)
              {
                operator delete(v219);
              }

              sub_452F0(&v218);
              if (SHIBYTE(v233) < 0)
              {
                operator delete(v232);
              }

              sub_452F0(&v221);
              if (SHIBYTE(v236) < 0)
              {
                operator delete(v235);
              }

              sub_452F0(&v222);
              if (SHIBYTE(v239) < 0)
              {
                operator delete(v238);
              }

              sub_452F0(&v223);
              if (SHIBYTE(v242) < 0)
              {
                operator delete(v241);
              }

              sub_452F0(&v224);
              if (SHIBYTE(v245) < 0)
              {
                operator delete(v244);
              }

              sub_452F0(&v225);
              if (SHIBYTE(v178) < 0)
              {
                operator delete(cf);
              }

              sub_452F0(&v226);
              __cxa_guard_release(&qword_6E5FD0);
              v3 = a2;
            }

            v52 = sub_1F07F0(qword_6E5FB8, v182);
            if (v52 == &qword_6E5FB8[1])
            {
              v8 = 0;
            }

            else
            {
              v8 = *(v52 + 56);
            }

            v7 = sub_1F097C(v180);
            if (v8 == 1668309362)
            {
              if ((v181 & 0x80u) == 0)
              {
                v96 = v180;
              }

              else
              {
                v96 = v180[0];
              }

              if (v96)
              {
                if ((v181 & 0x80u) == 0)
                {
                  v97 = v181;
                }

                else
                {
                  v97 = v180[1];
                }

                v98 = CFStringCreateWithBytes(0, v96, v97, 0x8000100u, 0);
                *__p = v98;
                if (!v98)
                {
                  v163 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v163, "Could not construct");
                }
              }

              else
              {
                v98 = 0;
                *__p = 0;
              }

              cf = @"SoundRecognition";
              v99 = sub_A5790(v98, &cf);
              if (v98)
              {
                CFRelease(v98);
              }

              if (v99 == kCFCompareEqualTo)
              {
                v8 = 1668441443;
              }
            }

            goto LABEL_41;
          }

          v7 = 1986818931;
          v10 = 24950;
LABEL_40:
          v8 = v10 | 0x63730000u;
          goto LABEL_41;
        }
      }

      operator delete(*__p);
      goto LABEL_36;
    }

    v6 = v5 == 1819309171 || v5 == 1885696611;
    v7 = 1987208039;
    v8 = 1668510307;
    if (!v6)
    {
      goto LABEL_18;
    }

LABEL_41:
    v184[0] = v8 | (v7 << 32);
    v184[1] = 0;
    if (v181 < 0)
    {
      operator delete(v180[0]);
    }

    if (v183 < 0)
    {
      operator delete(v182[0]);
    }

    if (v8 == 1668309362 && *(v2 + 232) == 1)
    {
      LODWORD(v184[0]) = 1668313715;
    }

    sub_43E6C(&cf, v184, 0, 0);
    v17 = cf;
    v18 = HIDWORD(cf);
    sub_44E44(&v219, &v178 + 8);
    memset(__p, 0, 24);
    sub_46980(__p, *(v2 + 208), *(v2 + 216), (*(v2 + 216) - *(v2 + 208)) >> 2);
    v19 = *__p;
    v20 = *&__p[8];
    if (*__p != *&__p[8])
    {
      v21 = *__p;
      do
      {
        LODWORD(v241) = *v21;
        sub_75788(&v219, v241);
        ++v21;
      }

      while (v21 != v20);
    }

    if (v19)
    {
      operator delete(v19);
    }

    sub_AEE74(__p, v2 + 16);
    if (__p[23] >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = *__p;
    }

    if (v22)
    {
      if (__p[23] >= 0)
      {
        v23 = __p[23];
      }

      else
      {
        v23 = *&__p[8];
      }

      v24 = CFStringCreateWithBytes(0, v22, v23, 0x8000100u, 0);
      v241 = v24;
      if (!v24)
      {
        v156 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v156, "Could not construct");
      }
    }

    else
    {
      v24 = 0;
      v241 = 0;
    }

    v238 = @"VoiceOver";
    v25 = sub_A5790(v24, &v238);
    if (v24)
    {
      CFRelease(v24);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if (v25 == kCFCompareEqualTo)
      {
LABEL_72:
        v26 = off_6D9798;
        goto LABEL_90;
      }
    }

    else if (v25 == kCFCompareEqualTo)
    {
      goto LABEL_72;
    }

    sub_80534(__p, (v2 + 448));
    if (__p[24] == 1)
    {
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v26 = off_6D9F78;
    }

    else
    {
      sub_AEE74(__p, v2 + 16);
      if (__p[23] >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      if (v27)
      {
        if (__p[23] >= 0)
        {
          v28 = __p[23];
        }

        else
        {
          v28 = *&__p[8];
        }

        v29 = CFStringCreateWithBytes(0, v27, v28, 0x8000100u, 0);
        v241 = v29;
        if (!v29)
        {
          v159 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v159, "Could not construct");
        }
      }

      else
      {
        v29 = 0;
        v241 = 0;
      }

      v238 = @"Record";
      v30 = sub_A5790(v29, &v238);
      if (v29)
      {
        CFRelease(v29);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (v30)
        {
LABEL_87:
          v26 = off_6D9FC0;
          goto LABEL_90;
        }
      }

      else if (v30)
      {
        goto LABEL_87;
      }

      v26 = off_6DA098;
    }

LABEL_90:
    v244 = v26;
    v246 = &v244;
    v241 = off_6CF530;
    v243 = &v241;
    v31 = *(v2 + 233);
    v238 = off_6B8890;
    LOBYTE(v239) = v31;
    v240 = &v238;
    v32 = *(v2 + 264);
    if ((v32 & 0x100000000) != 0)
    {
      sub_476C50(&v235, v32);
    }

    else
    {
      sub_AEE74(__p, v2 + 16);
      if (__p[23] >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = *__p;
      }

      if (v33)
      {
        if (__p[23] >= 0)
        {
          v34 = __p[23];
        }

        else
        {
          v34 = *&__p[8];
        }

        v35 = CFStringCreateWithBytes(0, v33, v34, 0x8000100u, 0);
        v232 = v35;
        if (!v35)
        {
          v157 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v157, "Could not construct");
        }
      }

      else
      {
        v35 = 0;
        v232 = 0;
      }

      v217.__r_.__value_.__r.__words[0] = @"VoiceOver";
      v36 = sub_A5790(v35, &v217);
      if (v35)
      {
        CFRelease(v35);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v36)
      {
        v37 = off_6CF5C0;
      }

      else
      {
        v37 = off_6D97E0;
      }

      v235 = v37;
      v237 = &v235;
    }

    v38 = *(v2 + 264);
    if ((v38 & 0x100000000) != 0)
    {
      sub_477188(&v232, v38);
      goto LABEL_171;
    }

    sub_AEE74(__p, v2 + 16);
    if (__p[23] >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = *__p;
    }

    if (v39)
    {
      if (__p[23] >= 0)
      {
        v40 = __p[23];
      }

      else
      {
        v40 = *&__p[8];
      }

      v41 = CFStringCreateWithBytes(0, v39, v40, 0x8000100u, 0);
      v217.__r_.__value_.__r.__words[0] = v41;
      if (!v41)
      {
        v158 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v158, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
      v217.__r_.__value_.__r.__words[0] = 0;
    }

    v214 = @"VoiceOver";
    v42 = sub_A5790(v41, &v214);
    if (v41)
    {
      CFRelease(v41);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if (v42 == kCFCompareEqualTo)
      {
LABEL_136:
        if ((atomic_load_explicit(&qword_7014E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_7014E0))
        {
          qmemcpy(__p, "Bphpwphpkpsp", 12);
          qword_7014D0 = 0;
          unk_7014D8 = 0;
          qword_7014C8 = 0;
          sub_4625C(&qword_7014C8, __p, &__p[12], 3uLL);
          __cxa_guard_release(&qword_7014E0);
          v3 = a2;
        }

        if ((atomic_load_explicit(&qword_701500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_701500))
        {
          *__p = 0x7073706B70687077;
          qword_7014F0 = 0;
          unk_7014F8 = 0;
          qword_7014E8 = 0;
          sub_4625C(&qword_7014E8, __p, &__p[8], 2uLL);
          __cxa_guard_release(&qword_701500);
          v3 = a2;
        }

        v46 = off_6D9D38;
        goto LABEL_170;
      }
    }

    else if (v42 == kCFCompareEqualTo)
    {
      goto LABEL_136;
    }

    sub_A5750(__p, v2 + 16);
    if (__p[23] >= 0)
    {
      v43 = __p;
    }

    else
    {
      v43 = *__p;
    }

    if (v43)
    {
      if (__p[23] >= 0)
      {
        v44 = __p[23];
      }

      else
      {
        v44 = *&__p[8];
      }

      v45 = CFStringCreateWithBytes(0, v43, v44, 0x8000100u, 0);
      v217.__r_.__value_.__r.__words[0] = v45;
      if (!v45)
      {
        v160 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v160, "Could not construct");
      }
    }

    else
    {
      v45 = 0;
      v217.__r_.__value_.__r.__words[0] = 0;
    }

    v214 = @"SoundRecognition";
    v47 = sub_A5790(v45, &v214);
    if (v45)
    {
      CFRelease(v45);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if (v47 == kCFCompareEqualTo)
      {
LABEL_154:
        v46 = off_6D9D80;
        goto LABEL_170;
      }
    }

    else if (v47 == kCFCompareEqualTo)
    {
      goto LABEL_154;
    }

    sub_AEE74(__p, v2 + 16);
    if (__p[23] >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = *__p;
    }

    if (v48)
    {
      if (__p[23] >= 0)
      {
        v49 = __p[23];
      }

      else
      {
        v49 = *&__p[8];
      }

      v50 = CFStringCreateWithBytes(0, v48, v49, 0x8000100u, 0);
      v217.__r_.__value_.__r.__words[0] = v50;
      if (!v50)
      {
        v162 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v162, "Could not construct");
      }
    }

    else
    {
      v50 = 0;
      v217.__r_.__value_.__r.__words[0] = 0;
    }

    v214 = @"Record";
    v51 = sub_A5790(v50, &v214);
    if (v50)
    {
      CFRelease(v50);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if (v51)
      {
LABEL_160:
        v234 = 0;
        goto LABEL_171;
      }
    }

    else if (v51)
    {
      goto LABEL_160;
    }

    sub_80534(__p, (v2 + 448));
    if (__p[24] == 1)
    {
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v46 = off_6DA008;
    }

    else
    {
      v46 = off_6DA050;
    }

LABEL_170:
    v232 = v46;
    v234 = &v232;
LABEL_171:
    v53 = 0;
    v54 = *(v2 + 264);
    if ((v54 & 0x100000000) != 0 && v54)
    {
      v55 = v185[0];
      if (v185[0])
      {
        v56 = v185;
        v57 = v185[0];
        do
        {
          v58 = v57;
          v59 = v56;
          v60 = *(v57 + 28);
          if (v60 >= v54)
          {
            v56 = v57;
          }

          v57 = *(v57 + 8 * (v60 < v54));
        }

        while (v57);
        if (v56 != v185)
        {
          if (v60 < v54)
          {
            v58 = v59;
          }

          if (*(v58 + 7) <= v54)
          {
            v53 = 1;
            goto LABEL_191;
          }
        }

        while (v55)
        {
          while (1)
          {
            v61 = v55;
            v62 = *(v55 + 28);
            if (v62 > v54)
            {
              break;
            }

            if (v62 >= v54)
            {
              v53 = 0;
              goto LABEL_191;
            }

            v55 = v61[1];
            if (!v55)
            {
              goto LABEL_190;
            }
          }

          v55 = *v61;
        }
      }

LABEL_190:
      operator new();
    }

LABEL_191:
    if ((*(v2 + 104) & 1) == 0)
    {
      v63 = *sub_5544(2);
      v64 = v63;
      if (v63)
      {
        v65 = v63;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          sub_1F1F00(&v217, v2 + 16);
          v66 = &v217;
          if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v66 = v217.__r_.__value_.__r.__words[0];
          }

          *__p = 136315650;
          *&__p[4] = "AudioSessionUtilities.mm";
          *&__p[12] = 1024;
          *&__p[14] = 476;
          *&__p[18] = 2080;
          *&__p[20] = v66;
          _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "%25s:%-5d Unassigned context id for %s, creating one.", __p, 0x1Cu);
          if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v217.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    v67 = *(v2 + 100);
    v68 = sub_1F2C48(*(v2 + 264));
    if ((v67 & 0x100000000) != 0)
    {
      v69 = v67;
    }

    else
    {
      v69 = v68;
    }

    v70 = *sub_5544(2);
    v71 = v70;
    if (v70)
    {
      v72 = v70;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        sub_1F1F00(&v217, v2 + 16);
        v73 = &v217;
        if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v73 = v217.__r_.__value_.__r.__words[0];
        }

        *__p = 136315906;
        *&__p[4] = "AudioSessionUtilities.mm";
        *&__p[12] = 1024;
        *&__p[14] = 479;
        *&__p[18] = 1024;
        *&__p[20] = v69;
        *&__p[24] = 2080;
        *&__p[26] = v73;
        _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requested VAD (context id %u) for %s", __p, 0x22u);
        if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v217.__r_.__value_.__l.__data_);
        }
      }
    }

    if ((v53 & 1) == 0)
    {
      sub_1F2E18(&v217, *(v2 + 184), *(v2 + 192));
      LODWORD(v211) = v18;
      sub_1F2E44(v176, &v211, 1);
      sub_1F2EE0(v231, &v244);
      sub_1F2F78(v230, &v241);
      sub_1F3010(v229, &v238);
      sub_1F30A8(v228, &v235);
      sub_1F3140(v227, &v232);
      sub_7FF98(v168, (v2 + 280));
      v74 = *(v2 + 264);
      sub_80534(__dst, (v2 + 448));
      sub_1F31D8(__p, v69, 28, &v217, &v219, 1, 1987011684, v17, v176, 1, v231, v230, v229, v228, v227, v168, v74 & 0xFFFFFFFFFFLL, __dst);
      v75 = v4[1];
      v76 = v4[2];
      if (v75 >= v76)
      {
        v78 = 0xCBEEA4E1A08AD8F3 * ((v75 - *v4) >> 3);
        v79 = v78 + 1;
        if (v78 + 1 > 0x8AD8F2FBA93868)
        {
          sub_189A00();
        }

        v80 = 0xCBEEA4E1A08AD8F3 * ((v76 - *v4) >> 3);
        if (2 * v80 > v79)
        {
          v79 = 2 * v80;
        }

        if (v80 >= 0x456C797DD49C34)
        {
          v81 = 0x8AD8F2FBA93868;
        }

        else
        {
          v81 = v79;
        }

        if (v81)
        {
          sub_1F3B44(v81);
        }

        v82 = 472 * v78;
        sub_1F37DC(472 * v78, __p);
        v83 = v4;
        v84 = v4[1];
        v85 = v83;
        v86 = *v83;
        v87 = *v83 - v84;
        v88 = 472 * v78 + v87;
        if (v84 != v86)
        {
          v89 = v86;
          v90 = v82 + v87;
          do
          {
            v91 = sub_1F37DC(v90, v89);
            v89 += 472;
            v90 = v91 + 472;
          }

          while (v89 != v84);
          do
          {
            sub_1F3494(v86);
            v86 += 472;
          }

          while (v86 != v84);
        }

        v77 = v82 + 472;
        v4 = v85;
        v92 = *v85;
        *v85 = v88;
        *(v85 + 1) = (v82 + 472);
        if (v92)
        {
          operator delete(v92);
        }

        v3 = a2;
      }

      else
      {
        v77 = sub_1F37DC(v75, __p) + 472;
      }

      v4[1] = v77;
      sub_1F3494(__p);
      if (v167 == 1 && v166 < 0)
      {
        operator delete(__dst[0]);
      }

      sub_4B0A0(v175);
      v93 = v174;
      v174 = 0;
      if (v93)
      {
        operator delete(v93);
      }

      sub_4B0A0(v173);
      v94 = v172;
      v172 = 0;
      if (v94)
      {
        operator delete(v94);
      }

      sub_4B0A0(v171);
      v95 = v170;
      v170 = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v214 = &v169;
      sub_11C50(&v214);
      v214 = v168;
      sub_11C50(&v214);
      sub_1F355C(v227);
      sub_1F35DC(v228);
      sub_1F365C(v229);
      sub_1F36DC(v230);
      sub_1F375C(v231);
      sub_4E0BC(v176);
      if (v217.__r_.__value_.__r.__words[0])
      {
        v217.__r_.__value_.__l.__size_ = v217.__r_.__value_.__r.__words[0];
        operator delete(v217.__r_.__value_.__l.__data_);
      }
    }

    sub_1F355C(&v232);
    sub_1F35DC(&v235);
    sub_1F365C(&v238);
    sub_1F36DC(&v241);
    sub_1F375C(&v244);
    sub_477A0(v220);
    sub_477A0(v179);
LABEL_240:
    v2 = *(v2 + 8);
  }

  while (v2 != v3);
  v155 = v185[0];
LABEL_305:
  sub_477A0(v155);
}