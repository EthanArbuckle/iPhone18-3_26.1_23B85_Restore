void sub_19B446094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B4460B0()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v93 = *MEMORY[0x1E69E9840];
  result = IOHIDEventGetType();
  if (result == 20)
  {
    IOHIDEventGetFloatValue();
    v3 = v2;
    IOHIDEventGetFloatValue();
    v5 = v4;
    IOHIDEventGetFloatValue();
    v7 = v6;
    TimeStamp = IOHIDEventGetTimeStamp();
    v9 = sub_19B41E070(TimeStamp);
    IntegerValue = IOHIDEventGetIntegerValue();
    v11 = *(v0 + 72);
    if (v11 > 0.0 && v9 > v11 + *(v0 + 48))
    {
      v53 = v9;
      if (sub_19B42A90C(v0))
      {
        v12 = (*(**(v0 + 80) + 24))(*(v0 + 80), @"AppleVoltageDictionary");
        v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"GYRO_TEMP");
        objc_msgSend_floatValue(v14, v15, v16);
        v54 = v17 / 100.0;

        v18 = v14 != 0;
      }

      else
      {
        v18 = 0;
      }

      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
      }

      v19 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v72 = COERCE_DOUBLE("CLGyro");
        v73 = 1026;
        LODWORD(v74) = v18;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "Type,%{public}s,ret=%{public}d", buf, 0x12u);
      }

      v20 = sub_19B420058();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
        }

        *v59 = 136446466;
        *&v59[4] = "CLGyro";
        *&v59[12] = 1026;
        *&v59[14] = v18;
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      if (v18)
      {
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
        }

        v22 = qword_1EAFE2898;
        if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v72 = COERCE_DOUBLE("GyroTemperature");
          v73 = 2050;
          v74 = v54;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "Type,%{public}s,temperature,%{public}f", buf, 0x16u);
        }

        v23 = sub_19B420058();
        if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2890 != -1)
          {
            dispatch_once(&qword_1EAFE2890, &unk_1F0E27B20);
          }

          *v59 = 136446466;
          *&v59[4] = "GyroTemperature";
          *&v59[12] = 2050;
          *&v59[14] = v54;
          v24 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        if (*(v0 + 96) == 1)
        {
          *v59 = &unk_1F0E31370;
          *&v59[8] = CFAbsoluteTimeGetCurrent();
          *&v59[20] = v54;
          v25 = sub_19B720E40();
          sub_19B7223F8(v25, v59);
          sub_19B517F80(buf);
          sub_19B532498(buf);
          v92 |= 1u;
          v89 = *&v59[8];
          v26 = v91;
          v27 = v54;
          *(v91 + 16) |= 2u;
          *(v26 + 12) = v27;
          sub_19B51DBD4(buf);
        }

        sub_19B41DF08(v0, 1, &v53, 16);
      }

      *(v0 + 48) = v9;
    }

    v28 = v3;
    v29 = v5;
    v30 = v7;
    v53 = v9;
    v54 = v28;
    v55 = v29;
    v56 = v30;
    v57 = HIWORD(IntegerValue);
    v58 = (~IntegerValue & 0x300) == 0;
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v31 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
    {
      v32 = mach_absolute_time();
      v33 = sub_19B41E070(v32);
      *buf = 134220032;
      v72 = v28;
      v73 = 2048;
      v74 = v29;
      v75 = 2048;
      v76 = v30;
      v77 = 2048;
      v78 = v9;
      v79 = 1024;
      v80 = IntegerValue;
      v81 = 1024;
      v82 = HIWORD(IntegerValue) % 3u;
      v83 = 1024;
      v84 = (IntegerValue >> 8) & 1;
      v85 = 1024;
      v86 = (IntegerValue >> 9) & 1;
      v87 = 2048;
      v88 = v33;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "[CLGyro] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f,subType,%d,sampleNum%%3,%d,triggerEnabled,%d,triggerOn,%d,now,%f", buf, 0x4Cu);
    }

    v34 = sub_19B420058();
    if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v35 = mach_absolute_time();
      v36 = sub_19B41E070(v35);
      *v59 = 134220032;
      *&v59[4] = v28;
      *&v59[12] = 2048;
      *&v59[14] = v29;
      *&v59[22] = 2048;
      v60 = v30;
      *v61 = 2048;
      *&v61[2] = v9;
      *&v61[10] = 1024;
      v62 = IntegerValue;
      v63 = 1024;
      v64 = HIWORD(IntegerValue) % 3u;
      v65 = 1024;
      v66 = (IntegerValue >> 8) & 1;
      v67 = 1024;
      v68 = (IntegerValue >> 9) & 1;
      v69 = 2048;
      v70 = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    if (v9 < *(v0 + 56))
    {
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v38 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        v39 = *(v0 + 56);
        *buf = 134218240;
        v72 = v39;
        v73 = 2048;
        v74 = v9;
        _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "Gyro time rollback, last timestamp, %f, current timestamp, %f", buf, 0x16u);
      }

      v40 = sub_19B420058();
      if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
        }

        v41 = *(v0 + 56);
        *v59 = 134218240;
        *&v59[4] = v41;
        *&v59[12] = 2048;
        *&v59[14] = v9;
        v42 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "CoreLocation: %s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }
    }

    if (*(v0 + 96) == 1)
    {
      *v59 = &unk_1F0E31270;
      *&v59[8] = CFAbsoluteTimeGetCurrent();
      v60 = v9;
      *v61 = v28;
      *&v61[4] = v29;
      *&v61[8] = v7;
      v62 = IntegerValue;
      LOBYTE(v63) = HIWORD(IntegerValue) % 3u;
      HIBYTE(v63) = BYTE1(IntegerValue) & 1;
      LOBYTE(v64) = (IntegerValue & 0x200) != 0;
      v43 = sub_19B720E40();
      sub_19B7223F8(v43, v59);
      sub_19B517F80(buf);
      sub_19B532408(buf);
      v92 |= 1u;
      v89 = *&v59[8];
      v44 = v90;
      *(v90 + 44) |= 1u;
      *(v44 + 8) = v9;
      v45 = v90;
      *(v90 + 44) |= 0x10u;
      *(v45 + 28) = v28;
      v46 = v90;
      *(v90 + 44) |= 0x20u;
      *(v46 + 32) = v29;
      v47 = v90;
      *(v90 + 44) |= 0x40u;
      *(v47 + 36) = v30;
      v48 = v90;
      *(v90 + 44) |= 8u;
      *(v48 + 24) = IntegerValue;
      v49 = v90;
      *(v90 + 44) |= 4u;
      *(v49 + 20) = HIWORD(IntegerValue) % 3u;
      v50 = v90;
      *(v90 + 44) |= 0x80u;
      *(v50 + 40) = BYTE1(IntegerValue) & 1;
      v51 = v90;
      *(v90 + 44) |= 0x100u;
      *(v51 + 41) = (IntegerValue & 0x200) != 0;
      sub_19B51DBD4(buf);
    }

    result = sub_19B41DF08(v0, 0, &v53, 24);
    *(v0 + 56) = v9;
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B446B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B446BB0(uint64_t a1, float32x2_t *a2, float *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a1 + 196) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
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
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
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
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedGyroBias(const CLMotionTypeRotationRate &, const CLMotionTypeVector3 &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  if (*(a1 + 10))
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
        sub_19B66EDDC(&v35, (a1 + 112), buf, &v59, &v31, 6, 3, v58);
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
    *(a1 + 10) = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_19B446FB8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_19B4C5080();
}

float sub_19B447000(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

void *sub_19B4470B0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_19B446FB8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_19B4471F4(uint64_t a1, float64x2_t *a2, uint64_t a3, double *a4, void *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  *(a1 + 168) = *a5;
  ++*(a1 + 152);
  v7 = *a4;
  v8 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(*a2), vdup_n_s32(0x3C8EFA35u))), *(a1 + 88)));
  v9 = (v7 * 0.017453) - *(a1 + 104);
  *(a1 + 156) = v8;
  *(a1 + 164) = v9;
  v32 = v8;
  if (*(a1 + 224) == 1)
  {
    v10 = v8.f32[1];
    LODWORD(v48.f64[0]) = sqrtf((vmuls_lane_f32(v8.f32[1], v8, 1) + (v8.f32[0] * v8.f32[0])) + (v9 * v9));
    sub_19B4200DC(a1 + 232, &v48);
    if (*(a1 + 196) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v11 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        v39 = (*v48.f64 / 0.017453);
        v40 = 2048;
        v41 = (v32.f32[0] * 57.296);
        v42 = 2048;
        v43 = (v10 * 57.296);
        v44 = 2048;
        v45 = (v9 * 57.296);
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "omegaMag6, %.3f, omega, %.3f, %.3f, %.3f", buf, 0x2Au);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        *v33 = 134218752;
        *&v33[4] = (*v48.f64 / 0.017453);
        *&v33[12] = 2048;
        *&v33[14] = (v32.f32[0] * 57.296);
        *&v33[22] = 2048;
        *&v33[24] = (v10 * 57.296);
        v34 = 2048;
        v35 = (v9 * 57.296);
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }

    v8 = v32;
  }

  v31 = *(a1 + 200);
  v48 = vmulq_n_f64(vcvtq_f64_f32(v8), v31);
  v49 = v31 * v9;
  sub_19B44793C(buf, v48.f64);
  sub_19B447A1C(v33, buf, (a1 + 16));
  v14 = *&v33[16];
  *(a1 + 16) = *v33;
  *(a1 + 32) = v14;
  v15 = vadd_f32(*(a1 + 136), v32);
  *(a1 + 136) = v15;
  *&v14 = *(a1 + 144) + v9;
  *(a1 + 144) = v14;
  ++*(a1 + 148);
  v16 = v31 * (v31 * ((COERCE_FLOAT(vmul_f32(v15, v15).i32[1]) + (v15.f32[0] * v15.f32[0])) + (*&v14 * *&v14)));
  if (v16 > 0.122500002)
  {
    sub_19B66E618(a1, v16, 0x3FBF5C2900000000);
  }

  if (*(a1 + 196) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
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
      v39 = v18;
      v40 = 2048;
      v41 = v19;
      v42 = 2048;
      v43 = v20;
      v44 = 2048;
      v45 = v21;
      v46 = 2048;
      v47 = v22;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[AppleQuaternion] x,%f,y,%f,z,%f,w,%f,timestamp,%f", buf, 0x34u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v24 = *(a1 + 16);
      v25 = *(a1 + 24);
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = *a5;
      *v33 = 134219008;
      *&v33[4] = v24;
      *&v33[12] = 2048;
      *&v33[14] = v25;
      *&v33[22] = 2048;
      *&v33[24] = v26;
      v34 = 2048;
      v35 = v27;
      v36 = 2048;
      v37 = v28;
      v29 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedGyroData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_19B447788(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 312;
  v5 = *(a2 + 12);
  v23 = *(a2 + 8);
  *v22.i64 = v5;
  v37 = *(a2 + 16);
  sub_19B4471F4(a1 + 296, &v23, &v22, &v37, a2);
  v6.i64[0] = *(a1 + 472);
  if (*v6.i64 <= 0.0)
  {
    v16 = 0;
    v17 = 0.0;
  }

  else
  {
    v7.f64[0] = *(a1 + 336);
    _Q3 = *v4;
    v9 = vaddq_f64(_Q3, _Q3);
    v7.f64[1] = -v7.f64[0];
    _D2 = v9.i64[1];
    __asm { FMLA            D0, D2, V3.D[1] }

    v16 = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*(a1 + 480)), vmlsq_lane_f64(vmulq_f64(v7, vextq_s8(v9, v9, 8uLL)), *v4, *(a1 + 328) + *(a1 + 328), 0)));
    *v6.i64 = *(a1 + 488) - _D0;
    v17 = *v6.i64;
  }

  v18 = *(a1 + 460);
  v24 = 0uLL;
  v23 = -1.0;
  sub_19B41E130(&v24, v6);
  v32 = 1;
  v23 = *a2;
  v19 = *(v4 + 16);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v19);
  sub_19B41E130(&v22, v19);
  v24 = v22;
  v25 = v16;
  v26 = v17;
  v27 = *(v4 + 140);
  v28 = v18;
  v31 = -1;
  v29 = xmmword_19B7BA310;
  v30 = xmmword_19B7BB860;
  if (*(a1 + 252))
  {
    v20 = 16;
  }

  else
  {
    v20 = 0;
  }

  if (*(a1 + 304))
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v33 = v21 | v20;
  v34 = 2;
  v36 = 0;
  v35 = 0;
  sub_19B41FA70(a1, &v23);
}

void sub_19B44793C(double *a1, double *a2)
{
  v4 = *a2;
  v5 = sqrt(a2[1] * a2[1] + v4 * v4 + a2[2] * a2[2]);
  if (v5 >= 0.00000002)
  {
    v13 = __sincos_stret(v5 * 0.5);
    cosval = v13.__cosval;
    *a1 = v4 * v13.__sinval / v5;
    a1[1] = v13.__sinval * a2[1] / v5;
    v11 = v13.__sinval * a2[2] / v5;
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

double sub_19B447A1C(double *a1, double *a2, double *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a3[1];
  v6 = a2[1];
  v7 = a3[2];
  v8 = a3[3];
  *a1 = v4 * v5 + v3 * *a3 - v6 * v7 + *a2 * v8;
  v9 = *a3;
  v10 = *a2;
  a1[1] = v3 * v5 - v4 * *a3 + *a2 * v7 + v6 * v8;
  v11 = a2[1];
  v12 = a3[1];
  a1[2] = v11 * v9 - v10 * v12 + v3 * v7 + v4 * v8;
  result = -(v11 * v12) - v10 * v9 - a2[2] * a3[2] + v3 * v8;
  a1[3] = result;
  return result;
}

uint64_t sub_19B447A98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 520);
  if (v2)
  {
    v3 = *(result + 56);
    v5[2] = *(result + 40);
    v5[3] = v3;
    v5[4] = *(result + 72);
    v6 = *(result + 88);
    v4 = *(result + 24);
    v5[0] = *(result + 8);
    v5[1] = v4;
    v7 = *result;
    v8 = *(result + 112);
    return v2(v5, *(a2 + 528));
  }

  return result;
}

void sub_19B4484BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B4484E8()
{
  if (qword_1ED71D618 != -1)
  {
    dispatch_once(&qword_1ED71D618, &unk_1F0E2A020);
  }

  return qword_1ED71D610;
}

unint64_t sub_19B448530(uint64_t a1, int a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if ((sub_19B421620() & 0x80) != 0)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x4012000000;
    v47 = sub_19B428AFC;
    v48 = nullsub_2;
    v49 = &unk_19B840009;
    v51 = 0;
    v5 = 3;
    v50 = 2;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 10;
    while (1)
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v6 = sub_19B420D84();
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_19B448DD0;
      v35[3] = &unk_1E7535848;
      v35[4] = &v36;
      v35[5] = &v44;
      v35[6] = &v40;
      v35[7] = a1;
      sub_19B420C9C(v6, v35);
      if (!*(v37 + 6))
      {
        break;
      }

      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v7 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
      {
        v8 = mach_error_string(*(v37 + 6));
        v9 = *(v37 + 6);
        *buf = 136315394;
        v57 = v8;
        v58 = 1026;
        v59 = v9;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v11 = mach_error_string(*(v37 + 6));
        v12 = *(v37 + 6);
        v52 = 136315394;
        v53 = v11;
        v54 = 1026;
        v55 = v12;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      usleep(0x3E8u);
      _Block_object_dispose(&v36, 8);
      if (!--v5)
      {
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v25 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "No reply for LastOrientation", buf, 2u);
        }

        v26 = sub_19B420058();
        if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          LOWORD(v36) = 0;
          v27 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

LABEL_60:
        v4 = 0xBFF0000000000000;
        goto LABEL_61;
      }
    }

    if (v41[3] != 10)
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v28 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        v29 = v41[3];
        *buf = 134349056;
        v57 = v29;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_FAULT, "SendCommand() got unexpected response size %{public}zd", buf, 0xCu);
      }

      v30 = sub_19B420058();
      if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v31 = v41[3];
        v52 = 134349056;
        v53 = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      _Block_object_dispose(&v36, 8);
      goto LABEL_60;
    }

    v14 = v45;
    if (*(a1 + 402) > *(v45 + 50))
    {
      v15 = *(a1 + 400);
      *(v45 + 28) = *(a1 + 408);
      v14[6] = v15;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v16 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v45 + 49);
      *buf = 67240192;
      LODWORD(v57) = v17;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "Got cached orientation %{public}u", buf, 8u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v19 = *(v45 + 49);
      v52 = 67240192;
      LODWORD(v53) = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    _Block_object_dispose(&v36, 8);
    v21 = *(v45 + 50);
    v22 = sub_19B41E070(v21);
    v23 = v22;
    v24 = *(v45 + 49);
    if (a2)
    {
      sub_19B729F98(a1, v21, *(v45 + 49), v22);
    }

    v4 = *&v23;
LABEL_61:
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v4 = 0xBFF0000000000000;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_19B448D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B448DD0(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1[7] + 384);
  if (v2)
  {
    result = (*(*v2 + 160))(v2, 32, *(a1[5] + 8) + 48, 1, *(a1[5] + 8) + 48, *(a1[6] + 8) + 24);
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v4 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "fHidDeviceInterface NULL", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = 4160749568;
  }

  *(*(a1[4] + 8) + 24) = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B449420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const char *sub_19B449494(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unexpected";
  }

  else
  {
    return off_1E7535B98[a1];
  }
}

uint64_t sub_19B4498B4()
{
  if (qword_1ED71CAC8 != -1)
  {
    dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
  }

  return qword_1ED71CAC0;
}

