void sub_19B699D20(float *a1, float a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    *buf = 134217984;
    v10 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[CMBleedToZero] Setting BTZ horizon to %.2f seconds", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v8 = *a1;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMBleedToZero::setMinRequiredQuiescentPeriod(float)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B699EF8(uint64_t a1, float32x2_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    v4 = sub_19B606534(a1 + 80);
    if (*v4 != a2->f32[0] || v4[1] != a2->f32[1] || v4[2] != a2[1].f32[0] || v4[3] != a2[1].f32[1])
    {
      sub_19B690B4C(a1, 1);
    }
  }

  else
  {
    *(a1 + 92) = *a2->f32;
    *(a1 + 108) = 1;
    *(a1 + 15940) = *a2->f32;
    *(a1 + 15956) = 1;
    *(a1 + 27000) = *a2->f32;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a2->f32[0];
      v7 = a2->f32[1];
      v8 = a2[1].f32[0];
      v9 = a2[1].f32[1];
      *buf = 134284289;
      v19 = v6;
      v20 = 2049;
      v21 = v7;
      v22 = 2049;
      v23 = v8;
      v24 = 2049;
      v25 = v9;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[RelDMService] Headset orientation q_bf set to [%{private}f,%{private}f,%{private}f,%{private}f]", buf, 0x2Au);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
      }

      v14 = a2->f32[0];
      v15 = a2->f32[1];
      v16 = a2[1].f32[0];
      v17 = a2[1].f32[1];
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setFixedTransforms(const CMOQuaternion &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    if (*(a1 + 37656) == 1)
    {
      sub_19B78F384(a1 + 33904, a2, v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

float sub_19B69A31C(float32x2_t *a1, float32x4_t a2)
{
  v8[0] = sub_19B66BFF4(a1 + 667, a2);
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  sub_19B66C1A4(v8, a1[660].f32[0], a1[660].f32[1], a1[661].f32[0]);
  return v6;
}

float sub_19B69A370(float32x2_t *a1, float32x4_t a2)
{
  v8[0] = sub_19B66BFF4(a1 + 676, a2);
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  sub_19B66C1A4(v8, a1[669].f32[0], a1[669].f32[1], a1[670].f32[0]);
  return v6;
}

void sub_19B69A3C4(uint64_t a1, uint64_t a2, float *a3, void *a4, void *a5)
{
  v10 = (a1 + 16080);
  if (*(a1 + 16))
  {
    v11 = *(a1 + 37712);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 16088) != 1 || (v11 & 1) != 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0x3F80000000000000;
    v26 = sub_19B69A550();
    *a3 = *&v26;
    *(a3 + 1) = v27;
    *(a3 + 2) = v28;
    v29 = *(a1 + 3778);
    if (*(a1 + 3778))
    {
      v30 = v29 + *(a1 + 3776) - 1;
      v31 = *(a1 + 3780);
      if (v30 < v31)
      {
        v31 = 0;
      }

      v29 = *(a1 + 8 * (v30 - v31) + 3784);
    }

    *a5 = v29;
    if (((v10[2] | v11) & 1) == 0)
    {
      v29 = 0;
    }

    *a4 = v29;
  }

  else
  {
    v33 = *(a1 + 16100);
    v32 = *(a1 + 16092);
    v12 = 24;
    if (*v10)
    {
      v12 = 40;
    }

    *v34[0].f32 = *(a1 + 16092 + v12);
    v13 = sub_19B606534(a1 + 80);
    v15.f32[0] = sub_19B66BF70(v34, v13, v14);
    v35 = __PAIR64__(v16, v15.u32[0]);
    v36 = v17;
    v37 = v18;
    *a2 = sub_19B66BFF4(&v35, v15);
    *(a2 + 4) = v19;
    *(a2 + 8) = v20;
    *(a2 + 12) = v21;
    *a3 = sub_19B604A8C(a1 + 80, &v32, v34);
    *(a3 + 1) = v22;
    *(a3 + 2) = v23;
    *a4 = *(a1 + 5816);
    v24 = *(a1 + 3776) + *(a1 + 3778) - 1;
    v25 = *(a1 + 3780);
    if (v24 < v25)
    {
      v25 = 0;
    }

    *a5 = *(a1 + 8 * (v24 - v25) + 3784);
  }
}

double sub_19B69A550()
{
  if ((atomic_load_explicit(&qword_1EAFE31A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EAFE31A0))
  {
    sub_19B421798();
    v1 = sub_19B4426E4();
    v2 = -0.34907;
    if (!v1)
    {
      v2 = 0.0;
    }

    dword_1EAFE3198 = LODWORD(v2);
    __cxa_guard_release(&qword_1EAFE31A0);
  }

  __sincosf_stret(*&dword_1EAFE3198);
  return 0.0;
}

void sub_19B69A5F4(_BYTE *a1, unint64_t *a2, uint64_t a3, float *a4, uint64_t *a5, uint64_t *a6, _BYTE *a7)
{
  if (a1[16084] != 1 || *a2 == 0)
  {
    *a7 = 0;
    v18 = 0;
    v19 = 0x3F80000000000000;
    sub_19B69A3C4(a1, a3, a4, a5, a6);
LABEL_14:
    v17 = *a5;
    *a2 = *a5;
    goto LABEL_15;
  }

  if (a1[16] == 1 && (a1[37712] & 1) != 0 || (a1[16082] & 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1[16081] ^ 1;
  }

  *a7 = v13 & 1;
  v18 = 0;
  v19 = 0x3F80000000000000;
  sub_19B69A3C4(a1, a3, a4, a5, a6);
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  LODWORD(v18) = sub_19B5E9814((a1 + 27000), a2);
  HIDWORD(v18) = v14;
  v19 = __PAIR64__(v16, v15);
  v17 = *a2;
LABEL_15:
  sub_19B6ADB58((a1 + 27560), a4, &v18, v17, *a6);
}

uint64_t sub_19B69A71C(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  if (*(result + 16) && *(result + 37712) == 1)
  {
    *(result + 37712) = 0;
    sub_19B690B4C(result, 1);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B69A8E4(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 5832) = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v8 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[RelDMService], walk or step detected. timestamp %llu", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTimestampAuxLastDetectedWalking(uint64_t)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B69AAAC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 5840) = a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v8 = a2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[RelDMService], sit->stand detected. timestamp %llu", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E297A0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMService::setTimestampAuxLastDetectedSitToStand(uint64_t)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B69AC74()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void **sub_19B69ACA4(void **a1)
{
  v3 = a1 + 647;
  sub_19B5BE5A4(&v3);
  v3 = a1 + 644;
  sub_19B5BE5A4(&v3);
  v3 = a1 + 641;
  sub_19B5BE5A4(&v3);
  v3 = a1 + 638;
  sub_19B5BE5A4(&v3);
  return a1;
}

uint64_t sub_19B69AD20(uint64_t a1)
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

void sub_19B69ADA0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t sub_19B69ADEC(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3AB80);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMOQuaternion>::operator[](const size_t) const [T = CMOQuaternion]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[8 * (v4 - v5) + 4];
}

void sub_19B69B478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

os_log_t sub_19B69B4CC()
{
  result = os_log_create("com.apple.locationd.Motion", "PredictedWalkDistance");
  qword_1EAFE2A20 = result;
  return result;
}

void sub_19B69B728(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMFlickGestureManager, a2, a3))
  {
    qword_1ED71D360 = objc_alloc_init(CMFlickGestureManager);
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v4 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      v5 = NSStringFromClass(*(a1 + 32));
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "%@ is not supported on this platform!", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      NSStringFromClass(*(a1 + 32));
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMFlickGestureManager sharedManager]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B69B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B69BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v22, v21);
  _Unwind_Resume(a1);
}

void sub_19B69BBB8(uint64_t a1, CLConnectionMessage **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  }

  else
  {
    DictionaryOfClasses = 0;
    v10 = objc_msgSend_objectForKeyedSubscript_(0, v7, @"CMErrorMessage");
  }

  if (!DictionaryOfClasses || !v10)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v17 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Invalid service response.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_68;
    }

    goto LABEL_28;
  }

  v13 = objc_msgSend_integerValue(v10, v11, v12);
  v14 = v13;
  if (v13 > 108)
  {
    if (v13 == 110)
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v25 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Not entitled to manage the AOP service.", buf, 2u);
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v13 != 109)
      {
LABEL_40:
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
        }

        v23 = off_1EAFE2970;
        if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v28 = v14;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Service request failed! error,%{public}ld", buf, 0xCu);
        }

        v24 = sub_19B420058();
        if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
        {
          goto LABEL_28;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v21 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Service is not available!", buf, 2u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        goto LABEL_68;
      }
    }

LABEL_26:
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFlickGestureManager connect]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_28;
  }

  if (v13 == 100)
  {
    goto LABEL_28;
  }

  if (v13 != 108)
  {
    goto LABEL_40;
  }

  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
  }

  v15 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Unable to communicate with the AOP service!", buf, 2u);
  }

  v16 = sub_19B420058();
  if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 == -1)
    {
      goto LABEL_26;
    }

LABEL_68:
    dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    goto LABEL_26;
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B69C1C0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 40) == 1)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v2 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Connection interrupted! Resending service request.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v9 = 0;
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager connect]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    *(*(a1 + 32) + 40) = 0;
    v5 = sub_19B420D84();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B69C3E0;
    v7[3] = &unk_1E7532A00;
    v8 = *(a1 + 32);
    sub_19B421668(v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B69C3E0(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    return objc_msgSend_sendServiceRequestPrivate(*(result + 40), a2, a3);
  }

  return result;
}

void sub_19B69C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B69C5AC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40))
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v2 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Service already started.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager startService]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v6 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Start service called.", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager startService]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *(v1 + 40) = 1;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v8, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B69C940(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 40) == 1)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v3 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stop service called.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager stopService]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(v1 + 40) = 0;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v5, v6);
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v8 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "Service already stopped (or service has not been started yet).", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager stopService]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B69DE6C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[4] + 8);
  *(v3 + 56) = a1[5];
  *(v3 + 48) = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_sendEventToClientPrivate, a3);
}

void sub_19B69E070()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  buf[0] = 0;
  v3 = sub_19B438CCC(v1, "EnableFlickGestureOnUnsupportedHardware", buf);
  byte_1ED71D350 = v3 & buf[0];
  if (v2)
  {
    sub_19B41FFEC(v2);
    if ((byte_1ED71D350 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v3 & buf[0]) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3ABC0);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Default to flick gesture manager on unsupported hardware is enabled!", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3ABC0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL isFlickGestureAvailablePrivate()_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B69E298()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

os_log_t sub_19B69E2C8()
{
  result = os_log_create("com.apple.locationd.Motion", "Flick");
  off_1EAFE2970 = result;
  return result;
}

void sub_19B69E2FC(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B69E940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  sub_19B41FFEC(v16);
  _Unwind_Resume(a1);
}

void sub_19B69EC30(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = sub_19B69ECA8;
  v3[3] = &unk_1E7532A00;
  v4 = v1;
  dispatch_async(v2, v3);
}

uint64_t sub_19B69ECA8(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if (Weak)
  {

    return objc_msgSend__connect(v5, v2, v3);
  }

  else
  {

    return objc_msgSend__disconnect(v5, v2, v3);
  }
}

void sub_19B69EF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  sub_19B41FFEC(v29);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B69EFEC(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (objc_loadWeak(Weak + 3))
    {
      v6 = a2[1];
      v7 = *a2;
      v8 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend__handleMessage_(v4, v5, &v7);
      if (v8)
      {
        sub_19B41FFEC(v8);
      }
    }
  }
}

void sub_19B69F060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B69F3CC(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_didUpdateEvent_, v3);
}

uint64_t sub_19B69F40C(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_didUpdateMeasurement_, v3);
}

uint64_t sub_19B69F44C(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_didUpdateTemperature_, v3);
}

uint64_t sub_19B69F48C(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_manager_errorOccurred_, v3);
}

void sub_19B69F82C()
{
  v0 = sub_19B420D84();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B438CCC(v1, "ForceAnomalyDetectionAvailable", &byte_1ED71D370);
  if (v2)
  {

    sub_19B41FFEC(v2);
  }
}

void sub_19B69F8A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B69FA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B69FAE4(uint64_t a1, CLConnectionMessage **a2)
{
  v164 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v7 = objc_msgSend_setWithObject_(v4, v6, v5);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v2, v7);
    if (DictionaryOfClasses)
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMAnomalyDetectorEvent");
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v11 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_msgSend_identifier(v10, v12, v13);
        objc_msgSend_absoluteTimestamp(v10, v15, v16);
        v18 = v17;
        objc_msgSend_updateTimestamp(v10, v19, v20);
        *buf = 68290819;
        v148 = 2082;
        v147 = 0;
        v149 = "";
        v150 = 2050;
        v151 = v14;
        v152 = 2049;
        v153 = v18;
        v154 = 2049;
        v155 = v29;
        v156 = 2049;
        v157 = objc_msgSend_state(v10, v21, v22);
        v158 = 2049;
        v159 = objc_msgSend_response(v10, v23, v24);
        v160 = 2049;
        v161 = objc_msgSend_resolution(v10, v25, v26);
        v162 = 2049;
        v163 = objc_msgSend_sosState(v10, v27, v28);
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CMAnomalyManager received event notification, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", buf, 0x58u);
      }

      v30 = objc_msgSend_identifier(v10, v12, v13);
      if (v30 == objc_msgSend_identifier(*(*(a1 + 32) + 40), v31, v32) && objc_msgSend_state(*(*(a1 + 32) + 40), v33, v34) == 2 && objc_msgSend_state(v10, v33, v34) == 1)
      {
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }

        v35 = qword_1EAFE29B0;
        if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
        {
          v38 = objc_msgSend_identifier(v10, v36, v37);
          *buf = 68289282;
          v147 = 0;
          v148 = 2082;
          v149 = "";
          v150 = 2050;
          v151 = v38;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received same event identifier but state went from recovered to detected, identifier:%{public}llu}", buf, 0x1Cu);
          if (qword_1EAFE29A8 != -1)
          {
            dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
          }
        }

        v39 = qword_1EAFE29B0;
        if (!os_signpost_enabled(qword_1EAFE29B0))
        {
          goto LABEL_46;
        }

        v42 = objc_msgSend_identifier(v10, v40, v41);
        *buf = 68289282;
        v147 = 0;
        v148 = 2082;
        v149 = "";
        v150 = 2050;
        v151 = v42;
        v43 = "Received same event identifier but state went from recovered to detected";
        v44 = "{msg%{public}.0s:Received same event identifier but state went from recovered to detected, identifier:%{public}llu}";
      }

      else
      {
        if (objc_msgSend_state(v10, v33, v34) >= 1 && objc_msgSend_state(v10, v45, v46) < 4)
        {
          if (objc_msgSend_identifier(v10, v47, v48))
          {
            v58 = objc_msgSend_identifier(v10, v56, v57);
            if (v58 == objc_msgSend_identifier(*(*(a1 + 32) + 40), v59, v60) && (v63 = objc_msgSend_state(v10, v61, v62), v63 == objc_msgSend_state(*(*(a1 + 32) + 40), v64, v65)))
            {
              if (qword_1EAFE29A8 != -1)
              {
                dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
              }

              v66 = qword_1EAFE29B0;
              if (!os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_46;
              }

              v69 = objc_msgSend_identifier(v10, v67, v68);
              objc_msgSend_absoluteTimestamp(v10, v70, v71);
              v73 = v72;
              objc_msgSend_updateTimestamp(v10, v74, v75);
              v77 = v76;
              v80 = objc_msgSend_state(v10, v78, v79);
              v83 = objc_msgSend_response(v10, v81, v82);
              v86 = objc_msgSend_resolution(v10, v84, v85);
              v89 = objc_msgSend_sosState(v10, v87, v88);
              *buf = 68290819;
              v148 = 2082;
              v147 = 0;
              v149 = "";
              v150 = 2050;
              v151 = v69;
              v152 = 2049;
              v153 = v73;
              v154 = 2049;
              v155 = v77;
              v156 = 2049;
              v157 = v80;
              v158 = 2049;
              v159 = v83;
              v160 = 2049;
              v161 = v86;
              v162 = 2049;
              v163 = v89;
              v90 = "{msg%{public}.0s:CMAnomalyManager dispatch avoided, this event state has already been dispatched before, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
            }

            else
            {
              if (!objc_msgSend_resolution(v10, v61, v62))
              {
                v140 = *(a1 + 32);
                v141 = *(v140 + 16);
                v145[0] = MEMORY[0x1E69E9820];
                v145[1] = 3221225472;
                v145[2] = sub_19B6A0370;
                v145[3] = &unk_1E7532A00;
                v145[4] = v140;
                v145[5] = v10;
                dispatch_async(v141, v145);
                goto LABEL_46;
              }

              if (qword_1EAFE29A8 != -1)
              {
                dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
              }

              v66 = qword_1EAFE29B0;
              if (!os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_46;
              }

              v93 = objc_msgSend_identifier(v10, v91, v92);
              objc_msgSend_absoluteTimestamp(v10, v94, v95);
              v97 = v96;
              objc_msgSend_updateTimestamp(v10, v98, v99);
              v101 = v100;
              v104 = objc_msgSend_state(v10, v102, v103);
              v107 = objc_msgSend_response(v10, v105, v106);
              v110 = objc_msgSend_resolution(v10, v108, v109);
              v113 = objc_msgSend_sosState(v10, v111, v112);
              *buf = 68290819;
              v148 = 2082;
              v147 = 0;
              v149 = "";
              v150 = 2050;
              v151 = v93;
              v152 = 2049;
              v153 = v97;
              v154 = 2049;
              v155 = v101;
              v156 = 2049;
              v157 = v104;
              v158 = 2049;
              v159 = v107;
              v160 = 2049;
              v161 = v110;
              v162 = 2049;
              v163 = v113;
              v90 = "{msg%{public}.0s:CMAnomalyManager dispatch avoided, this event state is already resolved, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
            }

            v114 = v66;
            v115 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1EAFE29A8 != -1)
            {
              dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
            }

            v116 = qword_1EAFE29B0;
            if (!os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }

            v119 = objc_msgSend_identifier(v10, v117, v118);
            objc_msgSend_absoluteTimestamp(v10, v120, v121);
            v123 = v122;
            objc_msgSend_updateTimestamp(v10, v124, v125);
            v127 = v126;
            v130 = objc_msgSend_state(v10, v128, v129);
            v133 = objc_msgSend_response(v10, v131, v132);
            v136 = objc_msgSend_resolution(v10, v134, v135);
            v139 = objc_msgSend_sosState(v10, v137, v138);
            *buf = 68290819;
            v148 = 2082;
            v147 = 0;
            v149 = "";
            v150 = 2050;
            v151 = v119;
            v152 = 2049;
            v153 = v123;
            v154 = 2049;
            v155 = v127;
            v156 = 2049;
            v157 = v130;
            v158 = 2049;
            v159 = v133;
            v160 = 2049;
            v161 = v136;
            v162 = 2049;
            v163 = v139;
            v90 = "{msg%{public}.0s:CMAnomalyManager dispatch avoided, this event is non event, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
            v114 = v116;
            v115 = OS_LOG_TYPE_DEBUG;
          }

          _os_log_impl(&dword_19B41C000, v114, v115, v90, buf, 0x58u);
LABEL_46:

          *(*(a1 + 32) + 32) = objc_msgSend_copy(v10, v142, v143);
          goto LABEL_47;
        }

        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }

        v49 = qword_1EAFE29B0;
        if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
        {
          v52 = objc_msgSend_state(v10, v50, v51);
          *buf = 68289282;
          v147 = 0;
          v148 = 2082;
          v149 = "";
          v150 = 2050;
          v151 = v52;
          _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid event state, state:%{public}ld}", buf, 0x1Cu);
          if (qword_1EAFE29A8 != -1)
          {
            dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
          }
        }

        v39 = qword_1EAFE29B0;
        if (!os_signpost_enabled(qword_1EAFE29B0))
        {
          goto LABEL_46;
        }

        v55 = objc_msgSend_state(v10, v53, v54);
        *buf = 68289282;
        v147 = 0;
        v148 = 2082;
        v149 = "";
        v150 = 2050;
        v151 = v55;
        v43 = "Invalid event state";
        v44 = "{msg%{public}.0s:Invalid event state, state:%{public}ld}";
      }

      _os_signpost_emit_with_name_impl(&dword_19B41C000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v43, v44, buf, 0x1Cu);
      goto LABEL_46;
    }
  }

LABEL_47:
  v144 = *MEMORY[0x1E69E9840];
}

