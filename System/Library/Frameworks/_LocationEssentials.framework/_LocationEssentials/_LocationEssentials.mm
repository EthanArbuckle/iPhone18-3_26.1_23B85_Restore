void *copyLocationsFromLocationMessagePayload(void *a1, const char *a2, double a3, double a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKey_(a1, a2, a3, a4, @"LocationCount");
  v9 = objc_msgSend_integerValue(v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(a1, v10, v11, v12, @"Locations");
  v17 = objc_msgSend_objectForKey_(a1, v14, v15, v16, @"LocationsPrivate");
  v21 = objc_msgSend_objectForKey_(a1, v18, v19, v20, @"CoarseMetaData");
  if (v13)
  {
    v25 = v21;
    if (objc_msgSend_length(v13, v22, v23, v24) == 156 * v9 && (!v17 || objc_msgSend_length(v17, v26, v27, v28) == 560 * v9))
    {
      if (v25)
      {
        if (qword_1EB46D6E8 != -1)
        {
          dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
        }

        v29 = qword_1EB46D6F0;
        if (os_log_type_enabled(qword_1EB46D6F0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1AB607000, v29, OS_LOG_TYPE_DEBUG, "Encoded coarse meta data found", buf, 2u);
        }

        v30 = sub_1AB60902C();
        if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EB46D6E8 != -1)
          {
            dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
          }

          LOWORD(v71[0]) = 0;
          v31 = _os_log_send_and_compose_impl();
          sub_1AB60C944("Generic", 1, 0, 2, "NSArray * _Nonnull copyLocationsFromLocationMessagePayload(NSDictionary * _Nonnull)", "CoreLocation: %s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        if (v9 > 1)
        {
          if (qword_1EB46D6E8 != -1)
          {
            dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
          }

          v32 = qword_1EB46D6F0;
          if (os_log_type_enabled(qword_1EB46D6F0, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AB607000, v32, OS_LOG_TYPE_FAULT, "CLLocationManager should not get multiple locations with coarseMetaData", buf, 2u);
          }

          v33 = sub_1AB60902C();
          if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EB46D6E8 != -1)
            {
              dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
            }

            LOWORD(v71[0]) = 0;
            v34 = _os_log_send_and_compose_impl();
            sub_1AB60C944("Generic", 1, 0, 0, "NSArray * _Nonnull copyLocationsFromLocationMessagePayload(NSDictionary * _Nonnull)", "CoreLocation: %s\n", v34);
            if (v34 != buf)
            {
              free(v34);
            }
          }
        }
      }

      v35 = objc_msgSend_bytes(v13, v26, v27, v28);
      v39 = objc_msgSend_bytes(v17, v36, v37, v38);
      v40 = objc_alloc(MEMORY[0x1E695DF70]);
      v13 = objc_msgSend_initWithCapacity_(v40, v41, v42, v43, v9);
      if (v9 >= 1)
      {
        v44 = v39;
        do
        {
          v45 = [CLLocation alloc];
          v47 = v45;
          v48 = v35[1];
          if (v39)
          {
            v71[0] = *v35;
            v71[1] = v48;
            v49 = v35[2];
            v50 = v35[3];
            v51 = v35[5];
            v71[4] = v35[4];
            v71[5] = v51;
            v71[2] = v49;
            v71[3] = v50;
            v52 = v35[6];
            v53 = v35[7];
            v54 = v35[8];
            *&v72[12] = *(v35 + 140);
            v71[7] = v53;
            *v72 = v54;
            v71[6] = v52;
            memcpy(buf, v44, 0x230uLL);
            v58 = objc_msgSend_initWithClientLocation_clientLocationPrivate_coarseMetaData_(v47, v55, v56, v57, v71, buf, v25);
          }

          else
          {
            *buf = *v35;
            *&buf[16] = v48;
            v62 = v35[2];
            v63 = v35[3];
            v64 = v35[5];
            *&buf[64] = v35[4];
            *&buf[80] = v64;
            *&buf[32] = v62;
            *&buf[48] = v63;
            v65 = v35[6];
            v66 = v35[7];
            v67 = v35[8];
            *&buf[140] = *(v35 + 140);
            *&buf[112] = v66;
            *&buf[128] = v67;
            *&buf[96] = v65;
            v58 = objc_msgSend_initWithClientLocation_coarseMetaData_(v45, v46, *&v65, *&v66, buf, v25);
          }

          v68 = v58;
          objc_msgSend_addObject_(v13, v59, v60, v61, v58);

          v44 += 560;
          v35 = (v35 + 156);
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v69 = *MEMORY[0x1E69E9840];
  return v13;
}

long double sub_1AB608878(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 36);
  v5 = *(a3 + 36);
  if (v4 <= 0.0 || v5 <= 0.0)
  {
    if (v4 <= 0.0)
    {
      v7 = 0.0;
      if (v5 <= 0.0)
      {
        goto LABEL_11;
      }

      v6 = *(a3 + 28);
    }

    else
    {
      v6 = *(a2 + 28);
    }
  }

  else
  {
    v6 = (*(a2 + 28) + *(a3 + 28)) * 0.5;
  }

  v7 = -450.0;
  if (v6 >= -450.0)
  {
    v7 = v6;
    if (v6 > 1000000.0)
    {
      v7 = 1000000.0;
    }
  }

LABEL_11:
  v8 = *(a2 + 4);
  v9 = *(a2 + 12);
  v10 = *(a3 + 4);
  v11 = *(a3 + 12);
  if (sub_1AB608AB0(v8, v9, v10, v11))
  {

    return sub_1AB609080(v8, v9, v10, v11);
  }

  else
  {

    return sub_1AB608B34(a1, v8, v9, v10, v11, v7);
  }
}

long double CLClientGetDistanceHighPrecision(_OWORD *a1, _OWORD *a2)
{
  if ((atomic_load_explicit(&qword_1ED4B7FA8, memory_order_acquire) & 1) == 0)
  {
    v12 = a2;
    v13 = a1;
    v11 = __cxa_guard_acquire(&qword_1ED4B7FA8);
    a2 = v12;
    a1 = v13;
    if (v11)
    {
      qword_1ED4B7F90 = 0;
      unk_1ED4B7F98 = 0;
      xmmword_1ED4B7F80 = xmmword_1AB62A580;
      qword_1ED4B7FA0 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1ED4B7FA8);
      a2 = v12;
      a1 = v13;
    }
  }

  v2 = a1[7];
  v16[6] = a1[6];
  v16[7] = v2;
  v17[0] = a1[8];
  *(v17 + 12) = *(a1 + 140);
  v3 = a1[3];
  v16[2] = a1[2];
  v16[3] = v3;
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[1];
  v16[0] = *a1;
  v16[1] = v5;
  v6 = a2[7];
  v14[6] = a2[6];
  v14[7] = v6;
  v15[0] = a2[8];
  *(v15 + 12) = *(a2 + 140);
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[1];
  v14[0] = *a2;
  v14[1] = v9;
  return sub_1AB608878(&xmmword_1ED4B7F80, v16, v14);
}

BOOL sub_1AB608AB0(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

long double sub_1AB608B34(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = 0.0;
  v15 = 0.0;
  if (!sub_1AB608AB0(a2, a3, a4, a5) && sub_1AB608C10(a1, &v15, &v14, &v13, a2, a3, a6, a4, a5, a6))
  {
    return sqrt(v14 * v14 + v15 * v15);
  }

  return sub_1AB609080(a2, a3, a4, a5);
}

BOOL sub_1AB608C10(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_1AB62A580, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

uint64_t sub_1AB60902C()
{
  if (qword_1ED4B7DA8 != -1)
  {
    dispatch_once(&qword_1ED4B7DA8, &unk_1F2038578);
  }

  return qword_1ED4B7DA0;
}

long double sub_1AB609080(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  result = 0.0;
  if (a3 > 90.0)
  {
    return result;
  }

  v7 = fabs(a1);
  if (v7 > 90.0 || a3 < -90.0)
  {
    return result;
  }

  v8 = 360.0;
  v9 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v9 = a4;
  }

  v10 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v10 = a2;
  }

  v11 = v10 - v9;
  if (v11 <= 180.0)
  {
    if (v11 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = -360.0;
  }

  v11 = v11 + v8;
LABEL_12:
  if (fabs(a1 + a3) >= 0.0001)
  {
    v43 = a2;
    v45 = a4;
LABEL_17:
    v12 = v11;
    goto LABEL_18;
  }

  if (v7 < 0.0001 && 180.0 - fabs(v11) < 0.0001)
  {
    return 20037508.3;
  }

  v41 = fabs(v7 + -90.0) < 0.0001;
  if (v41)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v45 = a4;
  v43 = a2;
  if (!v41 && 180.0 - fabs(v11) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (a1 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    a1 = a1 + -0.0001;
  }

LABEL_18:
  v13 = v12 * 0.0174532925;
  v42 = a1;
  v14 = tan(a1 * 0.0174532925);
  v44 = v4;
  v15 = tan(v4 * 0.0174532925);
  v16 = v14 * 0.996647189;
  v17 = v15 * 0.996647189;
  v18 = atan(v16);
  v19 = atan(v17);
  v20 = __sincos_stret(v18);
  v21 = __sincos_stret(v19);
  v22 = 0;
  v23 = v21.__cosval * v20.__cosval;
  v46 = v13;
  while (1)
  {
    v24 = __sincos_stret(v13);
    v25 = sqrt((-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) * (-(v20.__sinval * v21.__cosval) * v24.__cosval + v20.__cosval * v21.__sinval) + v21.__cosval * v24.__sinval * (v21.__cosval * v24.__sinval));
    if (v25 < 2.22044605e-15)
    {
      break;
    }

    v26 = v23 * v24.__cosval + v20.__sinval * v21.__sinval;
    v27 = fabs(v26);
    if (fabs(v25) > 1.0 || v27 > 1.0)
    {
      break;
    }

    v29 = atan2(v25, v26);
    v30 = v23 * v24.__sinval / v25;
    if (v30 > 1.0)
    {
      break;
    }

    v31 = 1.0 - v30 * v30;
    if (fabs(v31) >= 2.22044605e-15)
    {
      v32 = v26 - v21.__sinval * (v20.__sinval + v20.__sinval) / v31;
      v33 = v31 * 0.000209550667 * ((v31 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v32 = -1.0;
      v33 = 0.0;
    }

    v34 = v30 * ((1.0 - v33) * 0.00335281066);
    v35 = v32 * v32 * 2.0 + -1.0;
    v36 = v46 + v34 * (v29 + v25 * v33 * (v32 + v26 * v33 * v35));
    if (vabdd_f64(v36, v13) > 0.000000001)
    {
      v13 = v36;
      if (v22++ < 0x31)
      {
        continue;
      }
    }

    v38 = v31 * 2.72331606e11 / 4.04083e13;
    v39 = v38 * 0.0000610351562 * (v38 * (v38 * (v38 * -175.0 + 320.0) + -768.0) + 4096.0) + 1.0;
    v40 = v38 * 0.0009765625 * (v38 * (v38 * (v38 * -47.0 + 74.0) + -128.0) + 256.0);
    return v39 * 6356752.31 * (v29 - v25 * v40 * (v32 + v40 * 0.25 * ((v32 * v32 * 4.0 + -3.0) * (v40 / 6.0 * v32 * 3.0) + v26 * v35)));
  }

  return sub_1AB6098C0(v42, v43, v44, v45);
}

BOOL CLLocationCoordinate2DIsValid(CLLocationCoordinate2D coord)
{
  v1 = coord.longitude <= 180.0;
  if (fabs(coord.latitude) > 90.0)
  {
    v1 = 0;
  }

  return coord.longitude >= -180.0 && v1;
}

double sub_1AB609558(_OWORD *a1, uint64_t a2, double a3)
{
  v5 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v8;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  *(a2 + 140) = *(a1 + 140);
  *(a2 + 112) = v10;
  *(a2 + 128) = v11;
  *(a2 + 96) = v9;
  v12 = *(a2 + 44);
  if (v12 > 0.0 && a3 != 0.0)
  {
    v13 = *(a2 + 60);
    if (v13 >= 0.0)
    {
      sub_1AB612E8C((a2 + 4), (a2 + 12), *(a2 + 4), *(a2 + 12), a3, v12, v13);
    }
  }

  result = *(a2 + 76) + a3;
  *(a2 + 76) = result;
  return result;
}

uint64_t sub_1AB609610()
{
  qword_1ED4B7F68 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateStyle_(qword_1ED4B7F68, v0, v1, v2, 1);
  objc_msgSend_setTimeStyle_(qword_1ED4B7F68, v3, v4, v5, 4);
  v8 = qword_1ED4B7F68;

  return MEMORY[0x1EEE66B58](v8, sel_setFormatterBehavior_, v6, v7);
}

long double sub_1AB60966C(double a1, double a2, double a3, double a4)
{
  if (sub_1AB608AB0(a1, a2, a3, a4))
  {

    return sub_1AB609080(a1, a2, a3, a4);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    sub_1AB60972C(&v11, &v10, &v9, a1, a2, 0.0, a3, a4, 0.0);
    return sqrt(v10 * v10 + v11 * v11);
  }
}

double sub_1AB60972C(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = 360.0;
  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  if (a8 < 0.0)
  {
    a8 = a8 + 360.0;
  }

  v15 = a8 - a5;
  if (v15 > 180.0)
  {
    v14 = -360.0;
LABEL_8:
    v15 = v15 + v14;
    goto LABEL_9;
  }

  if (v15 < -180.0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = (a7 - a4) * 0.0174532925;
  v17 = (a6 + a9) * 0.5;
  v18 = v15 * 0.0174532925;
  v19 = __sincos_stret((a4 + a7) * 0.0174532925 * 0.5);
  v20 = sqrt(v19.__sinval * -0.00669437999 * v19.__sinval + 1.0);
  *a1 = v16 * (v17 + 6335439.33 / (v20 * (v20 * v20)));
  *a2 = v19.__cosval * (v17 + 6378137.0 / v20) * v18;
  result = a9 - a6;
  *a3 = a9 - a6;
  return result;
}

long double sub_1AB6098C0(double a1, double a2, double a3, double a4)
{
  v5 = 360.0;
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v6 = a4 - a2;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = -360.0;
  }

  v6 = v6 + v5;
LABEL_9:
  v7 = a1 * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = __sincos_stret(v7);
  v12 = v11.__cosval * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = v10 + v12 * (v13 * v13);
  v15 = 1.0 - v14;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = atan2(sqrt(v14), sqrt(v15));
  return (fabs(v11.__sinval) * -21000.0 + 6378160.0) * (v16 + v16);
}

void sub_1AB6099E8(float64x2_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = a1[1].f64[1];
  if (v18 == 0.0 || vabdd_f64(a4, v18) > 0.005)
  {
    a1[1].f64[0] = a4 * 0.0174532925;
    a1[1].f64[1] = a4;
    v19 = __sincos_stret(a4 * 0.0174532925);
    v20 = v19.__sinval * -0.00669437999 * v19.__sinval + 1.0;
    v21 = sqrt(v20);
    v22.f64[0] = v20 * v21;
    v22.f64[1] = v21;
    *a1 = vdivq_f64(xmmword_1AB62A580, v22);
    a1[2].f64[0] = v19.__cosval;
  }

  *a2 = a4;
  *a3 = a5;
  if (fabs(a4) < 90.0 && a7 > 0.0 && a8 > 0.0 && a9 >= 0.0)
  {
    v23 = a7 * a8;
    v24 = __sincos_stret(a9 * 0.0174532925);
    v25 = a5 * 0.0174532925 + v23 * v24.__sinval / ((a1->f64[1] + a6) * a1[2].f64[0]);
    *a2 = (a4 * 0.0174532925 + v23 * v24.__cosval / (a1->f64[0] + a6)) * 57.2957795;
    v26 = v25 * 57.2957795;
    *a3 = v26;
    v27 = *a2;
    if (*a2 > 90.0)
    {
      *a2 = 180.0 - v27;
      v26 = *a3 + 180.0;
      *a3 = v26;
      v27 = *a2;
    }

    if (v27 < -90.0)
    {
      *a2 = -180.0 - v27;
      v26 = *a3 + 180.0;
      *a3 = v26;
    }

    if (v26 > -180.0)
    {
      if (v26 <= 180.0)
      {
        return;
      }
    }

    else
    {
      v26 = v26 + 360.0;
    }

    if (v26 > 180.0)
    {
      v26 = v26 + -360.0;
    }

    *a3 = v26;
  }
}

uint64_t sub_1AB609BE8(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = sub_1AB6178E8(a1);
  *v8 = &unk_1F2037D78;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_1AB6178E8(v8 + 13);
  *(a1 + 104) = &unk_1F2038140;
  sub_1AB6178E8((a1 + 120));
  *(a1 + 120) = &unk_1F2038140;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_1AB6195C0(*(a1 + 80), &v54);
  if (v55 >= 0)
  {
    v10 = &v54;
  }

  else
  {
    v10 = v54;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v12 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v13 = &v54;
      if (v55 < 0)
      {
        v13 = v54;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_1AB607000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    v14 = sub_1AB60902C();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }

      v15 = &v54;
      if (v55 < 0)
      {
        v15 = v54;
      }

      LODWORD(v56.__r_.__value_.__l.__data_) = 136446210;
      *(v56.__r_.__value_.__r.__words + 4) = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (SHIBYTE(v55) < 0)
  {
    sub_1AB60C84C(__dst, v54, *(&v54 + 1));
  }

  else
  {
    *__dst = v54;
    v52 = v55;
  }

  sub_1AB615CEC(__dst, &v53);
  v17 = std::string::append(&v53, "/Library/Preferences/", 0x15uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_1AB6195C0(a2, &__p);
  if ((v50 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v50 & 0x80u) == 0)
  {
    v20 = v50;
  }

  else
  {
    v20 = v49;
  }

  v21 = std::string::append(&v56, p_p, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v47 = 6;
  strcpy(__s, ".plist");
  v23 = std::string::append(buf, __s, 6uLL);
  v24 = v23->__r_.__value_.__r.__words[0];
  v57[0] = v23->__r_.__value_.__l.__size_;
  *(v57 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v26 = v57[0];
  *(a1 + 24) = v24;
  *(a1 + 32) = v26;
  *(a1 + 39) = *(v57 + 7);
  *(a1 + 47) = v25;
  if (v47 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v55) < 0)
  {
    sub_1AB60C84C(v44, v54, *(&v54 + 1));
  }

  else
  {
    *v44 = v54;
    v45 = v55;
  }

  sub_1AB615E98(v44, &v53);
  v27 = std::string::append(&v53, "/", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  sub_1AB6195C0(a2, &__p);
  if ((v50 & 0x80u) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p;
  }

  if ((v50 & 0x80u) == 0)
  {
    v30 = v50;
  }

  else
  {
    v30 = v49;
  }

  v31 = std::string::append(&v56, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v47 = 6;
  strcpy(__s, ".plist");
  v33 = std::string::append(buf, __s, 6uLL);
  v34 = v33->__r_.__value_.__r.__words[0];
  v57[0] = v33->__r_.__value_.__l.__size_;
  *(v57 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v36 = v57[0];
  *(a1 + 48) = v34;
  *(a1 + 56) = v36;
  *(a1 + 63) = *(v57 + 7);
  *(a1 + 71) = v35;
  if (v47 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  v37 = getpwnam("root");
  v41 = 0;
  if (v37)
  {
    v38 = v37;
    pw_uid = v37->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v38->pw_gid;
      if (pw_gid == getgid())
      {
        v41 = 1;
      }
    }
  }

  *(a1 + 16) = v41;
  sub_1AB60A3A4(a1);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  v42 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1AB60A21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_1AB617CE0(v65);
  sub_1AB617CE0(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_1AB617CE0(v63);
  _Unwind_Resume(a1);
}

BOOL sub_1AB60A3A4(uint64_t a1)
{
  os_unfair_lock_lock(&stru_1EB46D8BC);
  v4 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v4 = *v4;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_1AB617E8C((a1 + 120), v4, v2, v3);
  }

LABEL_7:
  v5 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E898]);
  if (*(a1 + 16) == 1)
  {
    sub_1AB60A544(a1, 0);
  }

  os_unfair_lock_unlock(&stru_1EB46D8BC);
  return v5 != 0;
}

void *sub_1AB60A460(uint64_t a1)
{
  *a1 = &unk_1F2037D78;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_1AB617CE0((a1 + 120));
  sub_1AB617CE0((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_1AB617CE0(a1);
}

void sub_1AB60A50C(uint64_t a1)
{
  sub_1AB60A460(a1);

  JUMPOUT(0x1AC5A03A0);
}

void sub_1AB60A544(char *a1, int a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if ((a1[96] & 1) == 0)
  {
    v2 = a1;
    if (!a2)
    {
      goto LABEL_24;
    }

    v3 = (a1 + 24);
    v4 = a1[47];
    v5 = a1 + 24;
    if (v4 < 0)
    {
      v5 = *v3;
    }

    if (!stat(v5, &v65) && (v65.st_uid != *(v2 + 22) || v65.st_gid != *(v2 + 23) || (~v65.st_mode & 0x1B6) != 0))
    {
      v6 = 0x1EB46D000;
      if (qword_1EB46D728 != -1)
      {
        goto LABEL_90;
      }

      while (1)
      {
        v7 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v3;
          if (v2[47] < 0)
          {
            v8 = *v3;
          }

          v9 = *(v2 + 22);
          v10 = *(v2 + 23);
          buf[0].st_dev = 136316674;
          *&buf[0].st_mode = v8;
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = v65.st_uid;
          HIWORD(buf[0].st_uid) = 1024;
          buf[0].st_gid = v9;
          LOWORD(buf[0].st_rdev) = 1024;
          *(&buf[0].st_rdev + 2) = v65.st_gid;
          *(&buf[0].st_rdev + 3) = 1024;
          LODWORD(buf[0].st_atimespec.tv_sec) = v10;
          WORD2(buf[0].st_atimespec.tv_sec) = 1024;
          *(&buf[0].st_atimespec.tv_sec + 6) = v65.st_mode;
          WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
          HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
          _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
        }

        v11 = sub_1AB60902C();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v6 + 229) != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }

          if (v2[47] < 0)
          {
            v3 = *v3;
          }

          v12 = *(v2 + 22);
          v13 = *(v2 + 23);
          v66 = 136316674;
          v67 = v3;
          v68 = 1024;
          st_uid = v65.st_uid;
          v70 = 1024;
          *v71 = v12;
          *&v71[4] = 1024;
          *&v71[6] = v65.st_gid;
          v72 = 1024;
          v73 = v13;
          v74 = 1024;
          st_mode = v65.st_mode;
          v76 = 1024;
          v77 = 438;
          LODWORD(v63) = 48;
          v14 = _os_log_send_and_compose_impl();
          sub_1AB60C944("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

LABEL_24:
        v15 = (v2 + 24);
        v16 = v2 + 24;
        if (v2[47] < 0)
        {
          v16 = *v15;
        }

        v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x8000100u);
        if (!v17)
        {
          break;
        }

        v21 = v17;
        v22 = objc_msgSend_pathComponents(v17, v18, v19, v20);
        v27 = objc_msgSend_count(v22, v23, v24, v25) - 1;
        if (v27 < 2)
        {
LABEL_34:
          CFRelease(v21);
          break;
        }

        PathComponent = v21;
        while (1)
        {
          PathComponent = objc_msgSend_stringByDeletingLastPathComponent(PathComponent, v26, v28, v29, v62, v63, v64);
          if ((objc_msgSend_isEqualToString_(PathComponent, v31, v32, v33, @"/var") & 1) == 0 && (objc_msgSend_isEqualToString_(PathComponent, v26, v28, v29, @"/tmp") & 1) == 0)
          {
            v34 = objc_msgSend_fileSystemRepresentation(PathComponent, v26, v28, v29);
            if (!lstat(v34, buf) && (buf[0].st_mode & 0xF000) == 0xA000)
            {
              break;
            }
          }

          if (--v27 <= 1)
          {
            goto LABEL_34;
          }
        }

        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038518);
        }

        v60 = off_1EB46D730;
        v6 = &off_1AB62A000;
        v3 = "assert";
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = &unk_1AB62CB23;
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_1AB607000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }
        }

        v61 = off_1EB46D730;
        if (os_signpost_enabled(off_1EB46D730))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = &unk_1AB62CB23;
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_signpost_emit_with_name_impl(&dword_1AB607000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }
        }

        v2 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = &unk_1AB62CB23;
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_1AB607000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v63 = 392;
        v64 = "setFileAttributes";
        v62 = "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Shared/Utilities/CLPreferences.mm";
        abort_report_np();
LABEL_90:
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }

      v35 = v2 + 24;
      if (v2[47] < 0)
      {
        v35 = *v15;
      }

      if (!lstat(v35, &v65))
      {
        v37 = v2 + 24;
        if (v2[47] < 0)
        {
          v37 = *v15;
        }

        if (lchmod(v37, 0x1B6u))
        {
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }

          v38 = off_1EB46D730;
          if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
          {
            v39 = v2 + 24;
            if (v2[47] < 0)
            {
              v39 = *v15;
            }

            v40 = *__error();
            v41 = __error();
            v42 = strerror(*v41);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v39;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v40;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v42;
            _os_log_impl(&dword_1AB607000, v38, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v43 = sub_1AB60902C();
          if ((*(v43 + 160) & 0x80000000) == 0 || (*(v43 + 164) & 0x80000000) == 0 || (*(v43 + 168) & 0x80000000) == 0 || *(v43 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EB46D728 != -1)
            {
              dispatch_once(&qword_1EB46D728, &unk_1F2038518);
            }

            v44 = v2 + 24;
            if (v2[47] < 0)
            {
              v44 = *v15;
            }

            v45 = *__error();
            v46 = __error();
            v47 = strerror(*v46);
            v66 = 136446722;
            v67 = v44;
            v68 = 1026;
            st_uid = v45;
            v70 = 2082;
            *v71 = v47;
            v48 = _os_log_send_and_compose_impl();
            sub_1AB60C944("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v48);
            if (v48 != buf)
            {
              free(v48);
            }
          }
        }

        v49 = v2 + 24;
        if (v2[47] < 0)
        {
          v49 = *v15;
        }

        if (lchown(v49, *(v2 + 22), *(v2 + 23)))
        {
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }

          v50 = off_1EB46D730;
          if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
          {
            v51 = v2 + 24;
            if (v2[47] < 0)
            {
              v51 = *v15;
            }

            v52 = *__error();
            v53 = __error();
            v54 = strerror(*v53);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v51;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v52;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v54;
            _os_log_impl(&dword_1AB607000, v50, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v55 = sub_1AB60902C();
          if ((*(v55 + 160) & 0x80000000) == 0 || (*(v55 + 164) & 0x80000000) == 0 || (*(v55 + 168) & 0x80000000) == 0 || *(v55 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EB46D728 != -1)
            {
              dispatch_once(&qword_1EB46D728, &unk_1F2038518);
            }

            if (v2[47] < 0)
            {
              v15 = *v15;
            }

            v56 = *__error();
            v57 = __error();
            v58 = strerror(*v57);
            v66 = 136446722;
            v67 = v15;
            v68 = 1026;
            st_uid = v56;
            v70 = 2082;
            *v71 = v58;
            v59 = _os_log_send_and_compose_impl();
            sub_1AB60C944("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v59);
            if (v59 != buf)
            {
              free(v59);
            }
          }
        }
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

const __CFArray *sub_1AB60AECC(CFStringRef *a1)
{
  v2 = *MEMORY[0x1E695E8B0];
  result = CFPreferencesCopyKeyList(a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    v4 = result;
    CFPreferencesSetMultiple(0, result, a1[9], a1[10], v2);
    CFRelease(v4);
    data = (*a1)[26].data;

    return (data)(a1);
  }

  return result;
}

uint64_t sub_1AB60AF8C(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_1AB60B010(uint64_t a1)
{
  v1 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  CFRelease(v2);
  return Count;
}

CFIndex sub_1AB60B068(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

uint64_t sub_1AB60B0E4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serialize(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1AB60B284()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1AB60B424()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::deserialize(const CFDataRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1AB60B5C4(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_1AB623B68(a1, cf);
    CFRelease(cf);
  }
}

void sub_1AB60B644(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D738 != -1)
  {
    dispatch_once(&qword_1EB46D738, &unk_1F2038538);
  }

  if (!os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_26;
  }

  os_unfair_lock_lock(&stru_1EB46D8BC);
  if ((*(*(a1 + 120) + 856))(a1 + 120) >= 1)
  {
    sub_1AB62348C(a1 + 120);
  }

  os_unfair_lock_unlock(&stru_1EB46D8BC);
  v2 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  v3 = v2;
  if (!v2 || !CFArrayGetCount(v2))
  {
    if (qword_1EB46D738 != -1)
    {
      dispatch_once(&qword_1EB46D738, &unk_1F2038538);
    }

    v7 = qword_1EB46D740;
    if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_DEBUG, "\t<empty>", buf, 2u);
    }

    v8 = sub_1AB60902C();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D738 != -1)
      {
        dispatch_once(&qword_1EB46D738, &unk_1F2038538);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 2, "virtual void CLPreferences::print() const", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }

    goto LABEL_26;
  }

  v14.length = CFArrayGetCount(v3);
  v14.location = 0;
  CFArrayApplyFunction(v3, v14, sub_1AB60B5C4, a1);
  CFRelease(v3);
  v5 = *(a1 + 104);
  v4 = a1 + 104;
  if ((*(v5 + 856))(v4) < 1)
  {
LABEL_26:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *MEMORY[0x1E69E9840];

  sub_1AB62348C(v4);
}

void sub_1AB60B994()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual void CLPreferences::merge(const CLPreferences &, BOOL)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AB60BB30()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::loadFromFile(const char *)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1AB60BCD0()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1AB60BE70()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToBinaryFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1AB60C010(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v5 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v6 = v27;
      sub_1AB6195C0(key, v27);
      if (v30 < 0)
      {
        v6 = *v27;
      }

      sub_1AB6195C0(*(a1 + 72), v25);
      v7 = v26;
      v8 = v25[0];
      sub_1AB6195C0(*(a1 + 80), __p);
      v9 = v25;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v24 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446722;
      v33 = v6;
      v34 = 2082;
      v35 = v9;
      v36 = 2082;
      v37 = v10;
      _os_log_impl(&dword_1AB607000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(*v27);
      }
    }

    v11 = sub_1AB60902C();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }

      sub_1AB6195C0(key, v25);
      if (v26 >= 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = v25[0];
      }

      sub_1AB6195C0(*(a1 + 72), __p);
      v13 = v24;
      v14 = __p[0];
      sub_1AB6195C0(*(a1 + 80), v21);
      v15 = __p;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v22 >= 0)
      {
        v16 = v21;
      }

      else
      {
        v16 = v21[0];
      }

      *v27 = 136446722;
      *&v27[4] = v12;
      v28 = 2082;
      v29 = v15;
      v30 = 2082;
      v31 = v16;
      v17 = _os_log_send_and_compose_impl();
      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    CFPreferencesSetValue(key, value, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v19 = *(*a1 + 848);
    v20 = *MEMORY[0x1E69E9840];

    v19(a1);
  }
}

void sub_1AB60C3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AB60C440(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&stru_1EB46D8BC);
  v6 = sub_1AB61E56C(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&stru_1EB46D8BC);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_1AB61E56C(a1 + 104, a2, a3);
}

void sub_1AB60C50C()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = &unk_1AB62CB23;
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }
    }

    v1 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = &unk_1AB62CB23;
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }
    }

    v2 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = &unk_1AB62CB23;
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_1AB607000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }
}

void sub_1AB60C73C(void *a1)
{
  sub_1AB617CE0(a1);

  JUMPOUT(0x1AC5A03A0);
}

os_log_t sub_1AB60C774()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

void sub_1AB60C7BC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AB60C818(exception, a1);
  __cxa_throw(exception, off_1E79520B0, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1AB60C818(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *sub_1AB60C84C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1AB60C7A4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

os_log_t sub_1AB60C8F0()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EB46D740 = result;
  return result;
}

const char *sub_1AB60C920(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_1E79520D8[a1];
  }
}

uint64_t sub_1AB60C944(const char *a1, int a2, int a3, signed int a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v12 = sub_1AB60902C();
  if (a3)
  {
    return sub_1AB60EC50(v12, a1, a2, a4, a5, a6, va);
  }

  else
  {
    return sub_1AB60E2AC(v12, a1, a2, a4, a5, a6, va);
  }
}

uint64_t sub_1AB60C9C4(float32x4_t *a1, float a2, float a3, float a4, float a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (sub_1AB60CFC8(0, &unk_1EB46D748, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0))
  {
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v10 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_DEBUG, "WMM initialization encountered an error", buf, 2u);
    }

    v11 = sub_1AB60902C();
    if (*(v11 + 160) <= 1 && *(v11 + 164) <= 1 && *(v11 + 168) <= 1 && !*(v11 + 152))
    {
      goto LABEL_24;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 == -1)
    {
LABEL_22:
      v14 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 2, "int declinationCalc(const float, const float, const float, const float, GeomagneticData *)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

LABEL_24:
      result = 0xFFFFFFFFLL;
      goto LABEL_25;
    }

LABEL_32:
    dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    goto LABEL_22;
  }

  *dword_1ED4B6E80 = a2;
  *algn_1ED4B6E84 = a3;
  *&dword_1ED4B6E88 = a4 / 1000.0;
  dword_1ED4B6E8C = LODWORD(a5);
  if (sub_1AB60CFC8(1, 0, &qword_1ED4B6E90, &qword_1ED4B6E90 + 1, &dword_1ED4B6E98, algn_1ED4B6E9C, a4 / 1000.0, a2, a3, a5))
  {
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v12 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v12, OS_LOG_TYPE_DEBUG, "WMM evaluation encountered an error", buf, 2u);
    }

    v13 = sub_1AB60902C();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_24;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  qword_1ED4B6EA0 = qword_1ED4B6E90;
  dword_1ED4B6EA8 = dword_1ED4B6E98;
  *&dword_1ED4B6E8C = *&dword_1ED4B6E8C + 1.0;
  sub_1AB60CFC8(1, 0, &qword_1ED4B6E90, &qword_1ED4B6E90 + 1, &dword_1ED4B6E98, algn_1ED4B6E9C, *&dword_1ED4B6E88, *dword_1ED4B6E80, *algn_1ED4B6E84, *&dword_1ED4B6E8C);
  v25 = *&dword_1ED4B6EA8;
  v17 = *&qword_1ED4B6EA0;
  v19 = __sincosf_stret(*&qword_1ED4B6EA0 * 0.017453);
  cosval = v19.__cosval;
  LODWORD(v24) = *&v19;
  v20 = HIDWORD(qword_1ED4B6EA0);
  v21 = __sincosf_stret(*(&qword_1ED4B6EA0 + 1) * 0.017453);
  if ((v25 * v21.__cosval) < 100.0)
  {
    v17 = log(-1.0);
    *&qword_1ED4B6EA0 = v17;
  }

  if (90.0 - fabsf(*dword_1ED4B6E80) <= 0.001)
  {
    v17 = log(-1.0);
    *&qword_1ED4B6EA0 = v17;
    v23 = v17;
    v22.f32[0] = v17;
  }

  else
  {
    v22.f32[0] = v25 * (cosval * v21.__cosval);
    v23 = v25 * (v24 * v21.__cosval);
  }

  result = 0;
  v22.f32[1] = v23;
  v22.f32[2] = v25 * v21.__sinval;
  v22.f32[3] = v25;
  *a1 = vdivq_f32(v22, vdupq_n_s32(0x447A0000u));
  a1[1].f32[0] = (v25 * v21.__cosval) / 1000.0;
  a1[1].f32[1] = v17;
  a1[1].i32[2] = v20;
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AB60CFC8(int a1, int *a2, float *a3, float *a4, float *a5, float *a6, float a7, float a8, float a9, float a10)
{
  v145 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v18 = a10 - *&dword_1ED4B6ED0;
    v19 = *&dword_1ED4B6EE4;
    if (*&dword_1ED4B6EE4 < 0.0 && v18 < 0.0)
    {
      if (qword_1EB46D6F8 != -1)
      {
        dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
      }

      v20 = qword_1EB46D700;
      v21 = a10;
      if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v142 = *&v21;
        v143 = 2050;
        v144 = *&dword_1ED4B6ED0;
        _os_log_impl(&dword_1AB607000, v20, OS_LOG_TYPE_INFO, "supplied date (%{public}f) outside valid range (epoch=%{public}f)", buf, 0x16u);
      }

      v22 = sub_1AB60902C();
      if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
      {
        goto LABEL_136;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D6F8 == -1)
      {
LABEL_134:
        v135 = _os_log_send_and_compose_impl();
        sub_1AB60C944("Generic", 1, 0, 2, "int E0000(int, int *, float, float, float, float, float *, float *, float *, float *)", "CoreLocation: %s\n", v135);
        if (v135 != buf)
        {
          free(v135);
        }

LABEL_136:
        result = 1;
        goto LABEL_137;
      }

LABEL_138:
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
      goto LABEL_134;
    }

    v53 = __sincosf_stret(a9 * 0.017453);
    sinval = v53.__sinval;
    cosval = v53.__cosval;
    dword_1ED4B6F14 = LODWORD(v53.__sinval);
    dword_1ED4B6F48 = LODWORD(v53.__cosval);
    v56 = *&dword_1ED4B6EEC != a8 || *&dword_1ED4B6EE8 != a7;
    if (v56)
    {
      v57 = __sincosf_stret(a8 * 0.017453);
      v58 = sqrtf(*&dword_1ED4B6EBC - (*&dword_1ED4B6EC4 * (v57.__sinval * v57.__sinval)));
      v59 = (*&dword_1ED4B6EBC + (v58 * a7)) / (flt_1ED4B6EC0 + (v58 * a7));
      *&v60 = v57.__sinval / sqrtf((v57.__sinval * v57.__sinval) + ((v59 * v59) * (v57.__cosval * v57.__cosval)));
      *&v61 = sqrt(1.0 - (*&v60 * *&v60));
      dword_1ED4B6EF4 = v60;
      dword_1ED4B6EF8 = v61;
      v62 = (a7 * a7) + (v58 * a7) * 2.0 + ((flt_1ED4B6EC8 - (*&dword_1ED4B6ECC * (v57.__sinval * v57.__sinval))) / (v58 * v58));
      v63 = sqrtf(((v57.__sinval * v57.__sinval) * flt_1ED4B6EC0) + (*&dword_1ED4B6EBC * (v57.__cosval * v57.__cosval)));
      dword_1ED4B6EFC = sqrtf(v62);
      *&dword_1ED4B6F00 = (v63 + a7) / *&dword_1ED4B6EFC;
      *&dword_1ED4B6F04 = (v57.__sinval * (v57.__cosval * *&dword_1ED4B6EC4)) / (v63 * *&dword_1ED4B6EFC);
    }

    v64 = dword_1ED4B6EAC;
    if (*&dword_1ED4B6EF0 != a9)
    {
      if (dword_1ED4B6EAC >= 2)
      {
        v65 = dword_1ED4B6EAC + 1;
        v73 = dword_1ED4B6EAC - 1;
        v74 = &dword_1ED4B6F4C;
        v75 = v53.__sinval;
        do
        {
          v76 = *&dword_1ED4B6F48;
          v77 = (sinval * *&dword_1ED4B6F48) + (v75 * cosval);
          *(v74 - 13) = v77;
          v75 = *&dword_1ED4B6F14;
          cosval = (v76 * cosval) - (*&dword_1ED4B6F14 * sinval);
          *v74++ = cosval;
          sinval = v77;
          --v73;
        }

        while (v73);
      }

      else
      {
        v65 = 2;
      }

      dword_1ED4B6EB4 = v65;
    }

    v78 = *&dword_1ED4B6EF8;
    if (v64 >= 1)
    {
      v137 = a3;
      v138 = a6;
      v79 = 0;
      v80 = 0;
      v81 = *&dword_1ED4B6EB8 / *&dword_1ED4B6EFC;
      v82 = v81 * v81;
      v83 = *&dword_1ED4B6EF4;
      v84 = -*&dword_1ED4B6EF8;
      v85 = *&dword_1ED4B6F44;
      v86 = dword_1ED4B6FE0[0];
      v87 = (v64 + 1);
      v88 = *&dword_1ED4B6F10;
      v89 = 3;
      v90 = 1;
      v91 = 0.0;
      v92 = 0x4BCu;
      v93 = dword_1ED4B6E80;
      v94 = 0.0;
      v95 = 0.0;
      v96 = 0.0;
      v139 = v87;
      while (1)
      {
        v97 = 0;
        v98 = -(v81 * v82);
        v82 = v81 * v82;
        v140 = v90 + 1;
        v99 = &dword_1ED4B6E80[v90];
        v100 = v99 + 798;
        v101 = *(v99 + 62);
        v102 = v90 - 2;
        v103 = v99 + 797;
        v104 = v90 - 1;
        v105 = -13;
        v106 = v92;
        v107 = v80;
        v108 = v89;
        do
        {
          v109 = &dword_1ED4B6E80[v97];
          if (v56)
          {
            if (v79 + 1 == v97)
            {
              *&v100[13 * v90] = v78 * *&v103[13 * v90 - 13];
              *&dword_1ED4B7854[13 * v90 + v90] = (v83 * *&v103[13 * v90 - 13]) + (v78 * *&dword_1ED4B7854[13 * v90 - 14 + v90]);
            }

            else
            {
              if (v90 == 1 && !v97)
              {
                *&dword_1ED4B7AFC = v83 * *&dword_1ED4B7AF8;
                *&dword_1ED4B7858 = (*&dword_1ED4B7AF8 * v84) + (v83 * *&dword_1ED4B6E80[v104 + 629]);
                if (v19 == a10)
                {
LABEL_82:
                  v112 = v82 * *(&dword_1ED4B6E80[799] + v107);
LABEL_83:
                  v117 = *(v99 + 460);
                  v115 = v85 * v117;
                  v116 = v88 * v117;
                  goto LABEL_84;
                }

LABEL_74:
                v110 = *(&dword_1ED4B6E80[123] + v107) + (v18 * *(&dword_1ED4B6E80[292] + v107));
                *(&dword_1ED4B6E80[461] + v107) = v110;
                if (!v97)
                {
                  goto LABEL_82;
                }

                v111 = *&v93[v97 + 134] + (v18 * *(dword_1ED4B6E80 + v106));
                *(&dword_1ED4B6E80[169] + v106) = v111;
                v112 = v82 * *(&dword_1ED4B6E80[799] + v107);
                goto LABEL_78;
              }

              if (v90 >= 2)
              {
                if (v97 <= v102)
                {
                  v123 = *(&dword_1ED4B6E80[628] + v107);
                  v121 = v105 + 13;
                }

                else
                {
                  v121 = 13 * v97;
                  v122 = dword_1ED4B6E80 + v107;
                  *(v122 + 797) = 0;
                  *(v122 + 628) = 0;
                  v123 = 0.0;
                }

                v124 = *&v103[v121];
                v125 = *(&unk_1EB46D9C0 + v107 + 4);
                *&v100[v121] = (v83 * v124) - (v125 * *&v99[v121 + 796]);
                *(&dword_1ED4B6E80[630] + v107) = ((v124 * v84) + (v83 * *(&dword_1ED4B6E80[629] + v107))) - (v125 * v123);
              }
            }
          }

          if (v19 != a10)
          {
            goto LABEL_74;
          }

          v112 = v82 * *(&dword_1ED4B6E80[799] + v107);
          if (!v97)
          {
            goto LABEL_83;
          }

          v110 = *(&dword_1ED4B6E80[461] + v107);
          v111 = *(&dword_1ED4B6E80[169] + v106);
LABEL_78:
          v113 = v109[49];
          v114 = v109[36];
          v115 = (v111 * v114) + (v110 * v113);
          v116 = (v110 * v114) - (v111 * v113);
LABEL_84:
          v118 = *(&dword_1ED4B6E80[630] + v107);
          v119 = v116 * v109[75];
          if (v78 == 0.0 && v97 == 1)
          {
            if (v90 == 1)
            {
              dword_1ED4B6FE4 = v86;
              v120 = *&v86;
            }

            else
            {
              v120 = (v83 * *&dword_1ED4B6FE0[v104]) - (*(&unk_1EB46D9C0 + v90 + 13) * *&dword_1ED4B6FE0[v102]);
              *&dword_1ED4B6FE0[v90] = v120;
            }

            v96 = v96 + (v119 * (v82 * v120));
          }

          v91 = v91 + ((v115 * v98) * v118);
          v94 = v94 + (v119 * v112);
          ++v97;
          --v108;
          v95 = v95 + ((v101 * v115) * v112);
          v107 += 52;
          v106 += 4;
          v105 += 13;
        }

        while (v108 > 1);
        ++v89;
        v80 += 4;
        v92 += 52;
        v93 += 13;
        ++v79;
        v126 = v139;
        ++v90;
        if (v140 == v139)
        {
          dword_1ED4B6EB4 = v97;
          a3 = v137;
          a6 = v138;
          goto LABEL_100;
        }
      }
    }

    v126 = 1;
    v95 = 0.0;
    v91 = 0.0;
    v96 = 0.0;
    v94 = 0.0;
