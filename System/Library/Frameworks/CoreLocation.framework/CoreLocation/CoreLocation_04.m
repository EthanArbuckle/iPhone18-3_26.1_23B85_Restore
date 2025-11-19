void sub_19B917A88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B917AA4(uint64_t a1)
{
  sub_19B9D3858(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B917ADC(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 100);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 48))(v5, a2, 450.0);
  v12 = &v12;
  v13 = &v12;
  v14 = 0;
  v6 = (*(*v5 + 64))(v5, &v12, a2, 0, 30.0);
  if (v6)
  {
    v7 = v13;
    v8 = *(a2 + 104);
    if (v13 == &v12)
    {
      goto LABEL_17;
    }

    v9 = &v12;
    do
    {
      if (v8 == -1.0)
      {
        goto LABEL_11;
      }

      v10 = vabdd_f64(v8, *(v7 + 10));
      if (v10 > 180.0)
      {
        v10 = 360.0 - v10;
      }

      if (v10 <= 15.0)
      {
LABEL_11:
        if (v9 == &v12 || *(v7 + 8) < *(v9 + 8))
        {
          v9 = v7;
        }
      }

      v7 = v7[1];
    }

    while (v7 != &v12);
    if (v9 == &v12)
    {
LABEL_17:
      *(a2 + 152) = *(a2 + 56);
      *(a2 + 168) = v8;
      ++*(a1 + 104);
    }

    else
    {
      sub_19B9DEB0C(a2, v9 + 2);
      *(a2 + 176) = *(v9 + 8);
    }
  }

  else
  {
    (*(*a1 + 40))(a1);
    ++*(a1 + 108);
  }

  sub_19B916DC0(&v12);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return v6;
}

void sub_19B917CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B916DC0(va);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  _Unwind_Resume(a1);
}

__n128 sub_19B917D08(__n128 *a1, uint64_t a2)
{
  a1[3].n128_u64[0] = *a2;
  if (&a1[3] != a2)
  {
    sub_19B8B9C88(&a1[3].n128_u64[1], *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  result = *(a2 + 32);
  a1[5] = result;
  return result;
}

BOOL sub_19B917D68(uint64_t a1, double a2)
{
  v2 = *(a1 + 88);
  v3 = vabdd_f64(a2, v2);
  return v2 >= 0.0 && v3 <= 6.0 && *(a1 + 48) == 1;
}

double sub_19B917D98(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = *(a1 + 108);
  result = *(a1 + 100);
  *(a2 + 40) = result;
  *(a1 + 104) = 0;
  *(a1 + 100) = 0;
  return result;
}

uint64_t sub_19B917DF4(id *a1, id *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a1;
  v6 = 0;
  v47 = 0.0174532925;
  v50 = 0.0;
  v51 = 0.0;
  v7 = 0.0;
  do
  {
    [*v5 latitude_deg];
    v9 = v8;
    [*v5 longitude_deg];
    v11 = sub_19B9180C4(v9, v10);
    if (!v11)
    {
      break;
    }

    [*v5 latitude_deg];
    v13 = v12;
    [*v5 longitude_deg];
    v15 = v14;
    v16 = __sincos_stret(v13 * v47);
    v17 = __sincos_stret(v15 * v47);
    v18 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
    v19 = v16.__cosval * (v18 + 0.0);
    v20 = v17.__cosval * v19;
    v21 = v18 * 0.99330562 + 0.0;
    v22 = v16.__sinval * v21;
    v23 = v50;
    if (!v6)
    {
      v23 = v17.__sinval * v19;
      v7 = v16.__sinval * v21;
    }

    v48 = v17.__sinval * v19;
    v49 = v7;
    v24 = v51;
    if (!v6)
    {
      v24 = v17.__cosval * v19;
    }

    [*v5 latitude_deg];
    v26 = v25;
    [*v5 longitude_deg];
    v28 = v27;
    v29 = __sincos_stret(v26 * v47);
    v30 = __sincos_stret(v28 * v47);
    v50 = v23;
    v51 = v24;
    v31 = v20 - v24;
    v7 = v49;
    v32 = v30.__cosval * (v48 - v23) - v30.__sinval * v31;
    v33 = -(v29.__sinval * v30.__sinval) * (v48 - v23) + -(v29.__sinval * v30.__cosval) * v31 + v29.__cosval * (v22 - v49);
    v34 = v29.__cosval * v30.__sinval * (v48 - v23) + v29.__cosval * v30.__cosval * v31 + v29.__sinval * (v22 - v49);
    v36 = *(a3 + 8);
    v35 = *(a3 + 16);
    if (v36 >= v35)
    {
      v38 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *a3) >> 3);
      v39 = v38 + 1;
      if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_19B8B8A40();
      }

      v40 = 0xAAAAAAAAAAAAAAABLL * ((v35 - *a3) >> 3);
      if (2 * v40 > v39)
      {
        v39 = 2 * v40;
      }

      if (v40 >= 0x555555555555555)
      {
        v41 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v41 = v39;
      }

      if (v41)
      {
        sub_19B8FCEEC(a3, v41);
      }

      v42 = (24 * v38);
      *v42 = v32;
      v42[1] = v33;
      v42[2] = v34;
      v37 = 24 * v38 + 24;
      v43 = *(a3 + 8) - *a3;
      v44 = 24 * v38 - v43;
      memcpy(v42 - v43, *a3, v43);
      v45 = *a3;
      *a3 = v44;
      *(a3 + 8) = v37;
      *(a3 + 16) = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v36 = v32;
      v36[1] = v33;
      v37 = (v36 + 3);
      v36[2] = v34;
    }

    *(a3 + 8) = v37;
    ++v5;
    --v6;
  }

  while (v5 != a2);
  return v11;
}

BOOL sub_19B9180C4(double a1, double a2)
{
  v2 = fabs(a1);
  if (v2 == INFINITY)
  {
    return 0;
  }

  v3 = fabs(a2);
  if (v3 == INFINITY || v2 < 0.00003 && v3 < 0.00003)
  {
    return 0;
  }

  v5 = v2 <= 90.0;
  if (a2 > 180.0)
  {
    v5 = 0;
  }

  return a2 >= -180.0 && v5;
}

void sub_19B918144(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_19B91819C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_19B927BFC(a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

uint64_t sub_19B91825C(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 36);
  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = fabs(a2);
  if (v6 < 0.00003 && fabs(a3) < 0.00003)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3 >= -180.0 && v6 <= 90.0 && a3 <= 180.0)
  {
    v8 = *(a1 + 8);
    v9 = (v8 - *a1) / v3;
    v10 = vbslq_s8(vcltzq_f64(*(a1 + 16)), vaddq_f64(*(a1 + 16), vdupq_n_s64(0x4076800000000000uLL)), *(a1 + 16));
    v11 = vsubq_f64(vdupq_laneq_s64(v10, 1), v10).f64[0];
    if (v11 <= 180.0)
    {
      if (v11 >= -180.0)
      {
LABEL_15:
        if (fabs(v9) > 0.0000001)
        {
          v13 = fabs(v11) / v5;
          if (fabs(v13) > 0.0000001)
          {
            if (a3 < 0.0)
            {
              a3 = a3 + 360.0;
            }

            v14 = a3 - v10.f64[0];
            if (v14 <= 180.0)
            {
              if (v14 < -180.0)
              {
                v14 = v14 + 360.0;
              }
            }

            else
            {
              v14 = v14 + -360.0;
            }

            v15 = (floor(fabs(v14) / v13) + floor((v8 - a2) / v9) * v5);
            if (v5 * v3 <= v15 || v15 <= -1)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v15;
            }
          }
        }

        return result;
      }

      v12 = 360.0;
    }

    else
    {
      v12 = -360.0;
    }

    v11 = v11 + v12;
    goto LABEL_15;
  }

  return result;
}

void sub_19B9183CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_19B8B8A40();
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
      sub_19B927CB8(v9);
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

uint64_t sub_19B91849C(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = xmmword_19BA89490;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 470) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 524) = -1;
  *(a1 + 532) = -1;
  *(a1 + 540) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 544) = _Q0;
  *(a1 + 560) = _Q0;
  *(a1 + 576) = 0x4044000000000000;
  *(a1 + 48) = objc_alloc_init(MEMORY[0x1E695DF70]);
  return a1;
}

void sub_19B918580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 96);
  sub_19B927D00(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19B91859C(uint64_t a1)
{
  sub_19B9185F0(a1);
  sub_19B918858(a1);

  v3 = (a1 + 96);
  sub_19B927D00(&v3);
  return a1;
}

void sub_19B9185F0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 481) & 1) == 0 && *(a1 + 508))
  {
    if (objc_opt_class())
    {
      v2 = [objc_msgSend(MEMORY[0x1E69ADFC0] "sharedConnection")];
    }

    else
    {
      v2 = 0;
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v3 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v8 = v2;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLRR,hasIHAPermission,isPermissionGranted,%{public}d", buf, 8u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::hasIHAPermission() const", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    if (v2)
    {
      AnalyticsSendEventLazy();
      *(a1 + 481) = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B918858(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v2 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 88);
      v4 = *(a1 + 92);
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);
      *buf = 67241473;
      *v38 = v3;
      *&v38[4] = 1026;
      *&v38[6] = v4;
      *v39 = 2053;
      *&v39[2] = v5;
      *v40 = 2053;
      *&v40[2] = v6;
      *v41 = 2053;
      *&v41[2] = v7;
      *v42 = 2053;
      *&v42[2] = v8;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLRR,printRoutePointArray,boxRows,%{public}d,boxColumns,%{public}d,boxMinLat,%{sensitive}.7lf,boxMaxLat,%{sensitive}.7lf,boxMinLon,%{sensitive}.7lf,boxMaxLon,%{sensitive}.7lf", buf, 0x36u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v31 = *(a1 + 88);
      v32 = *(a1 + 92);
      v33 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(a1 + 72);
      v36 = *(a1 + 80);
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::printRoutePointArray() const", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if ([*(a1 + 48) count])
    {
      v11 = 0;
      do
      {
        v12 = [*(a1 + 48) objectAtIndex:v11];
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v13 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          [v12 timestamp_s];
          v15 = v14;
          [v12 latitude_deg];
          v17 = v16;
          [v12 longitude_deg];
          v19 = v18;
          [v12 altitude_m];
          v21 = v20;
          [v12 odometer_m];
          v23 = v22;
          v24 = [v12 signalEnvironmentType];
          *buf = 134350593;
          *v38 = v15;
          *&v38[8] = 2053;
          *v39 = v17;
          *&v39[8] = 2053;
          *v40 = v19;
          *&v40[8] = 2049;
          *v41 = v21;
          *&v41[8] = 2050;
          *v42 = v23;
          *&v42[8] = 1026;
          v43 = v24;
          v44 = 1026;
          v45 = v11;
          _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "CLRR,printRoutePointArray,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{public}.2lf,signalEnv,%{public}d,pointCount,%{public}d", buf, 0x40u);
        }

        v25 = sub_19B87DD40();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          [v12 timestamp_s];
          [v12 latitude_deg];
          [v12 longitude_deg];
          [v12 altitude_m];
          [v12 odometer_m];
          [v12 signalEnvironmentType];
          v26 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::printRoutePointArray() const", "CoreLocation: %s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }

        ++v11;
      }

      while ([*(a1 + 48) count] > v11);
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v27 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLRR,printRoutePointArray,fRoutePoints is a null pointer", buf, 2u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLRacingRoute::printRoutePointArray() const", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B918EA4(uint64_t a1)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v12[0] = @"raceRoutePercentageOfMatchedPoints";
  v2 = *(v1 + 508);
  if (v2)
  {
    v3 = *(v1 + 500) * 100.0 / v2;
  }

  else
  {
    v3 = 0.0;
  }

  v13[0] = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v12[1] = @"raceRouteTimeTraveledOnRoute";
  v13[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(v1 + 336)];
  v12[2] = @"raceRouteTimeTraveledOffRoute";
  v13[2] = [MEMORY[0x1E696AD98] numberWithDouble:*(v1 + 344)];
  v12[3] = @"raceRouteDistanceTraveledOnRoute";
  v13[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(v1 + 352)];
  v12[4] = @"raceRouteDistanceTraveledOffRoute";
  v13[4] = [MEMORY[0x1E696AD98] numberWithDouble:*(v1 + 360)];
  v12[5] = @"raceRouteOnRouteAveragePace";
  v13[5] = [MEMORY[0x1E696AD98] numberWithDouble:*(v1 + 368)];
  v12[6] = @"signalEnvironmentType";
  v13[6] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 40)];
  v12[7] = @"workoutActivityType";
  v13[7] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 44)];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v5 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v11 = v4;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLRR,sendRacingRouteAnalytics: \n%{private}@", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::sendRacingRouteAnalytics()_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19B919194(uint64_t a1, void *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v49 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,null data point", buf, 2u);
    }

    v50 = sub_19B87DD40();
    if ((*(v50 + 160) & 0x80000000) != 0 && (*(v50 + 164) & 0x80000000) != 0 && (*(v50 + 168) & 0x80000000) != 0 && !*(v50 + 152))
    {
      goto LABEL_31;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v48 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateScoreboard(CLRoutePoint *, CLRoutePoint *, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v48);
    if (v48 == buf)
    {
      goto LABEL_31;
    }

LABEL_30:
    free(v48);
LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  [a2 latitude_deg];
  v11 = v10;
  [a2 longitude_deg];
  if (!sub_19B9180C4(v11, v12) || ([a3 latitude_deg], v14 = v13, objc_msgSend(a3, "longitude_deg"), !sub_19B9180C4(v14, v15)))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v39 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      [a2 latitude_deg];
      v41 = v40;
      [a2 longitude_deg];
      v43 = v42;
      [a3 latitude_deg];
      v45 = v44;
      [a3 longitude_deg];
      *buf = 134546433;
      v78 = v41;
      v79 = 2053;
      v80 = v43;
      v81 = 2053;
      v82 = v45;
      v83 = 2053;
      v84 = v46;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid data point,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x2Au);
    }

    v47 = sub_19B87DD40();
    if ((*(v47 + 160) & 0x80000000) != 0 && (*(v47 + 164) & 0x80000000) != 0 && (*(v47 + 168) & 0x80000000) != 0 && !*(v47 + 152))
    {
      goto LABEL_31;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    [a2 latitude_deg];
    [a2 longitude_deg];
    [a3 latitude_deg];
    [a3 longitude_deg];
    v48 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateScoreboard(CLRoutePoint *, CLRoutePoint *, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v48);
    if (v48 == buf)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!*a4)
  {
    [a2 latitude_deg];
    *(a1 + 120) = v52;
    [a2 longitude_deg];
    *(a1 + 128) = v53;
    [a2 altitude_m];
    *(a1 + 136) = v54;
    [a2 timestamp_s];
    *(a1 + 152) = v55;
    [a2 odometer_m];
    *(a1 + 144) = v56;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0;
    [a3 odometer_m];
    *(a1 + 200) = v57;
    [a3 latitude_deg];
    *(a1 + 208) = v58;
    [a3 longitude_deg];
    *(a1 + 216) = v59;
    [a3 altitude_m];
    *(a1 + 224) = v60;
    [a3 timestamp_s];
    *(a1 + 240) = v61;
    [a3 odometer_m];
    *(a1 + 248) = 0u;
    *(a1 + 232) = v62;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0;
    [a3 odometer_m];
    *(a1 + 288) = v63;
    v64 = *(a1 + 168);
    v65 = *(a1 + 184);
    v66 = *(a1 + 200);
    *(a5 + 32) = *(a1 + 152);
    v67 = *(a1 + 136);
    v68 = *(a1 + 120);
    *(a5 + 80) = v66;
    *(a5 + 48) = v64;
    *(a5 + 64) = v65;
    *a5 = v68;
    *(a5 + 16) = v67;
    v69 = *(a1 + 256);
    v70 = *(a1 + 272);
    v71 = *(a1 + 240);
    *(a5 + 168) = *(a1 + 288);
    *(a5 + 120) = v71;
    *(a5 + 152) = v70;
    *(a5 + 136) = v69;
    v72 = *(a1 + 224);
    *(a5 + 88) = *(a1 + 208);
    *(a5 + 104) = v72;
    v73 = *(a1 + 168);
    v74 = *(a1 + 184);
    *(a1 + 328) = *(a1 + 152);
    *(a1 + 344) = v73;
    *(a1 + 360) = v74;
    *(a1 + 376) = *(a1 + 200);
    v75 = *(a1 + 136);
    *(a1 + 296) = *(a1 + 120);
    *(a1 + 312) = v75;
    *(a1 + 464) = *(a1 + 288);
    *(a1 + 448) = *(a1 + 272);
    *(a1 + 432) = *(a1 + 256);
    v76 = *(a1 + 224);
    *(a1 + 416) = *(a1 + 240);
    *(a1 + 384) = *(a1 + 208);
    *(a1 + 400) = v76;
    goto LABEL_34;
  }

  [a2 latitude_deg];
  *a5 = v16;
  [a2 longitude_deg];
  *(a5 + 8) = v17;
  [a2 altitude_m];
  *(a5 + 16) = v18;
  [a2 timestamp_s];
  *(a5 + 32) = v19;
  [a2 odometer_m];
  *(a5 + 24) = v20;
  [a2 timestamp_s];
  *(a5 + 40) = v21 - *(a1 + 152);
  *(a5 + 48) = *(a1 + 344);
  [a2 odometer_m];
  *(a5 + 56) = v22 - *(a1 + 144);
  *(a5 + 64) = *(a1 + 360);
  [a3 latitude_deg];
  *(a5 + 88) = v23;
  [a3 longitude_deg];
  *(a5 + 96) = v24;
  [a3 altitude_m];
  *(a5 + 104) = v25;
  [a3 timestamp_s];
  *(a5 + 120) = v26;
  [a3 odometer_m];
  *(a5 + 112) = v27;
  [a3 timestamp_s];
  *(a5 + 128) = v28 - *(a1 + 240);
  *(a5 + 136) = *(a1 + 432);
  [a3 odometer_m];
  *(a5 + 144) = v29 - *(a1 + 232);
  *(a5 + 152) = *(a1 + 448);
  if (*a4 == 1)
  {
    sub_19B919870(a1, a5, (a5 + 88));
  }

  result = sub_19B9198D0(a1, a5, a5 + 88);
  if (result)
  {
    sub_19B919CFC(a1, a5, (a5 + 88));
    v31 = *(a5 + 16);
    *(a1 + 296) = *a5;
    *(a1 + 312) = v31;
    v32 = *(a5 + 32);
    v33 = *(a5 + 48);
    v34 = *(a5 + 64);
    *(a1 + 376) = *(a5 + 80);
    *(a1 + 344) = v33;
    *(a1 + 360) = v34;
    *(a1 + 328) = v32;
    v36 = *(a5 + 136);
    v35 = *(a5 + 152);
    v37 = *(a5 + 120);
    *(a1 + 464) = *(a5 + 168);
    *(a1 + 432) = v36;
    *(a1 + 448) = v35;
    *(a1 + 416) = v37;
    v38 = *(a5 + 104);
    *(a1 + 384) = *(a5 + 88);
    *(a1 + 400) = v38;
LABEL_34:
    result = 1;
  }