void sub_19B6A0370(uint64_t a1, const char *a2, uint64_t a3)
{
  v202 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_delegate(*(a1 + 32), a2, a3))
  {
    objc_msgSend_delegate(*(a1 + 32), v4, v5);
    if (objc_opt_respondsToSelector())
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v8 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_msgSend_identifier(*(a1 + 40), v9, v10);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v12, v13);
        v15 = v14;
        objc_msgSend_updateTimestamp(*(a1 + 40), v16, v17);
        v19 = v18;
        v22 = objc_msgSend_state(*(a1 + 40), v20, v21);
        v25 = objc_msgSend_response(*(a1 + 40), v23, v24);
        v28 = objc_msgSend_resolution(*(a1 + 40), v26, v27);
        v31 = objc_msgSend_sosState(*(a1 + 40), v29, v30);
        v185 = 68290819;
        v186 = 2082;
        v187 = "";
        v188 = 2050;
        v189 = v11;
        v190 = 2049;
        v191 = v15;
        v192 = 2049;
        v193 = v19;
        v194 = 2049;
        v195 = v22;
        v196 = 2049;
        v197 = v25;
        v198 = 2049;
        v199 = v28;
        v200 = 2049;
        v201 = v31;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CMAnomalyManager dispatches event through onAnomalyEvent, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v185, 0x58u);
      }

      *(*(a1 + 32) + 40) = objc_msgSend_copy(*(a1 + 40), v32, v33);
      objc_msgSend_setAcknowledgement_(*(*(a1 + 32) + 40), v34, 1);
      objc_msgSend__sendRegistrationForAnomalyEvent_(*(a1 + 32), v35, *(*(a1 + 32) + 40));
      v38 = objc_msgSend_delegate(*(a1 + 32), v36, v37);
      objc_msgSend_anomalyManager_onAnomalyEvent_(v38, v39, *(a1 + 32), *(a1 + 40));
      goto LABEL_31;
    }

    objc_msgSend_delegate(*(a1 + 32), v6, v7);
    if (objc_opt_respondsToSelector())
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v90 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
      {
        v93 = objc_msgSend_identifier(*(a1 + 40), v91, v92);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v94, v95);
        v97 = v96;
        objc_msgSend_updateTimestamp(*(a1 + 40), v98, v99);
        v101 = v100;
        v104 = objc_msgSend_state(*(a1 + 40), v102, v103);
        v107 = objc_msgSend_response(*(a1 + 40), v105, v106);
        v110 = objc_msgSend_resolution(*(a1 + 40), v108, v109);
        v113 = objc_msgSend_sosState(*(a1 + 40), v111, v112);
        v185 = 68290819;
        v186 = 2082;
        v187 = "";
        v188 = 2050;
        v189 = v93;
        v190 = 2049;
        v191 = v97;
        v192 = 2049;
        v193 = v101;
        v194 = 2049;
        v195 = v104;
        v196 = 2049;
        v197 = v107;
        v198 = 2049;
        v199 = v110;
        v200 = 2049;
        v201 = v113;
        _os_log_impl(&dword_19B41C000, v90, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager did not dispatch event through didDetectAnomalyEvent, function was deprecated, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v185, 0x58u);
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }
      }

      v64 = qword_1EAFE29B0;
      if (os_signpost_enabled(qword_1EAFE29B0))
      {
        v116 = objc_msgSend_identifier(*(a1 + 40), v114, v115);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v117, v118);
        v120 = v119;
        objc_msgSend_updateTimestamp(*(a1 + 40), v121, v122);
        v124 = v123;
        v127 = objc_msgSend_state(*(a1 + 40), v125, v126);
        v130 = objc_msgSend_response(*(a1 + 40), v128, v129);
        v133 = objc_msgSend_resolution(*(a1 + 40), v131, v132);
        v136 = objc_msgSend_sosState(*(a1 + 40), v134, v135);
        v185 = 68290819;
        v186 = 2082;
        v187 = "";
        v188 = 2050;
        v189 = v116;
        v190 = 2049;
        v191 = v120;
        v192 = 2049;
        v193 = v124;
        v194 = 2049;
        v195 = v127;
        v196 = 2049;
        v197 = v130;
        v198 = 2049;
        v199 = v133;
        v200 = 2049;
        v201 = v136;
        v88 = "CMAnomalyManager did not dispatch event through didDetectAnomalyEvent, function was deprecated";
        v89 = "{msg%{public}.0s:CMAnomalyManager did not dispatch event through didDetectAnomalyEvent, function was deprecated, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
        goto LABEL_30;
      }
    }

    else
    {
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }

      v137 = qword_1EAFE29B0;
      if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
      {
        v140 = objc_msgSend_identifier(*(a1 + 40), v138, v139);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v141, v142);
        v144 = v143;
        objc_msgSend_updateTimestamp(*(a1 + 40), v145, v146);
        v148 = v147;
        v151 = objc_msgSend_state(*(a1 + 40), v149, v150);
        v154 = objc_msgSend_response(*(a1 + 40), v152, v153);
        v157 = objc_msgSend_resolution(*(a1 + 40), v155, v156);
        v160 = objc_msgSend_sosState(*(a1 + 40), v158, v159);
        v185 = 68290819;
        v186 = 2082;
        v187 = "";
        v188 = 2050;
        v189 = v140;
        v190 = 2049;
        v191 = v144;
        v192 = 2049;
        v193 = v148;
        v194 = 2049;
        v195 = v151;
        v196 = 2049;
        v197 = v154;
        v198 = 2049;
        v199 = v157;
        v200 = 2049;
        v201 = v160;
        _os_log_impl(&dword_19B41C000, v137, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager did not dispatch event - no suitable selector, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v185, 0x58u);
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
        }
      }

      v64 = qword_1EAFE29B0;
      if (os_signpost_enabled(qword_1EAFE29B0))
      {
        v163 = objc_msgSend_identifier(*(a1 + 40), v161, v162);
        objc_msgSend_absoluteTimestamp(*(a1 + 40), v164, v165);
        v167 = v166;
        objc_msgSend_updateTimestamp(*(a1 + 40), v168, v169);
        v171 = v170;
        v174 = objc_msgSend_state(*(a1 + 40), v172, v173);
        v177 = objc_msgSend_response(*(a1 + 40), v175, v176);
        v180 = objc_msgSend_resolution(*(a1 + 40), v178, v179);
        v183 = objc_msgSend_sosState(*(a1 + 40), v181, v182);
        v185 = 68290819;
        v186 = 2082;
        v187 = "";
        v188 = 2050;
        v189 = v163;
        v190 = 2049;
        v191 = v167;
        v192 = 2049;
        v193 = v171;
        v194 = 2049;
        v195 = v174;
        v196 = 2049;
        v197 = v177;
        v198 = 2049;
        v199 = v180;
        v200 = 2049;
        v201 = v183;
        v88 = "CMAnomalyManager did not dispatch event - no suitable selector";
        v89 = "{msg%{public}.0s:CMAnomalyManager did not dispatch event - no suitable selector, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v40 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
    {
      v43 = objc_msgSend_identifier(*(a1 + 40), v41, v42);
      objc_msgSend_absoluteTimestamp(*(a1 + 40), v44, v45);
      v47 = v46;
      objc_msgSend_updateTimestamp(*(a1 + 40), v48, v49);
      v51 = v50;
      v54 = objc_msgSend_state(*(a1 + 40), v52, v53);
      v57 = objc_msgSend_response(*(a1 + 40), v55, v56);
      v60 = objc_msgSend_resolution(*(a1 + 40), v58, v59);
      v63 = objc_msgSend_sosState(*(a1 + 40), v61, v62);
      v185 = 68290819;
      v186 = 2082;
      v187 = "";
      v188 = 2050;
      v189 = v43;
      v190 = 2049;
      v191 = v47;
      v192 = 2049;
      v193 = v51;
      v194 = 2049;
      v195 = v54;
      v196 = 2049;
      v197 = v57;
      v198 = 2049;
      v199 = v60;
      v200 = 2049;
      v201 = v63;
      _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CMAnomalyManager did not dispatch event - registered delegate was released, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}", &v185, 0x58u);
      if (qword_1EAFE29A8 != -1)
      {
        dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
      }
    }

    v64 = qword_1EAFE29B0;
    if (os_signpost_enabled(qword_1EAFE29B0))
    {
      v67 = objc_msgSend_identifier(*(a1 + 40), v65, v66);
      objc_msgSend_absoluteTimestamp(*(a1 + 40), v68, v69);
      v71 = v70;
      objc_msgSend_updateTimestamp(*(a1 + 40), v72, v73);
      v75 = v74;
      v78 = objc_msgSend_state(*(a1 + 40), v76, v77);
      v81 = objc_msgSend_response(*(a1 + 40), v79, v80);
      v84 = objc_msgSend_resolution(*(a1 + 40), v82, v83);
      v87 = objc_msgSend_sosState(*(a1 + 40), v85, v86);
      v185 = 68290819;
      v186 = 2082;
      v187 = "";
      v188 = 2050;
      v189 = v67;
      v190 = 2049;
      v191 = v71;
      v192 = 2049;
      v193 = v75;
      v194 = 2049;
      v195 = v78;
      v196 = 2049;
      v197 = v81;
      v198 = 2049;
      v199 = v84;
      v200 = 2049;
      v201 = v87;
      v88 = "CMAnomalyManager did not dispatch event - registered delegate was released";
      v89 = "{msg%{public}.0s:CMAnomalyManager did not dispatch event - registered delegate was released, identifier:%{public}llu, anomaly timestamp:%{private}f, update timestamp:%{private}f, state:%{private}ld, response:%{private}ld, resolution:%{private}ld, sosState:%{private}ld}";
LABEL_30:
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v88, v89, &v185, 0x58u);
    }
  }

LABEL_31:
  v184 = *MEMORY[0x1E69E9840];
}

void sub_19B6A0BDC(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE29A8 != -1)
    {
      dispatch_once(&qword_1EAFE29A8, &unk_1F0E28BC0);
    }

    v6 = qword_1EAFE29B0;
    if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_UTF8String(v5, v7, v8);
      v10 = getpid();
      v11 = *(a1 + 32);
      v13 = 68289795;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v9;
      v18 = 2050;
      v19 = v10;
      v20 = 2049;
      v21 = v11;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CMAnomalyManager client connection interrupt, path:%{public, location:escape_only}s, pid:%{public}llu, self:%{private}p}", &v13, 0x30u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B6A0DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6A15F8(uint64_t result, const char *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  if (*(v2 + 24))
  {
    v3 = result;
    v8[0] = @"kCLConnectionMessageSubscribeKey";
    v4 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *(v2 + 48));
    v8[1] = @"CMAnomalyDetectorEvent";
    v5 = *(v3 + 40);
    v9[0] = v4;
    v9[1] = v5;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v9, v8, 2);
    sub_19B6A2040();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6A1704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6A2010()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

void *sub_19B6A20B4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6A2110((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6A2110(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6A2168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6A2184(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a1);
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(v4, v7, v6, 0);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = objc_msgSend_reverseObjectEnumerator(v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v22;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = objc_msgSend_UTF8String(*(*(&v21 + 1) + 8 * v18), v14, v15);
      if (!(*(a2 + 16))(a2, v19))
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v21, v25, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6A22F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_onAudioAccessoryActivity_, result);
  }

  return result;
}

void sub_19B6A2674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6A268C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B6A285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6A3B08(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 48);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel__startAudioAccessoryDeviceMotionUpdatesPrivate_lowLatencyMode_withHandler_, *(a1 + 40));
}

uint64_t sub_19B6A6B1C(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3AE00);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3AE00);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMResampleAccessoryDeviceMotion::InputData>::operator[](const size_t) const [T = CMResampleAccessoryDeviceMotion::InputData]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[32 * (v4 - v5) + 4];
}

uint64_t sub_19B6A733C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *(a1 + 40));
  LODWORD(v5) = *(a1 + 44);
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v5);
  v9 = *(v3 + 16);

  return v9(v3, v4, v8);
}

uint64_t sub_19B6A7B60(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v5, *(a1 + 40));
  v7 = *(v3 + 16);

  return v7(v3, v4, v6);
}

os_log_t sub_19B6A7C00()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

os_log_t sub_19B6A7C30()
{
  result = os_log_create("com.apple.locationd.Motion", "InertialOdometry");
  qword_1EAFE2A90 = result;
  return result;
}

void sub_19B6A7C64(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7CAC(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7CF4(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7D3C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7D84(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7DCC(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7E14(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7E5C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7EA4(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6A7EE8(double *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 >= 0.0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = objc_msgSend_UTF8String(a2, v6, v7);
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] Metric %s: Calling start when we've already started.", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
      }

      objc_msgSend_UTF8String(a2, v9, v10);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMCoreAnalyticsUtil::AccumulatedEvent::start(const NSString *)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    v3 = mach_continuous_time();
    *a1 = sub_19B41E070(v3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B6A80D8(double *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 <= 0.0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = objc_msgSend_UTF8String(a2, v6, v7);
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] Metric %s: Calling stop when we haven't started.", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29840);
      }

      objc_msgSend_UTF8String(a2, v9, v10);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMCoreAnalyticsUtil::AccumulatedEvent::stop(const NSString *)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    v3 = mach_continuous_time();
    a1[1] = a1[1] + sub_19B41E070(v3) - *a1;
    *a1 = -1.0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6A82DC()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B6A83D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B6A8514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19B6A8534(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    if (objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage"))
    {
      v5 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage");
      v6 = MEMORY[0x1E696ABC0];
      v9 = objc_msgSend_integerValue(v5, v7, v8);
      v11 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v10, @"CMErrorDomain", v9, 0);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v12 = qword_1EAFE27C0;
      if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Failed with error %{public}@", buf, 0xCu);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2788 == -1)
        {
LABEL_20:
          v16 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager connect]_block_invoke", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }

          goto LABEL_22;
        }

LABEL_27:
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v14 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Failed with unknown internal error.", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B6A883C(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 40));
  v3 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v4, v3);
  if (ExecutablePathFromPid)
  {
    v8 = ExecutablePathFromPid;
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v9 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v19 = objc_msgSend_UTF8String(v8, v10, v11);
      v20 = 1026;
      v21 = getpid();
      v22 = 2050;
      v23 = Weak;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      objc_msgSend_UTF8String(v8, v13, v14);
      getpid();
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager connect]_block_invoke", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  if (*(*(a1 + 32) + 24) == 1 && Weak != 0)
  {
    objc_msgSend_startRetrocomputeStatusUpdates(Weak, v6, v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B6A8E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6A8E60(uint64_t a1, CLConnectionMessage **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    v10 = DictionaryOfClasses;
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
    if (v11)
    {
      v13 = v11;
      v14 = v11;
      v15 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B6A93A0;
      v30[3] = &unk_1E7534178;
      v30[4] = v13;
      v31 = *(a1 + 32);
    }

    else
    {
      v20 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CMVO2MaxRetrocomputeRecord");
      if (v20)
      {
        v21 = v20;
        v22 = v20;
        v15 = v27;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = sub_19B6A9654;
        v27[3] = &unk_1E7532B90;
        v23 = *(a1 + 32);
        v27[4] = v21;
        v27[5] = v23;
      }

      else
      {
        if (qword_1EAFE2788 != -1)
        {
          dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
        }

        v24 = qword_1EAFE27C0;
        if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Error in retrocomputeStatusWithHandler: Unable to parse query response", buf, 2u);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2788 != -1)
          {
            dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
          }

          v34 = 0;
          v26 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]_block_invoke", "CoreLocation: %s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }

        v15 = v28;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_19B6A95CC;
        v28[3] = &unk_1E7534150;
        v29 = *(a1 + 32);
      }
    }
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v16 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Response invalid for retrocomputeStatusWithHandler. Internal error occured.", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v34 = 0;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]_block_invoke", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v15 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6A9318;
    block[3] = &unk_1E7534150;
    v33 = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v15);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_19B6A9318(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, v4, 0, 0, v5);
  v6 = *(a1 + 32);
}

void sub_19B6A93A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"CMErrorDomain", v5, 0);
  if (qword_1EAFE2788 != -1)
  {
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
  }

  v8 = qword_1EAFE27C0;
  if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Received error for retrocomputeStatusWithHandler: %{public}@", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B6A95CC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, v4, 0, 0, v5);
  v6 = *(a1 + 32);
}

void sub_19B6A9654(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_status(*(a1 + 32), a2, a3);
  started = objc_msgSend_startDate(*(a1 + 32), v6, v7);
  v11 = objc_msgSend_endDate(*(a1 + 32), v9, v10);
  (*(v4 + 16))(v4, v5, started, v11, 0);

  v12 = *(a1 + 40);
}

void sub_19B6A9A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6A9A5C(uint64_t a1, CLConnectionMessage **a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    v10 = DictionaryOfClasses;
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
    if (v11)
    {
      v13 = v11;
      v14 = v11;
      v15 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B6A9F7C;
      v30[3] = &unk_1E7532B68;
      v16 = *(a1 + 32);
      v30[4] = v13;
      v30[5] = v16;
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"CMVO2MaxRetrocomputeRecord");
      if (v21)
      {
        v22 = v21;
        v23 = v21;
        v15 = v28;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_19B6AA20C;
        v28[3] = &unk_1E7532B90;
        v24 = *(a1 + 32);
        v28[4] = v22;
        v28[5] = v24;
      }

      else
      {
        if (qword_1EAFE2788 != -1)
        {
          dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
        }

        v25 = qword_1EAFE27C0;
        if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Error in retrocomputeStateWithHandler: Unable to parse query response", buf, 2u);
        }

        v26 = sub_19B420058();
        if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2788 != -1)
          {
            dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
          }

          v32 = 0;
          v27 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        v15 = v29;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_19B6AA19C;
        v29[3] = &unk_1E7532B40;
        v29[4] = *(a1 + 32);
      }
    }
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v17 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Response invalid for retrocomputeStateWithHandler. Internal error occured.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v32 = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v15 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6A9F0C;
    block[3] = &unk_1E7532B40;
    block[4] = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v15);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B6A9F0C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, 0, v4);
  v5 = *(a1 + 32);
}

void sub_19B6A9F7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"CMErrorDomain", v5, 0);
  if (qword_1EAFE2788 != -1)
  {
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
  }

  v8 = qword_1EAFE27C0;
  if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Received error for retrocomputeStateWithHandler: %{public}@", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B6AA19C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  (*(v3 + 16))(v3, 0, v4);
  v5 = *(a1 + 32);
}

void sub_19B6AA20C(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v3 = *(a1 + 40);
}

void sub_19B6AA4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6AA528(uint64_t a1, CLConnectionMessage **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    if (!objc_msgSend_objectForKeyedSubscript_(Dictionary, v4, @"CMErrorMessage"))
    {
      v12 = 0;
      goto LABEL_26;
    }

    v6 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v5, @"CMErrorMessage");
    v7 = MEMORY[0x1E696ABC0];
    v10 = objc_msgSend_integerValue(v6, v8, v9);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v11, @"CMErrorDomain", v10, 0);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v13 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Received error for triggerVO2MaxRetrocompute: %{public}@", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v22 = 138543362;
      v23 = v12;
LABEL_23:
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager triggerRetrocomputeWithHandler:]_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v15 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Response invalid for triggerVO2MaxRetrocompute.  Internal error occured.", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      LOWORD(v22) = 0;
      goto LABEL_23;
    }
  }

LABEL_26:
  v18 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6AA8C8;
  block[3] = &unk_1E7532B90;
  v19 = *(a1 + 32);
  block[4] = v12;
  block[5] = v19;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B6AA8C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19B6AACC8(uint64_t result)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    sub_19B428B50(&__p, "kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate");
    v4 = *(v1 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v6 < 0)
    {
      operator delete(__p);
    }

    v7 = @"kCLConnectionMessageSubscribeKey";
    v8[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v8, &v7, 1);
    sub_19B6ABA98();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6AAE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6AAE84(uint64_t a1, CLConnectionMessage **a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
  if (*a2)
  {
    v10 = DictionaryOfClasses == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v11 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Response invalid for retrocompute status update.  Internal error occured.", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_16;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

  v17 = DictionaryOfClasses;
  v18 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage");
  v20 = objc_msgSend_objectForKeyedSubscript_(v17, v19, @"CMVO2MaxRetrocomputeRecord");
  if (v18)
  {
    v23 = MEMORY[0x1E696ABC0];
    v24 = objc_msgSend_intValue(v18, v21, v22);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"CMErrorDomain", v24, 0);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v26 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = v16;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "Received error for retrocompute status update: %{public}@", buf, 0xCu);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager startRetrocomputeStatusUpdates]_block_invoke", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    objc_loadWeak((*(a1 + 32) + 32));
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (!v20)
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v35 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate message", buf, 2u);
    }

    v36 = sub_19B420058();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      goto LABEL_16;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 == -1)
    {
LABEL_14:
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager startRetrocomputeStatusUpdates]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }

LABEL_16:
      objc_loadWeak((*(a1 + 32) + 32));
      result = objc_opt_respondsToSelector();
      if ((result & 1) == 0)
      {
LABEL_32:
        v31 = *MEMORY[0x1E69E9840];
        return result;
      }

      v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v15, @"CMErrorDomain", 103, 0);
LABEL_31:
      Weak = objc_loadWeak((*(a1 + 32) + 32));
      result = objc_msgSend_vo2MaxRetrocomputeManager_updateFailedWithError_(Weak, v30, *(a1 + 32), v16);
      goto LABEL_32;
    }

LABEL_53:
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    goto LABEL_14;
  }

  objc_loadWeak((*(a1 + 32) + 32));
  result = objc_opt_respondsToSelector();
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

  v32 = objc_loadWeak((*(a1 + 32) + 32));
  v33 = *(a1 + 32);
  v34 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66B58](v32, sel_vo2MaxRetrocomputeManager_didUpdateState_, v33);
}

void sub_19B6AB77C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    sub_19B428B50(&__p, "kCLConnectionMessageVO2MaxRetrocomputeStatusUpdate");
    CLConnectionClient::setHandlerForMessage();
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (*(*(a1 + 32) + 24))
    {
      v7 = @"kCLConnectionMessageSubscribeKey";
      v8 = MEMORY[0x1E695E110];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, &v8, &v7, 1);
      sub_19B6ABA98();
    }

    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v3 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Error stopping retrocompute status updates, no active clients", &__p, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager stopRetrocomputeStatusUpdates]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != &__p)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B6ABA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6ABA68()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_1EAFE27C0 = result;
  return result;
}