LABEL_100:
    dword_1ED4B6EB0 = v126;
    if (v78 == 0.0)
    {
      v127 = v96;
    }

    else
    {
      v127 = v94 / v78;
    }

    v128 = -(v95 * *&dword_1ED4B6F04) - (v91 * *&dword_1ED4B6F00);
    v129 = (v91 * *&dword_1ED4B6F04) - (v95 * *&dword_1ED4B6F00);
    v130 = sqrtf((v127 * v127) + (v128 * v128));
    *a5 = sqrtf((v129 * v129) + (v130 * v130));
    *a3 = atan2f(v127, v128) / 0.017453;
    *a4 = atan2f(v129, v130) / 0.017453;
    *a6 = -999.0;
    if (fabsf(a8) < 55.0)
    {
      goto LABEL_122;
    }

    v131 = -999.0;
    if (a9 >= 0.0 && a8 > 0.0)
    {
      v131 = *a3 - a9;
      *a6 = v131;
    }

    if (a8 > 0.0 && a9 < 0.0)
    {
      v131 = fabsf(a9) + *a3;
      *a6 = v131;
    }

    if (a9 >= 0.0 && a8 < 0.0)
    {
      v131 = *a3 + a9;
      *a6 = v131;
    }

    if (a8 < 0.0 && a9 < 0.0)
    {
      v131 = *a3 - fabsf(a9);
      *a6 = v131;
    }

    if (v131 <= 180.0)
    {
      if (v131 >= -180.0)
      {
LABEL_122:
        result = 0;
        dword_1ED4B6EE4 = LODWORD(a10);
        dword_1ED4B6EE8 = LODWORD(a7);
        dword_1ED4B6EEC = LODWORD(a8);
        dword_1ED4B6EF0 = LODWORD(a9);
        goto LABEL_137;
      }
    }

    else
    {
      v131 = v131 + -360.0;
    }

    if (v131 < -180.0)
    {
      v131 = v131 + 360.0;
    }

    *a6 = v131;
    goto LABEL_122;
  }

  v24 = fopen(&xmmword_1EB46D8C0, "r");
  if (!v24)
  {
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v66 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
    {
      v67 = __error();
      v68 = strerror(*v67);
      *buf = 136315394;
      v142 = &xmmword_1EB46D8C0;
      v143 = 2082;
      v144 = *&v68;
      _os_log_impl(&dword_1AB607000, v66, OS_LOG_TYPE_INFO, "could not open geomagnetic data file %s (%{public}s)", buf, 0x16u);
    }

    v69 = sub_1AB60902C();
    if (*(v69 + 160) <= 1 && *(v69 + 164) <= 1 && *(v69 + 168) <= 1 && !*(v69 + 152))
    {
      goto LABEL_136;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v70 = __error();
    strerror(*v70);
    goto LABEL_134;
  }

  v25 = v24;
  dword_1ED4B6EAC = *a2;
  dword_1ED4B6F10 = 0;
  dword_1ED4B6FE0[0] = 1065353216;
  dword_1ED4B7AF8 = 1065353216;
  dword_1ED4B6F44 = 1065353216;
  dword_1ED4B7854[0] = 0;
  *&dword_1ED4B6EB8 = 0x4C1B2F2F45C7199ALL;
  *&flt_1ED4B6EC0 = 0x4884FA004C1A253BLL;
  *&flt_1ED4B6EC8 = 0x55A0AD8058BC2457;
  dword_1ED4B7068 = 0;
  dword_1ED4B730C = 0;
  if (!fgets(byte_1ED4B7014, 80, v24))
  {
    fclose(v25);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v71 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v71, OS_LOG_TYPE_INFO, "geomagnetic data file appears to be empty", buf, 2u);
    }

    v72 = sub_1AB60902C();
    if (*(v72 + 160) <= 1 && *(v72 + 164) <= 1 && *(v72 + 168) <= 1 && !*(v72 + 152))
    {
      goto LABEL_136;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 == -1)
    {
      goto LABEL_134;
    }

    goto LABEL_138;
  }

  sscanf(byte_1ED4B7014, "%f", &dword_1ED4B6ED0);
  if (fgets(byte_1ED4B7014, 80, v25))
  {
    v26 = 0;
    do
    {
      do
      {
        if (!*(&dword_1ED4B6E80[101] + v26))
        {
          break;
        }

        *(&dword_1ED4B6F08 + v26) = *(&dword_1ED4B6E80[101] + v26);
        ++v26;
        *(&dword_1ED4B6F08 + v26) = 0;
      }

      while (v26 != 4);
      if (!(dword_1ED4B6F08 ^ 0x39393939 | byte_1ED4B6F0C))
      {
        break;
      }

      sscanf(byte_1ED4B7014, "%d%d%f%f%f%f", &dword_1ED4B6EB0, &dword_1ED4B6EB4, &dword_1ED4B6ED4, &dword_1ED4B6ED8, &dword_1ED4B6EDC, &dword_1ED4B6EE0);
      v27 = dword_1ED4B6EB4;
      if (dword_1ED4B6EB4 > 0xC || (v28 = dword_1ED4B6EB0, dword_1ED4B6EB0 >= 0xD))
      {
        fclose(v25);
        if (qword_1EB46D6F8 != -1)
        {
          dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
        }

        v133 = qword_1EB46D700;
        if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1AB607000, v133, OS_LOG_TYPE_INFO, "geomagnetic data file appears to have invalid dimensions", buf, 2u);
        }

        v134 = sub_1AB60902C();
        if (*(v134 + 160) <= 1 && *(v134 + 164) <= 1 && *(v134 + 168) <= 1 && !*(v134 + 152))
        {
          goto LABEL_136;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EB46D6F8 != -1)
        {
          goto LABEL_138;
        }

        goto LABEL_134;
      }

      if (dword_1ED4B6EB4 <= dword_1ED4B6EB0)
      {
        v29 = &dword_1ED4B6E80[13 * dword_1ED4B6EB4 + dword_1ED4B6EB0];
        v29[122] = dword_1ED4B6ED4;
        v29[291] = dword_1ED4B6EDC;
        if (v27)
        {
          v30 = &dword_1ED4B6E80[13 * v28 + v27 - 1];
          v30[122] = dword_1ED4B6ED8;
          v30[291] = dword_1ED4B6EE0;
        }
      }

      v31 = fgets(byte_1ED4B7014, 80, v25);
      v26 = 0;
    }

    while (v31);
  }

  dword_1ED4B7AF8 = 1065353216;
  if (dword_1ED4B6EAC < 1)
  {
    LODWORD(v33) = 1;
  }

  else
  {
    v32 = 0;
    v33 = dword_1ED4B6EAC + 1;
    v34 = 1;
    v35 = dword_1ED4B6E80;
    v36 = dword_1ED4B6E80;
    v37 = &unk_1EB46D9C4;
    do
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = &dword_1ED4B6E80[v34];
      v42 = v41 + 798;
      v43 = 2 * v34;
      v44 = 2 * v34 - 1;
      v45 = v34;
      v41[798] = (v41[797] * v44) / v34++;
      v46 = (v44 * (v43 - 3));
      v47 = 2;
      v48 = 3;
      do
      {
        v37[v38] = ((v32 + v40) * (v32 + v39)) / v46;
        if (v38)
        {
          v49 = sqrtf((v47 * (v32 + v39 + 2)) / (v32 + v40 + 1)) * v42[v38 - 13];
          v42[v38] = v49;
          v50 = &v36[v40];
          *(v50 + 134) = v49 * *(v50 + 134);
          *(v50 + 303) = v49 * *(v50 + 303);
          v47 = 1;
        }

        v51 = &v35[v38];
        v52 = v51[799];
        v51[123] = v52 * v51[123];
        v51[292] = v52 * v51[292];
        ++v40;
        --v39;
        v38 += 13;
        --v48;
      }

      while (v32 + v48 > 1);
      ++v32;
      v41[62] = v34;
      v41[75] = v45;
      v36 += 13;
      ++v35;
      ++v37;
    }

    while (v34 != v33);
    dword_1ED4B6EB4 = v40;
  }

  dword_1ED4B6EB0 = v33;
  dword_1EB46D9F8 = 0;
  *&dword_1ED4B6EEC = 0xC47A0000C47A0000;
  *&dword_1ED4B6EE4 = 0xC47A0000C47A0000;
  fclose(v25);
  result = 0;