LABEL_32:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B919870(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 476) == 1)
  {
    a2[6] = a2[6] + a2[5] - *(a1 + 336);
    a3[6] = a3[6] + a3[5] - *(a1 + 424);
    a2[8] = a2[8] + a2[7] - *(a1 + 352);
    result = a3[8] + a3[7] - *(a1 + 440);
    a3[8] = result;
  }

  return result;
}

uint64_t sub_19B9198D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = vabdd_f64(*a3, *(a1 + 384)) > 0.0000001 || vabdd_f64(*(a3 + 8), *(a1 + 392)) > 0.0000001;
  v7 = vabdd_f64(*a2, *(a1 + 296)) <= 0.0000001 && vabdd_f64(*(a2 + 8), *(a1 + 304)) <= 0.0000001;
  v8 = *(a1 + 475) | (v6 || v7);
  if (v8)
  {
    if (*(a3 + 32) < *(a1 + 416))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v9 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 32);
        *buf = 134283521;
        v31 = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "CLRR,EvaluateProjectionStatus,projection went backward,timestamp,%{private}.1lf", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v28 = *(a2 + 32);
        v12 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::EvaluateProjectionStatus(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      v13 = *(a1 + 400);
      *a3 = *(a1 + 384);
      *(a3 + 16) = v13;
      v14 = *(a1 + 416);
      v15 = *(a1 + 432);
      v16 = *(a1 + 448);
      *(a3 + 80) = *(a1 + 464);
      *(a3 + 48) = v15;
      *(a3 + 64) = v16;
      *(a3 + 32) = v14;
      v17 = *(a2 + 32);
      v19 = *(a1 + 344);
      v18 = *(a1 + 360);
      v20 = *(a1 + 376);
      *(a2 + 32) = *(a1 + 328);
      v21 = *(a1 + 312);
      *a2 = *(a1 + 296);
      *(a2 + 16) = v21;
      *(a2 + 80) = v20;
      *(a2 + 48) = v19;
      *(a2 + 64) = v18;
      *(a2 + 32) = v17;
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v22 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a2 + 32);
      *buf = 134283521;
      v31 = v23;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "CLRR,EvaluateProjectionStatus,user moved but its projection on reference route is same as before,skip this point,timestamp,%{private}.1lf", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v29 = *(a2 + 32);
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::EvaluateProjectionStatus(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void sub_19B919CFC(uint64_t a1, uint64_t a2, double *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 56);
  v6 = a3[7];
  v7 = *(a2 + 40);
  v8 = a3[5];
  v9 = fabs(v5);
  v10 = v7 / v5;
  v11 = (a1 + 376);
  v12 = v9 > 0.0000001;
  v13 = 0.0;
  if (v9 <= 0.0000001)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  if (v12)
  {
    v11 = (a3 + 3);
  }

  v15 = *v11;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  if (fabs(v6) <= 0.0000001)
  {
    v16 = *(a1 + 464);
  }

  else
  {
    v13 = v8 / v6;
    v16 = a3[3] - (v8 - v7) / (v8 / v6);
  }

  a3[9] = v13;
  a3[10] = v16;
  if (*(a1 + 483) == 1 && v16 > *(a1 + 544))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v17 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLRR,updateDistanceAndAveragePace,DistanceAlongReferenceRoute passed upper threshold", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateDistanceAndAveragePace(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *(a1 + 544);
LABEL_38:
    *(a3 + 10) = v20;
    goto LABEL_39;
  }

  if (v16 < 0.0)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v21 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLRR,updateDistanceAndAveragePace,DistanceAlongReferenceRoute passed lower threshold", buf, 2u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || (v20 = 0, *(v22 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateDistanceAndAveragePace(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }

      v20 = 0;
    }

    goto LABEL_38;
  }

LABEL_39:
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B91A09C(uint64_t a1, void *a2, void *a3, void *a4, double *a5, int *a6, uint64_t a7)
{
  v140 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v33 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,null input data or segment point", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    goto LABEL_31;
  }

  [a2 latitude_deg];
  v15 = v14;
  [a2 longitude_deg];
  if (!sub_19B9180C4(v15, v16) || ([a3 latitude_deg], v18 = v17, objc_msgSend(a3, "longitude_deg"), !sub_19B9180C4(v18, v19)) || (objc_msgSend(a4, "latitude_deg"), v21 = v20, objc_msgSend(a4, "longitude_deg"), !sub_19B9180C4(v21, v22)))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v35 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      [a2 latitude_deg];
      v37 = v36;
      [a2 longitude_deg];
      v39 = v38;
      [a3 latitude_deg];
      v41 = v40;
      [a3 longitude_deg];
      v43 = v42;
      [a4 latitude_deg];
      v45 = v44;
      [a4 longitude_deg];
      *buf = 134546945;
      v129 = v37;
      v130 = 2053;
      v131 = v39;
      v132 = 2053;
      v133 = v41;
      v134 = 2053;
      v135 = v43;
      v136 = 2053;
      v137 = v45;
      v138 = 2053;
      v139 = v46;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid input data or segment point,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x3Eu);
    }

    v47 = sub_19B87DD40();
    if ((*(v47 + 160) & 0x80000000) != 0 && (*(v47 + 164) & 0x80000000) != 0 && (*(v47 + 168) & 0x80000000) != 0 && !*(v47 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    [a2 latitude_deg];
    [a2 longitude_deg];
    [a3 latitude_deg];
    [a3 longitude_deg];
    [a4 latitude_deg];
    [a4 longitude_deg];
    goto LABEL_31;
  }

  v23 = *a6;
  [a4 latitude_deg];
  v25 = v24;
  [a3 latitude_deg];
  v27 = v26;
  [a3 longitude_deg];
  v29 = v28;
  [a4 longitude_deg];
  v31 = v29 + 360.0;
  if (v29 >= 0.0)
  {
    v31 = v29;
  }

  if (v30 < 0.0)
  {
    v30 = v30 + 360.0;
  }

  v32 = v30 - v31;
  if (v30 - v31 <= 180.0)
  {
    if (v32 < -180.0)
    {
      v32 = v32 + 360.0;
    }
  }

  else
  {
    v32 = v32 + -360.0;
  }

  v51 = v25 - v27;
  [a4 altitude_m];
  v53 = v52;
  [a3 altitude_m];
  v55 = v54;
  [a4 timestamp_s];
  v57 = v56;
  [a3 timestamp_s];
  v59 = v58;
  [a4 odometer_m];
  v61 = v60;
  [a3 odometer_m];
  v63 = v62;
  [a2 latitude_deg];
  if (!v23)
  {
    v86 = v61 - v63;
    *(a1 + 120) = v64;
    v87 = a1 + 120;
    [a2 longitude_deg];
    *(a1 + 128) = v88;
    [a2 altitude_m];
    *(a1 + 136) = v89;
    [a2 timestamp_s];
    *(a1 + 152) = v90;
    [a2 odometer_m];
    *(a1 + 144) = v91;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0;
    [a3 odometer_m];
    *(a1 + 200) = v92 + *a5 * v86;
    [a3 latitude_deg];
    *(a1 + 208) = v93 + *a5 * v51;
    v94 = a1 + 208;
    [a3 longitude_deg];
    v96 = v95 + *a5 * v32;
    *(a1 + 216) = v96;
    if (sub_19B9180C4(*(a1 + 208), v96))
    {
      [a3 altitude_m];
      *(a1 + 224) = v97 + *a5 * (v53 - v55);
      [a3 timestamp_s];
      *(a1 + 240) = v98 + *a5 * (v57 - v59);
      [a3 odometer_m];
      v100 = v99 + *a5 * v86;
      *(a1 + 248) = 0u;
      v101 = a1 + 248;
      *(v101 - 16) = v100;
      *(v101 + 32) = 0;
      *(v101 + 16) = 0u;
      [a3 odometer_m];
      *(v101 + 40) = v102 + *a5 * v86;
      v103 = *(v87 + 16);
      *a7 = *v87;
      *(a7 + 16) = v103;
      v104 = *(v87 + 32);
      v105 = *(v87 + 48);
      v106 = *(v87 + 64);
      *(a7 + 80) = *(v87 + 80);
      *(a7 + 48) = v105;
      *(a7 + 64) = v106;
      *(a7 + 32) = v104;
      v107 = *(v94 + 80);
      v109 = *(v94 + 32);
      v108 = *(v94 + 48);
      *(a7 + 152) = *(v94 + 64);
      *(a7 + 120) = v109;
      *(a7 + 168) = v107;
      *(a7 + 136) = v108;
      v110 = *v94;
      *(a7 + 104) = *(v94 + 16);
      *(a7 + 88) = v110;
      v111 = *(v87 + 48);
      *(v101 + 80) = *(v87 + 32);
      *(v101 + 96) = v111;
      *(v101 + 112) = *(v87 + 64);
      *(v101 + 128) = *(v87 + 80);
      v112 = *(v87 + 16);
      *(v101 + 48) = *v87;
      *(v101 + 64) = v112;
      *(v101 + 216) = *(v94 + 80);
      v113 = *(v94 + 48);
      *(v101 + 200) = *(v94 + 64);
      v114 = *(v94 + 16);
      v115 = *(v94 + 32);
      *(v101 + 184) = v113;
      *(v101 + 168) = v115;
      *(v101 + 136) = *v94;
      *(v101 + 152) = v114;
      goto LABEL_47;
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v120 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v121 = *(a1 + 208);
      v122 = *(a1 + 216);
      *buf = 134545921;
      v129 = v121;
      v130 = 2053;
      v131 = v122;
      _os_log_impl(&dword_19B873000, v120, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid raceStartPointOnReferenceRoute,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x16u);
    }

    v123 = sub_19B87DD40();
    if ((*(v123 + 160) & 0x80000000) != 0 && (*(v123 + 164) & 0x80000000) != 0 && (*(v123 + 168) & 0x80000000) != 0 && !*(v123 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v125 = *(a1 + 208);
    v127 = *(a1 + 216);
    goto LABEL_31;
  }

  *a7 = v64;
  [a2 longitude_deg];
  *(a7 + 8) = v65;
  [a2 altitude_m];
  *(a7 + 16) = v66;
  [a2 timestamp_s];
  *(a7 + 32) = v67;
  [a2 odometer_m];
  *(a7 + 24) = v68;
  [a2 timestamp_s];
  *(a7 + 40) = v69 - *(a1 + 152);
  *(a7 + 48) = *(a1 + 344);
  [a2 odometer_m];
  *(a7 + 56) = v70 - *(a1 + 144);
  *(a7 + 64) = *(a1 + 360);
  [a3 latitude_deg];
  *(a7 + 88) = v71 + *a5 * v51;
  [a3 longitude_deg];
  v73 = v72 + *a5 * v32;
  *(a7 + 96) = v73;
  if (!sub_19B9180C4(*(a7 + 88), v73))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v116 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v117 = *(a7 + 88);
      v118 = *(a7 + 96);
      *buf = 134545921;
      v129 = v117;
      v130 = 2053;
      v131 = v118;
      _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid referenceState,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x16u);
    }

    v119 = sub_19B87DD40();
    if ((*(v119 + 160) & 0x80000000) != 0 && (*(v119 + 164) & 0x80000000) != 0 && (*(v119 + 168) & 0x80000000) != 0 && !*(v119 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v124 = *(a7 + 88);
    v126 = *(a7 + 96);
LABEL_31:
    v48 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateScoreboard(CLRoutePoint *, CLRoutePoint *, CLRoutePoint *, const double &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v48);
    if (v48 != buf)
    {
      free(v48);
    }

LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  [a3 altitude_m];
  *(a7 + 104) = v74 + *a5 * (v53 - v55);
  [a3 timestamp_s];
  *(a7 + 120) = v75 + *a5 * (v57 - v59);
  [a3 odometer_m];
  v77 = v76 + *a5 * (v61 - v63);
  *(a7 + 112) = v77;
  *(a7 + 128) = *(a7 + 120) - *(a1 + 240);
  *(a7 + 136) = *(a1 + 432);
  *(a7 + 144) = v77 - *(a1 + 232);
  *(a7 + 152) = *(a1 + 448);
  if (*a6 == 1)
  {
    sub_19B919870(a1, a7, (a7 + 88));
  }

  result = sub_19B9198D0(a1, a7, a7 + 88);
  if (result)
  {
    sub_19B919CFC(a1, a7, (a7 + 88));
    v78 = *(a7 + 16);
    *(a1 + 296) = *a7;
    *(a1 + 312) = v78;
    v79 = *(a7 + 32);
    v80 = *(a7 + 48);
    v81 = *(a7 + 64);
    *(a1 + 376) = *(a7 + 80);
    *(a1 + 344) = v80;
    *(a1 + 360) = v81;
    *(a1 + 328) = v79;
    v83 = *(a7 + 136);
    v82 = *(a7 + 152);
    v84 = *(a7 + 120);
    *(a1 + 464) = *(a7 + 168);
    *(a1 + 432) = v83;
    *(a1 + 448) = v82;
    *(a1 + 416) = v84;
    v85 = *(a7 + 104);
    *(a1 + 384) = *(a7 + 88);
    *(a1 + 400) = v85;
LABEL_47:
    result = 1;
  }

LABEL_34:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B91AB54(uint64_t a1, void *a2, void *a3, _DWORD *a4, int *a5, uint64_t a6)
{
  v236 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v24 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,input data array is null", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_462;
  }

  v7 = *a4;
  if ((v7 & 0x80000000) != 0 || (v8 = a1, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) <= v7))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v22 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,invalid matrix index", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
LABEL_36:
      LOWORD(v228[0]) = 0;
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }

LABEL_38:
      v27 = 0;
      goto LABEL_39;
    }

LABEL_462:
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    goto LABEL_36;
  }

  v10 = a3;
  v12 = [a3 count];
  v13 = *(v8 + 524);
  v224 = 0;
  *(v8 + 482) = 0;
  v221 = 0;
  v222 = 0;
  v223 = 0;
  v218 = 0;
  v219 = 0;
  v220 = 0;
  if (*a5 >= 2)
  {
    if (*a5 == 2)
    {
      v209 = v12;
      v208 = v13;
      v211 = a2;
      sub_19B8EB230(&v218, a4);
      v210 = a6;
      v213 = 0;
      goto LABEL_42;
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v129 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v129, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,unknown point type", buf, 2u);
    }

    v130 = sub_19B87DD40();
    if ((*(v130 + 160) & 0x80000000) != 0 && (*(v130 + 164) & 0x80000000) != 0 && (*(v130 + 168) & 0x80000000) != 0 && !*(v130 + 152))
    {
      goto LABEL_452;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
LABEL_245:
      LOWORD(v228[0]) = 0;
      v117 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v117);
      goto LABEL_450;
    }

LABEL_463:
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    goto LABEL_245;
  }

  v14 = *(v8 + 88);
  if (v14 < 1 || (v15 = *(v8 + 92), v15 < 1) || (*a4 & 0x80000000) != 0 || *a4 >= v15 * v14)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v115 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v115, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,failed to determine neighboring cells index", buf, 2u);
    }

    v116 = sub_19B87DD40();
    if ((*(v116 + 160) & 0x80000000) != 0 && (*(v116 + 164) & 0x80000000) != 0 && (*(v116 + 168) & 0x80000000) != 0 && !*(v116 + 152))
    {
      goto LABEL_452;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_245;
    }

    goto LABEL_463;
  }

  v209 = v12;
  v208 = v13;
  v210 = a6;
  for (i = -1; i != 2; ++i)
  {
    v17 = *a4 / *(v8 + 92);
    if (v17 + i >= 0 && v17 + i < *(v8 + 88))
    {
      v18 = v17 + i;
      for (j = -1; j != 2; ++j)
      {
        v20 = *(v8 + 92);
        v21 = *a4 % v20;
        if (j + v21 >= 0 && j + v21 < v20)
        {
          *buf = j + v21 + v18 * v20;
          sub_19B8EB230(&v218, buf);
        }
      }
    }
  }

  v211 = a2;
  v213 = 1;
LABEL_42:
  v216 = (v8 + 524);
  v217 = v8;
  v214 = v10;
  if (v219 != v218)
  {
    v30 = 0;
    v31 = (v219 - v218) > 4;
    while (1)
    {
      if (v31)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v32 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(v218 + v30);
          *buf = 67240192;
          *&buf[4] = v33;
          _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,processing matrix cell index,%{public}d", buf, 8u);
        }

        v34 = sub_19B87DD40();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v35 = *(v218 + v30);
          LODWORD(v228[0]) = 67240192;
          HIDWORD(v228[0]) = v35;
          v36 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }
      }

      if (v213)
      {
        v37 = v218;
        v38 = *(v218 + v30);
        v39 = *(v8 + 96);
        v40 = *(v39 + 24 * v38);
        v41 = *(v39 + 24 * v38 + 8);
        if (v41 == v40)
        {
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v75 = qword_1EAFE4790;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
          {
            v76 = v37[v30];
            *buf = 67109120;
            *&buf[4] = v76;
            _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEBUG, "CLRR,updateSearchRange,empty matrix cell at index,%d,", buf, 8u);
          }

          v77 = sub_19B87DD40();
          if (*(v77 + 160) <= 1 && *(v77 + 164) <= 1 && *(v77 + 168) <= 1 && !*(v77 + 152))
          {
            goto LABEL_155;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v78 = v37[v30];
          LODWORD(v228[0]) = 67109120;
          HIDWORD(v228[0]) = v78;
          v79 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateSearchRange(const int &, int &, int &, BOOL &) const", "CoreLocation: %s\n", v79);
          goto LABEL_153;
        }

        v42 = 0;
        v43 = -1;
        v44 = 16;
        v215 = -1;
        while (1)
        {
          if (((v41 - v40) >> 3) - 1 <= v42)
          {
            v48 = v42;
          }

          else
          {
            v45 = v42 + 1;
            v46 = *(v40 + 8 * (v42 + 1)) - *(v40 + 8 * v42 + 4);
            v47 = v44;
            v48 = v42;
            while (v46 <= 0x3C)
            {
              v48 = v45;
              if (qword_1EAFE4788 != -1)
              {
                dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
              }

              v49 = qword_1EAFE4790;
              if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "CLRR,updateSearchRange,detected a short segment across the cell border,expanding the search range", buf, 2u);
              }

              v50 = sub_19B87DD40();
              if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4788 != -1)
                {
                  dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
                }

                LOWORD(v228[0]) = 0;
                v51 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateSearchRange(const int &, int &, int &, BOOL &) const", "CoreLocation: %s\n", v51);
                if (v51 != buf)
                {
                  free(v51);
                }
              }

              v38 = v37[v30];
              v39 = *(v217 + 96);
              v40 = *(v39 + 24 * v38);
              if (((*(v39 + 24 * v38 + 8) - v40) >> 3) - 1 <= v48)
              {
                break;
              }

              v45 = v48 + 1;
              v46 = *(v40 + v47) - *(v40 + 8 * v42 + 4);
              v47 += 8;
            }
          }

          v52 = *(v40 + 8 * v42);
          v53 = *(v40 + 8 * v48 + 4);
          if (v53 >= v52)
          {
            v54 = *v216;
            if (v52 > *v216)
            {
              v54 = v52;
            }

            if (v54 - v52 <= (v53 - v52))
            {
              break;
            }
          }

          ++v42;
          v40 = *(v39 + 24 * v38);
          v41 = *(v39 + 24 * v38 + 8);
          v44 += 8;
          if ((v41 - v40) >> 3 <= v42)
          {
            goto LABEL_87;
          }
        }

        v43 = v54;
        v215 = v53;
      }

      else
      {
        v43 = *v216;
        v215 = *v216 + 10;
      }

