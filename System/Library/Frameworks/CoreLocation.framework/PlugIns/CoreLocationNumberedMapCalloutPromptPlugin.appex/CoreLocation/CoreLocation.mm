void sub_100002D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100003F30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100004070(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t Callout::to_string@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result > 1)
  {
    if (result == 2)
    {
      *(a2 + 23) = 5;
      *a2 = 1751607666;
      *(a2 + 4) = 116;
    }

    else if (result == 3)
    {
      *(a2 + 23) = 6;
      *a2 = 1953787746;
      *(a2 + 4) = 28015;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      *(a2 + 23) = 4;
      *a2 = 1952867692;
    }
  }

  else
  {
    *(a2 + 23) = 2;
    *a2 = 28789;
  }

  return result;
}

void sub_1000045EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_100015A70 != -1)
    {
      sub_100008AF4();
    }

    v4 = qword_100015A78;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_10000C551;
      *&buf[18] = 1026;
      *&buf[20] = [v3 authorizationDenied];
      *&buf[24] = 1026;
      *&buf[26] = [v3 locationUnavailable];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received valid update, authorizationDenied:%{public}hhd, locationUnavailable:%{public}hhd}", buf, 0x1Eu);
    }

    if (qword_100015A70 != -1)
    {
      sub_100008ACC();
    }

    v5 = qword_100015A78;
    if (os_signpost_enabled(v5))
    {
      v6 = [v3 authorizationDenied];
      v7 = [v3 locationUnavailable];
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_10000C551;
      *&buf[18] = 1026;
      *&buf[20] = v6;
      *&buf[24] = 1026;
      *&buf[26] = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "received valid update", "{msg%{public}.0s:received valid update, authorizationDenied:%{public}hhd, locationUnavailable:%{public}hhd}", buf, 0x1Eu);
    }

    if (([v3 authorizationDenied] & 1) == 0 && (objc_msgSend(v3, "locationUnavailable") & 1) == 0)
    {
      v8 = [v3 location];
      v9 = v8 == 0;

      if (!v9)
      {
        v10 = [v3 location];
        [*(a1 + 32) setCurrentLocation:v10];

        v38 = 0u;
        memset(v39, 0, sizeof(v39));
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(buf, 0, sizeof(buf));
        v11 = [*(a1 + 32) currentLocation];
        v12 = v11;
        if (v11)
        {
          [v11 clientLocation];
        }

        else
        {
          v38 = 0u;
          memset(v39, 0, sizeof(v39));
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        if (qword_100015A70 != -1)
        {
          sub_100008ACC();
        }

        v15 = qword_100015A78;
        if (os_log_type_enabled(qword_100015A78, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 68289539;
          v25 = 0;
          v26 = 2082;
          v27 = &unk_10000C551;
          v28 = 1040;
          v29 = 156;
          v30 = 2101;
          v31 = buf;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received valid update with valid clientLocation, location:%{sensitive, location:CLClientLocation}.*P}", &v24, 0x22u);
        }

        if (qword_100015A70 != -1)
        {
          sub_100008ACC();
        }

        v16 = qword_100015A78;
        if (os_signpost_enabled(qword_100015A78))
        {
          v24 = 68289539;
          v25 = 0;
          v26 = 2082;
          v27 = &unk_10000C551;
          v28 = 1040;
          v29 = 156;
          v30 = 2101;
          v31 = buf;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "received valid update with valid clientLocation", "{msg%{public}.0s:received valid update with valid clientLocation, location:%{sensitive, location:CLClientLocation}.*P}", &v24, 0x22u);
        }

        v17 = [*(a1 + 32) currentLocation];
        [v17 horizontalAccuracy];
        [*(a1 + 32) setShowMapView:v18 <= 100.0];

        if ([*(a1 + 32) showMapView])
        {
          v19 = [*(a1 + 32) currentLocation];
          [v19 horizontalAccuracy];
          v21 = v20 > 100.0;

          if (!v21)
          {
            if (qword_100015A70 != -1)
            {
              sub_100008ACC();
            }

            v22 = qword_100015A78;
            if (os_log_type_enabled(qword_100015A78, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 68289026;
              v25 = 0;
              v26 = 2082;
              v27 = &unk_10000C551;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:showing map}", &v24, 0x12u);
            }

            if (qword_100015A70 != -1)
            {
              sub_100008ACC();
            }

            v23 = qword_100015A78;
            if (os_signpost_enabled(qword_100015A78))
            {
              v24 = 68289026;
              v25 = 0;
              v26 = 2082;
              v27 = &unk_10000C551;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "showing map", "{msg%{public}.0s:showing map}", &v24, 0x12u);
            }

            [*(a1 + 32) updateMapLayout];
            [*(a1 + 32) configureMapSubLabels];
          }
        }
      }
    }
  }

  else
  {
    if (qword_100015A70 != -1)
    {
      sub_100008AF4();
    }

    v13 = qword_100015A78;
    if (os_log_type_enabled(qword_100015A78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_10000C551;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received invalid update, skipping}", buf, 0x12u);
    }

    if (qword_100015A70 != -1)
    {
      sub_100008ACC();
    }

    v14 = qword_100015A78;
    if (os_signpost_enabled(qword_100015A78))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = &unk_10000C551;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "received invalid update, skipping", "{msg%{public}.0s:received invalid update, skipping}", buf, 0x12u);
    }
  }
}

uint64_t sub_10000560C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1)
  {
    case 3:
      v7 = sub_1000072DC(1u);
      v8 = sub_1000072DC(2u);
      v9 = sub_1000072DC(0);
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      v3 = &v10;
      v4 = a2;
      v5 = 3;
      break;
    case 2:
      v7 = sub_1000072DC(1u);
      v8 = sub_1000072DC(2u);
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      v3 = &v9;
      v4 = a2;
      v5 = 2;
      break;
    case 1:
      v7 = sub_1000072DC(0);
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      v3 = &v8;
      v4 = a2;
      v5 = 1;
      break;
    default:
      v7 = sub_1000072DC(1u);
      v8 = sub_1000072DC(2u);
      v9 = sub_1000072DC(0);
      v10 = sub_1000072DC(3u);
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      v3 = &v11;
      v4 = a2;
      v5 = 4;
      break;
  }

  return sub_100007B78(v4, &v7, v3, v5);
}

void sub_1000071D4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100007230(exception, a1);
}

std::logic_error *sub_100007230(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100007264()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100007298(id a1)
{
  qword_100015A78 = os_log_create("com.apple.corelocation.CoreLocationNumberedMapCalloutPromptPlugin", "Prompt");

  _objc_release_x1();
}

double sub_1000072DC(unsigned int a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_100015BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015BC8))
  {
    v3[0] = xmmword_10000B000;
    v3[1] = unk_10000B010;
    sub_1000073FC(qword_100015BA0, v3, 4);
    __cxa_atexit(sub_1000073F8, qword_100015BA0, &_mh_execute_header);
    __cxa_guard_release(&qword_100015BC8);
  }

  *&v3[0] = &v2;
  return *(sub_100007944(qword_100015BA0, &v2) + 5);
}

uint64_t sub_1000073FC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_100007474(a1, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_100007474(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000076A4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100007794(a1, prime);
    }
  }
}

void sub_100007794(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100007264();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1000078F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_100007944(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100007B78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100007BEC(result, a4);
  }

  return result;
}

void sub_100007BD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007BEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100007C40(a1, a2);
  }

  sub_100007C28();
}

void sub_100007C40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100007264();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}