void *sub_19B6ABB0C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6ABB68((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6ABB68(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6ABBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6ABD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B6ABD48(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE29F8 != -1)
  {
    dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
  }

  v14 = qword_1EAFE2A00;
  if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHealthTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B6ABF70(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE29F8 != -1)
    {
      dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
    }

    v6 = qword_1EAFE2A00;
    if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHealthTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6AC2B8(uint64_t result)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    if (*(result + 56))
    {
      v2 = [CMMotionTimeRange alloc];
      objc_msgSend_timeIntervalSinceReferenceDate(*(v1 + 40), v3, v4);
      v6 = v5;
      objc_msgSend_timeIntervalSinceReferenceDate(*(v1 + 48), v7, v8);
      started = objc_msgSend_initWithStartDate_endDate_(v2, v9, v10, v6, v11);
      v15 = @"CMTimeRangeKey";
      v16[0] = started;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v16, &v15, 1);

      operator new();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6AC48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B6AC4E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMMetMinutesArray");
    if (v16)
    {
      v19 = *(*(a1 + 32) + 24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B6AC90C;
      v29[3] = &unk_1E7532B90;
      v29[4] = v16;
      v29[5] = v5;
      v20 = v29;
    }

    else if (v18)
    {
      v22 = *(*(a1 + 32) + 24);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_19B6AC984;
      v28[3] = &unk_1E7532B90;
      v28[4] = v18;
      v28[5] = v5;
      v20 = v28;
      v19 = v22;
    }

    else
    {
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
      }

      v23 = qword_1EAFE2A00;
      if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "METMinutes,Unable to parse query response", buf, 2u);
      }

      v24 = sub_19B420058();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE29F8 != -1)
        {
          dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
        }

        v27 = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHealthTrackerInternal _queryMetMinutesFromDate:toDate:handler:]_block_invoke", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = *(*(a1 + 32) + 24);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B6AC99C;
      v26[3] = &unk_1E7532B40;
      v26[4] = v5;
      v20 = v26;
    }
  }

  else
  {
    v19 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6AC8A8;
    block[3] = &unk_1E7532B40;
    block[4] = v5;
    v20 = block;
  }

  dispatch_async(v19, v20);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6AC8A8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6AC90C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6AC99C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void *sub_19B6ACA78(void *result, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(result[4] + 8) && result[6])
  {
    v2 = result[5];
    if (v2)
    {
      v8 = @"CMVO2MaxInputsRecord";
      v9 = v2;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v9, &v8, 1);
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      v3 = [CMVO2MaxInputs alloc];
      v13 = 0xFFEFFFFFFFFFFFFFLL;
      v14 = 0;
      v15 = 0xFFEFFFFFFFFFFFFFLL;
      v5 = objc_msgSend_initWithSample_(v3, v4, v12);
      v10 = @"CMVO2MaxInputsRecord";
      v11 = v5;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &v11, &v10, 1);
    }

    sub_19B6AD504();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6ACC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6ACC68(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMVO2MaxInputsArray");
    if (v16)
    {
      v19 = *(*(a1 + 32) + 24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B6AD094;
      v29[3] = &unk_1E7532B90;
      v29[4] = v16;
      v29[5] = v5;
      v20 = v29;
    }

    else if (v18)
    {
      v22 = *(*(a1 + 32) + 24);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_19B6AD10C;
      v28[3] = &unk_1E7532B90;
      v28[4] = v18;
      v28[5] = v5;
      v20 = v28;
      v19 = v22;
    }

    else
    {
      if (qword_1EAFE29F8 != -1)
      {
        dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
      }

      v23 = qword_1EAFE2A00;
      if (os_log_type_enabled(qword_1EAFE2A00, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "VO2MaxData,Unable to parse query response", buf, 2u);
      }

      v24 = sub_19B420058();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE29F8 != -1)
        {
          dispatch_once(&qword_1EAFE29F8, &unk_1F0E3AE20);
        }

        v27 = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHealthTrackerInternal _queryVO2MaxInputsFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = *(*(a1 + 32) + 24);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B6AD124;
      v26[3] = &unk_1E7532B40;
      v26[4] = v5;
      v20 = v26;
    }
  }

  else
  {
    v19 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6AD030;
    block[3] = &unk_1E7532B40;
    block[4] = v5;
    v20 = block;
  }

  dispatch_async(v19, v20);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6AD030(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6AD094(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6AD124(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

os_log_t sub_19B6AD4D4()
{
  result = os_log_create("com.apple.locationd.Motion", "Health");
  qword_1EAFE2A00 = result;
  return result;
}

void *sub_19B6AD578(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6AD5D4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6AD5D4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6AD62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6AD648(uint64_t a1)
{
  *a1 = xmmword_19B7B7E30;
  sub_19B41E130(a1, xmmword_19B7B7E30);
  *(a1 + 16) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 16), xmmword_19B7B7E30);
  *(a1 + 84) = xmmword_19B7BBC00;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  sub_19B41E130((a1 + 84), xmmword_19B7BBC00);
  v2 = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1065749138;
  *(a1 + 136) = 1065353216;
  *(a1 + 116) = 1;
  *(a1 + 120) = xmmword_19B7BBC10;
  *(a1 + 140) = 1;
  do
  {
    v3 = *(a1 + 136);
    *sub_19B6AFB9C(a1 + 160, v2) = v3;
    v4 = *(a1 + 120) + (v2 * 1.5708);
    *sub_19B6AFB9C(a1 + 144, v2++) = v4;
  }

  while (v2 != 4);
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0;
  if ((atomic_load_explicit(&qword_1ED71D380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D380))
  {
    xmmword_1ED71D3E0 = xmmword_19B7BBC20;
    __cxa_guard_release(&qword_1ED71D380);
  }

  v5 = 0;
  while (sub_19B5BDB18(&xmmword_1ED71D3E0, v5) >= *(a1 + 120) && sub_19B5BDB18(&xmmword_1ED71D3E0, v5) <= *(a1 + 124))
  {
    if (++v5 == 4)
    {
      v6 = 1;
      while (1)
      {
        v7 = *sub_19B6AFB9C(a1 + 144, v6);
        v8 = v6 - 1;
        if (v7 < (*sub_19B6AFB9C(a1 + 144, v8) + 0.000001))
        {
          goto LABEL_12;
        }

        v6 = v8 + 2;
        if (v6 == 4)
        {
          *(a1 + 144) = xmmword_1ED71D3E0;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_12:
  if ((atomic_load_explicit(&qword_1ED71D388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D388))
  {
    xmmword_1ED71D3F0 = xmmword_19B7BBC30;
    __cxa_guard_release(&qword_1ED71D388);
  }

  if (*&xmmword_1ED71D3F0 >= *(a1 + 128))
  {
    v9 = 1;
    while (sub_19B5BDB18(&xmmword_1ED71D3F0, v9 - 1) <= *(a1 + 132))
    {
      if (v9 == 4)
      {
        *(a1 + 160) = xmmword_1ED71D3F0;
        return a1;
      }

      v10 = sub_19B5BDB18(&xmmword_1ED71D3F0, v9++);
      if (v10 < *(a1 + 128))
      {
        return a1;
      }
    }
  }

  return a1;
}

void sub_19B6AD8EC(uint64_t a1, float *a2)
{
  v4 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  if (fabsf(sqrtf(v5) + -1.0) <= 0.000001)
  {
    *(a1 + 56) = sub_19B66C1A4((a1 + 84), *a2, a2[1], a2[2]);
    *(a1 + 60) = v12;
    *(a1 + 64) = v13;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      *buf = 134349568;
      v19 = v7;
      v20 = 2050;
      v21 = v8;
      v22 = 2050;
      v23 = v9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CMPerceptualFilter] Gravity vector must be unity norm. gravity.x,%{public}f,.y,%{public}f,.z,%{public}f", buf, 0x20u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::feedGravity(const CMVector3d &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B6ADB58(uint64_t a1, float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v194 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  v153[0] = *a1;
  v153[1] = v8;
  v154 = *(a1 + 32);
  v155 = *(a1 + 48);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  v9 = sub_19B66C1A4((a1 + 84), *a2, a2[1], a2[2]);
  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + (a2[v12] * a2[v12]);
    ++v12;
  }

  while (v12 != 3);
  v14 = sqrtf(v13);
  if (v14 < 0.001)
  {
    if (*(a1 + 116) == 1)
    {
      *(a1 + 116) = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v15 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Error -- cannot set listener orientation using boresight vector at 0 distance.", buf, 2u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
        }

        LOWORD(v161) = 0;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    sub_19B690DB4(a1, 0);
    goto LABEL_148;
  }

  *(a1 + 116) = 1;
  v18 = v9 / v14;
  v19 = v10 / v14;
  v151 = v9 / v14;
  *v152.i32 = v10 / v14;
  v20 = v11 / v14;
  *&v152.i32[1] = v11 / v14;
  if (*(a1 + 100) == 1)
  {
    v21.f32[0] = sub_19B6AF0CC(&v151);
    *buf = v21.i32[0];
    *&buf[4] = v22;
    *&buf[8] = v23;
    *v179 = v24;
    if ((*(a1 + 188) & 1) == 0)
    {
      v159.i32[0] = sub_19B66C1A4(buf, *(a1 + 68), *(a1 + 72), *(a1 + 76));
      *(v159.i64 + 4) = __PAIR64__(v26, v25);
      v27 = *(a1 + 56);
      v28 = *(a1 + 60);
      v29 = *(a1 + 64);
      v30 = ((v20 * v29) + (v28 * v19)) + (v27 * v18);
      v156.f32[0] = v27 - (v18 * v30);
      v156.f32[1] = v28 - (v19 * v30);
      v156.f32[2] = v29 - (v20 * v30);
      sub_19B6AF264(a1, v156.f32, v159.f32, &v151);
      v161 = v31.i32[0];
      v162 = COERCE_DOUBLE(__PAIR64__(v33, v32));
      *v163 = v34;
      v21.f32[0] = sub_19B66BF70(&v161, buf, v31);
    }

    goto LABEL_47;
  }

  v159.i32[0] = sub_19B6AF0CC(&v151);
  *(v159.i64 + 4) = __PAIR64__(v36, v35);
  v159.i32[3] = v37;
  if ((atomic_load_explicit(&qword_1ED71D398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D398))
  {
    qword_1ED71D3B8 = 0x3F80000000000000;
    dword_1ED71D3C0 = 0;
    __cxa_guard_release(&qword_1ED71D398);
  }

  if ((atomic_load_explicit(&qword_1ED71D3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D3A0))
  {
    qword_1ED71D3C8 = 0;
    dword_1ED71D3D0 = 1065353216;
    __cxa_guard_release(&qword_1ED71D3A0);
  }

  v147 = sub_19B66C1A4(v159.f32, *&qword_1ED71D3B8, *(&qword_1ED71D3B8 + 1), *&dword_1ED71D3C0);
  v148 = v38;
  v149 = v39;
  v40.i32[0] = vdup_lane_s32(*(&qword_1ED71D3C8 + 4), 1).u32[0];
  v40.i32[1] = qword_1ED71D3C8;
  v41.i32[0] = vdup_lane_s32(v152, 1).u32[0];
  v41.f32[1] = v151;
  v157 = vmla_f32(vmul_f32(v152, vneg_f32(v40)), v41, *(&qword_1ED71D3C8 + 4));
  v158 = (*&qword_1ED71D3C8 * *v152.i32) - (*(&qword_1ED71D3C8 + 1) * v151);
  sub_19B6AF264(a1, &v157, &v147, &v151);
  v156.i64[0] = __PAIR64__(v43, v42.u32[0]);
  v156.i64[1] = __PAIR64__(v45, v44);
  v161 = sub_19B66BF70(&v156, v159.f32, v42);
  v162 = COERCE_DOUBLE(__PAIR64__(v47, v46));
  *v163 = v48;
  if (*(a1 + 100) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v49 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_ERROR, "[PerceptualFilter] already initialized, should not be calling initializeAmbienceBedGravity", buf, 2u);
    }

    v50 = sub_19B420058();
    if ((*(v50 + 160) & 0x80000000) != 0 && (*(v50 + 164) & 0x80000000) != 0 && (*(v50 + 168) & 0x80000000) != 0 && !*(v50 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 == -1)
    {
      goto LABEL_43;
    }

LABEL_169:
    dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
LABEL_43:
    v160 = 0;
    v56 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v56);
LABEL_44:
    if (v56 != buf)
    {
      free(v56);
    }

    goto LABEL_46;
  }

  v51 = 0;
  v52 = a1 + 68;
  v53 = 0.0;
  do
  {
    v53 = v53 + (*(v52 + v51) * *(v52 + v51));
    v51 += 4;
  }

  while (v51 != 12);
  if (sqrtf(v53) != 0.0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v54 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_ERROR, "[PerceptualFilter] fAmbienceBedGravity has already been set, cannot re-initialize ambience bed gravity direction.", buf, 2u);
    }

    v55 = sub_19B420058();
    if ((*(v55 + 160) & 0x80000000) != 0 && (*(v55 + 164) & 0x80000000) != 0 && (*(v55 + 168) & 0x80000000) != 0 && !*(v55 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

  v74 = 0;
  v75 = *(a1 + 184);
  v21.i64[0] = 0;
  do
  {
    v21.f32[0] = v21.f32[0] + (*(a1 + 56 + v74) * *(a1 + 56 + v74));
    v74 += 4;
  }

  while (v74 != 12);
  v21.f32[0] = sqrtf(v21.f32[0]);
  if (v21.f32[0] < 0.000001)
  {
    *(a1 + 184) = 0;
    if (!v75)
    {
      goto LABEL_46;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v76 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v76, OS_LOG_TYPE_ERROR, "[PerceptualFilter] Accessory gravity has not been set.", buf, 2u);
    }

    v77 = sub_19B420058();
    if ((*(v77 + 160) & 0x80000000) != 0 && (*(v77 + 164) & 0x80000000) != 0 && (*(v77 + 168) & 0x80000000) != 0 && !*(v77 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

  *(a1 + 184) = 1;
  if (v75 != 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v88 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v88, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Accessory gravity is available", buf, 2u);
    }

    v89 = sub_19B420058();
    if (*(v89 + 160) > 1 || *(v89 + 164) > 1 || *(v89 + 168) > 1 || *(v89 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v160 = 0;
      v90 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v90);
      if (v90 != buf)
      {
        free(v90);
      }
    }
  }

  *buf = sub_19B66BFF4(&v161, v21);
  *&buf[4] = v91;
  *&buf[8] = v92;
  *v179 = v93;
  sub_19B66C1A4(buf, *(a1 + 56), *(a1 + 60), *(a1 + 64));
  v96 = 0;
  *(a1 + 72) = v94;
  *(a1 + 76) = v95;
  v21.i64[0] = 0;
  *(a1 + 68) = 0;
  do
  {
    v21.f32[0] = v21.f32[0] + (*(v52 + v96) * *(v52 + v96));
    v96 += 4;
  }

  while (v96 != 12);
  if (sqrtf(v21.f32[0]) >= 0.087156)
  {
    v140 = 0;
    v21.i64[0] = 0;
    do
    {
      v21.f32[0] = v21.f32[0] + (*(v52 + v140) * *(v52 + v140));
      v140 += 4;
    }

    while (v140 != 12);
    v141 = sqrtf(v21.f32[0]);
    *(a1 + 68) = 0.0 / v141;
    *(a1 + 72) = v94 / v141;
    *(a1 + 76) = v95 / v141;
    *(a1 + 100) = 1;
    if (*(a1 + 108))
    {
      goto LABEL_46;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v142 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v142, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Initialized ambience bed orientation with fixed gravity direction", buf, 2u);
    }

    v143 = sub_19B420058();
    if (*(v143 + 160) <= 1 && *(v143 + 164) <= 1 && *(v143 + 168) <= 1 && !*(v143 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v160 = 0;
    v56 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::initializeAmbienceBedGravity(const CMOQuaternion &)", "CoreLocation: %s\n", v56);
    goto LABEL_44;
  }

  *(a1 + 72) = 0;
LABEL_46:
  v21.i32[0] = v161;
  v23 = HIDWORD(v162);
  v22 = LODWORD(v162);
  v24 = *v163;
LABEL_47:
  v159.i64[0] = __PAIR64__(v22, v21.u32[0]);
  v159.i64[1] = __PAIR64__(v24, v23);
  v57.f32[0] = sub_19B66BFF4(v153, v21);
  *buf = v57.i32[0];
  *&buf[4] = v58;
  *&buf[8] = v59;
  *v179 = v60;
  v156.i32[0] = sub_19B66BF70(&v159, buf, v57);
  *(v156.i64 + 4) = __PAIR64__(v62, v61);
  v156.i32[3] = v63;
  v65 = sub_19B66C31C(&v156);
  v67 = v66;
  v68 = 0;
  v157 = __PAIR64__(v64, LODWORD(v65));
  v158 = v66;
  v69.i64[0] = 0;
  do
  {
    v69.f32[0] = v69.f32[0] + (*(&v157 + v68) * *(&v157 + v68));
    v68 += 4;
  }

  while (v68 != 12);
  v69.f32[0] = sqrtf(v69.f32[0]);
  v146 = v69;
  if (v155 == 1)
  {
    v144 = v64;
    v145 = v65;
    v70 = 0.0436332311;
    if (v69.f32[0] > 0.017453)
    {
      v71 = *(a1 + 108);
      if ((v71 & 1) != 0 || *(a1 + 110) == 1)
      {
        if (v71 == *(a1 + 109))
        {
          if (*(a1 + 110) == 1)
          {
            if (*(a1 + 111) == 1)
            {
              v72 = *(a1 + 180);
            }

            else
            {
              *(a1 + 180) = 0;
              v72 = 0.0;
            }

            if (v69.f32[0] > v72)
            {
              sub_19B6AEF90(a1 + 120, v69.f32[0]);
              v97 = 0.1;
              if (v98 >= 0.1)
              {
                sub_19B6AEF90(a1 + 120, v146.f32[0]);
                v97 = v99;
              }

              *(a1 + 112) = v146.f32[0] / v97;
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
              }

              v100 = off_1EAFE29A0;
              v101 = v97;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
              {
                v102 = *(a1 + 112);
                v103 = *(a1 + 176);
                *buf = 134218752;
                *&buf[4] = v146.f32[0];
                *v179 = 2048;
                *&v179[2] = v101;
                v180 = 2048;
                v181 = v102;
                v182 = 2048;
                v183 = v103;
                _os_log_impl(&dword_19B41C000, v100, OS_LOG_TYPE_DEFAULT, "[PerceptualFilterAnchor] thetaNormRad %.3f, sweepDurationS, %.3f, fPerceptualAngularVelocityRps, %.3f, fLastAuxYawRateRps, %.3f", buf, 0x2Au);
              }

              v104 = sub_19B420058();
              if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
                }

                v105 = *(a1 + 112);
                v106 = *(a1 + 176);
                v161 = 134218752;
                v162 = v146.f32[0];
                *v163 = 2048;
                *&v163[2] = v101;
                v164 = 2048;
                v165 = v105;
                v166 = 2048;
                v167 = v106;
                v107 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v107);
                if (v107 != buf)
                {
                  free(v107);
                }
              }

              v69 = v146;
              *(a1 + 180) = v146.i32[0];
            }
          }
        }

        else
        {
          sub_19B6AEF90(a1 + 120, v69.f32[0]);
          v79 = v78;
          v80 = 0.1;
          if (v79 >= 0.1)
          {
            sub_19B6AEF90(a1 + 120, v146.f32[0]);
          }

          *(a1 + 112) = v146.f32[0] / v80;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
          }

          v81 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v82 = *(a1 + 112);
            v83 = *(a1 + 176);
            *buf = 134218496;
            *&buf[4] = v146.f32[0];
            *v179 = 2048;
            *&v179[2] = v82;
            v180 = 2048;
            v181 = v83;
            _os_log_impl(&dword_19B41C000, v81, OS_LOG_TYPE_DEFAULT, "[PerceptualFilterBTZ] thetaNormRad %.3f, fPerceptualAngularVelocityRps, %.3f, fLastAuxYawRateRps, %.3f", buf, 0x20u);
          }

          v84 = sub_19B420058();
          v69 = v146;
          if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
            }

            v85 = *(a1 + 112);
            v86 = *(a1 + 176);
            v161 = 134218496;
            v162 = v146.f32[0];
            *v163 = 2048;
            *&v163[2] = v85;
            v164 = 2048;
            v165 = v86;
            v87 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v87);
            if (v87 != buf)
            {
              free(v87);
            }

            v69 = v146;
          }
        }

        v108 = *(a1 + 176);
        if (*(a1 + 112) > v108)
        {
          v108 = *(a1 + 112);
        }

        v70 = v108 * 0.00499999989;
      }
    }

    v109 = v69.f32[0];
    if (v69.f32[0] >= 0.000001)
    {
      if (v70 <= v109)
      {
        v110 = v70;
        v111 = v110;
      }

      else
      {
        v111 = v69.f32[0];
      }

      *buf = vdiv_f32(vmul_n_f32(__PAIR64__(v144, LODWORD(v145)), v111), vdup_lane_s32(*v69.f32, 0));
      *&buf[8] = (v67 * v111) / v69.f32[0];
      *v69.i64 = sub_19B66C264(&v156, buf);
    }

    else
    {
      v156.i64[0] = 0;
      v156.i64[1] = 0x3F80000000000000;
    }

    *a1 = sub_19B66BF70(&v156, v153, v69);
    *(a1 + 4) = v112;
    *(a1 + 8) = v113;
    *(a1 + 12) = v114;
    v73 = v146;
    if (v146.f32[0] >= 0.017453)
    {
      if (*(a1 + 108) & 1) != 0 || (*(a1 + 110))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
        }

        v115 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v116 = *(a1 + 32);
          v117 = *(a1 + 108);
          v118 = *(a1 + 110);
          *buf = 134220032;
          *&buf[4] = v116;
          *v179 = 2048;
          *&v179[2] = v154;
          v180 = 2048;
          v181 = v156.f32[0];
          v182 = 2048;
          v183 = v156.f32[1];
          v184 = 2048;
          v185 = v156.f32[2];
          v186 = 2048;
          v187 = v156.f32[3];
          v188 = 2048;
          v189 = v109;
          v190 = 1024;
          v191 = v117;
          v192 = 1024;
          v193 = v118;
          _os_log_impl(&dword_19B41C000, v115, OS_LOG_TYPE_DEBUG, "[PerceptualFilter] currTimestamp %llu, prevTimestamp, %llu, dq [%.3f, %.3f, %.3f, %.3f], dthetaNorm, %.3f, inBTZ, %d, inAnchorConvergence, %d", buf, 0x54u);
        }

        v119 = sub_19B420058();
        if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
          }

          v120 = *(a1 + 32);
          v121 = *(a1 + 108);
          v122 = *(a1 + 110);
          v161 = 134220032;
          v162 = v120;
          *v163 = 2048;
          *&v163[2] = v154;
          v164 = 2048;
          v165 = v156.f32[0];
          v166 = 2048;
          v167 = v156.f32[1];
          v168 = 2048;
          v169 = v156.f32[2];
          v170 = 2048;
          v171 = v156.f32[3];
          v172 = 2048;
          v173 = v109;
          v174 = 1024;
          v175 = v121;
          v176 = 1024;
          v177 = v122;
          v123 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::feed(const CMVector3d &, const CMOQuaternion &, uint64_t, uint64_t)", "CoreLocation: %s\n", v123);
          if (v123 != buf)
          {
            free(v123);
          }
        }
      }
    }

    else
    {
      *(a1 + 108) = 0;
      *(a1 + 110) = 0;
    }
  }

  else
  {
    v73 = v159;
    *a1 = v159;
    *(a1 + 108) = 0;
  }

  v124.f32[0] = sub_19B66BF70(a1 + 84, a3, v73);
  v161 = v124.i32[0];
  v162 = COERCE_DOUBLE(__PAIR64__(v126, v125));
  *v163 = v127;
  v128.f32[0] = sub_19B66BFF4((a1 + 84), v124);
  v147 = v128.f32[0];
  v148 = v129;
  v149 = v130;
  v150 = v131;
  v132.f32[0] = sub_19B66BF70(&v161, &v147, v128);
  *buf = v132.i32[0];
  *&buf[4] = v133;
  *&buf[8] = v134;
  *v179 = v135;
  *(a1 + 16) = sub_19B66BF70(buf, a1, v132);
  *(a1 + 20) = v136;
  *(a1 + 24) = v137;
  *(a1 + 28) = v138;
  *(a1 + 48) = 1;
  *(a1 + 49) = v146.f32[0] >= 0.0017453;
  *(a1 + 109) = *(a1 + 108);
  *(a1 + 111) = *(a1 + 110);