LABEL_87:
      v8 = v217;
      if ((v43 & 0x80000000) == 0 && v215 >= v43)
      {
        break;
      }

LABEL_155:
      ++v30;
      v31 = 1;
      v10 = v214;
      if (v30 >= (v219 - v218) >> 2)
      {
        goto LABEL_246;
      }
    }

    v55 = v43 - 3;
    if (v43 < 3)
    {
      v55 = 0;
    }

    if (v55 <= *v216)
    {
      v56 = *v216;
    }

    else
    {
      v56 = v55;
    }

    v57 = v215 + 3;
    if ([v214 count] <= (v215 + 3))
    {
      v57 = [v214 count] - 1;
    }

    if (v57 < v56)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v58 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240448;
        *&buf[4] = v56;
        *&buf[8] = 1026;
        *&buf[10] = v57;
        _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "CLRR,findNearestPointIndex,invalid search range index,fromIndex,%{public}d,toIndex,%{public}d", buf, 0xEu);
      }

      v59 = sub_19B87DD40();
      if ((*(v59 + 160) & 0x80000000) == 0 || (*(v59 + 164) & 0x80000000) == 0 || (*(v59 + 168) & 0x80000000) == 0 || *(v59 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LODWORD(v228[0]) = 67240448;
        HIDWORD(v228[0]) = v56;
        LOWORD(v228[1]) = 1026;
        *(&v228[1] + 2) = v57;
        v60 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v60);
        goto LABEL_140;
      }

LABEL_142:
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v82 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
      {
        v83 = *(v218 + v30);
        *buf = 67240192;
        *&buf[4] = v83;
        _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,no points within the accepted distance in matrix cell index,%{public}d", buf, 8u);
      }

      v84 = sub_19B87DD40();
      if (*(v84 + 160) <= 1 && *(v84 + 164) <= 1 && *(v84 + 168) <= 1 && !*(v84 + 152))
      {
        goto LABEL_155;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v85 = *(v218 + v30);
      LODWORD(v228[0]) = 67240192;
      HIDWORD(v228[0]) = v85;
      v79 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v79);
LABEL_153:
      if (v79 != buf)
      {
        free(v79);
      }

      goto LABEL_155;
    }

    [v211 latitude_deg];
    v62 = v61;
    [v211 longitude_deg];
    v64 = v63;
    if (sub_19B9180C4(*&v62, v63))
    {
      if ([v214 count] > v56)
      {
        if ([v214 count] <= v57)
        {
          v57 = [v214 count] - 1;
        }

        memset(v228, 0, sizeof(v228));
        __p = 0;
        v226 = 0;
        v227 = 0;
        if (*a5)
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
        }

        else
        {
          v92 = 0;
          v230 = 0;
          do
          {
            [objc_msgSend(v214 objectAtIndex:{v92), "latitude_deg"}];
            v94 = v93;
            [objc_msgSend(v214 objectAtIndex:{v92), "longitude_deg"}];
            *buf = sub_19BA0C01C(v217, *&v62, v64, v94, v95, 0.0);
            if (*buf <= *(v217 + 576))
            {
              sub_19B8EB230(v228, &v230);
              sub_19B8F518C(&__p, buf);
            }

            v230 = ++v92;
          }

          while (v92 != 11);
          v66 = v228[1];
          v65 = v228[0];
          v67 = v228[1] != v228[0];
          if (v228[1] != v228[0] && !*a5)
          {
            v67 = 1;
            goto LABEL_186;
          }
        }

        if (v56 <= v57)
        {
          v68 = 0;
          v69 = v57 - v56 + 1;
          v70 = v56;
          do
          {
            [objc_msgSend(v214 objectAtIndex:{v70), "latitude_deg"}];
            v72 = v71;
            [objc_msgSend(v214 objectAtIndex:{v70), "longitude_deg"}];
            *buf = sub_19BA0C01C(v217, *&v62, v64, v72, v73, 0.0);
            if (*buf <= *(v217 + 576))
            {
              v230 = v68;
              sub_19B8EB230(v228, &v230);
              sub_19B8F518C(&__p, buf);
            }

            ++v70;
            ++v68;
          }

          while (v69 != v68);
          v74 = v228[0];
          v66 = v228[1];
LABEL_187:
          if (v66 == v74)
          {
            v109 = -1;
            goto LABEL_223;
          }

          v96 = (__p + 8);
          v97 = *__p;
          if (__p == v226 || v96 == v226)
          {
            v104 = *__p;
            v105 = __p;
          }

          else
          {
            v98 = *__p;
            v99 = (__p + 8);
            v100 = __p;
            v101 = (__p + 8);
            do
            {
              v102 = *v101++;
              v103 = v102;
              if (v102 < v98)
              {
                v98 = v103;
                v100 = v99;
              }

              v99 = v101;
            }

            while (v101 != v226);
            v104 = *v100;
            v105 = __p;
            v106 = (__p + 8);
            do
            {
              v107 = *v106++;
              v108 = v107;
              if (v107 < v97)
              {
                v97 = v108;
                v105 = v96;
              }

              v96 = v106;
            }

            while (v106 != v226);
          }

          v109 = *&v74[(v105 - __p) << 29 >> 30];
          if (v67)
          {
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v110 = qword_1EAFE4790;
            if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349312;
              *&buf[4] = v104;
              *&buf[12] = 1026;
              *&buf[14] = v109;
              _os_log_impl(&dword_19B873000, v110, OS_LOG_TYPE_DEBUG, "CLRR,findNearestPointIndex,start point is matched to reference head section,min distance,%{public}.2lf,index from start of reference route,%{public}d", buf, 0x12u);
            }

            v111 = sub_19B87DD40();
            if (*(v111 + 160) > 1 || *(v111 + 164) > 1 || *(v111 + 168) > 1 || *(v111 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4788 == -1)
              {
LABEL_221:
                v230 = 134349312;
                v231 = v104;
                v232 = 1026;
                v233 = v109;
                v114 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v114);
                if (v114 != buf)
                {
                  free(v114);
                }

                goto LABEL_223;
              }

LABEL_236:
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
              goto LABEL_221;
            }
          }

          else
          {
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v112 = qword_1EAFE4790;
            if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349312;
              *&buf[4] = v104;
              *&buf[12] = 1026;
              *&buf[14] = v109;
              _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_DEBUG, "CLRR,findNearestPointIndex,min distance,%{public}.2lf,index from start of search window,%{public}d", buf, 0x12u);
            }

            v113 = sub_19B87DD40();
            if (*(v113 + 160) > 1 || *(v113 + 164) > 1 || *(v113 + 168) > 1 || *(v113 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4788 == -1)
              {
                goto LABEL_221;
              }

              goto LABEL_236;
            }
          }

LABEL_223:
          if (__p)
          {
            v226 = __p;
            operator delete(__p);
          }

          if (v228[0])
          {
            v228[1] = v228[0];
            operator delete(v228[0]);
          }

          if (v66 != v74)
          {
            if ((v109 & 0x80000000) == 0)
            {
              *buf = v109 + v56;
              sub_19B8EB230(&v221, buf);
            }

            goto LABEL_155;
          }

          goto LABEL_142;
        }

LABEL_186:
        v74 = v65;
        goto LABEL_187;
      }

      if (*(v217 + 479) == 1)
      {
        *(v217 + 475) = 1;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v86 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_DEFAULT, "CLRR,findNearestPointIndex,reached end of reference route", buf, 2u);
        }

        v87 = sub_19B87DD40();
        if (*(v87 + 160) <= 1 && *(v87 + 164) <= 1 && *(v87 + 168) <= 1 && !*(v87 + 152))
        {
          goto LABEL_142;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v228[0]) = 0;
        v60 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v60);
      }

      else
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v88 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          v89 = [v214 count];
          *buf = 67240448;
          *&buf[4] = v56;
          *&buf[8] = 2050;
          *&buf[10] = v89;
          _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_ERROR, "CLRR,findNearestPointIndex,invalid search index,%{public}d,array size,%{public}lu", buf, 0x12u);
        }

        v90 = sub_19B87DD40();
        if ((*(v90 + 160) & 0x80000000) != 0 && (*(v90 + 164) & 0x80000000) != 0 && (*(v90 + 168) & 0x80000000) != 0 && !*(v90 + 152))
        {
          goto LABEL_142;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v91 = [v214 count];
        LODWORD(v228[0]) = 67240448;
        HIDWORD(v228[0]) = v56;
        LOWORD(v228[1]) = 2050;
        *(&v228[1] + 2) = v91;
        v60 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v60);
      }
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v80 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 134545921;
        *&buf[4] = v62;
        *&buf[12] = 2053;
        *&buf[14] = v64;
        _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLRR,findNearestPointIndex,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
      }

      v81 = sub_19B87DD40();
      if ((*(v81 + 160) & 0x80000000) != 0 && (*(v81 + 164) & 0x80000000) != 0 && (*(v81 + 168) & 0x80000000) != 0 && !*(v81 + 152))
      {
        goto LABEL_142;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LODWORD(v228[0]) = 134545921;
      *(v228 + 4) = v62;
      WORD2(v228[1]) = 2053;
      *(&v228[1] + 6) = *&v64;
      v60 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v60);
    }

LABEL_140:
    if (v60 != buf)
    {
      free(v60);
    }

    goto LABEL_142;
  }

LABEL_246:
  v118 = v221;
  if (v222 == v221)
  {
    *(v8 + 484) = 1;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v131 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,no matched point is found in the current or neighboring cells.Skip this point.", buf, 2u);
    }

    v132 = sub_19B87DD40();
    if (*(v132 + 160) <= 1 && *(v132 + 164) <= 1 && *(v132 + 168) <= 1 && !*(v132 + 152))
    {
      goto LABEL_452;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_449;
    }

    goto LABEL_465;
  }

  v119 = v221 + 4;
  if (v221 + 4 != v222)
  {
    v120 = *v221;
    v121 = v221 + 4;
    do
    {
      v123 = *v121;
      v121 += 4;
      v122 = v123;
      if (v123 < v120)
      {
        v120 = v122;
        v118 = v119;
      }

      v119 = v121;
    }

    while (v121 != v222);
  }

  v124 = *v118;
  *(v8 + 524) = v124;
  if (v124 >= *(v8 + 488))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v133 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v134 = *(v8 + 524);
      v135 = *(v8 + 488);
      *buf = 67240448;
      *&buf[4] = v134;
      *&buf[8] = 1026;
      *&buf[10] = v135;
      _os_log_impl(&dword_19B873000, v133, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,index exceeded buffer range,last matched index,%{public}d,buffer size,%{public}d", buf, 0xEu);
    }

    v136 = sub_19B87DD40();
    if ((*(v136 + 160) & 0x80000000) != 0 && (*(v136 + 164) & 0x80000000) != 0 && (*(v136 + 168) & 0x80000000) != 0 && !*(v136 + 152))
    {
      goto LABEL_452;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v137 = *(v8 + 524);
    v138 = *(v8 + 488);
    LODWORD(v228[0]) = 67240448;
    HIDWORD(v228[0]) = v137;
    LOWORD(v228[1]) = 1026;
    *(&v228[1] + 2) = v138;
    v117 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v117);
    goto LABEL_450;
  }

  if ((*a5 - 1) >= 2)
  {
    if (!*a5)
    {
      v139 = *(v8 + 540);
      if ((v139 & 0x80000000) != 0 || [v10 count] <= v139)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v149 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          v150 = *(v8 + 540);
          *buf = 67240192;
          *&buf[4] = v150;
          _os_log_impl(&dword_19B873000, v149, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,invalid raceStartLineProximityIndex,%{public}d", buf, 8u);
        }

        v151 = sub_19B87DD40();
        if ((*(v151 + 160) & 0x80000000) != 0 && (*(v151 + 164) & 0x80000000) != 0 && (*(v151 + 168) & 0x80000000) != 0 && !*(v151 + 152))
        {
          goto LABEL_452;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v152 = *(v8 + 540);
        LODWORD(v228[0]) = 67240192;
        HIDWORD(v228[0]) = v152;
        v117 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v117);
        goto LABEL_450;
      }

      if (*(v8 + 524) > *(v8 + 540))
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v140 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          v141 = *(v8 + 524);
          v142 = *(v8 + 540);
          *buf = 67240448;
          *&buf[4] = v141;
          *&buf[8] = 1026;
          *&buf[10] = v142;
          _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,user joined the race at a wrong location,lastMatchedPointIndex,%{public}d,raceStartLineProximityIndex,%{public}d", buf, 0xEu);
        }

        v143 = sub_19B87DD40();
        if (*(v143 + 160) > 1 || *(v143 + 164) > 1 || *(v143 + 168) > 1 || *(v143 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v144 = *(v8 + 524);
          v145 = *(v8 + 540);
          LODWORD(v228[0]) = 67240448;
          HIDWORD(v228[0]) = v144;
          LOWORD(v228[1]) = 1026;
          *(&v228[1] + 2) = v145;
          v146 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v146);
          if (v146 != buf)
          {
            free(v146);
          }
        }

        v27 = 0;
        *v216 = v208;
        goto LABEL_453;
      }
    }

LABEL_356:
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v167 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v168 = *a5;
      v169 = *v216;
      *buf = 67240448;
      *&buf[4] = v168;
      *&buf[8] = 1026;
      *&buf[10] = v169;
      _os_log_impl(&dword_19B873000, v167, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,pointType,%{public}d,last matched index,%{public}d", buf, 0xEu);
    }

    v170 = sub_19B87DD40();
    if (*(v170 + 160) > 1 || *(v170 + 164) > 1 || *(v170 + 168) > 1 || *(v170 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v171 = *a5;
      v172 = *v216;
      LODWORD(v228[0]) = 67240448;
      HIDWORD(v228[0]) = v171;
      LOWORD(v228[1]) = 1026;
      *(&v228[1] + 2) = v172;
      v173 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v173);
      if (v173 != buf)
      {
        free(v173);
      }
    }

    v174 = *v216;
    if ([v10 count] - 1 == v174 && *(v8 + 479) == 1)
    {
      *(v8 + 475) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v175 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,reached end of reference route", buf, 2u);
      }

      v176 = sub_19B87DD40();
      if (*(v176 + 160) > 1 || *(v176 + 164) > 1 || *(v176 + 168) > 1 || *(v176 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v228[0]) = 0;
        v177 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v177);
        if (v177 != buf)
        {
          free(v177);
        }
      }
    }

    if ((*(v8 + 475) & 1) == 0 && *(v8 + 483) == 1 && *(v8 + 376) >= *(v8 + 544) - *(v8 + 576))
    {
      v178 = [v10 count];
      v179 = *v210;
      v180 = *(v210 + 8);
      v181 = v178 - 1;
      [objc_msgSend(v10 objectAtIndexedSubscript:{v181), "latitude_deg"}];
      v183 = v182;
      [objc_msgSend(v10 objectAtIndexedSubscript:{v181), "longitude_deg"}];
      v185 = sub_19BA0C01C(v8, v179, v180, v183, v184, 0.0);
      if (*(v8 + 568) < 0.0 && v185 <= *(v8 + 576))
      {
        *(v8 + 568) = v185 * *(v210 + 72) + 2.0;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v186 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          v187 = *(v8 + 568);
          *buf = 134349056;
          *&buf[4] = v187;
          _os_log_impl(&dword_19B873000, v186, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,end the race in %{public}.2lf seconds if it did not happen naturally", buf, 0xCu);
        }

        v188 = sub_19B87DD40();
        if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v189 = *(v8 + 568);
          LODWORD(v228[0]) = 134349056;
          *(v228 + 4) = v189;
          v190 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v190);
          if (v190 != buf)
          {
            free(v190);
          }
        }

        *(v8 + 560) = *(v210 + 32);
      }

      if (*(v8 + 376) >= *(v8 + 544) + -2.0)
      {
        *v216 = [v10 count] - 1;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v201 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v201, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,too close to finish line,jump to the end of the reference route", buf, 2u);
        }

        v202 = sub_19B87DD40();
        if (*(v202 + 160) > 1 || *(v202 + 164) > 1 || *(v202 + 168) > 1 || *(v202 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v228[0]) = 0;
          v203 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v203);
          if (v203 != buf)
          {
            free(v203);
          }
        }
      }

      else if (*(v8 + 560) > 0.0)
      {
        [v211 timestamp_s];
        if (v191 - *(v8 + 560) > *(v8 + 568))
        {
          *v216 = [v10 count] - 1;
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v192 = qword_1EAFE4790;
          v8 = v217;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
          {
            [v211 timestamp_s];
            v8 = v217;
            v193 = *(v217 + 560);
            v194 = *(v217 + 568);
            *buf = 134349568;
            *&buf[4] = v195;
            *&buf[12] = 2050;
            *&buf[14] = v193;
            *&buf[22] = 2050;
            v235 = v194;
            _os_log_impl(&dword_19B873000, v192, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,timeout,jump to the end of the reference route,current time,%{public}.2lf,registeredTimeAtThreshold,%{public}.2lf,endOfRaceTimeThreshold,%{public}.2lf", buf, 0x20u);
          }

          v196 = sub_19B87DD40();
          v10 = v214;
          if (*(v196 + 160) > 1 || *(v196 + 164) > 1 || *(v196 + 168) > 1 || *(v196 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            [v211 timestamp_s];
            v197 = *(v217 + 560);
            v198 = *(v217 + 568);
            LODWORD(v228[0]) = 134349568;
            *(v228 + 4) = v199;
            WORD2(v228[1]) = 2050;
            *(&v228[1] + 6) = v197;
            HIWORD(v228[2]) = 2050;
            v229 = v198;
            v200 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v200);
            if (v200 != buf)
            {
              free(v200);
            }

            v8 = v217;
            v10 = v214;
          }
        }
      }
    }

    if (sub_19B91DBE4(v8, v211, v10, v216, &v224, a5))
    {
      v27 = 1;
      if (sub_19BA0C01C(v8, *v210, *(v210 + 8), *(v210 + 88), *(v210 + 96), 0.0) <= *(v8 + 576))
      {
        goto LABEL_453;
      }

      *(v8 + 484) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v204 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v204, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,failed to process the most recent point,the matched point is too far away", buf, 2u);
      }

      v205 = sub_19B87DD40();
      if (*(v205 + 160) <= 1 && *(v205 + 164) <= 1 && *(v205 + 168) <= 1 && !*(v205 + 152))
      {
LABEL_452:
        v27 = 0;
        goto LABEL_453;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_449;
      }
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v206 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v206, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,failed to set the most recent point", buf, 2u);
      }

      v207 = sub_19B87DD40();
      if (*(v207 + 160) <= 1 && *(v207 + 164) <= 1 && *(v207 + 168) <= 1 && !*(v207 + 152))
      {
        goto LABEL_452;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_449;
      }
    }