void sub_19B4498FC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (*(a1 + 352))
    {
      v7 = *(a1 + 384);
      if (v7)
      {
        (*(*v7 + 72))(v7, 0);
      }

      v8 = *(a1 + 376);
      if (v8)
      {
        (*(*v8 + 24))(v8);
        IODestroyPlugInInterface(*(a1 + 376));
      }

      *(*(a1 + 352) + 8) = 0;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "closeHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v11 = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::closeHidDriverInterface()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    v6 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B7293F0;
    v10[3] = &unk_1E75327D8;
    v10[4] = a1;
    sub_19B420C9C(v6, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B449B64(uint64_t a1, const char *a2, NSObject *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v16 = off_1ED71C838;
    p_vtable = "";
    a2 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 16);
      v17 = *(a1 + 20);
      *buf = 68290051;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 1026;
      v30 = v17;
      v31 = 1026;
      *v32 = v18;
      *&v32[4] = 2082;
      *&v32[6] = "assert";
      v33 = 2081;
      v34 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v19 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v21 = *(a1 + 16);
      v20 = *(a1 + 20);
      *buf = 68290051;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 1026;
      v30 = v20;
      v31 = 1026;
      *v32 = v21;
      *&v32[4] = 2082;
      *&v32[6] = "assert";
      v33 = 2081;
      v34 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a3 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 20);
      *buf = 68290051;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 1026;
      v30 = v22;
      v31 = 1026;
      *v32 = v23;
      *&v32[4] = 2082;
      *&v32[6] = "assert";
      v33 = 2081;
      v34 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setRegistryIDChangedCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
LABEL_31:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_5;
  }

  if (*(a1 + 120) == a2 && *(a1 + 128) == a3)
  {
    goto LABEL_19;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_31;
  }

LABEL_5:
  v8 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 120))
    {
      v9 = "Opening";
    }

    else
    {
      v9 = "Closing";
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 20);
    v12 = *(a1 + 24);
    *buf = 136446979;
    *v28 = v9;
    *&v28[8] = 1026;
    *&v28[10] = v10;
    v29 = 1026;
    v30 = v11;
    v31 = 2049;
    *v32 = v12;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "%{public}s hid driver interface for usage pair {%{public}d, %{public}d}, hidServiceRef %{private}p", buf, 0x22u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    *(a1 + 120);
    v24 = *(a1 + 20);
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setRegistryIDChangedCallback(OnRegistryIDChanged, void *)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B44A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v11 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a1 + 16);
      v12 = *(a1 + 20);
      *buf = 68290051;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v12;
      v26 = 1026;
      v27 = v13;
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v14 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v16 = *(a1 + 16);
      v15 = *(a1 + 20);
      *buf = 68290051;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v15;
      v26 = 1026;
      v27 = v16;
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 16);
      v18 = *(a1 + 20);
      *buf = 68290051;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18;
      v26 = 1026;
      v27 = v19;
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setServiceRemovalCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
  }

  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  result = *(a1 + 24);
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x1E69E9840];

    return IOHIDServiceClientRegisterRemovalCallback();
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_19B44A36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  result = sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v9 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v10;
      v24 = 1026;
      v25 = v11;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setNewServiceCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v12 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v13;
      v24 = 1026;
      v25 = v14;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setNewServiceCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setNewServiceCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 16);
      v16 = *(a1 + 20);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v16;
      v24 = 1026;
      v25 = v17;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setNewServiceCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
  }

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B44A714(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "unregistering for keyboard updates", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
    }

    v8 = 0;
    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::unregisterForKeyboardUpdates()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B44A91C;
  v7[3] = &unk_1E75327D8;
  v7[4] = a1;
  sub_19B420C9C(v5, v7);
  *(a1 + 80) = 0;
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B44A91C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v2);
    if (RunLoopSource)
    {
      v4 = RunLoopSource;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v4, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 32));
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = IONotificationPortGetRunLoopSource(v5);
    if (v6)
    {
      v7 = v6;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v7, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 40));
    *(v1 + 40) = 0;
  }

  v8 = *(v1 + 48);
  if (v8)
  {
    v9 = IONotificationPortGetRunLoopSource(v8);
    if (v9)
    {
      v10 = v9;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v10, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 48));
    *(v1 + 48) = 0;
  }

  v11 = *(v1 + 56);
  if (v11)
  {
    v12 = IONotificationPortGetRunLoopSource(v11);
    if (v12)
    {
      v13 = v12;
      sub_19B420D84();
      CFRunLoopRemoveSource(*qword_1ED71C908, v13, *MEMORY[0x1E695E8E0]);
    }

    IONotificationPortDestroy(*(v1 + 56));
    *(v1 + 56) = 0;
  }

  v14 = *(v1 + 64);
  if (v14)
  {
    IOObjectRelease(v14);
    *(v1 + 64) = 0;
  }

  v15 = *(v1 + 68);
  if (v15)
  {
    IOObjectRelease(v15);
    *(v1 + 68) = 0;
  }

  v16 = *(v1 + 72);
  if (v16)
  {
    IOObjectRelease(v16);
    *(v1 + 72) = 0;
  }

  result = *(v1 + 76);
  if (result)
  {
    result = IOObjectRelease(result);
    *(v1 + 76) = 0;
  }

  return result;
}

void sub_19B44AA8C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B44AB6C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLOrientationNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    goto LABEL_63;
  }

  if (!*(a1 + 352))
  {
    if (qword_1ED71C8E0 != -1)
    {
      dispatch_once(&qword_1ED71C8E0, &unk_1F0E29BE0);
    }

    sub_19B42C428(qword_1ED71C8E8);
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      *(a1 + 33) = 0;
      if (*(a1 + 392))
      {
        v8 = sub_19B4498B4();
        sub_19B426A14(v8, 0, *(a1 + 392));
        v9 = *(a1 + 392);
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        *(a1 + 392) = 0;
      }

      if ((sub_19B421620() & 0x80) != 0)
      {
        sub_19B4238F4(*(a1 + 352), 0);
        v10 = *(a1 + 368) - 1;
        *(a1 + 368) = v10;
        if (!v10)
        {
          sub_19B449B64(*(a1 + 352), 0, 0);
          if (sub_19B43EE18(*(a1 + 352)))
          {
            sub_19B4498FC(a1);
          }
        }

        sub_19B44A030(*(a1 + 352), 0, 0);
        sub_19B44A36C(*(a1 + 352), 0, 0);
        sub_19B42D100(*(a1 + 352), 0, 0);
      }

      if (*(a1 + 48))
      {
        sub_19B7279AC(a1);
      }
    }

    goto LABEL_63;
  }

  if ((sub_19B421620() & 0x80) != 0)
  {
    sub_19B42D100(*(a1 + 352), sub_19B727C64, a1);
    sub_19B44A36C(*(a1 + 352), sub_19B728034, a1);
    sub_19B44A030(*(a1 + 352), nullsub_172, a1);
    v11 = *(a1 + 368);
    *(a1 + 368) = v11 + 1;
    if (!v11)
    {
      sub_19B449B64(*(a1 + 352), sub_19B7293B0, a1);
      if (sub_19B43EE18(*(a1 + 352)))
      {
        sub_19B4498FC(a1);
      }

      sub_19B4529B4(a1);
    }

    if (a2 != 2)
    {
      sub_19B4238F4(*(a1 + 352), 1);
      goto LABEL_60;
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v12 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = 2;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Unrecognized notification request %{public}u", buf, 8u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_60;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 == -1)
    {
LABEL_58:
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLOrientationNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }

      goto LABEL_60;
    }

LABEL_70:
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    goto LABEL_58;
  }

  if (a2 == 1)
  {
    sub_19B728074(a1, 1);
    goto LABEL_60;
  }

  if (a2)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v14 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      goto LABEL_60;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  sub_19B728074(a1, 0);
LABEL_60:
  if (!*(a1 + 392))
  {
    operator new();
  }

  *(a1 + 33) = 1;
LABEL_63:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B44B2C8(uint64_t a1, int a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
LABEL_2:
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a3)
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      if (qword_1ED71CAC8 != -1)
      {
        dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
      }

      v6 = qword_1ED71CAC0;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
      }

      v7 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "registering for keyboard updates", buf, 2u);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
        }

        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::registerForKeyboardUpdates()", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }

      v10 = sub_19B420D84();
      *buf = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = sub_19B453FCC;
      v17 = &unk_1E75327D8;
      v18 = v6;
      sub_19B420C9C(v10, buf);
      *(v6 + 80) = 1;
    }

    if (a3 == 1)
    {
      goto LABEL_2;
    }

    v11 = *MEMORY[0x1E69E9840];

    sub_19B4455DC(a1, 0, a1 + 81, 1);
  }

  else
  {
    if (qword_1ED71CAC8 != -1)
    {
      dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
    }

    v12 = qword_1ED71CAC0;
    v13 = *MEMORY[0x1E69E9840];

    sub_19B44A714(v12);
  }
}

void sub_19B44B638(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B44B79C(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 233) = 0;
  objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_stopSuppressionUpdatesPrivate(v6, v4, v5);
}

void sub_19B44B974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_19B44B9A0()
{
  v13 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  if (qword_1ED71C938 != -1)
  {
    dispatch_once(&qword_1ED71C938, &unk_1F0E29600);
  }

  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v2 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Not running on motion thread!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
      }
    }

    v3 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "runningOnMotionThread";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Not running on motion thread!", "{msg%{public}.0s:Not running on motion thread!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
      }
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "runningOnMotionThread";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Not running on motion thread!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_19B44BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_19B44BECC(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B44C460((a1 + 3), a2, a3);
  return a1;
}

void sub_19B44BF28(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
  }

  v6 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 67240448;
    buf[1] = a2;
    LOWORD(buf[2]) = 2050;
    *(&buf[2] + 2) = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLEclipseNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (a2 != 2)
  {
    if (a2 >= 2)
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
      }

      v9 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 67240192;
        buf[1] = a2;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Unrecognized notification,%{public}d", buf, 8u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLEclipseNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v11);
        goto LABEL_37;
      }
    }

    else
    {
      v12 = sub_19B421620();
      if ((v12 & 0x200) != 0)
      {
        v15 = *(a1 + 56);
        if (!v15)
        {
          v16 = sub_19B42CAAC();
          sub_19B42C428(v16);
        }

        sub_19B4238F4(v15, a3 != 0);
        if (qword_1EAFE3A50 != -1)
        {
          dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
        }

        sub_19B44C9BC(qword_1EAFE3A60);
      }

      else
      {
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
        }

        v13 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
        }

        v14 = sub_19B420058();
        if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
          }

          v11 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLEclipseNotifier::openHidDevice()", "CoreLocation: %s\n", v11);
LABEL_37:
          if (v11 != buf)
          {
            free(v11);
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B44C460(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B44C4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B44C9BC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
  }

  v2 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Notifying latest suppression.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v12 = 0;
    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::notifyLatestSuppression()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v11 = 4;
  v5 = sub_19B44CCDC(a1, &v11, 1);
  if (!v5)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Notify failed", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v12 = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::notifyLatestSuppression()", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL sub_19B44CCDC(uint64_t a1, uint64_t a2, char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  if ((sub_19B421620() & 0x200) == 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E2A280);
    }

    v8 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E2A280);
      }
    }

    v9 = off_1EAFE2828;
    if (os_signpost_enabled(off_1EAFE2828))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUEclipseInterface] Service required", "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E2A280);
      }
    }

    v10 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v11 = 0;
  *buf = 4;
  result = sub_19B44CF80(*(a1 + 24), a2, a3, &v11, buf) == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B44CF80(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
  }

  v10 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = a3;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CLSPUHIDDriverInterface] Attempting to send command with reply to SPU,length,%zu", buf, 0xCu);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "IOReturn CLSPUHIDDriverInterface::sendCommand(const void *, size_t, void *, size_t *)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = (*(*v13 + 80))(v13, a2, a3, a4, a5);
    if (v14)
    {
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v15 = qword_1EAFE2838;
      if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
      {
        v16 = mach_error_string(v14);
        *buf = 136446466;
        v24 = v16;
        v25 = 1026;
        v26 = v14;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "[CLSPUHIDDriverInterface] sendCommand() = %{public}s (0x%{public}x)", buf, 0x12u);
      }

      v17 = sub_19B420058();
      if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2810 != -1)
        {
          dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
        }

        mach_error_string(v14);
        v18 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "IOReturn CLSPUHIDDriverInterface::sendCommand(const void *, size_t, void *, size_t *)", "CoreLocation: %s\n");
LABEL_36:
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
    }

    v19 = qword_1EAFE2838;
    if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "[CLSPUHIDDriverInterface] hidDriverInterface NULL, unable to send command", buf, 2u);
    }

    v14 = 3758097084;
    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E29900);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "IOReturn CLSPUHIDDriverInterface::sendCommand(const void *, size_t, void *, size_t *)", "CoreLocation: %s\n");
      goto LABEL_36;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_19B44D44C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B44D484(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B44D4BC(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  if (*(v1 + 232) == 1)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v3 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
      v7 = *(v1 + 344);
      *buf = 134349314;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Stop service called.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(*(a1 + 32), v11, v12);
      v18 = *(v1 + 344);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopService]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    *(v1 + 232) = 0;
    objc_msgSend_sendServiceRequestPrivate(*(a1 + 32), v9, v10);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v14 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "Service already stopped (or service has not been started yet).", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager stopService]_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B44D81C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_suppressionClientType(*(a1 + 32), v4, v5);
    v7 = *(v2 + 344);
    *buf = 134349314;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Significant user interaction detected", buf, 0x16u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(*(a1 + 32), v9, v10);
    v13 = *(v2 + 344);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager didDetectSignificantUserInteraction]_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  sub_19B44DDDC(qword_1EAFE3A68, 0);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B44DA5C(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v11[0] = 6;
  v11[1] = a2;
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v15 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLSPUEclipseClient] Sending SignificantUserInteraction to AOP,simulated,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v12 = 67240192;
    v13 = a2;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUEclipseClient::informSignificantUserInteraction(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (!sub_19B44CCDC(a1, v11, 2))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v7 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Informing AOP about SignificantUserInteraction failed", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      LOWORD(v12) = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUEclipseClient::informSignificantUserInteraction(BOOL)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B44DD98(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_19B427AEC((v1 + 200));
  v3 = 1;
  return sub_19B4453D4(v1, &v3);
}

void sub_19B44DDDC(uint64_t a1, int a2)
{
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  v3 = qword_1EAFE3A60;

  sub_19B44DA5C(v3, a2);
}

void sub_19B44DE40(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B44DED0;
  v7[3] = &unk_1E7533E58;
  v7[4] = a1;
  v7[5] = a2;
  *&v7[6] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B44DED0(uint64_t a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v16 = off_1ED71C808;
    v4 = "assert";
    v2 = "properties != nullptr";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v17 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "properties != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v1 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = 186;
    v20 = "setDeviceMotionUpdateInterval_block_invoke";
    v18 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
LABEL_3:
  v5 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v6 = *(v1 + 6);
    *buf = 134349056;
    *v23 = v6;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "CLDeviceMotion::setDeviceMotionUpdateInterval changing update interval to: %{public}f", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v21 = *(v1 + 6);
    LODWORD(v19) = 12;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::setDeviceMotionUpdateInterval(CLDeviceMotion::Dispatcher *, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  *buf = objc_msgSend_mode(v4, v8, v9, v18, v19, v20);
  if (sub_19B426490(buf))
  {
    v13 = objc_msgSend_mode(v4, v11, v12);
    v14 = sub_19B426F5C(v13);
    sub_19B44E2F8(v2, v14, *(v1 + 5), v1 + 48);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B44E2F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B44E390;
  v9[3] = &unk_1E7533DB0;
  v10 = a2;
  v9[4] = a1;
  v9[5] = a3;
  v9[6] = a4;
  sub_19B420C9C(v8, v9);
}

void sub_19B44E390(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (*(*v3 + 24))(v3);
  v6 = v2[2];
  v7 = v6 + 80 * v1;
  v10 = *(v7 + 40);
  v8 = v7 + 40;
  v9 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = *v4;
  v12 = v8;
  do
  {
    v13 = *(v9 + 32);
    v14 = v13 >= v3;
    v15 = v13 < v3;
    if (v14)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * v15);
  }

  while (v9);
  if (v12 != v8 && *(v12 + 32) <= v3)
  {
    *(v12 + 48) = v11;
    *(v12 + 56) = v11 * v5;
    if (*(v6 + 80 * v1 + 16) <= 0.0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v19 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        v20 = *(v12 + 48);
        v21 = *(v2[2] + 80 * v1 + 16);
        *buf = 134218240;
        *&buf[4] = v20;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "CLMotionNotifier::setUpdateIntervalPrivate RequestedUpdateInterval:%f, UpdateInterval:%f", buf, 0x16u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
        }

        v23 = *(v12 + 48);
        v24 = *(v2[2] + 80 * v1 + 16);
        *v34 = 134218240;
        *&v34[4] = v23;
        *&v34[12] = 2048;
        *&v34[14] = v24;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMotionNotifier::setUpdateIntervalPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    v26 = v2[2];
    v27 = (v26 + 80 * v1);
    *(v12 + 44) = llround(*(v12 + 48) / v27[2]);
    v28 = sub_19B426978(v26, v1);
    *buf = v28;
    if (v28 != *v27)
    {
      *v27 = v28;
      *(v2[2] + 80 * v1 + 16) = (*(*v2 + 16))(v2, v1, buf);
      sub_19B423614(v2, v1);
      v26 = v2[2];
    }

    v29 = sub_19B4268E8(v26, v1);
    *v34 = v29;
    v30 = v26 + 80 * v1;
    v32 = *(v30 + 8);
    v31 = (v30 + 8);
    if (v29 != v32)
    {
      *v31 = v29;
      *(v2[2] + 80 * v1 + 24) = (*(*v2 + 24))(v2, v1, v34);
    }
  }

  else
  {
LABEL_9:
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v16 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = v1;
      *&buf[8] = 2048;
      *&buf[10] = v3;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Unknown (notification,dispatcher) pair: (%d, %p)", buf, 0x12u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      *v34 = 67109376;
      *&v34[4] = v1;
      *&v34[8] = 2048;
      *&v34[10] = v3;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMotionNotifier::setUpdateIntervalPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B44E8A4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Device is stationary and Timeout exceeded, turning off device motion gyro heartbeat and bias estimator.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService3AxisDynamicGyro::feedAccelerometerData(const CLAccelerometer::Sample *)_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  if (*(v1 + 288))
  {
    v5 = sub_19B42AD98();
    sub_19B426A14(v5, 0, *(v1 + 288));
    v6 = *(v1 + 288);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(v1 + 288) = 0;
  }

  if (*(v1 + 225) == 1)
  {
    v7 = sub_19B442E70();
    sub_19B445814(v7);
    *(v1 + 225) = 0;
  }

  *buf = 0;
  result = sub_19B4453D4(v1, buf);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B44EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v4 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLEclipseNotifier::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
LABEL_23:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v7 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLEclipseNotifier::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n");
      goto LABEL_23;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B44F1FC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      (*(*a2 + 16))(a2, a1);
    }

    else if (v2 == 2)
    {
      (*(*a2 + 24))(a2, a1);
    }
  }

  else
  {
    switch(v2)
    {
      case 3u:
        (*(*a2 + 32))(a2, a1);
        break;
      case 5u:
        (*(*a2 + 56))(a2, a1);
        break;
      case 0xFFu:
        return 0;
    }
  }

  return 1;
}

uint64_t sub_19B44F310(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v11 = *(a2 + 10);
    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    v30 = *(a1 + 48);
    v14 = mach_absolute_time();
    *buf = 67242752;
    *&buf[4] = v5;
    LOWORD(v32) = 1026;
    *(&v32 + 2) = v6;
    HIWORD(v32) = 1026;
    *v33 = v7;
    *&v33[4] = 1026;
    *&v33[6] = v8;
    v34 = 1026;
    v35 = v9;
    v36 = 2050;
    v37 = v10;
    v38 = 2050;
    v39 = v11;
    v40 = 1026;
    v41 = v12;
    v42 = 2050;
    v43 = v13;
    v44 = 2050;
    v45 = v30;
    v46 = 2050;
    v47 = sub_19B41E070(v14);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Report,shouldSuppress,%{public}u,APAwake,%{public}u,currentState,%{public}u,orientation,%{public}u,motionType,%{public}u,lux,%{public}f,pocketProbability,%{public}f,facedownStatic,%{public}u,timeSinceLastFacedownStatic,%{public}lf,timestamp,%{public}lf,now,%{public}lf", buf, 0x58u);
  }

  v15 = sub_19B420058();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v16 = *(a2 + 1);
    v17 = *(a2 + 2);
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
    v20 = *(a2 + 5);
    v21 = *(a2 + 6);
    v22 = *(a2 + 10);
    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    v25 = *(a1 + 48);
    v26 = mach_absolute_time();
    sub_19B41E070(v26);
    v27 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLEclipseNotifier::visitSuppress(const CMEclipseReport::Suppress *)", "CoreLocation: %s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  v32 = 0;
  *buf = *(a1 + 48);
  LOBYTE(v32) = *(a2 + 1);
  BYTE1(v32) = *(a2 + 14);
  *v33 = *(a2 + 15);
  result = sub_19B41DF08(a1, 0, buf, 24);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B44FEF4(uint64_t a1)
{
  result = IOHIDEventGetType();
  if (result == 14)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    TimeStamp = IOHIDEventGetTimeStamp();
    v5 = sub_19B41E070(TimeStamp);
    v6 = IntegerValue;
    return sub_19B41DF08(a1, 0, &v5, 16);
  }

  return result;
}