LABEL_148:
  v139 = *MEMORY[0x1E69E9840];
}

void sub_19B6AEF90(uint64_t a1, float a2)
{
  if ((*(a1 + 20) & 1) != 0 && *a1 <= a2 && *(a1 + 4) >= a2)
  {
    v5 = *(a1 + 24);
    if (v5 <= a2)
    {
      v7 = -1;
      while (v7 != 2)
      {
        v8 = sub_19B5BDB18(a1 + 24, v7 + 2);
        ++v7;
        if (v8 > a2)
        {
          sub_19B5BDB18(a1 + 40, v7 + 1);
          sub_19B5BDB18(a1 + 40, v7);
          sub_19B5BDB18(a1 + 24, v7 + 1);
          sub_19B5BDB18(a1 + 24, v7);
          sub_19B5BDB18(a1 + 24, v7);
          sub_19B5BDB18(a1 + 40, v7);
          return;
        }
      }

      v9 = *(a1 + 52) + (((*(a1 + 52) - *(a1 + 48)) / (*(a1 + 36) - *(a1 + 32))) * (a2 - *(a1 + 36)));
    }

    else
    {
      v6 = *(a1 + 40) + (((*(a1 + 44) - *(a1 + 40)) / (*(a1 + 28) - v5)) * (a2 - v5));
    }
  }

  else
  {
    v4 = *(a1 + 16);
  }
}

float32_t sub_19B6AF0CC(float *a1)
{
  if ((atomic_load_explicit(&qword_1ED71D390, memory_order_acquire) & 1) == 0)
  {
    v16 = a1;
    v17 = __cxa_guard_acquire(&qword_1ED71D390);
    a1 = v16;
    if (v17)
    {
      qword_1ED71D3A8 = 1065353216;
      dword_1ED71D3B0 = 0;
      __cxa_guard_release(&qword_1ED71D390);
      a1 = v16;
    }
  }

  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = ((v3 * *&dword_1ED71D3B0) + (v2 * *(&qword_1ED71D3A8 + 1))) + (*a1 * *&qword_1ED71D3A8);
  v5 = 1.0;
  if (v4 < 1.0)
  {
    v5 = -1.0;
    if (v4 > -1.0)
    {
      v5 = ((v3 * *&dword_1ED71D3B0) + (v2 * *(&qword_1ED71D3A8 + 1))) + (*a1 * *&qword_1ED71D3A8);
    }
  }

  v6 = 0;
  v7 = (v2 * *&dword_1ED71D3B0) - (v3 * *(&qword_1ED71D3A8 + 1));
  v8 = (v3 * *&qword_1ED71D3A8) - (v1 * *&dword_1ED71D3B0);
  v9 = (v1 * *(&qword_1ED71D3A8 + 1)) - (v2 * *&qword_1ED71D3A8);
  *&v19 = v7;
  *(&v19 + 1) = v8;
  v20 = v9;
  v10 = 0.0;
  do
  {
    v10 = v10 + (*(&v19 + v6) * *(&v19 + v6));
    v6 += 4;
  }

  while (v6 != 12);
  if (sqrtf(v10) < 0.000001)
  {
    v19 = 0x3F80000000000000;
    v20 = 0.0;
    v8 = 1.0;
    v9 = 0.0;
    v7 = 0.0;
  }

  v11 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + (*(&v19 + v11) * *(&v19 + v11));
    v11 += 4;
  }

  while (v11 != 12);
  v13 = acosf(v5);
  v14 = sqrtf(v12);
  v18[0] = v13 * (v7 / v14);
  v18[1] = v13 * (v8 / v14);
  v18[2] = v13 * (v9 / v14);
  sub_19B66C264(&v21, v18);
  return v21.f32[0];
}

void sub_19B6AF264(uint64_t a1, float *a2, float *a3, float32x2_t *a4)
{
  v8 = 0;
  v70 = *MEMORY[0x1E69E9840];
  v9 = a4->f32[1];
  v10 = a4[1].f32[0];
  v11 = ((a2[2] * v10) + (a2[1] * v9)) + (*a2 * a4->f32[0]);
  v12 = ((v10 * a3[2]) + (a3[1] * v9)) + (*a3 * a4->f32[0]);
  v13 = *(a1 + 80);
  v14 = 0.0;
  do
  {
    v14 = v14 + (a2[v8] * a2[v8]);
    ++v8;
  }

  while (v8 != 3);
  if (sqrtf(v14) >= 0.087156)
  {
    v16 = 0;
    v17 = 0.0;
    do
    {
      v17 = v17 + (a3[v16] * a3[v16]);
      ++v16;
    }

    while (v16 != 3);
    v15 = sqrtf(v17) < 0.087156;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 80) = v15;
  if ((v13 & 1) == 0 && v15)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Entering ambience bed constraints singularity", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v65.i16[0] = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMAudioPerceptualFilter::rollAboutBoresightToAlignVectors(const CMVector3d &, const CMVector3d &, const CMVector3d &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v21 = v11;
  if (v13 && (*(a1 + 80) & 1) == 0)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v22 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Exiting ambience bed constraints singularity", buf, 2u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v65.i16[0] = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMOQuaternion CMAudioPerceptualFilter::rollAboutBoresightToAlignVectors(const CMVector3d &, const CMVector3d &, const CMVector3d &)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  if (v21 >= 0.001 || v12 >= 0.001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v43 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_ERROR, "[PerceptualFilter] Vectors to align are not perpendicular to boresight vector", buf, 2u);
    }

    v44 = sub_19B420058();
    if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
      }

      v65.i16[0] = 0;
      v45 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion CMAudioPerceptualFilter::rollAboutBoresightToAlignVectors(const CMVector3d &, const CMVector3d &, const CMVector3d &)", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    v46 = *(a1 + 104);
    v25 = (a1 + 104);
    v27 = v46;
    *buf = *a4;
    v69 = a4[1].f32[0];
  }

  else
  {
    v26 = *(a1 + 104);
    v25 = (a1 + 104);
    v27 = v26;
    *buf = *a4;
    v69 = a4[1].f32[0];
    if ((*(v25 - 6) & 1) == 0)
    {
      v28 = 0;
      v29 = 0.0;
      do
      {
        v29 = v29 + (a2[v28] * a2[v28]);
        ++v28;
      }

      while (v28 != 3);
      v30 = 0;
      v31 = 0.0;
      do
      {
        v31 = v31 + (a3[v30] * a3[v30]);
        ++v30;
      }

      while (v30 != 3);
      v32 = sqrtf(v29);
      v33 = a2[1] / v32;
      v34 = *a2 / v32;
      v35 = a2[2] / v32;
      v36 = sqrtf(v31);
      v37 = a3[1] / v36;
      v38 = a3[2] / v36;
      v39 = (v35 * v38) + (v33 * v37);
      v40 = *a3 / v36;
      v41 = v39 + (v34 * v40);
      v42 = 1.0;
      if (v41 < 1.0)
      {
        v42 = -1.0;
        if (v41 > -1.0)
        {
          v42 = v39 + (v34 * v40);
        }
      }

      v27 = acosf(v42);
      *buf = (v33 * v38) - (v35 * v37);
      *&buf[4] = (v35 * v40) - (v34 * v38);
      v69 = (v34 * v37) - (v33 * v40);
    }
  }

  v47 = 0;
  v48 = 0.0;
  do
  {
    v48 = v48 + (*&buf[v47] * *&buf[v47]);
    v47 += 4;
  }

  while (v47 != 12);
  v49 = sqrtf(v48);
  v50 = 0.0;
  if (v49 >= 0.000001)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      *v52.i32 = *v52.i32 + (*&buf[v51] * *&buf[v51]);
      v51 += 4;
    }

    while (v51 != 12);
    v53 = 0;
    *v52.i32 = sqrtf(*v52.i32);
    v54 = v69 / *v52.i32;
    v55 = vdiv_f32(*buf, vdup_lane_s32(v52, 0));
    v56 = *a4;
    v57 = a4[1].f32[0];
    v65 = vsub_f32(vneg_f32(v55), *a4);
    v66 = -(v69 / *v52.i32) - v57;
    v58 = 0.0;
    do
    {
      v58 = v58 + (v65.f32[v53] * v65.f32[v53]);
      ++v53;
    }

    while (v53 != 3);
    v59 = 0;
    v63 = vsub_f32(v55, v56);
    v64 = v54 - v57;
    v60 = 0.0;
    do
    {
      v60 = v60 + (v63.f32[v59] * v63.f32[v59]);
      ++v59;
    }

    while (v59 != 3);
    if (sqrtf(v58) >= sqrtf(v60))
    {
      v50 = v27;
    }

    else
    {
      v50 = -v27;
    }
  }

  *v25 = v50;
  v61 = v50 * a4[1].f32[0];
  v65 = vmul_n_f32(*a4, v50);
  v66 = v61;
  sub_19B66C264(&v67, &v65);
  v62 = *MEMORY[0x1E69E9840];
}

void sub_19B6AF9C0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 188) = 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[PerceptualFilter] Bypassing ambience bed alignment. This should only be used for E2E latency testing.", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298A0);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAudioPerceptualFilter::enableBypassAmbienceBedForE2ELatencyTesting()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6AFB6C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B6AFB9C(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E283E0);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 4;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E283E0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 4>::operator[](const size_t) [T = float, N = 4]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

uint64_t sub_19B6AFD94(uint64_t a1, double a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = 0x1000000000;
  *(a1 + 144) = 0x1000000000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMResampleIMUData] Constructed CMResampleIMUData. Set output sample period to: %.4f s", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMResampleIMUData::CMResampleIMUData(const double)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (a2 < 0.005 || a2 > 0.05)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[CMResampleIMUData] Invalid output sample period: %.4f s", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMResampleIMUData::CMResampleIMUData(const double)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B6B00F0(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = 0;
  v80 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1 >= 0.005 && v5 <= 0.05)
  {
    v6 = a2;
    v7 = a3 * 0.000001;
    if (*(a1 + 10))
    {
      v8 = a1 + 16;
      v9 = *(a1 + 8);
      v10 = *(a1 + 10) + v9 - 1;
      v11 = *(a1 + 12);
      if (v10 >= v11)
      {
        v12 = *(a1 + 12);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v8 + 8 * (v10 - v12));
      if (v7 <= v13)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
        }

        v19 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 8);
          v21 = *(v8 + 8 * v20);
          v22 = v20 + *(a1 + 10) - 1;
          v23 = *(a1 + 12);
          if (v22 < v23)
          {
            v23 = 0;
          }

          v24 = *(v8 + 8 * (v22 - v23));
          *buf = 134218496;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = v21;
          *&buf[22] = 2048;
          *&buf[24] = v24;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[feedIMUData] Invalid backwards or repeated timestamp, rejecting input. Input timestamp: %.4f s, buffer front: %.4f s, buffer back: %.4f s", buf, 0x20u);
        }

        v25 = sub_19B420058();
        if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
          }

          v26 = *(a1 + 8);
          v27 = *(v8 + 8 * v26);
          v28 = v26 + *(a1 + 10) - 1;
          v29 = *(a1 + 12);
          if (v28 < v29)
          {
            v29 = 0;
          }

          v74 = *(v8 + 8 * (v28 - v29));
          v30 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleIMUData::feedIMUData(const CMRelDM::IMUData &, const uint64_t)", "CoreLocation: %s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }
      }

      else
      {
        v14 = *(v8 + 8 * v9);
        if (v7 - v14 > 0.1)
        {
          *(a1 + 144) = 0;
          v15 = (a1 + 144);
          *(a1 + 8) = 0;
          *(a1 + 16) = v7;
          if (v11)
          {
            *(a1 + 10) = 1;
          }

          else
          {
            *(a1 + 8) = 1;
          }

LABEL_55:
          sub_19B6B0958(v15, a2);
          result = 1;
          goto LABEL_67;
        }

        if (v7 - v14 >= v5)
        {
          v47 = v5 + v14;
          v48 = v5 + v14 - v13;
          if (v48 >= 0.001)
          {
            v55 = v48 / (v7 - v13);
            if (v55 < 0.0 || v55 > 1.0)
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28780);
              }

              v68 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_FAULT, "Assertion failed: interpolationRatio >= 0 && interpolationRatio <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/DeviceMotion/RelativeDeviceMotion/CMResampleIMUData.cpp, line 157,Invalid interpolationRatio..", buf, 2u);
              }

              v69 = sub_19B420058();
              if ((*(v69 + 160) & 0x80000000) == 0 || (*(v69 + 164) & 0x80000000) == 0 || (*(v69 + 168) & 0x80000000) == 0 || *(v69 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E28780);
                }

                v70 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CMResampleIMUData::interpolate(const CMRelDM::IMUData &, double)", "CoreLocation: %s\n", v70);
                if (v70 != buf)
                {
                  free(v70);
                }
              }
            }

            v57 = *(a1 + 144) + *(a1 + 146) - 1;
            v58 = *(a1 + 148);
            if (v57 < v58)
            {
              v58 = 0;
            }

            v59 = a1 + 72 * (v57 - v58);
            v60 = v55;
            v61 = *(v6 + 48);
            *&v62 = *(v59 + 204) + (*(v6 + 52) - *(v59 + 204)) * v55;
            v72 = vaddq_f32(*(v59 + 168), vmulq_n_f32(vsubq_f32(*(v6 + 16), *(v59 + 168)), v60));
            v73 = vaddq_f32(*(v59 + 152), vmulq_n_f32(vsubq_f32(*v6, *(v59 + 152)), v60));
            v71 = vaddq_f32(*(v59 + 184), vmulq_n_f32(vsubq_f32(*(v6 + 32), *(v59 + 184)), v60));
            sub_19B66D5F4((v59 + 208), (v6 + 56), v60);
            *buf = v73;
            *&buf[16] = v72;
            v77 = v71;
            *&v78 = __PAIR64__(v62, v61);
            *(&v78 + 1) = __PAIR64__(v64, v63);
            v79 = __PAIR64__(v66, v65);
            *(a1 + 8) = 0;
            *(a1 + 144) = 0;
            v67 = *(a1 + 12);
            *(a1 + 16) = v47;
            if (v67)
            {
              *(a1 + 10) = 1;
            }

            else
            {
              *(a1 + 8) = 1;
            }

            a2 = buf;
            v15 = (a1 + 144);
          }

          else
          {
            v15 = (a1 + 144);
            v49 = *(a1 + 144) + *(a1 + 146) - 1;
            v50 = *(a1 + 148);
            if (v49 < v50)
            {
              v50 = 0;
            }

            v51 = a1 + 72 * (v49 - v50);
            v52 = *(v51 + 168);
            v53 = *(v51 + 200);
            v77 = *(v51 + 184);
            v78 = v53;
            v79 = *(v51 + 216);
            *buf = *(v51 + 152);
            *&buf[16] = v52;
            *(a1 + 8) = 0;
            *v15 = 0;
            *(a1 + 16) = v13;
            if (v11)
            {
              *(a1 + 10) = 1;
            }

            else
            {
              *(a1 + 8) = 1;
            }

            a2 = buf;
          }

          goto LABEL_55;
        }

        if (*(a1 + 148) == *(a1 + 146))
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
          }

          v31 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 8);
            v33 = *(v8 + 8 * v32);
            v34 = v32 + *(a1 + 10) - 1;
            v35 = *(a1 + 12);
            if (v34 < v35)
            {
              v35 = 0;
            }

            v36 = *(v8 + 8 * (v34 - v35));
            *buf = 134218496;
            *&buf[4] = v7;
            *&buf[12] = 2048;
            *&buf[14] = v33;
            *&buf[22] = 2048;
            *&buf[24] = v36;
            _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[feedIMUData] Too many consecutive over-closely spaced sampled received. This suggests an input sampling rate anomaly. Input timestamp: %.4f s, First / last timestamp in the buffer : %.4f s / %.4f s . The resampling will still continue but in a non-ideal rate.", buf, 0x20u);
          }

          v37 = sub_19B420058();
          if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
            }

            v38 = *(a1 + 8);
            v39 = *(v8 + 8 * v38);
            v40 = v38 + *(a1 + 10) - 1;
            v41 = *(a1 + 12);
            if (v40 < v41)
            {
              v41 = 0;
            }

            v75 = *(v8 + 8 * (v40 - v41));
            v42 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleIMUData::feedIMUData(const CMRelDM::IMUData &, const uint64_t)", "CoreLocation: %s\n", v42);
            if (v42 != buf)
            {
              free(v42);
            }
          }
        }

        v43 = *(a1 + 10);
        v44 = *(a1 + 12);
        v45 = *(a1 + 8);
        if (v45 + v43 >= v44)
        {
          v46 = *(a1 + 12);
        }

        else
        {
          v46 = 0;
        }

        *(v8 + 8 * (v45 + v43 - v46)) = v7;
        if (v44 <= v43)
        {
          if (v45 + 1 < v44)
          {
            LOWORD(v44) = 0;
          }

          *(a1 + 8) = v45 + 1 - v44;
        }

        else
        {
          *(a1 + 10) = v43 + 1;
        }

        sub_19B6B0958((a1 + 144), v6);
      }

      result = 0;
      goto LABEL_67;
    }

    v16 = *(a1 + 12);
    v17 = *(a1 + 8);
    if (v17 >= v16)
    {
      v18 = *(a1 + 12);
    }

    else
    {
      v18 = 0;
    }

    *(a1 + 8 * (v17 - v18) + 16) = v7;
    if (v16)
    {
      *(a1 + 10) = 1;
    }

    else
    {
      *(a1 + 8) = v17 + 1;
    }

    v15 = (a1 + 144);
    goto LABEL_55;
  }

LABEL_67:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *sub_19B6B0958(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[36 * (v3 - v2)];
  v6 = *(a2 + 32);
  v5 = *(a2 + 48);
  v7 = *(a2 + 16);
  *(v4 + 9) = *(a2 + 64);
  *(v4 + 4) = *a2;
  *(v4 + 12) = v7;
  *(v4 + 28) = v5;
  *(v4 + 20) = v6;
  v8 = result[1];
  v9 = *(result + 1);
  if (v9 <= v8)
  {
    v10 = *result + 1;
    if (v10 < v9)
    {
      LOWORD(v9) = 0;
    }

    *result = v10 - v9;
  }

  else
  {
    result[1] = v8 + 1;
  }

  return result;
}