LABEL_465:
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
LABEL_449:
    LOWORD(v228[0]) = 0;
    v117 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v117);
LABEL_450:
    if (v117 != buf)
    {
      free(v117);
    }

    goto LABEL_452;
  }

  v125 = (v209 * 0.75);
  if (v125 < 0 || [v10 count] <= v125)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v147 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = (v209 * 0.75);
      _os_log_impl(&dword_19B873000, v147, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,invalid prematureRaceEndIndex,%{public}d", buf, 8u);
    }

    v148 = sub_19B87DD40();
    if ((*(v148 + 160) & 0x80000000) != 0 && (*(v148 + 164) & 0x80000000) != 0 && (*(v148 + 168) & 0x80000000) != 0 && !*(v148 + 152))
    {
      goto LABEL_452;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LODWORD(v228[0]) = 67240192;
    HIDWORD(v228[0]) = (v209 * 0.75);
    v117 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v117);
    goto LABEL_450;
  }

  v126 = [v10 count];
  v127 = *v216;
  if (v208 > vcvtd_n_f64_u64(v126, 2uLL) || v127 < v125)
  {
    if ([v10 count] - 1 == v127)
    {
      *(v8 + 477) = 0;
    }

    else if (*v216 == v208 && *(v8 + 477) == 1)
    {
      v224 = 1;
    }

    goto LABEL_356;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v153 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v154 = [v10 count];
    v155 = *v216;
    *buf = 134349824;
    *&buf[4] = v154;
    *&buf[12] = 1026;
    *&buf[14] = (v209 * 0.75);
    *&buf[18] = 1026;
    *&buf[20] = v155;
    LOWORD(v235) = 1026;
    *(&v235 + 2) = v208;
    _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,race start point already detected,most recent matched point jumped from head to tail of the reference route,skip this data point to avoid premature race ending,reference route count,%{public}lu,premature race ending index,%{public}d,last matched index,%{public}d,matched index before update,%{public}d", buf, 0x1Eu);
  }

  v156 = sub_19B87DD40();
  if (*(v156 + 160) > 1 || *(v156 + 164) > 1 || *(v156 + 168) > 1 || *(v156 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v157 = [v10 count];
    v158 = *v216;
    LODWORD(v228[0]) = 134349824;
    *(v228 + 4) = v157;
    WORD2(v228[1]) = 1026;
    *(&v228[1] + 6) = (v209 * 0.75);
    WORD1(v228[2]) = 1026;
    HIDWORD(v228[2]) = v158;
    LOWORD(v229) = 1026;
    *(&v229 + 2) = v208;
    v159 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v159);
    if (v159 != buf)
    {
      free(v159);
    }
  }

  *v216 = v208;
  [v211 latitude_deg];
  v161 = v160;
  [v211 longitude_deg];
  v163 = v162;
  [objc_msgSend(v10 objectAtIndexedSubscript:{*v216), "latitude_deg"}];
  v165 = v164;
  [objc_msgSend(v10 objectAtIndexedSubscript:{*v216), "longitude_deg"}];
  if (sub_19BA0C01C(v8, v161, v163, v165, v166, 0.0) <= *(v8 + 576))
  {
    goto LABEL_452;
  }

  v27 = 0;
  *(v8 + 484) = 1;
LABEL_453:
  if (v218)
  {
    v219 = v218;
    operator delete(v218);
  }

  if (v221)
  {
    v222 = v221;
    operator delete(v221);
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_19B91DAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B91DBE4(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  if ((v8 & 0x80000000) != 0 || [a3 count] <= v8)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v15 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v16 = [a3 count];
      v17 = *a4;
      *buf = 134349312;
      v35 = v16;
      v36 = 1026;
      v37 = v17;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLRR,setLocationPoint,index out of bounds,input array size,%{public}lu,index,%{public}d", buf, 0x12u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_55;
    }
  }

  else
  {
    *(a1 + 477) = 0;
    if (!*a6)
    {
      v11 = *a4;
      if ([a3 count] - 1 == v11)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v12 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "CLRR,setLocationPoint,reached end of route", buf, 2u);
        }

        v13 = sub_19B87DD40();
        if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
        {
          goto LABEL_27;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v33[0]) = 0;
        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::setLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const BOOL &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v14);
        if (v14 == buf)
        {
          goto LABEL_27;
        }

LABEL_26:
        free(v14);
        goto LABEL_27;
      }
    }

    v23 = *a4;
    if (!*a4)
    {
      v24 = [a3 count];
      v23 = *a4;
      if (v24 >= 2)
      {
        [a3 objectAtIndex:v23];
        [a3 objectAtIndex:*a4 + 1];
        goto LABEL_37;
      }
    }

    v25 = [a3 count];
    v26 = *a4;
    if (v25 - 1 == v23)
    {
      if (v26 >= 1)
      {
        [a3 objectAtIndex:(v26 - 1)];
        [a3 objectAtIndex:*a4];
        goto LABEL_37;
      }
    }

    else if (v26 >= 1 && [a3 count] > (v26 + 1))
    {
      [a3 objectAtIndex:*a4 - 1];
      [a3 objectAtIndex:*a4];
      [a3 objectAtIndex:*a4 + 1];
LABEL_37:
      v27 = *a4;
      if (v27)
      {
        if ([a3 count] - 1 == v27)
        {
          memset(v33, 0, sizeof(v33));
          sub_19B927D54(&__p);
        }

        memset(v33, 0, sizeof(v33));
        sub_19B927D54(&__p);
      }

      memset(v33, 0, sizeof(v33));
      sub_19B927D54(&__p);
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v28 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v29 = [a3 count];
      v30 = *a4;
      *buf = 134349312;
      v35 = v29;
      v36 = 1026;
      v37 = v30;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLRR,setLocationPoint,index out of bounds,input array size,%{public}lu,index,%{public}d", buf, 0x12u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
LABEL_25:
        v19 = [a3 count];
        v20 = *a4;
        LODWORD(v33[0]) = 134349312;
        *(v33 + 4) = v19;
        WORD2(v33[1]) = 1026;
        *(&v33[1] + 6) = v20;
        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::setLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const BOOL &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v14);
        if (v14 == buf)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_55:
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      goto LABEL_25;
    }
  }

LABEL_27:
  result = 0;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9205FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9206D4(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (vabdd_f64(a2, a4) <= 0.0000001 && vabdd_f64(a3, a5) <= 0.0000001)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= 0.0000001)
  {
    v7 = 0.0;
    if (vabdd_f64(a3, a7) <= 0.0000001)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
  v9 = a4 - a2;
  v10 = a5 - a3;
  v11 = a6 - a2;
  v12 = a7 - a3;
  v13 = sqrt(v10 * v10 + v9 * v9);
  v14 = sqrt(v12 * v12 + v11 * v11);
  if (fabs(v13 * v14) > 0.0000001 && fabs(v13) > 0.0000001)
  {
    v7 = v14 * ((v10 * v12 + v9 * v11) / (v13 * v14)) / v13;
LABEL_8:
    *a1 = v7;
    return 1;
  }

  return v8;
}

uint64_t sub_19B920784(uint64_t a1)
{
  if (*(a1 + 484) == 1)
  {
    ++*(a1 + 512);
  }

  else
  {
    ++*(a1 + 516);
  }

  if ((*(a1 + 476) & 1) == 0 && *(a1 + 512) >= 5u)
  {
    *(a1 + 476) = 1;
  }

  if ((*(a1 + 485) & 1) == 0 && *(a1 + 516) >= 0xAu)
  {
    *(a1 + 485) = 1;
  }

  return sub_19B9207EC(a1);
}

uint64_t sub_19B9207EC(uint64_t a1)
{
  if (*(a1 + 512) > *(a1 + 496) << ((*(a1 + 40) - 3) < 2))
  {
    *(a1 + 478) = 1;
  }

  v2 = *(a1 + 524);
  result = [*(a1 + 48) count];
  v4 = *(a1 + 488);
  if (v4 >= result)
  {
    v4 = result;
  }

  if (v4 * 0.75 <= v2 || (v5 = *(a1 + 512), result = [*(a1 + 48) count], result - *(a1 + 524) <= v5))
  {
    *(a1 + 492) = 0;
    if ((*(a1 + 479) & 1) == 0)
    {
      *(a1 + 492) = *(a1 + 524);
    }
  }

  return result;
}

uint64_t sub_19B9208A0(uint64_t a1)
{
  ++*(a1 + 500);
  *(a1 + 528) = *(a1 + 524) + (*(a1 + 532) & ~(*(a1 + 532) >> 31));
  [objc_msgSend(*(a1 + 48) "objectAtIndexedSubscript:"timestamp_s"")];
  *(a1 + 552) = v2;
  *(a1 + 476) = 0;
  *(a1 + 485) = 0;
  *(a1 + 512) = 0;

  return sub_19B9207EC(a1);
}

uint64_t sub_19B920914(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 492) >= 1)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v2 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 492);
      *buf = 67240192;
      v10 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLRR,getNumberOfRoutePointsToAdd,required number of points,%{public}d", buf, 8u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v8 = *(a1 + 492);
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "int CLRacingRoute::getNumberOfRoutePointsToAdd() const", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  result = *(a1 + 492);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B920AF0(uint64_t a1, void *a2)
{
  v221 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v8 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,input data array is null", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v208) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    result = 4;
    goto LABEL_234;
  }

  v4 = [a2 count];
  if (*(a1 + 473) == 1)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v5 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 492);
      *buf = 67240448;
      *&buf[4] = v6;
      *&buf[8] = 1026;
      *&buf[10] = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,recovery mode,update started,number of requested points,%{public}d,number of given points,%{public}d", buf, 0xEu);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
LABEL_34:
        v15 = *(a1 + 492);
        v208 = 67240448;
        *v209 = v15;
        *&v209[4] = 1026;
        *&v209[6] = v4;
        v16 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }

        goto LABEL_36;
      }

LABEL_362:
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      goto LABEL_34;
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v12 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 492);
      *buf = 67240448;
      *&buf[4] = v13;
      *&buf[8] = 1026;
      *&buf[10] = v4;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,update started,number of requested points,%{public}d,number of given points,%{public}d", buf, 0xEu);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_362;
    }
  }

LABEL_36:
  if (!v4)
  {
    if (!*(a1 + 504))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v47 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,input data array is empty", buf, 2u);
      }

      v48 = sub_19B87DD40();
      if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v208) = 0;
        v49 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v49);
        if (v49 != buf)
        {
          free(v49);
        }
      }

      result = 3;
      goto LABEL_234;
    }

    *(a1 + 479) = 1;
    *(a1 + 492) = 0;
    *(a1 + 473) = 0;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v25 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,no more data available,rolling buffer includes the end of the reference route", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if (*(v26 + 160) <= 1 && *(v26 + 164) <= 1 && *(v26 + 168) <= 1 && !*(v26 + 152))
    {
LABEL_65:
      result = 0;
      goto LABEL_234;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v208) = 0;
    v27 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v27);
LABEL_63:
    if (v27 != buf)
    {
      free(v27);
    }

    goto LABEL_65;
  }

  v17 = *(a1 + 492);
  if (v17 < v4)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v18 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 488);
      v20 = *(a1 + 492);
      *buf = 67240704;
      *&buf[4] = v19;
      *&buf[8] = 1026;
      *&buf[10] = v20;
      *&buf[14] = 1026;
      *&buf[16] = v4;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,numberOfPointsToAdd,%{public}d,routePointsCount,%{public}d", buf, 0x14u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v22 = *(a1 + 488);
    v23 = *(a1 + 492);
    v208 = 67240704;
    *v209 = v22;
    *&v209[4] = 1026;
    *&v209[6] = v23;
    *v210 = 1026;
    *&v210[2] = v4;
    v24 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v24);
LABEL_48:
    if (v24 == buf)
    {
LABEL_50:
      result = 1;
      goto LABEL_234;
    }

LABEL_49:
    free(v24);
    goto LABEL_50;
  }

  if (v17 > v4)
  {
    *(a1 + 479) = 1;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v28 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,rolling buffer includes the end of the reference route", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v208) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  if ((*(a1 + 472) & 1) == 0)
  {
    v38 = [a2 mutableCopy];
    *(a1 + 48) = v38;
    if ([v38 count] > *(a1 + 492))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v39 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 488);
        v41 = *(a1 + 492);
        v42 = [*(a1 + 48) count];
        *buf = 67240704;
        *&buf[4] = v40;
        *&buf[8] = 1026;
        *&buf[10] = v41;
        *&buf[14] = 1026;
        *&buf[16] = v42;
        _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,numberOfPointsToAdd,%{public}d,bufferedRoutePointsCount,%{public}u", buf, 0x14u);
      }

      v43 = sub_19B87DD40();
      if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v44 = *(a1 + 488);
      v45 = *(a1 + 492);
      v46 = [*(a1 + 48) count];
      v208 = 67240704;
      *v209 = v44;
      *&v209[4] = 1026;
      *&v209[6] = v45;
      *v210 = 1026;
      *&v210[2] = v46;
      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v24);
      if (v24 == buf)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v53 = [*(a1 + 48) count];
    v54 = *(a1 + 473);
    if (v53 > 9)
    {
      if ((*(a1 + 473) & 1) == 0)
      {
        *(a1 + 504) = [*(a1 + 48) count];
        goto LABEL_146;
      }
    }

    else if ((*(a1 + 473) & 1) == 0)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v55 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        v56 = [*(a1 + 48) count];
        *buf = 67240448;
        *&buf[4] = 10;
        *&buf[8] = 1026;
        *&buf[10] = v56;
        _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,location series too short,minimumPointsToProcess,%{public}u,bufferedRoutePointsCount,%{public}u", buf, 0xEu);
      }

      v57 = sub_19B87DD40();
      if ((*(v57 + 160) & 0x80000000) == 0 || (*(v57 + 164) & 0x80000000) == 0 || (*(v57 + 168) & 0x80000000) == 0 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v58 = [*(a1 + 48) count];
        v208 = 67240448;
        *v209 = 10;
        *&v209[4] = 1026;
        *&v209[6] = v58;
        v59 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v59);
        if (v59 != buf)
        {
          free(v59);
        }
      }

      result = 5;
      goto LABEL_234;
    }

    v60 = *(a1 + 528);
    *(a1 + 504) = v60 + [*(a1 + 48) count];
    *(a1 + 524) = 0;
    goto LABEL_146;
  }

  if ((*(a1 + 524) & 0x80000000) == 0)
  {
    [*(a1 + 48) removeObjectsInRange:0];
    v31 = *(a1 + 532);
    if (v31 == -1)
    {
      v31 = 0;
    }

    *(a1 + 532) = v31 + *(a1 + 524);
    *(a1 + 524) = 0;
  }

  if ([*(a1 + 48) count] + v4 > *(a1 + 488))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v32 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 488);
      v34 = [*(a1 + 48) count];
      *buf = 67240704;
      *&buf[4] = v33;
      *&buf[8] = 1026;
      *&buf[10] = v34;
      *&buf[14] = 1026;
      *&buf[16] = v4;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,bufferedRoutePointsCount,%{public}u,routePointsCount,%{public}d", buf, 0x14u);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) != 0 && (*(v35 + 164) & 0x80000000) != 0 && (*(v35 + 168) & 0x80000000) != 0 && !*(v35 + 152))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v36 = *(a1 + 488);
    v37 = [*(a1 + 48) count];
    v208 = 67240704;
    *v209 = v36;
    *&v209[4] = 1026;
    *&v209[6] = v37;
    *v210 = 1026;
    *&v210[2] = v4;
    v24 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v24);
    goto LABEL_48;
  }

  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v50 = [a2 countByEnumeratingWithState:&v203 objects:v207 count:16];
  if (v50)
  {
    v51 = *v204;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v204 != v51)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 48) addObject:*(*(&v203 + 1) + 8 * i)];
        ++*(a1 + 504);
      }

      v50 = [a2 countByEnumeratingWithState:&v203 objects:v207 count:16];
    }

    while (v50);
  }

LABEL_146:
  v61 = *(a1 + 48);
  if (!v61)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v83 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data array is null", buf, 2u);
    }

    v84 = sub_19B87DD40();
    if ((*(v84 + 160) & 0x80000000) != 0 && (*(v84 + 164) & 0x80000000) != 0 && (*(v84 + 168) & 0x80000000) != 0 && !*(v84 + 152))
    {
      goto LABEL_222;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
LABEL_190:
      LOWORD(v208) = 0;
      v85 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v85);
      goto LABEL_220;
    }