void sub_19B44FF80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v5 = *(a2 + 100);
  v4 = *(a2 + 104);
  v6 = *(a2 + 96);
  kdebug_trace();
  v7 = *(a2 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B45001C;
  v8[3] = &unk_1E7533E38;
  v8[4] = a2;
  v9 = v3;
  dispatch_async(v7, v8);
}

uint64_t sub_19B45001C(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(a1 + 40) & 0x100) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (*(v2 + 112) != 0.0 && !*(v2 + 104) && (*(a1 + 40) & 0x100) != 0)
  {
    v5 = mach_absolute_time();
    v6 = sub_19B41E070(v5);
    v7 = *(v2 + 112);
    *(v2 + 112) = 0;
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v8 = v6 - v7;
    v9 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
    {
      v10 = mach_absolute_time();
      *buf = 134218240;
      *v28 = sub_19B41E070(v10);
      *&v28[8] = 2048;
      *&v28[10] = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "%f: ProxDelay,%f", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v13 = mach_absolute_time();
      sub_19B41E070(v13);
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::feedProximityData(const uint32_t)_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = MEMORY[0x1E696AEC0];
    if (qword_1ED71D2F8 != -1)
    {
      dispatch_once(&qword_1ED71D2F8, &unk_1F0E28340);
    }

    objc_msgSend_stringWithFormat_(v15, v12, @"%@.%@", qword_1ED71D2F0, @"proxBootDelay");
    ADClientPushValueForDistributionKey();
  }

  *(v2 + 104) = v3;
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v16 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 40);
    v18 = *(v2 + 104);
    if (v18 > 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = off_1E7533F08[v18];
    }

    *buf = 67109378;
    *v28 = v17;
    *&v28[4] = 2080;
    *&v28[6] = v19;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Proximity detection mask: %u, Last prox state: %s", buf, 0x12u);
  }

  v20 = sub_19B420058();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v21 = *(v2 + 104);
    if (v21 <= 2)
    {
      v22 = off_1E7533F08[v21];
    }

    v26 = *(a1 + 40);
    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::feedProximityData(const uint32_t)_block_invoke", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  result = sub_19B450488(v2);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B450488(unsigned int *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v2 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[24];
    if (v3 > 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = off_1E7533E98[v3];
    }

    v5 = a1[25];
    if (v5 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E7533EB0[v5];
    }

    v7 = a1[26];
    if (v7 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E7533F08[v7];
    }

    *buf = 136315650;
    v24 = v4;
    v25 = 2080;
    v26 = v6;
    v27 = 2080;
    v28 = v8;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Device Stationary?, %s, Orientation, %s, Proximity, %s", buf, 0x20u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v10 = a1[24];
    if (v10 <= 2)
    {
      v11 = off_1E7533E98[v10];
    }

    v12 = a1[25];
    if (v12 <= 2)
    {
      v13 = off_1E7533EB0[v12];
    }

    v14 = a1[26];
    if (v14 <= 2)
    {
      v15 = off_1E7533F08[v14];
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::determineState()", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = a1[25];
  if (a1[26] == 2)
  {
    if (v17 != 2 || a1[24] != 2)
    {
      v18 = "2 not (FaceDown and static)";
      v19 = a1;
      v20 = 4;
      goto LABEL_39;
    }

    v18 = "1 prox corroborated";
  }

  else
  {
    if (v17 != 2)
    {
      v18 = "5 not FaceDown, prox uncovered";
      v19 = a1;
      v20 = 3;
      goto LABEL_39;
    }

    if (a1[24] != 2)
    {
      v18 = "4 FaceDown only";
      v19 = a1;
      v20 = 1;
      goto LABEL_39;
    }

    v18 = "3 no prox";
  }

  v19 = a1;
  v20 = 2;
LABEL_39:
  result = sub_19B4507C4(v19, v20, v18);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B4507C4(uint64_t result, int a2, char *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = (result + 32);
  if (*(result + 32) != a2)
  {
    v6 = result;
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v7 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v3;
      if (v8 > 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_1E7533EC8[v8];
      }

      v10 = off_1E7533E78[a2 - 1];
      *buf = 136315650;
      v40 = *&v9;
      v41 = 2080;
      v42 = v10;
      v43 = 2080;
      v44 = a3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Transition, From: %s, To: %s, %s", buf, 0x20u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v12 = *v3;
      if (v12 <= 4)
      {
        v13 = off_1E7533EC8[v12];
      }

      v38 = off_1E7533E78[a2 - 1];
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::transitionToState(CLPocketStateInternalType, const char *)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    *v3 = a2;
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v15 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      v16 = mach_absolute_time();
      v17 = sub_19B41E070(v16);
      v18 = v6[24];
      if (v18 > 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = off_1E7533E98[v18];
      }

      v20 = v6[25];
      if (v20 > 2)
      {
        v21 = 0;
      }

      else
      {
        v21 = off_1E7533EB0[v20];
      }

      v22 = v6[26];
      if (v22 > 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = off_1E7533F08[v22];
      }

      v24 = *v3;
      if (v24 > 4)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_1E7533EC8[v24];
      }

      *buf = 134219010;
      v40 = v17;
      v41 = 2080;
      v42 = v19;
      v43 = 2080;
      v44 = v21;
      v45 = 2080;
      v46 = v23;
      v47 = 2080;
      v48 = v25;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "%f: Device Stationary?, %s, Orientation, %s, Proximity, %s, State, %s", buf, 0x34u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v27 = mach_absolute_time();
      sub_19B41E070(v27);
      v28 = v6[24];
      if (v28 <= 2)
      {
        v29 = off_1E7533E98[v28];
      }

      v30 = v6[25];
      if (v30 <= 2)
      {
        v31 = off_1E7533EB0[v30];
      }

      v32 = v6[26];
      if (v32 <= 2)
      {
        v33 = off_1E7533F08[v32];
      }

      v34 = *v3;
      if (v34 <= 4)
      {
        v35 = off_1E7533EC8[v34];
      }

      v36 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::transitionToState(CLPocketStateInternalType, const char *)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    result = sub_19B4455DC(v6, 0, v3, 4);
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B450CFC()
{
  v6 = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E3B7E0);
  }

  v0 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "Empty payload", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E3B7E0);
    }

    LOWORD(__dst) = 0;
    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLGestureService::onGestureServiceIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B451324(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_19B7BC918[(a1 - 1)];
  }
}

unsigned __int8 *sub_19B451364(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 <= 4)
  {
    if (*result > 2u)
    {
      if (v2 == 3)
      {
        return (*(*a2 + 32))(a2, result);
      }

      else if (v2 == 4)
      {
        return (*(*a2 + 40))(a2, result);
      }
    }

    else if (v2 == 1)
    {
      return (*(*a2 + 16))(a2, result);
    }

    else if (v2 == 2)
    {
      return (*(*a2 + 24))(a2, result);
    }
  }

  else if (*result <= 6u)
  {
    if (v2 == 5)
    {
      return (*(*a2 + 48))(a2, result);
    }

    else if (v2 == 6)
    {
      return (*(*a2 + 56))(a2, result);
    }
  }

  else
  {
    switch(v2)
    {
      case 7u:
        return (*(*a2 + 64))(a2, result);
      case 8u:
        return (*(*a2 + 72))(a2, result);
      case 9u:
        return (*(*a2 + 80))(a2, result);
    }
  }

  return result;
}

__n128 sub_19B45155C(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

void sub_19B4515A0(uint64_t a1, int a2, int a3, intptr_t notificationID)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3 > -536870145)
  {
    if (a3 == -536870144)
    {
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v21 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "received HasPoweredOn", buf, 2u);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        LOWORD(v26[0]) = 0;
        v23 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::onSystemPowerChanged(io_service_t, uint32_t, void *)", "CoreLocation: %s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    else if (a3 == -536870112)
    {
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v9 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "received WillPowerOn", buf, 2u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        LOWORD(v26[0]) = 0;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::onSystemPowerChanged(io_service_t, uint32_t, void *)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      *(a1 + 120) = 1;
      objc_msgSend_stopActivityUpdates(*(a1 + 56), v11, v12);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      *buf = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = sub_19B451D98;
      v30 = &unk_1E7533E18;
      v31 = a1;
      objc_msgSend_startActivityUpdatesToQueue_withHandler_(v14, v16, v15, buf);
      if ((sub_19B421620() & 0x80) != 0)
      {
        if (*(a1 + 120) == 1 && !*(a1 + 100))
        {
          v24 = sub_19B420D84();
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = sub_19B45261C;
          v26[3] = &unk_1E75327D8;
          v26[4] = a1;
          sub_19B421668(v24, v26);
        }
      }

      else
      {
        v17 = sub_19B4484E8();
        sub_19B426A14(v17, 1, *(a1 + 40));
        v18 = sub_19B4484E8();
        sub_19B437CF0(v18, 1, *(a1 + 40), -1.0);
      }
    }

    goto LABEL_51;
  }

  if (a3 != -536870288)
  {
    if (a3 == -536870272)
    {
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v6 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "received WillSleep", buf, 2u);
      }

      v7 = sub_19B420058();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        LOWORD(v26[0]) = 0;
        v8 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::onSystemPowerChanged(io_service_t, uint32_t, void *)", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      *(a1 + 120) = 0;
      IOAllowPowerChange(*(a1 + 84), notificationID);
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
    }

LABEL_51:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  v19 = *(a1 + 84);
  v20 = *MEMORY[0x1E69E9840];

  IOAllowPowerChange(v19, notificationID);
}

uint64_t sub_19B451C30(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v8 = a3;
  result = sub_19B41DF08(a1, 0, &v8, 4);
  if (a3 == -536870272 || a3 == -536870288)
  {
    return IOAllowPowerChange(*(a1 + 44), a4);
  }

  return result;
}

void sub_19B451CC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B4526C0;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_19B451D50(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 16);
  LOWORD(v4) = *(a2 + 1);
  return sub_19B4455DC(a1 - 32, 2, &v3, 16);
}

uint64_t sub_19B451D98(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (objc_msgSend_stationary(a2, a2, a3))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v3[24] = v4;

  return sub_19B450488(v3);
}

id sub_19B451DE4(uint64_t a1)
{
  result = objc_loadWeak((a1 + 48));
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void sub_19B451E38(uint64_t a1, CLConnectionMessage **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (!Weak)
  {
    goto LABEL_30;
  }

  v5 = Weak;
  if (!Weak[4])
  {
    goto LABEL_30;
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11)) != 0)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMMotionActivityData");
    if (v15)
    {
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      v18 = qword_1ED71C7A8;
      if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v39 = objc_msgSend_intValue(v15, v19, v20);
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "Error occurred while trying to retrieve motion state update: CMErrorDomain Code:%{public}d", buf, 8u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
      {
        goto LABEL_30;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      v36 = 67240192;
      v37 = objc_msgSend_intValue(v15, v22, v23);
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionActivityManager init]_block_invoke", "CoreLocation: %s\n", v24);
      if (v24 == buf)
      {
        goto LABEL_30;
      }

LABEL_29:
      free(v24);
      goto LABEL_30;
    }

    v28 = v17;
    if (v17)
    {
      v30 = v5[4];
      v29 = v5[5];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_19B451DE4;
      v34[3] = &unk_1E7532C30;
      objc_copyWeak(&v35, (a1 + 32));
      v34[4] = v28;
      v34[5] = v30;
      objc_msgSend_addOperationWithBlock_(v29, v31, v34);
      objc_destroyWeak(&v35);
      goto LABEL_30;
    }

    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
    }

    v32 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageMotionActivityUpdate message!", buf, 2u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      LOWORD(v36) = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionActivityManager init]_block_invoke", "CoreLocation: %s\n", v24);
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
    }

    v25 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v39 = 103;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Error occurred while trying to retrieve motion state update: CMErrorDomain Code:%{public}d", buf, 8u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }

      v36 = 67240192;
      v37 = 103;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionActivityManager init]_block_invoke", "CoreLocation: %s\n", v24);
LABEL_28:
      if (v24 == buf)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B4523EC(unsigned int *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v4 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[25];
    *buf = 67240448;
    v13 = a2;
    v14 = 1026;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "New orientation,%{public}d,Prev orientation,%{public}d", buf, 0xEu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v11 = a1[25];
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::feedDeviceOrientationData(const CLOrientationNotifier::Sample *)", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a2 == 6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  a1[25] = v8;
  result = sub_19B450488(a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B4525F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 120) == 1 && !*(result + 100))
  {
    return sub_19B4523EC(result, *(a1 + 48));
  }

  return result;
}

void sub_19B45261C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120) == 1 && !*(v1 + 100))
  {
    v2 = sub_19B4484E8();
    v3 = sub_19B448530(v2, 0);
    v4 = *(v1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B4525F4;
    block[3] = &unk_1E7533E58;
    block[4] = v1;
    block[5] = v3;
    block[6] = v5;
    dispatch_async(v4, block);
  }
}