LABEL_137:
  v136 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_1AB60DF30()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EB46D700 = result;
  return result;
}

void *sub_1AB60E078(uint64_t a1)
{
  *a1 = &unk_1F20385A8;
  sub_1AB60E0EC(a1, 0, 0);
  dispatch_release(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_1AB611794(v2);
  }

  return sub_1AB613B84(a1);
}

uint64_t sub_1AB60E0EC(uint64_t a1, FILE *a2, char a3)
{
  v6 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v7 = v6[18];
  if (v7 != a2)
  {
    *(a1 + 184) = a2;
    if (v7 && *(a1 + 156) == 1)
    {
      fclose(v7);
    }

    *(a1 + 156) = a3;
  }

  return (*(*v6 + 24))(v6);
}

void sub_1AB60E1A0(uint64_t a1)
{
  sub_1AB60E078(a1);

  JUMPOUT(0x1AC5A03A0);
}

uint64_t sub_1AB60E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  sub_1AB60E2AC(a1, "Generic", 0, 2, "void CLLog::logHeader()", "%s\n", &a9);
  return (*(*v10 + 24))(v10);
}

void sub_1AB60E298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB60E2AC(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, const char *a6, va_list a7, ...)
{
  v82 = *MEMORY[0x1E69E9840];
  v13 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  v14 = vsnprintf(__str, 0x1FFuLL, a6, a7);
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 >= 0x1FF)
    {
      operator new[]();
    }

    v15 = v14 - 1;
    if (__str[v15] != 10)
    {
      __assert_rtn("vlog", "CLLog.mm", 173, "'\\n' == buffer[fullContentLength - 1]");
    }

    if (v14 >= 2)
    {
      v15 = v15;
      v16 = __str;
      do
      {
        if (*v16 == 10)
        {
          *v16 = 32;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 152) == 1)
    {
      v18 = *(a1 + 200);
      v19 = sub_1AB60C920(a4);
      fprintf(v18, "%s,%s,Time,%08.3f,Function,%s,", v19, a2, Current, a5);
      fputs(__str, *(a1 + 200));
    }

    else
    {
      v20 = *(a1 + 184);
      if (v20 && *(a1 + 160) >= a4)
      {
        v21 = sub_1AB60C920(a4);
        fprintf(v20, "%s,%s,Time,%08.3f,Function,%s,", v21, a2, Current, a5);
        fputs(__str, *(a1 + 184));
        if (*(a1 + 172) >= a4)
        {
          sub_1AB60EEC4(a1, 3, *(a1 + 184));
        }

        v52[1] = v13;
        (*(*v13 + 16))(v13);
        v53 = 256;
        if (*(a1 + 12) >= 1)
        {
          v22 = *(a1 + 184);
          if (v22)
          {
            v23 = *(a1 + 151);
            if (v23 < 0)
            {
              v23 = *(a1 + 136);
            }

            if (v23)
            {
              v24 = *(a1 + 79);
              if (v24 < 0)
              {
                v24 = *(a1 + 64);
              }

              if (v24)
              {
                v52[0] = 0;
                fgetpos(v22, v52);
                if (v52[0] >= *(a1 + 12))
                {
                  v79 = v13;
                  (*(*v13 + 16))(v13);
                  v80 = 256;
                  sub_1AB60FD88(__p, ".log");
                  v28 = sub_1AB61448C(v26, v27, a1, v25);
                  sub_1AB614120((a1 + 56), a1 + 80, __p, v28, &v78);
                  if (SHIBYTE(v55) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v78.__r_.__value_.__l.__size_;
                  }

                  v30 = &v76;
                  sub_1AB611708(&v76, size + 4);
                  if (v77 < 0)
                  {
                    v30 = v76;
                  }

                  if (size)
                  {
                    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v31 = &v78;
                    }

                    else
                    {
                      v31 = v78.__r_.__value_.__r.__words[0];
                    }

                    memmove(v30, v31, size);
                  }

                  strcpy(v30 + size, ".bz2");
                  sub_1AB60FE40(a1);
                  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v32 = &v78;
                  }

                  else
                  {
                    v32 = v78.__r_.__value_.__r.__words[0];
                  }

                  v33 = getuid();
                  v34 = getgid();
                  sub_1AB611AEC(v32, v33, v34);
                  v36 = (a1 + 128);
                  v37 = (a1 + 128);
                  if (*(a1 + 151) < 0)
                  {
                    v37 = *v36;
                  }

                  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v38 = &v78;
                  }

                  else
                  {
                    v38 = v78.__r_.__value_.__r.__words[0];
                  }

                  rename(v37, v38, v35);
                  if (v39)
                  {
                    v40 = SHIBYTE(v77);
                    v41 = v76;
                    v42 = __error();
                    v43 = &v76;
                    if (v40 < 0)
                    {
                      v43 = v41;
                    }

                    syslog(3, "%s,%s,Failed to move aside log file %s (%d)\n", "ERROR", "CLLog", v43, *v42);
                  }

                  if (*(a1 + 151) < 0)
                  {
                    v36 = *v36;
                  }

                  sub_1AB60F740(a1, v36);
                  if (*(a1 + 103) < 0)
                  {
                    sub_1AB60C84C(&__dst, *(a1 + 80), *(a1 + 88));
                  }

                  else
                  {
                    __dst = *(a1 + 80);
                    v75 = *(a1 + 96);
                  }

                  if (*(a1 + 79) < 0)
                  {
                    sub_1AB60C84C(&v72, *(a1 + 56), *(a1 + 64));
                  }

                  else
                  {
                    v72 = *(a1 + 56);
                    v73 = *(a1 + 72);
                  }

                  v44 = *(a1 + 16);
                  v70[0] = 0;
                  v70[1] = v70;
                  v70[2] = 0x2020000000;
                  v71 = 0;
                  v64[0] = MEMORY[0x1E69E9820];
                  v64[1] = 3321888768;
                  v64[2] = sub_1AB60FEC0;
                  v64[3] = &unk_1F20385D0;
                  v64[5] = a1;
                  if (SHIBYTE(v75) < 0)
                  {
                    sub_1AB60C84C(&v65, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    v65 = __dst;
                    v66 = v75;
                  }

                  v64[4] = v70;
                  v69 = v44;
                  if (SHIBYTE(v73) < 0)
                  {
                    sub_1AB60C84C(&v67, v72, *(&v72 + 1));
                  }

                  else
                  {
                    v67 = v72;
                    v68 = v73;
                  }

                  v45 = *(a1 + 208);
                  __p[0] = MEMORY[0x1E69E9820];
                  __p[1] = 3321888768;
                  v55 = sub_1AB610298;
                  v56 = &unk_1F2038608;
                  v63 = v44;
                  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_1AB60C84C(&v58, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v58 = v78;
                  }

                  if (SHIBYTE(v77) < 0)
                  {
                    sub_1AB60C84C(&v59, v76, *(&v76 + 1));
                  }

                  else
                  {
                    v59 = v76;
                    v60 = v77;
                  }

                  if (SHIBYTE(v73) < 0)
                  {
                    sub_1AB60C84C(&v61, v72, *(&v72 + 1));
                  }

                  else
                  {
                    v61 = v72;
                    v62 = v73;
                  }

                  v57 = v64;
                  dispatch_async(v45, __p);
                  if (SHIBYTE(v62) < 0)
                  {
                    operator delete(v61);
                  }

                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(v59);
                  }

                  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v58.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v68) < 0)
                  {
                    operator delete(v67);
                  }

                  if (SHIBYTE(v66) < 0)
                  {
                    operator delete(v65);
                  }

                  _Block_object_dispose(v70, 8);
                  if (SHIBYTE(v73) < 0)
                  {
                    operator delete(v72);
                  }

                  if (SHIBYTE(v75) < 0)
                  {
                    operator delete(__dst);
                  }

                  if (SHIBYTE(v77) < 0)
                  {
                    operator delete(v76);
                  }

                  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v78.__r_.__value_.__l.__data_);
                  }

                  (*(*v13 + 24))(v13);
                }
              }
            }
          }
        }

        (*(*v13 + 24))(v13);
      }

      v46 = *(a1 + 192);
      if (v46 && *(a1 + 164) >= a4)
      {
        v47 = sub_1AB60C920(a4);
        fprintf(v46, "%s,%s,Time,%08.3f,", v47, a2, Current);
        fputs(__str, *(a1 + 192));
      }

      if ((!a3 || *(a1 + 176)) && *(a1 + 168) >= a4)
      {
        if (a4)
        {
          v48 = 5;
        }

        else
        {
          v48 = 3;
        }

        syslog(v48, "%s", __str);
      }
    }
  }

  result = (*(*v13 + 24))(v13);
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AB60EAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, char a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Block_object_dispose(&a63, 8);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  sub_1AB611664(&a79);
  sub_1AB611664(&a20);
  if (v79)
  {
    MEMORY[0x1AC5A0380](v79, 0x1000C8077774924);
  }

  sub_1AB611664(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB60EC50(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, char *__src, va_list a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = strncpy(__dst, __src, 0x65CuLL);
  sub_1AB60ED08(v13, __dst);
  result = sub_1AB60E2AC(a1, a2, a3, a4, a5, __dst, a7);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1AB60ED08(int a1, char *__s)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = strlen(__s);
  if (v3 < 1)
  {
LABEL_18:
    result = 1;
    goto LABEL_23;
  }

  v4 = &__s[v3];
  v5 = __s;
  while (1)
  {
    if (*v5 != 37)
    {
      v11 = v5;
      goto LABEL_17;
    }

    v6 = v5 + 1;
    v7 = v5[1];
    if (v7 == 123)
    {
      break;
    }

LABEL_10:
    v11 = v5 + 1;
    v12 = v5 + 1;
    if (v7 != 64)
    {
      if (v7 != 46)
      {
        goto LABEL_17;
      }

      if (v5[2] != 42)
      {
        goto LABEL_17;
      }

      v12 = v5 + 3;
      if (v5[3] != 80)
      {
        goto LABEL_17;
      }

      *(v5 + 1) = 9572;
    }

    *v12 = 112;
LABEL_17:
    v5 = v11 + 1;
    if (v11 + 1 >= v4)
    {
      goto LABEL_18;
    }
  }

  if (v6 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8 + 2];
      if (v9 == v4)
      {
        break;
      }

      ++v8;
      if (*v9 == 125)
      {
        v10 = &v5[v8];
        memmove(v5, v6, v8 + 1);
        *++v10 = 37;
        v7 = v10[1];
        v5 = v10;
        goto LABEL_10;
      }
    }
  }

  if (qword_1EB46D708 != -1)
  {
    dispatch_once(&qword_1EB46D708, &unk_1F2038680);
  }

  v14 = qword_1EB46D710;
  result = os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = 136446210;
    v17 = __s;
    _os_log_error_impl(&dword_1AB607000, v14, OS_LOG_TYPE_ERROR, "Failed parse os_log format specifier for shimming:missing closing brace,format,%{public}s", &v16, 0xCu);
    result = 0;
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AB60EEC4(uint64_t a1, int a2, FILE *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v16 = a1 + 40;
  (*(v5 + 16))(a1 + 40);
  v17 = 256;
  CFAbsoluteTimeGetCurrent();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  v7 = backtrace(v18, 128);
  v8 = a2 + 1;
  if (a2 + 1 < v7)
  {
    v9 = &v18[v8];
    do
    {
      if (dladdr(*v9, &v15))
      {
        if (v15.dli_sname)
        {
          basename(v15.dli_fname);
          v10 = *v9;
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx %s + %lu\n", "STATUS");
        }

        else
        {
          basename(v15.dli_fname);
          v12 = *v9;
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx 0x%08lx + %lu\n", "STATUS");
        }
      }

      else
      {
        v11 = *v9;
        fprintf(a3, "%s,%s,Time,%08.3f,%d\t0x%08lx\n");
      }

      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  result = (*(*v6 + 24))(v6);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AB60F0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_1AB60A4F4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB60F118(uint64_t a1, const char *a2, double a3, double a4)
{
  v41[2] = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3, a4);
  pthread_self();
  sub_1AB619948(*(a1 + 24), "ShowError", (a1 + 154));
  sub_1AB619948(*(a1 + 24), "LogShowUI", (a1 + 155));
  sub_1AB61AAA8(*(a1 + 24), "LogFileLevel", (a1 + 160));
  sub_1AB61AAA8(*(a1 + 24), "LogBufferLevel", (a1 + 164));
  sub_1AB61AAA8(*(a1 + 24), "LogConsoleLevel", (a1 + 168));
  sub_1AB61AAA8(*(a1 + 24), "LogStackLevel", (a1 + 172));
  sub_1AB61B67C(*(a1 + 24), "LogFileDirectory", (a1 + 56));
  sub_1AB61B67C(*(a1 + 24), "LogFilePrefix", (a1 + 80));
  sub_1AB619948(*(a1 + 24), "LogFileFlush", (a1 + 157));
  sub_1AB619948(*(a1 + 24), "LogFence", (a1 + 153));
  v40 = 0;
  sub_1AB61AAA8(*(a1 + 24), "LogBufferSize", &v40);
  if ((*(a1 + 160) & 0x80000000) != 0)
  {
    sub_1AB60E0EC(a1, 0, 0);
    goto LABEL_75;
  }

  v5 = *(a1 + 184);
  memset(&__p, 0, sizeof(__p));
  if (!sub_1AB61B67C(*(a1 + 24), "LogFile", &__p))
  {
    goto LABEL_6;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    v7 = *(a1 + 79);
    if (v7 < 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_43;
    }

    if ((*(a1 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 103))
    {
      goto LABEL_43;
    }

    if (v7 >= 0)
    {
      v8 = *(a1 + 79);
    }

    else
    {
      v8 = *(a1 + 64);
    }

    v9 = &v37;
    sub_1AB611708(&v37, v8 + 1);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v37.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a1 + 79) >= 0)
      {
        v10 = (a1 + 56);
      }

      else
      {
        v10 = *(a1 + 56);
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 47;
    v11 = *(a1 + 103);
    if (v11 >= 0)
    {
      v12 = (a1 + 80);
    }

    else
    {
      v12 = *(a1 + 80);
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 103);
    }

    else
    {
      v13 = *(a1 + 88);
    }

    v14 = std::string::append(&v37, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = *(a1 + 127);
    if (v16 >= 0)
    {
      v17 = (a1 + 104);
    }

    else
    {
      v17 = *(a1 + 104);
    }

    if (v16 >= 0)
    {
      v18 = *(a1 + 127);
    }

    else
    {
      v18 = *(a1 + 112);
    }

    v19 = std::string::append(&v38, v17, v18);
    v20 = v19->__r_.__value_.__r.__words[0];
    v41[0] = v19->__r_.__value_.__l.__size_;
    *(v41 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
    v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v20;
    __p.__r_.__value_.__l.__size_ = v41[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v41 + 7);
    *(&__p.__r_.__value_.__s + 23) = v21;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    if (v5)
    {
      v24 = *(a1 + 151);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a1 + 136);
      }

      v26 = __p.__r_.__value_.__r.__words[0];
      if (v23 == v24)
      {
        v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v28 = v25 >= 0 ? (a1 + 128) : *(a1 + 128);
        if (!memcmp(v27, v28, v23))
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (v22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v26;
    }

    sub_1AB60F740(a1, p_p);
    if (!v5)
    {
      v30 = *(a1 + 216);
      if (v30)
      {
        sub_1AB615BB4(v30, *(a1 + 184));
      }
    }

LABEL_67:
    sub_1AB60FCE8(a1, *(a1 + 157));
    v31 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 157))
    {
      v32 = " and flushing immediately";
    }

    else
    {
      v32 = " no flush";
    }

    syslog(5, "%s,%s,logging locations to %s%s\n", "NOTICE", "CLLog", v31, v32);
    goto LABEL_73;
  }

  sub_1AB60E0EC(a1, 0, 0);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  if ((*(a1 + 164) & 0x80000000) != 0 || (v33 = v40, v40 < 1))
  {
    v35 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v35)
    {
      sub_1AB611794(v35);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    if (v40 > 0xA00000)
    {
      v33 = 10485760;
      v40 = 10485760;
    }

    v34 = *(a1 + 216);
    if (!v34 || *(v34 + 16) != v33)
    {
      operator new();
    }

    *(a1 + 192) = sub_1AB615940(v34);
    syslog(5, "%s,%s,logging locations to an internal buffer with capacity %d\n", "NOTICE", "CLLog", v40);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_1AB60F6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB60F740(uint64_t a1, char *a2)
{
  *&v70[1526] = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  if (a2)
  {
    v5 = getuid();
    v6 = getgid();
    sub_1AB611AEC(a2, v5, v6);
    v7 = fopen(a2, "a");
    if (v7)
    {
      sub_1AB61161C((a1 + 128), a2);
      sub_1AB60E0EC(a1, v7, 1);
      sub_1AB60FCE8(a1, *(a1 + 157));
      v8 = *(a1 + 184);
      if (v8)
      {
        sub_1AB612F6C(v8);
      }

      sub_1AB616634();
      sub_1AB616D58(__p);
      if (__p[23] >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      sub_1AB60FD88(&v65, v9);
      if (__p[23] < 0)
      {
        operator delete(*__p);
      }

      v10 = v67;
      v11 = v67;
      if (v67 < 0)
      {
        v10 = v66;
      }

      if (!v10)
      {
        if (v67 < 0)
        {
          v66 = 10;
          v12 = v65;
        }

        else
        {
          v67 = 10;
          v12 = &v65;
        }

        strcpy(v12, "Unplugged!");
        v11 = v67;
      }

      bzero(__p, 0x65CuLL);
      v14 = &v65;
      if (v11 < 0)
      {
        v14 = v65;
      }

      snprintf(__p, 0x65CuLL, "CoreLocation-%s\n", v14);
      sub_1AB60E1D8(a1, v15, 0, v16, v17, v18, v19, v20, __p);
      bzero(__p, 0x65CuLL);
      snprintf(__p, 0x65CuLL, "locationd was compiled on %s at %s\n", "Oct 22 2025", "21:21:33");
      sub_1AB60E1D8(a1, v21, 0, v22, v23, v24, v25, v26, __p);
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize))
      {
        bzero(__p, 0x65CuLL);
        v27 = sub_1AB616634();
        v28 = v62;
        sub_1AB616B60(v27, v62);
        if (v63 < 0)
        {
          v28 = v62[0];
        }

        sub_1AB616634();
        sub_1AB6166E4(v60);
        if (v61 >= 0)
        {
          v29 = v60;
        }

        else
        {
          v29 = v60[0];
        }

        snprintf(__p, 0x65CuLL, "/usr/libexec/locationd @ system model %s / version %s\n", v28, v29);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }
      }

      else
      {
        bzero(__p, 0x65CuLL);
        v36 = sub_1AB616634();
        v37 = v62;
        sub_1AB616B60(v36, v62);
        if (v63 < 0)
        {
          v37 = v62[0];
        }

        sub_1AB616634();
        sub_1AB6166E4(v60);
        if (v61 >= 0)
        {
          v38 = v60;
        }

        else
        {
          v38 = v60[0];
        }

        snprintf(__p, 0x65CuLL, "%s @ system model %s / version %s\n", buf, v37, v38);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }
      }

      sub_1AB60E1D8(a1, v30, 0, v31, v32, v33, v34, v35, __p);
      bzero(__p, 0x65CuLL);
      sub_1AB616634();
      sub_1AB616FB8(v62);
      if (v63 >= 0)
      {
        v39 = v62;
      }

      else
      {
        v39 = v62[0];
      }

      snprintf(__p, 0x65CuLL, "IOPlatformSerialNumber: %s\n", v39);
      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      sub_1AB60E1D8(a1, v40, 0, v41, v42, v43, v44, v45, __p);
      bzero(v70, 0x5EAuLL);
      strcpy(__p, "Begin settings dump (read at construction of CLSettings or upon darwin notification 'com.apple.locationd/prefs')\n");
      sub_1AB60E1D8(a1, v46, 0, v47, v48, v49, v50, v51, __p);
      (*(**(a1 + 24) + 792))(*(a1 + 24));
      bzero(&__p[19], 0x649uLL);
      strcpy(__p, "End settings dump\n");
      sub_1AB60E1D8(a1, v52, 0, v53, v54, v55, v56, v57, __p);
      if (v67 < 0)
      {
        operator delete(v65);
      }
    }

    else
    {
      v13 = __error();
      syslog(3, "%s,%s,could not open locations log %s, errno %d\n", "ERROR", "CLLog", a2, *v13);
    }
  }

  result = (*(*v4 + 24))(v4);
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AB60FC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1AB611664(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB60FCE8(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  *(v3 + 117) = a2 != 0;
  v4 = *(v3 + 144);
  if (v4)
  {
    setvbuf(v4, 0, a2 != 0, 0);
  }

  return (*(*v3 + 24))(v3);
}

_BYTE *sub_1AB60FD88(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AB60C7A4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_1AB60FE40(uint64_t a1)
{
  v1 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v2 = v1[18];
  if (v2)
  {
    fflush(v2);
  }

  return (*(*v1 + 24))(v1);
}

uint64_t sub_1AB60FEC0(uint64_t a1, char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  sub_1AB60FD88(v22, a2);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = v20;
  sub_1AB611708(v20, v5 + 1);
  if (v21 < 0)
  {
    v6 = v20[0];
  }

  if (v5)
  {
    if (*(a1 + 71) >= 0)
    {
      v7 = (a1 + 48);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    memmove(v6, v7, v5);
  }

  *(v6 + v5) = 95;
  if (sub_1AB614498(v4, v22, v20))
  {
    sub_1AB60FD88(v18, a2);
    sub_1AB60FD88(v16, ".log.bz2");
    if (sub_1AB614564(v4, v18, v16))
    {
      v8 = 1;
    }

    else
    {
      sub_1AB60FD88(v14, a2);
      sub_1AB60FD88(__p, ".log");
      v8 = sub_1AB614564(v4, v14, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
    if (!v8)
    {
      goto LABEL_36;
    }
  }

  else if (!v8)
  {
    goto LABEL_36;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 96))
  {
    LOBYTE(v22[0]) = 0;
    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    if (snprintf(v22, 0x400uLL, "%s/%s", v9, a2) > 1023)
    {
      syslog(3, "%s,%s,Rotation path is too long, could not delete old logs.\n", "ERROR", "CLLog");
    }

    else if (unlink(v22))
    {
      perror("Failed to delete log");
    }
  }

LABEL_36:
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1AB61012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1AB6101B0(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_1AB60C84C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    return sub_1AB60C84C(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(v3 + 11) = *(a2 + 88);
  *(v3 + 72) = v5;
  return result;
}

void sub_1AB610224(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB610240(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_1AB610298(uint64_t a1, double a2, double a3)
{
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  v5 = (a1 + 64);
  v6 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v6 = *v5;
  }

  if (!sub_1AB61229C(v4, v6, a2, a3))
  {
    if (*(a1 + 87) < 0)
    {
      v5 = *v5;
    }

    syslog(3, "%s,%s,Failed to write %s\n", "ERROR", "CLLog", v5);
  }

  else
  {
LABEL_7:
    v7 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v7 = *v7;
    }

    unlink(v7);
  }

  if ((*(a1 + 112) & 0x80000000) == 0)
  {
    v8 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v8 = *v8;
    }

    v9 = *(a1 + 32);

    sub_1AB6176B8(v8, v9);
  }
}

char *sub_1AB61037C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_1AB60C84C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_1AB60C84C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_1AB60C84C(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_1AB610418(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB61044C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_1AB6104B4(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v76 = a1 + 40;
  v4 = (*(v2 + 16))(a1 + 40);
  v77 = 256;
  v7 = sub_1AB61448C(v4, v6, a1, v5);
  if (*(a1 + 79) < 0)
  {
    sub_1AB60C84C(&__dst, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __dst = *(a1 + 56);
    v75 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_1AB60C84C(&v72, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v72 = *(a1 + 80);
    v73 = *(a1 + 96);
  }

  if (*(a1 + 216))
  {
    syslog(5, "%s,%s,dumping internal buffer\n", "NOTICE", "CLLog");
    sub_1AB6143BC(a1, &v78);
    if ((v78.st_gid & 0x80000000) == 0)
    {
      v8 = &v78;
    }

    else
    {
      v8 = *&v78.st_dev;
    }

    v9 = fopen(v8, "a");
    v10 = v9;
    if (SHIBYTE(v78.st_gid) < 0)
    {
      operator delete(*&v78.st_dev);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else if (v9)
    {
LABEL_13:
      sub_1AB615BB4(*(a1 + 216), v10);
      fclose(v10);
      v11 = 1;
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_16:
  if (v75 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (!stat(p_dst, &v78))
  {
    v13 = HIBYTE(v75);
    if (v75 >= 0)
    {
      v14 = &__dst;
    }

    else
    {
      v14 = __dst;
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3321888768;
    v67[2] = sub_1AB61108C;
    v67[3] = &unk_1F2038638;
    v67[4] = a1;
    if (SHIBYTE(v73) < 0)
    {
      sub_1AB60C84C(&v68, v72, *(&v72 + 1));
      v13 = HIBYTE(v75);
    }

    else
    {
      v68 = v72;
      v69 = v73;
    }

    if (v13 < 0)
    {
      sub_1AB60C84C(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v71 = v75;
    }

    sub_1AB6176B8(v14, v67);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }
  }

  sub_1AB60FE40(a1);
  v15 = (a1 + 128);
  v16 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v16 = *v15;
  }

  if (!stat(v16, &v78))
  {
    sub_1AB6143BC(a1, &v78);
    v18 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v18 = *v15;
    }

    if ((v78.st_gid & 0x80000000) == 0)
    {
      v19 = &v78;
    }

    else
    {
      v19 = *&v78.st_dev;
    }

    rename(v18, v19, v17);
    if ((v78.st_gid & 0x80000000) == 0)
    {
      v20 = &v78;
    }

    else
    {
      v20 = *&v78.st_dev;
    }

    sub_1AB611A98(v20);
    if (*(a1 + 151) < 0)
    {
      v15 = *v15;
    }

    sub_1AB60F740(a1, v15);
    if (SHIBYTE(v78.st_gid) < 0)
    {
      operator delete(*&v78.st_dev);
    }

    v11 = 1;
  }

  v66 = 0;
  sub_1AB61752C(&v78);
  if (sub_1AB619948(*&v78.st_dev, "LogNatalimetry", &v66))
  {
    v21 = 1;
  }

  else
  {
    sub_1AB61752C(v64);
    v21 = sub_1AB619948(v64[0], "LogCalorimetry", &v66);
    if (v64[1])
    {
      sub_1AB611794(v64[1]);
    }
  }

  if (v78.st_ino)
  {
    sub_1AB611794(v78.st_ino);
  }

  if (v21)
  {
    if (v66)
    {
      sub_1AB616070(0, &v63);
      v22 = std::string::append(&v63, "userinfo", 8uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      *&v78.st_uid = *(&v22->__r_.__value_.__l + 2);
      *&v78.st_dev = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v78, ".plist", 6uLL);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v65 = v24->__r_.__value_.__r.__words[2];
      *v64 = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v78.st_gid) < 0)
      {
        operator delete(*&v78.st_dev);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v65 >= 0)
      {
        v26 = v64;
      }

      else
      {
        v26 = v64[0];
      }

      if (!stat(v26, &v78))
      {
        sub_1AB613F48(&v61);
        v27 = std::string::append(&v61, "/", 1uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        v29 = std::string::append(&v62, "userinfo", 8uLL);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v63.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v63.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        v31 = std::string::append(&v63, ".log", 4uLL);
        v32 = *&v31->__r_.__value_.__l.__data_;
        *&v78.st_uid = *(&v31->__r_.__value_.__l + 2);
        *&v78.st_dev = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (v65 >= 0)
        {
          v33 = v64;
        }

        else
        {
          v33 = v64[0];
        }

        if ((v78.st_gid & 0x80000000) == 0)
        {
          v34 = &v78;
        }

        else
        {
          v34 = *&v78.st_dev;
        }

        sub_1AB611BE8(v33, v34);
        if ((v78.st_gid & 0x80000000) == 0)
        {
          v35 = &v78;
        }

        else
        {
          v35 = *&v78.st_dev;
        }

        sub_1AB611A98(v35);
        if (SHIBYTE(v78.st_gid) < 0)
        {
          operator delete(*&v78.st_dev);
        }
      }

      sub_1AB616070(0, &v62);
      v36 = std::string::append(&v62, "cache", 5uLL);
      v37 = *&v36->__r_.__value_.__l.__data_;
      *&v78.st_uid = *(&v36->__r_.__value_.__l + 2);
      *&v78.st_dev = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v78, ".plist", 6uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v78.st_gid) < 0)
      {
        operator delete(*&v78.st_dev);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v63;
      }

      else
      {
        v40 = v63.__r_.__value_.__r.__words[0];
      }

      if (!stat(v40, &v78))
      {
        sub_1AB613F48(&v60);
        v41 = std::string::append(&v60, "/", 1uLL);
        v42 = *&v41->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        v43 = std::string::append(&v61, "cache", 5uLL);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        v45 = std::string::append(&v62, ".log", 4uLL);
        v46 = *&v45->__r_.__value_.__l.__data_;
        *&v78.st_uid = *(&v45->__r_.__value_.__l + 2);
        *&v78.st_dev = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v63;
        }

        else
        {
          v47 = v63.__r_.__value_.__r.__words[0];
        }

        if ((v78.st_gid & 0x80000000) == 0)
        {
          v48 = &v78;
        }

        else
        {
          v48 = *&v78.st_dev;
        }

        sub_1AB611BE8(v47, v48);
        if ((v78.st_gid & 0x80000000) == 0)
        {
          v49 = &v78;
        }

        else
        {
          v49 = *&v78.st_dev;
        }

        sub_1AB611A98(v49);
        if (SHIBYTE(v78.st_gid) < 0)
        {
          operator delete(*&v78.st_dev);
        }
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64[0]);
      }
    }
  }

  else
  {
    v66 = 0;
  }

  sub_1AB613D70(&v62);
  v50 = std::string::append(&v62, "/", 1uLL);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v63, "com.apple.timed", 0xFuLL);
  v53 = *&v52->__r_.__value_.__l.__data_;
  *&v78.st_uid = *(&v52->__r_.__value_.__l + 2);
  *&v78.st_dev = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v78, ".plist", 6uLL);
  v55 = *&v54->__r_.__value_.__l.__data_;
  v65 = v54->__r_.__value_.__r.__words[2];
  *v64 = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78.st_gid) < 0)
  {
    operator delete(*&v78.st_dev);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v65 >= 0)
  {
    v56 = v64;
  }

  else
  {
    v56 = v64[0];
  }

  if (stat(v56, &v78))
  {
    goto LABEL_137;
  }

  sub_1AB613C70(&v63);
  sub_1AB60FD88(&v62, "com.apple.timed");
  sub_1AB60FD88(&v61, ".plist.log");
  sub_1AB614120(&v63.__r_.__value_.__l.__data_, &v62, &v61, v7, &v78);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 >= 0)
  {
    v57 = v64;
  }

  else
  {
    v57 = v64[0];
  }

  if ((v78.st_gid & 0x80000000) == 0)
  {
    v58 = &v78;
  }

  else
  {
    v58 = *&v78.st_dev;
  }

  if (sub_1AB611BE8(v57, v58) == 1)
  {
    syslog(5, "%s,%s,could not copy %s log\n", "WARNING", "CLLog", "com.apple.timed");
  }

  if ((SHIBYTE(v78.st_gid) & 0x80000000) == 0)
  {
LABEL_137:
    if (v11)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(*&v78.st_dev);
  if ((v11 & 1) == 0)
  {
LABEL_138:
    syslog(5, "%s,%s,could not dump log file\n", "WARNING", "CLLog");
  }

LABEL_139:
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(__dst);
  }

  return (*(*v3 + 24))(v3);
}

void sub_1AB610DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  sub_1AB611664((v63 - 232));
  _Unwind_Resume(a1);
}

uint64_t sub_1AB61108C(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  sub_1AB60FD88(&v33, a2);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v32;
  sub_1AB611708(&v32, v5 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 63) >= 0)
    {
      v7 = (a1 + 40);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  if (sub_1AB614498(v4, &v33, &v32))
  {
    sub_1AB60FD88(&v31, a2);
    sub_1AB60FD88(v29, ".log.bz2");
    if (sub_1AB614564(v4, &v31, v29))
    {
      v8 = 1;
    }

    else
    {
      sub_1AB60FD88(v27, a2);
      sub_1AB60FD88(__p, ".log");
      v8 = sub_1AB614564(v4, v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
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
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  sub_1AB613F48(&v31);
  v9 = std::string::append(&v31, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = strlen(a2);
  v12 = std::string::append(&v32, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 87) >= 0)
  {
    v14 = *(a1 + 87);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v15 = &v31;
  sub_1AB611708(&v31, v14 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v31.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 87) >= 0)
    {
      v16 = (a1 + 64);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
  v17 = strlen(a2);
  v18 = std::string::append(&v31, a2, v17);
  v32 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v21 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if (v34 >= 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  rename(v22, v23, v19);
  sub_1AB611A98(v23);
  if (v20 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  return 1;
}

void sub_1AB6113A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AB611478(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_1AB60C84C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_1AB60C84C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_1AB6114EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB611508(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

std::string *sub_1AB611560(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1AB61161C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AB611560(a1, __s, v4);
}

uint64_t *sub_1AB611664(uint64_t *a1)
{
  if (*(a1 + 17) == 1)
  {
    if (a1[2])
    {
      pthread_mutex_unlock(a1[1]);
    }

    else
    {
      v2 = *a1;
      (*(**a1 + 24))();
    }

    *(a1 + 17) = 0;
  }

  return a1;
}

os_log_t sub_1AB6116D8()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1EB46D710 = result;
  return result;
}

uint64_t sub_1AB611708(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AB60C7A4();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_1AB611794(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

FILE ***sub_1AB611800(FILE ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_1AB61582C(v2);
    MEMORY[0x1AC5A03A0](v3, 0x10B0C403E4C181ELL);
  }

  return a1;
}

void sub_1AB61184C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5A03A0);
}

FILE **sub_1AB611884(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AB61582C(result);

    JUMPOUT(0x1AC5A03A0);
  }

  return result;
}

uint64_t sub_1AB6118C8(uint64_t a1, uint64_t a2)
{
  if (sub_1AB611908(a2, &unk_1F2038700))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1AB611908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_1AB61195C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1AB61331C(a1, a2);
  }

  else
  {
    sub_1AB6132BC(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

double sub_1AB61199C(double *a1, double *a2, double a3)
{
  v6 = *a1;
  v7 = sin(*a1 * 0.0174532925);
  v8 = sqrt(v7 * -0.00669437999 * v7 + 1.0);
  v9 = (6335439.33 / (v8 * (v8 * v8)) * 0.0174532925);
  v10 = a3;
  if (v9 >= 1)
  {
    v10 = a3 / v9;
  }

  v11 = v10 * floor(v6 / v10);
  *a1 = v11;
  v12 = __sincos_stret(v11 * 0.0174532925);
  v13 = (v12.__cosval * 0.0174532925 * (6378137.0 / sqrt(v12.__sinval * -0.00669437999 * v12.__sinval + 1.0)));
  if (v13 >= 1)
  {
    a3 = a3 / v13;
  }

  result = a3 * floor(*a2 / a3);
  *a2 = result;
  return result;
}

uint64_t sub_1AB611A98(const char *a1)
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
    pw_gid = v2->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  return lchown(a1, pw_uid, pw_gid);
}

uint64_t sub_1AB611AEC(_BYTE *a1, uid_t a2, gid_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x400uLL);
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    v8 = a1 + 1;
    while (1)
    {
      v12[v7] = v6;
      if (v6 == 47 && stat(v12, &v11))
      {
        if (mkdir(v12, 0x1FFu))
        {
          result = 0;
          goto LABEL_12;
        }

        lchown(v12, a2, a3);
        lchmod(v12, 0x1C0u);
      }

      result = 1;
      if (v7 <= 0x3FD)
      {
        v6 = v8[v7++];
        if (v6)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  result = 1;
LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AB611BE8(const char *a1, const char *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_40:
    v20 = 0;
    goto LABEL_54;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v12 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v13 = *__error();
      *buf = 136446466;
      v29 = a1;
      v30 = 1026;
      v31 = v13;
      _os_log_impl(&dword_1AB607000, v12, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v14 = sub_1AB60902C();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v26 = *__error();
      v15 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    goto LABEL_40;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v16 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v17 = *__error();
      *buf = 136446466;
      v29 = a2;
      v30 = 1026;
      v31 = v17;
      _os_log_impl(&dword_1AB607000, v16, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v18 = sub_1AB60902C();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v27 = *__error();
      v19 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    fclose(v6);
    goto LABEL_40;
  }

  v8 = v7;
  while (1)
  {
    if (feof(v6))
    {
      v20 = 1;
      goto LABEL_53;
    }

    v9 = fread(v4, 1uLL, 0x400uLL, v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 != fwrite(v4, 1uLL, v9, v8))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v10 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v29 = a2;
        _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", buf, 0xCu);
      }

      v11 = sub_1AB60902C();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 == -1)
        {
LABEL_50:
          v23 = _os_log_send_and_compose_impl();
          sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_52;
        }

LABEL_63:
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
        goto LABEL_50;
      }

      goto LABEL_52;
    }
  }

  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038718);
  }

  v21 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v29 = a1;
    _os_log_impl(&dword_1AB607000, v21, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
  }

  v22 = sub_1AB60902C();
  if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_52:
  v20 = 0;
LABEL_53:
  fclose(v6);
  fclose(v8);
LABEL_54:
  free(v4);
  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1AB61229C(const char *a1, const char *a2, double a3, double a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a3, a4, a2);
  PathComponent = objc_msgSend_lastPathComponent(v7, v8, v9, v10);
  v15 = objc_msgSend_stringWithFormat_(v6, v12, v13, v14, @"compress:%@", PathComponent);
  v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);
  sub_1AB613594(v48, v19, 0);
  bzerror = 0;
  v20 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v20)
  {
LABEL_58:
    v27 = 0;
    goto LABEL_59;
  }

  v21 = fopen(a1, "rb");
  if (!v21)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v32 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v33 = *__error();
      *buf = 136446466;
      v55 = a1;
      v56 = 1026;
      v57 = v33;
      _os_log_impl(&dword_1AB607000, v32, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v34 = sub_1AB60902C();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v35 = *__error();
      v50 = 136446466;
      v51 = a1;
      v52 = 1026;
      v53 = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    goto LABEL_58;
  }

  v22 = fopen(a2, "wb");
  if (!v22)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v37 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v38 = *__error();
      *buf = 136446466;
      v55 = a1;
      v56 = 1026;
      v57 = v38;
      _os_log_impl(&dword_1AB607000, v37, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v39 = sub_1AB60902C();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v40 = *__error();
      v50 = 136446466;
      v51 = a1;
      v52 = 1026;
      v53 = v40;
      v41 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    fclose(v21);
    goto LABEL_58;
  }

  v23 = BZ2_bzWriteOpen(&bzerror, v22, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v24 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v55 = a2;
      v56 = 1026;
      v57 = bzerror;
      _os_log_impl(&dword_1AB607000, v24, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    v25 = sub_1AB60902C();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
LABEL_91:
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

LABEL_13:
      v50 = 136446466;
      v51 = a2;
      v52 = 1026;
      v53 = bzerror;
      v26 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v26);
LABEL_14:
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  else
  {
    while (1)
    {
      if (feof(v21))
      {
        v27 = 1;
        goto LABEL_17;
      }

      v31 = fread(v20, 1uLL, 0x400uLL, v21);
      if (v31 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v23, v20, v31);
      if (bzerror)
      {
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038718);
        }

        v46 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v55 = a2;
          v56 = 1026;
          v57 = bzerror;
          _os_log_impl(&dword_1AB607000, v46, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        v47 = sub_1AB60902C();
        if ((*(v47 + 160) & 0x80000000) != 0 && (*(v47 + 164) & 0x80000000) != 0 && (*(v47 + 168) & 0x80000000) != 0 && !*(v47 + 152))
        {
          goto LABEL_16;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_13;
      }
    }

    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v44 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v55 = a1;
      _os_log_impl(&dword_1AB607000, v44, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    v45 = sub_1AB60902C();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v50 = 136446210;
      v51 = a1;
      v26 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v26);
      goto LABEL_14;
    }
  }

LABEL_16:
  v27 = 0;
LABEL_17:
  fclose(v21);
  if (v23)
  {
    BZ2_bzWriteClose(&bzerror, v23, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v28 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v55 = a2;
        v56 = 1026;
        v57 = bzerror;
        _os_log_impl(&dword_1AB607000, v28, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      v29 = sub_1AB60902C();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038718);
        }

        v50 = 136446466;
        v51 = a2;
        v52 = 1026;
        v53 = bzerror;
        v30 = _os_log_send_and_compose_impl();
        sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }
  }

  fclose(v22);
LABEL_59:
  free(v20);
  sub_1AB6137DC(v48);
  v42 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1AB612D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AB6137DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB612D40(char *a1, size_t a2, double a3)
{
  if (a3 < 0.0)
  {
    return snprintf(a1, a2, "%.1f", a3);
  }

  v4 = ((a3 + 22.5) / 45.0);
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      a2 = a2;
      if (v4 == 2)
      {
        v5 = "E";
      }

      else
      {
        v5 = "SE";
      }
    }

    else
    {
      if (!v4)
      {
LABEL_17:
        a2 = a2;
        v5 = "N";
        goto LABEL_22;
      }

      if (v4 != 1)
      {
        return snprintf(a1, a2, "%.1f", a3);
      }

      a2 = a2;
      v5 = "NE";
    }
  }

  else
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        a2 = a2;
        v5 = "W";
        goto LABEL_22;
      }

      if (v4 == 7)
      {
        a2 = a2;
        v5 = "NW";
        goto LABEL_22;
      }

      if (v4 != 8)
      {
        return snprintf(a1, a2, "%.1f", a3);
      }

      goto LABEL_17;
    }

    a2 = a2;
    if (v4 == 4)
    {
      v5 = "S";
    }

    else
    {
      v5 = "SW";
    }
  }