LABEL_379:
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    goto LABEL_190;
  }

  if (![*(a1 + 48) count])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v86 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data array is empty", buf, 2u);
    }

    v87 = sub_19B87DD40();
    if ((*(v87 + 160) & 0x80000000) != 0 && (*(v87 + 164) & 0x80000000) != 0 && (*(v87 + 168) & 0x80000000) != 0 && !*(v87 + 152))
    {
      goto LABEL_222;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_190;
    }

    goto LABEL_379;
  }

  if (![v61 objectAtIndex:0])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v88 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data point is null at index,%{public}d", buf, 8u);
    }

    v89 = sub_19B87DD40();
    if ((*(v89 + 160) & 0x80000000) != 0 && (*(v89 + 164) & 0x80000000) != 0 && (*(v89 + 168) & 0x80000000) != 0 && !*(v89 + 152))
    {
      goto LABEL_222;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v208 = 67240192;
    *v209 = 0;
    v85 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v85);
    goto LABEL_220;
  }

  [objc_msgSend(v61 objectAtIndex:{0), "latitude_deg"}];
  v63 = v62;
  [objc_msgSend(v61 objectAtIndex:{0), "longitude_deg"}];
  v65 = v64;
  if (!sub_19B9180C4(v63, v64))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v90 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 134546177;
      *&buf[4] = v63;
      *&buf[12] = 2053;
      *&buf[14] = v65;
      *&buf[22] = 1026;
      *&buf[24] = 0;
      _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,at index,%{public}d", buf, 0x1Cu);
    }

    v91 = sub_19B87DD40();
    if ((*(v91 + 160) & 0x80000000) != 0 && (*(v91 + 164) & 0x80000000) != 0 && (*(v91 + 168) & 0x80000000) != 0 && !*(v91 + 152))
    {
      goto LABEL_222;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v208 = 134546177;
    *v209 = v63;
    *&v209[8] = 2053;
    *v210 = v65;
    *&v210[8] = 1026;
    *&v210[10] = 0;
    v85 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v85);
    goto LABEL_220;
  }

  if ([v61 count] >= 2)
  {
    v66 = 1;
    v67 = v63;
    v68 = v65;
    while (1)
    {
      v69 = [v61 objectAtIndex:v66];
      v70 = v69;
      if (!v69)
      {
        break;
      }

      [v69 latitude_deg];
      v72 = v71;
      [v70 longitude_deg];
      v74 = v73;
      [v70 altitude_m];
      v76 = v75;
      if (!sub_19B9180C4(v72, v74) || (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v76 <= -430.5 || v76 >= 8848.86)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v105 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          *buf = 134546433;
          *&buf[4] = v72;
          *&buf[12] = 2053;
          *&buf[14] = v74;
          *&buf[22] = 2049;
          *&buf[24] = v76;
          *&buf[32] = 1026;
          *&buf[34] = v66;
          _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,invalid reference point,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,at index,%{public}d", buf, 0x26u);
        }

        v106 = sub_19B87DD40();
        if ((*(v106 + 160) & 0x80000000) != 0 && (*(v106 + 164) & 0x80000000) != 0 && (*(v106 + 168) & 0x80000000) != 0 && !*(v106 + 152))
        {
          goto LABEL_222;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v208 = 134546433;
        *v209 = v72;
        *&v209[8] = 2053;
        *v210 = v74;
        *&v210[8] = 2049;
        *&v210[10] = v76;
        *&v210[18] = 1026;
        *v211 = v66;
        v85 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v85);
        goto LABEL_220;
      }

      if (v72 >= v67)
      {
        if (v72 > v63)
        {
          v63 = v72;
        }
      }

      else
      {
        v67 = v72;
      }

      if (v74 >= v68)
      {
        if (v74 > v65)
        {
          v65 = v74;
        }
      }

      else
      {
        v68 = v74;
      }

      [v70 odometer_m];
      if (v77 >= 350.0 && (*(a1 + 474) & 1) == 0 && (*(a1 + 540) & 0x80000000) != 0)
      {
        *(a1 + 540) = v66;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v78 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          v79 = *(a1 + 540);
          *buf = 67240192;
          *&buf[4] = v79;
          _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEFAULT, "CLRR,convertRouteDataToMatrix,raceStartLineProximityIndex,%{public}d", buf, 8u);
        }

        v80 = sub_19B87DD40();
        if (*(v80 + 160) > 1 || *(v80 + 164) > 1 || *(v80 + 168) > 1 || *(v80 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v81 = *(a1 + 540);
          v208 = 67240192;
          *v209 = v81;
          v82 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v82);
          if (v82 != buf)
          {
            free(v82);
          }
        }
      }

      if ([v61 count] <= ++v66)
      {
        goto LABEL_238;
      }
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v107 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v66;
      _os_log_impl(&dword_19B873000, v107, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data point is null at index,%{public}d", buf, 8u);
    }

    v108 = sub_19B87DD40();
    if ((*(v108 + 160) & 0x80000000) != 0 && (*(v108 + 164) & 0x80000000) != 0 && (*(v108 + 168) & 0x80000000) != 0 && !*(v108 + 152))
    {
      goto LABEL_222;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v208 = 67240192;
    *v209 = v66;
    v85 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v85);
LABEL_220:
    if (v85 != buf)
    {
      free(v85);
    }

    goto LABEL_222;
  }

  v68 = v65;
  v67 = v63;
LABEL_238:
  v96 = v67 + -0.0004;
  *(a1 + 56) = v67 + -0.0004;
  v97 = v63 + 0.0004;
  *(a1 + 64) = v63 + 0.0004;
  v98 = fmod(v68 + -0.0004, 360.0);
  v99 = v98;
  if (v98 <= -180.0)
  {
    v99 = v98 + 360.0;
  }

  else if (v98 > 180.0)
  {
    v99 = v98 + -360.0;
  }

  *(a1 + 72) = v99;
  v100 = fmod(v65 + 0.0004, 360.0);
  v101 = v100;
  if (v100 <= -180.0)
  {
    v101 = v100 + 360.0;
  }

  else if (v100 > 180.0)
  {
    v101 = v100 + -360.0;
  }

  *(a1 + 80) = v101;
  if (!sub_19B9180C4(v96, v99) || !sub_19B9180C4(v97, v101))
  {
    goto LABEL_222;
  }

  *(a1 + 88) = 0x500000005;
  v102 = v99 + 360.0;
  if (v99 >= 0.0)
  {
    v102 = v99;
  }

  v103 = v101 + 360.0;
  if (v101 >= 0.0)
  {
    v103 = v101;
  }

  v104 = v103 - v102;
  if (v104 <= 180.0)
  {
    if (v104 < -180.0)
    {
      v104 = v104 + 360.0;
    }
  }

  else
  {
    v104 = v104 + -360.0;
  }

  v109 = fabs(v104);
  if (v97 - v96 < 0.0009)
  {
    *(a1 + 88) = 1;
  }

  if (v109 < 0.0009)
  {
    *(a1 + 92) = 1;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v110 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v111 = *(a1 + 88);
    v112 = *(a1 + 92);
    v113 = *(a1 + 56);
    v114 = *(a1 + 64);
    v115 = *(a1 + 72);
    v116 = *(a1 + 80);
    *buf = 67241473;
    *&buf[4] = v111;
    *&buf[8] = 1026;
    *&buf[10] = v112;
    *&buf[14] = 2053;
    *&buf[16] = v113;
    *&buf[24] = 2053;
    *&buf[26] = v114;
    *&buf[34] = 2053;
    *&buf[36] = v115;
    *v217 = 2053;
    *&v217[2] = v116;
    _os_log_impl(&dword_19B873000, v110, OS_LOG_TYPE_DEFAULT, "CLRR,convertRouteDataToMatrix,boxRows,%{public}d,boxColumns,%{public}d,boxMinLat,%{sensitive}.7lf,boxMaxLat,%{sensitive}.7lf,boxMinLon,%{sensitive}.7lf,boxMaxLon,%{sensitive}.7lf", buf, 0x36u);
  }

  v117 = sub_19B87DD40();
  if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || *(v117 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v118 = *(a1 + 88);
    v119 = *(a1 + 92);
    v120 = *(a1 + 56);
    v121 = *(a1 + 64);
    v122 = *(a1 + 72);
    v123 = *(a1 + 80);
    v208 = 67241473;
    *v209 = v118;
    *&v209[4] = 1026;
    *&v209[6] = v119;
    *v210 = 2053;
    *&v210[2] = v120;
    *&v210[10] = 2053;
    *&v210[12] = v121;
    *v211 = 2053;
    *&v211[2] = v122;
    *v212 = 2053;
    *&v212[2] = v123;
    v124 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v124);
    if (v124 != buf)
    {
      free(v124);
    }
  }

  sub_19B918144((a1 + 96));
  v125 = *(a1 + 92) * *(a1 + 88);
  v201 = (a1 + 96);
  sub_19B91819C((a1 + 96), *(a1 + 92) * *(a1 + 88));
  v126 = (a1 + 96);
  if (v125 >= 1)
  {
    v127 = *(a1 + 104);
    do
    {
      v128 = *(a1 + 112);
      if (v127 >= v128)
      {
        v129 = 0xAAAAAAAAAAAAAAABLL * ((v127 - *v126) >> 3);
        v130 = v129 + 1;
        if (v129 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_19B8B8A40();
        }

        v131 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *v126) >> 3);
        if (2 * v131 > v130)
        {
          v130 = 2 * v131;
        }

        if (v131 >= 0x555555555555555)
        {
          v132 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v132 = v130;
        }

        *&buf[32] = v126;
        if (v132)
        {
          sub_19B927BFC(v132);
        }

        v133 = 24 * v129;
        *buf = 0;
        *&buf[8] = v133;
        *&buf[16] = 24 * v129;
        *&buf[24] = 0;
        *v133 = 0;
        *(v133 + 8) = 0;
        *(v133 + 16) = 0;
        v127 = (*&buf[16] + 24);
        v134 = *(a1 + 96);
        v135 = *(a1 + 104) - v134;
        v136 = *&buf[8] - v135;
        memcpy((*&buf[8] - v135), v134, v135);
        v137 = *(a1 + 96);
        *(a1 + 96) = v136;
        *(a1 + 104) = v127;
        v138 = *(a1 + 112);
        *(a1 + 112) = *&buf[24];
        *&buf[16] = v137;
        *&buf[24] = v138;
        *buf = v137;
        *&buf[8] = v137;
        sub_19B927C54(buf);
        v126 = (a1 + 96);
      }

      else
      {
        *v127 = 0;
        v127[1] = 0;
        v127[2] = 0;
        v127 += 3;
        *(a1 + 104) = v127;
      }

      *(a1 + 104) = v127;
      --v125;
    }

    while (v125);
  }

  if (![v61 count])
  {
LABEL_364:
    ++*(a1 + 520);
    *(a1 + 492) = 0;
    *(a1 + 472) = 1;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v185 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v186 = *(a1 + 520);
      v187 = *(a1 + 524);
      v188 = *(a1 + 532);
      v189 = *(a1 + 504);
      v190 = *(a1 + 492);
      v191 = *(a1 + 472);
      *buf = 67241472;
      *&buf[4] = v186;
      *&buf[8] = 1026;
      *&buf[10] = v187;
      *&buf[14] = 1026;
      *&buf[16] = v188;
      *&buf[20] = 1026;
      *&buf[22] = v189;
      *&buf[26] = 1026;
      *&buf[28] = v190;
      *&buf[32] = 1026;
      *&buf[34] = v191;
      _os_log_impl(&dword_19B873000, v185, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,update completed,rollingBufferUpdateCounter,%{public}d,lastMatchedPointIndex,%{public}d,rollingBufferStartIndexOnReferenceRoute,%{public}d,referenceRouteDataPointCounter,%{public}d,numberOfRoutePointsToAdd,%{public}d,routePointsArrayInitialized,%{public}d", buf, 0x26u);
    }

    v192 = sub_19B87DD40();
    if (*(v192 + 160) <= 1 && *(v192 + 164) <= 1 && *(v192 + 168) <= 1 && !*(v192 + 152))
    {
      goto LABEL_65;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v193 = *(a1 + 520);
    v194 = *(a1 + 524);
    v195 = *(a1 + 532);
    v196 = *(a1 + 504);
    v197 = *(a1 + 492);
    v198 = *(a1 + 472);
    v208 = 67241472;
    *v209 = v193;
    *&v209[4] = 1026;
    *&v209[6] = v194;
    *v210 = 1026;
    *&v210[2] = v195;
    *&v210[6] = 1026;
    *&v210[8] = v196;
    *&v210[12] = 1026;
    *&v210[14] = v197;
    *&v210[18] = 1026;
    *v211 = v198;
    v27 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v27);
    goto LABEL_63;
  }

  v139 = 0;
  v140 = 0;
  v141 = 0;
  v200 = -1;
  v142 = 0xFFFFFFFF00000000;
  v199 = 0xFFFFFFFFLL;
  while (1)
  {
    v202 = v140;
    v143 = [v61 objectAtIndex:v141];
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v144 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      [v143 timestamp_s];
      v146 = v145;
      [v143 latitude_deg];
      v148 = v147;
      [v143 longitude_deg];
      v150 = v149;
      [v143 altitude_m];
      v152 = v151;
      [v143 odometer_m];
      v154 = v153;
      v155 = [v143 signalEnvironmentType];
      *buf = 134350593;
      *&buf[4] = v146;
      *&buf[12] = 2053;
      *&buf[14] = v148;
      *&buf[22] = 2053;
      *&buf[24] = v150;
      *&buf[32] = 2049;
      *&buf[34] = v152;
      *&buf[42] = 2050;
      *v217 = v154;
      *&v217[8] = 1026;
      v218 = v155;
      v219 = 1026;
      v220 = v141;
      _os_log_impl(&dword_19B873000, v144, OS_LOG_TYPE_DEFAULT, "CLRR,convertRouteDataToMatrix,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{public}.2lf,signalEnv,%{public}d,pointCount,%{public}d", buf, 0x40u);
    }

    v156 = sub_19B87DD40();
    if (*(v156 + 160) > 1 || *(v156 + 164) > 1 || *(v156 + 168) > 1 || *(v156 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      [v143 timestamp_s];
      v158 = v157;
      [v143 latitude_deg];
      v160 = v159;
      [v143 longitude_deg];
      v162 = v161;
      [v143 altitude_m];
      v164 = v163;
      [v143 odometer_m];
      v166 = v165;
      v167 = [v143 signalEnvironmentType];
      v208 = 134350593;
      *v209 = v158;
      *&v209[8] = 2053;
      *v210 = v160;
      *&v210[8] = 2053;
      *&v210[10] = v162;
      *&v210[18] = 2049;
      *v211 = v164;
      *&v211[8] = 2050;
      *v212 = v166;
      *&v212[8] = 1026;
      v213 = v167;
      v214 = 1026;
      v215 = v141;
      v168 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v168);
      if (v168 != buf)
      {
        free(v168);
      }
    }

    [v143 latitude_deg];
    v170 = v169;
    [v143 longitude_deg];
    v172 = sub_19B91825C(a1 + 56, v170, v171);
    if (v172 == -1)
    {
      break;
    }

    v173 = v172;
    if (!v141)
    {
      v199 = 0;
      goto LABEL_338;
    }

    if (v141 == [v61 count] - 1)
    {
      v184 = *v201 + 24 * v200;
      if (v173 == v200)
      {
        *buf = v199 - v139;
      }

      else
      {
        *buf = v199 + v142;
        sub_19B9183CC(v184, buf);
        v184 = *v201 + 24 * v173;
        *buf = v202;
      }

      sub_19B9183CC(v184, buf);
      goto LABEL_364;
    }

    if (v173 != v200)
    {
      v174 = *v201 + 24 * v200;
      *buf = v142 + v199;
      sub_19B9183CC(v174, buf);
      v199 = v141;
LABEL_338:
      v200 = v173;
    }

    v175 = [v61 count];
    ++v141;
    v140 = v202 + 0x100000001;
    v139 -= 0x100000000;
    v142 += 0x100000000;
    if (v175 <= v141)
    {
      goto LABEL_364;
    }
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v176 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    [v143 latitude_deg];
    v178 = v177;
    [v143 longitude_deg];
    *buf = 134545921;
    *&buf[4] = v178;
    *&buf[12] = 2053;
    *&buf[14] = v179;
    _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,invalid index for location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
  }

  v180 = sub_19B87DD40();
  if ((*(v180 + 160) & 0x80000000) == 0 || (*(v180 + 164) & 0x80000000) == 0 || (*(v180 + 168) & 0x80000000) == 0 || *(v180 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    [v143 latitude_deg];
    v182 = v181;
    [v143 longitude_deg];
    v208 = 134545921;
    *v209 = v182;
    *&v209[8] = 2053;
    *v210 = v183;
    v85 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v85);
    goto LABEL_220;
  }

LABEL_222:
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v92 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,unable to convert reference route to matrix", buf, 2u);
  }

  v93 = sub_19B87DD40();
  if ((*(v93 + 160) & 0x80000000) == 0 || (*(v93 + 164) & 0x80000000) == 0 || (*(v93 + 168) & 0x80000000) == 0 || *(v93 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v208) = 0;
    v94 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v94);
    if (v94 != buf)
    {
      free(v94);
    }
  }

  result = 2;
LABEL_234:
  v95 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B92335C(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 524);
  if ((v4 & 0x80000000) == 0 && [*(a1 + 48) count] >= v4)
  {
    [a2 timestamp_s];
    v14 = v13 - *(a1 + 328);
    if (v14 < 0.0)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v23 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v38 = v14;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLRR,getDistanceDuringOffRoutePeriod,invalid time, %{public}.2lf", buf, 0xCu);
      }

      v24 = sub_19B87DD40();
      if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
      {
        goto LABEL_15;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      goto LABEL_13;
    }

    [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{*(a1 + 524)), "timestamp_s"}];
    v16 = v14 + v15;
    *(a3 + 80) = *(a1 + 376);
    *(a3 + 168) = *(a1 + 464);
    [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "count") - 1), "timestamp_s"}];
    if (v17 >= v16)
    {
      v25 = *(a1 + 524);
      if ([*(a1 + 48) count] <= v25)
      {
        goto LABEL_55;
      }

      while (1)
      {
        [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{v25), "timestamp_s"}];
        if (v26 >= v16)
        {
          break;
        }

        ++v25;
        v27 = [*(a1 + 48) count];
        result = 1;
        if (v27 <= v25)
        {
          goto LABEL_16;
        }
      }

      [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{v25), "odometer_m"}];
      *(a3 + 168) = v28;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v29 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a3 + 80);
        v31 = *(a3 + 168);
        *buf = 134283777;
        v38 = v30;
        v39 = 2049;
        v40 = v31;
        _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "CLRR,getDistanceDuringOffRoutePeriod,distAlongRefRoute,%{private}.2lf,refDistAlongRefRoute,%{private}.2lf", buf, 0x16u);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
      {
        goto LABEL_55;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "count") - 1), "odometer_m"}];
      *(a3 + 168) = v18;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v19 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a3 + 80);
        v21 = *(a3 + 168);
        *buf = 134283777;
        v38 = v20;
        v39 = 2049;
        v40 = v21;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLRR,getDistanceDuringOffRoutePeriod,distAlongRefRoute,%{private}.2lf,refDistAlongRefRoute,%{private}.2lf", buf, 0x16u);
      }

      v22 = sub_19B87DD40();
      if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
      {
        goto LABEL_55;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
LABEL_53:
        v35 = *(a3 + 80);
        v36 = *(a3 + 168);
        v33 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::updateDistanceDuringOffRoutePeriod(const CLRoutePoint *, RacingRouteScoreboard &) const", "CoreLocation: %s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }

LABEL_55:
        result = 1;
        goto LABEL_16;
      }
    }

    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    goto LABEL_53;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v7 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 524);
    *buf = 67240192;
    LODWORD(v38) = v8;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "CLRR,getDistanceDuringOffRoutePeriod,invalid array index, %{public}d", buf, 8u);
  }

  v9 = sub_19B87DD40();
  if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
  {
    goto LABEL_15;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v34 = *(a1 + 524);
LABEL_13:
  v10 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateDistanceDuringOffRoutePeriod(const CLRoutePoint *, RacingRouteScoreboard &) const", "CoreLocation: %s\n", v10);
  if (v10 != buf)
  {
    free(v10);
  }

LABEL_15:
  result = 0;
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9239F0(uint64_t a1, double *a2, uint64_t *a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v6 = a2[16];
  v7 = a2[5];
  v8 = a2[10];
  v9 = a2[21];
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v10 = v6 - v7;
  v11 = qword_1EAFE4790;
  v12 = "NSt3__110__function6__funcIZNK29CLGeoMapFeatureAccessGeometry19roadsAtIntersectionER10CLMapCrumbPNS_4listIN13CLMapGeometry23IntersectionQueryResultENS_9allocatorIS7_EEEESB_bRKNS_10shared_ptrI9CLMapRoadEEbddRdE3$_1NS8_ISI_EEFPU37objcproto26GEOMapFeatureAccessRequest11objc_objectU13block_pointerFvP7NSErrorEEEE" + 275;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a3;
    if (*(a3 + 23) < 0)
    {
      v13 = *a3;
    }

    v14 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 4);
    v17 = *(a2 + 5);
    v18 = *(a2 + 6);
    v19 = *(a2 + 7);
    v20 = *(a2 + 8);
    v21 = *(a2 + 9);
    v22 = *(a2 + 2);
    v23 = *(a2 + 3);
    v24 = *(a2 + 10);
    v25 = *(a2 + 11);
    v26 = *(a2 + 12);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    v29 = *(a2 + 17);
    v30 = *(a2 + 18);
    v31 = *(a2 + 19);
    v33 = *(a2 + 14);
    v32 = *(a2 + 15);
    v34 = *(a2 + 20);
    v35 = *(a2 + 21);
    v40 = *(a1 + 40);
    *buf = 136452611;
    v66 = v13;
    v67 = 2050;
    v68 = v16;
    v69 = 2053;
    v70 = v14;
    v71 = 2053;
    v72 = v15;
    v73 = 2049;
    v74 = v22;
    v75 = 2050;
    v76 = v17;
    v77 = 2050;
    v78 = v18;
    v79 = 2050;
    v80 = v19;
    v81 = 2050;
    v82 = v20;
    v83 = 2049;
    v84 = v21;
    v85 = 2050;
    v86 = v23;
    v87 = 2050;
    v88 = v24;
    v89 = 2050;
    v90 = v32;
    v91 = 2053;
    v92 = v25;
    v93 = 2053;
    v94 = v26;
    v95 = 2049;
    v96 = v27;
    v97 = 2050;
    v98 = v28;
    v99 = 2050;
    v100 = v29;
    v101 = 2050;
    v102 = v30;
    v103 = 2050;
    v104 = v31;
    v12 = "ectU13block_pointerFvP7NSErrorEEEE";
    v105 = 2049;
    v106 = v34;
    v107 = 2050;
    v108 = v33;
    v109 = 2050;
    v110 = v35;
    v111 = 1026;
    v112 = v40;
    v113 = 2050;
    v114 = v10;
    v115 = 2050;
    v116 = v8 - v9;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "CLRR,printDebugLog,pointType,%{public}s,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,timeFromStart,%{public}.1lf,offRouteTime,%{public}.1lf,distFromStart,%{public}.2lf,offRouteDist,%{public}.2lf,pace,%{private}.2lf,odom,%{public}.2lf,distAlongRefRoute,%{public}.2lf,refTime,%{public}.1lf,refLat,%{sensitive}.7lf,refLon,%{sensitive}.7lf,refAlt,%{private}.2lf,refTimeFromStart,%{public}.1lf,refOffRouteTime,%{public}.1lf,refDistFromStart,%{public}.2lf,refOffRouteDist,%{public}.2lf,refPace,%{private}.2lf,refOdom,%{public}.2lf,refDistAlongRefRoute,%{public}.2lf,signalEnv,%{public}d,timeAhead,%{public}.2lf,distanceAhead,%{public}.2lf", buf, 0x102u);
  }

  v36 = sub_19B87DD40();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    if (*(a3 + 23) < 0)
    {
      v37 = *a3;
    }

    v41 = *(v12 + 177);
    v42 = *(a2 + 4);
    v43 = *a2;
    v44 = *(a2 + 1);
    v45 = *(a2 + 2);
    v46 = *(a2 + 5);
    v47 = *(a2 + 6);
    v48 = *(a2 + 7);
    v49 = *(a2 + 8);
    v50 = *(a2 + 9);
    v51 = *(a2 + 3);
    v52 = *(a2 + 10);
    v53 = *(a2 + 15);
    v54 = *(a2 + 11);
    v55 = *(a2 + 12);
    v56 = *(a2 + 13);
    v57 = *(a2 + 16);
    v58 = *(a2 + 17);
    v59 = *(a2 + 18);
    v60 = *(a2 + 19);
    v61 = *(a2 + 20);
    v62 = *(a2 + 14);
    v63 = *(a2 + 21);
    v64 = *(a1 + 40);
    v38 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::printDebugLog(const RacingRouteScoreboard &, const std::string) const", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B923E48(uint64_t a1, int *a2, int *a3, _DWORD *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 <= 8 && ((1 << *a2) & 0x150) != 0 || v4 == 90603)
  {
    v8 = *a3;
    if (*a3 > 9)
    {
      *(a1 + 44) = v4;
      *(a1 + 488) = v8;
      *(a1 + 496) = *a4;
      *(a1 + 492) = v8;
      *(a1 + 480) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v15 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 44);
        v17 = *(a1 + 488);
        v18 = *(a1 + 492);
        v19 = *(a1 + 496);
        *buf = 67240960;
        v35 = v16;
        v36 = 1026;
        v37 = v17;
        v38 = 1026;
        v39 = v18;
        v40 = 1026;
        v41 = v19;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "CLRR,configureRouteModel,configuration succeeded,workout activity type,%{public}u,route points rolling buffer size,%{public}d,number of route points to add,%{public}d,off route grace duration,%{public}d", buf, 0x1Au);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v29 = *(a1 + 44);
        v31 = *(a1 + 488);
        v32 = *(a1 + 492);
        v33 = *(a1 + 496);
        v21 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteConfigurationState CLRacingRoute::configureRouteModel(const CLMotionActivity::Type &, const int &, const int &)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      result = 0;
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v9 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        v10 = *a3;
        *buf = 67240192;
        v35 = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLRR,configureRouteModel,buffer size is too small,%{public}d", buf, 8u);
      }

      v11 = sub_19B87DD40();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v28 = *a3;
        v12 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteConfigurationState CLRacingRoute::configureRouteModel(const CLMotionActivity::Type &, const int &, const int &)", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      result = 2;
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v23 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v24 = *a2;
      *buf = 67240192;
      v35 = v24;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLRR,configureRouteModel,unsupported activity type,%{public}d", buf, 8u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v30 = *a2;
      v26 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteConfigurationState CLRacingRoute::configureRouteModel(const CLMotionActivity::Type &, const int &, const int &)", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    result = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B924398(uint64_t a1, void *a2, uint64_t a3)
{
  v178 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 480) & 1) == 0)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v6 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,route model has NOT been configured successfully,expire the race session", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v150) = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    *(a1 + 478) = 1;
  }

  if (*(a1 + 475) == 1)
  {
    sub_19B9185F0(a1);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v9 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,passed finish line", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v150) = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    result = 3;
    goto LABEL_98;
  }

  if (a2)
  {
    [a2 timestamp_s];
    if (v13 < *(a1 + 328) || ([a2 odometer_m], v14 < *(a1 + 320)))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v15 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        [a2 timestamp_s];
        v17 = v16;
        v18 = *(a1 + 328);
        [a2 odometer_m];
        v19 = *(a1 + 320);
        *buf = 134349824;
        v165 = v17;
        v166 = 2050;
        v167 = v18;
        v168 = 2050;
        v169 = v20;
        v170 = 2050;
        v171 = v19;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,invalid input data,time,%{public}.1lf,lastOnRouteTime,%{public}.1lf,odom,%{public}.2lf,lastOnRouteOdom,%{public}.2lf", buf, 0x2Au);
      }

      v21 = sub_19B87DD40();
      if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
      {
        goto LABEL_97;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      [a2 timestamp_s];
      v23 = v22;
      v24 = *(a1 + 328);
      [a2 odometer_m];
      v25 = *(a1 + 320);
      v150 = 134349824;
      v151 = v23;
      v152 = 2050;
      v153 = v24;
      v154 = 2050;
      v155 = v26;
      v156 = 2050;
      v157 = v25;
      v27 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v27);
      if (v27 == buf)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    [a2 latitude_deg];
    v32 = v31;
    [a2 longitude_deg];
    if (!sub_19B9180C4(v32, v33) || ([a2 altitude_m], (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || v34 <= -430.5 || v34 >= 8848.86)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v41 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        [a2 latitude_deg];
        v43 = v42;
        [a2 longitude_deg];
        v45 = v44;
        [a2 altitude_m];
        *buf = 134546177;
        v165 = v43;
        v166 = 2053;
        v167 = v45;
        v168 = 2049;
        v169 = v46;
        _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,invalid input data,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf", buf, 0x20u);
      }

      v47 = sub_19B87DD40();
      if ((*(v47 + 160) & 0x80000000) != 0 && (*(v47 + 164) & 0x80000000) != 0 && (*(v47 + 168) & 0x80000000) != 0 && !*(v47 + 152))
      {
        goto LABEL_97;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      [a2 latitude_deg];
      v49 = v48;
      [a2 longitude_deg];
      v51 = v50;
      [a2 altitude_m];
      v150 = 134546177;
      v151 = v49;
      v152 = 2053;
      v153 = v51;
      v154 = 2049;
      v155 = v52;
      v27 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v27);
      goto LABEL_95;
    }

    if (*(a1 + 478) == 1)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v35 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,race session expired", buf, 2u);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v150) = 0;
        v37 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      if (*(a1 + 474) == 1 && (sub_19B92335C(a1, a2, a3) & 1) == 0)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v38 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,race session expired but failed to updateDistanceDuringOffRoutePeriod", buf, 2u);
        }

        v39 = sub_19B87DD40();
        if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v150) = 0;
          v40 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }
      }

      result = 6;
      goto LABEL_98;
    }

    ++*(a1 + 508);
    *(a1 + 484) = 0;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v54 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      [a2 timestamp_s];
      v56 = v55;
      [a2 latitude_deg];
      v58 = v57;
      [a2 longitude_deg];
      v60 = v59;
      [a2 altitude_m];
      v62 = v61;
      [a2 odometer_m];
      v64 = v63;
      v65 = [a2 signalEnvironmentType];
      v66 = *(a1 + 508);
      *buf = 134285057;
      v165 = v56;
      v166 = 2053;
      v167 = v58;
      v168 = 2053;
      v169 = v60;
      v170 = 2049;
      v171 = v62;
      v172 = 2049;
      v173 = v64;
      v174 = 1025;
      v175 = v65;
      v176 = 1026;
      v177 = v66;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,pointType,currentLocation,time,%{private}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{private}.2lf,signalEnv,%{private}d,pointCount,%{public}d", buf, 0x40u);
    }

    v67 = sub_19B87DD40();
    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      [a2 timestamp_s];
      v69 = v68;
      [a2 latitude_deg];
      v71 = v70;
      [a2 longitude_deg];
      v73 = v72;
      [a2 altitude_m];
      v75 = v74;
      [a2 odometer_m];
      v77 = v76;
      v78 = [a2 signalEnvironmentType];
      v79 = *(a1 + 508);
      v150 = 134285057;
      v151 = v69;
      v152 = 2053;
      v153 = v71;
      v154 = 2053;
      v155 = v73;
      v156 = 2049;
      v157 = v75;
      v158 = 2049;
      v159 = v77;
      v160 = 1025;
      v161 = v78;
      v162 = 1026;
      v163 = v79;
      v80 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v80);
      if (v80 != buf)
      {
        free(v80);
      }
    }

    if ((*(a1 + 483) & 1) == 0 && *(a1 + 479) == 1 && [*(a1 + 48) count])
    {
      [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "count") - 1), "odometer_m"}];
      *(a1 + 544) = v81;
      *(a1 + 483) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v82 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v83 = *(a1 + 544);
        *buf = 134283521;
        v165 = v83;
        _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,reference route total length,%{private}.2lf", buf, 0xCu);
      }

      v84 = sub_19B87DD40();
      if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v85 = *(a1 + 544);
        v150 = 134283521;
        v151 = v85;
        v86 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v86);
        if (v86 != buf)
        {
          free(v86);
        }
      }
    }

    v87 = *(a1 + 40);
    if (v87 != [a2 signalEnvironmentType])
    {
      v88 = [a2 signalEnvironmentType];
      *(a1 + 40) = 0;
      if (v88 >= 5 && v88 != 6)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v125 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          v126 = [a2 signalEnvironmentType];
          *buf = 67240192;
          LODWORD(v165) = v126;
          _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,invalid signal environment type,%{public}d", buf, 8u);
        }

        v127 = sub_19B87DD40();
        if ((*(v127 + 160) & 0x80000000) != 0 && (*(v127 + 164) & 0x80000000) != 0 && (*(v127 + 168) & 0x80000000) != 0 && !*(v127 + 152))
        {
          goto LABEL_97;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v150 = 67240192;
        LODWORD(v151) = [a2 signalEnvironmentType];
        v27 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v27);
LABEL_95:
        if (v27 == buf)
        {
LABEL_97:
          result = 5;
          goto LABEL_98;
        }

LABEL_96:
        free(v27);
        goto LABEL_97;
      }

      *(a1 + 40) = v88;
      if (v88 - 1 > 5)
      {
        v89 = 0x4044000000000000;
      }

      else
      {
        v89 = qword_19BA8A5A0[v88 - 1];
      }

      *(a1 + 576) = v89;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v90 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
      {
        v91 = *(a1 + 576);
        *buf = 134283521;
        v165 = v91;
        _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_DEBUG, "CLRR,getPerformanceResults,nearest neighbor maximum accepted distance,%{private}.2lf", buf, 0xCu);
      }

      v92 = sub_19B87DD40();
      if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v93 = *(a1 + 576);
        v150 = 134283521;
        v151 = v93;
        v94 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v94);
        if (v94 != buf)
        {
          free(v94);
        }
      }
    }

    [a2 latitude_deg];
    v96 = v95;
    [a2 longitude_deg];
    if (sub_19B926648((a1 + 56), v96, v97))
    {
      [a2 latitude_deg];
      v99 = v98;
      [a2 longitude_deg];
      v101 = sub_19B91825C(a1 + 56, v99, v100);
      v149 = v101;
      if ((v101 & 0x80000000) != 0 || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) <= v101)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v114 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          [a2 latitude_deg];
          v116 = v115;
          [a2 longitude_deg];
          *buf = 134545921;
          v165 = v116;
          v166 = 2053;
          v167 = v117;
          _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,unspecified state,invalid index for location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
        }

        v118 = sub_19B87DD40();
        if ((*(v118 + 160) & 0x80000000) != 0 && (*(v118 + 164) & 0x80000000) != 0 && (*(v118 + 168) & 0x80000000) != 0 && !*(v118 + 152))
        {
          goto LABEL_301;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        [a2 latitude_deg];
        v120 = v119;
        [a2 longitude_deg];
        v150 = 134545921;
        v151 = v120;
        v152 = 2053;
        v153 = v121;
        v122 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v122);
        if (v122 == buf)
        {
          goto LABEL_301;
        }

        goto LABEL_300;
      }

      v102 = *(a1 + 524);
      if ((v102 & 0x80000000) == 0 && [*(a1 + 48) count] > v102)
      {
        [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{*(a1 + 524)), "latitude_deg"}];
        v104 = v103;
        [objc_msgSend(*(a1 + 48) objectAtIndexedSubscript:{*(a1 + 524)), "longitude_deg"}];
        *(a1 + 536) = sub_19B91825C(a1 + 56, v104, v105);
      }

      if (*(a1 + 474))
      {
        if ((*(a1 + 476) & 1) != 0 || *(a1 + 485) == 1)
        {
          v106 = *(a1 + 48);
          *buf = 1;
          if (sub_19B91AB54(a1, a2, v106, &v149, buf, a3))
          {
            sub_19B9208A0(a1);
            sub_19B8759E8(v145, "rejoin");
            sub_19B9239F0(a1, a3, v145);
            if (v146 < 0)
            {
              v107 = v145[0];
LABEL_236:
              operator delete(v107);
              goto LABEL_237;
            }

            goto LABEL_237;
          }

          *(a3 + 144) = 0u;
          *(a3 + 160) = 0u;
          *(a3 + 112) = 0u;
          *(a3 + 128) = 0u;
          *(a3 + 80) = 0u;
          *(a3 + 96) = 0u;
          *(a3 + 48) = 0u;
          *(a3 + 64) = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          sub_19B920784(a1);
          if (*(a1 + 476) == 1)
          {
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v133 = qword_1EAFE4790;
            if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v133, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,user is off-route", buf, 2u);
            }

            v134 = sub_19B87DD40();
            if (*(v134 + 160) > 1 || *(v134 + 164) > 1 || *(v134 + 168) > 1 || *(v134 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4788 != -1)
              {
                dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
              }

              LOWORD(v150) = 0;
              v135 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v135);
              if (v135 != buf)
              {
                free(v135);
              }
            }

            if (sub_19B92335C(a1, a2, a3))
            {
              goto LABEL_190;
            }

            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v136 = qword_1EAFE4790;
            if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v136, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,user is off-route but failed to updateDistanceDuringOffRoutePeriod", buf, 2u);
            }

            v137 = sub_19B87DD40();
            if ((*(v137 + 160) & 0x80000000) != 0 && (*(v137 + 164) & 0x80000000) != 0 && (*(v137 + 168) & 0x80000000) != 0 && !*(v137 + 152))
            {
              goto LABEL_190;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            LOWORD(v150) = 0;
            v113 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v113);