uint64_t sub_19B4526C0(uint64_t result, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 32))
  {
    v3 = @"kCLConnectionMessageSubscribeKey";
    v4[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
    sub_19B45280C();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B4527D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

uint64_t sub_19B452880(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B4528D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B4528F4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B452880((a1 + 3), a2, a3);
  return a1;
}

void sub_19B4529B4(NSObject *a1)
{
  v92 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v3 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LOWORD(v80) = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    v6 = sub_19B420D84();
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = sub_19B7293E8;
    v79[3] = &unk_1E75327D8;
    v79[4] = a1;
    sub_19B420C9C(v6, v79);
    goto LABEL_14;
  }

  isa = a1[44].isa;
  if (!isa)
  {
    goto LABEL_14;
  }

  theInterface = 0;
  valuePtr = 0;
  v76 = 0;
  v9 = sub_19B43EE18(isa);
  if (v9)
  {
    v10 = v9;
    RegistryID = IOHIDServiceClientGetRegistryID(v9);
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
    theScore = 0;
    v12 = *MEMORY[0x1E696CD60];
    v13 = IORegistryEntryIDMatching(valuePtr);
    MatchingService = IOServiceGetMatchingService(v12, v13);
    if (MatchingService)
    {
      v15 = MatchingService;
      v73 = 0;
      parent = 0;
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v17 = ParentEntry;
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v18 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
        {
          v19 = mach_error_string(v17);
          *buf = 67240450;
          *v87 = v17;
          *&v87[4] = 2082;
          *&v87[6] = v19;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Unable to get parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        v20 = sub_19B420058();
        if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v21 = mach_error_string(v17);
          v80 = 67240450;
          *v81 = v17;
          *&v81[4] = 2082;
          *&v81[6] = v21;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v23 = v15;
LABEL_68:
        IOObjectRelease(v23);
        goto LABEL_14;
      }

      IOObjectRelease(v15);
      v29 = IORegistryEntryGetParentEntry(parent, "IOService", &v73);
      if (v29)
      {
        v30 = v29;
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v31 = off_1ED71C7C0;
        if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
        {
          v32 = mach_error_string(v30);
          *buf = 67240450;
          *v87 = v30;
          *&v87[4] = 2082;
          *&v87[6] = v32;
          _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "Unable to get grand parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        v33 = sub_19B420058();
        if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v34 = mach_error_string(v30);
          v80 = 67240450;
          *v81 = v30;
          *&v81[4] = 2082;
          *&v81[6] = v34;
          v35 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        v23 = parent;
        goto LABEL_68;
      }

      IOObjectRelease(parent);
      v36 = v73;
      v37 = *MEMORY[0x1E695E4A8];
      v38 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Au, 0xCFu, 0x53u, 0x32u, 0x1Au, 0x35u, 0x48u, 0x93u, 0x87u, 0xCBu, 0xBAu, 0x64u, 0xE1u, 0x88u, 0x7Fu, 0xAEu);
      v39 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v40 = IOCreatePlugInInterfaceForService(v36, v38, v39, &theInterface, &theScore);
      if (!v40)
      {
        v46 = theInterface;
        QueryInterface = (*theInterface)->QueryInterface;
        v48 = CFUUIDGetConstantUUIDWithBytes(v37, 1u, 0x64u, 0x69u, 0xD8u, 0x77u, 0x3Bu, 0x46u, 0xACu, 0x90u, 0x9Eu, 0xF9u, 0xCu, 0x4Au, 0x6Eu, 0x75u, 0x77u);
        v49 = CFUUIDGetUUIDBytes(v48);
        v50 = (QueryInterface)(v46, *&v49.byte0, *&v49.byte8, &v76);
        if (v50)
        {
          v51 = v50;
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v52 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
          {
            v53 = mach_error_string(v51);
            *buf = 67240706;
            *v87 = v51;
            *&v87[4] = 2082;
            *&v87[6] = v53;
            *&v87[14] = 2114;
            *&v87[16] = v10;
            _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_FAULT, "Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
          }

          v54 = sub_19B420058();
          if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
            }

            v55 = mach_error_string(v51);
            v80 = 67240706;
            *v81 = v51;
            *&v81[4] = 2082;
            *&v81[6] = v55;
            *&v81[14] = 2114;
            *&v81[16] = v10;
            v56 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v56);
            if (v56 != buf)
            {
              free(v56);
            }
          }
        }

        else
        {
          v57 = (*(*v76 + 64))(v76, 0);
          if (!v57)
          {
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
            }

            v64 = off_1ED71C7C0;
            if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
            {
              v65 = a1[47].isa;
              v66 = a1[48].isa;
              *buf = 134219008;
              *v87 = valuePtr;
              *&v87[8] = 2048;
              *&v87[10] = v65;
              *&v87[18] = 2048;
              *&v87[20] = v66;
              v88 = 2048;
              v89 = theInterface;
              v90 = 2048;
              v91 = v76;
              _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEFAULT, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
            }

            v67 = sub_19B420058();
            if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C7B0 != -1)
              {
                dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
              }

              v68 = a1[47].isa;
              v69 = a1[48].isa;
              v80 = 134219008;
              *v81 = valuePtr;
              *&v81[8] = 2048;
              *&v81[10] = v68;
              *&v81[18] = 2048;
              *&v81[20] = v69;
              v82 = 2048;
              v83 = theInterface;
              v84 = 2048;
              v85 = v76;
              v70 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v70);
              if (v70 != buf)
              {
                free(v70);
              }
            }

            v71 = theInterface;
            *(a1[44].isa + 1) = valuePtr;
            v72 = v76;
            a1[47].isa = v71;
            a1[48].isa = v72;
            sub_19B453A10(a1);
            goto LABEL_14;
          }

          v58 = v57;
          if (qword_1ED71C7B0 != -1)
          {
            dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
          }

          v59 = off_1ED71C7C0;
          if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
          {
            v60 = mach_error_string(v58);
            *buf = 67240706;
            *v87 = v58;
            *&v87[4] = 2082;
            *&v87[6] = v60;
            *&v87[14] = 2114;
            *&v87[16] = v10;
            _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_FAULT, "Unable to open hid device interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
          }

          v61 = sub_19B420058();
          if ((*(v61 + 160) & 0x80000000) == 0 || (*(v61 + 164) & 0x80000000) == 0 || (*(v61 + 168) & 0x80000000) == 0 || *(v61 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B0 != -1)
            {
              dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
            }

            v62 = mach_error_string(v58);
            v80 = 67240706;
            *v81 = v58;
            *&v81[4] = 2082;
            *&v81[6] = v62;
            *&v81[14] = 2114;
            *&v81[16] = v10;
            v63 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n", v63);
            if (v63 != buf)
            {
              free(v63);
            }
          }

          if (v76)
          {
            (*(*v76 + 72))(v76, 0);
          }
        }

        if (theInterface)
        {
          ((*theInterface)->Release)(theInterface);
          IODestroyPlugInInterface(theInterface);
        }

        goto LABEL_14;
      }

      v41 = v40;
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v42 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        v43 = mach_error_string(v41);
        *buf = 67240706;
        *v87 = v41;
        *&v87[4] = 2082;
        *&v87[6] = v43;
        *&v87[14] = 2114;
        *&v87[16] = v10;
        _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_FAULT, "Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
      }

      v44 = sub_19B420058();
      if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        v45 = mach_error_string(v41);
        v80 = 67240706;
        *v81 = v41;
        *&v81[4] = 2082;
        *&v81[6] = v45;
        *&v81[14] = 2114;
        *&v81[16] = v10;
LABEL_52:
        v26 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n");
LABEL_53:
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    else
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v27 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "AOP service doesn't exist", buf, 2u);
      }

      v28 = sub_19B420058();
      if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
        }

        LOWORD(v80) = 0;
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v24 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_INFO, "IoHidDevice is not ready!", buf, 2u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LOWORD(v80) = 0;
      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::openHidDriverInterface()", "CoreLocation: %s\n");
      goto LABEL_53;
    }
  }

LABEL_14:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B453A10(NSObject *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    v19[0] = 4;
    LODWORD(v3) = LOBYTE(a1[4].isa);
    v19[1] = a1[4].isa;
    LODWORD(v4) = BYTE2(a1[4].isa);
    v19[2] = BYTE2(a1[4].isa);
    if (qword_1ED71C7B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v16 = off_1ED71C7C0;
    v3 = "sE";
    v4 = "";
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v24 = 0;
      *&v24[4] = 2082;
      *&v24[6] = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:sendConfiguration should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }
    }

    v17 = off_1ED71C7C0;
    if (os_signpost_enabled(off_1ED71C7C0))
    {
      *buf = 68289539;
      *v24 = 0;
      *&v24[4] = 2082;
      *&v24[6] = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "sendConfiguration should be running on motion thread", "{msg%{public}.0s:sendConfiguration should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }
    }

    a1 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v24 = 0;
      *&v24[4] = 2082;
      *&v24[6] = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:sendConfiguration should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
LABEL_3:
  v5 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    *v24 = v3;
    *&v24[4] = 1026;
    *&v24[6] = v4;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Sending config,formFactor,%{public}d,handleCover,%{public}d", buf, 0xEu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v20 = 67240448;
    *v21 = v3;
    *&v21[4] = 1026;
    *&v21[6] = v4;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::sendConfiguration()", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v18 = 3;
  v8 = (*(*a1[48].isa + 160))(a1[48].isa, 32, v19, 3, v19, &v18);
  if (v8)
  {
    v9 = v8;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v10 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      v11 = mach_error_string(v9);
      *buf = 136446466;
      *v24 = v11;
      *&v24[8] = 1026;
      *&v24[10] = v9;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "SendCommand(Config) = %{public}s (0x%{public}x)", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v13 = mach_error_string(v9);
      v20 = 136446466;
      *v21 = v13;
      *&v21[8] = 1026;
      v22 = v9;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLOrientationNotifier::sendConfiguration()", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B453FCC(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E696CD60];
  *(v1 + 32) = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v1 + 40) = IONotificationPortCreate(v2);
  *(v1 + 48) = IONotificationPortCreate(v2);
  v3 = IONotificationPortCreate(v2);
  *(v1 + 56) = v3;
  v4 = *(v1 + 32);
  if (!v4 || !*(v1 + 40) || (*(v1 + 48) ? (v5 = v3 == 0) : (v5 = 1), v5))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Failed to register for keyboard updates. Could not create KeyboardConnectNotificationPort and KeyboardConnectNotificationPort", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::registerForKeyboardUpdates()_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    goto LABEL_20;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v4);
  v11 = IONotificationPortGetRunLoopSource(*(v1 + 40));
  v12 = IONotificationPortGetRunLoopSource(*(v1 + 48));
  v13 = IONotificationPortGetRunLoopSource(*(v1 + 56));
  if (RunLoopSource)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v12 != 0 && v13 != 0)
  {
    v19 = v13;
    sub_19B420D84();
    v20 = *MEMORY[0x1E695E8E0];
    CFRunLoopAddSource(*qword_1ED71C908, RunLoopSource, *MEMORY[0x1E695E8E0]);
    sub_19B420D84();
    CFRunLoopAddSource(*qword_1ED71C908, v11, v20);
    sub_19B420D84();
    CFRunLoopAddSource(*qword_1ED71C908, v12, v20);
    sub_19B420D84();
    CFRunLoopAddSource(*qword_1ED71C908, v19, v20);
    v21 = *(v1 + 32);
    v22 = IOServiceMatching("AppleHIDKeyboardEventDriverV2");
    v23 = IOServiceAddMatchingNotification(v21, "IOServiceFirstMatch", v22, sub_19B4545F8, v1, (v1 + 64));
    v24 = *(v1 + 40);
    v25 = IOServiceMatching("AppleHIDKeyboardEventDriverV2");
    v26 = IOServiceAddMatchingNotification(v24, "IOServiceTerminate", v25, sub_19B4545F8, v1, (v1 + 68));
    v27 = *(v1 + 48);
    v28 = IOServiceMatching("IOAccessoryIDBusHIDDevice");
    v29 = IOServiceAddMatchingNotification(v27, "IOServiceFirstMatch", v28, sub_19B4545F8, v1, (v1 + 72));
    v30 = *(v1 + 56);
    v31 = IOServiceMatching("IOAccessoryIDBusHIDDevice");
    v32 = IOServiceAddMatchingNotification(v30, "IOServiceTerminate", v31, sub_19B4545F8, v1, (v1 + 76));
    if (!v23 && !v26 && !v29 && !v32)
    {
      sub_19B4545F8(v1, *(v1 + 64));
      sub_19B4545F8(v1, *(v1 + 68));
      sub_19B4545F8(v1, *(v1 + 72));
      v33 = *(v1 + 76);
      v34 = *MEMORY[0x1E69E9840];

      sub_19B4545F8(v1, v33);
      return;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
    }

    v35 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "#Warning Failed to register for keyboard updates. Could not register for notifications from  AppleHIDKeyboardEventDriverV2 service and IOAccessoryIDBusHIDDevice service (for kIOFirstMatchNotification and kIOTerminatedNotification).", buf, 2u);
    }

    v36 = sub_19B420058();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E289E0);
      }

      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardCoverState::registerForKeyboardUpdates()_block_invoke", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    if (qword_1ED71CAC8 != -1)
    {
      dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
    }

    sub_19B44A714(qword_1ED71CAC0);
LABEL_20:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1ED71CAC8 != -1)
  {
    dispatch_once(&qword_1ED71CAC8, &unk_1F0E29160);
  }

  v17 = qword_1ED71CAC0;
  v18 = *MEMORY[0x1E69E9840];

  sub_19B44A714(v17);
}

uint64_t sub_19B4545F8(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = sub_19B6176FC("AppleHIDKeyboardEventDriverV2");
      v7 = sub_19B6176FC("IOAccessoryIDBusHIDDevice");
      v8 = v6 || v7;
      if (*(a1 + 81) != (v6 || v7))
      {
        *(a1 + 81) = v6 || v7;
        sub_19B4455DC(a1, 0, &v8, 1);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

BOOL sub_19B454944(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 2.22507386e-308)
  {
    AnalyticsSendEventLazy();
  }

  return v1 != 2.22507386e-308;
}

uint64_t sub_19B4549E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v8[0] = @"bundleId";
  v8[1] = @"duration";
  v9[0] = v4;
  v9[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(v3 + 16) - *(v3 + 8));
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v9, v8, 2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

long double CLClientGetDistanceCoordinates(double a1, double a2, double a3, double a4)
{
  if ((atomic_load_explicit(&qword_1ED71D200, memory_order_acquire) & 1) == 0)
  {
    v9 = a4;
    v10 = a2;
    v7 = a3;
    v8 = a1;
    v6 = __cxa_guard_acquire(&qword_1ED71D200);
    a3 = v7;
    a1 = v8;
    a4 = v9;
    a2 = v10;
    if (v6)
    {
      qword_1ED71D220 = 0;
      unk_1ED71D228 = 0;
      xmmword_1ED71D210 = xmmword_19B7B7DA0;
      qword_1ED71D230 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1ED71D200);
      a3 = v7;
      a1 = v8;
      a4 = v9;
      a2 = v10;
    }
  }

  return sub_19B428714(&xmmword_1ED71D210, a1, a2, a3, a4, 0.0);
}

uint64_t sub_19B454DBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_19B458984(SEL *a1)
{
  result = [v1 *a1];
  v3 = result;
  if (result)
  {
    [result doubleValue];
    v5 = v4;

    return v5;
  }

  return result;
}

uint64_t sub_19B4589E8()
{
  v0 = sub_19B7A38A0();
  sub_19B45B4C0(v0, qword_1EAFE3638);
  sub_19B45A9B8(v0, qword_1EAFE3638);
  return sub_19B7A3890();
}

uint64_t sub_19B458A6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CMBatchedSensorManager.AccelerometerUpdates.Iterator.next()()
{
  v1 = *(MEMORY[0x1E69E87B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_19B458A6C(&qword_1EAFE28A0, &qword_19B7B2B70);
  *v2 = v0;
  v2[1] = sub_19B458B64;

  return MEMORY[0x1EEE6DB98](v0 + 16, v3);
}

uint64_t sub_19B458B64()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_19B45B7C8;
  }

  else
  {
    v3 = sub_19B45B7D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19B458C78(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(MEMORY[0x1E69E87B0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = sub_19B458A6C(&qword_1EAFE28A0, &qword_19B7B2B70);
  *v3 = v1;
  v3[1] = sub_19B458D2C;

  return MEMORY[0x1EEE6DB98](v1 + 16, v4);
}

uint64_t sub_19B458D2C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_19B45B7CC;
  }

  else
  {
    v3 = sub_19B45B7DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19B458E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_19B458EF8;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_19B458EF8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v15 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 40);
      v6 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_19B7A38E0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_19B45B7D4;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_19B7A38E0();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_19B45B7E0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t CMBatchedSensorManager.AccelerometerUpdates.makeAsyncIterator()()
{
  sub_19B458A6C(&qword_1EAFE28A8, &qword_19B7B2B80);

  return sub_19B7A3930();
}

uint64_t CMBatchedSensorManager.accelerometerUpdates()()
{
  v1 = sub_19B458A6C(&qword_1EAFE28B0, &qword_19B7B2B88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v7[-v4];
  v8 = v0;
  sub_19B458A6C(&qword_1EAFE28B8, &qword_19B7B2B90);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8790], v1);
  return sub_19B7A3950();
}

void sub_19B45921C(uint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2940, &qword_19B7B2D78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = aBlock - v7;
  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  sub_19B7A3900();
  if (qword_1EAFE3630 != -1)
  {
    swift_once();
  }

  v10 = sub_19B7A38A0();
  sub_19B45A9B8(v10, qword_1EAFE3638);
  v11 = sub_19B7A3880();
  v12 = sub_19B7A3980();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_19B41C000, v11, v12, "[framework-accel-async] starting updates", v13, 2u);
    MEMORY[0x19EAE8940](v13, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  aBlock[4] = sub_19B45B6BC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19B459864;
  aBlock[3] = &unk_1F0E38328;
  v16 = _Block_copy(aBlock);

  [v9 startAccelerometerUpdatesWithHandler_];
  _Block_release(v16);
}

uint64_t sub_19B4594D8(unint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2950, &qword_19B7B2D80);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00]();
  v9 = &v26 - v8;
  if (a1)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v10 = sub_19B7A38A0();
    sub_19B45A9B8(v10, qword_1EAFE3638);
    v11 = sub_19B7A3960();

    v12 = sub_19B7A3880();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      if (a1 >> 62)
      {
        v14 = sub_19B7A39B0();
      }

      else
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&dword_19B41C000, v12, v11, "[framework-accel-async] yielding new update %ld", v13, 0xCu);
      MEMORY[0x19EAE8940](v13, -1, -1);
    }

    else
    {
    }

    v27 = a1;

    sub_19B458A6C(&qword_1EAFE2940, &qword_19B7B2D78);
    sub_19B7A3910();
    return (*(v5 + 8))(v9, v4);
  }

  else if (a2)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v15 = sub_19B7A38A0();
    sub_19B45A9B8(v15, qword_1EAFE3638);
    v16 = sub_19B7A3970();
    v17 = a2;
    v18 = sub_19B7A3880();

    if (os_log_type_enabled(v18, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a2;
      v27 = v20;
      *v19 = 136315138;
      v21 = a2;
      sub_19B458A6C(&qword_1EAFE2930, &qword_19B7B2D68);
      v22 = sub_19B7A38B0();
      v24 = sub_19B45AE6C(v22, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_19B41C000, v18, v16, "[framework-accel-async] terminating with error %s", v19, 0xCu);
      sub_19B45AF38(v20);
      MEMORY[0x19EAE8940](v20, -1, -1);
      MEMORY[0x19EAE8940](v19, -1, -1);
    }

    v27 = a2;
    v25 = a2;
    sub_19B458A6C(&qword_1EAFE2940, &qword_19B7B2D78);
    return sub_19B7A3920();
  }

  return result;
}