LABEL_22:

  return snprintf(a1, a2, v5);
}

void sub_1AB612E8C(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  v9 = a1;
  v12 = a5;
  if ((atomic_load_explicit(&qword_1EB46D898, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a7;
    v15 = a6;
    v16 = a4;
    v20 = a3;
    v13 = __cxa_guard_acquire(&qword_1EB46D898);
    v12 = a5;
    a3 = v20;
    a6 = v15;
    a4 = v16;
    a7 = v18;
    v9 = a1;
    a2 = v17;
    if (v13)
    {
      qword_1EB46D880 = 0;
      unk_1EB46D888 = 0;
      xmmword_1EB46D870 = xmmword_1AB62A580;
      qword_1EB46D890 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1EB46D898);
      v12 = a5;
      a3 = v20;
      a6 = v15;
      a4 = v16;
      a7 = v18;
      v9 = a1;
      a2 = v17;
    }
  }

  sub_1AB6099E8(&xmmword_1EB46D870, v9, a2, a3, a4, 0.0, v12, a6, a7);
}

void sub_1AB612F6C(FILE *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = _dyld_image_count();
  v3 = v2;
  v4 = malloc_type_calloc(v2, 0x38uLL, 0x105004076241286uLL);
  v5 = v4;
  v32 = v4;
  if (v2 && v4)
  {
    v6 = 0;
    do
    {
      image_name = _dyld_get_image_name(v6);
      v8 = &image_name[strlen(image_name) + 1];
      do
      {
        v9 = *(v8 - 2);
        --v8;
      }

      while (v9 != 47);
      image_header = _dyld_get_image_header(v6);
      v11 = image_header;
      v12 = *&image_header->cputype;
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        v14 = 0;
        p_cputype = &image_header[1].cputype;
        do
        {
          if (*p_cputype == 1)
          {
            if (!strncmp(p_cputype + 8, "__TEXT", 6uLL))
            {
              v14 = (v14 + p_cputype[7]);
            }
          }

          else if (*p_cputype == 27)
          {
            v33[0] = *(p_cputype + 2);
          }

          p_cputype = (p_cputype + p_cputype[1]);
          --ncmds;
        }

        while (ncmds);
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      v5 = v32;
      v17 = v32;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        v18 = v19;
        if (v19 >= v11 || v18 == 0)
        {
          break;
        }

        if (v3 == ++v16)
        {
          v16 = v3;
          v21 = v3;
          goto LABEL_24;
        }
      }

      v21 = v16;
LABEL_24:
      v22 = &v32[56 * v16];
      memmove(v22 + 7, v22, 56 * (v3 + ~v21));
      *v22 = v11;
      v22[1] = v14;
      *(v22 + 1) = v33[0];
      v22[4] = image_name;
      v22[5] = v8;
      v22[6] = v12;
      ++v6;
    }

    while (v6 != v3);
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
  }

  else
  {
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v23 = 0;
  do
  {
    v24 = &v5[56 * v23];
    v25 = *(v24 + 1);
    v33[0] = *v24;
    v33[1] = v25;
    v34 = *(v24 + 2);
    v35 = *(v24 + 6);
    v26 = "other";
    if (v35 != 16777228)
    {
      v27 = "unknown";
      if (HIDWORD(v35) == 9)
      {
        v27 = "armv7";
      }

      v26 = "armv6";
      if (HIDWORD(v35) != 6)
      {
        v26 = v27;
      }
    }

    v31 = v26;
    if (v23)
    {
      v28 = 32;
    }

    else
    {
      v28 = 43;
    }

    fprintf(a1, "%16p - %lld %c%s %s <", *&v33[0], ((v33[0] + __PAIR128__(-1, 0)) >> 64), v28, *(&v34 + 1), v31);
    for (i = 16; i != 32; ++i)
    {
      fprintf(a1, "%02X", *(v33 + i));
    }

    fprintf(a1, "> %s\n", v34);
    ++v23;
    v5 = v32;
  }

  while (v23 != v3);
LABEL_39:
  v30 = *MEMORY[0x1E69E9840];

  free(v5);
}

os_log_t sub_1AB61328C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

void *sub_1AB6132BC(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AB60C84C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1AB61331C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AB61345C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1AB613474(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1AB60C84C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AB613500(&v17);
  return v11;
}

void sub_1AB613448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB613500(va);
  _Unwind_Resume(a1);
}

void sub_1AB613474(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AB6134CC();
}

void sub_1AB6134CC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1AB613500(uint64_t a1)
{
  sub_1AB613538(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AB613538(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_1AB613594(uint64_t *a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, v7, v8, a2);
    if (qword_1EB46D718 != -1)
    {
      dispatch_once(&qword_1EB46D718, &unk_1F2038738);
    }

    v9 = qword_1EB46D720;
    if (os_log_type_enabled(qword_1EB46D720, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[1];
      *buf = 134349314;
      v17 = a1;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1AB607000, v9, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    v11 = sub_1AB60902C();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D718 != -1)
      {
        dispatch_once(&qword_1EB46D718, &unk_1F2038738);
      }

      v15 = a1[1];
      v12 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

os_log_t sub_1AB6137AC()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EB46D720 = result;
  return result;
}

id *sub_1AB6137DC(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1[1])
  {
    if (qword_1EB46D718 != -1)
    {
      dispatch_once(&qword_1EB46D718, &unk_1F2038738);
    }

    v2 = qword_1EB46D720;
    if (os_log_type_enabled(qword_1EB46D720, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v10 = a1;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1AB607000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    v4 = sub_1AB60902C();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D718 != -1)
      {
        dispatch_once(&qword_1EB46D718, &unk_1F2038738);
      }

      v8 = a1[1];
      v5 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    a1[1] = 0;
  }

  *a1 = 0;
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1AB6139E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AB60A4F4(a1);
}

void sub_1AB6139F0(void ***a1)
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

void sub_1AB613A40(uint64_t a1)
{
  *a1 = &unk_1F2038768;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_1AB614748((a1 + 40));
}

void sub_1AB613AF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_1AB611794(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AB613B84(void *a1)
{
  *a1 = &unk_1F2038768;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  if (*(a1 + 151) < 0)
  {
    operator delete(a1[16]);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(a1[7]);
  }

  sub_1AB6148A0((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_1AB611794(v3);
  }

  return a1;
}

uint64_t sub_1AB613C30()
{
  v0 = objc_opt_new();
  qword_1ED4B7DB0 = v0;

  return MEMORY[0x1EEE66B58](v0, sel_setDateFormat_, v1, v2);
}

void sub_1AB613C70(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7DC0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7DF0, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7DC0);
  }

  if (qword_1ED4B7DC8 != -1)
  {
    dispatch_once(&qword_1ED4B7DC8, &unk_1F20387A8);
  }

  if (byte_1ED4B7E07 < 0)
  {
    v2 = xmmword_1ED4B7DF0;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7DF0;
    *(a1 + 16) = unk_1ED4B7E00;
  }
}

void sub_1AB613D70(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7DD0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7E08, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7DD0);
  }

  if (qword_1ED4B7DD8 != -1)
  {
    dispatch_once(&qword_1ED4B7DD8, &unk_1F20387C8);
  }

  if (byte_1ED4B7E1F < 0)
  {
    v2 = xmmword_1ED4B7E08;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7E08;
    *(a1 + 16) = unk_1ED4B7E18;
  }
}

void sub_1AB613E58()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_1AB60FD88(v18, "mobile");
  sub_1AB615CEC(v18, __p);
  if (v21 >= 0)
  {
    v4 = objc_msgSend_stringWithUTF8String_(v0, v1, v2, v3, __p);
  }

  else
  {
    v4 = objc_msgSend_stringWithUTF8String_(v0, v1, v2, v3, __p[0]);
  }

  v8 = v4;
  v9 = objc_msgSend_componentsJoinedByString_(&unk_1F203BA38, v5, v6, v7, @"/");
  v13 = objc_msgSend_stringByAppendingPathComponent_(v8, v10, v11, v12, v9);
  v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
  sub_1AB61161C(&xmmword_1ED4B7E08, v17);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1AB613F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB613F48(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7DE0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7E20, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7DE0);
  }

  if (qword_1ED4B7DE8 != -1)
  {
    dispatch_once(&qword_1ED4B7DE8, &unk_1F20387E8);
  }

  if (byte_1ED4B7E37 < 0)
  {
    v2 = xmmword_1ED4B7E20;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7E20;
    *(a1 + 16) = unk_1ED4B7E30;
  }
}