LABEL_188:
            if (v113 != buf)
            {
              free(v113);
            }

LABEL_190:
            result = 2;
            goto LABEL_98;
          }

          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v139 = qword_1EAFE4790;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v139, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,unspecified state", buf, 2u);
          }

          v140 = sub_19B87DD40();
          if (*(v140 + 160) <= 1 && *(v140 + 164) <= 1 && *(v140 + 168) <= 1 && !*(v140 + 152))
          {
            goto LABEL_301;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 == -1)
          {
            goto LABEL_298;
          }
        }

        else
        {
          v138 = *(a1 + 48);
          *buf = 2;
          if (sub_19B91AB54(a1, a2, v138, &v149, buf, a3))
          {
            sub_19B9208A0(a1);
            sub_19B8759E8(v143, "onRoute");
            sub_19B9239F0(a1, a3, v143);
            if ((v144 & 0x80000000) == 0)
            {
              goto LABEL_237;
            }

            v107 = v143[0];
            goto LABEL_236;
          }

          *(a3 + 144) = 0u;
          *(a3 + 160) = 0u;
          *(a3 + 112) = 0u;
          *(a3 + 128) = 0u;
          *(a3 + 80) = 0u;
          *(a3 + 96) = 0u;
          *(a3 + 48) = 0u;
          *(a3 + 64) = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          sub_19B920784(a1);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v141 = qword_1EAFE4790;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v141, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,unspecified state", buf, 2u);
          }

          v142 = sub_19B87DD40();
          if (*(v142 + 160) <= 1 && *(v142 + 164) <= 1 && *(v142 + 168) <= 1 && !*(v142 + 152))
          {
            goto LABEL_301;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 == -1)
          {
            goto LABEL_298;
          }
        }
      }

      else
      {
        v130 = *(a1 + 48);
        *buf = 0;
        if (sub_19B91AB54(a1, a2, v130, &v149, buf, a3))
        {
          *(a1 + 474) = 1;
          sub_19B9208A0(a1);
          sub_19B8759E8(__p, "start");
          sub_19B9239F0(a1, a3, __p);
          if (v148 < 0)
          {
            v107 = __p[0];
            goto LABEL_236;
          }

LABEL_237:
          result = 1;
          goto LABEL_98;
        }

        *(a3 + 144) = 0u;
        *(a3 + 160) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 128) = 0u;
        *(a3 + 80) = 0u;
        *(a3 + 96) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v131 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,race not started yet,unspecified state", buf, 2u);
        }

        v132 = sub_19B87DD40();
        if (*(v132 + 160) <= 1 && *(v132 + 164) <= 1 && *(v132 + 168) <= 1 && !*(v132 + 152))
        {
          goto LABEL_301;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 == -1)
        {
          goto LABEL_298;
        }
      }

      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
LABEL_298:
      LOWORD(v150) = 0;
      v122 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v122);
LABEL_299:
      if (v122 != buf)
      {
LABEL_300:
        free(v122);
      }

LABEL_301:
      result = 0;
      goto LABEL_98;
    }

    *(a1 + 484) = 1;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    if (*(a1 + 474))
    {
      sub_19B920784(a1);
      if (*(a1 + 476) == 1)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v108 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v108, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,current location outside of bounding box,user is off-route", buf, 2u);
        }

        v109 = sub_19B87DD40();
        if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v150) = 0;
          v110 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v110);
          if (v110 != buf)
          {
            free(v110);
          }
        }

        if (sub_19B92335C(a1, a2, a3))
        {
          goto LABEL_190;
        }

        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v111 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,user is off-route but failed to updateDistanceDuringOffRoutePeriod", buf, 2u);
        }

        v112 = sub_19B87DD40();
        if ((*(v112 + 160) & 0x80000000) != 0 && (*(v112 + 164) & 0x80000000) != 0 && (*(v112 + 168) & 0x80000000) != 0 && !*(v112 + 152))
        {
          goto LABEL_190;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v150) = 0;
        v113 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v113);
        goto LABEL_188;
      }

      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v128 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,current location outside of bounding box,unspecified state", buf, 2u);
      }

      v129 = sub_19B87DD40();
      if (*(v129 + 160) <= 1 && *(v129 + 164) <= 1 && *(v129 + 168) <= 1 && !*(v129 + 152))
      {
        goto LABEL_301;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_211;
      }
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v123 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v123, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,race not started yet,current location outside of bounding box,unspecified state", buf, 2u);
      }

      v124 = sub_19B87DD40();
      if (*(v124 + 160) <= 1 && *(v124 + 164) <= 1 && *(v124 + 168) <= 1 && !*(v124 + 152))
      {
        goto LABEL_301;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_211;
      }
    }

    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
LABEL_211:
    LOWORD(v150) = 0;
    v122 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v122);
    goto LABEL_299;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v28 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,current data point is null", buf, 2u);
  }

  v29 = sub_19B87DD40();
  if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v150) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  result = 4;
LABEL_98:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9265F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B926648(double *a1, double a2, double a3)
{
  v3 = fabs(a2);
  if (v3 < 0.00003 && fabs(a3) < 0.00003)
  {
    return 0;
  }

  v4 = 0;
  if (a3 >= -180.0 && v3 <= 90.0 && a3 <= 180.0)
  {
    if (*a1 > a2 || a1[1] < a2)
    {
      return 0;
    }

    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= 0.0 && v7 >= 0.0 || v6 <= 0.0 && v7 <= 0.0)
    {
      return v7 >= a3 && v6 <= a3;
    }

    v8 = 360.0;
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }

    v9 = v7 + 360.0;
    if (v7 >= 0.0)
    {
      v9 = a1[3];
    }

    v10 = v9 - v6;
    if (v9 - v6 <= 180.0)
    {
      if (v10 < -180.0)
      {
        v10 = v10 + 360.0;
      }
    }

    else
    {
      v10 = v10 + -360.0;
    }

    v11 = a3 + 360.0;
    if (a3 >= 0.0)
    {
      v11 = a3;
    }

    v12 = v9 - v11;
    if (v12 <= 180.0)
    {
      if (v12 < -180.0)
      {
        v12 = v12 + 360.0;
      }
    }

    else
    {
      v12 = v12 + -360.0;
    }

    v13 = fabs(v10);
    v14 = fabs(v12);
    v15 = v6 - v11;
    if (v15 <= 180.0)
    {
      if (v15 >= -180.0)
      {
        return fabs(v15) <= v13 && v14 <= v13;
      }
    }

    else
    {
      v8 = -360.0;
    }

    v15 = v15 + v8;
    return fabs(v15) <= v13 && v14 <= v13;
  }

  return v4;
}

__n128 sub_19B9267B0(uint64_t a1)
{
  v1 = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;

  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 48) = 0u;
  sub_19B918144((v1 + 96));
  *(v1 + 120) = 0u;
  v1 += 120;
  *(v1 + 400) = 0;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 350) = 0u;
  *(v1 + 420) = -1;
  *(v1 + 404) = -1;
  *(v1 + 412) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v1 + 424) = result;
  *(v1 + 440) = result;
  *(v1 + 456) = 0x4044000000000000;
  return result;
}

uint64_t sub_19B926868(uint64_t a1, void *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v4 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLRR,setRacingRouteParameters,set race parameters", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::setRacingRouteParameters(CLRacingRouteParameters *)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (!a2)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v64 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters is null", buf, 2u);
    }

    v65 = sub_19B87DD40();
    if ((*(v65 + 160) & 0x80000000) != 0 && (*(v65 + 164) & 0x80000000) != 0 && (*(v65 + 168) & 0x80000000) != 0 && !*(v65 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 routeMatrixIndexVec])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v66 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.routeMatrixIndexVec is null", buf, 2u);
    }

    v67 = sub_19B87DD40();
    if ((*(v67 + 160) & 0x80000000) != 0 && (*(v67 + 164) & 0x80000000) != 0 && (*(v67 + 168) & 0x80000000) != 0 && !*(v67 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 racingRouteVariables])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v68 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.racingRouteVariables is null", buf, 2u);
    }

    v69 = sub_19B87DD40();
    if ((*(v69 + 160) & 0x80000000) != 0 && (*(v69 + 164) & 0x80000000) != 0 && (*(v69 + 168) & 0x80000000) != 0 && !*(v69 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 routeBoundingBox])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v70 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.routeBoundingBox is null", buf, 2u);
    }

    v71 = sub_19B87DD40();
    if ((*(v71 + 160) & 0x80000000) != 0 && (*(v71 + 164) & 0x80000000) != 0 && (*(v71 + 168) & 0x80000000) != 0 && !*(v71 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 startPointOnCurrentRoute])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v72 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.startPointOnCurrentRoute is null", buf, 2u);
    }

    v73 = sub_19B87DD40();
    if ((*(v73 + 160) & 0x80000000) != 0 && (*(v73 + 164) & 0x80000000) != 0 && (*(v73 + 168) & 0x80000000) != 0 && !*(v73 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 startPointOnReferenceRoute])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v74 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.startPointOnReferenceRoute is null", buf, 2u);
    }

    v75 = sub_19B87DD40();
    if ((*(v75 + 160) & 0x80000000) != 0 && (*(v75 + 164) & 0x80000000) != 0 && (*(v75 + 168) & 0x80000000) != 0 && !*(v75 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 lastOnRouteDataPoint])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v76 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.lastOnRouteDataPoint is null", buf, 2u);
    }

    v77 = sub_19B87DD40();
    if ((*(v77 + 160) & 0x80000000) != 0 && (*(v77 + 164) & 0x80000000) != 0 && (*(v77 + 168) & 0x80000000) != 0 && !*(v77 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

  if (![a2 lastProjectedDataPoint])
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v78 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.lastProjectedDataPoint is null", buf, 2u);
    }

    v79 = sub_19B87DD40();
    if ((*(v79 + 160) & 0x80000000) != 0 && (*(v79 + 164) & 0x80000000) != 0 && (*(v79 + 168) & 0x80000000) != 0 && !*(v79 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
LABEL_107:
      v80 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::setRacingRouteParameters(CLRacingRouteParameters *)", "CoreLocation: %s\n", v80);
      if (v80 != buf)
      {
        free(v80);
      }

LABEL_109:
      result = 0;
      goto LABEL_110;
    }

LABEL_125:
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    goto LABEL_107;
  }

  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 120) = v7;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 128) = v8;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 136) = v9;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 144) = v10;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 152) = v11;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 160) = v12;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 168) = v13;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 176) = v14;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 184) = v15;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 192) = v16;
  [objc_msgSend(a2 "startPointOnCurrentRoute")];
  *(a1 + 200) = v17;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 208) = v18;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 216) = v19;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 224) = v20;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 232) = v21;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 240) = v22;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 248) = v23;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 256) = v24;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 264) = v25;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 272) = v26;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 280) = v27;
  [objc_msgSend(a2 "startPointOnReferenceRoute")];
  *(a1 + 288) = v28;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 296) = v29;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 304) = v30;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 312) = v31;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 320) = v32;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 328) = v33;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 336) = v34;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 344) = v35;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 352) = v36;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 360) = v37;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 368) = v38;
  [objc_msgSend(a2 "lastOnRouteDataPoint")];
  *(a1 + 376) = v39;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 384) = v40;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 392) = v41;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 400) = v42;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 408) = v43;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 416) = v44;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 424) = v45;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 432) = v46;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 440) = v47;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 448) = v48;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 456) = v49;
  [objc_msgSend(a2 "lastProjectedDataPoint")];
  *(a1 + 464) = v50;
  *(a1 + 474) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 475) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 476) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 477) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 478) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 479) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 480) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 481) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 482) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 483) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 484) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 485) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 488) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 492) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 496) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 500) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 504) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 508) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 512) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 516) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 520) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 524) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 528) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 532) = [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 536) = [objc_msgSend(a2 "racingRouteVariables")];
  [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 544) = v51;
  [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 552) = v52;
  [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 560) = v53;
  [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 568) = v54;
  [objc_msgSend(a2 "racingRouteVariables")];
  *(a1 + 576) = v55;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 492) = *(a1 + 488);
  *(a1 + 473) = 1;
  *(a1 + 479) = 0;
  *(a1 + 483) = 0;
  *(a1 + 544) = 0xBFF0000000000000;
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v56 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v57 = *(a1 + 473);
    v58 = *(a1 + 524);
    v59 = *(a1 + 528);
    v60 = *(a1 + 552);
    *buf = 67240960;
    v87 = v57;
    v88 = 1026;
    v89 = v58;
    v90 = 1026;
    v91 = v59;
    v92 = 2050;
    v93 = v60;
    _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEFAULT, "CLRR,setRacingRouteParameters,recoveryMode,%{public}d,lastMatchedPointIndex,%{public}d,lastMatchedPointIndexOnReferenceRoute,%{public}d,timestampOfLastMatchedPointOnReferenceRoute,%{public}.1lf", buf, 0x1Eu);
  }

  v61 = sub_19B87DD40();
  if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v82 = *(a1 + 473);
    v83 = *(a1 + 524);
    v84 = *(a1 + 528);
    v85 = *(a1 + 552);
    v62 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::setRacingRouteParameters(CLRacingRouteParameters *)", "CoreLocation: %s\n", v62);
    if (v62 != buf)
    {
      free(v62);
    }
  }

  result = 1;
LABEL_110:
  v81 = *MEMORY[0x1E69E9840];
  return result;
}

CLRacingRouteParameters *sub_19B927888(uint64_t a1)
{
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3)];
  if (*(a1 + 104) != *(a1 + 96))
  {
    v2 = 0;
    do
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(*(a1 + 96) + 24 * v2 + 8) != *(*(a1 + 96) + 24 * v2))
      {
        v4 = 0;
        v5 = 0;
        do
        {
          v6 = [CLPair alloc];
          v7 = (*(*(a1 + 96) + 24 * v2) + v4);
          [v3 addObject:{-[CLPair initWithFirst:second:](v6, "initWithFirst:second:", *v7, v7[1])}];
          ++v5;
          v4 += 8;
        }

        while (v5 < (*(*(a1 + 96) + 24 * v2 + 8) - *(*(a1 + 96) + 24 * v2)) >> 3);
      }

      [v18 addObject:v3];
      ++v2;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) > v2);
  }

  v8 = [[CLRacingRouteState alloc] initWithLatitude:*(a1 + 120) longitude:*(a1 + 128) altitude:*(a1 + 136) odometer:*(a1 + 144) timestamp:*(a1 + 152) timeSinceStart:*(a1 + 160) offRouteTime:*(a1 + 168) distanceSinceStart:*(a1 + 176) offRouteDistance:*(a1 + 184) averagePace:*(a1 + 192) distanceAlongReference:*(a1 + 200)];
  v9 = [[CLRacingRouteState alloc] initWithLatitude:*(a1 + 208) longitude:*(a1 + 216) altitude:*(a1 + 224) odometer:*(a1 + 232) timestamp:*(a1 + 240) timeSinceStart:*(a1 + 248) offRouteTime:*(a1 + 256) distanceSinceStart:*(a1 + 264) offRouteDistance:*(a1 + 272) averagePace:*(a1 + 280) distanceAlongReference:*(a1 + 288)];
  v10 = [[CLRacingRouteState alloc] initWithLatitude:*(a1 + 296) longitude:*(a1 + 304) altitude:*(a1 + 312) odometer:*(a1 + 320) timestamp:*(a1 + 328) timeSinceStart:*(a1 + 336) offRouteTime:*(a1 + 344) distanceSinceStart:*(a1 + 352) offRouteDistance:*(a1 + 360) averagePace:*(a1 + 368) distanceAlongReference:*(a1 + 376)];
  v11 = [[CLRacingRouteState alloc] initWithLatitude:*(a1 + 384) longitude:*(a1 + 392) altitude:*(a1 + 400) odometer:*(a1 + 408) timestamp:*(a1 + 416) timeSinceStart:*(a1 + 424) offRouteTime:*(a1 + 432) distanceSinceStart:*(a1 + 440) offRouteDistance:*(a1 + 448) averagePace:*(a1 + 456) distanceAlongReference:*(a1 + 464)];
  v12 = [[CLRouteBoundingBox alloc] initWithMinLatitude:*(a1 + 88) maxLatitude:*(a1 + 92) minLongitude:*(a1 + 56) maxLongitude:*(a1 + 64) nRows:*(a1 + 72) nColumns:*(a1 + 80)];
  v13 = [CLRacingRouteVariables alloc];
  LODWORD(v17) = *(a1 + 536);
  WORD2(v16) = *(a1 + 484);
  LODWORD(v16) = *(a1 + 480);
  v14 = -[CLRacingRouteParameters initWithRouteMatrixIndexVec:racingRouteVariables:startPointOnCurrentRoute:startPointOnReferenceRoute:lastOnRouteDataPoint:lastProjectedDataPoint:routeBoundingBox:]([CLRacingRouteParameters alloc], "initWithRouteMatrixIndexVec:racingRouteVariables:startPointOnCurrentRoute:startPointOnReferenceRoute:lastOnRouteDataPoint:lastProjectedDataPoint:routeBoundingBox:", [v18 copy], -[CLRacingRouteVariables copy](-[CLRacingRouteVariables initWithRaceStartPointDetected:raceEndPointDetected:userIsOffRoute:projectedOnNearestPoint:raceSessionExpired:rollingBufferReachedEndOfReferenceRoute:routeConfigurationSuccessful:racingRouteAnalyticsSent:prematureRaceEndDetected:referenceRouteTotalLengthDetermined:locationPointIsOutsideOfAcceptedRange:locationPointNotMatched:routePointsBufferSize:numberOfRoutePointsToAdd:offRouteGraceDuration:matchedPointCounter:referenceRouteDataPointCounter:currentRouteDataPointCounter:offRouteDataPointCounter:inutileDataPointCounter:rollingBufferUpdateCounter:lastMatchedPointIndex:lastMatchedPointIndexOnReferenceRoute:rollingBufferStartIndexOnReferenceRoute:matrixCellIndexForLastMatchedPoint:referenceRouteTotalLength:timestampOfLastMatchedPointOnReferenceRoute:registeredTimeAtThresholdDistance:endOfRaceTimeThreshold:nearestNeighborMaximumAcceptedDistance:](v13, "initWithRaceStartPointDetected:raceEndPointDetected:userIsOffRoute:projectedOnNearestPoint:raceSessionExpired:rollingBufferReachedEndOfReferenceRoute:routeConfigurationSuccessful:racingRouteAnalyticsSent:prematureRaceEndDetected:referenceRouteTotalLengthDetermined:locationPointIsOutsideOfAcceptedRange:locationPointNotMatched:routePointsBufferSize:numberOfRoutePointsToAdd:offRouteGraceDuration:matchedPointCounter:referenceRouteDataPointCounter:currentRouteDataPointCounter:offRouteDataPointCounter:inutileDataPointCounter:rollingBufferUpdateCounter:lastMatchedPointIndex:lastMatchedPointIndexOnReferenceRoute:rollingBufferStartIndexOnReferenceRoute:matrixCellIndexForLastMatchedPoint:referenceRouteTotalLength:timestampOfLastMatchedPointOnReferenceRoute:registeredTimeAtThresholdDistance:endOfRaceTimeThreshold:nearestNeighborMaximumAcceptedDistance:", *(a1 + 474), *(a1 + 475), *(a1 + 476), *(a1 + 477), *(a1 + 478), *(a1 + 479), *(a1 + 544), *(a1 + 552), *(a1 + 560), *(a1 + 568), *(a1 + 576), v16, *(a1 + 488), *(a1 + 496), *(a1 + 504), *(a1 + 512), *(a1 + 520), *(a1 + 528), v17), "copy"), -[CLRacingRouteState copy](v8, "copy"), -[CLRacingRouteState copy](v9, "copy"), -[CLRacingRouteState copy](v10, "copy"), -[CLRacingRouteState copy](v11, "copy"), -[CLRouteBoundingBox copy](v12, "copy"));

  return v14;
}