uint64_t CMBatchedSensorManager.DeviceMotionUpdates.Iterator.next()()
{
  v1 = *(MEMORY[0x1E69E87B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_19B458A6C(&qword_1EAFE28C0, &qword_19B7B2B98);
  *v2 = v0;
  v2[1] = sub_19B459928;

  return MEMORY[0x1EEE6DB98](v0 + 16, v3);
}

uint64_t sub_19B459928()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_19B459A58;
  }

  else
  {
    v3 = sub_19B459A3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19B459A70(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(MEMORY[0x1E69E87B0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = sub_19B458A6C(&qword_1EAFE28C0, &qword_19B7B2B98);
  *v3 = v1;
  v3[1] = sub_19B459B24;

  return MEMORY[0x1EEE6DB98](v1 + 16, v4);
}

uint64_t sub_19B459B24()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_19B459C58;
  }

  else
  {
    v3 = sub_19B459C38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19B459C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_19B459D28;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_19B459D28()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v15 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 40);
      v6 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_19B7A38E0();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_19B459EDC;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_19B7A38E0();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_19B459EB8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_19B459EDC()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  sub_19B458A6C(&qword_1EAFE28F8, &qword_19B7B2D28);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t CMBatchedSensorManager.DeviceMotionUpdates.makeAsyncIterator()()
{
  sub_19B458A6C(&qword_1EAFE28C8, &qword_19B7B2BA8);

  return sub_19B7A3930();
}

uint64_t sub_19B459FEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_19B458A6C(a3, a4);
  sub_19B7A3930();
  return sub_19B45A944(v5, a5);
}

uint64_t CMBatchedSensorManager.deviceMotionUpdates()()
{
  v1 = sub_19B458A6C(&qword_1EAFE28D0, &qword_19B7B2BB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v7[-v4];
  v8 = v0;
  sub_19B458A6C(&qword_1EAFE28D8, qword_19B7B2BB8);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8790], v1);
  return sub_19B7A3950();
}

void sub_19B45A15C(uint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2918, &qword_19B7B2D58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = aBlock - v7;
  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  sub_19B7A3900();
  if (qword_1EAFE3630 != -1)
  {
    swift_once();
  }

  v10 = sub_19B7A38A0();
  sub_19B45A9B8(v10, qword_1EAFE3638);
  v11 = sub_19B7A3880();
  v12 = sub_19B7A3980();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_19B41C000, v11, v12, "[framework-dm-async] starting updates", v13, 2u);
    MEMORY[0x19EAE8940](v13, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  aBlock[4] = sub_19B45AD7C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19B45ADA4;
  aBlock[3] = &unk_1F0E382B0;
  v16 = _Block_copy(aBlock);

  [v9 startDeviceMotionUpdatesWithHandler_];
  _Block_release(v16);
}

uint64_t sub_19B45A4D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19B45A5B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_19B45A654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void))
{
  sub_19B45A8BC(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_19B45A718(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19B45A794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_19B458A6C(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_19B45A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_19B458A6C(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_19B45A8BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_19B45A5B4(a3, a4);
    v9 = sub_19B45A5B4(&qword_1EAFE28F8, &qword_19B7B2D28);
    v10 = a5(a1, v8, v9, MEMORY[0x1E69E7288]);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_19B45A944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19B45A9B8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19B45A9F0(unint64_t a1, void *a2)
{
  v4 = sub_19B458A6C(&qword_1EAFE2928, &qword_19B7B2D60);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00]();
  v9 = &v26 - v8;
  if (a1)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v10 = sub_19B7A38A0();
    sub_19B45A9B8(v10, qword_1EAFE3638);
    v11 = sub_19B7A3960();

    v12 = sub_19B7A3880();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      if (a1 >> 62)
      {
        v14 = sub_19B7A39B0();
      }

      else
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&dword_19B41C000, v12, v11, "[framework-dm-async] yielding new update %ld", v13, 0xCu);
      MEMORY[0x19EAE8940](v13, -1, -1);
    }

    else
    {
    }

    v27 = a1;

    sub_19B458A6C(&qword_1EAFE2918, &qword_19B7B2D58);
    sub_19B7A3910();
    return (*(v5 + 8))(v9, v4);
  }

  else if (a2)
  {
    if (qword_1EAFE3630 != -1)
    {
      swift_once();
    }

    v15 = sub_19B7A38A0();
    sub_19B45A9B8(v15, qword_1EAFE3638);
    v16 = sub_19B7A3970();
    v17 = a2;
    v18 = sub_19B7A3880();

    if (os_log_type_enabled(v18, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a2;
      v27 = v20;
      *v19 = 136315138;
      v21 = a2;
      sub_19B458A6C(&qword_1EAFE2930, &qword_19B7B2D68);
      v22 = sub_19B7A38B0();
      v24 = sub_19B45AE6C(v22, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_19B41C000, v18, v16, "[framework-dm-async] terminating with error %s", v19, 0xCu);
      sub_19B45AF38(v20);
      MEMORY[0x19EAE8940](v20, -1, -1);
      MEMORY[0x19EAE8940](v19, -1, -1);
    }

    v27 = a2;
    v25 = a2;
    sub_19B458A6C(&qword_1EAFE2918, &qword_19B7B2D58);
    return sub_19B7A3920();
  }

  return result;
}

uint64_t sub_19B45ADB8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_19B45B77C(0, a4, a5);
    v6 = sub_19B7A38D0();
  }

  v9 = a3;
  v8(v6, a3);
}