void sub_1AB614030()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_1AB60FD88(v18, "mobile");
  sub_1AB615CEC(v18, __p);
  if (v21 >= 0)
  {
    v4 = objc_msgSend_stringWithUTF8String_(v0, v1, v2, v3, __p);
  }

  else
  {
    v4 = objc_msgSend_stringWithUTF8String_(v0, v1, v2, v3, __p[0]);
  }

  v8 = v4;
  v9 = objc_msgSend_componentsJoinedByString_(&unk_1F203BA50, v5, v6, v7, @"/");
  v13 = objc_msgSend_stringByAppendingPathComponent_(v8, v10, v11, v12, v9);
  v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
  sub_1AB61161C(&xmmword_1ED4B7E20, v17);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1AB6140EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB614120(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &v37;
  sub_1AB611708(&v37, v10 + 1);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v37.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v37, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, "_", 1uLL);
  v21 = *&v18->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v21;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (qword_1ED4B7DB8 != -1)
  {
    dispatch_once(&qword_1ED4B7DB8, &unk_1F2038788);
  }

  v22 = objc_msgSend_stringFromDate_(qword_1ED4B7DB0, v19, *&v21, v20, a4);
  v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
  sub_1AB60FD88(__p, v26);
  if ((v36 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v28 = v36;
  }

  else
  {
    v28 = __p[1];
  }

  v29 = std::string::append(&v39, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = *(a3 + 23);
  if (v31 >= 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = *a3;
  }

  if (v31 >= 0)
  {
    v33 = *(a3 + 23);
  }

  else
  {
    v33 = *(a3 + 8);
  }

  v34 = std::string::append(&v40, v32, v33);
  *a5 = *v34;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_1AB614340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
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

void sub_1AB6143BC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1AB613F48(v9);
  if (v10 >= 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = v9[0];
  }

  sub_1AB60FD88(__p, v4);
  v8 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6, v7);
  sub_1AB614120(__p, a1 + 80, a1 + 104, v8, a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1AB614458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB614498(uint64_t a1, char **a2, char *a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  v5 = a3[23];
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = a3[23];
  }

  else
  {
    v7 = *(a3 + 1);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v3[v4];
  if (v3 >= v7)
  {
    v12 = *v6;
    v13 = v4;
    do
    {
      v14 = &v3[-v7];
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, (v14 + 1));
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, v6, v7))
      {
        return v9 != v8 && v9 == v4;
      }

      v13 = v9 + 1;
      v3 = (v8 - (v9 + 1));
    }

    while (v3 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 == v4;
}

BOOL sub_1AB614564(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = *(a2 + 23);
  v4 = a3[23];
  if (v4 >= 0)
  {
    v5 = a3[23];
  }

  else
  {
    v5 = *(a3 + 1);
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v3 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = v7 == v5;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    return 1;
  }

  if (v5)
  {
    if (v10 >= v5)
    {
      v12 = (v8 + v7);
      v13 = (v8 + v9);
      v14 = *v6;
      while (1)
      {
        v15 = v10 - v5;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (!memcmp(v16, v6, v5))
        {
          if (v17 == v12)
          {
            return 1;
          }

          v9 = &v17[-v8];
          return v9 != 0;
        }

        v13 = v17 + 1;
        v10 = v12 - (v17 + 1);
        if (v10 < v5)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return v9 != 0;
}

float sub_1AB614644(double a1, double a2, uint64_t a3, const char *a4)
{
  v4 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], a4, a1, a2);
  v8 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v5, v6, v7);
  v12 = objc_msgSend_components_fromDate_(v8, v9, v10, v11, 252, v4);
  v16 = objc_msgSend_copy(v12, v13, v14, v15);
  objc_msgSend_setDay_(v16, v17, v18, v19, 1);
  objc_msgSend_setMonth_(v16, v20, v21, v22, 1);
  v23 = objc_alloc(MEMORY[0x1E695DEE8]);
  v27 = objc_msgSend_initWithCalendarIdentifier_(v23, v24, v25, v26, *MEMORY[0x1E695D850]);
  v31 = objc_msgSend_dateFromComponents_(v27, v28, v29, v30, v16);
  v35 = objc_msgSend_components_fromDate_toDate_options_(v27, v32, v33, v34, 16, v31, v4, 0);
  v39 = objc_msgSend_year(v12, v36, v37, v38);
  v43 = (objc_msgSend_day(v35, v40, v41, v42) + 1);
  return fabs(v43) / dbl_1AB62A780[(objc_msgSend_year(v12, v44, v43, v45) & 3) == 0] + v39;
}

void sub_1AB614748(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2038850;
  operator new();
}

uint64_t sub_1AB6148A0(uint64_t a1)
{
  *a1 = &unk_1F2038850;
  pthread_mutex_destroy(*(a1 + 8));
  v5 = *(a1 + 8);
  v6 = *(v5 + 104);
  if (v6)
  {
    free(v6);
    v5 = *(a1 + 8);
    *(v5 + 104) = 0;
  }

  objc_msgSend_assertInside(*(v5 + 64), v2, v3, v4);

  v7 = *(a1 + 8);
  if (v7)
  {
    MEMORY[0x1AC5A03A0](v7, 0x10B0C4016A090D5);
  }

  return a1;
}

void sub_1AB614938(uint64_t a1)
{
  sub_1AB6148A0(a1);

  JUMPOUT(0x1AC5A03A0);
}

pthread_t sub_1AB614970(uint64_t a1, const char *a2, double a3, double a4)
{
  v30 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  if (pthread_mutex_lock(*(a1 + 8)))
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v13 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "error == 0";
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v14 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v15 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "error == 0";
      _os_log_impl(&dword_1AB607000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

  result = pthread_self();
  v6 = *(a1 + 8);
  v7 = *(v6 + 72);
  if (v7 < 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v16 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "info->fCount >= 0";
      _os_log_impl(&dword_1AB607000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v17 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "info->fCount >= 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v18 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "info->fCount >= 0";
      _os_log_impl(&dword_1AB607000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

  v8 = *(v6 + 80);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v19 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_1AB607000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v20 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v21 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_1AB607000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_50:
    abort_report_np();
  }

  if (v8 != result)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v9 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_1AB607000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v10 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v11 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = &unk_1AB62CB23;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_1AB607000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_50;
  }

LABEL_17:
  *(v6 + 72) = v7 + 1;
  *(v6 + 80) = result;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AB615268(uint64_t a1, const char *a2, double a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  v5 = *(a1 + 8);
  v6 = *(v5 + 72);
  if (v6 <= 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v10 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1AB62CB23;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "info->fCount > 0";
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v11 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1AB62CB23;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "info->fCount > 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v12 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1AB62CB23;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "info->fCount > 0";
      _os_log_impl(&dword_1AB607000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_27:
    abort_report_np();
  }

  v7 = v6 - 1;
  *(v5 + 72) = v7;
  if (!v7)
  {
    *(v5 + 80) = 0;
  }

  result = pthread_mutex_unlock(v5);
  if (result)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v13 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1AB62CB23;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "error == 0";
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v14 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1AB62CB23;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v15 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = &unk_1AB62CB23;
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "error == 0";
      _os_log_impl(&dword_1AB607000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_27;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1AB615734(uint64_t a1, const char *a2, double a3, double a4)
{
  v4 = a2;
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  return *(*(a1 + 8) + 72) == v4;
}

BOOL sub_1AB615774(uint64_t a1, const char *a2, double a3, double a4)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  v5 = *(*(a1 + 8) + 80);
  return v5 == pthread_self();
}

BOOL sub_1AB6157B4(uint64_t a1, const char *a2, double a3, double a4)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3, a4);
  v5 = *(*(a1 + 8) + 80);
  return v5 != pthread_self();
}

os_log_t sub_1AB6157FC()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

FILE **sub_1AB61582C(FILE **a1)
{
  sub_1AB615860(a1);
  sub_1AB6148A0((a1 + 4));
  return a1;
}

uint64_t sub_1AB615860(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    fclose(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
    a1[1] = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_1AB615B3C(a1);
  (*(*v2 + 24))(v2);
  return v5;
}

void sub_1AB61592C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

FILE *sub_1AB615940(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  if (!*a1)
  {
    v3 = malloc_type_malloc(*(a1 + 4), 0x100004077774924uLL);
    a1[1] = v3;
    if (v3)
    {
      *a1 = funopen(a1, 0, sub_1AB615A54, 0, sub_1AB615B38);
      sub_1AB615B3C(a1);
    }
  }

  v4 = *a1;
  (a1[4]->_bf._base)(v2);
  return v4;
}

void sub_1AB615A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB615A54(uint64_t a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v7 = *(v6 - 24);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16) - v8;
    if (v9 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    memcpy((v7 + v8), a2, v3);
    v10 = *(a1 + 16);
    v11 = (*(a1 + 20) + v3) % v10;
    if (*(a1 + 24) + v3 < v10)
    {
      v10 = *(a1 + 24) + v3;
    }

    *(a1 + 20) = v11;
    *(a1 + 24) = v10;
  }

  else
  {
    v3 = 0;
  }

  (*(*v6 + 24))(v6);
  return v3;
}

uint64_t sub_1AB615B3C(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  *(v1 - 12) = 0;
  return (*(*v1 + 24))(v1);
}

uint64_t sub_1AB615BB4(uint64_t a1, FILE *a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v5 = *(v4 - 24);
  if (v5)
  {
    if (*a1)
    {
      fflush(*a1);
      v5 = *(a1 + 8);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v5 + v7;
      v9 = *(v8 - 1);
      *(v8 - 1) = 0;
      fputs((*(a1 + 8) + *(a1 + 20)), a2);
      fputc(v9, a2);
      v5 = *(a1 + 8);
    }

    *(v5 + *(a1 + 20)) = 0;
    fputs(*(a1 + 8), a2);
    sub_1AB615B3C(a1);
  }

  else
  {
    v6 = 0;
  }

  (*(*v4 + 24))(v4);
  return v6;
}

void sub_1AB615CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

void sub_1AB615CEC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v30[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
LABEL_7:
      v4 = CFCopyUserName();
      goto LABEL_8;
    }

    v2 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
LABEL_8:
  v5 = v4;
  sub_1AB616634();
  if (sub_1AB6171E8() && (v6 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v30[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v8, v9, v6);
    v30[1] = v5;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v12, v13, v30, 2);
    v18 = objc_msgSend_pathWithComponents_(v10, v15, v16, v17, v14);
    v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
    sub_1AB60FD88(&v28, v22);
    *a2 = v28;
    a2[2] = v29;
  }

  else if (v5)
  {
    v23 = CFCopyHomeDirectoryURLForUser();
    v24 = v23;
    if (v23)
    {
      v25 = CFURLCopyFileSystemPath(v23, kCFURLPOSIXPathStyle);
      v26 = v25;
      if (v25)
      {
        sub_1AB6195C0(v25, &v28);
        *a2 = v28;
        a2[2] = v29;
        CFRelease(v26);
      }

      CFRelease(v24);
    }

    CFRelease(v5);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1AB615E68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB615E98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFCopyUserName();
  sub_1AB6195C0(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_1AB615FF4(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1AB615FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_1AB615FF4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_1ED4B7E40 != -1)
  {
    dispatch_once(&qword_1ED4B7E40, &unk_1F20388F8);
  }

  result = qword_1ED4B7E38;
  if (qword_1ED4B7E38)
  {

    return sub_1AB6195C0(result, a1);
  }

  return result;
}

void sub_1AB616070(int a1@<W0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_DEFAULT))
    {
      v15.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v15, 8u);
    }

    v8 = sub_1AB60902C();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v15, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    v16[0] = 0x304020100;
    v9 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 2, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
    goto LABEL_36;
  }

  if (a1)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    v10 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v15.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v15.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v15, 8u);
    }

    v11 = sub_1AB60902C();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v15, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    LODWORD(v16[0]) = 67240192;
    HIDWORD(v16[0]) = a1;
    v9 = _os_log_send_and_compose_impl();
    sub_1AB60C944("Generic", 1, 0, 0, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
LABEL_36:
    if (v9 != &v15)
    {
      free(v9);
    }

LABEL_38:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_39;
  }

  sub_1AB60FD88(__p, "root");
  sub_1AB615CEC(__p, &v15);
  sub_1AB60FD88(v16, "/Library/Caches/locationd/");
  if ((v17 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v16[1];
  }

  v6 = std::string::append(&v15, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1AB616448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB61649C(std::string *a1@<X8>)
{
  sub_1AB615FF4(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1AB616508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB616538@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1AB611708(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

os_log_t sub_1AB616604()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

uint64_t sub_1AB616634()
{
  if (qword_1ED4B7E58[0] != -1)
  {
    dispatch_once(qword_1ED4B7E58, &unk_1F2038938);
  }

  return qword_1ED4B7E50;
}

void sub_1AB6166E4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7E68))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7EB8, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7E68);
  }

  if (qword_1ED4B7E70 != -1)
  {
    dispatch_once(&qword_1ED4B7E70, &unk_1F2038988);
  }

  if (byte_1ED4B7ECF < 0)
  {
    v2 = xmmword_1ED4B7EB8;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7EB8;
    *(a1 + 16) = unk_1ED4B7EC8;
  }
}