os_log_t sub_19B927BCC()
{
  result = os_log_create("com.apple.locationd.Position", "RacingRoute");
  qword_1EAFE4790 = result;
  return result;
}

void sub_19B927BFC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B927C54(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B927CB8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B927D00(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B918144(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B927D54(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_19B927DC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B927DE8(void *a1)
{
  sub_19B8756F0(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B927EA4(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_19B927E68;
  }

  else
  {
    v5 = sub_19B927E2C;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_19B927F3C(uint64_t *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithUTF8String:", a2), 0}];
  if (v4)
  {
    v24 = 0;
    if (objc_opt_respondsToSelector())
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:&v24];
    }

    else
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
    }

    v11 = *a1;
    if (!v5)
    {
      (*(v11 + 872))(a1);
      result = v24;
      if (!v24)
      {
        goto LABEL_42;
      }

      v12 = [v24 domain];
      if ([v12 isEqual:*MEMORY[0x1E696A250]] && objc_msgSend(v24, "code") == 260)
      {
        if (qword_1ED519078 != -1)
        {
          dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
        }

        v13 = qword_1ED519080;
        if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
        {
          v14 = [objc_msgSend(v24 "description")];
          *buf = 68289538;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2082;
          v30 = a2;
          v31 = 2082;
          v32 = v14;
          _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
          }
        }

        v15 = qword_1ED519080;
        result = os_signpost_enabled(qword_1ED519080);
        if (!result)
        {
          goto LABEL_42;
        }

        v16 = [objc_msgSend(v24 "description")];
        *buf = 68289538;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = a2;
        v31 = 2082;
        v32 = v16;
        v9 = "file does not exist... clearing";
        v10 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1ED519078 != -1)
        {
          dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
        }

        v20 = qword_1ED519080;
        if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_msgSend(v24 "description")];
          *buf = 68289538;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2082;
          v30 = a2;
          v31 = 2082;
          v32 = v21;
          _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
          }
        }

        v15 = qword_1ED519080;
        result = os_signpost_enabled(qword_1ED519080);
        if (!result)
        {
          goto LABEL_42;
        }

        v22 = [objc_msgSend(v24 "description")];
        *buf = 68289538;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = a2;
        v31 = 2082;
        v32 = v22;
        v9 = "#Warning Error reading file";
        v10 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v18 = v15;
      v19 = 38;
      goto LABEL_41;
    }

    if ((*(v11 + 784))(a1))
    {
      result = 1;
      goto LABEL_42;
    }

    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v17 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = a2;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v7 = qword_1ED519080;
    result = os_signpost_enabled(qword_1ED519080);
    if (result)
    {
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = a2;
      v9 = "could not deserialize property list";
      v10 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v6 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v7 = qword_1ED519080;
    result = os_signpost_enabled(qword_1ED519080);
    if (result)
    {
      *buf = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = a2;
      v9 = "Invalid fileURL";
      v10 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v18 = v7;
      v19 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, buf, v19);
      result = 0;
    }
  }

LABEL_42:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B928574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v17 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v18 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x19B928478);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B928704(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithUTF8String:", a1), 0}];
  if (v7)
  {
    v8 = 536870913;
    if (a3)
    {
      v8 = 1;
    }

    if (a3 == 1)
    {
      v9 = 1073741825;
    }

    else
    {
      v9 = v8;
    }

    v21 = 0;
    v10 = [a2 writeToURL:v7 options:v9 error:&v21];
    if ((v10 & 1) == 0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v11 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_ERROR))
      {
        v12 = [objc_msgSend(v21 "description")];
        *buf = 136446466;
        v27 = a1;
        v28 = 2082;
        v29 = v12;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      v13 = sub_19B87DD40();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v14 = [objc_msgSend(v21 "description")];
        v22 = 136446466;
        v23 = a1;
        v24 = 2082;
        v25 = v14;
        v15 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v16 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v27 = a1;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v22 = 136446210;
      v23 = a1;
      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_19B928AE0(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 768))(a1, &cf))
  {
    v3 = sub_19B928704(a2, cf, 2);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v4 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = 136446210;
      v11 = a2;
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::saveToFile(const char *) const", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_19B928D00(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  sub_19B8B8B78(v12, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  if ((*(*a1 + 776))(a1, &cf))
  {
    v7 = sub_19B928704(a2, cf, a3);
  }

  else
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v8 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v9 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_19B8B8DC0(v12);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B928F44(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}

uint64_t sub_19B929004(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_19B929068(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
LABEL_47:
      v30 = *MEMORY[0x1E69E9840];
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_46:
        CFRelease(cf);
        goto LABEL_47;
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v20 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v21 = SBYTE3(v38);
        v22 = *__p;
        Count = CFArrayGetCount(cf);
        v24 = __p;
        *buf = 136446722;
        if (v21 < 0)
        {
          v24 = v22;
        }

        v40 = v24;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = Count;
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v25 = sub_19B87DD40();
      if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, v31);
      v26 = v32;
      v27 = v31[0];
      v28 = CFArrayGetCount(cf);
      v29 = v31;
      *__p = 136446722;
      if (v26 < 0)
      {
        v29 = v27;
      }

      *&__p[4] = v29;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v28;
      v19 = _os_log_send_and_compose_impl();
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_46;
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v10 = SBYTE3(v38);
        v11 = *__p;
        v12 = CFGetTypeID(cf);
        v13 = __p;
        if (v10 < 0)
        {
          v13 = v11;
        }

        *buf = 136446722;
        v40 = v13;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = v12;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v14 = sub_19B87DD40();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, v31);
      v15 = v32;
      v16 = v31[0];
      v17 = CFGetTypeID(cf);
      v18 = v31;
      if (v15 < 0)
      {
        v18 = v16;
      }

      *__p = 136446722;
      *&__p[4] = v18;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v17;
      v19 = _os_log_send_and_compose_impl();
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    sub_19B885924("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_46;
  }

  v7 = *(*a1 + 888);
  v8 = *MEMORY[0x1E69E9840];

  v7();
}

void sub_19B929630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B929670@<W0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_19B92C864(a1, a2);
  if (!result)
  {
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
  }

  return result;
}

void sub_19B9296C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9296E0(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_19B929858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B929874(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = *(*a1 + 920);

  return v4(a1, v3);
}

uint64_t sub_19B92991C(uint64_t a1, const char *a2, _WORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B929990(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B929990(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    *buf = 0;
    v6 = sub_19B8765C0(cf, buf);
    if (v6)
    {
      *a3 = *buf;
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B929C4C(uint64_t a1, const char *a2, _WORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B929CC0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B929CC0(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    v11 = 0;
    goto LABEL_35;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberSInt16Type, a3))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        LOWORD(v21) = 0;
        v10 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, short &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_19B876AEC(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_19B87DD40();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v16 = (*(*a1 + 840))(a1);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = a2;
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_19B92A10C(uint64_t a1, const char *a2, _DWORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92A180(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B92A180(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    *buf = 0;
    v6 = sub_19B92C2E0(cf, buf);
    if (v6)
    {
      *a3 = *buf;
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        *&buf[4] = v8;
        v20 = 2112;
        v21 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B92A43C(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92A4B0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B92A4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B92C2E0(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int64_t &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B92A75C(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92A7D0(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B92A7D0(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    v11 = 0;
    goto LABEL_35;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberLongType, a3))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        LOWORD(v21) = 0;
        v10 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, long &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_19B876AEC(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_19B87DD40();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v16 = (*(*a1 + 840))(a1);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = a2;
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_19B92AC1C(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_19B92AD64(a1, v5, &v9);
  if (v6)
  {
    v7 = v9;
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float sub_19B92ACA8(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_19B92AD64(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

uint64_t sub_19B92ACF0(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92AD64(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B92AD64(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B92C4EC(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, double &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_19B92B010(uint64_t a1, const char *a2, std::string *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92B084(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92B084(uint64_t a1, uint64_t a2, std::string *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B92C864(cf, a3);
    if (!v6)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v7 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, std::string &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B92B330(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92B3A4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B92B3A4(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      result = 1;
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v10 = v30 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v33 = v10;
        v34 = 2050;
        v35 = v11;
        v36 = 2050;
        v37 = TypeID;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_19B87DD40();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        sub_19B929670(a2, v24);
        if (v25 >= 0)
        {
          v14 = v24;
        }

        else
        {
          v14 = v24[0];
        }

        v15 = CFGetTypeID(cf);
        v16 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v14;
        v28 = 2050;
        v29 = v15;
        v30 = 2050;
        v31 = v16;
        v17 = _os_log_send_and_compose_impl();
        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v18 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v19 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = a2;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v21 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v21;
        v28 = 2112;
        v29 = a2;
        v22 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      CFRelease(cf);
      result = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B92B85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B92B894(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v10 = sub_19B92B914(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_19B92B914(uint64_t a1, CFTypeID a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf, a5))
  {
    v9 = cf;
    v10 = CFGetTypeID(cf);
    v11 = v10 == CFDataGetTypeID();
    v12 = v11;
    if (v11)
    {
      *a3 = CFDataGetBytePtr(v9);
      *a4 = CFDataGetLength(v9);
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v14 = CFGetTypeID(v9);
        TypeID = CFDataGetTypeID();
        *buf = 134349312;
        v33 = v14;
        v34 = 2050;
        v35 = TypeID;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
      }

      v16 = sub_19B87DD40();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v17 = CFGetTypeID(v9);
        v18 = CFDataGetTypeID();
        v28 = 134349312;
        v29 = v17;
        v30 = 2050;
        v31 = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, const char *&, unsigned int &)", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v20 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v21 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v33 = v21;
        v34 = 2112;
        v35 = a2;
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v22 = sub_19B87DD40();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v23 = (*(*a1 + 840))(a1);
        v28 = 138412546;
        v29 = v23;
        v30 = 2112;
        v31 = a2;
        v24 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    CFRelease(cf);
  }

  else
  {
    v12 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL sub_19B92BD80(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92BDF4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92BDF4(uint64_t a1, CFTypeID a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = cf;
    v7 = CFGetTypeID(cf);
    v8 = v7 == CFDictionaryGetTypeID();
    v9 = v8;
    if (v8)
    {
      if (v6)
      {
        v10 = a3[1];
        if (v10)
        {
          CFRelease(v10);
        }

        a3[1] = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
        (*(*a3 + 848))(a3);
      }

      else
      {
        (*(*a3 + 872))(a3);
      }
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v11 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(v6);
        TypeID = CFDictionaryGetTypeID();
        *buf = 134349312;
        v31 = v12;
        v32 = 2050;
        v33 = TypeID;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
      }

      v14 = sub_19B87DD40();
      if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v15 = CFGetTypeID(v6);
        v16 = CFDictionaryGetTypeID();
        v26 = 134349312;
        v27 = v15;
        v28 = 2050;
        v29 = v16;
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, CLNameValuePair &)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v18 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v19 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = a2;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v21 = (*(*a1 + 840))(a1);
        v26 = 138412546;
        v27 = v21;
        v28 = 2112;
        v29 = a2;
        v22 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_19B92C2E0(const void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v5 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B87DD40();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v7 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int64_t &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != CFBooleanGetTypeID())
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = sub_19B876AEC(a1, buf);
  if (result)
  {
    *a2 = buf[0];
LABEL_17:
    result = 1;
  }

LABEL_20:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B92C4EC(const void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v13 = CFGetTypeID(a1);
      v14 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    CFGetTypeID(a1);
    CFNumberGetTypeID();
    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v8);
    if (v8 == buf)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v8);
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  if (!CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v9 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v8);
    if (v8 == buf)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  result = 1;
LABEL_27:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92C864(const __CFString *cf, std::string *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
      if (!CStringPtr)
      {
        *bufferSize = 0;
        v37.length = CFStringGetLength(cf);
        v37.location = 0;
        CFStringGetBytes(cf, v37, 0x8000100u, 0, 0, 0, 0, bufferSize);
        ++*bufferSize;
        operator new[]();
      }

      sub_19B8D7878(a2, CStringPtr);
      v6 = 1;
      goto LABEL_49;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (BytePtr)
      {
        v10 = xmlBufferCreate();
        if (v10)
        {
          v11 = v10;
          v12 = xmlNewTextWriterMemory(v10, 0);
          if (v12)
          {
            v13 = v12;
            v14 = xmlTextWriterWriteBase64(v12, BytePtr, 0, Length);
            v6 = v14 != -1;
            if (v14 != -1)
            {
              xmlTextWriterFlush(v13);
              v15 = xmlBufferContent(v11);
              v16 = xmlBufferLength(v11);
              if (qword_1ED519058 != -1)
              {
                dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
              }

              v17 = off_1ED519060;
              if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                *&buf[4] = v15;
                *&buf[12] = 1024;
                *&buf[14] = v16;
                *&buf[18] = 2080;
                *&buf[20] = v15;
                _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", buf, 0x1Cu);
              }

              v18 = sub_19B87DD40();
              if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED519058 != -1)
                {
                  dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
                }

                *bufferSize = 134218498;
                *&bufferSize[4] = v15;
                v31 = 1024;
                v32 = v16;
                v33 = 2080;
                v34 = v15;
                v19 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "static BOOL CLNameValuePair::encodeBase64(const void *, unsigned long, std::string &)", "CoreLocation: %s\n", v19);
                if (v19 != buf)
                {
                  free(v19);
                }
              }

              if (v16 < 0)
              {
                sub_19B890AD4();
              }

              if (v16 >= 0x17)
              {
                operator new();
              }

              buf[23] = v16;
              if (v16)
              {
                memmove(buf, v15, v16);
              }

              buf[v16] = 0;
              if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(a2->__r_.__value_.__l.__data_);
              }

              *&a2->__r_.__value_.__l.__data_ = *buf;
              a2->__r_.__value_.__r.__words[2] = *&buf[16];
            }

            xmlFreeTextWriter(v13);
          }

          else
          {
            v6 = 0;
          }

          xmlBufferFree(v11);
          goto LABEL_49;
        }
      }

      else
      {
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v27 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240192;
          *&buf[4] = Length;
          _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "can't convert %{public}u data bytes", buf, 8u);
        }

        v28 = sub_19B87DD40();
        if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
          }

          *bufferSize = 67240192;
          *&bufferSize[4] = Length;
          v29 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }
      }

      v6 = 0;
      goto LABEL_49;
    }
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v20 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEFAULT))
  {
    if (cf)
    {
      v21 = CFGetTypeID(cf);
    }

    else
    {
      v21 = -1;
    }

    *buf = 134349056;
    *&buf[4] = v21;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#Warning type IDs do not match - %{public}lu", buf, 0xCu);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    if (cf)
    {
      v23 = CFGetTypeID(cf);
    }

    else
    {
      v23 = -1;
    }

    *bufferSize = 134349056;
    *&bufferSize[4] = v23;
    v24 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = 0;
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  v6 = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
LABEL_49:
  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_19B92D0EC(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 912))(a1, a2, &cf))
  {
    v5 = CFGetTypeID(cf);
    v6 = v5 == CFArrayGetTypeID();
    v7 = v6;
    if (v6)
    {
      *a3 = cf;
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v9 = v25 >= 0 ? __p : *__p;
        v10 = CFGetTypeID(cf);
        TypeID = CFArrayGetTypeID();
        *buf = 136446722;
        v28 = v9;
        v29 = 2050;
        v30 = v10;
        v31 = 2050;
        v32 = TypeID;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v13 = v19;
        sub_19B929670(a2, v19);
        if (v20 < 0)
        {
          v13 = v19[0];
        }

        v14 = CFGetTypeID(cf);
        v15 = CFArrayGetTypeID();
        *__p = 136446722;
        *&__p[4] = v13;
        v23 = 2050;
        v24 = v14;
        v25 = 2050;
        v26 = v15;
        v16 = _os_log_send_and_compose_impl();
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    CFAutorelease(cf);
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B92D3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B92D410(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v5 = CFGetTypeID(cf);
    v6 = v5 == CFDataGetTypeID();
    v7 = v6;
    if (v6)
    {
      *a3 = cf;
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v9 = v25 >= 0 ? __p : *__p;
        v10 = CFGetTypeID(cf);
        TypeID = CFDataGetTypeID();
        *buf = 136446722;
        v28 = v9;
        v29 = 2050;
        v30 = v10;
        v31 = 2050;
        v32 = TypeID;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v13 = v19;
        sub_19B929670(a2, v19);
        if (v20 < 0)
        {
          v13 = v19[0];
        }

        v14 = CFGetTypeID(cf);
        v15 = CFDataGetTypeID();
        *__p = 136446722;
        *&__p[4] = v13;
        v23 = 2050;
        v24 = v14;
        v25 = 2050;
        v26 = v15;
        v16 = _os_log_send_and_compose_impl();
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFDataRef &, int) const", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    CFAutorelease(cf);
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B92D6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B92D79C(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92D808(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92D808(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92DAAC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92DB18(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92DB18(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const short &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92DDB0(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92DE1C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92DE1C(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v10);
      if (v10 != valuePtr)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B92E0C0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92E12C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E12C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      v15 = 136446210;
      v16 = v9;
      v10 = _os_log_send_and_compose_impl();
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }
  }

  result = v5 != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}