void sub_19B6B09D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10))
  {
    v3 = a1 + 72 * *(a1 + 144);
    v4 = *(v3 + 168);
    v5 = *(v3 + 200);
    *(a2 + 32) = *(v3 + 184);
    *(a2 + 48) = v5;
    *(a2 + 64) = *(v3 + 216);
    *a2 = *(v3 + 152);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[getResampledIMU] Called getResampledIMU before any valid samples were fed to the resampler. This should not occur under normal conditions. Returning zero-IMU data. This is a serious error, investigate further.", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMRelDM::IMUData CMResampleIMUData::getResampledIMU() const", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 36) = vdup_n_s32(0x3A03126Fu);
    *(a2 + 44) = 973279855;
    *(a2 + 52) = xmmword_19B7BB860;
    *(a2 + 68) = 1065353216;
    sub_19B41E130((a2 + 56), xmmword_19B7BB860);
  }

  v9 = *MEMORY[0x1E69E9840];
}

unint64_t sub_19B6B0BF4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10))
  {
    result = (*(a1 + 8 * *(a1 + 8) + 16) * 1000000.0);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
    }

    v2 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[CMResampleIMUData]:[getResampledTimestampMicroSeconds] Called getResampledTimestampMicroSeconds before any valid samples were fed to the resampler. This should not occur under normal conditions. Returning zero-timestamp. This is a serious error, investigate further.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E298C0);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t CMResampleIMUData::getResampledTimestampMicroSeconds() const", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B6B0DBC()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B6B0E40(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = (a4 + 24);
  v7 = *(a4 + 24);
  if (v7)
  {
    if (v7 == a4)
    {
      *(a1 + 24) = a1;
      (*(**v6 + 24))(*v6, a1);
LABEL_7:
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = a2;
      *(a1 + 64) = 0;
      operator new();
    }

    *(a1 + 24) = v7;
  }

  else
  {
    v6 = (a1 + 24);
  }

  *v6 = 0;
  goto LABEL_7;
}

void sub_19B6B1034(_Unwind_Exception *a1)
{
  MEMORY[0x19EAE76F0](v2, 0x81C4018A671A6);
  v5 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_19B6399D4(v1);
  _Unwind_Resume(a1);
}

double sub_19B6B10D4(double *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("onLidAngleChange", "CLDisplayGravityService.mm", 22, "data");
  }

  if (!a2)
  {
    __assert_rtn("onLidAngleChange", "CLDisplayGravityService.mm", 23, "info");
  }

  result = *a1;
  *(a2 + 56) = *a1;
  return result;
}

void sub_19B6B1138(uint64_t *a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("onDeviceMotion", "CLDisplayGravityService.mm", 15, "sample");
  }

  if (!a2)
  {
    __assert_rtn("onDeviceMotion", "CLDisplayGravityService.mm", 16, "info");
  }

  v4 = *(a2 + 56);
  if (v4 < 0.0)
  {
    v4 = 180.0;
  }

  v37 = v4;
  v48 = (180.0 - v4) * -0.017453;
  v49 = 0;
  sub_19B66C264(&v47, &v48);
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 1)), *(a1 + 3));
  v46 = vextq_s8(v5, v5, 4uLL);
  sub_19B41E130(&v46, v46);
  v6.f32[0] = sub_19B420740(a1 + 1);
  v40 = v6.f32[0];
  v8 = v7;
  v10 = v9;
  v11.f32[0] = sub_19B66BFF4(&v47, v6);
  v12 = v11.i32[0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *buf = v11.i32[0];
  v67 = __PAIR64__(v15, v13);
  *v68 = v17;
  v19 = sub_19B66BF70(buf, v46.f32, v11);
  v21 = v20;
  v38 = v22;
  v39 = v23;
  *buf = v12;
  v67 = __PAIR64__(v16, v14);
  *v68 = v18;
  v24 = v10;
  v25 = sub_19B66C1A4(buf, v40, v8, v10);
  v27 = v26;
  v29 = v28;
  v45 = *a1;
  v30 = v19;
  v31 = v25;
  v41[2] = v21;
  v41[3] = v38;
  v41[0] = v39;
  v41[1] = v30;
  v42 = v25;
  v43 = v26;
  v44 = v28;
  v32 = *(a2 + 24);
  if (!v32)
  {
    sub_19B69ADA0();
  }

  (*(*v32 + 48))(v32, v41);
  if (qword_1EAFE2AD8 != -1)
  {
    dispatch_once(&qword_1EAFE2AD8, &unk_1F0E298E0);
  }

  v33 = qword_1EAFE2AE0;
  if (os_log_type_enabled(qword_1EAFE2AE0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136448002;
    v67 = "void CLDisplayGravityService::notifyDeviceMotion(const CLDeviceMotion::Sample &)";
    *v68 = 2050;
    *&v68[2] = v40;
    v69 = 2050;
    v70 = v8;
    v71 = 2050;
    v72 = v24;
    v73 = 2050;
    v74 = v37;
    v75 = 2050;
    v76 = v31;
    v77 = 2050;
    v78 = v27;
    v79 = 2050;
    v80 = v29;
    _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CLDisplayGravityService] %{public}s : gravity=%{public}f, %{public}f ,%{public}f, lidAngleDeg=%{public}f, gravityCameraFrame=%{public}f, %{public}f ,%{public}f", buf, 0x52u);
  }

  v34 = sub_19B420058();
  if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AD8 != -1)
    {
      dispatch_once(&qword_1EAFE2AD8, &unk_1F0E298E0);
    }

    v50 = 136448002;
    v51 = "void CLDisplayGravityService::notifyDeviceMotion(const CLDeviceMotion::Sample &)";
    v52 = 2050;
    v53 = v40;
    v54 = 2050;
    v55 = v8;
    v56 = 2050;
    v57 = v24;
    v58 = 2050;
    v59 = v37;
    v60 = 2050;
    v61 = v31;
    v62 = 2050;
    v63 = v27;
    v64 = 2050;
    v65 = v29;
    v35 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDisplayGravityService::notifyDeviceMotion(const CLDeviceMotion::Sample &)", "CoreLocation: %s\n", v35);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6B1560(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    sub_19B6B160C(a1);
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_19B6399D4(a1);
}

void sub_19B6B160C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = sub_19B686F9C();
    sub_19B426A14(v2, 0, *(a1 + 40));
    v3 = sub_19B424AE0();
    sub_19B425248(v3, *(a1 + 32));
    *(a1 + 64) = 0;
  }
}

void sub_19B6B168C(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && (sub_19B423E34() & 4) != 0)
  {
    if (sub_19B686F9C())
    {
      v2 = sub_19B686F9C();
      sub_19B437CF0(v2, 0, *(a1 + 40), -1.0);
      v3 = sub_19B424AE0();
      sub_19B439EF4(v3, *(a1 + 32), *(a1 + 48));
      *(a1 + 64) = 1;
    }
  }
}

os_log_t sub_19B6B16F4()
{
  result = os_log_create("com.apple.locationd.Motion", "DisplayGravity");
  qword_1EAFE2AE0 = result;
  return result;
}

void sub_19B6B1728(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B6B18A4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  sub_19B6B1900();
  return a1;
}

void sub_19B6B18E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6B1900()
{
  v14 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  result = sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v3 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLSPUHIDDriverInterface calls must be made on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }
    }

    v4 = qword_1EAFE2838;
    if (os_signpost_enabled(qword_1EAFE2838))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "runningOnMotionThread";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLSPUHIDDriverInterface calls must be made on motion thread", "{msg%{public}.0s:CLSPUHIDDriverInterface calls must be made on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }
    }

    v5 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLSPUHIDDriverInterface calls must be made on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B6B1B7C(void *a1)
{
  sub_19B6B1BB4(a1);
  v2 = a1[1];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

void sub_19B6B1BB4(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  sub_19B6B1900();
  if (!*a1)
  {
    goto LABEL_32;
  }

  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v2 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CLSPUHIDDriverInterface] Close hid driver interface", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::closeHIDDriverInterface()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a1 + 2;
  if (v6)
  {
    (*(*v6 + 72))(a1[3], 0);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else if (!v5)
  {
    *(*a1 + 8) = 0;
    *v7 = 0;
    a1[3] = 0;
    goto LABEL_32;
  }

  ((*v5)->Release)(v5);
  IODestroyPlugInInterface(v5);
LABEL_19:
  *(*a1 + 8) = 0;
  *v7 = 0;
  a1[3] = 0;
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v8 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[2];
    v10 = a1[3];
    *buf = 134218752;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CLSPUHIDDriverInterface] Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x2Au);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v14 = a1[2];
    v15 = a1[3];
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::closeHIDDriverInterface()", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

LABEL_32:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B6B1F70(uint64_t *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  sub_19B6B1900();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v2 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CLSPUHIDDriverInterface] Open hid driver interface", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v58) = 0;
    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_51;
  }

  theInterface = 0;
  valuePtr = 0;
  v55 = 0;
  v6 = sub_19B43EE18(v5);
  if (!v6)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v22 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "[CLSPUHIDDriverInterface] IoHidDevice is not ready", buf, 2u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v58) = 0;
    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n");
LABEL_49:
    if (v21 == buf)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v7 = v6;
  RegistryID = IOHIDServiceClientGetRegistryID(v6);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
  v9 = *MEMORY[0x1E696CD60];
  v10 = IORegistryEntryIDMatching(valuePtr);
  MatchingService = IOServiceGetMatchingService(v9, v10);
  if (!MatchingService)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v24 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Service doesn't exist", buf, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    LOWORD(v58) = 0;
    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n");
    goto LABEL_49;
  }

  v12 = MatchingService;
  theScore = 0;
  v13 = *MEMORY[0x1E695E4A8];
  v14 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x3Bu, 0xC5u, 0xCCu, 0x87u, 0x84u, 0x5Eu, 0x48u, 0xABu, 0xA9u, 0xC2u, 0x94u, 0x36u, 0, 0x1Bu, 0xA6u, 0x8Au);
  v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v16 = IOCreatePlugInInterfaceForService(v12, v14, v15, &theInterface, &theScore);
  IOObjectRelease(v12);
  if (v16)
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v17 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      v18 = mach_error_string(v16);
      *buf = 67240706;
      *v65 = v16;
      *&v65[4] = 2082;
      *&v65[6] = v18;
      *&v65[14] = 2114;
      *&v65[16] = v7;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v20 = mach_error_string(v16);
    v58 = 67240706;
    *v59 = v16;
    *&v59[4] = 2082;
    *&v59[6] = v20;
    *&v59[14] = 2114;
    *&v59[16] = v7;
    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v21);
    if (v21 == buf)
    {
      goto LABEL_51;
    }

LABEL_50:
    free(v21);
    goto LABEL_51;
  }

  v27 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v29 = CFUUIDGetConstantUUIDWithBytes(v13, 0x6Eu, 0xBEu, 0xBAu, 0x6Eu, 9u, 0x1Eu, 0x45u, 0x2Eu, 0x82u, 0xEAu, 0x29u, 0x79u, 0x81u, 0x6Fu, 0xB1u, 0xB5u);
  v30 = CFUUIDGetUUIDBytes(v29);
  v31 = (QueryInterface)(v27, *&v30.byte0, *&v30.byte8, &v55);
  if (v31)
  {
    v32 = v31;
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v33 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      v34 = mach_error_string(v32);
      *buf = 67240706;
      *v65 = v32;
      *&v65[4] = 2082;
      *&v65[6] = v34;
      *&v65[14] = 2114;
      *&v65[16] = v7;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
    }

    v35 = sub_19B420058();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v36 = mach_error_string(v32);
      v58 = 67240706;
      *v59 = v32;
      *&v59[4] = 2082;
      *&v59[6] = v36;
      *&v59[14] = 2114;
      *&v59[16] = v7;
      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

LABEL_78:
    if (theInterface)
    {
      ((*theInterface)->Release)(theInterface);
      IODestroyPlugInInterface(theInterface);
    }

    goto LABEL_51;
  }

  v38 = (*(*v55 + 64))(v55, 0);
  if (v38)
  {
    v39 = v38;
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v40 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
    {
      v41 = mach_error_string(v39);
      *buf = 67240706;
      *v65 = v39;
      *&v65[4] = 2082;
      *&v65[6] = v41;
      *&v65[14] = 2114;
      *&v65[16] = v7;
      _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] Unable to open hid driver interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
    }

    v42 = sub_19B420058();
    if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v43 = mach_error_string(v39);
      v58 = 67240706;
      *v59 = v39;
      *&v59[4] = 2082;
      *&v59[6] = v43;
      *&v59[14] = 2114;
      *&v59[16] = v7;
      v44 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    if (v55)
    {
      (*(*v55 + 72))(v55, 0);
    }

    goto LABEL_78;
  }

  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v45 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEFAULT))
  {
    v46 = a1[2];
    v47 = a1[3];
    *buf = 134219008;
    *v65 = valuePtr;
    *&v65[8] = 2048;
    *&v65[10] = v46;
    *&v65[18] = 2048;
    *&v65[20] = v47;
    v66 = 2048;
    v67 = theInterface;
    v68 = 2048;
    v69 = v55;
    _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEFAULT, "[CLSPUHIDDriverInterface] Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
  }

  v48 = sub_19B420058();
  if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v49 = a1[2];
    v50 = a1[3];
    v58 = 134219008;
    *v59 = valuePtr;
    *&v59[8] = 2048;
    *&v59[10] = v49;
    *&v59[18] = 2048;
    *&v59[20] = v50;
    v60 = 2048;
    v61 = theInterface;
    v62 = 2048;
    v63 = v55;
    v51 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUHIDDriverInterface::openHIDDriverInterface()", "CoreLocation: %s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }
  }

  v52 = theInterface;
  *(*a1 + 8) = valuePtr;
  v53 = v55;
  a1[2] = v52;
  a1[3] = v53;
LABEL_51:
  v26 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6B2C08()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

uint64_t sub_19B6B2C38(uint64_t a1)
{
  *a1 = &unk_1F0E3AEA0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6B2D14;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B6B2CF0(_Unwind_Exception *a1)
{
  sub_19B6B3E90(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B6B2D1C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v2 = sub_19B421620();
  if ((v2 & 0x2000000000000000) != 0)
  {
    if (!*(a1 + 8))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v4 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUFlickGestureInterface::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return (v2 >> 61) & 1;
}

void sub_19B6B3008(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6B303C(void *a1)
{
  v2 = a1[3];
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);
  v3 = *(*a1 + 40);

  return v3(a1);
}

void sub_19B6B30A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v4 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUFlickGestureInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
LABEL_23:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v7 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUFlickGestureInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
      goto LABEL_23;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B6B37F0(uint64_t a1, char a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6B3884;
  v7[3] = &unk_1E75342D8;
  v7[4] = a1;
  v8 = a2;
  *&v7[5] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B6B3884(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (sub_19B6B2D1C(v2))
  {
    v17[0] = 3;
    v17[1] = v1[48];
    v18 = (*(v1 + 5) * 1000000.0);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v3 = off_1EAFE2970;
    v4 = "sE";
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 48);
      v6 = *(v1 + 5);
      *buf = 67240448;
      *&buf[4] = v5;
      v23 = 2050;
      v24 = v6;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLSPUFlickGestureInterface] Simulate,gestureState,%{public}u,%{public}f", buf, 0x12u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) <= 1 && *(v7 + 164) <= 1 && *(v7 + 168) <= 1 && !*(v7 + 152))
    {
      goto LABEL_13;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v8 = *(v1 + 48);
      v9 = *(v1 + 5);
      v19[0] = *(v4 + 296);
      v19[1] = v8;
      v20 = 2050;
      v21 = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUFlickGestureInterface::simulateFlickGestureEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }

LABEL_13:
      sub_19B420D84();
      sub_19B44B9A0();
      if ((sub_19B421620() & 0x2000000000000000) != 0)
      {
        break;
      }

      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v15 = off_1EAFE2970;
      v4 = "";
      v1 = "isAvailable()";
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2082;
        v26 = "assert";
        v27 = 2081;
        v28 = "isAvailable()";
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUFlickGestureInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
        }
      }

      v16 = off_1EAFE2970;
      if (os_signpost_enabled(off_1EAFE2970))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2082;
        v26 = "assert";
        v27 = 2081;
        v28 = "isAvailable()";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUFlickGestureInterface] Service required", "{msg%{public}.0s:[CLSPUFlickGestureInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
        }
      }

      v2 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2082;
        v26 = "assert";
        v27 = 2081;
        v28 = "isAvailable()";
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUFlickGestureInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
LABEL_40:
      dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
    }

    v19[0] = 0;
    *buf = 4;
    if (sub_19B44CF80(*(v2 + 3), v17, 0xA, v19, buf))
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
      }

      v11 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[CLSPUFlickGestureInterface] Simulate failed", buf, 2u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E29920);
        }

        LOWORD(v19[0]) = 0;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUFlickGestureInterface::simulateFlickGestureEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B6B3E14(uint64_t a1)
{
  sub_19B6B3EDC(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B6B3E60()
{
  result = os_log_create("com.apple.locationd.Motion", "Flick");
  off_1EAFE2970 = result;
  return result;
}

void *sub_19B6B3E90(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B6B1B7C(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B6B3EDC(uint64_t a1)
{
  *a1 = &unk_1F0E3AEA0;
  sub_19B6B3E90((a1 + 24), 0);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

uint64_t sub_19B6B3F30(uint64_t a1, double a2)
{
  v2 = &dword_19B7BBD38;
  v3 = 96;
  while (1)
  {
    v4 = *(v2 - 3);
    if (v4 <= a2)
    {
      v5 = *(v2 - 2);
      if (v5 > a2)
      {
        v7 = *v2;
        goto LABEL_10;
      }
    }

    if (*v2 == 1)
    {
      v5 = *(v2 - 2);
      if (vabdd_f64(a2, v5) <= 1.0e-12)
      {
        break;
      }
    }

    v2 += 8;
    v3 -= 32;
    if (!v3)
    {
      return 0;
    }
  }

  v7 = 1;
LABEL_10:
  *(a1 + 24) = v7;
  v6 = 1;
  *a1 = v4;
  *(a1 + 8) = v5;
  return v6;
}

void sub_19B6B3FAC(uint64_t a1, void *a2, uint64_t a3, double *a4, char a5)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = &unk_1F0E32388;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 9) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 128) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0xBFF0000000000000;
  v10 = (0.100000001 / *a4);
  *(a1 + 208) = &unk_1F0E32728;
  *(a1 + 216) = v10;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  v11 = (0.100000001 / *a4);
  *(a1 + 280) = &unk_1F0E32728;
  *(a1 + 288) = v11;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 472) = a5;
  *(a1 + 480) = *a2;
  *(a1 + 488) = *a4;
  *(a1 + 496) = 4;
  *(a1 + 504) = 0x3FA0A3D70A3D70A4;
  *(a1 + 512) = 1;
  *(a1 + 520) = &unk_1F0E32728;
  *(a1 + 528) = 100;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 592) = &unk_1F0E32C18;
  *(a1 + 600) = 20;
  *(a1 + 608) = &unk_1F0E32748;
  *(a1 + 616) = 20;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = &unk_1F0E32748;
  *(a1 + 696) = 20;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 768) = &unk_1F0E32748;
  *(a1 + 776) = 20;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  operator new[]();
}

void sub_19B6B4884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_19B66F4D8(v15);
  v14[65] = a12;
  sub_19B42A568(v14 + 68);
  v14[35] = a13;
  sub_19B42A568(v14 + 38);
  v14[26] = a14;
  sub_19B42A568(v14 + 29);
  _Unwind_Resume(a1);
}

void *sub_19B6B48D4(void *a1)
{
  *a1 = &unk_1F0E32388;
  v2 = a1[16];
  if (v2)
  {
    MEMORY[0x19EAE76D0](v2, 0x1000C8052888210);
  }

  sub_19B66F4D8(a1 + 74);
  a1[65] = &unk_1F0E32728;
  sub_19B42A568(a1 + 68);
  a1[35] = &unk_1F0E32728;
  sub_19B42A568(a1 + 38);
  a1[26] = &unk_1F0E32728;
  sub_19B42A568(a1 + 29);
  return a1;
}

void sub_19B6B49B4(void *a1)
{
  sub_19B6B48D4(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6B49F4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 11) = 0;
  bzero((a1 + 16), 0x20uLL);
  *(a1 + 40) = 0x3FF0000000000000;
  bzero((a1 + 64), 0x30uLL);
  bzero(*(a1 + 120), 0x18uLL);
  bzero(*(a1 + 112), 0x3CuLL);
  v2 = *(a1 + 120);
  memset_pattern16(v2, &unk_19B7BBDB0, 0xCuLL);
  memset_pattern16((v2 + 12), &unk_19B7BBDC0, 0xCuLL);
  *(a1 + 12) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0xBFF0000000000000;
  bzero((a1 + 352), 0xCuLL);
  bzero((a1 + 364), 0xCuLL);
  bzero((a1 + 376), 0x18uLL);
  bzero((a1 + 156), 0xCuLL);
  bzero((a1 + 136), 0xCuLL);
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  bzero((a1 + 448), 0x18uLL);
  bzero((a1 + 400), 0x18uLL);
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  bzero((a1 + 848), 0xCuLL);
  bzero((a1 + 864), 0x18uLL);
  *(a1 + 888) = 0;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  sub_19B43FC50((a1 + 608));
  sub_19B43FC50((a1 + 688));
  sub_19B43FC50((a1 + 768));
  sub_19B43FA98((a1 + 520));
  sub_19B43FA98((a1 + 208));
  sub_19B43FA98((a1 + 280));
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
  }

  v8 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 600);
    *buf = 134217984;
    v15 = v9;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "fAccelBuffer,size,%zu", buf, 0xCu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v13 = *(a1 + 600);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::reset()", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6B4CF4(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a1 + 9);
  if (v2 == 1)
  {
    *a2 = vcvt_f32_f64(*(a1 + 376));
    v3 = *(a1 + 392);
    *(a2 + 8) = v3;
  }

  return v2;
}