const __CFDictionary *sub_1AB6167CC()
{
  v20[2] = *MEMORY[0x1E69E9840];
  result = _CFCopyServerVersionDictionary();
  if (result || (result = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = result;
    sub_1AB617ADC(v19, result);
    CFRelease(v1);
    memset(&v18, 0, sizeof(v18));
    memset(&v17, 0, sizeof(v17));
    memset(&__p, 0, sizeof(__p));
    if (!sub_1AB61B6F0(v19, *MEMORY[0x1E695E1F0], &v17))
    {
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v17.__r_.__value_.__l.__size_ = 6;
        v2 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v17.__r_.__value_.__s + 23) = 6;
        v2 = &v17;
      }

      strcpy(v2, "<name>");
    }

    if (!sub_1AB61B6F0(v19, *MEMORY[0x1E695E208], &v18))
    {
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        v18.__r_.__value_.__l.__size_ = 9;
        v3 = v18.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v18.__r_.__value_.__s + 23) = 9;
        v3 = &v18;
      }

      strcpy(v3, "<version>");
    }

    if (!sub_1AB61B6F0(v19, *MEMORY[0x1E695E1E8], &__p))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_1AB616538(&v17.__r_.__value_.__l.__data_, &v18.__r_.__value_.__l.__data_, &v14);
    v5 = std::string::append(&v14, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = v9->__r_.__value_.__r.__words[0];
    v20[0] = v9->__r_.__value_.__l.__size_;
    *(v20 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1ED4B7ECF < 0)
    {
      operator delete(xmmword_1ED4B7EB8);
    }

    *&xmmword_1ED4B7EB8 = v10;
    *(&xmmword_1ED4B7EB8 + 1) = v20[0];
    *(&xmmword_1ED4B7EB8 + 15) = *(v20 + 7);
    byte_1ED4B7ECF = v11;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    result = sub_1AB617CE0(v19);
  }

  else
  {
    if (byte_1ED4B7ECF < 0)
    {
      *(&xmmword_1ED4B7EB8 + 1) = 6;
      v13 = xmmword_1ED4B7EB8;
    }

    else
    {
      v13 = &xmmword_1ED4B7EB8;
      byte_1ED4B7ECF = 6;
    }

    strcpy(v13, "<null>");
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AB616AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_1AB617CE0((v34 - 72));
  _Unwind_Resume(a1);
}