uint64_t sub_19B45AE54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19B45AE6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19B45AF84(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_19B45B090(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_19B45AF38(v11);
  return v7;
}

uint64_t sub_19B45AF38(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_19B45AF84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19B45B0EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_19B7A39A0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_19B45B090(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19B45B0EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_19B45B138(a1, a2);
  sub_19B45B268(&unk_1F0E38238);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_19B45B138(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19B45B354(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19B7A39A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19B7A38C0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19B45B354(v10, 0);
        result = sub_19B7A3990();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_19B45B268(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_19B45B3C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_19B45B354(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_19B458A6C(&qword_1EAFE2938, &qword_19B7B2D70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19B45B3C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_19B458A6C(&qword_1EAFE2938, &qword_19B7B2D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *sub_19B45B4C0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_19B45B538(uint64_t a1, const char *a2, const char **a3)
{
  v6 = *(v3 + 16);
  if (qword_1EAFE3630 != -1)
  {
    swift_once();
  }

  v7 = sub_19B7A38A0();
  sub_19B45A9B8(v7, qword_1EAFE3638);
  v8 = sub_19B7A3880();
  v9 = sub_19B7A3980();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19B41C000, v8, v9, a2, v10, 2u);
    MEMORY[0x19EAE8940](v10, -1, -1);
  }

  v11 = *a3;

  return [v6 v11];
}

uint64_t sub_19B45B638(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_19B458A6C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_19B45B6E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_19B458A6C(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_19B45B77C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19B45B7E4(uint64_t result)
{
  *result = 2147450879;
  *(result + 4) = 0x7FFF;
  *(result + 6) = 2147450879;
  *(result + 10) = 0x7FFF;
  *(result + 12) = 2147450879;
  *(result + 16) = 0x7FFF;
  *(result + 18) = 2147450879;
  *(result + 22) = 0x7FFF;
  *(result + 28) = 0x7FFF;
  *(result + 24) = 2147450879;
  *(result + 34) = 0x7FFF;
  *(result + 30) = 2147450879;
  *(result + 40) = 0x7FFF;
  *(result + 36) = 2147450879;
  *(result + 46) = 0x7FFF;
  *(result + 42) = 2147450879;
  *(result + 52) = 0x7FFF;
  *(result + 48) = 2147450879;
  *(result + 58) = 0x7FFF;
  *(result + 54) = 2147450879;
  *(result + 64) = 0x7FFF;
  *(result + 60) = 2147450879;
  *(result + 70) = 0x7FFF;
  *(result + 66) = 2147450879;
  *(result + 76) = 0x7FFF;
  *(result + 72) = 2147450879;
  *(result + 82) = 0x7FFF;
  *(result + 78) = 2147450879;
  *(result + 88) = 0x7FFF;
  *(result + 84) = 2147450879;
  *(result + 94) = 0x7FFF;
  *(result + 90) = 2147450879;
  *(result + 100) = 0x7FFF;
  *(result + 96) = 2147450879;
  *(result + 106) = 0x7FFF;
  *(result + 102) = 2147450879;
  *(result + 112) = 0x7FFF;
  *(result + 108) = 2147450879;
  *(result + 118) = 0x7FFF;
  *(result + 114) = 2147450879;
  *(result + 124) = 0x7FFF;
  *(result + 120) = 2147450879;
  *(result + 130) = 0x7FFF;
  *(result + 126) = 2147450879;
  *(result + 136) = 0x7FFF;
  *(result + 132) = 2147450879;
  *(result + 142) = 0x7FFF;
  *(result + 138) = 2147450879;
  *(result + 148) = 0x7FFF;
  *(result + 144) = 2147450879;
  *(result + 154) = 0x7FFF;
  *(result + 150) = 2147450879;
  *(result + 160) = 0x7FFF;
  *(result + 156) = 2147450879;
  *(result + 166) = 0x7FFF;
  *(result + 162) = 2147450879;
  *(result + 172) = 0x7FFF;
  *(result + 168) = 2147450879;
  *(result + 178) = 0x7FFF;
  *(result + 174) = 2147450879;
  *(result + 184) = 0x7FFF;
  *(result + 180) = 2147450879;
  *(result + 190) = 0x7FFF;
  *(result + 186) = 2147450879;
  return result;
}

uint64_t sub_19B45B8F8(__int16 a1, __int16 a2, __int16 a3, uint64_t a4, _WORD *a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  *a5 = 1;
  sub_19B45DD90(v6, 32, 1, a4);
  return 1;
}

uint64_t sub_19B45B93C(int a1, int a2)
{
  v2 = 2 * a1;
  v3 = v2 >= a2;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2 * (v2 - v4);
  v6 = v5 >= a2;
  if (v5 < a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = 2 * (v5 - v7);
  if (v8 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (4 * v6) | (8 * v3) | (2 * (v8 >= a2));
  v11 = 2 * (v8 - v9);
  if (v11 < a2)
  {
    v12 = 0;
  }

  else
  {
    ++v10;
    v12 = a2;
  }

  v13 = 2 * (v11 - v12);
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = (2 * (v13 >= a2)) | (4 * v10);
  v16 = 2 * (v13 - v14);
  if (v16 < a2)
  {
    v17 = 0;
  }

  else
  {
    ++v15;
    v17 = a2;
  }

  v18 = 2 * (v16 - v17);
  if (v18 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  v20 = (2 * (v18 >= a2)) | (4 * v15);
  v21 = 2 * (v18 - v19);
  if (v21 < a2)
  {
    v22 = 0;
  }

  else
  {
    ++v20;
    v22 = a2;
  }

  v23 = 2 * (v21 - v22);
  if (v23 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  v25 = (2 * (v23 >= a2)) | (4 * v20);
  v26 = 2 * (v23 - v24);
  if (v26 < a2)
  {
    v27 = 0;
  }

  else
  {
    ++v25;
    v27 = a2;
  }

  v28 = 2 * (v26 - v27);
  if (v28 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = 0;
  }

  v30 = (2 * (v28 >= a2)) | (4 * v25);
  v31 = 2 * (v28 - v29);
  if (v31 < a2)
  {
    v32 = 0;
  }

  else
  {
    ++v30;
    v32 = a2;
  }

  v33 = 2 * (v31 - v32);
  if (v33 >= a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = 0;
  }

  v35 = (2 * (v33 >= a2)) | (4 * v30);
  v36 = 2 * (v33 - v34);
  if (v36 < a2)
  {
    v37 = 0;
  }

  else
  {
    ++v35;
    v37 = a2;
  }

  return ((a2 <= 2 * (v36 - v37)) | (2 * v35));
}

uint64_t sub_19B45BAA0(unint64_t a1)
{
  if (a1 < 1)
  {
    if (a1)
    {
      return 0;
    }

    else
    {
      return 31;
    }
  }

  else
  {
    v1 = a1 >> 30;
    if (a1 >> 30)
    {
      return 0;
    }

    else
    {
      do
      {
        v2 = a1 >> 29;
        a1 *= 2;
        LOWORD(v1) = v1 + 1;
      }

      while (!v2);
      return v1;
    }
  }
}

uint64_t sub_19B45BAE4(int a1)
{
  if (a1 >= 0)
  {
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (a1 == -32768)
  {
    LOWORD(v1) = 0x7FFF;
  }

  return v1;
}

uint64_t sub_19B45BB00(uint64_t a1, int a2, __int16 *a3, _WORD *a4)
{
  *&v88[190] = *MEMORY[0x1E69E9840];
  if (a2 > 32)
  {
LABEL_63:
    result = 0;
    goto LABEL_64;
  }

  v6 = sub_19B45B93C(1, a2);
  if (a2 < 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = a2;
  if (a2 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_9:
    v31 = (a1 + 6 * v9 + 4);
    v32 = a2 - v9;
    do
    {
      v12 += *(v31 - 2) * v7;
      v11 += *(v31 - 1) * v7;
      v10 += *v31 * v7;
      v31 += 3;
      --v32;
    }

    while (v32);
    goto LABEL_11;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v9 = a2 & 0x7FFELL;
  v28 = (a1 + 6);
  v29 = v9;
  do
  {
    v26 += *(v28 - 3) * v7;
    v27 += *v28 * v7;
    v24 += *(v28 - 2) * v7;
    v25 += v28[1] * v7;
    v30 = v28[2];
    v22 += *(v28 - 1) * v7;
    v28 += 6;
    v23 += v30 * v7;
    v29 -= 2;
  }

  while (v29);
  v10 = v23 + v22;
  v11 = v25 + v24;
  v12 = v27 + v26;
  if (v9 != a2)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a2 < 4)
  {
    v33 = 0;
    goto LABEL_22;
  }

  if (a2 >= 0x10)
  {
    v33 = a2 & 0x30;
    v34 = &v86;
    v35 = a2 & 0x7FF0;
    v36 = a1;
    do
    {
      v37 = v36;
      v36 += 48;
      v90 = vld3q_s16(v37);
      v37 += 24;
      v91 = vld3q_s16(v37);
      v34[-1] = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v90.val[1].i8, *v90.val[1].i8), *v90.val[0].i8, *v90.val[0].i8), *v90.val[2].i8, *v90.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v90.val[1], v90.val[1]), v90.val[0], v90.val[0]), v90.val[2], v90.val[2]), 0xBuLL);
      *v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v91.val[1].i8, *v91.val[1].i8), *v91.val[0].i8, *v91.val[0].i8), *v91.val[2].i8, *v91.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v91.val[1], v91.val[1]), v91.val[0], v91.val[0]), v91.val[2], v91.val[2]), 0xBuLL);
      v34 += 2;
      v35 -= 16;
    }

    while (v35);
    if (v33 == a2)
    {
      goto LABEL_24;
    }

    if ((a2 & 0xCLL) == 0)
    {
LABEL_22:
      v42 = &v85[v33];
      v43 = (a1 + 6 * v33 + 4);
      v44 = a2 - v33;
      do
      {
        *v42++ = (*(v43 - 2) * *(v43 - 2) + *(v43 - 1) * *(v43 - 1) + *v43 * *v43) >> 11;
        v43 += 3;
        --v44;
      }

      while (v44);
      goto LABEL_24;
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = v33;
  v33 = a2 & 0x7FFCLL;
  v39 = (a1 + 6 * v38);
  v40 = &v85[v38];
  v41 = v38 - v33;
  do
  {
    v89 = vld3_s16(v39);
    v39 += 12;
    *v40++ = vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(v89.val[1], v89.val[1]), v89.val[0], v89.val[0]), v89.val[2], v89.val[2]), 0xBuLL);
    v41 += 4;
  }

  while (v41);
  if (v33 != a2)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (a2 > 7)
  {
    v46 = vdupq_n_s16(v12 >> 15);
    v47 = vdupq_n_s16(v11 >> 15);
    v45 = a2 & 0x7FF8;
    v48 = vdupq_n_s16(v10 >> 15);
    v49 = v87;
    v50 = v45;
    v51 = a1;
    do
    {
      v92 = vld3q_s16(v51);
      v51 += 24;
      v93.val[0] = vsubq_s16(v92.val[0], v46);
      v93.val[1] = vsubq_s16(v92.val[1], v47);
      v93.val[2] = vsubq_s16(v92.val[2], v48);
      vst3q_s16(v49, v93);
      v49 += 24;
      v50 -= 8;
    }

    while (v50);
    if (v45 == a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v45 = 0;
  }

  v52 = a2 - v45;
  v53 = 6 * v45 + 4;
  v54 = (a1 + v53);
  v55 = &v87[v53];
  do
  {
    *(v55 - 2) = *(v54 - 2) - (v12 >> 15);
    *(v55 - 1) = *(v54 - 1) - (v11 >> 15);
    v56 = *v54;
    v54 += 3;
    *v55 = v56 - (v10 >> 15);
    v55 += 3;
    --v52;
  }

  while (v52);
LABEL_31:
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = (a1 + 4);
  v61 = v88;
  v62 = v85;
  do
  {
    v21 += *(v61 - 1) * *(v60 - 2);
    v20 += *v61 * *(v60 - 1);
    v63 = v61[1];
    v19 += v61[1] * *v60;
    v18 += *(v60 - 1) * *(v61 - 1);
    v17 += *v60 * *(v61 - 1);
    v16 += *v60 * *v61;
    v64 = *v62++;
    v57 += v64 * *(v61 - 1);
    v58 += v64 * *v61;
    v60 += 3;
    v61 += 3;
    v59 += v64 * v63;
    --v8;
  }

  while (v8);
  v15 = v57 >> 1;
  v14 = v58 >> 1;
  v13 = v59 >> 1;
LABEL_34:
  v65 = sub_19B45BAA0(v21);
  v66 = sub_19B45BAA0(v18);
  if (v65 >= v66)
  {
    v65 = v66;
  }

  v67 = sub_19B45BAA0(v17);
  if (v65 >= v67)
  {
    v65 = v67;
  }

  v68 = sub_19B45BAA0(v18);
  if (v65 >= v68)
  {
    v65 = v68;
  }

  v69 = sub_19B45BAA0(v20);
  if (v65 >= v69)
  {
    v65 = v69;
  }

  v70 = sub_19B45BAA0(v16);
  if (v65 >= v70)
  {
    v65 = v70;
  }

  v71 = sub_19B45BAA0(v17);
  if (v65 >= v71)
  {
    v65 = v71;
  }

  v72 = sub_19B45BAA0(v16);
  if (v65 >= v72)
  {
    v65 = v72;
  }

  v73 = sub_19B45BAA0(v19);
  if (v65 >= v73)
  {
    v65 = v73;
  }

  v74 = sub_19B45BAA0(v15);
  if (v65 >= v74)
  {
    v65 = v74;
  }

  v75 = sub_19B45BAA0(v14);
  if (v65 >= v75)
  {
    v65 = v75;
  }

  v76 = sub_19B45BAA0(v13);
  if (v65 >= v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = v65;
  }

  if (v77 >= 32)
  {
    LOBYTE(v77) = 32;
  }

  v78 = v18 << v77 >> 18;
  a3[3] = v78;
  a3[1] = v78;
  v79 = v17 << v77 >> 18;
  a3[6] = v79;
  a3[2] = v79;
  v80 = v16 << v77 >> 18;
  a3[7] = v80;
  a3[5] = v80;
  *a3 = v21 << v77 >> 18;
  a3[4] = v20 << v77 >> 18;
  a3[8] = v19 << v77 >> 18;
  *a4 = v15 << v77 >> 18;
  a4[1] = v14 << v77 >> 18;
  a4[2] = v13 << v77 >> 18;
  if (*a3 < 6 || a3[4] < 6 || a3[8] <= 5)
  {
    goto LABEL_63;
  }

  result = 4;
LABEL_64:
  v82 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B45C060(__int16 *a1, int a2, __int16 *a3, __int16 *a4, _WORD *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3[8];
  v8 = a3[5];
  v9 = v7 * a3[4] - v8 * v8;
  v10 = *a3;
  v11 = a3[6];
  v12 = *a3 * v7 - v11 * v11;
  v13 = a3[1];
  v14 = *a3 * a3[4] - v13 * v13;
  if (v12 <= v9)
  {
    v15 = a3[8] * a3[4] - a3[5] * a3[5];
  }

  else
  {
    v15 = *a3 * a3[8] - a3[6] * a3[6];
  }

  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *a3 * a3[4] - a3[1] * a3[1];
  }

  if (v16 >= 1)
  {
    v19 = a3[4];
    v20 = a3[5];
    v21 = *a3;
    v55 = 0;
    v22 = v12 > v9;
    if (v14 > v15)
    {
      v22 = 2;
    }

    if (v22 == 2)
    {
      v62 = v10;
      v63 = v13;
      v60 = -v11;
      v64 = a3[3];
      v65 = v19;
      v61 = -v8;
      if (sub_19B45C48C(&v62, 2, v59, v58))
      {
        sub_19B45C6F8(&v62, 2, v59, v58, &v60, &v56);
        v23 = v56 >> 2;
        *a4 = v56 >> 2;
        v24 = v57 >> 2;
        a4[1] = v57 >> 2;
        v26 = 2048;
        goto LABEL_19;
      }
    }

    else if (v22 == 1)
    {
      v62 = v7;
      v63 = v11;
      v60 = -v8;
      v64 = v11;
      v65 = v10;
      v61 = -v13;
      if (sub_19B45C48C(&v62, 2, v59, v58))
      {
        sub_19B45C6F8(&v62, 2, v59, v58, &v60, &v56);
        v23 = v57 >> 2;
        *a4 = v57 >> 2;
        v24 = 2048;
        a4[1] = 2048;
        v25 = v56;
LABEL_18:
        v26 = v25 >> 2;
LABEL_19:
        a4[2] = v26;
        v27 = sub_19B45DCE8(v24 * v24 + v23 * v23 + v26 * v26, &v55);
        v28 = (v27 >> 8) * *a4;
        *a4 = v28 >> 11;
        v29 = (v27 >> 8) * a4[1];
        a4[1] = v29 >> 11;
        v30 = (v27 >> 8) * a4[2];
        a4[2] = v30 >> 11;
        v31 = (v28 << 37) >> 48;
        v32 = (v29 << 37) >> 48;
        v33 = v31 * *a1 + (v29 >> 11) * a1[1];
        v34 = (v30 << 37) >> 48;
        v35 = v33 + (v30 >> 11) * a1[2];
        if (a2 < 2)
        {
          LODWORD(v38) = v33 + (v30 >> 11) * a1[2];
          LODWORD(v37) = v38;
        }

        else
        {
          if (a2 == 2)
          {
            v36 = 1;
            v37 = v35;
            v38 = v35;
          }

          else
          {
            v42 = 0;
            v36 = (a2 - 1) | 1;
            v43 = a1 + 4;
            v44 = (a2 - 1) & 0xFFFFFFFFFFFFFFFELL;
            v45 = v35;
            v46 = v35;
            v47 = v35;
            v48 = v35;
            do
            {
              v49 = v31 * *(v43 - 1) + v32 * *v43 + (v30 >> 11) * v43[1];
              v50 = v31 * v43[2] + v32 * v43[3] + (v30 >> 11) * v43[4];
              if (v47 <= v49)
              {
                v47 = v31 * *(v43 - 1) + v32 * *v43 + (v30 >> 11) * v43[1];
              }

              if (v48 <= v50)
              {
                v48 = v31 * v43[2] + v32 * v43[3] + (v30 >> 11) * v43[4];
              }

              if (v45 >= v49)
              {
                v45 = v31 * *(v43 - 1) + v32 * *v43 + (v30 >> 11) * v43[1];
              }

              if (v46 >= v50)
              {
                v46 = v31 * v43[2] + v32 * v43[3] + (v30 >> 11) * v43[4];
              }

              LODWORD(v35) = v49 + v35;
              v42 += v50;
              v43 += 6;
              v44 -= 2;
            }

            while (v44);
            LODWORD(v35) = v42 + v35;
            if (v45 >= v46)
            {
              v37 = v46;
            }

            else
            {
              v37 = v45;
            }

            if (v47 <= v48)
            {
              v38 = v48;
            }

            else
            {
              v38 = v47;
            }

            if (a2 - 1 == ((a2 - 1) & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_48;
            }
          }

          v51 = &a1[3 * v36 + 2];
          v52 = a2 - v36;
          do
          {
            v53 = v31 * *(v51 - 2) + v32 * *(v51 - 1) + v34 * *v51;
            if (v38 <= v53)
            {
              v38 = v31 * *(v51 - 2) + v32 * *(v51 - 1) + v34 * *v51;
            }

            if (v37 >= v53)
            {
              v37 = v31 * *(v51 - 2) + v32 * *(v51 - 1) + v34 * *v51;
            }

            LODWORD(v35) = v53 + v35;
            v51 += 3;
            --v52;
          }

          while (v52);
        }

LABEL_48:
        *a5 = (v38 - v37) >> 11;
        v39 = 1;
        a4[3] = -(((v35 >> 11) * sub_19B45B93C(1, a2)) >> 15);
        v54 = *MEMORY[0x1E69E9840];
        return v39;
      }
    }

    else
    {
      v62 = v19;
      v64 = v8;
      v60 = -v13;
      v63 = v8;
      v65 = v7;
      v61 = -v11;
      if (sub_19B45C48C(&v62, 2, v59, v58))
      {
        sub_19B45C6F8(&v62, 2, v59, v58, &v60, &v56);
        v23 = 2048;
        *a4 = 2048;
        v24 = v56 >> 2;
        a4[1] = v56 >> 2;
        v25 = v57;
        goto LABEL_18;
      }
    }
  }

  v39 = 0;
  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t sub_19B45C48C(_WORD *a1, int a2, __int16 *a3, __int16 *a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  v29 = v4;
  v30 = v5;
  v9 = 0;
  v28 = 0;
  v10 = a2;
  v11 = a1;
  v12 = a1;
  while (2)
  {
    v27 = v11;
    if (v9)
    {
      v13 = v9;
      while (1)
      {
        v14 = a1[3 * v9 + v13] << 15;
        if (v9 >= 2)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = &a1[3 * v9];
            v19 = &a1[3 * v13];
            v14 -= 4 * v18[(v9 - v16 - 1)] * v19[(v9 - v16 - 1)];
            v17 -= 4 * v18[(v9 - v16 - 2)] * v19[(v9 - v16 - 2)];
            v16 += 2;
          }

          while ((v9 & 0xFFFFFFFE) != v16);
          v14 += v17;
          LOWORD(v15) = v9 & 1;
          if ((v9 & 0xFFFFFFFE) == v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          LOWORD(v15) = v9;
        }

        do
        {
          v20 = v15 - 1;
          v15 = (v15 - 1);
          v14 -= 4 * a1[3 * v9 + v20] * a1[3 * v13 + v20];
        }

        while (v15 > 0);
LABEL_13:
        if (v9 == v13)
        {
          if (v14 < 1)
          {
            return 0;
          }

          v21 = sub_19B45DCE8(v14, &v28);
          a3[v9] = HIWORD(v21);
          a4[v9] = v21 >> 1;
          if (++v13 == v10)
          {
            goto LABEL_3;
          }
        }

        else
        {
          a1[3 * v13++ + v9] = 2 * (WORD1(v14) * a3[v9] + ((((v14 >> 1) & 0x7FFE) * a3[v9]) >> 15) + (((v14 >> 16) * a4[v9]) >> 15));
          if (v13 == v10)
          {
            goto LABEL_3;
          }
        }
      }
    }

    for (i = 0; i != v10; ++i)
    {
      while (1)
      {
        v23 = v12[i];
        v24 = v23 << 15;
        if (!i)
        {
          break;
        }

        *v11 = 2 * ((v23 >> 1) * *a3 + ((((v24 >> 1) & 0x4000) * *a3) >> 15) + (((v23 >> 1) * *a4) >> 15));
        v11 += 3;
        if (v10 == ++i)
        {
          goto LABEL_3;
        }
      }

      if (v23 < 1)
      {
        return 0;
      }

      v25 = sub_19B45DCE8(v24, &v28);
      *a3 = HIWORD(v25);
      *a4 = v25 >> 1;
      v11 += 3;
    }

LABEL_3:
    ++v9;
    v12 += 3;
    v11 = v27 + 1;
    if (v9 != v10)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_19B45C6F8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    while (!v7)
    {
      v8 = 0;
LABEL_4:
      v9 = (*(a5 + 2 * v7) << 15) - v8;
      *(a6 + 2 * v7) = 2 * (HIWORD(v9) * *(a3 + 2 * v7) + (((v9 >> 16) * *(a4 + 2 * v7)) >> 15) + ((((v9 >> 1) & 0x7FFE) * *(a3 + 2 * v7)) >> 15));
      if (++v7 == a2)
      {
        goto LABEL_13;
      }
    }

    if (v7 > 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LOWORD(v11) = v7 - (v7 & 0xFFFE);
      do
      {
        v15 = result + 6 * v7;
        v13 += *(a6 + 2 * (v7 - v12 - 1)) * *(v15 + 2 * (v7 - v12 - 1));
        v14 += *(a6 + 2 * (v7 - v12 - 2)) * *(v15 + 2 * (v7 - v12 - 2));
        v12 += 2;
      }

      while ((v7 & 0xFFFFFFFE) != v12);
      v10 = v14 + v13;
      if ((v7 & 0xFFFFFFFE) == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      LOWORD(v11) = v7;
    }

    do
    {
      v16 = v11 - 1;
      v11 = (v11 - 1);
      v10 += *(a6 + 2 * v16) * *(result + 6 * v7 + 2 * v16);
    }

    while (v11 > 0);
LABEL_12:
    v8 = 4 * v10;
    goto LABEL_4;
  }

LABEL_13:
  if (((a2 - 1) & 0x8000) == 0)
  {
    v17 = 0;
    v18 = v6;
    v19 = result + 2 * v6;
    v20 = v18;
    v21 = v19 + 6;
    v22 = -1;
    v23 = a2;
    do
    {
      v25 = *(a6 + 2 * v20) << 15;
      if (a2 > v23)
      {
        v26 = v23;
        if (v17 == 1)
        {
          goto LABEL_21;
        }

        v27 = 0;
        v28 = (v22 + 1) & 0x1FFFE;
        v29 = (v21 + 6 * v23);
        v30 = (a6 + 2 + 2 * v23);
        v31 = (v17 - 1) + 1;
        v26 = (v31 & 0x1FFFE) + v23;
        do
        {
          v25 -= 4 * *(v29 - 3) * *(v30 - 1);
          v27 -= 4 * *v29 * *v30;
          v29 += 6;
          v30 += 2;
          v28 -= 2;
        }

        while (v28);
        v25 += v27;
        if (v31 != (v31 & 0x1FFFE))
        {
LABEL_21:
          v32 = (a6 + 2 * v26);
          v33 = (v19 + 6 * v26);
          v34 = v26 + 1;
          do
          {
            v36 = *v33;
            v33 += 3;
            v35 = v36;
            v37 = *v32++;
            v25 -= 4 * v35 * v37;
            v38 = v34++;
          }

          while (v38 != a2);
        }
      }

      result = *(a3 + 2 * v20);
      *(a6 + 2 * v20) = 2 * (HIWORD(v25) * result + ((((v25 >> 1) & 0x7FFE) * result) >> 15) + (((v25 >> 16) * *(a4 + 2 * v20)) >> 15));
      --v23;
      ++v17;
      ++v22;
      v21 -= 2;
      v19 -= 2;
    }

    while (v20-- > 0);
  }

  return result;
}

uint64_t sub_19B45C958(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6)
{
  *a1 = a2;
  *(a1 + 400) = a3;
  result = sub_19B45C9A0(a1, a5, a6, 1);
  *(a1 + 396) = 0;
  *(a1 + 398) = a4;
  *(a1 + 504) = 0;
  return result;
}

uint64_t sub_19B45C9A0(uint64_t result, uint64_t a2, __int16 a3, int a4)
{
  v5 = result;
  if (a4)
  {
    *(result + 8) = 2147450879;
    *(result + 12) = 0x7FFF;
    *(result + 14) = 2147450879;
    *(result + 18) = 0x7FFF;
    *(result + 20) = 2147450879;
    *(result + 24) = 0x7FFF;
    *(result + 26) = 2147450879;
    *(result + 30) = 0x7FFF;
    *(result + 36) = 0x7FFF;
    *(result + 32) = 2147450879;
    *(result + 42) = 0x7FFF;
    *(result + 38) = 2147450879;
    *(result + 48) = 0x7FFF;
    *(result + 44) = 2147450879;
    *(result + 54) = 0x7FFF;
    *(result + 50) = 2147450879;
    *(result + 60) = 0x7FFF;
    *(result + 56) = 2147450879;
    *(result + 66) = 0x7FFF;
    *(result + 62) = 2147450879;
    *(result + 72) = 0x7FFF;
    *(result + 68) = 2147450879;
    *(result + 78) = 0x7FFF;
    *(result + 74) = 2147450879;
    *(result + 84) = 0x7FFF;
    *(result + 80) = 2147450879;
    *(result + 90) = 0x7FFF;
    *(result + 86) = 2147450879;
    *(result + 96) = 0x7FFF;
    *(result + 92) = 2147450879;
    *(result + 102) = 0x7FFF;
    *(result + 98) = 2147450879;
    *(result + 108) = 0x7FFF;
    *(result + 104) = 2147450879;
    *(result + 114) = 0x7FFF;
    *(result + 110) = 2147450879;
    *(result + 120) = 0x7FFF;
    *(result + 116) = 2147450879;
    *(result + 126) = 0x7FFF;
    *(result + 122) = 2147450879;
    *(result + 132) = 0x7FFF;
    *(result + 128) = 2147450879;
    *(result + 138) = 0x7FFF;
    *(result + 134) = 2147450879;
    *(result + 144) = 0x7FFF;
    *(result + 140) = 2147450879;
    *(result + 150) = 0x7FFF;
    *(result + 146) = 2147450879;
    *(result + 156) = 0x7FFF;
    *(result + 152) = 2147450879;
    *(result + 162) = 0x7FFF;
    *(result + 158) = 2147450879;
    *(result + 168) = 0x7FFF;
    *(result + 164) = 2147450879;
    *(result + 174) = 0x7FFF;
    *(result + 170) = 2147450879;
    *(result + 180) = 0x7FFF;
    *(result + 176) = 2147450879;
    *(result + 186) = 0x7FFF;
    *(result + 182) = 2147450879;
    *(result + 192) = 0x7FFF;
    *(result + 188) = 2147450879;
    *(result + 198) = 0x7FFF;
    *(result + 194) = 2147450879;
    *(result + 204) = 0x7FFF;
    *(result + 200) = 2147450879;
    *(result + 210) = 0x7FFF;
    *(result + 206) = 2147450879;
    *(result + 216) = 0x7FFF;
    *(result + 212) = 2147450879;
    *(result + 222) = 0x7FFF;
    *(result + 218) = 2147450879;
    *(result + 228) = 0x7FFF;
    *(result + 224) = 2147450879;
    *(result + 234) = 0x7FFF;
    *(result + 230) = 2147450879;
    *(result + 240) = 0x7FFF;
    *(result + 236) = 2147450879;
    *(result + 246) = 0x7FFF;
    *(result + 242) = 2147450879;
    *(result + 252) = 0x7FFF;
    *(result + 248) = 2147450879;
    *(result + 258) = 0x7FFF;
    *(result + 254) = 2147450879;
    *(result + 264) = 0x7FFF;
    *(result + 260) = 2147450879;
    *(result + 270) = 0x7FFF;
    *(result + 266) = 2147450879;
    *(result + 276) = 0x7FFF;
    *(result + 272) = 2147450879;
    *(result + 282) = 0x7FFF;
    *(result + 278) = 2147450879;
    *(result + 288) = 0x7FFF;
    *(result + 284) = 2147450879;
    *(result + 294) = 0x7FFF;
    *(result + 290) = 2147450879;
    *(result + 300) = 0x7FFF;
    *(result + 296) = 2147450879;
    *(result + 412) = 0x7FFF;
    *(result + 408) = 2147450879;
    *(result + 306) = 0x7FFF;
    *(result + 302) = 2147450879;
    *(result + 418) = 0x7FFF;
    *(result + 414) = 2147450879;
    *(result + 312) = 0x7FFF;
    *(result + 308) = 2147450879;
    *(result + 424) = 0x7FFF;
    *(result + 420) = 2147450879;
    *(result + 318) = 0x7FFF;
    *(result + 314) = 2147450879;
    *(result + 430) = 0x7FFF;
    *(result + 426) = 2147450879;
    *(result + 324) = 0x7FFF;
    *(result + 320) = 2147450879;
    *(result + 436) = 0x7FFF;
    *(result + 432) = 2147450879;
    *(result + 330) = 0x7FFF;
    *(result + 326) = 2147450879;
    *(result + 442) = 0x7FFF;
    *(result + 438) = 2147450879;
    *(result + 336) = 0x7FFF;
    *(result + 332) = 2147450879;
    *(result + 448) = 0x7FFF;
    *(result + 444) = 2147450879;
    *(result + 342) = 0x7FFF;
    *(result + 338) = 2147450879;
    *(result + 454) = 0x7FFF;
    *(result + 450) = 2147450879;
    *(result + 348) = 0x7FFF;
    *(result + 344) = 2147450879;
    *(result + 460) = 0x7FFF;
    *(result + 456) = 2147450879;
    *(result + 354) = 0x7FFF;
    *(result + 350) = 2147450879;
    *(result + 466) = 0x7FFF;
    *(result + 462) = 2147450879;
    *(result + 360) = 0x7FFF;
    *(result + 356) = 2147450879;
    *(result + 472) = 0x7FFF;
    *(result + 468) = 2147450879;
    *(result + 366) = 0x7FFF;
    *(result + 362) = 2147450879;
    *(result + 478) = 0x7FFF;
    *(result + 474) = 2147450879;
    *(result + 372) = 0x7FFF;
    *(result + 368) = 2147450879;
    *(result + 484) = 0x7FFF;
    *(result + 480) = 2147450879;
    *(result + 378) = 0x7FFF;
    *(result + 374) = 2147450879;
    *(result + 490) = 0x7FFF;
    *(result + 486) = 2147450879;
    *(result + 384) = 0x7FFF;
    *(result + 380) = 2147450879;
    *(result + 496) = 0x7FFF;
    *(result + 492) = 2147450879;
    *(result + 390) = 0x7FFF;
    *(result + 386) = 2147450879;
    *(result + 502) = 0x7FFF;
    *(result + 498) = 2147450879;
  }

  v6 = a3;
  if (a3 <= 0)
  {
    *(result + 392) = 0;
    *(result + 394) = 0;
  }

  else
  {
    *(result + 392) = 1;
    result = sub_19B45DD90(a2, 16, 1, result + 296);
    if (v6 <= 3)
    {
      v7 = a3 - 1;
    }

    else
    {
      v7 = 2;
    }

    *(v5 + 394) = v7;
  }

  return result;
}

uint64_t sub_19B45CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, __int16 a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  v88 = 0;
  if (*(a4 + 199) > 1u || *(a4 + 197) > 2u)
  {
    LOWORD(v12) = 0;
    return v12;
  }

  v90 = 0;
  v89 = 0;
  if (((a6 - 1) & 0x8000) == 0)
  {
    v12 = 0;
    v86 = (a4 + 37);
    v16 = (a6 - 1);
    v84 = (a4 + 43);
    v85 = a4 + 300;
    while (1)
    {
      v18 = *(a4 + 199);
      LOWORD(v19) = *(a4 + 197);
      if (*a4)
      {
        v20 = *(*a4 + 8 * v18);
      }

      else
      {
        v20 = &unk_19B7B2D8A + 90 * *(a4 + 199);
      }

      v21 = &v20[30 * *(a4 + 197)];
      if (!a7)
      {
        LODWORD(v18) = 0;
      }

      if (!a8)
      {
        LOWORD(v19) = 0;
      }

      v22 = a4[50];
      if (v22)
      {
        v23 = *(v22 + 8 * v18);
        v19 = v19;
      }

      else
      {
        v19 = v19;
        v23 = &unk_19B7B2E3E + 90 * v18;
      }

      v24 = &v23[30 * v19];
      v25 = *v21;
      v26 = *(v21 + 2);
      *v87 = *v24;
      *&v87[7] = *(v24 + 14);
      v87[0] = v25;
      v87[2] = v26;
      v27 = sub_19B45D37C((a5 + 6 * v16), v87, a4 + 4, a4 + 204, &v89, a4 + 252, &v88, 0, 0);
      LODWORD(v28) = *(a4 + 199);
      if (v27 != 2)
      {
        goto LABEL_26;
      }

      if (v28 > 0)
      {
        break;
      }

      v33 = *(v21 + 12);
      if (v33 < 0 || *(a4 + 252) < v33)
      {
        goto LABEL_26;
      }

      *(a4 + 199) = v28 + 1;
      if ((v28 & 0x80000000) == 0)
      {
        LOWORD(v28) = 1;
        v29 = *(v21 + 13);
        if (v29 < 0)
        {
LABEL_26:
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

LABEL_20:
        if (*(a4 + 252) <= v29)
        {
          LOWORD(v28) = v28 - 1;
          *(a4 + 199) = v28;
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

        goto LABEL_26;
      }

      v30 = *(a4 + 197);
      v31 = *a4;
      v28 = (v28 + 1);
      if (*a4)
      {
LABEL_27:
        v32 = (*(v31 + 8 * v28) + 30 * v30);
        if (v88 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_28;
      }

LABEL_22:
      v32 = (&unk_19B7B2D8A + 90 * v28 + 30 * v30);
      if (v88 != 1)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (sub_19B45D37C((a5 + 6 * v16), v32, a4 + 4, a4 + 100, &v89, a4 + 198, &v88, 1, a11) != 2)
      {
        goto LABEL_6;
      }

      v34 = *(a4 + 196);
      if (v34 < 16)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 16;
      }

      *(a4 + 196) = v35;
      sub_19B45DD90(&v89, 16, 1, v86);
      v36 = *(a4 + 196);
      if (v36 < 2 || (v37 = v32[11], v37 <= 1))
      {
        *a9 = v89;
        *(a9 + 4) = v90;
        ++v12;
        if (*(a4 + 196) >= v32[10])
        {
          goto LABEL_73;
        }

        goto LABEL_6;
      }

      v90 = 0;
      v89 = 0;
      if (v36 >= v37)
      {
        v38 = sub_19B45B93C(1, v37);
        v40 = v89;
        v41 = HIWORD(v89);
        v42 = v90;
        v44 = v32[11];
        if (v44 < 1)
        {
          goto LABEL_72;
        }

        if (v44 < 4)
        {
          v45 = 0;
LABEL_69:
          v79 = (v85 + 6 * v45);
          do
          {
            v40 += *(v79 - 2);
            v41 += *(v79 - 1);
            v80 = *v79;
            v79 += 3;
            v42 += v80;
            ++v45;
          }

          while (v45 < v44);
          goto LABEL_71;
        }

        if (v44 >= 0x10)
        {
          v45 = v44 & 0x7FF0;
          v64 = 0uLL;
          v65 = v89;
          v66 = HIWORD(v89);
          v67 = v90;
          v68 = v45;
          v69 = v84;
          v70 = 0uLL;
          v71 = 0uLL;
          do
          {
            v72 = v69 - 24;
            v94 = vld3q_s16(v72);
            v96 = vld3q_s16(v69);
            v65 = vaddq_s16(v65, v94.val[0]);
            v64 = vaddq_s16(v64, v96.val[0]);
            v66 = vaddq_s16(v66, v94.val[1]);
            v70 = vaddq_s16(v70, v96.val[1]);
            v67 = vaddq_s16(v67, v94.val[2]);
            v71 = vaddq_s16(v71, v96.val[2]);
            v69 += 48;
            v68 -= 16;
          }

          while (v68);
          v40 = vaddvq_s16(vaddq_s16(v64, v65));
          v41 = vaddvq_s16(vaddq_s16(v70, v66));
          v42 = vaddvq_s16(vaddq_s16(v71, v67));
          if (v45 == v44)
          {
            goto LABEL_71;
          }

          if ((v44 & 0xC) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v45 = 0;
        }

        v73 = v45;
        v74 = v40;
        v75 = v41;
        v45 = v44 & 0x7FFC;
        v76 = v42;
        v77 = (v86 + 6 * v73);
        v78 = v73 - v45;
        do
        {
          v92 = vld3_s16(v77);
          v77 += 12;
          v74 = vadd_s16(v74, v92.val[0]);
          v75 = vadd_s16(v75, v92.val[1]);
          v76 = vadd_s16(v76, v92.val[2]);
          v78 += 4;
        }

        while (v78);
        v40 = vaddv_s16(v74);
        v41 = vaddv_s16(v75);
        v42 = vaddv_s16(v76);
        if (v45 == v44)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      v38 = sub_19B45B93C(1, v36);
      v39 = *(a4 + 196);
      v40 = v89;
      v41 = HIWORD(v89);
      v42 = v90;
      if (v39 < 1)
      {
        goto LABEL_72;
      }

      if (v39 >= 4)
      {
        if (v39 < 0x10)
        {
          v43 = 0;
LABEL_56:
          v55 = v43;
          v56 = v40;
          v57 = v41;
          v43 = v39 & 0x7FFC;
          v58 = v42;
          v59 = (v86 + 6 * v55);
          v60 = v55 - v43;
          do
          {
            v91 = vld3_s16(v59);
            v59 += 12;
            v56 = vadd_s16(v56, v91.val[0]);
            v57 = vadd_s16(v57, v91.val[1]);
            v58 = vadd_s16(v58, v91.val[2]);
            v60 += 4;
          }

          while (v60);
          v40 = vaddv_s16(v56);
          v41 = vaddv_s16(v57);
          v42 = vaddv_s16(v58);
          if (v43 == v39)
          {
            goto LABEL_71;
          }

          goto LABEL_59;
        }

        v43 = v39 & 0x7FF0;
        v46 = 0uLL;
        v47 = v89;
        v48 = HIWORD(v89);
        v49 = v90;
        v50 = v43;
        v51 = v84;
        v52 = 0uLL;
        v53 = 0uLL;
        do
        {
          v54 = v51 - 24;
          v93 = vld3q_s16(v54);
          v95 = vld3q_s16(v51);
          v47 = vaddq_s16(v47, v93.val[0]);
          v46 = vaddq_s16(v46, v95.val[0]);
          v48 = vaddq_s16(v48, v93.val[1]);
          v52 = vaddq_s16(v52, v95.val[1]);
          v49 = vaddq_s16(v49, v93.val[2]);
          v53 = vaddq_s16(v53, v95.val[2]);
          v51 += 48;
          v50 -= 16;
        }

        while (v50);
        v40 = vaddvq_s16(vaddq_s16(v46, v47));
        v41 = vaddvq_s16(vaddq_s16(v52, v48));
        v42 = vaddvq_s16(vaddq_s16(v53, v49));
        if (v43 == v39)
        {
          goto LABEL_71;
        }

        if ((v39 & 0xC) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v43 = 0;
      }

LABEL_59:
      v61 = (v85 + 6 * v43);
      v62 = v39 - v43;
      do
      {
        v40 += *(v61 - 2);
        v41 += *(v61 - 1);
        v63 = *v61;
        v61 += 3;
        v42 += v63;
        --v62;
      }

      while (v62);
LABEL_71:
      LOWORD(v89) = v40;
      HIWORD(v89) = v41;
      v90 = v42;
LABEL_72:
      *a9 = (v40 * v38) >> 15;
      *(a9 + 2) = (v41 * v38) >> 15;
      *(a9 + 4) = (v42 * v38) >> 15;
      ++v12;
      if (*(a4 + 196) >= v32[10])
      {
LABEL_73:
        v81 = *(a4 + 197);
        if (v81 <= 1)
        {
          *(a4 + 196) = 0;
          *(a4 + 197) = v81 + 1;
        }
      }

LABEL_6:
      if (v16-- <= 0)
      {
        goto LABEL_76;
      }
    }

    v29 = *(v21 + 13);
    if (v29 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  LOWORD(v12) = 0;
LABEL_76:
  v82 = *(a4 + 197);
  if (*(a4 + 196))
  {
    ++v82;
  }

  *a10 = v82;
  return v12;
}

uint64_t sub_19B45D37C(_WORD *a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, _WORD *a7, int a8, uint64_t a9)
{
  v112 = *MEMORY[0x1E69E9840];
  if (*a2 < 1)
  {
    goto LABEL_26;
  }

  v9 = a6;
  v11 = a4;
  *a7 = 0;
  if (a8)
  {
    v14 = a2 + 14;
    if (a2[14])
    {
      if (a8 != 1)
      {
        v15 = a6;
        v16 = a4;
        v17 = a1;
        v88 = a7;
        if (a2[2] <= 0)
        {
          goto LABEL_20;
        }

LABEL_26:
        result = 0;
        goto LABEL_93;
      }

LABEL_11:
      v87 = a2 + 14;
      goto LABEL_23;
    }

    if (a8 == 1)
    {
      goto LABEL_11;
    }

    v15 = a6;
    v16 = a4;
    v17 = a1;
    v88 = a7;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_13:
    v22 = a2[2];
    if (v19 < v22 || v20 < v22 || v21 < v22)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v15 = a6;
  v16 = a4;
  v88 = a7;
  v19 = sub_19B45BAE4((*a3 - *a1));
  v20 = sub_19B45BAE4((a3[1] - a1[1]));
  v17 = a1;
  v21 = sub_19B45BAE4((a3[2] - a1[2]));
  a8 = 0;
  v14 = a2 + 14;
  if (!a2[14])
  {
    goto LABEL_13;
  }

  if (v20 + v19 + v21 < a2[2])
  {
    goto LABEL_26;
  }

LABEL_20:
  v87 = v14;
  if (!a8)
  {
    sub_19B45DD90(v17, *a2, 1, a3);
    *v88 = 1;
  }

  v11 = v16;
  v9 = v15;
LABEL_23:
  v25 = *a2;
  v26 = &a3[3 * *a2];
  if (*(v26 - 3) == 0x7FFF && *(v26 - 2) == 0x7FFF && *(v26 - 1) == 0x7FFF)
  {
    goto LABEL_26;
  }

  v97 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  sub_19B45DE1C(a3, v25, &v96, &v94, &v92, &v90);
  v28 = *a2;
  v29 = *a2;
  if (v28 >= 1)
  {
    v30 = v92;
    v31 = HIWORD(v92);
    v32 = v93;
    if (v29 >= 8)
    {
      v33 = v28 & 0x7FF8;
      v34 = vdupq_n_s16(v92);
      v35 = vdupq_n_s16(HIWORD(v92));
      v36 = vdupq_n_s16(v93);
      v37 = v33;
      v38 = a3;
      do
      {
        v113 = vld3q_s16(v38);
        v115.val[0] = vsubq_s16(v113.val[0], v34);
        v115.val[1] = vsubq_s16(v113.val[1], v35);
        v115.val[2] = vsubq_s16(v113.val[2], v36);
        vst3q_s16(v38, v115);
        v38 += 24;
        v37 -= 8;
      }

      while (v37);
      if (v33 == v28)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33 = 0;
    }

    v39 = v28 - v33;
    v40 = &a3[3 * v33 + 2];
    do
    {
      *(v40 - 2) -= v30;
      *(v40 - 1) -= v31;
      *v40 -= v32;
      v40 += 3;
      --v39;
    }

    while (v39);
LABEL_35:
    v29 = *a2;
  }

  v41 = v29;
  v42 = sub_19B45BB00(a3, v29, &v108, &v106);
  v110 = v108;
  v111 = v109;
  if (v42 == 4 && sub_19B45C48C(&v110, 3, &v102, &v100))
  {
    v89 = v11;
    sub_19B45C6F8(&v110, 3, &v102, &v100, &v106, &v104);
    v43 = v104 >> 2;
    *a5 = v43;
    v44 = SHIWORD(v104) >> 2;
    a5[1] = v44;
    v45 = v105 >> 2;
    a5[2] = v105 >> 2;
    v46 = (*a3 - v43) * (*a3 - v43) + (a3[1] - v44) * (a3[1] - v44) + (a3[2] - v45) * (a3[2] - v45);
    v47 = sub_19B45DADC(v46);
    v48 = v47;
    if (v29 < 2)
    {
      v51 = v47;
    }

    else
    {
      v49 = v29 - 1;
      v50 = a3 + 5;
      v51 = v47;
      do
      {
        v52 = *(v50 - 2) - *a5;
        v53 = *(v50 - 1) - a5[1];
        v54 = v52 * v52 + v53 * v53;
        v55 = *v50 - a5[2];
        v56 = v54 + v55 * v55;
        v46 += v56;
        v57 = sub_19B45DADC(v56);
        if (v57 > v51)
        {
          v51 = v57;
        }

        if (v57 < v48)
        {
          v48 = v57;
        }

        v50 += 3;
        --v49;
      }

      while (v49);
    }

    v59 = 1;
    v61 = sub_19B45B93C(1, v41);
    v62 = sub_19B45DADC((((v61 >> 3) & 1) + (v61 >> 4)) * (((v46 >> 6) & 1) + (v46 >> 7)));
    v60 = 0;
    *v9 = ((v62 >> 1) & 1) + (v62 >> 2);
    v58 = v51 - v48;
    v11 = v89;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    a5[2] = 0;
    *a5 = 0;
    v60 = 1;
    *v9 = 0;
  }

  v63 = HIWORD(v92);
  v64 = v93;
  *a5 += v92;
  a5[1] += v63;
  a5[2] += v64;
  sub_19B45DD90(a5, a2[1], 1, v11);
  if (v60)
  {
    goto LABEL_84;
  }

  v65 = *v9;
  if (a9)
  {
    *(a9 + 12) = *(a2 + 7);
    *(a9 + 16) = a2[9];
    *(a9 + 18) = v58;
  }

  if (!v59 || a2[8] >= v65 || a2[7] <= v65 || a2[9] * v65 <= v58 << 11)
  {
    goto LABEL_84;
  }

  v107 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  *&v110 = 0;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  sub_19B45DE1C(v11, a2[1], &v102, &v100, &v98, &v104);
  if (a9)
  {
    *(a9 + 2) = a2[1];
    *(a9 + 20) = v104;
    *(a9 + 24) = v105;
    v66 = a2[5];
    *(a9 + 8) = v66;
  }

  else
  {
    v66 = a2[5];
  }

  if (v104 >= v66 || SHIWORD(v104) >= v66 || v105 >= v66)
  {
    if (*v87 < 2)
    {
      goto LABEL_84;
    }

    v70 = v66;
    v71 = v66 > v104;
    v72 = v105 < v70 || v71;
    if (v105 >= v70)
    {
      v71 = 0;
    }

    v73 = SHIWORD(v104) < v70 ? v72 : 0;
    if ((v73 & 1) == 0 && !v71)
    {
LABEL_84:
      result = 0;
      goto LABEL_85;
    }
  }

  sub_19B45DE1C(a3, *a2, &v102, &v100, &v98, &v106);
  v67 = v106;
  if (a9)
  {
    *a9 = *a2;
    *(a9 + 26) = v106;
    *(a9 + 30) = v107;
    *(a9 + 6) = a2[4];
  }

  result = 0;
  v68 = a2[3];
  if (v67 > v68 && SHIWORD(v106) > v68 && v107 > v68)
  {
    if ((HIWORD(v106) + v67 + v107) >= a2[4])
    {
      v69 = sub_19B45C060(a3, *a2, &v108, &v110, &v103 + 1);
      if (a9)
      {
        *(a9 + 10) = a2[6];
        *(a9 + 32) = HIWORD(v103);
      }

      if (v69 && SHIWORD(v103) > a2[6])
      {
        result = 2;
        goto LABEL_85;
      }
    }

    goto LABEL_84;
  }

LABEL_85:
  v74 = *a2;
  if (v74 < 1)
  {
    goto LABEL_93;
  }

  v75 = v92;
  v76 = HIWORD(v92);
  v77 = v93;
  if (v74 < 8)
  {
    v78 = 0;
LABEL_91:
    v84 = v74 - v78;
    v85 = &a3[3 * v78 + 2];
    do
    {
      *(v85 - 2) += v75;
      *(v85 - 1) += v76;
      *v85 += v77;
      v85 += 3;
      --v84;
    }

    while (v84);
    goto LABEL_93;
  }

  v78 = v74 & 0x7FF8;
  v79 = vdupq_n_s16(v92);
  v80 = vdupq_n_s16(HIWORD(v92));
  v81 = vdupq_n_s16(v93);
  v82 = v78;
  v83 = a3;
  do
  {
    v114 = vld3q_s16(v83);
    v116.val[0] = vaddq_s16(v114.val[0], v79);
    v116.val[1] = vaddq_s16(v114.val[1], v80);
    v116.val[2] = vaddq_s16(v114.val[2], v81);
    vst3q_s16(v83, v116);
    v83 += 24;
    v82 -= 8;
  }

  while (v82);
  if (v78 != v74)
  {
    goto LABEL_91;
  }

LABEL_93:
  v86 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B45DADC(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = a1 >> 30 != 0;
  v2 = ((a1 >> 28) & 0x3FFFFFFFFLL) + 4 * ((a1 >> 30) - v1);
  v3 = 4 * v1 >= v2;
  v4 = 4 * v1 < v2 && ~(4 * v1);
  v5 = v4 + v2;
  if (v3)
  {
    v6 = 8 * v1;
  }

  else
  {
    v6 = (8 * v1) | 4;
  }

  v7 = v6 >> 2;
  v8 = ((a1 >> 26) & 0x3FFFFFFFFLL) + 4 * v5;
  v9 = v6 >= v8;
  if (v6 < v8)
  {
    v10 = ~v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v8;
  v12 = 2 * v6;
  if (!v9)
  {
    v12 = (8 * (v7 & 3)) | 4;
  }

  v13 = ((a1 >> 24) & 0x3FFFFFFFFLL) + 4 * v11;
  v14 = v12 >= v13;
  if (v12 < v13)
  {
    v15 = ~v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 + v13;
  v17 = 2 * v12;
  if (!v14)
  {
    v17 |= 4uLL;
  }

  v18 = ((a1 >> 22) & 0x3FFFFFFFFLL) + 4 * v16;
  v19 = v17 >= v18;
  if (v17 < v18)
  {
    v20 = ~v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 + v18;
  v22 = 2 * v17;
  if (!v19)
  {
    v22 |= 4uLL;
  }

  v23 = ((a1 >> 20) & 0x3FFFFFFFFLL) + 4 * v21;
  v24 = v22 >= v23;
  if (v22 < v23)
  {
    v25 = ~v22;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 + v23;
  v27 = 2 * v22;
  if (!v24)
  {
    v27 |= 4uLL;
  }

  v28 = ((a1 >> 18) & 0x3FFFFFFFFLL) + 4 * v26;
  v29 = v27 >= v28;
  if (v27 < v28)
  {
    v30 = ~v27;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 + v28;
  v32 = 2 * v27;
  if (!v29)
  {
    v32 |= 4uLL;
  }

  v33 = ((a1 >> 16) & 0x3FFFFFFFFLL) + 4 * v31;
  v34 = v32 >= v33;
  if (v32 < v33)
  {
    v35 = ~v32;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 + v33;
  v37 = 2 * v32;
  if (!v34)
  {
    v37 |= 4uLL;
  }

  v38 = ((a1 >> 14) & 0x3FFFFFFFFLL) + 4 * v36;
  v39 = v37 >= v38;
  if (v37 < v38)
  {
    v40 = ~v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 + v38;
  v42 = 2 * v37;
  if (!v39)
  {
    v42 |= 4uLL;
  }

  v43 = ((a1 >> 12) & 0x3FFFFFFFFLL) + 4 * v41;
  v44 = v42 >= v43;
  if (v42 < v43)
  {
    v45 = ~v42;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = 2 * v42;
  if (!v44)
  {
    v47 |= 4uLL;
  }

  v48 = ((a1 >> 10) & 0x3FFFFFFFFLL) + 4 * v46;
  v49 = v47 >= v48;
  if (v47 < v48)
  {
    v50 = ~v47;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50 + v48;
  v52 = 2 * v47;
  if (!v49)
  {
    v52 |= 4uLL;
  }

  v53 = ((a1 >> 8) & 0x3FFFFFFFFLL) + 4 * v51;
  v54 = v52 >= v53;
  if (v52 < v53)
  {
    v55 = ~v52;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = 2 * v52;
  if (!v54)
  {
    v57 |= 4uLL;
  }

  v58 = ((a1 >> 6) & 0x3FFFFFFFFLL) + 4 * v56;
  v59 = v57 >= v58;
  if (v57 < v58)
  {
    v60 = ~v57;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60 + v58;
  v62 = 2 * v57;
  if (!v59)
  {
    v62 |= 4uLL;
  }

  v63 = ((a1 >> 4) & 0x3FFFFFFFFLL) + 4 * v61;
  v64 = v62 >= v63;
  if (v62 < v63)
  {
    v65 = ~v62;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = 2 * v62;
  if (!v64)
  {
    v67 |= 4uLL;
  }

  v68 = ((a1 >> 2) & 0x3FFFFFFFFLL) + 4 * v66;
  v69 = v67 >= v68;
  if (v67 < v68)
  {
    v70 = ~v67;
  }

  else
  {
    v70 = 0;
  }

  v71 = v70 + v68;
  v72 = 2 * v67;
  if (!v69)
  {
    v72 |= 4uLL;
  }

  return ((v72 >> 1) | (v72 < (a1 & 0x3FFFFFFFFLL) + 4 * v71));
}

uint64_t sub_19B45DCE8(int64_t a1, _WORD *a2)
{
  if (a1 < 1)
  {
    result = 0x40000000;
    *a2 = 0;
  }

  else
  {
    v4 = sub_19B45BAA0(a1);
    v5 = a1 << v4 >> (((30 - v4) & 1) == 0);
    v6 = ((30 - v4) << 16 >> 17) + 1;
    v7 = (v5 >> 10) & 0x7FFF;
    v8 = (&unk_19B7B2E98 + 2 * (((v5 << 23) - 0x10000000000000) >> 48));
    result = ((*v8 << 16) - 2 * (*v8 - v8[1]) * v7) >> (((30 - v4) << 16 >> 17) + 1);
    *a2 = v6;
  }

  return result;
}

uint64_t sub_19B45DD90(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 >= 1 && a2 >= a3)
  {
    for (i = (a2 - 1); i >= a3; i = (i - 1))
    {
      v5 = a4 + 6 * i;
      v6 = (a4 + 6 * (i - a3));
      v7 = *v6;
      *(v5 + 4) = *(v6 + 2);
      *v5 = v7;
    }

    v8 = 6 * (a3 - 1);
    do
    {
      v9 = a4 + v8;
      v10 = *(result + v8);
      *(v9 + 4) = *(result + v8 + 4);
      *v9 = v10;
      v8 -= 6;
    }

    while (v8 != -6);
  }

  return result;
}

__int16 *sub_19B45DE1C(__int16 *result, int a2, __int16 *a3, __int16 *a4, _WORD *a5, _WORD *a6)
{
  v6 = *result;
  *a4 = *result;
  *a3 = v6;
  if (a2 > 1)
  {
    v7 = result + 3;
    v8 = a2 - 1;
    v9 = v8;
    while (1)
    {
      v10 = *v7;
      if (v10 < *a4)
      {
        *a4 = v10;
        LOWORD(v10) = *v7;
        v6 = *a3;
        if (*v7 > *a3)
        {
LABEL_8:
          *a3 = v10;
          v6 = v10;
        }
      }

      else if (v10 > v6)
      {
        goto LABEL_8;
      }

      v7 += 3;
      if (!--v9)
      {
        v22 = (*a4 >> 1) + (v6 >> 1);
        *a5 = (*a4 >> 1) + (v6 >> 1);
        v23 = *a3;
        if (*a3 & 1) != 0 || (v24 = *a4, (*a4))
        {
          *a5 = v22 + 1;
          v23 = *a3;
          v24 = *a4;
        }

        v25 = (v23 - v24);
        if (v25 >= 0x7FFF)
        {
          LOWORD(v25) = 0x7FFF;
        }

        *a6 = v25;
        v26 = result[1];
        a4[1] = v26;
        a3[1] = v26;
        v27 = result + 4;
        v28 = a2 - 1;
        while (2)
        {
          v29 = *v27;
          if (v29 < a4[1])
          {
            a4[1] = v29;
            LOWORD(v29) = *v27;
            v26 = a3[1];
            if (*v27 > v26)
            {
              goto LABEL_32;
            }
          }

          else if (v29 > v26)
          {
LABEL_32:
            a3[1] = v29;
            v26 = v29;
          }

          v27 += 3;
          if (--v28)
          {
            continue;
          }

          break;
        }

        v30 = (a4[1] >> 1) + (v26 >> 1);
        a5[1] = (a4[1] >> 1) + (v26 >> 1);
        v31 = a3[1];
        if (v31 & 1) != 0 || (v32 = a4[1], (v32))
        {
          a5[1] = v30 + 1;
          v31 = a3[1];
          v32 = a4[1];
        }

        v33 = (v31 - v32);
        if (v33 >= 0x7FFF)
        {
          LOWORD(v33) = 0x7FFF;
        }

        a6[1] = v33;
        v34 = result[2];
        a4[2] = v34;
        a3[2] = v34;
        v35 = result + 5;
        while (2)
        {
          v36 = *v35;
          if (v36 < a4[2])
          {
            a4[2] = v36;
            LOWORD(v36) = *v35;
            v34 = a3[2];
            if (*v35 > v34)
            {
              goto LABEL_44;
            }
          }

          else if (v36 > v34)
          {
LABEL_44:
            a3[2] = v36;
            v34 = v36;
          }

          v35 += 3;
          if (!--v8)
          {
            v20 = (a4[2] >> 1) + (v34 >> 1);
            a5[2] = v20;
            v21 = a3[2];
            if ((v21 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_47:
            a5[2] = v20 + 1;
            LOWORD(v21) = a3[2];
            v37 = a4[2];
            goto LABEL_48;
          }

          continue;
        }
      }
    }
  }

  v11 = (*a4 >> 1) + (v6 >> 1);
  *a5 = (*a4 >> 1) + (v6 >> 1);
  v12 = *a3;
  if (*a3 & 1) != 0 || (v13 = *a4, (*a4))
  {
    *a5 = v11 + 1;
    v12 = *a3;
    v13 = *a4;
  }

  v14 = (v12 - v13);
  if (v14 >= 0x7FFF)
  {
    LOWORD(v14) = 0x7FFF;
  }

  *a6 = v14;
  v15 = result[1];
  a4[1] = v15;
  a3[1] = v15;
  v16 = (a4[1] >> 1) + (v15 >> 1);
  a5[1] = (a4[1] >> 1) + (v15 >> 1);
  v17 = a3[1];
  if (v17 & 1) != 0 || (v18 = a4[1], (v18))
  {
    a5[1] = v16 + 1;
    v17 = a3[1];
    v18 = a4[1];
  }

  v19 = (v17 - v18);
  if (v19 >= 0x7FFF)
  {
    LOWORD(v19) = 0x7FFF;
  }

  a6[1] = v19;
  LODWORD(v21) = result[2];
  a4[2] = v21;
  a3[2] = v21;
  v20 = (a4[2] >> 1) + (v21 >> 1);
  a5[2] = (a4[2] >> 1) + (v21 >> 1);
  LOWORD(v21) = a3[2];
  if (v21)
  {
    goto LABEL_47;
  }

LABEL_46:
  v37 = a4[2];
  if (v37)
  {
    goto LABEL_47;
  }

LABEL_48:
  v38 = (v21 - v37);
  if (v38 >= 0x7FFF)
  {
    LOWORD(v38) = 0x7FFF;
  }

  a6[2] = v38;
  return result;
}

uint64_t sub_19B45E124(uint64_t result)
{
  *result = &unk_1F0E2BF70;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B45E14C(void **a1)
{
  *a1 = &unk_1F0E2BF70;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B45E1A8(void **a1)
{
  *a1 = &unk_1F0E2BF70;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B45E218(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "blendShapeCoefficients");
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 32));
    v8 = *(a1 + 48);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B45E2F0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B45E55C();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 32) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B45E6A8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 32);

    return PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_19B45E740(uint64_t result)
{
  *result = &unk_1F0E307D8;
  *(result + 20) = 0;
  return result;
}

void sub_19B45E768(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B45E7A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "isCovered");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B45E81C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 >= *(this + 2))
        {
          v23 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v22 = *(*this + v2++);
          *(this + 1) = v2;
          v23 = v22 != 0;
        }

        *(a1 + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B45EA28(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

double sub_19B45EA94(uint64_t a1)
{
  *a1 = &unk_1F0E38360;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B45EAC8(PB::Base *this)
{
  *this = &unk_1F0E38360;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

void sub_19B45EB3C(PB::Base *a1)
{
  sub_19B45EAC8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B45EB74(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accel", v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelFiltered", v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    PB::TextFormatter::format(this, "faceDownLookbackTimestamp", *(a1 + 56));
    v11 = *(a1 + 96);
    if ((v11 & 4) == 0)
    {
LABEL_7:
      if ((v11 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 72);
  PB::TextFormatter::format(this, "faceDownState");
  v11 = *(a1 + 96);
  if ((v11 & 8) == 0)
  {
LABEL_8:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "gravityAngle", *(a1 + 76));
  v11 = *(a1 + 96);
  if ((v11 & 0x10) == 0)
  {
LABEL_9:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "gravityAngleVar", *(a1 + 80));
  v11 = *(a1 + 96);
  if ((v11 & 0x80) == 0)
  {
LABEL_10:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(a1 + 92);
  PB::TextFormatter::format(this, "isFaceDown");
  v11 = *(a1 + 96);
  if ((v11 & 0x20) == 0)
  {
LABEL_11:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 84));
  v11 = *(a1 + 96);
  if ((v11 & 0x40) == 0)
  {
LABEL_12:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "pocketProbabilityVar", *(a1 + 88));
  v11 = *(a1 + 96);
  if ((v11 & 0x100) == 0)
  {
LABEL_13:
    if ((v11 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  v14 = *(a1 + 93);
  PB::TextFormatter::format(this, "shouldSuppress");
  if ((*(a1 + 96) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}