void sub_19B6B4D2C(uint64_t a1, float64x2_t *a2, uint64_t a3, double *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  *(a1 + 168) = *a5;
  ++*(a1 + 152);
  v7 = *a4;
  v8 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(*a2), vdup_n_s32(0x3C8EFA35u))), *(a1 + 88)));
  v9 = (v7 * 0.017453) - *(a1 + 104);
  *(a1 + 156) = v8;
  *(a1 + 164) = v9;
  v10 = v8.f32[1];
  v32 = v8;
  v33 = sqrtf((vmuls_lane_f32(v8.f32[1], v8, 1) + (v8.f32[0] * v8.f32[0])) + (v9 * v9));
  sub_19B4200DC(a1 + 520, &v33);
  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v11 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      v40 = (v33 / 0.017453);
      v41 = 2048;
      v42 = (v32.f32[0] / 0.017453);
      v43 = 2048;
      v44 = (v10 / 0.017453);
      v45 = 2048;
      v46 = (v9 / 0.017453);
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "omegaMag9, %.3f, omega, %.3f, %.3f, %.3f", buf, 0x2Au);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v34 = 134218752;
      *&v34[4] = (v33 / 0.017453);
      *&v34[12] = 2048;
      *&v34[14] = (v32.f32[0] / 0.017453);
      *&v34[22] = 2048;
      *&v34[24] = (v10 / 0.017453);
      v35 = 2048;
      v36 = (v9 / 0.017453);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v31 = *(a1 + 480);
  v49 = vmulq_n_f64(vcvtq_f64_f32(v32), v31);
  v50 = v31 * v9;
  sub_19B6B6138(buf, v49.f64);
  sub_19B447A1C(v34, buf, (a1 + 16));
  v14 = *&v34[16];
  *(a1 + 16) = *v34;
  *(a1 + 32) = v14;
  v15 = vadd_f32(*(a1 + 136), v32);
  *(a1 + 136) = v15;
  *&v14 = *(a1 + 144) + v9;
  *(a1 + 144) = v14;
  ++*(a1 + 148);
  v16 = v31 * (v31 * ((COERCE_FLOAT(vmul_f32(v15, v15).i32[1]) + (v15.f32[0] * v15.f32[0])) + (*&v14 * *&v14)));
  if (v16 > 0.122500002)
  {
    sub_19B6B52AC(a1, v16, 0x3FBF5C2900000000);
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v17 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 16);
      v19 = *(a1 + 24);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *a5;
      *buf = 134219008;
      v40 = v18;
      v41 = 2048;
      v42 = v19;
      v43 = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v21;
      v47 = 2048;
      v48 = v22;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[AppleQuaternion9] x,%f,y,%f,z,%f,w,%f,timestamp,%f", buf, 0x34u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v24 = *(a1 + 16);
      v25 = *(a1 + 24);
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = *a5;
      *v34 = 134219008;
      *&v34[4] = v24;
      *&v34[12] = 2048;
      *&v34[14] = v25;
      *&v34[22] = 2048;
      *&v34[24] = v26;
      v35 = 2048;
      v36 = v27;
      v37 = 2048;
      v38 = v28;
      v29 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6B52AC(uint64_t result, double a2, int32x2_t a3)
{
  v141 = *MEMORY[0x1E69E9840];
  v3 = *(result + 148);
  if (v3)
  {
    v4 = result;
    v5 = result + 136;
    *a3.i32 = v3;
    v116 = a3;
    v6 = *(result + 136) / v3;
    v7 = *(result + 480) * v3;
    *(result + 148) = 0;
    v115 = exp(v7 / -5000.0);
    v114 = vdiv_f32(*(v5 + 4), vdup_lane_s32(v116, 0));
    bzero(v5, 0xCuLL);
    v8 = 0;
    v9 = 0;
    v10 = v114;
    *(v5 - 48) = vmulq_n_f64(*(v5 - 48), v115);
    *(v5 - 32) = v115 * *(v5 - 32);
    v134[0] = 0;
    v134[1] = v114.i32[1];
    v135 = vneg_f32(v114);
    v136 = 0;
    v137 = v6;
    v138 = v114.i32[0];
    v139 = -v6;
    v140 = 0;
    v11 = vmul_f32(v10, v10).f32[0];
    v12 = vmuls_lane_f32(v114.f32[1], v114, 1);
    v126[0] = -(v11 + v12);
    v126[1] = v6 * v114.f32[0];
    v127 = vmuls_lane_f32(v6, v114, 1);
    v128 = v6 * v114.f32[0];
    v129 = -((v6 * v6) + v12);
    v130 = vmuls_lane_f32(v10.f32[0], v10, 1);
    v131 = v127;
    v132 = v130;
    v114.f32[0] = v11;
    v133 = -((v6 * v6) + v11);
    v13 = v7;
    v14 = -v13;
    v15 = v7 * v7 * 0.5;
    v16 = v15;
    do
    {
      v17 = v8;
      v18 = 3;
      do
      {
        *(v121 + v17) = (*(v126 + v17) * v16) + (v14 * *(v134 + v17));
        v17 += 4;
        --v18;
      }

      while (v18);
      v121[4 * v9] = v121[4 * v9] + 1.0;
      ++v9;
      v8 += 12;
    }

    while (v9 != 3);
    v19 = 0;
    v20 = v124;
    do
    {
      *v20 = *&v121[v19];
      v20[2] = v121[v19 + 2];
      v19 += 3;
      v20 += 6;
    }

    while (v19 != 9);
    v21 = 0;
    v22 = 0;
    v23 = v15 / 5000.0 - v7;
    do
    {
      v24 = v21;
      v25 = 3;
      do
      {
        *(v121 + v24) = *(v134 + v24) * v16;
        v24 += 4;
        --v25;
      }

      while (v25);
      v121[4 * v22] = v121[4 * v22] + v23;
      ++v22;
      v21 += 12;
    }

    while (v22 != 3);
    v26 = 0;
    v27 = &v125;
    do
    {
      *v27 = *&v121[v26];
      v27[2] = v121[v26 + 2];
      v26 += 3;
      v27 += 6;
    }

    while (v26 != 9);
    for (i = 12; i != 84; i += 24)
    {
      bzero(&v124[i], 0xCuLL);
    }

    for (j = 84; j != 156; j += 24)
    {
      bzero(&v124[j], 0xCuLL);
      v29 = v115;
      *&v124[i] = v29;
      i += 28;
    }

    v31 = 0;
    v32 = *(v4 + 112);
    v33 = v124;
    do
    {
      v34 = &v124[4 * v31];
      v35 = (v34 + 120);
      v36 = 5;
      LODWORD(v37) = 6;
      do
      {
        v38 = 0;
        v39 = v37 - 2;
        v37 = v36;
        v40 = *v35;
        v41 = v32 + 4 * (v39 * v36 / 2);
        v42 = v33;
        do
        {
          v43 = *v42;
          v42 += 6;
          v40 = v40 + (v43 * *(v41 + 4 * v38++));
        }

        while (v37 != v38);
        *v35 = v40;
        v36 = v37 - 1;
        v35 = &v34[24 * v37 - 24];
      }

      while (v37 > 1);
      ++v31;
      ++v33;
    }

    while (v31 != 6);
    v44 = 0;
    v45 = 2.76135698e-10 / (7.0 / (exp((0.11 - sqrtf((v114.f32[0] + (v6 * v6)) + (v114.f32[1] * v114.f32[1]))) / 0.012) + 1.0) + 1.0);
    v47 = v121;
    do
    {
      bzero(&v121[v44], 0xCuLL);
      v46 = (v7 * -0.25 / 5000.0 + 0.333333333) * (v7 * (v7 * (v7 * v45))) + (*v116.i32 * 0.00000021323) * 0.5 * v7;
      *v47 = v46;
      v47 += 7;
      v44 += 6;
    }

    while (v44 != 18);
    v48 = expm1(-(v7 / 5000.0));
    v49 = exp(-(v7 / 5000.0));
    v50 = 0;
    v51 = 0;
    v52 = v45 * -0.5 * 1.24999999e11 * (v49 * (v7 / 5000.0 * (v7 / 5000.0) + v7 / 5000.0 * 2.0) + v48 * 2.0);
    v53 = v49 * (v7 * (v7 * (v45 * -0.5)));
    v54 = v52;
    do
    {
      v55 = v50;
      v56 = 3;
      do
      {
        *(v120 + v55) = *(v134 + v55) * v54;
        v55 += 4;
        --v56;
      }

      while (v56);
      v120[4 * v51] = v120[4 * v51] + v53;
      ++v51;
      v50 += 12;
    }

    while (v51 != 3);
    v57 = &v122;
    v58 = &v123;
    v59 = v120;
    v60 = 3;
    do
    {
      v61 = 0;
      v62 = v57;
      do
      {
        v63 = v59[v61];
        *(v58 + v61 * 4) = v63;
        *v62 = v63;
        v62 += 6;
        ++v61;
      }

      while (v61 != 3);
      ++v60;
      ++v57;
      v58 += 3;
      v59 += 3;
    }

    while (v60 != 6);
    v64 = (1.0 - exp(v7 * -2.0 / 5000.0)) * (v45 * 5000.0) * 0.5;
    v65 = 21;
    for (k = 21; k != 39; k += 6)
    {
      bzero(&v121[k], 0xCuLL);
      v121[v65] = v64;
      v65 += 7;
    }

    bzero(v120, 0x3CuLL);
    bzero(v119, 0x18uLL);
    v67 = 0;
    v68 = v120;
    v69 = 6;
    v70 = 4;
    for (m = 5; ; --m)
    {
      v72 = *(&v121[m] + (((3 * m) << 33) >> 30));
      if (m > 4)
      {
        v119[m] = v72;
      }

      else
      {
        v73 = v67;
        do
        {
          v74 = v120[m + (((v73 + 5) * (v73 + 6)) >> 1)];
          v72 = v72 + (-(v74 * v74) * v119[v73++ + 6]);
        }

        while (v73 + 6 < 6);
        v119[m] = v72;
        if (m < 1)
        {
          v81 = 0;
          v82 = *(v4 + 120);
          v83 = v120;
          v84 = 5;
          v85 = 6;
          v86 = 20;
          result = v82;
          while (1)
          {
            v87 = 0;
            v88 = v85 - 1;
            v89 = 0.0;
            v90 = v86;
            do
            {
              v89 = v89 + ((*&v124[v90] * *&v124[v90]) * *(v82 + v87));
              v87 += 4;
              v90 += 24;
            }

            while (v87 != 24);
            if (v85 >= 6)
            {
              v93 = v119[v88];
              v94 = v89 + v93;
              *(&v117 + v88) = v94;
            }

            else
            {
              v91 = v81;
              do
              {
                v92 = v120[v88 + (((v91 + 5) * (v91 + 6)) >> 1)];
                v89 = v89 + ((v92 * v92) * v119[v91++ + 6]);
              }

              while (v91 + 6 < 6);
              v93 = v119[v88];
              v94 = v89 + v93;
              *(&v117 + v88) = v94;
              if (v85 < 2)
              {
                *result = v117;
                *(result + 16) = v118;
                goto LABEL_72;
              }
            }

            v95 = 0;
            v96 = 0;
            result = *(v4 + 120);
            v97 = (v88 * (v85 - 2) + ((v88 * (v85 - 2)) >> 31)) >> 1;
            do
            {
              v98 = 0;
              v99 = 0.0;
              v100 = v124;
              do
              {
                v99 = v99 + ((*&v100[v86] * *(result + v98)) * *&v100[v95]);
                v98 += 4;
                v100 += 24;
              }

              while (v98 != 24);
              v101 = v96 + v97;
              v102 = v120[v96 + v97];
              v103 = v99 + (v93 * v102);
              if (v85 <= 5)
              {
                v104 = v83;
                for (n = v85; n < 6; ++n)
                {
                  v106 = *v104++;
                  v103 = v103 + ((v120[v88 + (((n - 1) * n) >> 1)] * v106) * v120[v96 + (((n - 1) * n) >> 1)]);
                }
              }

              v107 = v103 / v94;
              *(v32 + 4 * v101) = v107;
              v108 = -v107;
              v109 = v124;
              v110 = 6;
              do
              {
                *&v109[v95] = *&v109[v95] + (v108 * *&v109[v86]);
                v109 += 24;
                --v110;
              }

              while (v110);
              if (v85 <= 5)
              {
                v111 = v84;
                do
                {
                  v112 = v111 + 1;
                  v120[v96 + ((v111 * v112) >> 1)] = v120[v96 + ((v111 * v112) >> 1)] + (v108 * v120[v88 + ((v111 * v112) >> 1)]);
                  ++v111;
                }

                while (v112 != 5);
                v102 = v120[v101];
              }

              v120[v101] = v102 - v107;
              ++v96;
              v95 += 4;
            }

            while (v96 != v84);
            --v84;
            v86 -= 4;
            --v81;
            --v83;
            --v85;
          }
        }
      }

      v75 = v70;
      do
      {
        v76 = v121[6 * m + v75];
        if (m <= 4)
        {
          v77 = v68;
          v78 = v69;
          do
          {
            v79 = *v77++;
            v76 = v76 + (-(v120[v75 + (((v78 - 1) * v78) >> 1)] * v120[m + (((v78 - 1) * v78) >> 1)]) * v79);
            ++v78;
          }

          while (v78 < 6);
        }

        v120[(m - 1) * m / 2 + v75] = v76 / v72;
      }

      while (v75-- > 0);
      --v70;
      --v67;
      --v69;
      --v68;
    }
  }

LABEL_72:
  v113 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6B5B70(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v12 = a6 + 6;
  bzero(a1, 0x30uLL);
  v13 = 0;
  v14 = a2[1];
  v15 = *a2 - 4;
  v16 = (a3 - 12);
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      v19 = *(a3 + 4 * v13 + 12 * v17);
      a6[v17] = v19;
      if (v17)
      {
        v20 = v18;
        v21 = v17;
        do
        {
          v22 = *v20;
          v20 -= 3;
          v19 = v19 + (v22 * *(v15 + 4 * ((v17 - 1) * v17 / 2) + 4 * v21));
          a6[v17] = v19;
        }

        while (v21-- > 1);
      }

      ++v17;
      v18 += 3;
    }

    while (v17 != 6);
    v24 = v14;
    v25 = a6;
    v26 = 6;
    do
    {
      v27 = *v24++;
      v25[6] = v27 * *v25;
      ++v25;
      --v26;
    }

    while (v26);
    v28 = 0;
    v29 = *(a5 + 4 * v13);
    v30 = *(a4 + 4 * v13);
    v31 = *a2;
    v32 = 1.0 / v30;
    do
    {
      v33 = v30;
      v34 = a6[v28];
      v30 = v30 + (v34 * v12[v28]);
      v14[v28] = v14[v28] * (v33 * (1.0 / v30));
      if (v28)
      {
        v35 = 0;
        v36 = -(v34 * v32);
        v37 = v31 + 4 * ((v28 - 1) * v28 / 2);
        do
        {
          v38 = *(v37 + 4 * v35);
          *(v37 + 4 * v35) = v38 + (v12[v35] * v36);
          v12[v35] = v12[v35] + (v12[v28] * v38);
          ++v35;
        }

        while (v28 != v35);
      }

      ++v28;
      v32 = 1.0 / v30;
    }

    while (v28 != 6);
    v39 = 0;
    v40 = v29 * (1.0 / v30);
    do
    {
      *(a1 + v39) = *(a1 + v39) + (v40 * v12[v39]);
      ++v39;
    }

    while (v39 != 6);
    ++v13;
    ++v16;
  }

  while (v13 != 3);
}