void sub_1AB616B60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E78, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED4B7E78);
    a1 = v3;
    if (v4)
    {
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7ED0, &dword_1AB607000);
      __cxa_guard_release(&qword_1ED4B7E78);
      a1 = v3;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AB616C98;
  block[3] = &unk_1E7952148;
  block[4] = a1;
  if (qword_1ED4B7E80 != -1)
  {
    dispatch_once(&qword_1ED4B7E80, block);
  }

  if (byte_1ED4B7EE7 < 0)
  {
    sub_1AB60C84C(a2, xmmword_1ED4B7ED0, *(&xmmword_1ED4B7ED0 + 1));
  }

  else
  {
    *a2 = xmmword_1ED4B7ED0;
    *(a2 + 16) = unk_1ED4B7EE0;
  }
}

double sub_1AB616C98()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 128;
  if (sysctlbyname("hw.model", v6, &v5, 0, 0))
  {
    v0 = &unk_1AB62CB23;
  }

  else
  {
    v0 = v6;
  }

  sub_1AB60FD88(&v3, v0);
  if (byte_1ED4B7EE7 < 0)
  {
    operator delete(xmmword_1ED4B7ED0);
  }

  result = *&v3;
  xmmword_1ED4B7ED0 = v3;
  unk_1ED4B7EE0 = v4;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AB616D58(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7E88))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7EE8, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7E88);
  }

  if (qword_1ED4B7E90 != -1)
  {
    dispatch_once(&qword_1ED4B7E90, &unk_1F20389A8);
  }

  if (byte_1ED4B7EFF < 0)
  {
    v2 = xmmword_1ED4B7EE8;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7EE8;
    *(a1 + 16) = unk_1ED4B7EF8;
  }
}

void sub_1AB616E40()
{
  sub_1AB61649C(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(v1, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(v1, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, *MEMORY[0x1E695E500]);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_1AB6195C0(v9, &__p);
              if (byte_1ED4B7EE8[23] < 0)
              {
                operator delete(*byte_1ED4B7EE8);
              }

              *byte_1ED4B7EE8 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_1AB616F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB616FB8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7E98))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7F00, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7E98);
  }

  if (qword_1ED4B7EA0 != -1)
  {
    dispatch_once(&qword_1ED4B7EA0, &unk_1F20389C8);
  }

  if (byte_1ED4B7F17 < 0)
  {
    v2 = xmmword_1ED4B7F00;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7F00;
    *(a1 + 16) = unk_1ED4B7F10;
  }
}

uint64_t sub_1AB6170A0()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_1AB6195C0(CFProperty, &v6);
      if (byte_1ED4B7F17 < 0)
      {
        operator delete(xmmword_1ED4B7F00);
      }

      xmmword_1ED4B7F00 = v6;
      unk_1ED4B7F10 = v7;
      CFRelease(v5);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

BOOL sub_1AB61715C()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1ED4B7EB0 != -1)
  {
    dispatch_once(&qword_1ED4B7EB0, &unk_1F2038A18);
  }

  return byte_1ED4B7E49 == 1;
}

uint64_t sub_1AB6171E8()
{
  if (qword_1ED4B7EA8 != -1)
  {
    dispatch_once(&qword_1ED4B7EA8, &unk_1F20389E8);
  }

  return byte_1ED4B7E48;
}

void sub_1AB617230()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED4B7E48 = 1;
    }

    CFRelease(v1);
  }
}

void sub_1AB6172B4()
{
  v0 = objc_autoreleasePoolPush();
  byte_1ED4B7E49 = 0;
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", v1);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1ED4B7E49 = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1AB61752C(void *a1@<X8>)
{
  if (qword_1ED4B7F18 != -1)
  {
    dispatch_once_f(&qword_1ED4B7F18, 0, sub_1AB6173C8);
  }

  v2 = *(qword_1ED4B7F20 + 144);
  *a1 = *(qword_1ED4B7F20 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void *sub_1AB6175A0(void *a1)
{
  *a1 = &unk_1F2038A48;
  v2 = a1[18];
  if (v2)
  {
    sub_1AB611794(v2);
  }

  return sub_1AB60A460(a1);
}

void sub_1AB617600(void *a1)
{
  sub_1AB6175A0(a1);

  JUMPOUT(0x1AC5A03A0);
}

void sub_1AB61763C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5A03A0);
}

uint64_t sub_1AB617678(uint64_t a1, uint64_t a2)
{
  if (sub_1AB611908(a2, &unk_1F2038E68))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1AB6176B8(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, v6, v7, a1);
  v12 = objc_msgSend_contentsOfDirectoryAtPath_error_(v4, v9, v10, v11, v8, 0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = objc_msgSend_reverseObjectEnumerator(v12, v13, 0.0, v14, 0);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, &v28, v32, 16);
  if (v19)
  {
    v23 = v19;
    v24 = *v29;
LABEL_3:
    v25 = 0;
    while (1)
    {
      if (*v29 != v24)
      {
        objc_enumerationMutation(v15);
      }

      v26 = objc_msgSend_UTF8String(*(*(&v28 + 1) + 8 * v25), v20, v21, v22);
      if (!(*(a2 + 16))(a2, v26))
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v20, v21, v22, &v28, v32, 16);
        if (v23)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

char *sub_1AB6177F8(char *a1, const __CFString *a2, char a3)
{
  v4 = sub_1AB609BE8(a1, a2, a3, 0x1F2039780);
  *v4 = &unk_1F2038E88;
  if (*(v4 + 16) == 1)
  {
    sub_1AB60A544(a1, 1);
  }

  return a1;
}

void sub_1AB617874(uint64_t a1)
{
  sub_1AB60A460(a1);

  JUMPOUT(0x1AC5A03A0);
}

BOOL sub_1AB6178B0(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_1AB60C010(a1, a2, a3);

  return sub_1AB60A3A4(a1);
}

void *sub_1AB6178E8(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2039268;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v3 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v4 = sub_1AB60902C();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void *sub_1AB617ADC(void *a1, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2039268;
  a1[1] = 0;
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v5 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v5, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v6 = sub_1AB60902C();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair(CFDictionaryRef)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void *sub_1AB617CE0(void *a1)
{
  *a1 = &unk_1F2039268;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AB617D34(void *a1)
{
  sub_1AB617CE0(a1);

  JUMPOUT(0x1AC5A03A0);
}

uint64_t sub_1AB617DF4(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_1AB617DB8;
  }

  else
  {
    v5 = sub_1AB617D7C;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_1AB617E8C(uint64_t *a1, const char *a2, double a3, double a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFF8];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a3, a4, a2);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v6, v8, v9, v10, v7, 0);
  if (isDirectory)
  {
    v71 = 0;
    if (objc_opt_respondsToSelector())
    {
      v15 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v12, v13, v14, isDirectory, 0, &v71);
    }

    else
    {
      v15 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v12, v13, v14, isDirectory);
    }

    v21 = *a1;
    if (!v15)
    {
      (*(v21 + 872))(a1);
      result = v71;
      if (!v71)
      {
        goto LABEL_42;
      }

      v25 = objc_msgSend_domain(v71, v22, v23, v24);
      if (objc_msgSend_isEqual_(v25, v26, v27, v28, *MEMORY[0x1E696A250]) && objc_msgSend_code(v71, v29, v30, v31) == 260)
      {
        if (qword_1EB46D708 != -1)
        {
          dispatch_once(&qword_1EB46D708, &unk_1F2039640);
        }

        v32 = qword_1EB46D710;
        if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_msgSend_description(v71, v33, v34, v35);
          v40 = objc_msgSend_UTF8String(v36, v37, v38, v39);
          *buf = 68289538;
          v73 = 0;
          v74 = 2082;
          v75 = &unk_1AB62CB23;
          v76 = 2082;
          v77 = a2;
          v78 = 2082;
          v79 = v40;
          _os_log_impl(&dword_1AB607000, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D708 != -1)
          {
            dispatch_once(&qword_1EB46D708, &unk_1F2039640);
          }
        }

        v41 = qword_1EB46D710;
        result = os_signpost_enabled(qword_1EB46D710);
        if (!result)
        {
          goto LABEL_42;
        }

        v45 = objc_msgSend_description(v71, v42, v43, v44);
        v49 = objc_msgSend_UTF8String(v45, v46, v47, v48);
        *buf = 68289538;
        v73 = 0;
        v74 = 2082;
        v75 = &unk_1AB62CB23;
        v76 = 2082;
        v77 = a2;
        v78 = 2082;
        v79 = v49;
        v19 = "file does not exist... clearing";
        v20 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1EB46D708 != -1)
        {
          dispatch_once(&qword_1EB46D708, &unk_1F2039640);
        }

        v53 = qword_1EB46D710;
        if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
        {
          v57 = objc_msgSend_description(v71, v54, v55, v56);
          v61 = objc_msgSend_UTF8String(v57, v58, v59, v60);
          *buf = 68289538;
          v73 = 0;
          v74 = 2082;
          v75 = &unk_1AB62CB23;
          v76 = 2082;
          v77 = a2;
          v78 = 2082;
          v79 = v61;
          _os_log_impl(&dword_1AB607000, v53, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D708 != -1)
          {
            dispatch_once(&qword_1EB46D708, &unk_1F2039640);
          }
        }

        v41 = qword_1EB46D710;
        result = os_signpost_enabled(qword_1EB46D710);
        if (!result)
        {
          goto LABEL_42;
        }

        v65 = objc_msgSend_description(v71, v62, v63, v64);
        v69 = objc_msgSend_UTF8String(v65, v66, v67, v68);
        *buf = 68289538;
        v73 = 0;
        v74 = 2082;
        v75 = &unk_1AB62CB23;
        v76 = 2082;
        v77 = a2;
        v78 = 2082;
        v79 = v69;
        v19 = "#Warning Error reading file";
        v20 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v51 = v41;
      v52 = 38;
      goto LABEL_41;
    }

    if ((*(v21 + 784))(a1))
    {
      result = 1;
      goto LABEL_42;
    }

    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v50 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v73 = 0;
      v74 = 2082;
      v75 = &unk_1AB62CB23;
      v76 = 2082;
      v77 = a2;
      _os_log_impl(&dword_1AB607000, v50, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v17 = qword_1EB46D710;
    result = os_signpost_enabled(qword_1EB46D710);
    if (result)
    {
      *buf = 68289282;
      v73 = 0;
      v74 = 2082;
      v75 = &unk_1AB62CB23;
      v76 = 2082;
      v77 = a2;
      v19 = "could not deserialize property list";
      v20 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v16 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v73 = 0;
      v74 = 2082;
      v75 = &unk_1AB62CB23;
      v76 = 2082;
      v77 = a2;
      _os_log_impl(&dword_1AB607000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v17 = qword_1EB46D710;
    result = os_signpost_enabled(qword_1EB46D710);
    if (result)
    {
      *buf = 68289282;
      v73 = 0;
      v74 = 2082;
      v75 = &unk_1AB62CB23;
      v76 = 2082;
      v77 = a2;
      v19 = "Invalid fileURL";
      v20 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v51 = v17;
      v52 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v51, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v19, v20, buf, v52);
      result = 0;
    }
  }

LABEL_42:
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AB6184C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v17 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = &unk_1AB62CB23;
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(&dword_1AB607000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v18 = qword_1EB46D710;
    if (os_signpost_enabled(qword_1EB46D710))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = &unk_1AB62CB23;
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x1AB6183C8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AB618654(uint64_t a1, void *a2, int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695DFF8];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, v9, v10, a1);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v7, v12, v13, v14, v11, 0);
  if (isDirectory)
  {
    v19 = 536870913;
    if (a3)
    {
      v19 = 1;
    }

    if (a3 == 1)
    {
      v20 = 1073741825;
    }

    else
    {
      v20 = v19;
    }

    v46 = 0;
    v21 = objc_msgSend_writeToURL_options_error_(a2, v16, v17, v18, isDirectory, v20, &v46);
    if ((v21 & 1) == 0)
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v22 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_msgSend_description(v46, v23, v24, v25);
        v30 = objc_msgSend_UTF8String(v26, v27, v28, v29);
        *buf = 136446466;
        v52 = a1;
        v53 = 2082;
        v54 = v30;
        _os_log_impl(&dword_1AB607000, v22, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      v31 = sub_1AB60902C();
      if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v35 = objc_msgSend_description(v46, v32, v33, v34);
        v39 = objc_msgSend_UTF8String(v35, v36, v37, v38);
        v47 = 136446466;
        v48 = a1;
        v49 = 2082;
        v50 = v39;
        v40 = _os_log_send_and_compose_impl();
        sub_1AB60C944("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }
    }
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v41 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v52 = a1;
      _os_log_impl(&dword_1AB607000, v41, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v42 = sub_1AB60902C();
    if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v47 = 136446210;
      v48 = a1;
      v43 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    v21 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v44 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_1AB618A30(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 768))(a1, &cf))
  {
    v3 = sub_1AB618654(a2, cf, 2);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v4 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = a2;
      _os_log_impl(&dword_1AB607000, v4, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v5 = sub_1AB60902C();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v10 = 136446210;
      v11 = a2;
      v6 = _os_log_send_and_compose_impl();
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::saveToFile(const char *) const", "CoreLocation: %s\n", v6);
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

uint64_t sub_1AB618C50(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  sub_1AB613594(v12, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  if ((*(*a1 + 776))(a1, &cf))
  {
    v7 = sub_1AB618654(a2, cf, a3);
  }

  else
  {
    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v8 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = a2;
      _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v9 = qword_1EB46D710;
    if (os_signpost_enabled(qword_1EB46D710))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = a2;
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_1AB6137DC(v12);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1AB618E94(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}