void sub_19B6B5D38(uint64_t a1, float32x2_t *a2, float *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v6 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v7 = a2->f32[0];
      v8 = a2->f32[1];
      v9 = a2[1].f32[0];
      v10 = *a3;
      v11 = a3[1];
      v12 = a3[2];
      *buf = 134219264;
      v48 = v7;
      v49 = 2048;
      v50 = v8;
      v51 = 2048;
      v52 = v9;
      v53 = 2048;
      v54 = v10;
      v55 = 2048;
      v56 = v11;
      LOWORD(v57[0]) = 2048;
      *(v57 + 2) = v12;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[Bias,Var] bias.x,%f,bias.y,%f,bias.z,%f,var.x,%f,var.y,%f,var.z,%f", buf, 0x3Eu);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v14 = a2->f32[0];
      v15 = a2->f32[1];
      v16 = a2[1].f32[0];
      v17 = *a3;
      v18 = a3[1];
      v19 = a3[2];
      v35 = 134219264;
      v36 = v14;
      v37 = 2048;
      v38 = v15;
      v39 = 2048;
      v40 = v16;
      v41 = 2048;
      v42 = v17;
      v43 = 2048;
      v44 = v18;
      v45 = 2048;
      v46 = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedGyroBias(const CLMotionTypeRotationRate &, const CLMotionTypeVector3 &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  if (*(a1 + 12))
  {
    v21 = 0;
    v33 = *a3;
    v34 = *(a3 + 2);
    do
    {
      v22 = *(&v33 + v21);
      if (v22 < 0.000001)
      {
        v22 = 0.000001;
      }

      *(&v33 + v21) = v22;
      v21 += 4;
    }

    while (v21 != 12);
    v23 = *(a1 + 152);
    if (v23 >= 50)
    {
      v24 = 50;
    }

    else
    {
      v24 = *(a1 + 152);
    }

    if (v23 >= 1)
    {
      v25 = 0;
      v26 = v33;
      v27 = v34;
      do
      {
        v31 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*a2), *(a1 + 88)));
        v28 = a2[1].f32[0] - *(a1 + 104);
        v32 = v28;
        bzero(buf, 0x48uLL);
        *(&v54 + 2) = 1065353216;
        v57[0] = 1065353216;
        v57[4] = 1065353216;
        v59 = v26;
        v60 = v27;
        sub_19B6B5B70(&v35, (a1 + 112), buf, &v59, &v31, v58);
        for (i = 0; i != 24; i += 8)
        {
          *(a1 + i + 88) = *(&v40 + i) + *(a1 + i + 88);
        }

        ++v25;
      }

      while (v25 != v24);
    }

    *(a1 + 152) = 0;
  }

  else
  {
    *(a1 + 88) = vcvtq_f64_f32(*a2);
    *(a1 + 104) = a2[1].f32[0];
    *(a1 + 12) = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_19B6B6138(double *a1, double *a2)
{
  v4 = *a2;
  v5 = sqrt(a2[1] * a2[1] + v4 * v4 + a2[2] * a2[2]);
  if (v5 >= 0.00000002)
  {
    v13 = __sincos_stret(v5 * 0.5);
    cosval = v13.__cosval;
    *a1 = v4 * (v13.__sinval / v5);
    a1[1] = v13.__sinval / v5 * a2[1];
    v11 = v13.__sinval / v5 * a2[2];
  }

  else
  {
    *a1 = v4 * 0.5;
    v6 = a2[1] * 0.5;
    a1[1] = v6;
    v7 = a2[2] * 0.5;
    v8 = v5 * v5 * 0.125;
    v9 = 1.0 - v8;
    v10 = sqrt(v8 + 1.0);
    *a1 = v4 * 0.5 / v10;
    a1[1] = v6 / v10;
    v11 = v7 / v10;
    cosval = v9 / v10;
  }

  a1[2] = v11;
  a1[3] = cosval;
}

double sub_19B6B6210(double *a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  sub_19B6B630C(a1 + 2, a1 + 47, v21);
  v2 = a1[5];
  v3 = a1[4] + a1[4];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v2 * (v5 + v5) - v4 * v3;
  v7 = -(v2 * (v4 + v4)) - v5 * v3;
  v8 = -1.0;
  v9 = v4 * (v4 + v4) + -1.0 + v5 * (v5 + v5);
  v20 = 0x3F8000003F800000;
  v18.i64[0] = 0;
  v18.i64[1] = 0x3F80000000000000;
  *&v3 = v21[0];
  *&v2 = v21[1];
  *&v4 = v21[2];
  *&v5 = v6;
  v10 = v7;
  *&v6 = v9;
  if (sub_19B66C3CC(&v20, &v18, v19, *&v3, *&v2, *&v4, *&v5, v10, *&v6, v11, v12, v13, v14, v15, 1065353216, 0))
  {
    v8 = sub_19B66D564(v18.f32);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

double sub_19B6B630C(double *a1, double *a2, double *a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 + v3;
  v6 = a1[1];
  v7 = *a1 + *a1;
  v8 = v6 + v6;
  v9 = v3 * (v3 + v3);
  v10 = (v6 + v6) * v6 + -1.0;
  v11 = (v4 + v4) * v4 + -1.0;
  v12 = v7 * v6;
  v13 = v7 * v4;
  v14 = v3 * v7;
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  *a3 = (v12 + v17) * a2[1] + (v9 + (*a1 + *a1) * *a1 + -1.0) * *a2 + (v13 - v16) * a2[2];
  a3[1] = (v9 + v10) * a2[1] + (v12 - v17) * *a2 + (v14 + v15) * a2[2];
  result = (v15 - v14) * a2[1] + (v13 + v16) * *a2 + (v9 + v11) * a2[2];
  a3[2] = result;
  return result;
}

void sub_19B6B63C0(uint64_t a1, double *a2, double *a3, double *a4, void *a5)
{
  v210 = *MEMORY[0x1E69E9840];
  v10.f64[0] = *a2;
  v11 = *a2;
  *(a1 + 352) = v11;
  v12 = *a3;
  v13 = *a3;
  *(a1 + 356) = v13;
  v14 = *a4;
  v15 = *a4;
  *(a1 + 360) = v15;
  if (*(a1 + 176) < 0.0)
  {
    sub_19B442618(a1 + 16, a2, a3, a4);
    *(a1 + 176) = *a5;
    v16 = *a2;
    *(a1 + 848) = v16;
    v17 = *a3;
    *(a1 + 852) = v17;
    v18 = *a4;
    *(a1 + 856) = v18;
    *(a1 + 888) = 0;
    sub_19B4425C0((a1 + 864), (a1 + 16));
    *(a1 + 8) = 1;
    goto LABEL_179;
  }

  v10.f64[1] = v12;
  v19 = vcvt_f32_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(*(a1 + 848)), vdupq_n_s64(0x3FB999999999999AuLL)), vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL), v10));
  *(a1 + 848) = v19;
  v20 = *(a1 + 856) * 0.1 + v14 * 0.9;
  *(a1 + 856) = v20;
  *buf = v19.f32[0];
  *v199 = v19.f32[1];
  *v172 = v20;
  sub_19B66F590(a1 + 608, buf);
  sub_19B66F590(a1 + 688, v199);
  sub_19B66F590(a1 + 768, v172);
  v21 = *a5;
  *(a1 + 176) = *a5;
  if (!*(a1 + 148))
  {
    goto LABEL_179;
  }

  v22 = *(a1 + 168);
  if (v21 < v22)
  {
    goto LABEL_179;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v23 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v24 = *a2;
      v25 = *a3;
      v26 = *a4;
      v27 = *a5;
      *buf = 134218752;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      v183 = v26;
      v184 = 2048;
      v185 = v27;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[Accelerometer9] x,%f,y,%f,z,%f,timestamp,%lf", buf, 0x2Au);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v29 = *a2;
      v30 = *a3;
      v31 = *a4;
      v32 = *a5;
      *v199 = 134218752;
      *&v199[4] = v29;
      *&v199[12] = 2048;
      *&v199[14] = v30;
      *&v199[22] = 2048;
      v200 = v31;
      v201 = 2048;
      v202 = v32;
      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v34 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 156);
      v36 = *(a1 + 160);
      v37 = *(a1 + 164);
      v38 = *(a1 + 584);
      if (v38)
      {
        v39 = (*(a1 + 536) / v38);
      }

      else
      {
        v39 = 0.0;
      }

      *buf = 134218752;
      *&buf[4] = v35;
      *&buf[12] = 2048;
      *&buf[14] = v36;
      *&buf[22] = 2048;
      v183 = v37;
      v184 = 2048;
      v185 = v39;
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEBUG, "[RotationRate9] %.3f, %.3f, %.3f, %.3f", buf, 0x2Au);
    }

    v40 = sub_19B420058();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v41 = *(a1 + 156);
      v42 = *(a1 + 160);
      v43 = *(a1 + 164);
      v44 = *(a1 + 584);
      if (v44)
      {
        v45 = (*(a1 + 536) / v44);
      }

      else
      {
        v45 = 0.0;
      }

      *v199 = 134218752;
      *&v199[4] = v41;
      *&v199[12] = 2048;
      *&v199[14] = v42;
      *&v199[22] = 2048;
      v200 = v43;
      v201 = 2048;
      v202 = v45;
      v46 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

  v47 = *a2;
  v48 = *a3;
  v49 = *a4;
  LODWORD(v22) = *(a1 + 136);
  v170 = *(a1 + 140);
  v171 = *&v22;
  LODWORD(v21) = *(a1 + 144);
  v50 = *(a1 + 148);
  v169 = *&v21;
  sub_19B6B52AC(a1, v21, *&v22);
  v51 = sqrt(v48 * v48 + v47 * v47 + v49 * v49);
  v52 = fabs(v51 + -1.0) / v51;
  if (v52 > 0.1)
  {
    goto LABEL_179;
  }

  if (*(a1 + 512) != 1 || *(a1 + 904))
  {
    goto LABEL_39;
  }

  v111 = fabsf(*(a1 + 156));
  if (v111 > 10.0)
  {
    goto LABEL_178;
  }

  v112 = fabsf(*(a1 + 160));
  if (v112 > 10.0)
  {
    goto LABEL_178;
  }

  v113 = fabsf(*(a1 + 164));
  if (v113 > 10.0)
  {
    goto LABEL_178;
  }

  v114 = *(a1 + 584);
  if (v114)
  {
    if ((*(a1 + 536) / v114) > 10.0)
    {
      goto LABEL_178;
    }
  }

  if (v111 > 3.14159265 || v112 > 3.14159265 || v113 > 3.14159265 || v114 && (*(a1 + 536) / v114) > 3.14159265)
  {
    if (v114 < 2 || (v115 = (v114 * *(a1 + 540)) - (*(a1 + 536) * *(a1 + 536)), v115 < 0.0) || (v115 / ((v114 - 1) * v114)) < 1.25)
    {
      sub_19B4425C0((a1 + 864), (a1 + 16));
      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v116 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v116, OS_LOG_TYPE_DEBUG, "rotating and going through.", buf, 2u);
        }

        v117 = sub_19B420058();
        if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || *(v117 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v199 = 0;
          v118 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v118);
          if (v118 != buf)
          {
            free(v118);
          }
        }
      }

      goto LABEL_39;
    }
  }

  sub_19B66F0F4(a1 + 592, v172);
  v168 = sqrt(*&v172[16] * *&v172[16] + *&v172[8] * *&v172[8] + v173 * v173);
  v119 = *(a1 + 896);
  if (v119 > 0.0 && *(a1 + 176) - v119 > 15.0 && v168 < 0.3)
  {
    sub_19B66F1D4(a1 + 592, buf);
    if (fabs(sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v183 * v183) + -1.0) <= 0.1)
    {
      *(a1 + 904) = 10;
      if (*(a1 + 472) != 1)
      {
        goto LABEL_245;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v147 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v147, OS_LOG_TYPE_DEBUG, "it's been too long. go through.", buf, 2u);
      }

      v148 = sub_19B420058();
      if (*(v148 + 160) <= 1 && *(v148 + 164) <= 1 && *(v148 + 168) <= 1 && !*(v148 + 152))
      {
        goto LABEL_245;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 == -1)
      {
        goto LABEL_190;
      }

      goto LABEL_264;
    }
  }

  if (*(a1 + 680) <= (*(a1 + 600) * 0.5))
  {
LABEL_178:
    sub_19B4425C0((a1 + 864), (a1 + 16));
    goto LABEL_179;
  }

  v120 = *(a1 + 584);
  if (v120)
  {
    if (*(*(*(a1 + 552) + (((v120 + *(a1 + 576) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v120 + *(a1 + 576) - 1) & 0x3FF)) > 0.2)
    {
      sub_19B4425C0((a1 + 864), (a1 + 16));
      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v121 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v122 = *(a1 + 864);
          v123 = *(a1 + 872);
          v124 = *(a1 + 880);
          *buf = 134218496;
          *&buf[4] = v122;
          *&buf[12] = 2048;
          *&buf[14] = v123;
          *&buf[22] = 2048;
          v183 = v124;
          _os_log_impl(&dword_19B41C000, v121, OS_LOG_TYPE_DEBUG, "grabing gravity, %.4f, %.4f, %.4f", buf, 0x20u);
        }

        v125 = sub_19B420058();
        if (*(v125 + 160) > 1 || *(v125 + 164) > 1 || *(v125 + 168) > 1 || *(v125 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          v126 = *(a1 + 864);
          v127 = *(a1 + 872);
          v128 = *(a1 + 880);
          *v199 = 134218496;
          *&v199[4] = v126;
          *&v199[12] = 2048;
          *&v199[14] = v127;
          *&v199[22] = 2048;
          v200 = v128;
          v129 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v129);
          if (v129 != buf)
          {
            free(v129);
          }
        }
      }
    }
  }

  if (v168 <= *(a1 + 504) * 0.75)
  {
    goto LABEL_245;
  }

  v130 = *(a1 + 864);
  v131 = *(a1 + 872);
  v132 = *(a1 + 880);
  v133 = fabs(*&v172[16] * v131 + *&v172[8] * v130 + v173 * v132);
  v167 = v168 - v133;
  v134 = *(a1 + 624);
  v135 = *(a1 + 704);
  v136 = *(a1 + 784);
  v193 = COERCE_DOUBLE(&unk_1F0E33EB0);
  v137 = v131 * v135 + v134 * v130 + v136 * v132;
  v194 = v134 - v137 * v130;
  v195 = v135 - v137 * v131;
  v196 = v136 - v137 * v132;
  v165 = v137;
  v166 = fabs(v196) + fabs(v194) + fabs(v195);
  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v138 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219264;
      *&buf[4] = *&v172[8];
      *&buf[12] = 2048;
      *&buf[14] = *&v172[16];
      *&buf[22] = 2048;
      v183 = v173;
      v184 = 2048;
      v185 = v168;
      v186 = 2048;
      v187 = v133;
      v188 = 2048;
      v189 = v168 - v133;
      _os_log_impl(&dword_19B41C000, v138, OS_LOG_TYPE_DEBUG, "std, %.3f, %.3f, %.3f, mag, %.3f, dot, %.3f, leftover, %.3f", buf, 0x3Eu);
    }

    v139 = sub_19B420058();
    if (*(v139 + 160) > 1 || *(v139 + 164) > 1 || *(v139 + 168) > 1 || *(v139 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v199 = 134219264;
      *&v199[4] = *&v172[8];
      *&v199[12] = 2048;
      *&v199[14] = *&v172[16];
      *&v199[22] = 2048;
      v200 = v173;
      v201 = 2048;
      v202 = v168;
      v203 = 2048;
      v204 = v133;
      v205 = 2048;
      v206 = v168 - v133;
      v140 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v140);
      if (v140 != buf)
      {
        free(v140);
      }
    }

    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v141 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      *&buf[4] = v194;
      *&buf[12] = 2048;
      *&buf[14] = v195;
      *&buf[22] = 2048;
      v183 = v196;
      v184 = 2048;
      v185 = v165;
      v186 = 2048;
      v187 = v166;
      _os_log_impl(&dword_19B41C000, v141, OS_LOG_TYPE_DEBUG, "sum, %.3f, %.3f, %.3f, dot, %.3f, leftover, %.3f", buf, 0x34u);
    }

    v142 = sub_19B420058();
    if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v199 = 134219008;
      *&v199[4] = v194;
      *&v199[12] = 2048;
      *&v199[14] = v195;
      *&v199[22] = 2048;
      v200 = v196;
      v201 = 2048;
      v202 = v165;
      v203 = 2048;
      v204 = v166;
      v143 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v143);
      if (v143 != buf)
      {
        free(v143);
      }
    }
  }

  if (v167 > *(a1 + 504))
  {
    goto LABEL_194;
  }

  v144 = *(a1 + 584);
  if (v144)
  {
    v145 = 0.0;
    if ((*(a1 + 536) / v144) > 1.57079633)
    {
      v145 = 1.0;
    }
  }

  else
  {
    v145 = 0.0;
  }

  if (v166 > (v145 * 0.5 + 1.0) * 6.0)
  {
LABEL_194:
    *(a1 + 888) = 0;
    goto LABEL_179;
  }

  if (v167 >= 0.01 || v166 >= 0.6)
  {
    v153 = *(a1 + 888) + 1;
    *(a1 + 888) = v153;
    if (!v144)
    {
      goto LABEL_232;
    }

    v154 = (a1 + 888);
    v150 = *(a1 + 536) / v144;
  }

  else
  {
    if (!v144)
    {
      v153 = *(a1 + 888) + 1;
      *(a1 + 888) = v153;
      goto LABEL_232;
    }

    v150 = *(a1 + 536) / v144;
    if (v150 > 0.5)
    {
      if (*(a1 + 472) != 1)
      {
        goto LABEL_245;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v151 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v151, OS_LOG_TYPE_DEBUG, "===========Skip ahead.", buf, 2u);
      }

      v152 = sub_19B420058();
      if (*(v152 + 160) <= 1 && *(v152 + 164) <= 1 && *(v152 + 168) <= 1 && !*(v152 + 152))
      {
        goto LABEL_245;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 == -1)
      {
        goto LABEL_190;
      }

LABEL_264:
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
LABEL_190:
      *v199 = 0;
      v149 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v149);
      if (v149 != buf)
      {
        free(v149);
      }

      goto LABEL_245;
    }

    v154 = (a1 + 888);
    v153 = *(a1 + 888) + 1;
    *(a1 + 888) = v153;
  }

  if (v150 > 1.0 && *(*(*(a1 + 552) + (((v144 + *(a1 + 576) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v144 + *(a1 + 576) - 1) & 0x3FF)) < 0.2)
  {
    sub_19B66F1D4(a1 + 592, buf);
    v155 = sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v183 * v183);
    if (fabs(v155 + -1.0) / v155 >= 0.025)
    {
      v153 = *v154;
    }

    else
    {
      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v156 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v156, OS_LOG_TYPE_DEBUG, "Skip ahead------.", buf, 2u);
        }

        v157 = sub_19B420058();
        if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v199 = 0;
          v158 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v158);
          if (v158 != buf)
          {
            free(v158);
          }
        }
      }

      v153 = *v154 + 2;
      *v154 = v153;
    }
  }

LABEL_232:
  if (v153 >= *(a1 + 496))
  {
LABEL_245:
    if (*(a1 + 512) == 1 && v168 > 0.2)
    {
      v161 = *(a1 + 584);
      if (!v161 || *(*(*(a1 + 552) + (((v161 + *(a1 + 576) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v161 + *(a1 + 576) - 1) & 0x3FF)) < 0.75 && (*(a1 + 536) / v161) < 1.0)
      {
        sub_19B66F1D4(a1 + 592, v199);
        v47 = *&v199[8];
        v48 = *&v199[16];
        v49 = v200;
        if (*(a1 + 472) == 1)
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          v162 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v162, OS_LOG_TYPE_DEBUG, "using mean accel", buf, 2u);
          }

          v163 = sub_19B420058();
          if (*(v163 + 160) > 1 || *(v163 + 164) > 1 || *(v163 + 168) > 1 || *(v163 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
            }

            *v172 = 0;
            v164 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v164);
            if (v164 != buf)
            {
              free(v164);
            }
          }
        }

        v51 = sqrt(v48 * v48 + v47 * v47 + v49 * v49);
        v52 = fabs(v51 + -1.0) / v51;
      }
    }

LABEL_39:
    *(a1 + 888) = 0;
    if (*(a1 + 472) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v53 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v47;
        *&buf[12] = 2048;
        *&buf[14] = v48;
        *&buf[22] = 2048;
        v183 = v49;
        v184 = 2048;
        v185 = v51;
        _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "accM, (%.4f, %.4f, %.4f), mag, %.3f", buf, 0x2Au);
      }

      v54 = sub_19B420058();
      if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        *v199 = 134218752;
        *&v199[4] = v47;
        *&v199[12] = 2048;
        *&v199[14] = v48;
        *&v199[22] = 2048;
        v200 = v49;
        v201 = 2048;
        v202 = v51;
        v55 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }
      }
    }

    v56 = v52 * (0.015 / (exp((0.9 - sqrtf((((v170 / v50) * (v170 / v50)) + ((v171 / v50) * (v171 / v50))) + ((v169 / v50) * (v169 / v50)))) / 0.08) + 1.0)) + 0.00000900000032;
    if (*(a1 + 512) == 1 && !*(a1 + 904))
    {
      v56 = v56 * 0.85;
    }

    v57 = 0;
    v58 = 0;
    v59 = v48 / v51;
    v60 = *(a1 + 16);
    v61 = *(a1 + 24);
    v62 = *(a1 + 32) + *(a1 + 32);
    v63 = *(a1 + 40);
    v64 = v63 * (v61 + v61) - v60 * v62;
    v65 = -(v63 * (v60 + v60)) - v61 * v62;
    v66 = v60 * (v60 + v60) + -1.0 + v61 * (v61 + v61);
    *&v60 = v65;
    *&v62 = v66;
    v209[0] = 0;
    v209[1] = LODWORD(v62);
    *&v209[2] = -*&v60;
    *&v61 = v64;
    *&v209[3] = -*&v62;
    v209[4] = 0;
    v209[5] = LODWORD(v61);
    v209[6] = LODWORD(v60);
    *&v209[7] = -*&v61;
    v209[8] = 0;
    do
    {
      v67 = v57;
      v68 = 3;
      do
      {
        *&v199[v67] = *(v209 + v67);
        v67 += 12;
        --v68;
      }

      while (v68);
      ++v58;
      v57 += 4;
    }

    while (v58 != 3);
    bzero(&v202 + 2, 0x24uLL);
    v69 = v56;
    *v198 = v69;
    *&v198[1] = v69;
    *&v198[2] = v69;
    v70 = v47 / v51 - v64;
    v71 = v59 - v65;
    *v197 = v70;
    *&v197[1] = v71;
    v72 = v49 / v51 - v66;
    *&v197[2] = v72;
    sub_19B6B5B70(&v193, (a1 + 112), v199, v198, v197, v192);
    v73 = v65 * v194 + v193 * v64 + v195 * v66;
    v74 = v193 - v73 * v64;
    v75 = v194 - v73 * v65;
    v193 = v74;
    v194 = v75;
    v76 = v195 - v73 * v66;
    v195 = v76;
    sub_19B6B8530(a1, &v193);
    if (*(a1 + 472))
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v77 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(a1 + 88);
        v79 = *(a1 + 96);
        v80 = *(a1 + 104);
        v81 = *(a1 + 176);
        *buf = 134219520;
        *&buf[4] = v74;
        *&buf[12] = 2048;
        *&buf[14] = v75;
        *&buf[22] = 2048;
        v183 = v76;
        v184 = 2048;
        v185 = v78;
        v186 = 2048;
        v187 = v79;
        v188 = 2048;
        v189 = v80;
        v190 = 2048;
        v191 = v81;
        _os_log_impl(&dword_19B41C000, v77, OS_LOG_TYPE_DEBUG, "[KalmanFilterStates9-AccelUpdate] %f,%f,%f,%f,%f,%f,%f", buf, 0x48u);
      }

      v82 = sub_19B420058();
      if (*(v82 + 160) > 1 || *(v82 + 164) > 1 || *(v82 + 168) > 1 || *(v82 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v83 = *(a1 + 88);
        v84 = *(a1 + 96);
        v85 = *(a1 + 104);
        v86 = *(a1 + 176);
        *v172 = 134219520;
        *&v172[4] = v74;
        *&v172[12] = 2048;
        *&v172[14] = v75;
        *&v172[22] = 2048;
        v173 = v76;
        v174 = 2048;
        v175 = v83;
        v176 = 2048;
        v177 = v84;
        v178 = 2048;
        v179 = v85;
        v180 = 2048;
        v181 = v86;
        v87 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusion9AxisMekf::doAccelerometerMeasurementUpdate(double *, double)", "CoreLocation: %s\n", v87);
        if (v87 != buf)
        {
          free(v87);
        }
      }
    }

    if (*(a1 + 512) == 1)
    {
      sub_19B4425C0((a1 + 864), (a1 + 16));
    }

    *(a1 + 896) = *a5;
    v88 = *(a1 + 904);
    v89 = __OFSUB__(v88, 1);
    v90 = v88 - 1;
    if (v90 < 0 == v89)
    {
      *(a1 + 904) = v90;
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v91 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v91, OS_LOG_TYPE_DEBUG, "Doing some crude updates to catch up.", buf, 2u);
      }

      v92 = sub_19B420058();
      if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        *v199 = 0;
        v93 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v93);
        if (v93 != buf)
        {
          free(v93);
        }
      }
    }

    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v94 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v95 = *(a1 + 64);
        v96 = *(a1 + 72);
        v97 = *(a1 + 80);
        v98 = *(a1 + 88);
        v99 = *(a1 + 96);
        v100 = *(a1 + 104);
        v101 = *a5;
        *buf = 134219520;
        *&buf[4] = v95;
        *&buf[12] = 2048;
        *&buf[14] = v96;
        *&buf[22] = 2048;
        v183 = v97;
        v184 = 2048;
        v185 = v98;
        v186 = 2048;
        v187 = v99;
        v188 = 2048;
        v189 = v100;
        v190 = 2048;
        v191 = v101;
        _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_DEBUG, "[KalmanFilterStates9] %f,%f,%f,%f,%f,%f,%f", buf, 0x48u);
      }

      v102 = sub_19B420058();
      if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v103 = *(a1 + 64);
        v104 = *(a1 + 72);
        v105 = *(a1 + 80);
        v106 = *(a1 + 88);
        v107 = *(a1 + 96);
        v108 = *(a1 + 104);
        v109 = *a5;
        *v199 = 134219520;
        *&v199[4] = v103;
        *&v199[12] = 2048;
        *&v199[14] = v104;
        *&v199[22] = 2048;
        v200 = v105;
        v201 = 2048;
        v202 = v106;
        v203 = 2048;
        v204 = v107;
        v205 = 2048;
        v206 = v108;
        v207 = 2048;
        v208 = v109;
        v110 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v110);
LABEL_99:
        if (v110 != buf)
        {
          free(v110);
        }

        goto LABEL_179;
      }
    }

    goto LABEL_179;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v159 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v159, OS_LOG_TYPE_DEBUG, "Taking another look.", buf, 2u);
    }

    v160 = sub_19B420058();
    if (*(v160 + 160) > 1 || *(v160 + 164) > 1 || *(v160 + 168) > 1 || *(v160 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v199 = 0;
      v110 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusion9AxisMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v110);
      goto LABEL_99;
    }
  }

LABEL_179:
  v146 = *MEMORY[0x1E69E9840];
}

double sub_19B6B8530(uint64_t a1, double *a2)
{
  sub_19B6B6138(v9, a2);
  sub_19B447A1C(v8, v9, (a1 + 16));
  v4 = 0;
  v5 = v8[1];
  *(a1 + 16) = v8[0];
  *(a1 + 32) = v5;
  v6 = a1 + 88;
  do
  {
    result = a2[v4 + 3] + *(v6 + v4 * 8);
    *(v6 + v4 * 8) = result;
    ++v4;
  }

  while (v4 != 3);
  return result;
}

void sub_19B6B85A4(uint64_t a1)
{
  sub_19B43FA98((a1 + 208));
  sub_19B43FA98((a1 + 280));
  *(a1 + 440) = 256;
  *(a1 + 436) = 0;
}

BOOL sub_19B6B85E0(uint64_t a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, double *a5)
{
  v182 = *MEMORY[0x1E69E9840];
  *(a1 + 9) = 0;
  v10 = *(a2 + 10);
  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v11 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a5;
      v13 = *a3;
      v14 = *a4;
      *buf = 134218752;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      *&buf[18] = 1024;
      *&buf[20] = v13;
      LOWORD(v179) = 1024;
      *(&v179 + 2) = v14;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] timestamp,%f,calibration level %d, compassHasAlignedToStableField %d, useMagneticRefX %d", buf, 0x1Eu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v16 = *a5;
      v17 = *a3;
      v18 = *a4;
      *v167 = 134218752;
      *&v167[4] = v16;
      *&v167[12] = 1024;
      *&v167[14] = v10;
      *&v167[18] = 1024;
      *&v167[20] = v17;
      LOWORD(v168) = 1024;
      *(&v168 + 2) = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  if (v10 <= 2)
  {
    if (v10 <= 0)
    {
      v20 = 0;
      *(a1 + 184) = 0xBFF0000000000000;
      *(a1 + 441) = 1;
      *(a1 + 11) = 0;
      goto LABEL_172;
    }

LABEL_171:
    v20 = 0;
    goto LABEL_172;
  }

  if (*a4 == 1 && *(a1 + 11) != 1 || *(a1 + 184) < 0.0)
  {
    *(a1 + 441) = 1;
  }

  if (*(a1 + 176) < 0.0)
  {
    if (*(a1 + 472) != 1)
    {
      goto LABEL_171;
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v21 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 176);
      *buf = 134217984;
      *&buf[4] = v22;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] fLastAccelTime,%f", buf, 0xCu);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      goto LABEL_171;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v24 = *(a1 + 176);
    *v167 = 134217984;
    *&v167[4] = v24;
    goto LABEL_34;
  }

  if (*a3 == 1)
  {
    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v26 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] magneticFieldAdjusted!", buf, 2u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        *v167 = 0;
        v28 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }
    }

    v20 = 0;
    *(a1 + 440) = 1;
    *(a1 + 432) = 0;
    goto LABEL_172;
  }

  v29 = *(a1 + 40);
  v30 = *(a1 + 32) + *(a1 + 32);
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = v29 * (v32 + v32) - v31 * v30;
  v34 = -(v29 * (v31 + v31)) - v32 * v30;
  v177[0] = v33;
  v177[1] = v34;
  v35 = v31 * (v31 + v31) + -1.0 + v32 * (v32 + v32);
  v177[2] = v35;
  v36 = v34 * *(a1 + 160) + *(a1 + 156) * v33 + *(a1 + 164) * v35;
  *&v30 = *(a1 + 436) + (v36 * 57.296) * *(a1 + 488);
  *(a1 + 436) = LODWORD(v30);
  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v37 = off_1ED71C808;
    v38 = v36;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(a1 + 436);
      *buf = 134218240;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = v39;
      _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "rotAroundGrav, %.3f, sum, %.3f", buf, 0x16u);
    }

    v40 = sub_19B420058();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v41 = *(a1 + 436);
      *v167 = 134218240;
      *&v167[4] = v38;
      *&v167[12] = 2048;
      *&v167[14] = v41;
      v42 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  v43 = *(a1 + 584);
  v44 = 0.0;
  if (v43)
  {
    v45 = *(a1 + 536);
    v46 = v45 / v43;
    if (v43 != 1)
    {
      v47 = (v43 * *(a1 + 540)) - (v45 * v45);
      if (v47 >= 0.0)
      {
        v44 = v47 / ((v43 - 1) * v43);
      }
    }
  }

  else
  {
    v46 = 0.0;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v48 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v44;
      _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_DEBUG, "[CompassIntoKF] omegaMag, %.3f, omegaVar, %.3f", buf, 0x16u);
    }

    v49 = sub_19B420058();
    if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      *v167 = 134218240;
      *&v167[4] = v46;
      *&v167[12] = 2048;
      *&v167[14] = v44;
      v50 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  *(a1 + 364) = *a2;
  *(a1 + 368) = *(a2 + 1);
  *(a1 + 372) = *(a2 + 2);
  if ((*a4 & 1) == 0 && *(a1 + 440) == 1)
  {
    v20 = 0;
    if (v44 >= 2.25 || fabsf(*(a1 + 436)) <= 90.0 || v46 >= 1.57079633)
    {
      goto LABEL_172;
    }

    sub_19B4200DC(a1 + 208, a2 + 12);
    sub_19B4200DC(a1 + 280, a2 + 13);
    v51 = *(a1 + 272);
    if (v51 < *(a1 + 216))
    {
      goto LABEL_171;
    }

    v52 = 0.0;
    v53 = 0.0;
    if (v51)
    {
      v53 = *(a1 + 224) / v51;
    }

    v54 = *(a1 + 344);
    if (v54)
    {
      v52 = *(a1 + 296) / v54;
    }

    v55 = *(a1 + 424);
    v56 = 0.0;
    v57 = 0.0;
    if (v51 >= 2)
    {
      v58 = (v51 * *(a1 + 228)) - (*(a1 + 224) * *(a1 + 224));
      if (v58 >= 0.0)
      {
        v57 = v58 / ((v51 - 1) * v51);
      }
    }

    v59 = vabds_f32(v53, v55);
    if (v54 >= 2)
    {
      v60 = (v54 * *(a1 + 300)) - (*(a1 + 296) * *(a1 + 296));
      v61 = (v54 - 1) * v54;
      if (v60 >= 0.0)
      {
        v56 = v60 / v61;
      }

      else
      {
        v56 = 0.0;
      }
    }

    v161 = vabds_f32(v52, *(a1 + 428));
    v62 = v59 / v55;
    if (*(a1 + 472) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v63 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v62;
        *&buf[12] = 2048;
        *&buf[14] = v161;
        *&buf[22] = 2048;
        v179 = v57;
        v180 = 2048;
        *v181 = v56;
        _os_log_impl(&dword_19B41C000, v63, OS_LOG_TYPE_DEBUG, "FieldDiff, %.3f, %.3f, %.3f, %.3f", buf, 0x2Au);
      }

      v64 = sub_19B420058();
      if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        *v167 = 134218752;
        *&v167[4] = v62;
        *&v167[12] = 2048;
        *&v167[14] = v161;
        *&v167[22] = 2048;
        v168 = v57;
        v169 = 2048;
        *v170 = v56;
        v65 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v65);
        if (v65 != buf)
        {
          free(v65);
        }
      }
    }

    if (v62 < 0.07 && v161 < 4.0 && v57 < 2.25 && v56 < 4.0)
    {
      *(a1 + 432) = 0;
    }

    else
    {
      v69 = *(a1 + 432);
      *(a1 + 432) = v69 + 1;
      if (v69 < 2)
      {
        sub_19B43FA98((a1 + 208));
        sub_19B43FA98((a1 + 280));
        if (*(a1 + 472) != 1)
        {
          goto LABEL_171;
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v155 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v156 = *(a1 + 432);
          *buf = 67109120;
          *&buf[4] = v156;
          _os_log_impl(&dword_19B41C000, v155, OS_LOG_TYPE_DEBUG, "Checking again for magField. checkcount, %d", buf, 8u);
        }

        v157 = sub_19B420058();
        if (*(v157 + 160) <= 1 && *(v157 + 164) <= 1 && *(v157 + 168) <= 1 && !*(v157 + 152))
        {
          goto LABEL_171;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v158 = *(a1 + 432);
        *v167 = 67109120;
        *&v167[4] = v158;
        goto LABEL_34;
      }

      if (*(a1 + 472) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v70 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v70, OS_LOG_TYPE_DEBUG, "Aborted yawUpdate.", buf, 2u);
        }

        v71 = sub_19B420058();
        if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v167 = 0;
          v72 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v72);
          if (v72 != buf)
          {
            free(v72);
          }
        }
      }

      sub_19B6B85A4(a1);
    }
  }

  v73 = (a1 + 364);
  if (*(a1 + 441) == 1)
  {
    if (*a4 != 1)
    {
      *(a1 + 424) = a2[6];
      *v171 = vcvtq_f64_f32(*v73);
      *&v171[16] = *(a1 + 372);
      *v167 = vnegq_f64(*(a1 + 16));
      v90 = *(a1 + 40);
      *&v167[16] = -*(a1 + 32);
      v168 = v90;
      sub_19B6B630C(v167, v171, (a1 + 400));
      v91 = *(a1 + 400);
      v92 = vmulq_f64(v91, v91);
      v93 = *(a1 + 416);
      v94 = sqrt(v92.f64[1] + v91.f64[0] * v91.f64[0] + v93 * v93);
      if (v94 <= 0.0)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v126 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v126, OS_LOG_TYPE_INFO, "Warning: Compass outputs field magnitude 0.", buf, 2u);
        }

        v127 = sub_19B420058();
        if (*(v127 + 160) > 1 || *(v127 + 164) > 1 || *(v127 + 168) > 1 || *(v127 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
          }

          *v175 = 0;
          v128 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v128);
          if (v128 != buf)
          {
            free(v128);
          }
        }

        v104 = -1.0;
        v105 = 184;
      }

      else
      {
        *(a1 + 448) = vdivq_f64(v91, vdupq_lane_s64(*&v94, 0));
        *(a1 + 464) = v93 / v94;
        if (*(a1 + 472) == 1)
        {
          if (qword_1EAFE2890 != -1)
          {
            dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
          }

          v95 = qword_1EAFE2898;
          if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
          {
            v96 = *(a1 + 448);
            v97 = *(a1 + 456);
            v98 = *(a1 + 464);
            *buf = 134218496;
            *&buf[4] = v96;
            *&buf[12] = 2048;
            *&buf[14] = v97;
            *&buf[22] = 2048;
            v179 = v98;
            _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "[!!!CompassInertialReference] x,%f,y,%f,z,%f", buf, 0x20u);
          }

          v99 = sub_19B420058();
          if (*(v99 + 160) > 1 || *(v99 + 164) > 1 || *(v99 + 168) > 1 || *(v99 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2890 != -1)
            {
              dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
            }

            v100 = *(a1 + 448);
            v101 = *(a1 + 456);
            v102 = *(a1 + 464);
            *v175 = 134218496;
            *&v175[4] = v100;
            *&v175[12] = 2048;
            *&v175[14] = v101;
            *&v175[22] = 2048;
            v176 = v102;
            v103 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v103);
            if (v103 != buf)
            {
              free(v103);
            }
          }
        }

        v104 = *a5;
        *(a1 + 184) = *a5;
        v105 = 200;
      }

      v20 = 0;
      *(a1 + v105) = v104;
      goto LABEL_172;
    }

    if ((*(a1 + 11) & 1) == 0)
    {
      v106 = *(a1 + 40);
      v107 = *(a1 + 32) + *(a1 + 32);
      v108 = *(a1 + 16);
      v109 = *(a1 + 24);
      v110 = v106 * (v109 + v109) - v108 * v107;
      *&v107 = -(v106 * (v108 + v108)) - v109 * v107;
      *&v106 = -*&v107;
      *&v108 = v108 * (v108 + v108) + -1.0 + v109 * (v109 + v109);
      *&v107 = sqrtf(((*&v107 * *&v107) + (v110 * v110)) + (*&v108 * *&v108));
      v165[0] = -v110 / *&v107;
      v165[1] = *&v106 / *&v107;
      v166 = -*&v108 / *&v107;
      v163 = *a2;
      v164 = *(a2 + 2);
      v111 = ((*&v106 / *&v107) * v164) - (v166 * *(&v163 + 1));
      *&v109 = (v166 * *&v163) - (v165[0] * v164);
      v112 = (v165[0] * *(&v163 + 1)) - ((*&v106 / *&v107) * *&v163);
      v113 = sqrtf(((*&v109 * *&v109) + (v111 * v111)) + (v112 * v112));
      v162[0] = v111 / v113;
      v162[1] = *&v109 / v113;
      v162[2] = v112 / v113;
      *&v163 = ((*&v109 / v113) * v166) - ((v112 / v113) * (*&v106 / *&v107));
      *(&v163 + 1) = ((v112 / v113) * v165[0]) - ((v111 / v113) * v166);
      v164 = ((v111 / v113) * (*&v106 / *&v107)) - ((*&v109 / v113) * v165[0]);
      sub_19B688DEC(v167, &v163, v162, v165);
      v114 = v168;
      v115 = *v167;
      *(a1 + 32) = v168;
      *(a1 + 40) = v115;
      *(a1 + 11) = 1;
      *(a1 + 441) = 0;
      v116 = *&v167[8];
      *(a1 + 16) = *&v167[8];
      *(a1 + 184) = *a5;
      *v175 = vnegq_f64(v116);
      *&v175[16] = -v114;
      v176 = v115;
      v173 = vcvtq_f64_f32(*v73);
      v174 = *(a1 + 372);
      sub_19B6B630C(v175, v173.f64, (a1 + 376));
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v117 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        v118 = *(a1 + 376);
        v119 = *(a1 + 384);
        v120 = *(a1 + 392);
        *buf = 134218496;
        *&buf[4] = v118;
        *&buf[12] = 2048;
        *&buf[14] = v119;
        *&buf[22] = 2048;
        v179 = v120;
        _os_log_impl(&dword_19B41C000, v117, OS_LOG_TYPE_DEBUG, "fCorrected, %.3f, %.3f, %.3f", buf, 0x20u);
      }

      v121 = sub_19B420058();
      if (*(v121 + 160) > 1 || *(v121 + 164) > 1 || *(v121 + 168) > 1 || *(v121 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
        }

        v122 = *(a1 + 376);
        v123 = *(a1 + 384);
        v124 = *(a1 + 392);
        *v171 = 134218496;
        *&v171[4] = v122;
        *&v171[12] = 2048;
        *&v171[14] = v123;
        *&v171[22] = 2048;
        v172 = v124;
        v125 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v125);
        if (v125 != buf)
        {
          free(v125);
        }
      }

      v20 = 1;
      *(a1 + 9) = 1;
      *(a1 + 456) = 0;
      *(a1 + 464) = 0;
      *(a1 + 448) = 0x3FF0000000000000;
      *(a1 + 200) = *a5;
      goto LABEL_172;
    }

    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v74 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(a1 + 448);
        v76 = *(a1 + 456);
        v77 = *(a1 + 464);
        v78 = *a5;
        *buf = 134219008;
        *&buf[4] = v75;
        *&buf[12] = 2048;
        *&buf[14] = v76;
        *&buf[22] = 2048;
        v179 = v77;
        v180 = 1024;
        *v181 = v10;
        *&v181[4] = 2048;
        *&v181[6] = v78;
        _os_log_impl(&dword_19B41C000, v74, OS_LOG_TYPE_DEBUG, "[!!!CompassInertialReference] x,%f,y,%f,z,%f,calibrationLevel,%d,timestamp,%lf", buf, 0x30u);
      }

      v79 = sub_19B420058();
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v80 = *(a1 + 448);
        v81 = *(a1 + 456);
        v82 = *(a1 + 464);
        v83 = *a5;
        *v167 = 134219008;
        *&v167[4] = v80;
        *&v167[12] = 2048;
        *&v167[14] = v81;
        *&v167[22] = 2048;
        v168 = v82;
        v169 = 1024;
        *v170 = v10;
        *&v170[4] = 2048;
        *&v170[6] = v83;
        v84 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v84);
        if (v84 != buf)
        {
          free(v84);
        }
      }
    }
  }

  if (*(a1 + 440) != 1)
  {
    goto LABEL_171;
  }

  if (*(a1 + 472) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
    }

    v85 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_DEBUG, "UpdatingYaw!", buf, 2u);
    }

    v86 = sub_19B420058();
    if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v167 = 0;
      v87 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v87);
      if (v87 != buf)
      {
        free(v87);
      }
    }
  }

  v20 = 0;
  if (v46 <= 5.0 && v44 <= 8.0)
  {
    if (*a5 < *(a1 + 168))
    {
      goto LABEL_171;
    }

    *(a1 + 184) = *a5;
    if (*(a1 + 472) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v129 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v130 = *(a1 + 364);
        v131 = *(a1 + 368);
        v132 = *(a1 + 372);
        v133 = *a5;
        *buf = 134218752;
        *&buf[4] = v130;
        *&buf[12] = 2048;
        *&buf[14] = v131;
        *&buf[22] = 2048;
        v179 = v132;
        v180 = 2048;
        *v181 = v133;
        _os_log_impl(&dword_19B41C000, v129, OS_LOG_TYPE_DEBUG, "[Magnetometer9] x,%f,y,%f,z,%f,timestamp,%lf", buf, 0x2Au);
      }

      v134 = sub_19B420058();
      if (*(v134 + 160) > 1 || *(v134 + 164) > 1 || *(v134 + 168) > 1 || *(v134 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
        }

        v135 = *(a1 + 364);
        v136 = *(a1 + 368);
        v137 = *(a1 + 372);
        v138 = *a5;
        *v167 = 134218752;
        *&v167[4] = v135;
        *&v167[12] = 2048;
        *&v167[14] = v136;
        *&v167[22] = 2048;
        v168 = v137;
        v169 = 2048;
        *v170 = v138;
        v139 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v139);
        if (v139 != buf)
        {
          free(v139);
        }
      }
    }

    v140 = *(a1 + 364);
    v141 = *(a1 + 368);
    v142 = *(a1 + 372);
    v143 = sqrt(v141 * v141 + v140 * v140 + v142 * v142);
    if (v143 <= 0.0)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v153 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v153, OS_LOG_TYPE_INFO, "Warning: Hey! Compass outputs field magnitude 0.", buf, 2u);
      }

      v154 = sub_19B420058();
      if (*(v154 + 160) <= 1 && *(v154 + 164) <= 1 && *(v154 + 168) <= 1 && !*(v154 + 152))
      {
        goto LABEL_171;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v167 = 0;
    }

    else
    {
      v144 = v140 / v143;
      v145 = v141 / v143;
      *v167 = v144;
      *&v167[8] = v145;
      v146 = v142 / v143;
      *&v167[16] = v146;
      v147 = *a4;
      if ((v147 & 1) == 0)
      {
        goto LABEL_234;
      }

      v148 = 0;
      v149 = -(v34 * v145 + v144 * v33 + v146 * v35);
      do
      {
        *&v167[v148 * 8] = *&v167[v148 * 8] + v149 * v177[v148];
        ++v148;
      }

      while (v148 != 3);
      v150 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*v167, *v167).f64[1]) + *v167 * *v167 + *&v167[16] * *&v167[16]);
      if (v150 > 0.001)
      {
        *v167 = vdivq_f64(*v167, vdupq_lane_s64(*&v150, 0));
        *&v167[16] = *&v167[16] / v150;
LABEL_234:
        v151 = sub_19B6BA4D8(a1, v167, v10, v147);
        *buf = vnegq_f64(*(a1 + 16));
        v152 = *(a1 + 40);
        *&buf[16] = -*(a1 + 32);
        v179 = v152;
        *v175 = vcvtq_f64_f32(*v73);
        *&v175[16] = *(a1 + 372);
        sub_19B6B630C(buf, v175, (a1 + 376));
        v20 = v151 >= 0.1;
        if (v151 < 0.1)
        {
          sub_19B6B85A4(a1);
          *(a1 + 440) = 0;
        }

        goto LABEL_172;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      v159 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v159, OS_LOG_TYPE_INFO, "Warning: Hey! Compass outputs field magnitude 0.", buf, 2u);
      }

      v160 = sub_19B420058();
      if (*(v160 + 160) <= 1 && *(v160 + 164) <= 1 && *(v160 + 168) <= 1 && !*(v160 + 152))
      {
        goto LABEL_171;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29940);
      }

      *v175 = 0;
    }

LABEL_34:
    v25 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLSensorFusion9AxisMekf::feedCompassData(const CLMotionTypeCompass &, const BOOL &, const BOOL &, const CFTimeInterval &)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }

    goto LABEL_171;
  }

LABEL_172:
  v88 = *MEMORY[0x1E69E9840];
  return v20;
}