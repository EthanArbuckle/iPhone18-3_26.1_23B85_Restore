float sub_19B6BA4D8(uint64_t a1, float64x2_t *a2, int a3, int a4)
{
  v120 = *MEMORY[0x1E69E9840];
  *(a1 + 9) = 1;
  sub_19B6B630C((a1 + 16), (a1 + 448), v118.f64);
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = v11 * (v12 + v12);
  v15 = -(v11 * (v13 + v13));
  v16 = v119;
  v17 = v119;
  v114[0] = 0;
  v65 = -v17;
  *&v114[3] = -v17;
  v114[4] = 0;
  v67 = v118;
  v18 = vcvt_f32_f64(v118);
  v19 = v18.f32[1];
  v20 = -v18.f32[1];
  *&v114[1] = v17;
  *&v114[2] = -v18.f32[1];
  v115 = v18;
  v64 = v18.f32[0];
  v66 = -v18.f32[0];
  v116 = -v18.f32[0];
  v117 = 0;
  do
  {
    v21 = v8;
    v22 = 3;
    do
    {
      *&v112[v21] = *(v114 + v21);
      v21 += 12;
      --v22;
    }

    while (v22);
    ++v9;
    v8 += 4;
  }

  while (v9 != 3);
  v23 = v10 + v10;
  v24 = v14 - v13 * v23;
  v25 = v15 - v12 * v23;
  v26 = v13 * (v13 + v13) + -1.0 + v12 * (v12 + v12);
  bzero(&v113, 0x24uLL);
  v110 = vdup_n_s32(0x368637BDu);
  v111 = 914765757;
  v108 = vcvt_f32_f64(vsubq_f64(*a2, v67));
  v27 = a2[1].f64[0] - v16;
  v109 = v27;
  sub_19B6B5B70(&v105, (a1 + 112), v112, &v110, &v108, v104);
  v28 = v25 * v106 + v105 * v24 + v107 * v26;
  v29 = v24 * v28;
  v30 = v25 * v28;
  v105 = v29;
  v106 = v30;
  v31 = v26 * v28;
  v107 = v31;
  v32 = sqrt(v30 * v30 + v29 * v29 + v31 * v31) * 57.2957802;
  if (*(a1 + 472))
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v33 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a1 + 184);
      *buf = 134218752;
      v87 = v67.f64[0];
      v88 = 2048;
      *(buf | 0xE) = v67.f64[1];
      v90 = 2048;
      v91 = v16;
      v92 = 2048;
      *v93 = v34;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[ExpectedCompass] %f,%f,%f,%f", buf, 0x2Au);
    }

    v35 = sub_19B420058();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v36 = *(a1 + 184);
      v68 = 134218752;
      v69 = v67.f64[0];
      v70 = 2048;
      *(&v68 | 0xE) = v67.f64[1];
      v72 = 2048;
      v73 = v16;
      v74 = 2048;
      *v75 = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v38 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v39 = a2->f64[0];
      v40 = a2->f64[1];
      v41 = a2[1].f64[0];
      v42 = *(a1 + 184);
      *buf = 134219008;
      v87 = v39;
      v88 = 2048;
      v89 = v40;
      v90 = 2048;
      v91 = v41;
      v92 = 1024;
      *v93 = a3;
      *&v93[4] = 2048;
      *&v93[6] = v42;
      _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEBUG, "[TrueCompass] %f,%f,%f,%d,%f", buf, 0x30u);
    }

    v43 = sub_19B420058();
    if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v44 = a2->f64[0];
      v45 = a2->f64[1];
      v46 = a2[1].f64[0];
      v47 = *(a1 + 184);
      v68 = 134219008;
      v69 = v44;
      v70 = 2048;
      v71 = v45;
      v72 = 2048;
      v73 = v46;
      v74 = 1024;
      *v75 = a3;
      *&v75[4] = 2048;
      *&v75[6] = v47;
      v48 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v48);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v49 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(a1 + 184);
      *buf = 134220288;
      v87 = 0.0;
      v88 = 2048;
      v89 = v17;
      v90 = 2048;
      v91 = v20;
      v92 = 2048;
      *v93 = v65;
      *&v93[8] = 2048;
      *&v93[10] = 0;
      v94 = 2048;
      v95 = v64;
      v96 = 2048;
      v97 = v19;
      v98 = 2048;
      v99 = v66;
      v100 = 2048;
      v101 = 0;
      v102 = 2048;
      v103 = v50;
      _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "[MagCCross] %f,%f,%f,%f,%f,%f,%f,%f,%f,%f", buf, 0x66u);
    }

    v51 = sub_19B420058();
    if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v52 = *(a1 + 184);
      v68 = 134220288;
      v69 = 0.0;
      v70 = 2048;
      v71 = v17;
      v72 = 2048;
      v73 = v20;
      v74 = 2048;
      *v75 = v65;
      *&v75[8] = 2048;
      *&v75[10] = 0;
      v76 = 2048;
      v77 = v64;
      v78 = 2048;
      v79 = v19;
      v80 = 2048;
      v81 = v66;
      v82 = 2048;
      v83 = 0;
      v84 = 2048;
      v85 = v52;
      v53 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
    }

    v54 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v55 = fabsf(*(a1 + 436));
      v56 = *(a1 + 184);
      *buf = 134219264;
      v87 = v29;
      v88 = 2048;
      v89 = v30;
      v90 = 2048;
      v91 = v31;
      v92 = 2048;
      *v93 = v32;
      *&v93[8] = 2048;
      *&v93[10] = v55;
      v94 = 2048;
      v95 = v56;
      _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_DEBUG, "[MagCorrectionDX] %f,%f,%f,angle,%.3f,sumRot,%.3f,%f", buf, 0x3Eu);
    }

    v57 = sub_19B420058();
    if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E27E80);
      }

      v58 = fabsf(*(a1 + 436));
      v59 = *(a1 + 184);
      v68 = 134219264;
      v69 = v29;
      v70 = 2048;
      v71 = v30;
      v72 = 2048;
      v73 = v31;
      v74 = 2048;
      *v75 = v32;
      *&v75[8] = 2048;
      *&v75[10] = v58;
      v76 = 2048;
      v77 = v59;
      v60 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLSensorFusion9AxisMekf::doCompassMeasurementUpdate(double *, double, int, BOOL)", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }
  }

  if (a4 && v32 > 3.0)
  {
    v61 = (sqrtf(v32) / v32);
    v105 = v29 * v61;
    v106 = v30 * v61;
    v107 = v31 * v61;
  }

  sub_19B6B8530(a1, &v105);
  v62 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_19B6BAEE8(_DWORD *a1, _DWORD *a2)
{
  *a2 = a1[39];
  a2[1] = a1[40];
  a2[2] = a1[41];
  return 1;
}

BOOL sub_19B6BAF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  if (v2 <= 0.0)
  {
    *a2 = 0;
    v10 = 0.0;
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32) + *(a1 + 32);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = v3 * (v6 + v6) - v5 * v4;
    v8 = -(v3 * (v5 + v5)) - v6 * v4;
    v9 = v5 * (v5 + v5) + -1.0 + v6 * (v6 + v6);
    *&v5 = *(a1 + 352) - v7;
    *a2 = LODWORD(v5);
    *&v8 = *(a1 + 356) - v8;
    *(a2 + 4) = LODWORD(v8);
    v10 = *(a1 + 360) - v9;
  }

  result = v2 > 0.0;
  *(a2 + 8) = v10;
  return result;
}

os_log_t sub_19B6BAFB4()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

const char *sub_19B6BB7A8(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_1E7534338[a1];
  }
}

uint64_t sub_19B6BB7CC(const char *a1, int a2, int a3, signed int a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v12 = sub_19B420058();
  if (a3)
  {
    return sub_19B68A174(v12, a1, a2, a4, a5, a6, va);
  }

  else
  {
    return sub_19B6897D0(v12, a1, a2, a4, a5, a6, va);
  }
}

uint64_t sub_19B6BC5A4(float a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 < 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
    }

    v4 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v8 = a1;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: arg >= 0.0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 41,arg,%f.", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static int CMFFTProcessor::idxRound(scalar_32)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return (a1 + 0.5);
}

void sub_19B6BC784(int a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 >= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v15 = a1;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: start < end, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 74,start,%d,end,%d.", buf, 0xEu);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static float CMFFTProcessor::getSum(int, int, const FrequencyData *)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = 0.0;
  if (a1 <= a2)
  {
    v7 = a2 - a1 + 1;
    v8 = (a3 + 4 * a1);
    do
    {
      v9 = *v8++;
      v6 = v6 + v9;
      --v7;
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B6BC99C(int a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 >= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
    }

    v14 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v19 = a1;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Assertion failed: start < end, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMFFTProcessor.cpp, line 96,start,%d,end,%d.", buf, 0xEu);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29960);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static float CMFFTProcessor::getMaxInRange(int, int, const FrequencyData *)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = *(a3 + 4 * a1);
  }

  else
  {
    v6 = (a3 + 4 * a1);
    v8 = *v6;
    v7 = v6 + 1;
    v9 = v8;
    v10 = a2 - a1;
    do
    {
      v11 = *v7++;
      v12 = v11;
      if (v11 > v9)
      {
        v9 = v12;
      }

      --v10;
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B6BCC68(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6BCCA0(uint64_t a1, int a2, double *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v20) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryHeartRate] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (v7 = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryHeartRate::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }

      v7 = 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    v7 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
      if (v7 < 1.0)
      {
        v7 = 1.0;
      }
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v10 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v11 = *a3;
      *buf = 134349312;
      v20 = v7;
      v21 = 2048;
      v22 = v11;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "[AccessoryHeartRate] Setting update interval to %{public}f, given minimumUpdateInterval, %f", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v18 = *a3;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryHeartRate::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v14 = rint(v7 * 1000000.0);
    if (v7 < 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    sub_19B4238F4(*(a1 + 32), v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B6BD04C(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v4 = IntegerValue;
    if (IntegerValue == 16)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v6 = sub_19B41E070(TimeStamp);
      v27 = v6;
      v7 = *(DataValue + 13);
      v28 = v7;
      _H9 = *(DataValue + 14);
      __asm { FCVT            S0, H9 }

      v29 = _S0;
      v14 = *(DataValue + 5);
      v30 = v14;
      v15 = *(DataValue + 1);
      v31 = v15;
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v16 = qword_1ED71C7C8;
      v17 = os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG);
      __asm { FCVT            D9, H9 }

      if (v17)
      {
        *buf = 67241731;
        v45 = v15;
        v46 = 1025;
        *v47 = v7;
        *&v47[4] = 2050;
        *&v47[6] = _D9;
        v48 = 2050;
        v49 = v14;
        v50 = 2050;
        v51 = v6;
        v52 = 1040;
        v53 = 16;
        v54 = 2097;
        v55 = DataValue;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[AccessoryHeartRate] seq,%{public}d,heartrate,%{private}u,confidence,%{public}10.10f,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x3Cu);
      }

      v19 = sub_19B420058();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
        }

        v32 = 67241731;
        v33 = v15;
        v34 = 1025;
        *v35 = v7;
        *&v35[4] = 2050;
        *&v35[6] = _D9;
        v36 = 2050;
        v37 = v14;
        v38 = 2050;
        v39 = v6;
        v40 = 1040;
        v41 = 16;
        v42 = 2097;
        v43 = DataValue;
        v20 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryHeartRate::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      sub_19B41DF08(a1, 0, &v27, 32);
      goto LABEL_38;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v23 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157955;
      v45 = v4;
      v46 = 2097;
      *v47 = DataValue;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload: %{private}.*P", buf, 0x12u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      v32 = 68157955;
      v33 = v4;
      v34 = 2097;
      *v35 = DataValue;
LABEL_36:
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryHeartRate::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
    }

    v21 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AF70);
      }

      LOWORD(v32) = 0;
      goto LABEL_36;
    }
  }

LABEL_38:
  v26 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6BD5A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B6BDD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v35);
  _Unwind_Resume(a1);
}

void *sub_19B6BDDF0(uint64_t a1, CLConnectionMessage **a2)
{
  v25 = *MEMORY[0x1E69E9840];
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_19B444AA4(v20, Dictionary);
  if ((*(v20[0] + 856))(v20) > 0)
  {
    if (!*(*(a1 + 32) + 24))
    {
      goto LABEL_40;
    }

    memset(&v19, 0, sizeof(v19));
    sub_19B5EC788(v20, "kCLConnectionMessageNameKey", &v19);
    if (!std::string::compare(&v19, "GestureDetected"))
    {
      v12 = 0;
    }

    else
    {
      if (std::string::compare(&v19, "GestureCanceled"))
      {
        if (qword_1EAFE27B0 != -1)
        {
          dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
        }

        v4 = qword_1EAFE27E8;
        if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_FAULT))
        {
          v5 = &v19;
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v5 = v19.__r_.__value_.__r.__words[0];
          }

          *buf = 136446210;
          v24 = v5;
          _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unexpected ear gesture state received: %{public}s", buf, 0xCu);
        }

        v6 = sub_19B420058();
        if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27B0 != -1)
          {
            dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
          }

          v7 = &v19;
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v7 = v19.__r_.__value_.__r.__words[0];
          }

          v21 = 136446210;
          v22 = v7;
          v8 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v8);
          if (v8 != buf)
          {
            free(v8);
          }
        }

LABEL_38:
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        goto LABEL_40;
      }

      v12 = 1;
    }

    v13 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = sub_19B6BE2C4;
    block[3] = &unk_1F0E2A830;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_19B4C5138(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v19;
    }

    block[4] = v13;
    v18 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_38;
  }

  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v9 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Could not get dictionary for kCLConnectionMessageGesture", buf, 2u);
  }

  v10 = sub_19B420058();
  if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    LOWORD(v19.__r_.__value_.__l.__data_) = 0;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_40:
  result = sub_19B445384(v20);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6BE284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_19B445384(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6BE2C4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v2 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    v11 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Dispatching ear gesture %{public}s", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    if (*(a1 + 63) < 0)
    {
      v5 = *(a1 + 40);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *(a1 + 64);
  result = (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_19B6BE4BC(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_19B4C5138(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_19B6BE4E8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_19B6BE4FC(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v3 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManagerInternal startGestureUpdatesWithHandlerPrivate:]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6BE888(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2)
  {
    return MEMORY[0x1EEE66B58](v1, sel_startGestureUpdatesWithHandlerPrivate_, v2);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v1, sel_stopGestureUpdatesPrivate, 0);
  }
}

void sub_19B6BE968(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27B0 != -1)
  {
    dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
  }

  v2 = qword_1EAFE27E8;
  if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "#Notice Calling ear gesture handler", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManager gestureHandler]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 24);
  v5 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6BEB94()
{
  result = os_log_create("com.apple.locationd.Motion", "EarGesture");
  qword_1EAFE27E8 = result;
  return result;
}

void sub_19B6BEEEC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6BEF3C(uint64_t a1, CLConnectionMessage **a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    if (!*(*(a1 + 32) + 16))
    {
      goto LABEL_28;
    }

    v12 = DictionaryOfClasses;
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMActivityData");
    if (v13)
    {
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v16 = qword_1ED71C7A8;
      if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        v33 = objc_msgSend_intValue(v13, v17, v18);
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Error occurred while trying to retrieve activity update: CMErrorDomain Code:%{public}d", buf, 8u);
      }

      v19 = sub_19B420058();
      if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
      {
        goto LABEL_28;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v30 = 67240192;
      v31 = objc_msgSend_intValue(v13, v20, v21);
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v22);
      if (v22 == buf)
      {
        goto LABEL_28;
      }

LABEL_27:
      free(v22);
      goto LABEL_28;
    }

    if (v15)
    {
      v26 = *(*(a1 + 32) + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6BF454;
      block[3] = &unk_1E7532B90;
      block[4] = v15;
      block[5] = v26;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      goto LABEL_28;
    }

    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v27 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageMotionState message!", buf, 2u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      LOWORD(v30) = 0;
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v23 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "Could not get dictionary for kCLConnectionMessageMotionState", buf, 2u);
    }

    v24 = sub_19B420058();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      LOWORD(v30) = 0;
LABEL_26:
      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v22);
      if (v22 == buf)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

LABEL_28:
  v25 = *MEMORY[0x1E69E9840];
}

void sub_19B6BF468(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8), (v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMOverrideResult")) != 0) && (v14 = *(a1 + 32), *(v14 + 40)) && *(v14 + 56) == 1)
  {
    *(*(a1 + 32) + 64) = objc_msgSend_integerValue(v11, v12, v13);
    *(*(a1 + 32) + 56) = 0;
    v15 = *(*(a1 + 32) + 40);
    v16 = *MEMORY[0x1E69E9840];

    dispatch_semaphore_signal(v15);
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v17 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Could not parse dictionary for kCLConnectionMessageSidebandOverride", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *MEMORY[0x1E69E9840];
  }
}

void sub_19B6BF6E0(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8), (v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMMotionStateSimResult")) != 0) && (v14 = *(a1 + 32), *(v14 + 72)) && *(v14 + 88) == 1)
  {
    *(*(a1 + 32) + 96) = objc_msgSend_integerValue(v11, v12, v13);
    *(*(a1 + 32) + 88) = 0;
    v15 = *(*(a1 + 32) + 72);
    v16 = *MEMORY[0x1E69E9840];

    dispatch_semaphore_signal(v15);
  }

  else
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v17 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Could not parse dictionary for kCLConnectionMessageMotionStateSim", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *MEMORY[0x1E69E9840];
  }
}

intptr_t sub_19B6BF958(intptr_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 56) == 1 && *(v2 + 40))
  {
    *(v2 + 56) = 0;
    *(*(result + 32) + 64) = 3;
    result = dispatch_semaphore_signal(*(*(result + 32) + 40));
    v2 = *(v1 + 32);
  }

  if (*(v2 + 88) == 1 && *(v2 + 72))
  {
    *(v2 + 88) = 0;
    *(*(v1 + 32) + 96) = 3;
    v3 = *(*(v1 + 32) + 72);

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

void sub_19B6BF9F8(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7A0 != -1)
  {
    dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
  }

  v3 = qword_1ED71C7A8;
  if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMActivityManagerInternal connect]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B6BFD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6BFEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C0094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_19B6C0290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_19B6C040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C0438(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = *a2;
  if (*a2 && (v4 = objc_opt_class(), (ObjectOfClass = CLConnectionMessage::getObjectOfClass(v3, v4)) != 0))
  {
    result = objc_msgSend_integerValue(ObjectOfClass, v6, v7);
  }

  else
  {
    result = 3;
  }

  *(*(a1 + 32) + 104) = result;
  return result;
}

uint64_t sub_19B6C05B4(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v2)
  {
    return MEMORY[0x1EEE66B58](v1, sel_startActivityUpdatesWithHandlerPrivate_, v2);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v1, sel_stopActivityUpdatesPrivate, 0);
  }
}

dispatch_queue_t sub_19B6C0804(dispatch_queue_t result)
{
  if (!*(result[4].isa + 5))
  {
    v1 = result;
    *(result[4].isa + 5) = dispatch_semaphore_create(0);
    if (!*(v1[4].isa + 5))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }

    result = dispatch_queue_create("com.apple.CoreMotion.SidebandOverride", 0);
    *(v1[4].isa + 6) = result;
    if (!*(v1[4].isa + 6))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }
  }

  return result;
}

void sub_19B6C0890(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C0B04;
  block[3] = &unk_1E75343A8;
  v15 = *(a1 + 56);
  v4 = *(a1 + 48);
  block[4] = v2;
  block[5] = v4;
  dispatch_async(v3, block);
  v5 = *(*(a1 + 32) + 40);
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
    }

    v9 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349056;
      v19 = v8;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Timeout occurred after 5 seconds during overrideOscarSideband:withState:.  Wait result = %{public}ld", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E27BC0);
      }

      v16 = 134349056;
      v17 = v8;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMActivityManager overrideOscarSideband:withState:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = 3;
  }

  else
  {
    v12 = *(*(a1 + 32) + 64);
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
  v13 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t sub_19B6C0C4C(dispatch_queue_t result)
{
  if (!*(result[4].isa + 9))
  {
    v1 = result;
    *(result[4].isa + 9) = dispatch_semaphore_create(0);
    if (!*(v1[4].isa + 9))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }

    result = dispatch_queue_create("com.apple.CoreMotion.MotionStateSim", 0);
    *(v1[4].isa + 10) = result;
    if (!*(v1[4].isa + 10))
    {
      *(*(v1[5].isa + 1) + 24) = 3;
    }
  }

  return result;
}

intptr_t sub_19B6C0CD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6C0D88;
  v5[3] = &unk_1E75343F8;
  v5[4] = v2;
  v7 = *(a1 + 64);
  v6 = *(a1 + 48);
  dispatch_async(v3, v5);
  result = dispatch_semaphore_wait(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 96);
  return result;
}

uint64_t sub_19B6C0D88(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel_simulateMotionState_withState_withHint_, *(a1 + 56));
}

os_log_t sub_19B6C0E28()
{
  result = os_log_create("com.apple.locationd.Motion", "Activity");
  qword_1ED71C7A8 = result;
  return result;
}

void sub_19B6C0F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void *sub_19B6C0FA4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6C1000((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6C1000(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6C1058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C1074(uint64_t a1)
{
  sub_19B654634(a1 + 80, *(a1 + 88));
  sub_19B6C38A0(a1 + 56, *(a1 + 64));
  sub_19B42A568((a1 + 8));
  return a1;
}

void sub_19B6C10B8(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v215 = *MEMORY[0x1E69E9840];
  *buf = vneg_f32(0x80000000800000);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  *&buf[12] = v6;
  *&buf[8] = 2139095039;
  *&buf[28] = 0x7FFFFFFF;
  v6.i64[0] = 0x80000000800000;
  v6.i64[1] = 0x80000000800000;
  v206 = vnegq_f32(v6);
  *&v207 = *buf;
  *(&v207 + 1) = 0x7FFFFFFF7F7FFFFFLL;
  v208 = 0;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  sub_19B6C32A4(&v209, 1uLL);
  v7 = *(&v211 + 1);
  v8 = v211;
  v9 = *(&v209 + 1);
  v10 = v210;
  v11 = (*(&v209 + 1) + 8 * ((v211 + *(&v211 + 1)) >> 9));
  v12 = *v11;
  if (v210 == *(&v209 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = &(*v11)[8 * ((v211 + *(&v211 + 1)) & 0x1FF)];
  }

  v14 = (v13 - v12) >> 3;
  if (v14 < 0)
  {
    v18 = 510 - v14;
    v16 = &v11[-(v18 >> 9)];
    v17 = &(*v16)[8 * (~v18 & 0x1FF)];
  }

  else
  {
    v15 = v14 + 1;
    v16 = &v11[v15 >> 9];
    v17 = &(*v16)[8 * (v15 & 0x1FF)];
  }

  if (v13 != v17)
  {
    do
    {
      v19 = v12 + 4096;
      if (v11 == v16)
      {
        v19 = v17;
      }

      if (v13 == v19)
      {
        v21 = 0;
      }

      else
      {
        v20 = v19 - v13;
        memset_pattern16(v13, &unk_19B7BBE20, (v19 - v13) & 0xFFFFFFFFFFFFFFF8);
        v7 = *(&v211 + 1);
        v21 = v20 >> 3;
      }

      v7 += v21;
      *(&v211 + 1) = v7;
      if (v11 == v16)
      {
        break;
      }

      v22 = v11[1];
      ++v11;
      v12 = v22;
      v13 = v22;
    }

    while (v22 != v17);
    v8 = v211;
    v9 = *(&v209 + 1);
    v10 = v210;
  }

  v23 = v207;
  *(a3 + 32) = v206;
  *(a3 + 48) = v23;
  *(a3 + 64) = v208;
  v24 = *&buf[16];
  *a3 = *buf;
  *(a3 + 16) = v24;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  if (v10 != v9)
  {
    v25 = (v8 >> 6) & 0x3FFFFFFFFFFFFF8;
    v26 = (v9 + v25);
    v27 = v8 & 0x1FF;
    v28 = (*(v9 + v25) + 8 * v27);
    v29 = v8 + v7;
    v30 = (v29 >> 6) & 0x3FFFFFFFFFFFFF8;
    v31 = v29 & 0x1FF;
    if ((*(v9 + v30) + 8 * v31) != v28)
    {
      v32 = v31 | ((v30 - v25) << 6);
      v33 = v32 - v27;
      if (v32 != v27)
      {
        sub_19B6C32A4((a3 + 72), v32 - v27);
        v34 = *(a3 + 112);
        v35 = *(a3 + 80);
        v36 = *(a3 + 104) + v34;
        v37 = (v35 + 8 * (v36 >> 9));
        v38 = *v37;
        v39 = *v37 + 8 * (v36 & 0x1FF);
        v40 = *(a3 + 88) == v35 ? 0 : v39;
        v41 = v33 + v40 - v38;
        if (v41 < 1)
        {
          v43 = 511 - v41;
          LOWORD(v41) = ~(511 - v41);
          v42 = &v37[-(v43 >> 9)];
        }

        else
        {
          v42 = &v37[v41 >> 9];
        }

        v44 = *v42 + 8 * (v41 & 0x1FF);
        if (v40 != v44)
        {
          do
          {
            v45 = v38 + 512;
            if (v37 == v42)
            {
              v45 = v44;
            }

            if (v40 == v45)
            {
              v45 = v40;
            }

            else
            {
              v46 = v40;
              do
              {
                v47 = *v28++;
                *v46++ = v47;
                if ((v28 - *v26) == 4096)
                {
                  v48 = v26[1];
                  ++v26;
                  v28 = v48;
                }
              }

              while (v46 != v45);
              v34 = *(a3 + 112);
            }

            v34 += v45 - v40;
            *(a3 + 112) = v34;
            if (v37 == v42)
            {
              break;
            }

            v49 = v37[1];
            ++v37;
            v38 = v49;
            v40 = v49;
          }

          while (v49 != v44);
        }
      }
    }
  }

  if (*(a1 + 96))
  {
    v50 = a1 + 88;
    v51 = *(a1 + 88);
    *(a3 + 12) = *(*(a1 + 80) + 28);
    if (v51)
    {
      do
      {
        v52 = v51;
        v51 = *(v51 + 8);
      }

      while (v51);
    }

    else
    {
      do
      {
        v52 = *(v50 + 16);
        v53 = *v52 == v50;
        v50 = v52;
      }

      while (v53);
    }

    *(a3 + 16) = *(v52 + 28);
  }

  sub_19B66B918(&v209);
  if (*(a1 + 72) < a2)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
    }

    v54 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
    {
      v55 = *(a1 + 72);
      *buf = 134217984;
      *&buf[4] = v55;
      _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_INFO, "CLRobustSlopeEstimator given only %zd bins", buf, 0xCu);
    }

    v56 = sub_19B420058();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
      }

      v57 = *(a1 + 72);
      LODWORD(v212) = 134217984;
      *(&v212 + 4) = v57;
      v58 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLPressureStats CLRobustSlopeEstimator::computeStats(int)", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    goto LABEL_242;
  }

  v195 = 0u;
  v196 = 0u;
  v194 = 0u;
  v59 = *(a1 + 56);
  v60 = (a1 + 64);
  while (1)
  {
    v61 = *v60;
    v62 = (a1 + 64);
    if (*v60)
    {
      do
      {
        v63 = v61;
        v61 = v61[1];
      }

      while (v61);
    }

    else
    {
      do
      {
        v63 = v62[2];
        v53 = *v63 == v62;
        v62 = v63;
      }

      while (v53);
    }

    if (v59 == v63)
    {
      break;
    }

    v64 = v59[9];
    v65 = v59[6];
    v66 = v59[7];
    v67 = (v65 + 8 * (v64 >> 8));
    if (v66 == v65)
    {
      v68 = 0;
    }

    else
    {
      v68 = (*v67 + 16 * v64);
    }

    while (1)
    {
      if (v66 == v65)
      {
        v85 = 0;
      }

      else
      {
        v84 = v59[10] + v59[9];
        v85 = *(v65 + ((v84 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v84;
      }

      v71 = v59[1];
      if (v68 == v85)
      {
        break;
      }

      v69 = v59;
      if (v71)
      {
        do
        {
          v70 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v70 = v69[2];
          v53 = *v70 == v69;
          v69 = v70;
        }

        while (!v53);
      }

      if (v70 != v60)
      {
        do
        {
          v72 = v70[9];
          v73 = v70[6];
          v74 = v70[7];
          v75 = (v73 + 8 * (v72 >> 8));
          if (v74 == v73)
          {
            v76 = 0;
          }

          else
          {
            v76 = (*v75 + 16 * v72);
          }

          while (1)
          {
            if (v74 == v73)
            {
              v80 = 0;
            }

            else
            {
              v79 = v70[10] + v70[9];
              v80 = *(v73 + ((v79 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v79;
            }

            if (v76 == v80)
            {
              break;
            }

            v77 = vsub_f32(v76[1], v68[1]);
            *buf = vdiv_f32(v77, vdup_lane_s32(v77, 1)).u32[0];
            sub_19B420408(&v194, buf);
            v76 += 2;
            if ((v76 - *v75) == 4096)
            {
              v78 = v75[1];
              ++v75;
              v76 = v78;
            }

            v73 = v70[6];
            v74 = v70[7];
          }

          v81 = v70[1];
          if (v81)
          {
            do
            {
              v82 = v81;
              v81 = *v81;
            }

            while (v81);
          }

          else
          {
            do
            {
              v82 = v70[2];
              v53 = *v82 == v70;
              v70 = v82;
            }

            while (!v53);
          }

          v70 = v82;
        }

        while (v82 != v60);
      }

      v68 += 2;
      if ((v68 - *v67) == 4096)
      {
        v83 = v67[1];
        ++v67;
        v68 = v83;
      }

      v65 = v59[6];
      v66 = v59[7];
    }

    v86 = v59;
    if (v71)
    {
      do
      {
        v59 = v71;
        v71 = *v71;
      }

      while (v71);
    }

    else
    {
      do
      {
        v59 = v86[2];
        v53 = *v59 == v86;
        v86 = v59;
      }

      while (!v53);
    }
  }

  v87 = (*(&v194 + 1) + 8 * (v196 >> 10));
  if (v195 == *(&v194 + 1))
  {
    v88 = 0;
    v90 = 0;
    v89 = (*(&v194 + 1) + 8 * ((*(&v196 + 1) + v196) >> 10));
  }

  else
  {
    v88 = *v87 + 4 * (v196 & 0x3FF);
    v89 = (*(&v194 + 1) + 8 * ((*(&v196 + 1) + v196) >> 10));
    v90 = *v89 + 4 * ((*(&v196 + 1) + v196) & 0x3FF);
  }

  v91 = sub_19B6C39EC(v87, v88, v89, v90);
  v92 = *(&v194 + 1);
  *(&v196 + 1) = 0;
  v93 = (v195 - *(&v194 + 1)) >> 3;
  if (v93 >= 3)
  {
    do
    {
      operator delete(*v92);
      v92 = (*(&v194 + 1) + 8);
      *(&v194 + 1) = v92;
      v93 = (v195 - v92) >> 3;
    }

    while (v93 > 2);
  }

  if (v93 == 1)
  {
    v94 = 512;
  }

  else
  {
    if (v93 != 2)
    {
      goto LABEL_110;
    }

    v94 = 1024;
  }

  *&v196 = v94;
LABEL_110:
  v192 = 0u;
  v193 = 0u;
  v191 = 0u;
  v95 = *(a1 + 56);
  if (v95 == v60)
  {
    v107 = 0;
    v106 = 0;
    v111 = 0;
  }

  else
  {
    do
    {
      v96 = v95[9];
      v97 = v95[6];
      v98 = v95[7];
      v99 = (v97 + 8 * (v96 >> 8));
      if (v98 == v97)
      {
        v100 = 0;
      }

      else
      {
        v100 = *v99 + 16 * v96;
      }

      while (1)
      {
        if (v98 == v97)
        {
          v103 = 0;
        }

        else
        {
          v102 = v95[10] + v95[9];
          v103 = *(v97 + ((v102 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v102;
        }

        if (v100 == v103)
        {
          break;
        }

        *buf = *(v100 + 8) + (-v91 * *(v100 + 12));
        sub_19B420408(&v191, buf);
        v100 += 16;
        if (v100 - *v99 == 4096)
        {
          v101 = v99[1];
          ++v99;
          v100 = v101;
        }

        v97 = v95[6];
        v98 = v95[7];
      }

      v104 = v95[1];
      if (v104)
      {
        do
        {
          v105 = v104;
          v104 = *v104;
        }

        while (v104);
      }

      else
      {
        do
        {
          v105 = v95[2];
          v53 = *v105 == v95;
          v95 = v105;
        }

        while (!v53);
      }

      v95 = v105;
    }

    while (v105 != v60);
    v106 = *(&v191 + 1);
    v107 = (*(&v191 + 1) + 8 * (v193 >> 10));
    if (v192 != *(&v191 + 1))
    {
      v108 = *v107 + 4 * (v193 & 0x3FF);
      v109 = (*(&v191 + 1) + 8 * ((*(&v193 + 1) + v193) >> 10));
      v110 = *v109 + 4 * ((*(&v193 + 1) + v193) & 0x3FF);
      goto LABEL_132;
    }

    v111 = (*(&v193 + 1) + v193) >> 10;
  }

  v108 = 0;
  v110 = 0;
  v109 = (v106 + 8 * v111);
LABEL_132:
  v112 = sub_19B6C39EC(v107, v108, v109, v110);
  v189 = 0u;
  v190 = 0u;
  v188 = 0u;
  v113 = *(&v191 + 1);
  v114 = v192;
  v115 = (*(&v191 + 1) + 8 * (v193 >> 10));
  if (v192 == *(&v191 + 1))
  {
    v116 = 0;
  }

  else
  {
    v116 = (*v115 + 4 * (v193 & 0x3FF));
  }

  while (1)
  {
    v118 = v114 == v113 ? 0 : *(v113 + (((*(&v193 + 1) + v193) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v193 + 1) + v193) & 0x3FF);
    if (v116 == v118)
    {
      break;
    }

    *buf = vabds_f32(*v116, v112);
    sub_19B420408(&v188, buf);
    if ((++v116 - *v115) == 4096)
    {
      v117 = v115[1];
      ++v115;
      v116 = v117;
    }

    v113 = *(&v191 + 1);
    v114 = v192;
  }

  v119 = (*(&v188 + 1) + 8 * (v190 >> 10));
  if (v189 == *(&v188 + 1))
  {
    v120 = 0;
    v122 = 0;
    v121 = (*(&v188 + 1) + 8 * ((*(&v190 + 1) + v190) >> 10));
  }

  else
  {
    v120 = *v119 + 4 * (v190 & 0x3FF);
    v121 = (*(&v188 + 1) + 8 * ((*(&v190 + 1) + v190) >> 10));
    v122 = *v121 + 4 * ((*(&v190 + 1) + v190) & 0x3FF);
  }

  v123 = sub_19B6C39EC(v119, v120, v121, v122);
  v124 = *(&v188 + 1);
  v125 = (*(&v188 + 1) + 8 * (v190 >> 10));
  v126 = *v125;
  v127 = &(*v125)[v190 & 0x3FF];
  v128 = *(*(&v188 + 1) + (((*(&v190 + 1) + v190) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v190 + 1) + v190) & 0x3FF);
  if (v127 != v128)
  {
    v129 = &(*v125)[v190 & 0x3FF];
    while (1)
    {
      if (++v129 - v126 == 4096)
      {
        v130 = v125[1];
        ++v125;
        v126 = v130;
        v129 = v130;
      }

      if (v129 == v128)
      {
        break;
      }

      if (*v127 < *v129)
      {
        v127 = v129;
      }
    }
  }

  v131 = *v127;
  *(&v190 + 1) = 0;
  v132 = (v189 - *(&v188 + 1)) >> 3;
  if (v132 >= 3)
  {
    do
    {
      operator delete(*v124);
      v124 = (*(&v188 + 1) + 8);
      *(&v188 + 1) = v124;
      v132 = (v189 - v124) >> 3;
    }

    while (v132 > 2);
  }

  if (v132 == 1)
  {
    v133 = 512;
  }

  else
  {
    if (v132 != 2)
    {
      goto LABEL_160;
    }

    v133 = 1024;
  }

  *&v190 = v133;
LABEL_160:
  v134 = *(&v191 + 1);
  *(&v193 + 1) = 0;
  v135 = (v192 - *(&v191 + 1)) >> 3;
  if (v135 >= 3)
  {
    do
    {
      operator delete(*v134);
      v134 = (*(&v191 + 1) + 8);
      *(&v191 + 1) = v134;
      v135 = (v192 - v134) >> 3;
    }

    while (v135 > 2);
  }

  if (v135 == 1)
  {
    v136 = 512;
  }

  else
  {
    if (v135 != 2)
    {
      goto LABEL_167;
    }

    v136 = 1024;
  }

  *&v193 = v136;
LABEL_167:
  *a3 = v91;
  *(a3 + 4) = v123;
  *(a3 + 8) = v131;
  *(a3 + 64) = 1;
  v186 = 0u;
  v187 = 0u;
  *__p = 0u;
  v137 = *(a1 + 104);
  v138 = *(a1 + 108);
  v197[0] = v137;
  if (v137 <= v138)
  {
    do
    {
      v143 = *v60;
      if (*v60)
      {
        v144 = (a1 + 64);
        do
        {
          if (*(v143 + 8) >= v137)
          {
            v144 = v143;
          }

          v143 = v143[*(v143 + 8) < v137];
        }

        while (v143);
        if (v144 != v60 && v137 >= *(v144 + 8))
        {
          v213 = 0u;
          v214 = 0u;
          v212 = 0u;
          *buf = v197;
          v145 = sub_19B6C38FC(a1 + 56, v137);
          v146 = v145[9];
          v147 = v145[6];
          v148 = (v147 + 8 * (v146 >> 8));
          if (v145[7] == v147)
          {
            v149 = 0;
          }

          else
          {
            v149 = *v148 + 16 * v146;
          }

LABEL_182:
          v150 = v149 - 4096;
          while (1)
          {
            *buf = v197;
            v151 = sub_19B6C38FC(a1 + 56, v197[0]);
            v152 = v151[6];
            if (v151[7] == v152)
            {
              v154 = 0;
            }

            else
            {
              v153 = v151[10] + v151[9];
              v154 = *(v152 + ((v153 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v153;
            }

            if (v149 == v154)
            {
              break;
            }

            sub_19B420408(&v212, (v149 + 8));
            v150 += 16;
            v149 += 16;
            if (*v148 == v150)
            {
              v155 = v148[1];
              ++v148;
              v149 = v155;
              goto LABEL_182;
            }
          }

          if (*(&v214 + 1))
          {
            v156 = (*(&v212 + 1) + 8 * (v214 >> 10));
            if (v213 == *(&v212 + 1))
            {
              v157 = 0;
              v159 = 0;
              v158 = (*(&v212 + 1) + 8 * ((v214 + *(&v214 + 1)) >> 10));
            }

            else
            {
              v157 = *v156 + 4 * (v214 & 0x3FF);
              v158 = (*(&v212 + 1) + 8 * ((v214 + *(&v214 + 1)) >> 10));
              v159 = *v158 + 4 * ((v214 + *(&v214 + 1)) & 0x3FF);
            }

            v160 = sub_19B6C39EC(v156, v157, v158, v159);
            v161 = __p[1];
            v162 = v197[0];
            if (v186 == __p[1])
            {
              v163 = 0;
            }

            else
            {
              v163 = ((v186 - __p[1]) << 6) - 1;
            }

            v164 = *(&v187 + 1) + v187;
            if (v163 == *(&v187 + 1) + v187)
            {
              if (v187 < 0x200)
              {
                if (v186 - __p[1] < *(&v186 + 1) - __p[0])
                {
                  if (*(&v186 + 1) != v186)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*(&v186 + 1) == __p[0])
                {
                  v165 = 1;
                }

                else
                {
                  v165 = (*(&v186 + 1) - __p[0]) >> 2;
                }

                v206.i64[0] = __p;
                sub_19B6C3828(v165);
              }

              *&v187 = v187 - 512;
              *buf = *__p[1];
              __p[1] = __p[1] + 8;
              sub_19B6C361C(__p, buf);
              v161 = __p[1];
              v164 = *(&v187 + 1) + v187;
            }

            v166 = *&v161[(v164 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v164 & 0x1FF);
            *v166 = v160;
            *(v166 + 4) = v162 + 0.5;
            ++*(&v187 + 1);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
            }

            v167 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
            {
              v168 = (*(__p[1] + (((*(&v187 + 1) + v187 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v187 + 1) + v187 - 1) & 0x1FF));
              v169 = v168[1];
              v170 = *v168;
              *buf = 136315906;
              *&buf[4] = "PRTTSampleTemperature";
              *&buf[12] = 2048;
              *&buf[14] = v169;
              *&buf[22] = 2080;
              *&buf[24] = "PRTTSamplePressure";
              v206.i16[0] = 2048;
              *(v206.i64 + 2) = v170;
              _os_log_impl(&dword_19B41C000, v167, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%f", buf, 0x2Au);
            }

            v171 = sub_19B420058();
            if (*(v171 + 160) > 1 || *(v171 + 164) > 1 || *(v171 + 168) > 1 || *(v171 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
              }

              v172 = (*(__p[1] + (((*(&v187 + 1) + v187 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v187 + 1) + v187 - 1) & 0x1FF));
              v173 = v172[1];
              v174 = *v172;
              v197[1] = 136315906;
              v198 = "PRTTSampleTemperature";
              v199 = 2048;
              v200 = v173;
              v201 = 2080;
              v202 = "PRTTSamplePressure";
              v203 = 2048;
              v204 = v174;
              v175 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "std::deque<CLMotionTypePressure> CLRobustSlopeEstimator::computePRTT()", "CoreLocation: %s\n", v175);
              if (v175 != buf)
              {
                free(v175);
              }
            }
          }

          sub_19B42A568(&v212);
        }
      }

      v176 = v197[0];
      v137 = ++v197[0];
    }

    while (v176 < *(a1 + 108));
  }

  v140 = *(a3 + 80);
  v139 = *(a3 + 88);
  *(a3 + 112) = 0;
  v141 = (v139 - v140) >> 3;
  if (v141 < 3)
  {
    v142 = (a3 + 72);
  }

  else
  {
    v142 = (a3 + 72);
    do
    {
      operator delete(*v140);
      v139 = *(a3 + 88);
      v140 = (*(a3 + 80) + 8);
      *(a3 + 80) = v140;
      v141 = (v139 - v140) >> 3;
    }

    while (v141 > 2);
  }

  if (v141 == 1)
  {
    v177 = 256;
    goto LABEL_227;
  }

  if (v141 == 2)
  {
    v177 = 512;
LABEL_227:
    *(a3 + 104) = v177;
  }

  v178 = *(a3 + 112);
  if (v178)
  {
    v179 = *(a3 + 104);
    if (v179 >= 0x200)
    {
      operator delete(*v140);
      v139 = *(a3 + 88);
      v140 = (*(a3 + 80) + 8);
      *(a3 + 80) = v140;
      v178 = *(a3 + 112);
      v179 = *(a3 + 104) - 512;
      *(a3 + 104) = v179;
    }

    if (v139 == v140)
    {
      v180 = 0;
    }

    else
    {
      v180 = ((v139 - v140) << 6) - 1;
    }

    if (v180 - (v179 + v178) >= 0x200)
    {
      operator delete(*(v139 - 8));
      *(a3 + 88) -= 8;
    }
  }

  else
  {
    while (v139 != v140)
    {
      operator delete(*(v139 - 8));
      v140 = *(a3 + 80);
      v139 = *(a3 + 88) - 8;
      *(a3 + 88) = v139;
    }

    *(a3 + 104) = 0;
  }

  sub_19B6C4148(v142);
  v182 = *(a3 + 80);
  v181 = *(a3 + 88);
  if (v181 != v182)
  {
    *(a3 + 88) = v181 + ((v182 - v181 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_19B6C4148(v142);
  v183 = v186;
  *(a3 + 72) = *__p;
  *(a3 + 88) = v183;
  *__p = 0u;
  v186 = 0u;
  *(a3 + 104) = v187;
  v187 = 0uLL;
  sub_19B66B918(__p);
  sub_19B42A568(&v188);
  sub_19B42A568(&v191);
  sub_19B42A568(&v194);
LABEL_242:
  v184 = *MEMORY[0x1E69E9840];
}

void sub_19B6C22FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58)
{
  operator delete(v58);
  if (__p)
  {
    operator delete(__p);
  }

  sub_19B42A568((v59 - 192));
  sub_19B66B918(&a15);
  sub_19B42A568(&a21);
  sub_19B42A568(&a27);
  sub_19B42A568(&a33);
  sub_19B66B918(a14);
  _Unwind_Resume(a1);
}

void sub_19B6C23F4(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 12);
  sub_19B420408(a1 + 8, (a2 + 12));
  v5 = *(a1 + 48);
  if (v5 >= 0x14)
  {
    v6 = *v4;
    v7 = *v4;
    if (*(a1 + 104) <= v7 && *(a1 + 108) >= v7)
    {
      v8 = *(a1 + 40);
      v9 = v5 - 1;
      v10 = *(*(*(a1 + 16) + (((v8 + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v8 + v9) & 0x3FF)) - *(*(*(a1 + 16) + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF));
      if (v10 == 0.0)
      {
LABEL_76:
        *(a1 + 40) = v8 + 1;
        *(a1 + 48) = v9;
        sub_19B420490(a1 + 8, 1);
        goto LABEL_77;
      }

      v65 = *v4;
      v11 = *(a1 + 64);
      if (v11)
      {
        v12 = a1 + 64;
        do
        {
          if (*(v11 + 32) >= v7)
          {
            v12 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 32) < v7));
        }

        while (v11);
        if (v12 != a1 + 64 && *(v12 + 32) <= v7)
        {
LABEL_31:
          v24 = powf(0.2, v10 * 0.05);
          if (v10 >= 0.0)
          {
            v25 = v24;
            v26 = v7 + 1;
          }

          else
          {
            v25 = powf(0.2, v10 * -0.05);
            v26 = v7;
          }

          *buf = &v65;
          if (*(sub_19B6C4408(a1 + 80, v7) + 8) == 30 && ((1.0 - v25) * 2147500000.0) > rand())
          {
            *buf = &v65;
            v27 = sub_19B6C4408(a1 + 80, v65);
            --*(v27 + 8);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
            }

            v28 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
            {
              *buf = &v65;
              v29 = sub_19B6C38FC(a1 + 56, v65);
              v30 = *(*(v29[6] + ((v29[9] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v29[9]);
              *buf = &v65;
              v31 = *(sub_19B6C4408(a1 + 80, v65) + 8);
              *buf = 136315906;
              *&buf[4] = "PopSampleTime";
              *&buf[12] = 2048;
              *&buf[14] = v30;
              *&buf[22] = 2080;
              *&buf[24] = "CalibrationBinCount";
              *v86 = 1024;
              *&v86[2] = v31;
              _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%d", buf, 0x26u);
            }

            v32 = sub_19B420058();
            if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
              }

              *v66 = &v65;
              v33 = sub_19B6C38FC(a1 + 56, v65);
              v34 = *(*(v33[6] + ((v33[9] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v33[9]);
              *v66 = &v65;
              v35 = *(sub_19B6C4408(a1 + 80, v65) + 8);
              *v66 = 136315906;
              *&v66[4] = "PopSampleTime";
              v67 = 2048;
              v68 = v34;
              v69 = 2080;
              v70 = "CalibrationBinCount";
              v71 = 1024;
              LODWORD(v72) = v35;
              v36 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLRobustSlopeEstimator::addPoint(const CLPressure::Sample *)", "CoreLocation: %s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }

            *buf = &v65;
            v37 = sub_19B6C38FC(a1 + 56, v65);
            *(v37 + 9) = vaddq_s64(*(v37 + 9), xmmword_19B7BBE10);
            sub_19B6C42D0((v37 + 5), 1);
          }

          *buf = &v65;
          v38 = *(sub_19B6C4408(a1 + 80, v65) + 8);
          v39 = *a2;
          if (v38 < 1 || v39 - *a1 > (((v26 - v6) / v10) / (30 - v38)))
          {
            v40 = v39;
            *a1 = v40;
            *buf = &v65;
            v41 = sub_19B6C38FC(a1 + 56, v65);
            v42 = v41;
            v43 = *(v41 + 3);
            v44 = v41[7];
            v45 = v41[6];
            if (v44 == v45)
            {
              v46 = 0;
            }

            else
            {
              v46 = 32 * (v44 - v45) - 1;
            }

            v47 = v41[9];
            v48 = v41[10] + v47;
            if (v46 == v48)
            {
              if (v47 < 0x100)
              {
                v49 = v41[8];
                v50 = v41[5];
                if (v44 - v45 < (v49 - v50))
                {
                  operator new();
                }

                if (v49 == v50)
                {
                  v51 = 1;
                }

                else
                {
                  v51 = (v49 - v50) >> 2;
                }

                sub_19B6C3828(v51);
              }

              v41[9] = v47 - 256;
              *buf = *v45;
              v41[6] = (v45 + 8);
              sub_19B6C361C(v41 + 5, buf);
              v45 = v42[6];
              v48 = v42[10] + v42[9];
            }

            *(*&v45[(v48 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v48) = *a2;
            ++v42[10];
            *buf = &v65;
            v52 = sub_19B6C4408(a1 + 80, v65);
            ++*(v52 + 8);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
            }

            v53 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
            {
              v54 = *a2;
              v56 = *(a2 + 8);
              v55 = *(a2 + 12);
              *buf = &v65;
              v57 = *(sub_19B6C4408(a1 + 80, v65) + 8);
              *buf = 136317442;
              *&buf[4] = "CalibrationSampleTime";
              *&buf[12] = 2048;
              *&buf[14] = v54;
              *&buf[22] = 2080;
              *&buf[24] = "CalibrationSamplePressure";
              *v86 = 2048;
              *&v86[2] = v56;
              *&v86[10] = 2080;
              *&v86[12] = "CalibrationSampleTemperature";
              v87 = 2048;
              v88 = v55;
              v89 = 2080;
              v90 = "CalibrationTemperatureRate";
              v91 = 2048;
              v92 = v10;
              v93 = 2080;
              v94 = "CalibrationBinCount";
              v95 = 1024;
              v96 = v57;
              _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%d", buf, 0x62u);
            }

            v58 = sub_19B420058();
            if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E299E0);
              }

              v59 = *a2;
              v61 = *(a2 + 8);
              v60 = *(a2 + 12);
              *v66 = &v65;
              v62 = *(sub_19B6C4408(a1 + 80, v65) + 8);
              *v66 = 136317442;
              *&v66[4] = "CalibrationSampleTime";
              v67 = 2048;
              v68 = v59;
              v69 = 2080;
              v70 = "CalibrationSamplePressure";
              v71 = 2048;
              v72 = v61;
              v73 = 2080;
              v74 = "CalibrationSampleTemperature";
              v75 = 2048;
              v76 = v60;
              v77 = 2080;
              v78 = "CalibrationTemperatureRate";
              v79 = 2048;
              v80 = v10;
              v81 = 2080;
              v82 = "CalibrationBinCount";
              v83 = 1024;
              v84 = v62;
              v63 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLRobustSlopeEstimator::addPoint(const CLPressure::Sample *)", "CoreLocation: %s\n", v63);
              if (v63 != buf)
              {
                free(v63);
              }
            }
          }

          v8 = *(a1 + 40);
          v9 = *(a1 + 48) - 1;
          goto LABEL_76;
        }
      }

      *v86 = 0u;
      memset(buf, 0, sizeof(buf));
      *v66 = &v65;
      v13 = sub_19B6C38FC(a1 + 56, v7);
      v15 = v13[6];
      v14 = v13[7];
      v13[10] = 0;
      v16 = (v14 - v15) >> 3;
      if (v16 >= 3)
      {
        do
        {
          operator delete(*v15);
          v14 = v13[7];
          v15 = (v13[6] + 8);
          v13[6] = v15;
          v16 = (v14 - v15) >> 3;
        }

        while (v16 > 2);
      }

      if (v16 == 1)
      {
        v17 = 128;
      }

      else
      {
        if (v16 != 2)
        {
LABEL_19:
          if (v13[10])
          {
            sub_19B6C42D0((v13 + 5), 0);
            v19 = v13[6];
            v18 = v13[7];
            if (v18 == v19)
            {
              v20 = 0;
            }

            else
            {
              v20 = 32 * (v18 - v19) - 1;
            }

            if ((v20 - (v13[10] + v13[9])) >= 0x100)
            {
              operator delete(*(v18 - 8));
              v13[7] -= 8;
            }
          }

          else
          {
            while (v14 != v15)
            {
              operator delete(*(v14 - 8));
              v15 = v13[6];
              v14 = v13[7] - 8;
              v13[7] = v14;
            }

            v13[9] = 0;
          }

          sub_19B6C432C(v13 + 5);
          v22 = v13[6];
          v21 = v13[7];
          if (v21 != v22)
          {
            v13[7] = v21 + ((v22 - v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          }

          sub_19B6C432C(v13 + 5);
          *(v13 + 5) = *buf;
          v23 = *v86;
          *(v13 + 7) = *&buf[16];
          memset(buf, 0, sizeof(buf));
          *(v13 + 9) = v23;
          *v86 = 0;
          *&v86[8] = 0;
          sub_19B6C4224(buf);
          *buf = &v65;
          *(sub_19B6C4408(a1 + 80, v65) + 8) = 0;
          v7 = v65;
          v6 = *v4;
          goto LABEL_31;
        }

        v17 = 256;
      }

      v13[9] = v17;
      goto LABEL_19;
    }
  }

LABEL_77:
  v64 = *MEMORY[0x1E69E9840];
}

void sub_19B6C31B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v26);
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_19B6C31F4(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 48) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 24);
      v2 = (*(a1 + 16) + 8);
      *(a1 + 16) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    *(a1 + 40) = v6;
  }

  sub_19B6C38A0(a1 + 56, *(a1 + 64));
  *(a1 + 56) = a1 + 64;
  *(a1 + 64) = 0;
  v8 = *(a1 + 88);
  v7 = (a1 + 88);
  *(v7 - 2) = 0;
  sub_19B654634((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void *sub_19B6C32A4(void *result, unint64_t a2)
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
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_19B6C361C(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = v2;
      if (v12)
      {
        sub_19B6C3828(v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
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

    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_19B6C361C(v2, v16);
    }
  }

  return result;
}

void sub_19B6C35CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B6C361C(void *result, void *a2)
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

      sub_19B6C3828(v11);
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

const void **sub_19B6C3720(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_19B6C3828(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_19B6C3828(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_19B4C5080();
}

os_log_t sub_19B6C3870()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

void sub_19B6C38A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B6C38A0(a1, *a2);
    sub_19B6C38A0(a1, a2[1]);
    sub_19B6C4224(a2 + 5);

    operator delete(a2);
  }
}

uint64_t *sub_19B6C38FC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float sub_19B6C39EC(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a4 == a2 || (v4 = a4, v5 = a2, v6 = a1, v7 = *a1, v8 = a2 - *a1, ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v8 >> 2) <= 0))
  {
    __assert_rtn("getMedianInPlace", "CMPressureUtilities.h", 172, "size > 0");
  }

  v92 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v8 >> 2);
  v9 = a3;
  v10 = sub_19B6C40F4(a1, a2, v92 >> 1);
  if (v11 != v4)
  {
    v14 = v5;
    v15 = v6;
    v91 = v11;
    while (1)
    {
      if (v4 == v14)
      {
        goto LABEL_4;
      }

      v16 = *v9;
      v17 = *v15;
      v18 = ((v4 - *v9) >> 2) + ((v9 - v15) << 7) - ((v14 - *v15) >> 2);
      if (v18 < 2)
      {
        goto LABEL_4;
      }

      if (v18 == 3)
      {
        v74 = v14 + 1;
        if ((v14 - v17 + 4) == 4096)
        {
          v74 = v15[1];
        }

        if (v4 == v16)
        {
          v4 = *(v9 - 1) + 4096;
        }

        v75 = *v74;
        v76 = *v14;
        v77 = *(v4 - 4);
        if (*v74 >= *v14)
        {
          if (v77 < v75)
          {
            *v74 = v77;
            *(v4 - 4) = v75;
            v89 = *v14;
            if (*v74 < *v14)
            {
              *v14 = *v74;
              *v74 = v89;
            }
          }
        }

        else
        {
          if (v77 >= v75)
          {
            *v14 = v75;
            *v74 = v76;
            v90 = *(v4 - 4);
            if (v90 >= v76)
            {
              goto LABEL_4;
            }

            *v74 = v90;
          }

          else
          {
            *v14 = v77;
          }

          *(v4 - 4) = v76;
        }

        goto LABEL_4;
      }

      if (v18 == 2)
      {
        if (v4 == v16)
        {
          v4 = *(v9 - 1) + 4096;
        }

        v78 = *(v4 - 4);
        v79 = *v14;
        if (v78 < *v14)
        {
          *v14 = v78;
          *(v4 - 4) = v79;
        }

        goto LABEL_4;
      }

      if (v18 <= 7)
      {
        v80 = v4;
        if (v16 == v4)
        {
          v80 = *(v9 - 1) + 4096;
        }

        v81 = (v80 - 4);
        while (v14 != v81)
        {
          if (v4 != v14)
          {
            v82 = v17;
            v83 = v14;
            v84 = v14;
            v85 = v15;
            while (1)
            {
              if ((++v84 - v82) == 4096)
              {
                v86 = v85[1];
                ++v85;
                v82 = v86;
                v84 = v86;
              }

              if (v84 == v4)
              {
                break;
              }

              if (*v84 < *v83)
              {
                v83 = v84;
              }
            }

            if (v83 != v14)
            {
              v87 = *v14;
              *v14 = *v83;
              *v83 = v87;
            }
          }

          if ((++v14 - v17) == 4096)
          {
            v88 = v15[1];
            ++v15;
            v17 = v88;
            v14 = v88;
          }
        }

        goto LABEL_4;
      }

      v19 = v10;
      sub_19B6C40F4(v15, v14, v18 >> 1);
      v21 = v16;
      v22 = v9;
      v23 = v4;
      if (v4 == v16)
      {
        v22 = v9 - 8;
        v21 = *(v9 - 1);
        v23 = (v21 + 1024);
      }

      v25 = *(v23 - 4);
      v24 = (v23 - 4);
      v26 = v25;
      v27 = *v20;
      v28 = *v14;
      if (*v20 < *v14)
      {
        break;
      }

      v10 = v19;
      if (v26 < v27)
      {
        *v20 = v26;
        *v24 = v27;
        v29 = *v14;
        if (*v20 < *v14)
        {
          *v14 = *v20;
          *v20 = v29;
        }

        goto LABEL_24;
      }

      v30 = 0;
LABEL_26:
      v31 = *v14;
      if (*v14 < *v20)
      {
LABEL_34:
        v33 = v14 + 1;
        v34 = v17;
        v35 = v15;
        if ((v14 - v17 + 4) == 4096)
        {
          v35 = v15 + 1;
          v34 = v15[1];
          v33 = v34;
        }

        if (v35 < v22 || v35 == v22 && v33 < v24)
        {
          while (1)
          {
            v36 = *v20;
            while (1)
            {
              v37 = *v33;
              if (*v33 >= v36)
              {
                break;
              }

              if (++v33 - v34 == 4096)
              {
                v38 = v35[1];
                ++v35;
                v34 = v38;
                v33 = v38;
              }
            }

            do
            {
              if (v24 == v21)
              {
                v39 = *(v22 - 1);
                v22 -= 8;
                v21 = v39;
                v24 = v39 + 1024;
              }

              v40 = *--v24;
              v41 = v40;
            }

            while (v40 >= v36);
            if (v35 >= v22 && (v35 != v22 || v33 >= v24))
            {
              break;
            }

            v42 = v20 == v33;
            *v33++ = v41;
            *v24 = v37;
            ++v30;
            if (v42)
            {
              v20 = v24;
            }

            if (v33 - v34 == 4096)
            {
              v43 = v35[1];
              ++v35;
              v34 = v43;
              v33 = v43;
            }
          }
        }

        if (v33 != v20)
        {
          v44 = *v33;
          if (*v20 < *v33)
          {
            *v33 = *v20;
            *v20 = v44;
            ++v30;
          }
        }

        v11 = v91;
        if (v33 == v91)
        {
          goto LABEL_4;
        }

        if (!v30)
        {
          if (v35 > v10 || (v46 = v34, v47 = v33, v48 = v35, v33 > v91) && (v46 = v34, v47 = v33, v48 = v35, v35 == v10))
          {
            v49 = v14;
            v50 = v15;
            while (1)
            {
              v51 = v49 + 1;
              if ((v49 - v17 + 4) == 4096)
              {
                v52 = v50[1];
                ++v50;
                v17 = v52;
                v51 = v52;
              }

              if (v51 == v33)
              {
                break;
              }

              v53 = *v51 < *v49;
              v49 = v51;
              if (v53)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            while (1)
            {
              v54 = v47 + 1;
              if ((v47 + 1) - v46 == 4096)
              {
                v55 = v48[1];
                ++v48;
                v46 = v55;
                v54 = v55;
              }

              if (v54 == v4)
              {
                break;
              }

              v53 = *v54 < *v47;
              v47 = v54;
              if (v53)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_4;
        }

LABEL_58:
        if (v35 > v10 || v33 > v91 && v35 == v10)
        {
          v45 = v14;
          v4 = v33;
          v9 = v35;
        }

        else
        {
          v45 = v33 + 1;
          if ((v33 + 1) - v34 == 4096)
          {
            v71 = v35[1];
            ++v35;
            v45 = v71;
          }

          v15 = v35;
        }
      }

      else
      {
        while (1)
        {
          if (v24 == v21)
          {
            v32 = *(v22 - 1);
            v22 -= 8;
            v21 = v32;
            v24 = v32 + 1024;
          }

          if (v14 == --v24)
          {
            break;
          }

          if (*v24 < *v20)
          {
            *v14 = *v24;
            *v24 = v31;
            if (v30)
            {
              v30 = 2;
            }

            else
            {
              v30 = 1;
            }

            goto LABEL_34;
          }
        }

        v45 = v14 + 1;
        if ((v14 - v17 + 4) == 4096)
        {
          v56 = v15[1];
          ++v15;
          v17 = v56;
          v45 = v56;
        }

        v11 = v91;
        v57 = v9;
        v58 = v4;
        if (v4 == v16)
        {
          v57 = (v9 - 8);
          v16 = *(v9 - 1);
          v58 = (v16 + 1024);
        }

        v60 = *(v58 - 4);
        v59 = (v58 - 4);
        v61 = v60;
        if (v31 >= v60)
        {
          while (v45 != v59)
          {
            v69 = *v45;
            if (v31 < *v45)
            {
              *v45++ = v61;
              *v59 = v69;
              if ((v45 - v17) == 4096)
              {
                v72 = v15[1];
                ++v15;
                v17 = v72;
                v45 = v72;
              }

              goto LABEL_83;
            }

            if ((++v45 - v17) == 4096)
            {
              v70 = v15[1];
              ++v15;
              v17 = v70;
              v45 = v70;
            }
          }

          goto LABEL_4;
        }

LABEL_83:
        if (v45 == v59)
        {
          goto LABEL_4;
        }

        while (1)
        {
          v62 = *v14;
          while (1)
          {
            v63 = *v45;
            if (v62 < *v45)
            {
              break;
            }

            if ((++v45 - v17) == 4096)
            {
              v64 = v15[1];
              ++v15;
              v17 = v64;
              v45 = v64;
            }
          }

          do
          {
            if (v59 == v16)
            {
              v65 = *--v57;
              v16 = v65;
              v59 = v65 + 1024;
            }

            v66 = *--v59;
            v67 = v66;
          }

          while (v62 < v66);
          if (v15 >= v57 && (v15 != v57 || v45 >= v59))
          {
            break;
          }

          *v45++ = v67;
          *v59 = v63;
          if ((v45 - v17) == 4096)
          {
            v68 = v15[1];
            ++v15;
            v17 = v68;
            v45 = v68;
          }
        }

        if (v15 > v10 || v45 > v91 && v15 == v10)
        {
          goto LABEL_4;
        }
      }

      v14 = v45;
      if (v4 == v11)
      {
        goto LABEL_4;
      }
    }

    v10 = v19;
    if (v26 >= v27)
    {
      *v14 = v27;
      *v20 = v28;
      if (*v24 >= v28)
      {
LABEL_24:
        v30 = 1;
        goto LABEL_26;
      }

      *v20 = *v24;
    }

    else
    {
      *v14 = v26;
    }

    *v24 = v28;
    goto LABEL_24;
  }

LABEL_4:
  if (v92)
  {
    return *v11;
  }

  v12 = v11;
  if (v5 != v11)
  {
    v12 = v5;
    while (1)
    {
      if ((++v5 - v7) == 4096)
      {
        v73 = v6[1];
        ++v6;
        v7 = v73;
        v5 = v73;
      }

      if (v5 == v11)
      {
        break;
      }

      if (*v12 < *v5)
      {
        v12 = v5;
      }
    }
  }

  return *v12 + ((*v11 - *v12) * 0.5);
}

uint64_t *sub_19B6C40F4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 2);
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
      v5 = *result;
    }

    else
    {
      result += v3 >> 10;
      v4 = *result;
    }
  }

  return result;
}

void sub_19B6C4148(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_19B6C3828((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_19B6C4224(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_19B42AD10(a1);
}

void sub_19B6C42D0(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x100)
  {
    a2 = 1;
  }

  if (v3 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void sub_19B6C432C(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_19B6C3828((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t *sub_19B6C4408(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_19B6C44E8(unint64_t a1)
{
  if (a1 > 0x60)
  {
    return 4;
  }

  else
  {
    return qword_19B7BBE30[a1];
  }
}

void sub_19B6C4784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C47D0(uint64_t a1, CLConnectionMessage **a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v6, v5, 0);
  v10 = *(a1 + 32);
  if (*(v10 + 40))
  {
    v11 = *a2;
    if (!*a2)
    {
      v95 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v95, v96, *(a1 + 40), *(a1 + 32), @"CMPedometer.mm", 111, @"Empty pedometer update.");
      v11 = *a2;
    }

    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v11, v9);
    if (!DictionaryOfClasses)
    {
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3AF90);
      }

      v24 = qword_1ED71C7F0;
      if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Empty pedometer dictionary.", buf, 2u);
      }

      v25 = sub_19B420058();
      if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7F8 != -1)
        {
          dispatch_once(&qword_1ED71C7F8, &unk_1F0E3AF90);
        }

        LOWORD(v101) = 0;
        v26 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      goto LABEL_46;
    }

    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMPedometerDataObject");
    v20 = objc_msgSend_copy(*(*(a1 + 32) + 40), v18, v19);
    v21 = *(*(a1 + 32) + 16);
    if (v15)
    {
      v22 = v100;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v23 = sub_19B6C4F68;
    }

    else
    {
      v22 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v23 = sub_19B6C4FE0;
      v15 = v17;
    }

    v22[2] = v23;
    v22[3] = &unk_1E7532B90;
    v22[4] = v15;
    v22[5] = v20;
    dispatch_async(v21, v22);
    v10 = *(a1 + 32);
  }

  v27 = *(v10 + 32);
  if (v27)
  {
    v28 = _Block_copy(v27);
    if (*a2 && (v29 = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
    {
      v31 = v29;
      v32 = objc_msgSend_objectForKeyedSubscript_(v29, v30, @"CMErrorMessage");
      v34 = objc_msgSend_objectForKeyedSubscript_(v31, v33, @"CMPedometerDataObject");
      if (v32)
      {
        v37 = *(*(a1 + 32) + 16);
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = sub_19B6C5064;
        v98[3] = &unk_1E7532B90;
        v98[4] = v32;
        v98[5] = v28;
        v38 = v98;
LABEL_44:
        dispatch_async(v37, v38);
LABEL_45:
        _Block_release(v28);
        goto LABEL_46;
      }

      v42 = v34;
      if (v34)
      {
        if (*(*(a1 + 32) + 48) == -1)
        {
          v43 = objc_msgSend_numberOfSteps(v34, v35, v36);
          *(*(a1 + 32) + 48) = objc_msgSend_integerValue(v43, v44, v45);
          v48 = objc_msgSend_numberOfPushes(v42, v46, v47);
          *(*(a1 + 32) + 56) = objc_msgSend_integerValue(v48, v49, v50);
          v53 = objc_msgSend_distance(v42, v51, v52);
          objc_msgSend_doubleValue(v53, v54, v55);
          *(*(a1 + 32) + 80) = v56;
          v59 = objc_msgSend_floorsAscended(v42, v57, v58);
          *(*(a1 + 32) + 96) = objc_msgSend_intValue(v59, v60, v61);
          v64 = objc_msgSend_floorsDescended(v42, v62, v63);
          *(*(a1 + 32) + 104) = objc_msgSend_intValue(v64, v65, v66);
          active = objc_msgSend_activeTime(v42, v67, v68);
          objc_msgSend_doubleValue(active, v70, v71);
          *(*(a1 + 32) + 112) = v72;
          v75 = objc_msgSend_elevationAscended(v42, v73, v74);
          *(*(a1 + 32) + 160) = objc_msgSend_intValue(v75, v76, v77);
          v80 = objc_msgSend_elevationDescended(v42, v78, v79);
          *(*(a1 + 32) + 168) = objc_msgSend_intValue(v80, v81, v82);
        }

        v83 = objc_msgSend_numberOfSteps(v42, v35, v36);
        if (!objc_msgSend_integerValue(v83, v84, v85))
        {
          v88 = objc_msgSend_numberOfPushes(v42, v86, v87);
          if (!objc_msgSend_integerValue(v88, v89, v90))
          {
            *(*(a1 + 32) + 48) = 0;
            *(*(a1 + 32) + 56) = 0;
            *(*(a1 + 32) + 80) = 0;
            *(*(a1 + 32) + 96) = 0;
            *(*(a1 + 32) + 104) = 0;
            *(*(a1 + 32) + 112) = 0;
            *(*(a1 + 32) + 160) = 0;
            *(*(a1 + 32) + 168) = 0;
          }
        }

        v91 = *(a1 + 32);
        v37 = *(v91 + 16);
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = sub_19B6C50DC;
        v97[3] = &unk_1E7532C08;
        v97[4] = v42;
        v97[5] = v91;
        v97[6] = v28;
        v38 = v97;
        goto LABEL_44;
      }

      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v93 = qword_1EAFE2818;
      if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v104 = v31;
        _os_log_impl(&dword_19B41C000, v93, OS_LOG_TYPE_FAULT, "Unable to parse message (%{public}@) when starting updates to queue", buf, 0xCu);
      }

      v94 = sub_19B420058();
      if ((*(v94 + 160) & 0x80000000) != 0 && (*(v94 + 164) & 0x80000000) != 0 && (*(v94 + 168) & 0x80000000) != 0 && !*(v94 + 152))
      {
        goto LABEL_45;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v101 = 138543362;
      v102 = v31;
    }

    else
    {
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v39 = qword_1EAFE2818;
      if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "Unable to parse message when starting updates to queue!", buf, 2u);
      }

      v40 = sub_19B420058();
      if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
      {
        goto LABEL_45;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      LOWORD(v101) = 0;
    }

    v41 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }

    goto LABEL_45;
  }

LABEL_46:
  v92 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6C4F68(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6C4FE0(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 1);
  result = (*(v2 + 16))(v2, v3, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6C5064(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B6C50DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_numberOfSteps(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_integerValue(v5, v6, v7) - *(*(a1 + 40) + 48) + *(*(a1 + 40) + 64);
  v11 = objc_msgSend_numberOfPushes(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_integerValue(v11, v12, v13);
  v17 = *(a1 + 40);
  v18 = v17[8];
  v19 = v14 - v17[7];
  v20 = v17[9];
  v21 = v19 + v20;
  v22 = (v19 + v20);
  if (v18 < v8 || v22 > v20)
  {
    v123 = v2;
    v24 = objc_msgSend_distance(*(a1 + 32), v15, v16);
    objc_msgSend_doubleValue(v24, v25, v26);
    v28 = v27;
    v29 = *(a1 + 40);
    v31 = *(v29 + 80);
    v30 = *(v29 + 88);
    v34 = objc_msgSend_floorsAscended(*(a1 + 32), v32, v33);
    v37 = objc_msgSend_intValue(v34, v35, v36);
    v38 = *(a1 + 40);
    v40 = *(v38 + 96);
    v39 = *(v38 + 100);
    v43 = objc_msgSend_floorsDescended(*(a1 + 32), v41, v42);
    v118 = objc_msgSend_intValue(v43, v44, v45);
    v46 = *(a1 + 40);
    v48 = *(v46 + 104);
    v47 = *(v46 + 108);
    active = objc_msgSend_activeTime(*(a1 + 32), v49, v50);
    objc_msgSend_doubleValue(active, v52, v53);
    v55 = v54;
    v56 = *(a1 + 40);
    v58 = *(v56 + 112);
    v57 = *(v56 + 120);
    v61 = objc_msgSend_elevationAscended(*(a1 + 32), v59, v60);
    v114 = objc_msgSend_intValue(v61, v62, v63);
    v64 = *(a1 + 40);
    v112 = *(v64 + 160);
    v113 = *(v64 + 164);
    v67 = objc_msgSend_elevationDescended(*(a1 + 32), v65, v66);
    v111 = objc_msgSend_intValue(v67, v68, v69);
    v70 = *(a1 + 40);
    v109 = *(v70 + 168);
    v110 = *(v70 + 172);
    StepTime = objc_msgSend_firstStepTime(*(a1 + 32), v71, v72);
    v122 = [CMPedometerData alloc];
    v121 = *(*(a1 + 40) + 128);
    v76 = objc_msgSend_endDate(*(a1 + 32), v74, v75);
    objc_msgSend_timeIntervalSinceReferenceDate(v76, v77, v78);
    v82 = v81;
    if (*(*(a1 + 40) + 137) == 1)
    {
      v120 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v79, (v37 - v40 + v39));
      if (*(*(a1 + 40) + 137))
      {
        v119 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v79, (v118 - v48 + v47));
        goto LABEL_10;
      }
    }

    else
    {
      v120 = 0;
    }

    v119 = 0;
LABEL_10:
    v117 = objc_msgSend_recordId(*(a1 + 32), v79, v80);
    if (*(*(a1 + 40) + 138) == 1)
    {
      v116 = objc_msgSend_currentPace(*(a1 + 32), v83, v84);
      if (*(*(a1 + 40) + 138))
      {
        v115 = objc_msgSend_currentCadence(*(a1 + 32), v83, v84);
        if (!StepTime)
        {
LABEL_13:
          v85 = 0.0;
          goto LABEL_17;
        }

LABEL_16:
        objc_msgSend_timeIntervalSinceReferenceDate(StepTime, v83, v84);
        v85 = v86;
LABEL_17:
        v87 = v28 - v31;
        if (*(*(a1 + 40) + 138) == 1)
        {
          v88 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v83, v84, v55 - v58 + v57);
        }

        else
        {
          v88 = 0;
        }

        v89 = v87 + v30;
        v90 = objc_msgSend_sourceId(*(a1 + 32), v83, v84);
        v91 = MEMORY[0x1E696AD98];
        isOdometerDistance = objc_msgSend_isOdometerDistance(*(a1 + 32), v92, v93);
        v96 = objc_msgSend_numberWithBool_(v91, v95, isOdometerDistance);
        v97 = MEMORY[0x1E696AD98];
        isOdometerPace = objc_msgSend_isOdometerPace(*(a1 + 32), v98, v99);
        v103 = objc_msgSend_numberWithBool_(v97, v101, isOdometerPace);
        v104 = *(a1 + 40);
        v105 = *(v104 + 156);
        if (*(v104 + 176) == 1)
        {
          v106 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v102, (v114 - v112 + v113));
          v104 = *(a1 + 40);
          if (*(v104 + 176))
          {
            v107 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v102, (v111 - v109 + v110));
            v104 = *(a1 + 40);
LABEL_25:
            v108 = objc_msgSend_initWithStartDate_endDate_steps_distance_floorsAscended_floorsDescended_recordID_currentPace_currentCadence_firstStepTime_activeTime_sourceId_isOdometerDistance_isOdometerPace_pushes_workoutType_elevationAscended_elevationDescended_distanceSource_(v122, v102, v8, v120, v119, v117, v116, v115, v121, v82, v89, v85, v88, v90, v96, v103, __PAIR64__(v105, v21), v106, v107, *(v104 + 180));
            (*(*(a1 + 48) + 16))();
            v2 = v123;
            goto LABEL_26;
          }
        }

        else
        {
          v106 = 0;
        }

        v107 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v116 = 0;
    }

    v115 = 0;
    if (!StepTime)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_26:

  objc_autoreleasePoolPop(v2);
}

void sub_19B6C5460(uint64_t a1, CLConnectionMessage **a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144) && (*(v2 + 152) & 1) == 0)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    v13 = _Block_copy(*(*(a1 + 32) + 144));
    if (DictionaryOfClasses)
    {
      if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage"))
      {
        v15 = *(*(a1 + 32) + 16);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_19B6C58B0;
        v22[3] = &unk_1E7532B68;
        v22[4] = DictionaryOfClasses;
        v22[5] = v13;
        v16 = v22;
      }

      else if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMPedometerEventKey"))
      {
        v18 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v17, @"CMPedometerEventKey");
        v19 = *(*(a1 + 32) + 16);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_19B6C5AF8;
        v21[3] = &unk_1E7532B90;
        v21[4] = v18;
        v21[5] = v13;
        v16 = v21;
        v15 = v19;
      }

      else
      {
        v15 = *(*(a1 + 32) + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B6C5B10;
        block[3] = &unk_1E7532B40;
        block[4] = v13;
        v16 = block;
      }
    }

    else
    {
      v15 = *(*(a1 + 32) + 16);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B6C56CC;
      v23[3] = &unk_1E7532B40;
      v23[4] = v13;
      v16 = v23;
    }

    dispatch_async(v15, v16);
    _Block_release(v13);
  }
}

uint64_t sub_19B6C56CC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v3 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "nil pedometer event dictionary received", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6C58B0(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, @"CMErrorMessage");
  v7 = objc_msgSend_integerValue(v4, v5, v6);
  objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"CMErrorDomain", v7, 0);
  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v9 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, @"CMErrorMessage");
    *buf = 134349056;
    v23 = objc_msgSend_integerValue(v11, v12, v13);
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Error pedometer event, %{public}ld", buf, 0xCu);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v15, @"CMErrorMessage");
    objc_msgSend_integerValue(v16, v17, v18);
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6C5B10(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v3 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognizable pedometer event dictionary", buf, 2u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6C5CF4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v6 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMPedometer client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedometerProxy init]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B6C6024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C61C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C61F0(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleQueryResponse_onQueue_withHandler_(v3, a2, &v5, a1[5], a1[6]);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B6C624C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C6368(void *a1, const char *a2, uint64_t a3)
{
  isStepCountingAvailable = objc_msgSend_isStepCountingAvailable(CMPedometer, a2, a3);
  v7 = a1[4];
  if (isStepCountingAvailable)
  {
    *(v7 + 48) = -1;
    *(a1[4] + 136) = 0;
    v8 = a1[4];
    v9 = a1[5];
    v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
    v11 = a1[4];
    v12 = *(v11 + 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19B6C64F4;
    v16[3] = &unk_1E7534498;
    v13 = a1[6];
    v16[4] = v11;
    v16[5] = v13;
    objc_msgSend__internalQueryPedometerDataFromDate_toDate_onQueue_withHandler_(v8, v14, v9, v10, v12, v16);
  }

  else
  {
    v15 = *(v7 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6C6490;
    block[3] = &unk_1E7532B40;
    block[4] = a1[6];
    dispatch_async(v15, block);
  }
}

uint64_t sub_19B6C6490(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 104, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B6C64F4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v6 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      buf = 138543362;
      buf_4 = objc_msgSend_localizedDescription(a4, v7, v8);
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Error occurred: %{public}@", &buf, 0xCu);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      LODWORD(v66[0]) = 138543362;
      *(v66 + 4) = objc_msgSend_localizedDescription(a4, v10, v11);
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy _startPedometerUpdatesFromDate:withHandler:]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != &buf)
      {
        free(v12);
      }
    }

    v13 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6C6934;
    block[3] = &unk_1E7532B90;
    v14 = *(a1 + 40);
    block[4] = a4;
    block[5] = v14;
    dispatch_async(v13, block);
  }

  else if ((*(*(a1 + 32) + 136) & 1) == 0)
  {
    v16 = objc_msgSend_numberOfSteps(a2, a2, a3);
    *(*(a1 + 32) + 64) = objc_msgSend_integerValue(v16, v17, v18);
    v21 = objc_msgSend_numberOfPushes(a2, v19, v20);
    *(*(a1 + 32) + 72) = objc_msgSend_integerValue(v21, v22, v23);
    v26 = objc_msgSend_distance(a2, v24, v25);
    objc_msgSend_doubleValue(v26, v27, v28);
    *(*(a1 + 32) + 88) = v29;
    v32 = objc_msgSend_floorsAscended(a2, v30, v31);
    *(*(a1 + 32) + 100) = objc_msgSend_intValue(v32, v33, v34);
    v37 = objc_msgSend_floorsDescended(a2, v35, v36);
    *(*(a1 + 32) + 108) = objc_msgSend_intValue(v37, v38, v39);
    started = objc_msgSend_startDate(a2, v40, v41);
    objc_msgSend_timeIntervalSinceReferenceDate(started, v43, v44);
    *(*(a1 + 32) + 128) = v45;
    v48 = objc_msgSend_elevationAscended(a2, v46, v47);
    *(*(a1 + 32) + 164) = objc_msgSend_intValue(v48, v49, v50);
    v53 = objc_msgSend_elevationDescended(a2, v51, v52);
    *(*(a1 + 32) + 172) = objc_msgSend_intValue(v53, v54, v55);
    v57 = *(a1 + 32);
    if (v57[8] || v57[9])
    {
      v58 = v57[2];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = sub_19B6C694C;
      v62[3] = &unk_1E7532B90;
      v59 = *(a1 + 40);
      v62[4] = a2;
      v62[5] = v59;
      dispatch_async(v58, v62);
      v57 = *(a1 + 32);
    }

    v60 = v57[4];
    if (!v60)
    {
      v64 = @"kCLConnectionMessageSubscribeKey";
      v65 = MEMORY[0x1E695E118];
      v66[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v56, &v65, &v64, 1);
      sub_19B6CA5DC();
    }

    _Block_release(v60);
    *(*(a1 + 32) + 32) = _Block_copy(*(a1 + 40));
  }

  v61 = *MEMORY[0x1E69E9840];
}

void sub_19B6C6908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C69D8(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B6CA5DC();
}

void sub_19B6C6AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C6FC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = objc_msgSend_integerValue(*(a1 + 40), a2, a3);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v7, @"CMErrorDomain", v6, 0);
  v9 = *(v5 + 16);

  return v9(v5, 0, v4, v8);
}

void sub_19B6C7048(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = a1[4];
  (*(a1[6] + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19B6C709C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v5 = *(v2 + 16);

  return v5(v2, 0, v3, v4);
}

void sub_19B6C7290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C7338(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = @"CMPedometerDataObject";
  v4[0] = v2;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B45280C();
}

void sub_19B6C7470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C749C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 1);
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleRecordQueryResponse_withHandler_shouldStartUpdates_(v3, a2, &v5, *(a1 + 40), *(a1 + 48));
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

void sub_19B6C74FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C77AC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B6C7810(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = MEMORY[0x1E696ABC0];
  v6 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(v5, v7, @"CMErrorDomain", v6, 0);
  result = (*(v4 + 16))(v4, 0, v8);
  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);

    return MEMORY[0x1EEE66B58](v10, sel__subscribeToCumulativePedometerUpdates_, v11);
  }

  return result;
}

unint64_t sub_19B6C78B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    v6 = objc_msgSend_count(*(a1 + 32), v4, v5);
    v9 = objc_msgSend_maxPedometerEntries(CMPedometerData, v7, v8);
    result = objc_msgSend_unsignedIntegerValue(v9, v10, v11);
    if (v6 < result)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);

      return MEMORY[0x1EEE66B58](v12, sel__subscribeToCumulativePedometerUpdates_, v13);
    }
  }

  return result;
}

uint64_t sub_19B6C793C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  result = (*(v3 + 16))(v3, 0, v4);
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v6, sel__subscribeToCumulativePedometerUpdates_, v7);
  }

  return result;
}

void sub_19B6C7A38(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B6C0F30();
}

void sub_19B6C7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C7BDC(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B6C0F30();
}

void sub_19B6C7CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_19B6C7F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6C8380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  if (a36)
  {
    sub_19B41FFEC(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6C83B4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, 0, v3);
}

void sub_19B6C841C(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage");
    v6 = objc_msgSend_objectForKeyedSubscript_(a2, v5, @"CMPedometerCalibrationBins");
    v8 = objc_msgSend_objectForKeyedSubscript_(a2, v7, @"CLMotionSyncStoreLastUpdate");
    v9 = *(*(a1 + 32) + 16);
    if (v4)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B6C8728;
      v20[3] = &unk_1E7532B90;
      v10 = *(a1 + 40);
      v20[4] = v4;
      v20[5] = v10;
      v11 = v20;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6C87A4;
      block[3] = &unk_1E75344C0;
      v15 = *(a1 + 40);
      block[5] = v8;
      block[6] = v15;
      block[4] = v6;
      v11 = block;
    }
  }

  else
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v12 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Unable to parse message when checking for availability!", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v18 = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy _queryPedometerCalibrationBinsWithHandler:forType:forRemote:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v9 = *(*(a1 + 32) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B6C87C0;
    v17[3] = &unk_1E7532B40;
    v17[4] = *(a1 + 40);
    v11 = v17;
  }

  dispatch_async(v9, v11);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6C8728(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, 0, v7);
}

uint64_t sub_19B6C87C0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, 0, v3);
}

void sub_19B6C8928(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C899C;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

uint64_t sub_19B6C8CCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B6C8D54;
  v9[3] = &unk_1E7534560;
  v9[4] = *(a1 + 56);
  return objc_msgSend__queryPedometerDataFromDate_toDate_withHandler_(v4, v7, v5, v6, v9);
}

uint64_t sub_19B6C8E80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v4, sel__startPedometerUpdatesFromDate_withHandler_, v5);
}

uint64_t sub_19B6C8F34(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopPedometerUpdates, v4);
}

uint64_t sub_19B6C90C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = objc_msgSend_pedometerProxy(*(a1 + 40), a2, a3);
  if (v4)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = objc_msgSend__pedometerDataWithRecordID_(*(a1 + 40), v5, 0);
  }

  v8 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v6, sel__startPedometerUpdatesSinceDataRecord_withHandler_, v7);
}

uint64_t sub_19B6C93F4(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D400 = result;
  return result;
}

uint64_t sub_19B6C94F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startPedometerEventUpdatesWithHandler_, v5);
}

uint64_t sub_19B6C95A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopPedometerEventUpdates, v4);
}

uint64_t sub_19B6CA2FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

uint64_t sub_19B6CA3B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

uint64_t sub_19B6CA474(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

uint64_t sub_19B6CA530(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pedometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__queryPedometerCalibrationBinsWithHandler_forType_forRemote_, v5);
}

os_log_t sub_19B6CA57C()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED71C7F0 = result;
  return result;
}

os_log_t sub_19B6CA5AC()
{
  result = os_log_create("com.apple.locationd.Motion", "Pedometer");
  qword_1EAFE2818 = result;
  return result;
}

void *sub_19B6CA650(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B6CA6AC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B6CA6AC(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6CA704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMotionActivity::remapActivityTypeForWheelchairUsers(uint64_t result)
{
  if (result <= 0x3E && ((1 << result) & 0x6000020000000110) != 0)
  {
    return 11805;
  }

  return result;
}

uint64_t CLMotionActivity::isTypeIndoorActivity(int a1)
{
  result = 1;
  if (a1 <= 2100)
  {
    if (((a1 - 2010) > 0x3D || ((1 << (a1 + 38)) & 0x2088004000005001) == 0) && a1 != 64)
    {
      return 0;
    }
  }

  else if (a1 <= 12149)
  {
    if (((a1 - 2101) > 0x31 || ((1 << (a1 - 53)) & 0x2000000000011) == 0) && a1 != 3015)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 15359)
    {
      if (a1 == 12150)
      {
        return result;
      }

      v3 = 15110;
    }

    else
    {
      if (a1 == 15360 || a1 == 17150)
      {
        return result;
      }

      v3 = 19030;
    }

    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CLMotionActivity::indexToActivityType(CLMotionActivity *this)
{
  if (this <= 0xA)
  {
    return (this + 1);
  }

  if ((this - 11) > 0x3D)
  {
    return 0;
  }

  return dword_19B7BC138[this - 11];
}

uint64_t CLMotionActivity::activityTypeToIndex(int a1)
{
  if (a1 > 12149)
  {
    if (a1 > 15659)
    {
      if (a1 > 18239)
      {
        if (a1 > 90121)
        {
          if (a1 > 515620)
          {
            if (a1 == 515621)
            {
              return 65;
            }

            if (a1 == 515652)
            {
              return 58;
            }

            v1 = a1 == 519150;
            v2 = 42;
            goto LABEL_104;
          }

          v29 = 90122;
          v30 = 71;
          v31 = a1 == 90603;
          v32 = 30;
        }

        else
        {
          if (a1 > 19089)
          {
            if (a1 == 19090)
            {
              return 41;
            }

            if (a1 == 19150)
            {
              return 31;
            }

            v1 = a1 == 90121;
            v2 = 72;
            goto LABEL_104;
          }

          v29 = 18240;
          v30 = 29;
          v31 = a1 == 19030;
          v32 = 52;
        }

        goto LABEL_156;
      }

      if (a1 > 15732)
      {
        if (a1 > 18049)
        {
          if (a1 == 18050)
          {
            return 40;
          }

          if (a1 == 18100)
          {
            return 43;
          }

          v1 = a1 == 18200;
          v2 = 38;
          goto LABEL_104;
        }

        v29 = 15733;
        v30 = 63;
        v31 = a1 == 17150;
        v32 = 28;
LABEL_156:
        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = -1;
        }

        if (a1 == v29)
        {
          return v30;
        }

        else
        {
          return v33;
        }
      }

      v18 = 15674;
      if (a1 == 15711)
      {
        v26 = 60;
      }

      else
      {
        v26 = -1;
      }

      if (a1 == 15675)
      {
        v20 = 56;
      }

      else
      {
        v20 = v26;
      }

      v21 = 15660;
      v22 = 67;
      v23 = a1 == 15670;
      v24 = 35;
      goto LABEL_128;
    }

    if (a1 > 15329)
    {
      if (a1 > 15559)
      {
        if (a1 <= 15609)
        {
          v29 = 15560;
          v30 = 49;
          v31 = a1 == 15592;
          v32 = 51;
          goto LABEL_156;
        }

        if (a1 == 15610)
        {
          return 44;
        }

        if (a1 == 15620)
        {
          return 64;
        }

        v1 = a1 == 15652;
        v2 = 61;
        goto LABEL_104;
      }

      v18 = 15359;
      if (a1 == 15460)
      {
        v25 = 50;
      }

      else
      {
        v25 = -1;
      }

      if (a1 == 15360)
      {
        v20 = 53;
      }

      else
      {
        v20 = v25;
      }

      v21 = 15330;
      v22 = 62;
      v23 = a1 == 15350;
      v24 = 54;
    }

    else
    {
      if (a1 > 15109)
      {
        if (a1 <= 15229)
        {
          v29 = 15110;
          v30 = 39;
          v31 = a1 == 15150;
          v32 = 66;
          goto LABEL_156;
        }

        if (a1 == 15230)
        {
          return 47;
        }

        if (a1 == 15250)
        {
          return 48;
        }

        v1 = a1 == 15255;
        v2 = 27;
LABEL_104:
        if (v1)
        {
          return v2;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      v18 = 15054;
      if (a1 == 15100)
      {
        v19 = 69;
      }

      else
      {
        v19 = -1;
      }

      if (a1 == 15055)
      {
        v20 = 55;
      }

      else
      {
        v20 = v19;
      }

      v21 = 12150;
      v22 = 26;
      v23 = a1 == 15030;
      v24 = 57;
    }

LABEL_128:
    if (v23)
    {
      v27 = v24;
    }

    else
    {
      v27 = -1;
    }

    if (a1 == v21)
    {
      v27 = v22;
    }

    if (a1 <= v18)
    {
      return v27;
    }

    else
    {
      return v20;
    }
  }

  if (a1 > 64)
  {
    if (a1 > 2064)
    {
      if (a1 <= 2104)
      {
        if (a1 == 2101)
        {
          v28 = 33;
        }

        else
        {
          v28 = -1;
        }

        if (a1 == 2071)
        {
          v6 = 22;
        }

        else
        {
          v6 = v28;
        }

        if (a1 == 2068)
        {
          v11 = 68;
        }

        else
        {
          v11 = -1;
        }

        if (a1 == 2065)
        {
          v11 = 21;
        }

        v12 = a1 <= 2070;
      }

      else
      {
        if (a1 == 11805)
        {
          v13 = 25;
        }

        else
        {
          v13 = -1;
        }

        if (a1 == 3016)
        {
          v14 = 70;
        }

        else
        {
          v14 = v13;
        }

        if (a1 == 3015)
        {
          v6 = 24;
        }

        else
        {
          v6 = v14;
        }

        if (a1 == 2150)
        {
          v11 = 23;
        }

        else
        {
          v11 = -1;
        }

        if (a1 == 2105)
        {
          v11 = 36;
        }

        v12 = a1 <= 3014;
      }
    }

    else
    {
      if (a1 == 2061)
      {
        v4 = 20;
      }

      else
      {
        v4 = -1;
      }

      if (a1 == 2048)
      {
        v5 = 19;
      }

      else
      {
        v5 = v4;
      }

      if (a1 == 2024)
      {
        v6 = 34;
      }

      else
      {
        v6 = v5;
      }

      if (a1 == 2022)
      {
        v7 = 32;
      }

      else
      {
        v7 = -1;
      }

      if (a1 == 2020)
      {
        v8 = 18;
      }

      else
      {
        v8 = v7;
      }

      if (a1 <= 2023)
      {
        v6 = v8;
      }

      if (a1 == 2010)
      {
        v9 = 17;
      }

      else
      {
        v9 = -1;
      }

      if (a1 == 100)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      if (a1 == 66)
      {
        v11 = 59;
      }

      else
      {
        v11 = -1;
      }

      if (a1 == 65)
      {
        v11 = 46;
      }

      if (a1 > 99)
      {
        v11 = v10;
      }

      v12 = a1 <= 2019;
    }
  }

  else
  {
    if (a1 <= 40)
    {
      if ((a1 - 1) >= 0xB)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (a1 - 1);
      }
    }

    if (a1 == 64)
    {
      v15 = 45;
    }

    else
    {
      v15 = -1;
    }

    if (a1 == 63)
    {
      v6 = 37;
    }

    else
    {
      v6 = v15;
    }

    if (a1 == 62)
    {
      v16 = 15;
    }

    else
    {
      v16 = -1;
    }

    if (a1 == 61)
    {
      v17 = 14;
    }

    else
    {
      v17 = v16;
    }

    if (a1 <= 62)
    {
      v6 = v17;
    }

    if (a1 == 56)
    {
      v11 = 13;
    }

    else
    {
      v11 = -1;
    }

    if (a1 == 52)
    {
      v11 = 12;
    }

    if (a1 == 41)
    {
      v11 = 11;
    }

    v12 = a1 <= 60;
  }

  if (v12)
  {
    return v11;
  }

  else
  {
    return v6;
  }
}

void sub_19B6CB088(uint64_t a1, int *a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1 <= 0.0 || (*(a1 + 82) & 0x100) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "Device motion not initialized, returning", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
      }

      *v27 = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService_Predict::applyConstantRotationRate(CFTimeInterval, CLSensorFusionService::Sample &, CMError &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = 109;
    goto LABEL_16;
  }

  if (v5 <= a3)
  {
    v16 = a3 - v5;
    if (v16 <= 2.0)
    {
      v20 = *(a1 + 44) * v16;
      *v27 = vmul_n_f32(*(a1 + 36), v16);
      *&v27[8] = v20;
      *v21.i64 = sub_19B66C264(buf, v27);
      v22.f32[0] = sub_19B66BF70(buf, (a1 + 8), v21);
      *v27 = __PAIR64__(v23, v22.u32[0]);
      *&v27[8] = v24;
      *&v27[12] = v25;
      sub_19B41E130(v27, v22);
      *a1 = a3;
      *(a1 + 8) = *v27;
      goto LABEL_17;
    }

    v26 = a3 - v5;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v17 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v29 = v26;
      v30 = 2048;
      v31 = 2.0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "Prediction interval above limit,interval,%f,limit,%f", buf, 0x16u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    *v27 = 134218240;
    *&v27[4] = v26;
    *&v27[12] = 2048;
    *&v27[14] = 0x4000000000000000;
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      v13 = *a1;
      *buf = 134218240;
      v29 = v13;
      v30 = 2048;
      v31 = a3;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "Target prediction timestamp must be in the future,lastSample.timestamp,%f,targetTimestamp,%f", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29A20);
    }

    v15 = *a1;
    *v27 = 134218240;
    *&v27[4] = v15;
    *&v27[12] = 2048;
    *&v27[14] = a3;
  }

  v19 = _os_log_send_and_compose_impl();
  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService_Predict::applyConstantRotationRate(CFTimeInterval, CLSensorFusionService::Sample &, CMError &)", "CoreLocation: %s\n", v19);
  if (v19 != buf)
  {
    free(v19);
  }

LABEL_44:
  v10 = 107;
LABEL_16:
  *a2 = v10;
LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B6CB6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B6CB6EC(uint64_t a1, CLConnectionMessage **a2)
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

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
  }

  v14 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBikeSensorInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B6CB914(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMBikeSensor client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBikeSensorInternal init]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B6CBCA0(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  objc_msgSend_setWithObjects_(v2, v5, v3, v4, 0);
  v6 = *(a1 + 32);
  v8 = @"CMFitnessMachineDataRecord";
  v9[0] = v6;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v9, &v8, 1);
  sub_19B444678();
}

void sub_19B6CBE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a21)
  {
    sub_19B41FFEC(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6CBE38(uint64_t a1, CLConnectionMessage **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v10 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Error feeding external fitness data: the response is nill", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 == -1)
    {
LABEL_31:
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBikeSensorInternal _feedBikeSensorData:]_block_invoke", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

      goto LABEL_33;
    }

LABEL_40:
    dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    goto LABEL_31;
  }

  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, *(a1 + 32));
  if (!DictionaryOfClasses)
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v12 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Error feeding external fitness data content. There is not any expected classes (NSString, CMFitnessMachineData).", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      goto LABEL_33;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v5 = DictionaryOfClasses;
  if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v4, @"CMErrorMessage"))
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = objc_msgSend_objectForKeyedSubscript_(v5, v7, @"CMErrorMessage");
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Error feeding external fitness data, %@", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      objc_msgSend_objectForKeyedSubscript_(v5, v9, @"CMErrorMessage");
      goto LABEL_31;
    }
  }

LABEL_33:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6CC600(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D410 = result;
  return result;
}

os_log_t sub_19B6CC638()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

void sub_19B6CC668(uint64_t a1, double *a2)
{
  v2 = *a2;
  *(a1 + 8) = *a2;
  v3 = 1.0 / v2;
  *(a1 + 16) = v3;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 32) = &unk_1F0E33E90;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0E31E60;
  *(a1 + 56) = 256;
  *(a1 + 60) = 0;
  *(a1 + 64) = &unk_1F0E33E90;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = &unk_1F0E33E90;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = &unk_1F0E33E90;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F0E33E90;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = &unk_1F0E33E70;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_1F0E33E90;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 244) = 0;
  *(a1 + 256) = &unk_1F0E33E90;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = &unk_1F0E33E90;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 3;
  *(a1 + 332) = 0;
  *(a1 + 324) = 0;
  *(a1 + 336) = &unk_1F0E34498;
  *(a1 + 344) = &unk_1F0E33E90;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0;
  *(a1 + 368) = &unk_1F0E33E90;
  *(a1 + 376) = 0x3F80000000000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = &unk_1F0E33E90;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0x3FF0000000000000;
  *(a1 + 448) = &unk_1F0E33E90;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_1F0E33E90;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = &unk_1F0E33E90;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  v4 = v3;
  v5 = vcvtad_u64_f64(v4 * 0.125);
  *(a1 + 536) = &unk_1F0E32BF8;
  *(a1 + 544) = v5;
  *(a1 + 552) = &unk_1F0E32728;
  *(a1 + 560) = v5;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 624) = &unk_1F0E32728;
  *(a1 + 632) = v5;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = &unk_1F0E32728;
  *(a1 + 704) = v5;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0;
  v6 = vcvtad_u64_f64(v4 * 0.625);
  *(a1 + 768) = &unk_1F0E32BF8;
  *(a1 + 776) = v6;
  *(a1 + 784) = &unk_1F0E32728;
  *(a1 + 792) = v6;
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 856) = &unk_1F0E32728;
  *(a1 + 864) = v6;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 928) = &unk_1F0E32728;
  *(a1 + 936) = v6;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  v7 = vcvtad_u64_f64(*(a1 + 16) * 0.75);
  *(a1 + 1008) = &unk_1F0E32728;
  *(a1 + 1016) = v7;
  *(a1 + 1072) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1080) = &unk_1F0E32728;
  *(a1 + 1088) = v7;
  *(a1 + 1144) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1152) = &unk_1F0E32728;
  *(a1 + 1160) = v7;
  *(a1 + 1212) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1232) = &unk_1F0E32BF8;
  *(a1 + 1240) = 2;
  *(a1 + 1248) = &unk_1F0E32728;
  *(a1 + 1256) = 2;
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1320) = &unk_1F0E32728;
  *(a1 + 1328) = 2;
  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1392) = &unk_1F0E32728;
  *(a1 + 1400) = 2;
  *(a1 + 1452) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  operator new[]();
}

void sub_19B6CCD84(_Unwind_Exception *a1)
{
  sub_19B42AC20(v7);
  v1[144] = v6;
  sub_19B42A568(v1 + 147);
  v1[135] = v5;
  sub_19B42A568(v1 + 138);
  v1[126] = v4;
  sub_19B42A568(v1 + 129);
  sub_19B42AC20(v3);
  sub_19B42AC20(v2);
  _Unwind_Resume(a1);
}

void *sub_19B6CCDD8(void *a1)
{
  *a1 = &unk_1F0E31E60;
  v2 = a1[195];
  if (v2)
  {
    MEMORY[0x19EAE76D0](v2, 0x1000C8052888210);
  }

  v3 = a1[196];
  if (v3)
  {
    MEMORY[0x19EAE76D0](v3, 0x1000C8052888210);
  }

  v4 = a1[197];
  if (v4)
  {
    MEMORY[0x19EAE76D0](v4, 0x1000C8052888210);
  }

  v5 = a1[198];
  if (v5)
  {
    MEMORY[0x19EAE76D0](v5, 0x1000C8052888210);
  }

  sub_19B42AC20(a1 + 154);
  a1[144] = &unk_1F0E32728;
  sub_19B42A568(a1 + 147);
  a1[135] = &unk_1F0E32728;
  sub_19B42A568(a1 + 138);
  a1[126] = &unk_1F0E32728;
  sub_19B42A568(a1 + 129);
  sub_19B42AC20(a1 + 96);
  sub_19B42AC20(a1 + 67);
  return a1;
}

void sub_19B6CCEFC(void *a1)
{
  sub_19B6CCDD8(a1);

  JUMPOUT(0x19EAE76F0);
}

float sub_19B6CCF34(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1000))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v2 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "RotationStability buffer not set.", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAttitudeDependentKFCalibrator::init()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  *(a1 + 472) = 0;
  *(a1 + 228) = 0;
  if ((*(a1 + 333) & 1) == 0)
  {
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    *(a1 + 184) = 0;
    *(a1 + 220) = 0;
    *(a1 + 224) = 0;
    *(a1 + 324) = 0;
    *(a1 + 1608) = 0;
    sub_19B43FA98((a1 + 1080));
    sub_19B43FA98((a1 + 1008));
    sub_19B43FA98((a1 + 1152));
    sub_19B43FA98((a1 + 1248));
    sub_19B43FA98((a1 + 1320));
    sub_19B43FA98((a1 + 1392));
    *(a1 + 1224) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 328) = 0;
  }

  *(a1 + 244) = 0;
  sub_19B43FA98((a1 + 552));
  sub_19B43FA98((a1 + 624));
  sub_19B43FA98((a1 + 696));
  sub_19B43FA98((a1 + 784));
  sub_19B43FA98((a1 + 856));
  sub_19B43FA98((a1 + 928));
  result = *(a1 + 1536);
  *(a1 + 144) = vcvt_f32_f64(*(a1 + 1520));
  *(a1 + 152) = result;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 59) = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6CD1C0(void *a1)
{
  sub_19B43FA98(a1 + 2);
  sub_19B43FA98(a1 + 11);

  sub_19B43FA98(a1 + 20);
}

void sub_19B6CD204(float64x2_t *a1, float *a2, int *a3, float *a4, double *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a5 && *a3 > 0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v10 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v11 = a2[2];
      v12 = a2[3];
      v13 = a2[4];
      v14 = *a3;
      *buf = 134218752;
      v36 = v11;
      v37 = 2048;
      v38 = v12;
      v39 = 2048;
      v40 = v13;
      v41 = 1024;
      v42 = v14;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "setting bias (%.3f/%.3f/%.3f) level (%d)", buf, 0x26u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v31 = a2[2];
      v32 = a2[3];
      v33 = a2[4];
      v34 = *a3;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::setBias(const CLVector3d<float> &, const CLMotionTypeCompassCalibrationLevel &, const CLVector3d<float> &, const CLClientQuaternion *)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    BYTE5(a1[20].f64[1]) = 0;
    BYTE1(a1[3].f64[1]) = 0;
    LOBYTE(a1[1].f64[1]) = 1;
    BYTE4(a1[15].f64[1]) = 0;
    sub_19B6CD760(&a1[21], a5);
    if (&a1[4] == a2)
    {
      v17 = *&a1[4].f64[1];
      v18 = *(&a1[4].f64[1] + 1);
      v19 = *a1[5].f64;
    }

    else
    {
      v17 = a2[2];
      *&a1[4].f64[1] = v17;
      v18 = a2[3];
      *(&a1[4].f64[1] + 1) = v18;
      v19 = a2[4];
      *a1[5].f64 = v19;
    }

    v23 = *a3;
    HIDWORD(a1[1].f64[0]) = *a3;
    a1[6].f64[0] = 0.0;
    LODWORD(a1[6].f64[1]) = 0;
    v24 = a4[4] - v19;
    v25 = a4[2] - v17;
    v26 = a4[3] - v18;
    v27 = ((*a1[24].f64 * v26) + (v25 * *&a1[22].f64[1])) + (v24 * *&a1[25].f64[1]);
    *&a1[7].f64[1] = vmla_n_f32(vmla_n_f32(vmul_n_f32(*&a1[23].f64[1], v26), *&a1[22].f64[0], v25), *&a1[25].f64[0], v24);
    *a1[8].f64 = v27;
    *&a1[10].f64[1] = 0x100000001;
    LODWORD(a1[11].f64[0]) = 1;
    HIDWORD(a1[1].f64[1]) = v23;
    *&a1[32].f64[1] = v17;
    *(&a1[32].f64[1] + 1) = v18;
    LODWORD(a1[33].f64[0]) = LODWORD(a1[5].f64[0]);
    HIDWORD(a1[20].f64[0]) = 0;
    bzero(&a1[92], 0x48uLL);
    a1[92] = vcvtq_f64_f32(*&a1[4].f64[1]);
    a1[93].f64[0] = *a1[5].f64;
    a1[95] = vcvtq_f64_f32(*&a1[7].f64[1]);
    a1[96].f64[0] = *a1[8].f64;
    bzero(*&a1[98].f64[0], 0x144uLL);
    v28 = 9.0 / *a3;
    v29 = a1[98].f64[0];
    **&v29 = v28;
    *(*&v29 + 40) = v28;
    *(*&v29 + 80) = v28;
    *(*&v29 + 120) = 869711765;
    *(*&v29 + 160) = 869711765;
    *(*&v29 + 200) = 869711765;
    *(*&v29 + 240) = v28;
    *(*&v29 + 280) = v28;
    *(*&v29 + 320) = v28;
    if (LOBYTE(a1[3].f64[1]) == 1)
    {
      LOBYTE(a1[3].f64[1]) = 0;
      BYTE4(a1[20].f64[1]) = 0;
    }

    sub_19B6CCF34(a1);
    sub_19B6CD8B4(a1, 0);
    sub_19B4200DC(&a1[78], &a1[4].f64[1]);
    sub_19B4200DC(&a1[82].f64[1], &a1[4].f64[1] + 1);
    sub_19B4200DC(&a1[87], &a1[5]);
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v20 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Could not set bias retrieved from database", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v22 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAttitudeDependentKFCalibrator::setBias(const CLVector3d<float> &, const CLMotionTypeCompassCalibrationLevel &, const CLVector3d<float> &, const CLClientQuaternion *)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

float32_t sub_19B6CD760(float32x2_t *a1, double *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_19B688C20(v7.f64, a2);
  result = v12;
  v4 = v10;
  v5 = v8;
  a1[2] = vcvt_f32_f64(v7);
  a1[3].f32[0] = v5;
  a1[5] = vcvt_f32_f64(v9);
  a1[6].f32[0] = v4;
  a1[8] = vcvt_f32_f64(v11);
  a1[9].f32[0] = result;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B6CD804(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v3 = *(a2 + 20);
  v4 = *(a2 + 40);
  v5 = *(a2 + 44);
  v6 = *(a2 + 64);
  v7 = *(a2 + 68);
  v8 = *(a2 + 24);
  v9 = *(a2 + 48);
  v10 = *(a2 + 72);
  *a1 = &unk_1F0E34498;
  *(a1 + 8) = &unk_1F0E33E90;
  *(a1 + 16) = result;
  *(a1 + 20) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_1F0E33E90;
  *(a1 + 40) = v3;
  *(a1 + 44) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = &unk_1F0E33E90;
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v10;
  return result;
}

void sub_19B6CD8B4(uint64_t a1, int a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v5 = *(a1 + 124);
  *(a1 + 200) = v4;
  *(a1 + 204) = v5;
  v6 = *(a1 + 128);
  *(a1 + 208) = v6;
  *(a1 + 216) = sqrtf(((v5 * v5) + (v4 * v4)) + (v6 * v6));
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 200);
    v9 = *(a1 + 204);
    v10 = *(a1 + 208);
    v11 = *(a1 + 20);
    v12 = *(a1 + 224);
    v13 = *(a1 + 168);
    v14 = *(a1 + 172);
    v15 = *(a1 + 176);
    v16 = *(a1 + 236);
    v17 = *(a1 + 240);
    *buf = 134220544;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 2048;
    v37 = v10;
    v38 = 1024;
    v39 = v11;
    v40 = 1024;
    v41 = v12;
    v42 = 1024;
    v43 = v13;
    v44 = 1024;
    v45 = v14;
    v46 = 1024;
    v47 = v15;
    v48 = 1024;
    v49 = v16;
    v50 = 1024;
    v51 = v17;
    v52 = 1024;
    v53 = a2;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "set coasting vector (%.3f/%.3f/%.3f), levels (%d %d) conv(%d %d %d) age (%d) syncAge (%d) DueTo (%d)", buf, 0x50u);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v22 = *(a1 + 200);
    v23 = *(a1 + 204);
    v24 = *(a1 + 208);
    v25 = *(a1 + 20);
    v26 = *(a1 + 224);
    v27 = *(a1 + 168);
    v28 = *(a1 + 172);
    v29 = *(a1 + 176);
    v30 = *(a1 + 236);
    v31 = *(a1 + 240);
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::setCoastingVector(BOOL)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  *(a1 + 240) = 0;
  v20 = *(a1 + 20);
  if (a2)
  {
    *(a1 + 224) = v20;
    sub_19B43FA98((a1 + 1080));
    sub_19B43FA98((a1 + 1008));
    sub_19B43FA98((a1 + 1152));
    *(a1 + 59) = 1;
  }

  else
  {
    if (v20 > *(a1 + 224))
    {
      *(a1 + 236) = 0;
      *(a1 + 1608) = 0;
    }

    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 224) = v20;
    sub_19B43FA98((a1 + 1080));
    sub_19B43FA98((a1 + 1008));
    sub_19B43FA98((a1 + 1152));
  }

  v21 = *MEMORY[0x1E69E9840];
}

float sub_19B6CDC2C(uint64_t a1, float *a2, float *a3, float *a4)
{
  sub_19B4200DC(a1 + 16, a2);
  sub_19B4200DC(a1 + 88, a3);

  return sub_19B4200DC(a1 + 160, a4);
}

void sub_19B6CDC88(float64x2_t *a1, float *a2, float32x2_t *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  BYTE5(a1[20].f64[1]) = 1;
  BYTE1(a1[3].f64[1]) = 0;
  LODWORD(a1[91].f64[1]) = a4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = ((a3[6].f32[0] * v7) + (v6 * a3[3].f32[0])) + (v8 * a3[9].f32[0]);
  v10 = (a1 + 1496);
  v22 = vmla_n_f32(vmla_n_f32(vmul_n_f32(a3[5], v7), a3[2], v6), a3[8], v8);
  bzero(&a1[92], 0x48uLL);
  a1[92] = vcvtq_f64_f32(*&a1[4].f64[1]);
  a1[93].f64[0] = *a1[5].f64;
  *v10 = vcvtq_f64_f32(*&a1[6].f64[0]);
  a1[94].f64[1] = *&a1[6].f64[1];
  a1[95] = vcvtq_f64_f32(v22);
  a1[96].f64[0] = v9;
  bzero(*&a1[98].f64[0], 0x144uLL);
  v11 = 9.0;
  if ((*(*&a1->f64[0] + 72))(a1))
  {
    v12 = HIDWORD(a1[1].f64[0]);
    if (LOBYTE(a1[1].f64[1]))
    {
      v13 = v12;
    }

    else
    {
      v13 = (v12 * v12);
    }

    v11 = 9.0 / v13;
  }

  v14 = a1[98].f64[0];
  **&v14 = v11;
  *(*&v14 + 40) = v11;
  *(*&v14 + 80) = v11;
  *(*&v14 + 120) = 869711765;
  *(*&v14 + 160) = 869711765;
  *(*&v14 + 200) = 869711765;
  *(*&v14 + 240) = v11;
  *(*&v14 + 280) = v11;
  *(*&v14 + 320) = v11;
  a1[32].f64[1] = a1[4].f64[1];
  LODWORD(a1[33].f64[0]) = LODWORD(a1[5].f64[0]);
  sub_19B6CCF34(a1);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v15 = qword_1EAFE2888;
  v16 = v11;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v17 = HIDWORD(a1[1].f64[0]);
    v18 = LOBYTE(a1[1].f64[1]);
    *buf = 67109888;
    v26 = v17;
    v27 = 1024;
    v28 = a4;
    v29 = 1024;
    v30 = v18;
    v31 = 2048;
    v32 = v16;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "reset internal. levels-data(%d %d %d), pScale=%.3f ", buf, 0x1Eu);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v23 = HIDWORD(a1[1].f64[0]);
    v24 = LOBYTE(a1[1].f64[1]);
    v20 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetInternal(const CLVector3d<float> &, const CLMatrix3d<float> &, CLMotionTypeCompassCalibrationLevel)", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_19B6CE014(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = 1;
  *(a1 + 20) = 0;
  *(a1 + 320) = 3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  bzero(*(a1 + 1576), 0x6CuLL);
  v2 = *(a1 + 1576);
  *v2 = 1065353216;
  v2[4] = 1065353216;
  v2[8] = 1065353216;
  *(a1 + 25) = 0;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "compass calibrator reset", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::reset()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B6CE208(uint64_t a1, int a2, int a3, int a4, float *a5, float *a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v172 = *MEMORY[0x1E69E9840];
  v19 = *(a1 + 240);
  v20 = v19;
  v21 = *(a1 + 16);
  v22 = 0.0;
  if ((v21 * 10.0) < v19)
  {
    v22 = 1.0;
  }

  v23 = *(a1 + 1072);
  v24 = 0.0;
  v25 = 0.0;
  if (v23)
  {
    v25 = *(a1 + 1024) / v23;
  }

  v26 = a7;
  v27 = *(a1 + 1216);
  if (v27)
  {
    v24 = *(a1 + 1168) / v27;
  }

  v28 = v22 * 0.1 + v26 * 0.16;
  v29 = *(a1 + 1144);
  if (v29)
  {
    v30 = *(a1 + 1096) / v29;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = *(a1 + 232);
  v32 = v28;
  v33 = v21;
  if (round(v21 * 20.0) < v31)
  {
    v34 = 0.1875;
    if (v32 >= 0.1875)
    {
      v34 = v32;
    }

    if (v30 > v34 && *(a1 + 1224) < 13.75 && v25 < 27.5 && a2 && a4 && a3 && a11 < 78.0 && v25 * 0.9 < v24)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v35 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 232);
        v37 = *(a1 + 240);
        *buf = 134219776;
        *v163 = v30;
        *&v163[8] = 2048;
        *&v163[10] = v24;
        *&v163[18] = 2048;
        *&v163[20] = a9;
        *&v163[28] = 2048;
        *&v163[30] = a13;
        *&v163[38] = 2048;
        *&v163[40] = a12;
        *&v163[48] = 2048;
        *&v163[50] = a11;
        *&v163[58] = 1024;
        *&v163[60] = v36;
        *&v163[64] = 1024;
        *&v163[66] = v37;
        _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "Resync after long coasting with mag drift. mag/incDiffMean(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), Age(%d,%d)", buf, 0x4Au);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v142 = *(a1 + 232);
        v144 = *(a1 + 240);
        v39 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::resync(float, BOOL, BOOL, BOOL, float, float, float, const CLVector3d<float> &, float, float, float, const CLVector3d<float> &)", "CoreLocation: %s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      *(a1 + 185) = 1;
      if ((*(a1 + 333) & 1) == 0)
      {
        sub_19B6CDC88(a1, a5, (a1 + 336), 3);
      }

      goto LABEL_187;
    }
  }

  if (a9 <= 5.0 && *(a1 + 1224) <= 13.75)
  {
    goto LABEL_191;
  }

  if (v25 <= 4.0 || !a3)
  {
    goto LABEL_191;
  }

  v40 = v30 >= v32 || a4 == 0;
  if (v40 || a2 == 0)
  {
    goto LABEL_191;
  }

  v42 = v26 * 2.0 + 4.0;
  if (v42 >= a10 && v24 <= v42)
  {
    v78 = *(a1 + 1224);
    goto LABEL_101;
  }

  v44 = 0;
  v45 = v21 + v21;
  v47 = v30 < 0.1 && v45 < v20;
  if (!v47 && (v21 * 10.0) >= v20)
  {
    v44 = *(a1 + 184) ^ 1;
  }

  v78 = *(a1 + 1224);
  v48 = vabds_f32(v78, a9) < 5.0 || v78 < 27.5;
  v49 = !v48;
  if (((v44 & 1) != 0 || v49) && (v25 * 0.9 >= v24 || v45 >= v20 && (v21 >= v20 || a9 * 0.95 >= a10) || v25 <= v78 || v78 >= 27.5))
  {
LABEL_191:
    if ((-858993459 * *(a1 + 324) + 429496729) <= 0x33333332)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v50 = qword_1EAFE2888;
      v51 = a8;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(a1 + 1072);
        v53 = 0.0;
        v54 = 0.0;
        if (v52 >= 2)
        {
          v55 = (v52 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
          v54 = 0.0;
          if (v55 >= 0.0)
          {
            v54 = (v55 / ((v52 - 1) * v52));
          }
        }

        v56 = *(a1 + 1144);
        if (v56 >= 2)
        {
          v57 = (v56 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
          if (v57 >= 0.0)
          {
            v53 = (v57 / ((v56 - 1) * v56));
          }
        }

        v58 = *(a1 + 248);
        v59 = *(a1 + 200);
        v60 = *(a1 + 204);
        v61 = *(a1 + 208);
        v62 = a6[2];
        v63 = a6[3];
        v64 = a6[4];
        v65 = a5[2];
        v66 = a5[3];
        v67 = a5[4];
        v68 = *(a1 + 1216);
        v69 = 0.0;
        if (v68 >= 2)
        {
          v70 = (v68 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
          if (v70 >= 0.0)
          {
            v69 = (v70 / ((v68 - 1) * v68));
          }
        }

        v72 = *(a1 + 236);
        v71 = *(a1 + 240);
        v73 = *(a1 + 216);
        v74 = *(a1 + 232);
        *buf = 67115008;
        *v163 = v58;
        *&v163[4] = 2048;
        *&v163[6] = v51;
        *&v163[14] = 2048;
        *&v163[16] = v59;
        *&v163[24] = 2048;
        *&v163[26] = v60;
        *&v163[34] = 2048;
        *&v163[36] = v61;
        *&v163[44] = 2048;
        *&v163[46] = v62;
        *&v163[54] = 2048;
        *&v163[56] = v63;
        *&v163[64] = 2048;
        *&v163[66] = v64;
        *&v163[74] = 2048;
        *&v163[76] = v65;
        *&v163[84] = 2048;
        *&v163[86] = v66;
        *&v163[94] = 2048;
        *&v163[96] = v67;
        *&v163[104] = 2048;
        *&v163[106] = v25;
        *&v163[114] = 2048;
        *&v163[116] = v54;
        *&v163[124] = 2048;
        *&v163[126] = v30;
        *&v163[134] = 2048;
        *&v163[136] = v53;
        *&v163[144] = 2048;
        *&v163[146] = v24;
        *&v163[154] = 2048;
        *&v163[156] = v69;
        *&v163[164] = 2048;
        *&v163[166] = a9;
        *&v163[174] = 2048;
        *&v163[176] = a13;
        *&v163[184] = 2048;
        *&v163[186] = (a11 - a12);
        *&v163[194] = 2048;
        *&v163[196] = v73;
        *&v163[204] = 1024;
        *&v163[206] = v72;
        v164 = 1024;
        v165 = v71;
        v166 = 1024;
        v167 = v74;
        _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEBUG, "numBad(%d), delH(%.3f), coastVec(%.3f/%.3f/%.3f), expectedVec(%.3f/%.3f/%.3f), calibrated(%.3f/%.3f/%.3f), angleDiff(%.3f/%.3f), magDiff(%.3f/%.4f), incDiff(%.3f/%.3f), measure(%.3f/%.3f/%.3f), coasting(%.3f/%d/%d), coastingCount(%d)", buf, 0xE2u);
      }

      v75 = sub_19B420058();
      if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        if (*(a1 + 1072) >= 2uLL)
        {
          *(a1 + 1028);
        }

        v76 = *(a1 + 1144);
        if (v76 >= 2)
        {
          *(a1 + 1100);
        }

        v77 = *(a1 + 1216);
        if (v77 >= 2)
        {
          *(a1 + 1172);
        }

        v128 = *(a1 + 248);
        v133 = *(a1 + 200);
        v134 = *(a1 + 204);
        v137 = *(a1 + 208);
        v139 = a6[2];
        v141 = a6[3];
        v145 = a6[4];
        v148 = a5[2];
        v150 = a5[3];
        v152 = a5[4];
        v153 = *(a1 + 216);
        v155 = *(a1 + 236);
        v156 = *(a1 + 240);
        v158 = *(a1 + 232);
        goto LABEL_185;
      }
    }

    goto LABEL_187;
  }

  if (v78 < 27.5 || v78 < a9)
  {
    goto LABEL_107;
  }

LABEL_101:
  v79 = 0.0;
  if (v33 * 3.0 < v31)
  {
    v79 = 1.0;
  }

  if (v78 >= (a9 * 4.0) || v79 * 10.0 + 80.0 <= v78)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v113 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v114 = *(a1 + 312);
      v115 = *(a1 + 240);
      *buf = 67109376;
      *v163 = v114;
      *&v163[4] = 1024;
      *&v163[6] = v115;
      _os_log_impl(&dword_19B41C000, v113, OS_LOG_TYPE_DEBUG, "fBackupInfoSet(%d), syncAge(%d)", buf, 0xEu);
    }

    v116 = sub_19B420058();
    if (*(v116 + 160) > 1 || *(v116 + 164) > 1 || *(v116 + 168) > 1 || *(v116 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v130 = *(a1 + 312);
      v132 = *(a1 + 240);
      v117 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::resync(float, BOOL, BOOL, BOOL, float, float, float, const CLVector3d<float> &, float, float, float, const CLVector3d<float> &)", "CoreLocation: %s\n", v117);
      if (v117 != buf)
      {
        free(v117);
      }
    }

    if (*(a1 + 312) == 1 && *(a1 + 16) * 1.5 > *(a1 + 240) && *(a1 + 1224) > 80.0 && a12 > 78.0 && *(a1 + 248) >= 5)
    {
      *(a1 + 185) = 1;
      *(a1 + 313) = 1;
      *(a1 + 248) = 0;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v118 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v118, OS_LOG_TYPE_DEBUG, "Likely bad resync. Backup.", buf, 2u);
      }

      v119 = sub_19B420058();
      if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        goto LABEL_185;
      }
    }

    else
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v120 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v121 = *(a1 + 248);
        v122 = *(a1 + 240);
        *buf = 67110912;
        *v163 = v121;
        *&v163[4] = 2048;
        *&v163[6] = v30;
        *&v163[14] = 2048;
        *&v163[16] = v24;
        *&v163[24] = 2048;
        *&v163[26] = a9;
        *&v163[34] = 2048;
        *&v163[36] = a13;
        *&v163[44] = 2048;
        *&v163[46] = a12;
        *&v163[54] = 2048;
        *&v163[56] = a11;
        *&v163[64] = 1024;
        *&v163[66] = v122;
        _os_log_impl(&dword_19B41C000, v120, OS_LOG_TYPE_DEBUG, "RESYNC Rejected. numBad=%d,mag/incDiffMean(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), syncAge(%d)", buf, 0x4Au);
      }

      v123 = sub_19B420058();
      if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v131 = *(a1 + 248);
        v146 = *(a1 + 240);
        goto LABEL_185;
      }
    }
  }

  else
  {
LABEL_107:
    *(a1 + 185) = 1;
    if ((*(a1 + 333) & 1) == 0 && *(a1 + 184) == 1 && v25 < 27.5 && v30 < 0.15 && v24 < 5.0)
    {
      sub_19B6CDC88(a1, a5, (a1 + 336), 3);
      v19 = *(a1 + 240);
      v33 = *(a1 + 16);
    }

    if (v33 * 1.5 >= v19 && ((v80 = *(a1 + 304)) != 0 || (*(a1 + 312) & 1) != 0))
    {
      v81 = *(a1 + 308);
      v82 = fabsf(v81);
      v83 = v81 + a8;
      *(a1 + 308) = v83;
      v84 = fabsf(v83);
      if (v84 > (v82 + 5.0))
      {
        *(a1 + 304) = v80 + 1;
        if (v80 >= 1 && v84 < ((v80 + 1) * 5.0))
        {
          *(a1 + 264) = 0;
          *(a1 + 272) = 0;
          *(a1 + 288) = 0;
          *(a1 + 296) = 0;
          *(a1 + 304) = 0;
          *(a1 + 312) = 0;
        }
      }
    }

    else
    {
      *(a1 + 264) = *(a1 + 72);
      *(a1 + 272) = *(a1 + 80);
      *(a1 + 288) = *(a1 + 200);
      *(a1 + 296) = *(a1 + 208);
      *(a1 + 316) = *(a1 + 324);
      *(a1 + 304) = 0;
      *(a1 + 312) = 1;
      *(a1 + 308) = a8;
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v85 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v86 = *(a1 + 1072);
      v87 = 0.0;
      v88 = 0.0;
      if (v86 >= 2)
      {
        v89 = (v86 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
        v88 = 0.0;
        if (v89 >= 0.0)
        {
          v88 = (v89 / ((v86 - 1) * v86));
        }
      }

      v90 = a5[4];
      v91 = *(a1 + 1144);
      if (v91 >= 2)
      {
        v92 = (v91 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        if (v92 >= 0.0)
        {
          v87 = (v92 / ((v91 - 1) * v91));
        }
      }

      v93 = *(a1 + 248);
      v94 = *(a1 + 304);
      v95 = *(a1 + 308);
      v96 = a6[2];
      v97 = a6[3];
      v98 = a6[4];
      v99 = a5[2];
      v100 = a5[3];
      v101 = *(a1 + 1216);
      v102 = 0.0;
      if (v101 >= 2)
      {
        v103 = (v101 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
        if (v103 >= 0.0)
        {
          v102 = (v103 / ((v101 - 1) * v101));
        }
      }

      v104 = *(a1 + 216);
      v106 = *(a1 + 236);
      v105 = *(a1 + 240);
      v107 = *(a1 + 232);
      v108 = (*(a1 + 324) - *(a1 + 316));
      *buf = 67115520;
      v109 = *(a1 + 16);
      *v163 = v93;
      *&v163[4] = 2048;
      *&v163[6] = v26;
      *&v163[14] = 2048;
      *&v163[16] = a8;
      *&v163[24] = 1024;
      *&v163[26] = v94;
      *&v163[30] = 2048;
      *&v163[32] = v95;
      *&v163[40] = 2048;
      *&v163[42] = v96;
      *&v163[50] = 2048;
      *&v163[52] = v97;
      *&v163[60] = 2048;
      *&v163[62] = v98;
      *&v163[70] = 2048;
      *&v163[72] = v99;
      *&v163[80] = 2048;
      *&v163[82] = v100;
      *&v163[90] = 2048;
      *&v163[92] = v90;
      *&v163[100] = 2048;
      *&v163[102] = v25;
      *&v163[110] = 2048;
      *&v163[112] = v88;
      *&v163[120] = 2048;
      *&v163[122] = v30;
      *&v163[130] = 2048;
      *&v163[132] = v87;
      *&v163[140] = 2048;
      *&v163[142] = v24;
      *&v163[150] = 2048;
      *&v163[152] = v102;
      *&v163[160] = 2048;
      *&v163[162] = a9;
      *&v163[170] = 2048;
      *&v163[172] = a13;
      *&v163[180] = 2048;
      *&v163[182] = (a11 - a12);
      *&v163[190] = 2048;
      *&v163[192] = a12;
      *&v163[200] = 2048;
      *&v163[202] = v104;
      v164 = 1024;
      v165 = v106;
      v166 = 1024;
      v167 = v105;
      v168 = 1024;
      v169 = v107;
      v170 = 2048;
      v171 = (v108 / v109);
      _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_DEBUG, "DRIFT DETECTED. numBad=%d,s=%.3f,delH(%.3f,%d,%.3f), expectedVec (%.3f/%.3f/%.3f), calibrated(%.3f/%.3f/%.3f), angleDiff(%.3f/%.3f), magDiff(%.3f/%.4f), incDiff(%.3f/%.3f), measure(%.3f/%.3f/%.3f/%.3f), coasting(%.3f/%d/%d), coastingCount(%d),deltaTime(%.3f)", buf, 0xF2u);
    }

    v110 = sub_19B420058();
    if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      if (*(a1 + 1072) >= 2uLL)
      {
        *(a1 + 1028);
      }

      v111 = *(a1 + 1144);
      if (v111 >= 2)
      {
        *(a1 + 1100);
      }

      v112 = *(a1 + 1216);
      if (v112 >= 2)
      {
        *(a1 + 1172);
      }

      v129 = *(a1 + 248);
      v135 = *(a1 + 304);
      v136 = *(a1 + 308);
      v138 = a6[2];
      v140 = a6[3];
      v143 = a6[4];
      v147 = a5[2];
      v149 = a5[3];
      v151 = a5[4];
      v154 = *(a1 + 216);
      v157 = *(a1 + 236);
      v159 = *(a1 + 240);
      v160 = *(a1 + 232);
      v161 = ((*(a1 + 324) - *(a1 + 316)) / *(a1 + 16));
LABEL_185:
      v124 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::resync(float, BOOL, BOOL, BOOL, float, float, float, const CLVector3d<float> &, float, float, float, const CLVector3d<float> &)", "CoreLocation: %s\n", v124);
      if (v124 != buf)
      {
        free(v124);
      }
    }
  }

LABEL_187:
  v125 = *MEMORY[0x1E69E9840];
}

void sub_19B6CF824(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 1;
  if ((*(a1 + 333) & 1) == 0 && *(a1 + 57) == 1)
  {
    v1 = *(a1 + 208);
    *(a1 + 128) = v1;
    v2 = *(a1 + 200);
    *(a1 + 120) = v2;
    *(a1 + 1520) = vcvtq_f64_f32(v2);
    *(a1 + 1536) = v1;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "enters coasting", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::enterCoasting()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

float sub_19B6CFA04(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = sqrtf(((v3 * v3) + (v2 * v2)) + (v4 * v4));
  if (v5 > 0.0 && (v6 = a2[2], v7 = a2[3], v8 = a2[4], v9 = sqrtf(((v7 * v7) + (v6 * v6)) + (v8 * v8)), v9 > 0.0) && (v10 = ((((v3 * v7) + (v6 * v2)) + (v8 * v4)) / v5) / v9, v10 <= 1.0))
  {
    return acosf(v10);
  }

  else
  {
    return 0.0;
  }
}

void sub_19B6CFA70(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v1 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "exits coasting", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::exitCoasting()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6CFC1C(uint64_t result)
{
  v1 = *(result + 1312);
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v3 = (*(result + 1264) / v1);
  }

  v4 = *(result + 1384);
  v5 = *(result + 1456);
  *(result + 1472) = v3;
  if (v4)
  {
    v2 = (*(result + 1336) / v4);
  }

  *(result + 1480) = v2;
  if (v5)
  {
    v6 = (*(result + 1408) / v5);
  }

  else
  {
    v6 = 0.0;
  }

  *(result + 1488) = v6;
  *(result + 236) = 0;
  *(result + 244) = 1;
  return result;
}

void sub_19B6CFC90(uint64_t a1, float *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Divergence!!! Resetting.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::handleDivergence(const CLVector3d<float> &)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  sub_19B43FA98((a1 + 1248));
  sub_19B43FA98((a1 + 1320));
  sub_19B43FA98((a1 + 1392));
  if (*(a1 + 24) == 1)
  {
    sub_19B4200DC(a1 + 1248, (a1 + 72));
    sub_19B4200DC(a1 + 1320, (a1 + 76));
    sub_19B4200DC(a1 + 1392, (a1 + 80));
  }

  sub_19B6CDC88(a1, a2, (a1 + 336), *(a1 + 20));
  v7 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B6CFEA0(uint64_t a1, unsigned int *a2, int a3, float *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  *a4 = 0.0;
  v8 = *(a1 + 1312);
  v9 = 0.0;
  v10 = 0.0;
  if (v8 >= 2)
  {
    v11 = (v8 * *(a1 + 1268)) - (*(a1 + 1264) * *(a1 + 1264));
    v10 = 0.0;
    if (v11 >= 0.0)
    {
      v10 = v11 / ((v8 - 1) * v8);
    }
  }

  v12 = *(a1 + 1384);
  if (v12 >= 2)
  {
    v13 = (v12 * *(a1 + 1340)) - (*(a1 + 1336) * *(a1 + 1336));
    if (v13 >= 0.0)
    {
      v9 = v13 / ((v12 - 1) * v12);
    }
  }

  v14 = *(a1 + 1456);
  v15 = 0.0;
  if (v14 >= 2)
  {
    v16 = (v14 * *(a1 + 1412)) - (*(a1 + 1408) * *(a1 + 1408));
    if (v16 >= 0.0)
    {
      v15 = v16 / ((v14 - 1) * v14);
    }
  }

  v30 = v10;
  v31 = v9;
  v32 = v15;
  v17 = (v9 * a2[1]) + (*a2 * v10);
  v18 = a2[2];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v19 = v17 + (v18 * v15);
  v20 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[2];
    v24 = *(a1 + 1312);
    *buf = 67111168;
    v38 = v21;
    v39 = 1024;
    v40 = v22;
    v41 = 1024;
    v42 = v23;
    v43 = 2048;
    v44 = v30;
    v45 = 2048;
    v46 = v31;
    v47 = 2048;
    v48 = v32;
    v49 = 2048;
    v50 = v19;
    v51 = 1024;
    v52 = a3;
    v53 = 1024;
    v54 = v24;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "new estimates calculated, converged(%d %d %d) Var (%.3f %.3f %.3f), remain (%.3f), level (%d), num=%d ", buf, 0x48u);
  }

  v25 = sub_19B420058();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v33 = *a2;
    v34 = a2[1];
    v35 = a2[2];
    v36 = *(a1 + 1312);
    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::sanityCheck(unsigned int *, CLMotionTypeCompassCalibrationLevel, float &)", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  v27 = 100.0 / a3;
  if (v19 > v27)
  {
    *a4 = (v19 - v27) / v27;
  }

  result = v19 <= v27;
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B6D02A0(uint64_t a1, float a2, float a3, float a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 57) = 1;
  }

  *(a1 + 333) = 0;
  sub_19B43FA98((a1 + 1248));
  sub_19B43FA98((a1 + 1320));
  sub_19B43FA98((a1 + 1392));
  sub_19B4200DC(a1 + 1248, &v8);
  sub_19B4200DC(a1 + 1320, &v7);
  return sub_19B4200DC(a1 + 1392, &v6);
}

void sub_19B6D0320(uint64_t a1, int a2, int *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a1 + 60) = a2;
  if (a2)
  {
    v4 = *a3;
    *(a1 + 120) = *a3;
    v5 = a3[1];
    *(a1 + 124) = v5;
    v6 = a3[2];
    *(a1 + 128) = v6;
    *(a1 + 200) = v4;
    *(a1 + 204) = v5;
    *(a1 + 208) = v6;
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v7 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 200);
      v9 = *(a1 + 204);
      v10 = *(a1 + 208);
      v11 = *(a1 + 120);
      v12 = *(a1 + 124);
      v13 = *(a1 + 128);
      *buf = 134219264;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      v27 = 2048;
      v28 = v10;
      v29 = 2048;
      v30 = v11;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      v34 = v13;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "fCoastingVecPrint: %.3f, %.3f, %.3f, %.3f, %.3f, %.3f", buf, 0x3Eu);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v17 = *(a1 + 200);
      v18 = *(a1 + 204);
      v19 = *(a1 + 208);
      v20 = *(a1 + 120);
      v21 = *(a1 + 124);
      v22 = *(a1 + 128);
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::referenceAttitudeChanged(BOOL, const CLMotionTypeMagneticField &)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B6D05B4(uint64_t a1, float *a2, double *a3)
{
  v535 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v18 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Attitude data not set.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v20);
      goto LABEL_473;
    }

    goto LABEL_789;
  }

  ++*(a1 + 324);
  if (*(a1 + 184) != 1)
  {
    goto LABEL_95;
  }

  v6 = *(a1 + 16);
  v7 = v6;
  v8 = *(a1 + 1144);
  if (v6 * 8.0 >= *(a1 + 248))
  {
    goto LABEL_33;
  }

  if (v8 >= 2)
  {
    v9 = v8;
    v10 = *(a1 + 1096);
    v11 = (v8 * *(a1 + 1100)) - (v10 * v10);
    if (v11 >= 0.0 && (v11 / ((v8 - 1) * v8)) >= 0.01)
    {
      goto LABEL_35;
    }
  }

  if ((v12 = *(a1 + 1072), v12 >= 2) && (v13 = (v12 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024)), v13 >= 0.0) && (v13 / ((v12 - 1) * v12)) >= 20.0 || (v14 = *(a1 + 1216), v14 >= 2) && (v15 = (v14 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168)), v15 >= 0.0) && (v15 / ((v14 - 1) * v14)) >= 10.0)
  {
LABEL_33:
    if (!v8)
    {
      goto LABEL_36;
    }

    v10 = *(a1 + 1096);
    v9 = v8;
LABEL_35:
    if ((v10 / v9) >= 1.0)
    {
      v28 = *(a1 + 232);
      if (roundf(v6 * 120.0) < v28 && (v8 == 1 || (v29 = (v9 * *(a1 + 1100)) - (v10 * v10), v29 < 0.0) || (v29 / ((v8 - 1) * v8)) < 0.04))
      {
        (*(*a1 + 24))(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v30 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEBUG, "Waiting too long for high magnitude interference to go away. Exit coasting.", buf, 2u);
        }

        v31 = sub_19B420058();
        if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
        {
          goto LABEL_95;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          goto LABEL_797;
        }
      }

      else
      {
        if (round(v7 * 360.0) >= v28)
        {
          goto LABEL_95;
        }

        (*(*a1 + 24))(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v32 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEBUG, "Coasting for too long. Exit coasting.", buf, 2u);
        }

        v33 = sub_19B420058();
        if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
        {
          goto LABEL_95;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          goto LABEL_797;
        }
      }

LABEL_93:
      *v511 = 0;
      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetAfterCoasting()", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }

      goto LABEL_95;
    }

LABEL_36:
    v21 = *(a1 + 232);
    if (roundf(v6 * 120.0) <= v21)
    {
      goto LABEL_84;
    }

    if (*(a1 + 333) != 1)
    {
      goto LABEL_95;
    }

    if (round(v7 * 30.0) > v21)
    {
      goto LABEL_95;
    }

    if (*(a1 + 1224) <= 30.0)
    {
      goto LABEL_95;
    }

    if (v8 >= 2)
    {
      v22 = (v8 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
      if (v22 >= 0.0 && (v22 / ((v8 - 1) * v8)) >= 0.01)
      {
        goto LABEL_95;
      }
    }

    v23 = *(a1 + 1072);
    if (v23 >= 2)
    {
      v24 = (v23 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
      if (v24 >= 0.0 && (v24 / ((v23 - 1) * v23)) >= 200.0)
      {
        goto LABEL_95;
      }
    }

    v25 = *(a1 + 1216);
    if (v25 >= 2)
    {
      v27 = v25;
      v26 = *(a1 + 1168);
      v34 = (v25 * *(a1 + 1172)) - (v26 * v26);
      if (v34 >= 0.0 && (v34 / ((v25 - 1) * v25)) >= 100.0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!v25)
      {
        v35 = 0.0;
LABEL_80:
        if (v23)
        {
          v36 = (*(a1 + 1024) / v23) * 0.9;
        }

        else
        {
          v36 = 0.0;
        }

        if (v36 <= v35)
        {
          goto LABEL_95;
        }

LABEL_84:
        (*(*a1 + 24))(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v37 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "Waiting too long for internal re-calibration. Prompt user.", buf, 2u);
        }

        v38 = sub_19B420058();
        if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 == -1)
          {
            goto LABEL_93;
          }

          goto LABEL_797;
        }

        goto LABEL_95;
      }

      v26 = *(a1 + 1168);
      v27 = 1.0;
    }

    v35 = (v26 / v27);
    goto LABEL_80;
  }

  (*(*a1 + 24))(a1);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v16 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "Bad heading divergence for too long. Prompt user to re-calibrate.", buf, 2u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 == -1)
    {
      goto LABEL_93;
    }

LABEL_797:
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    goto LABEL_93;
  }

LABEL_95:
  *(a1 + 59) = 0;
  *(a1 + 25) = 0;
  sub_19B6CD760((a1 + 336), a3);
  v40 = a3[3];
  v41 = a3[2] + a3[2];
  v42 = *a3;
  v43 = a3[1];
  v44 = v40 * (v43 + v43) - *a3 * v41;
  *&v41 = -(v40 * (v42 + v42)) - v43 * v41;
  *&v40 = v42 * (v42 + v42) + -1.0 + v43 * (v43 + v43);
  v506 = &unk_1F0E33E90;
  v507 = v44;
  v508 = LODWORD(v41);
  v509 = LODWORD(v40);
  if (*(a1 + 56) == 1)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v45 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_INFO, "Resetting calibrator states.", buf, 2u);
    }

    v46 = sub_19B420058();
    if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 0;
      v47 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::resetCalibration(const CLVector3d<float> &, const CLMatrix3d<float> &)", "CoreLocation: %s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    *(a1 + 332) = 1;
    *(a1 + 57) = 1;
    *(a1 + 24) = 0;
    *(a1 + 236) = 0;
    *(a1 + 240) = 0;
    *(a1 + 216) = 0;
    *(a1 + 20) = 0;
    *(a1 + 28) = 0;
    *(a1 + 320) = 3;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 520) = 0;
    *(a1 + 528) = 0;
    v49 = a2[3];
    v48 = a2[4];
    v50 = a2[2];
    v51 = ((*(a1 + 384) * v49) + (v50 * *(a1 + 360))) + (v48 * *(a1 + 408));
    *(a1 + 120) = vmla_n_f32(vmla_n_f32(vmul_n_f32(*(a1 + 376), v49), *(a1 + 352), v50), *(a1 + 400), v48);
    *(a1 + 128) = v51;
    bzero((a1 + 1472), 0x48uLL);
    *(a1 + 1520) = vcvtq_f64_f32(*(a1 + 120));
    *(a1 + 1536) = *(a1 + 128);
    bzero(*(a1 + 1568), 0x144uLL);
    v52 = *(a1 + 1568);
    *v52 = 1091567616;
    v52[10] = 1091567616;
    v52[20] = 1091567616;
    v52[30] = 869711765;
    v52[40] = 869711765;
    v52[50] = 869711765;
    v52[60] = 1091567616;
    v52[70] = 1091567616;
    v52[80] = 1091567616;
    sub_19B6CCF34(a1);
    v53 = *(a3 + 1);
    *(a1 + 416) = *a3;
    *(a1 + 432) = v53;
    if ((a1 + 448) != a2)
    {
      *(a1 + 456) = *(a2 + 1);
      *(a1 + 464) = a2[4];
    }

    *(a1 + 332) = 1;
    *(a1 + 56) = 0;
  }

  else if ((*(a1 + 332) & 1) == 0)
  {
    goto LABEL_114;
  }

  if ((*(*a1 + 72))(a1))
  {
    *(a1 + 332) = 0;
  }

LABEL_114:
  *(a1 + 236) = vadd_s32(*(a1 + 236), 0x100000001);
  v54 = *(a1 + 1000);
  v55 = *(v54 + 64);
  v56 = 0.0;
  if (v55)
  {
    v57 = *(v54 + 16);
    v58 = v57 / v55;
    if (v55 != 1)
    {
      v59 = (v55 * *(v54 + 20)) - (v57 * v57);
      if (v59 >= 0.0)
      {
        v56 = v59 / ((v55 - 1) * v55);
      }
    }
  }

  else
  {
    v58 = 0.0;
  }

  v61 = v56 <= 6.0 && v58 <= 4.7124;
  v63 = v56 <= 0.8 && v58 <= 1.5708;
  sub_19B4200DC(a1 + 552, a2 + 2);
  sub_19B4200DC(a1 + 624, a2 + 3);
  sub_19B4200DC(a1 + 696, a2 + 4);
  v64 = *(a1 + 616);
  v65 = 0.0;
  v66 = 0.0;
  if (v64)
  {
    v66 = *(a1 + 568) / v64;
  }

  v67 = *(a1 + 688);
  if (v67)
  {
    v65 = *(a1 + 640) / v67;
  }

  v68 = *(a1 + 760);
  if (v68)
  {
    v69 = *(a1 + 712) / v68;
  }

  else
  {
    v69 = 0.0;
  }

  v503 = &unk_1F0E33E90;
  v504 = __PAIR64__(LODWORD(v65), LODWORD(v66));
  v505 = v69;
  v499 = &unk_1F0E33E90;
  v500 = v66;
  v501 = v65;
  v502 = v69;
  v70 = sub_19B6D6034(a1, &v499);
  if (!(*(*a1 + 72))(a1, v70))
  {
    goto LABEL_442;
  }

  if (*(a1 + 60) == 1)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v71 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "Compass-withFusion";
      _os_log_impl(&dword_19B41C000, v71, OS_LOG_TYPE_DEBUG, "Type,%s,Updating reference frame.", buf, 0xCu);
    }

    v72 = sub_19B420058();
    if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 136315138;
      *&v511[4] = "Compass-withFusion";
      v73 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    *(a1 + 60) = 0;
  }

  v74 = *(a1 + 20);
  if (v74 <= 3)
  {
    v75 = 2.0;
  }

  else
  {
    v75 = (5 - v74);
  }

  v76 = *(a1 + 216);
  if (v76 <= 0.0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v78 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v78, OS_LOG_TYPE_FAULT, "Coasting vector not set.", buf, 2u);
    }

    v79 = sub_19B420058();
    if ((*(v79 + 160) & 0x80000000) == 0 || (*(v79 + 164) & 0x80000000) == 0 || (*(v79 + 168) & 0x80000000) == 0 || *(v79 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 0;
      v80 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v80);
      if (v80 != buf)
      {
        free(v80);
      }
    }

    goto LABEL_385;
  }

  *&v492 = vabds_f32(v76, sqrtf(((v501 * v501) + (v500 * v500)) + (v502 * v502))) / v76;
  sub_19B4200DC(a1 + 1080, &v492);
  v77 = v75 * 0.25 + 1.5;
  if (*&v492 > ((v77 * 10.0) * 0.1875))
  {
    if (*(a1 + 184))
    {
      ++*(a1 + 232);
    }

    else
    {
      sub_19B6CF824(a1);
    }

    v106 = *(a1 + 1144);
    if (v106)
    {
      if ((v107 = *(a1 + 1096) / v106, v107 > 5.0) && roundf(*(a1 + 16) * 30.0) < *(a1 + 232) || v107 > 10.0 && roundf(*(a1 + 16) * 10.0) < *(a1 + 232))
      {
        (*(*a1 + 24))(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v108 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v108, OS_LOG_TYPE_DEBUG, "Prolonged high magDiff. Likely bad calibration. Resetting.", buf, 2u);
        }

        v109 = sub_19B420058();
        if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          *v511 = 0;
          v110 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v110);
          if (v110 != buf)
          {
            free(v110);
          }
        }
      }
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v111 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v112 = sqrtf(((v501 * v501) + (v500 * v500)) + (v502 * v502));
      v113 = *(a1 + 200);
      v114 = *(a1 + 204);
      v115 = *(a1 + 208);
      v116 = (*(a1 + 232) / *(a1 + 16));
      v117 = *(a1 + 1144);
      v118 = 0.0;
      if (v117 >= 2)
      {
        v119 = (v117 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        v120 = (v117 - 1) * v117;
        if (v119 >= 0.0)
        {
          v118 = (v119 / v120);
        }

        else
        {
          v118 = 0.0;
        }
      }

      v121 = *(a1 + 333);
      *buf = 134220544;
      *&buf[4] = *&v492;
      *&buf[12] = 2048;
      *&buf[14] = v112;
      *&buf[22] = 2048;
      *&buf[24] = v500;
      *&buf[32] = 2048;
      *&buf[34] = v501;
      *&buf[42] = 2048;
      *&buf[44] = v502;
      *&buf[52] = 2048;
      *&buf[54] = v113;
      *&buf[62] = 2048;
      *&buf[64] = v114;
      *&buf[72] = 2048;
      *&buf[74] = v115;
      v529 = 2048;
      v530 = v116;
      v531 = 2048;
      v532 = v118;
      v533 = 1024;
      v534 = v121;
      _os_log_impl(&dword_19B41C000, v111, OS_LOG_TYPE_DEBUG, "Extremely high magnitude.  magDiff (%.3f), magnitude (%.3f), calibrated (%.3f/%.3f/%.3f), coastVector (%.3f/%.3f/%.3f),coastingTime,%.3f,magDiffVar,%.3f,resetInternal,%d", buf, 0x6Cu);
    }

    v122 = sub_19B420058();
    if (*(v122 + 160) > 1 || *(v122 + 164) > 1 || *(v122 + 168) > 1 || *(v122 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v123 = sqrtf(((v501 * v501) + (v500 * v500)) + (v502 * v502));
      v124 = *(a1 + 200);
      v125 = *(a1 + 204);
      v126 = *(a1 + 208);
      v127 = (*(a1 + 232) / *(a1 + 16));
      v128 = *(a1 + 1144);
      v129 = 0.0;
      if (v128 >= 2)
      {
        v130 = (v128 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
        if (v130 >= 0.0)
        {
          v129 = (v130 / ((v128 - 1) * v128));
        }
      }

      v131 = *(a1 + 333);
      *v511 = 134220544;
      *&v511[4] = *&v492;
      *&v511[12] = 2048;
      *&v511[14] = v123;
      *&v511[22] = 2048;
      *&v511[24] = v500;
      *&v511[32] = 2048;
      *&v511[34] = v501;
      *&v511[42] = 2048;
      *&v511[44] = v502;
      *&v511[52] = 2048;
      *&v511[54] = v124;
      *&v511[62] = 2048;
      *&v511[64] = v125;
      *&v511[72] = 2048;
      v512 = v126;
      v513 = 2048;
      v514 = v127;
      v515 = 2048;
      v516 = v129;
      v517 = 1024;
      v518 = v131;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v20);
LABEL_473:
      if (v20 != buf)
      {
        free(v20);
      }

      goto LABEL_789;
    }

    goto LABEL_789;
  }

  v81 = *(a1 + 200);
  v82 = *(a1 + 204);
  v83 = *(a1 + 208);
  *&v84 = ((v82 * *(a1 + 356)) + (v81 * *(a1 + 352))) + (v83 * *(a1 + 360));
  *&v85 = ((v82 * *(a1 + 380)) + (v81 * *(a1 + 376))) + (v83 * *(a1 + 384));
  v86 = ((v82 * *(a1 + 404)) + (v81 * *(a1 + 400))) + (v83 * *(a1 + 408));
  *&v496.f64[0] = &unk_1F0E33E90;
  *&v496.f64[1] = __PAIR64__(v85, v84);
  *&v497 = v86;
  *&v521 = sub_19B6CFA04(&v499, &v496) * 57.296;
  v87 = 90.0 - sub_19B6CFA04(&v499, &v506) * 57.2957795;
  v88 = 90.0 - sub_19B6CFA04(&v496, &v506) * 57.2957795;
  LODWORD(v490[0]) = vabds_f32(v87, v88);
  sub_19B4200DC(a1 + 1008, &v521);
  sub_19B4200DC(a1 + 1152, v490);
  *(a1 + 1224) = 0;
  v526.i32[0] = 0;
  v524.i32[0] = 0;
  v89 = 0.0;
  if (sub_19B6DEAF0(&v496, &v506, &v524))
  {
    if (sub_19B6DEAF0(&v499, &v506, &v526))
    {
      v89 = v526.f32[0] - v524.f32[0];
      v90 = vabds_f32(v526.f32[0], v524.f32[0]);
      *(a1 + 1224) = v90;
      if (v90 > 180.0)
      {
        v91 = 360.0 - v90;
        *(a1 + 1224) = v91;
        if (v89 < 0.0)
        {
          v89 = -v91;
        }

        else
        {
          v89 = v91;
        }
      }
    }
  }

  if (*(a1 + 20) < 2 || !v63 && (v61 & (*(*a1 + 80))(a1)) != 1)
  {
    goto LABEL_382;
  }

  *(a1 + 185) = 0;
  v92 = *(a1 + 1216);
  v488 = 0.0;
  if (v92 >= 2)
  {
    v93 = (v92 * *(a1 + 1172)) - (*(a1 + 1168) * *(a1 + 1168));
    if (v93 >= 0.0)
    {
      v488 = v93 / ((v92 - 1) * v92);
    }
  }

  v94 = v77;
  v95 = *(a1 + 1072);
  v96 = 0.0;
  if (v95 >= 2)
  {
    v97 = (v95 * *(a1 + 1028)) - (*(a1 + 1024) * *(a1 + 1024));
    if (v97 >= 0.0)
    {
      v96 = (v97 / ((v95 - 1) * v95));
    }
  }

  v98 = *(a1 + 1144);
  v99 = 0.0;
  if (v98 >= 2)
  {
    v100 = (v98 * *(a1 + 1100)) - (*(a1 + 1096) * *(a1 + 1096));
    if (v100 >= 0.0)
    {
      v99 = v100 / ((v98 - 1) * v98);
    }
  }

  v102 = *(a1 + 1224);
  if (*(a1 + 252) == 1 && v102 > 27.5)
  {
    v101 = v94 * 0.0032;
    if (v99 <= v101 && (!v98 || (*(a1 + 1096) / v98) < 0.45))
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v103 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v103, OS_LOG_TYPE_DEBUG, "Likely bad database lookup. Resetting. ", buf, 2u);
      }

      v104 = sub_19B420058();
      if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v511 = 0;
        v105 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v105);
        if (v105 != buf)
        {
          free(v105);
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_789;
    }
  }

  v132 = *(a1 + 248);
  if (v102 <= 80.0)
  {
    if (v132 < 1)
    {
      goto LABEL_248;
    }

    v133 = -1;
  }

  else
  {
    v133 = 1;
  }

  *(a1 + 248) = v133 + v132;
LABEL_248:
  v485 = v96;
  v486 = v94 * 0.0032;
  v487 = v99;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
  }

  v489 = v77 * 13.0;
  v134 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v135 = *(a1 + 236);
    v136 = *(a1 + 248);
    *buf = 134219776;
    *&buf[4] = v77;
    *&buf[12] = 1024;
    *&buf[14] = v135;
    *&buf[18] = 2048;
    *&buf[20] = *&v492;
    *&buf[28] = 2048;
    *&buf[30] = v89;
    *&buf[38] = 2048;
    *&buf[40] = *&v521;
    *&buf[48] = 1024;
    *&buf[50] = v136;
    *&buf[54] = 2048;
    *&buf[56] = v87;
    *&buf[64] = 1024;
    *&buf[66] = v488 < v489;
    _os_log_impl(&dword_19B41C000, v134, OS_LOG_TYPE_DEBUG, "******* scale(%.3f),cAge(%d), magDiff(%.3f), dHeading(%.3f), deltaAngle(%.3f), numBad(%d), calInc(%.3f), incDiffIsStable(%d)", buf, 0x46u);
  }

  v137 = sub_19B420058();
  if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v138 = *(a1 + 236);
    v139 = *(a1 + 248);
    *v511 = 134219776;
    *&v511[4] = v77;
    *&v511[12] = 1024;
    *&v511[14] = v138;
    *&v511[18] = 2048;
    *&v511[20] = *&v492;
    *&v511[28] = 2048;
    *&v511[30] = v89;
    *&v511[38] = 2048;
    *&v511[40] = *&v521;
    *&v511[48] = 1024;
    *&v511[50] = v139;
    *&v511[54] = 2048;
    *&v511[56] = v87;
    *&v511[64] = 1024;
    *&v511[66] = v488 < v489;
    v140 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v140);
    if (v140 != buf)
    {
      free(v140);
    }
  }

  v141 = v489;
  v142 = v489 * 1.5;
  if (!v63 || *(a1 + 16) >= (*(a1 + 324) - *(a1 + 328)) || (LODWORD(v141) = *(a1 + 1216), round(*(a1 + 1160) * 0.5) >= *&v141) || (*(a1 + 328) = 0, sub_19B6CE208(a1, v488 < v489, v142 > v485, v487 <= v486, &v499, &v496, v77, v89, *&v521, *v490, v87, v88, *&v492), v142 = v489 * 1.5, (*(a1 + 313) & 1) == 0))
  {
    v143 = *(a1 + 16);
    v144 = *(a1 + 1072);
    v145 = 0.0;
    v146 = 0.0;
    if (v144)
    {
      v146 = *(a1 + 1024) / v144;
    }

    v147 = v143;
    v148 = *(a1 + 1144);
    if (v148)
    {
      v145 = *(a1 + 1096) / v148;
    }

    v149 = *(a1 + 236);
    v150 = v147 * 2.0 + 40.0;
    if (*(a1 + 185))
    {
      if (*(a1 + 184) != 1)
      {
LABEL_382:
        if ((*(a1 + 333) & 1) == 0 && *(a1 + 184) == 1 && *&v492 > ((v77 + 1.0) * 0.1875))
        {
          goto LABEL_789;
        }

        goto LABEL_385;
      }

      v151 = v77 * 13.75;
      v152 = v77 * 0.1875;
LABEL_279:
      v154 = *(a1 + 232) + 1;
      *(a1 + 232) = v154;
      if (v145 > v152 || v487 > v486 || v146 > v151 && *(a1 + 1224) >= v151 || v142 <= v485)
      {
        if ((*(a1 + 333) & 1) == 0)
        {
          if (roundf(v143 * 10.0) >= v154 && v150 < v149 && (v87 >= 78.0 || v488 >= v489 || v145 >= 0.45 || v146 <= v151 || *(a1 + 1224) <= 80.0))
          {
            goto LABEL_789;
          }

          sub_19B6CD1C0((a1 + 1232));
          sub_19B6CDC88(a1, &v499, (a1 + 336), *(a1 + 20));
          if ((*(a1 + 333) & 1) == 0)
          {
            goto LABEL_789;
          }
        }
      }

      else
      {
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v155 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v155, OS_LOG_TYPE_DEBUG, "Interference is gone.", buf, 2u);
        }

        v156 = sub_19B420058();
        if (*(v156 + 160) > 1 || *(v156 + 164) > 1 || *(v156 + 168) > 1 || *(v156 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          *v511 = 0;
          v157 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v157);
          if (v157 != buf)
          {
            free(v157);
          }
        }

        sub_19B6CFA70(a1);
        if (*(a1 + 333) == 1 && *(a1 + 1592) <= 2)
        {
          sub_19B6CDC88(a1, &v499, (a1 + 336), *(a1 + 1464));
        }
      }

      goto LABEL_382;
    }

    v153 = *(a1 + 1224);
    if (v153 > 80.0 && v88 > 78.0 && v143 < *(a1 + 248) && v146 > 13.75 && v145 < 0.45 && (v147 * 3.5 < *(a1 + 240) || v150 >= v149))
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v167 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v167, OS_LOG_TYPE_DEBUG, "Steep inclination. Likely bad interference or bad database lookup. Resetting. ", buf, 2u);
      }

      v168 = sub_19B420058();
      if (*(v168 + 160) > 1 || *(v168 + 164) > 1 || *(v168 + 168) > 1 || *(v168 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v511 = 0;
        v169 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v169);
        if (v169 != buf)
        {
          free(v169);
        }
      }

      *(a1 + 248) = 0;
      (*(*a1 + 24))(a1);
      goto LABEL_789;
    }

    v151 = v77 * 13.75;
    v152 = v77 * 0.1875;
    if (*(a1 + 184))
    {
      goto LABEL_279;
    }

    if (v153 <= 13.75 && *&v492 <= 0.45)
    {
LABEL_313:
      v158 = 0;
      goto LABEL_330;
    }

    v159 = v94 + 0.8;
    if (*&v521 < (v159 * 13.75) && (*&v521 <= 13.75 || *&v492 < (v159 * 0.1875)))
    {
      v170 = *(a1 + 228);
      if (*&v521 <= v151 || !v63 && *&v492 <= v152)
      {
        _VF = __OFSUB__(v170, 1);
        v484 = v170 - 1;
        if (v484 < 0 == _VF)
        {
          v158 = 0;
          *(a1 + 228) = v484;
          goto LABEL_330;
        }

        goto LABEL_313;
      }

      *(a1 + 228) = v170 + 1;
      v171 = *(a1 + 333);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v172 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = *&v521;
        *&buf[12] = 2048;
        *&buf[14] = v89;
        *&buf[22] = 2048;
        *&buf[24] = *&v492;
        *&buf[32] = 2048;
        *&buf[34] = *v490;
        _os_log_impl(&dword_19B41C000, v172, OS_LOG_TYPE_DEBUG, "**INTERFERENCE-0 dAngle=%.3f,dHeading=%.3f,magDiff=%.3f,incDiff=%.3f", buf, 0x2Au);
      }

      v173 = sub_19B420058();
      v158 = v171 ^ 1;
      if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v511 = 134218752;
        *&v511[4] = *&v521;
        *&v511[12] = 2048;
        *&v511[14] = v89;
        *&v511[22] = 2048;
        *&v511[24] = *&v492;
        *&v511[32] = 2048;
        *&v511[34] = *v490;
        v174 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v174);
        if (v174 != buf)
        {
          free(v174);
        }
      }
    }

    else
    {
      *(a1 + 228) += 5;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v160 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = *&v521;
        *&buf[12] = 2048;
        *&buf[14] = v89;
        *&buf[22] = 2048;
        *&buf[24] = *&v492;
        *&buf[32] = 2048;
        *&buf[34] = *v490;
        _os_log_impl(&dword_19B41C000, v160, OS_LOG_TYPE_DEBUG, "**INTERFERENCE-1 dAngle=%.3f,dHeading=%.3f,magDiff=%.3f,incDiff=%.3f", buf, 0x2Au);
      }

      v161 = sub_19B420058();
      if (*(v161 + 160) > 1 || *(v161 + 164) > 1 || *(v161 + 168) > 1 || *(v161 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v511 = 134218752;
        *&v511[4] = *&v521;
        *&v511[12] = 2048;
        *&v511[14] = v89;
        *&v511[22] = 2048;
        *&v511[24] = *&v492;
        *&v511[32] = 2048;
        *&v511[34] = *v490;
        v162 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v162);
        if (v162 != buf)
        {
          free(v162);
        }
      }

      v158 = 1;
    }

LABEL_330:
    v163 = 0;
    v164 = (v77 * 4.0) * 13.75;
    v165 = *(a1 + 24);
    v166 = *(a1 + 228);
    if (v165 == 1 && v166 >= 2)
    {
      v163 = (*&v521 > v164 || *(a1 + 1224) > 32.0) && *&v492 < 1.12499997;
    }

    if (v166 > 40 || *&v521 > v164 || v163)
    {
      if ((v163 | v165) != 1 || (v175 = *(a1 + 236), v176 = *(a1 + 16), v176 * 0.25 <= v175) && ((v176 * 10.0) <= v175 || v176 >= *(a1 + 248) || v87 >= 78.0 || v488 >= v489))
      {
        sub_19B6CF824(a1);
        *(a1 + 228) = 0;
        goto LABEL_789;
      }

      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v177 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v177, OS_LOG_TYPE_DEBUG, "Likely bad database lookup. Resetting. ", buf, 2u);
      }

      v178 = sub_19B420058();
      if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        *v511 = 0;
        v179 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLAttitudeDependentKFCalibrator::handleInterference(const CLVector3d<float> &, const CLVector3d<float> &, BOOL, BOOL)", "CoreLocation: %s\n", v179);
        if (v179 != buf)
        {
          free(v179);
        }
      }

      (*(*a1 + 24))(a1);
    }

    if (v158)
    {
      goto LABEL_789;
    }

    goto LABEL_382;
  }

LABEL_385:
  if (*(a1 + 184) == 1)
  {
    HIDWORD(v180) = -858993459 * *(a1 + 324) + 429496728;
    LODWORD(v180) = HIDWORD(v180);
    if ((v180 >> 1) <= 0x19999998)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v181 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v182 = *(a1 + 333);
        *buf = 67109120;
        *&buf[4] = v182;
        _os_log_impl(&dword_19B41C000, v181, OS_LOG_TYPE_DEBUG, "Updating during coasting, fIsResetInternal(%d)", buf, 8u);
      }

      v183 = sub_19B420058();
      if (*(v183 + 160) > 1 || *(v183 + 164) > 1 || *(v183 + 168) > 1 || *(v183 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v184 = *(a1 + 333);
        *v511 = 67109120;
        *&v511[4] = v184;
        v185 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v185);
        if (v185 != buf)
        {
          free(v185);
        }
      }
    }
  }

  if (*(a1 + 185) & v63)
  {
    v186 = *(a1 + 324);
    v188 = v56 < 0.01 && v58 > 0.15;
    if ((*(a1 + 313) & 1) == 0 && ((v189 = fabsf(*(a1 + 308)), v190 = *(a1 + 304), v190 < 2) || v189 <= (((v186 - *(a1 + 316)) / *(a1 + 16)) * 40.0)) && (v190 < 6 || v189 <= 100.0) && (v190 < 7 || !v188 || v189 <= 70.0))
    {
      sub_19B6CD804(buf, a1 + 336);
      v317 = ((v501 * *&buf[68]) + (v500 * *&buf[64])) + (v502 * *&buf[72]);
      v318 = ((v501 * *&buf[44]) + (v500 * *&buf[40])) + (v502 * *&buf[48]);
      *(a1 + 120) = ((v501 * *&buf[20]) + (v500 * *&buf[16])) + (v502 * *&buf[24]);
      *(a1 + 124) = v318;
      *(a1 + 128) = v317;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v319 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v58;
        *&buf[12] = 2048;
        *&buf[14] = v56;
        _os_log_impl(&dword_19B41C000, v319, OS_LOG_TYPE_DEBUG, "resync coasting vector. rotM,%.3f,rotV,%.3f", buf, 0x16u);
      }

      v320 = sub_19B420058();
      if (*(v320 + 160) <= 1 && *(v320 + 164) <= 1 && *(v320 + 168) <= 1 && !*(v320 + 152))
      {
        goto LABEL_428;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 134218240;
      *&v511[4] = v58;
      *&v511[12] = 2048;
      *&v511[14] = v56;
      v199 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v199);
    }

    else
    {
      *(a1 + 72) = *(a1 + 264);
      *(a1 + 80) = *(a1 + 272);
      v191 = *(a1 + 288);
      v192 = *(a1 + 292);
      *(a1 + 120) = v191;
      *(a1 + 124) = v192;
      v193 = *(a1 + 296);
      *(a1 + 128) = v193;
      *(a1 + 328) = v186;
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      if ((*(a1 + 333) & 1) == 0)
      {
        v194 = ((v192 * *(a1 + 356)) + (v191 * *(a1 + 352))) + (v193 * *(a1 + 360));
        v195 = ((v192 * *(a1 + 380)) + (v191 * *(a1 + 376))) + (v193 * *(a1 + 384));
        v196 = ((v192 * *(a1 + 404)) + (v191 * *(a1 + 400))) + (v193 * *(a1 + 408));
        *buf = &unk_1F0E33E90;
        *&buf[8] = v194;
        *&buf[12] = v195;
        *&buf[16] = v196;
        sub_19B6CDC88(a1, buf, (a1 + 336), 3);
      }

      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v197 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v197, OS_LOG_TYPE_DEBUG, "BACKUP resync coasting vector", buf, 2u);
      }

      v198 = sub_19B420058();
      if (*(v198 + 160) <= 1 && *(v198 + 164) <= 1 && *(v198 + 168) <= 1 && !*(v198 + 152))
      {
        goto LABEL_428;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 0;
      v199 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v199);
    }

    if (v199 != buf)
    {
      free(v199);
    }

LABEL_428:
    sub_19B6CD8B4(a1, 1);
    goto LABEL_442;
  }

  HIDWORD(v200) = -858993459 * *(a1 + 324) + 429496728;
  LODWORD(v200) = HIDWORD(v200);
  if ((v200 >> 1) <= 0x19999998)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v201 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v202 = *a3;
      v203 = *(a3 + 1);
      v204 = *(a3 + 2);
      v205 = *(a3 + 3);
      *buf = 67110912;
      *&buf[4] = v61;
      *&buf[8] = 1024;
      *&buf[10] = v63;
      *&buf[14] = 2048;
      *&buf[16] = v58;
      *&buf[24] = 2048;
      *&buf[26] = v56;
      *&buf[34] = 2048;
      *&buf[36] = v202;
      *&buf[44] = 2048;
      *&buf[46] = v203;
      *&buf[54] = 2048;
      *&buf[56] = v204;
      *&buf[64] = 2048;
      *&buf[66] = v205;
      _os_log_impl(&dword_19B41C000, v201, OS_LOG_TYPE_DEBUG, "device status: (smooth static) = (%d %d), rotM,%.3f,rotV,%.3f, q.x,%.3f,q.y,%.3f,q.z,%.3f,q.w,%.3f)", buf, 0x4Au);
    }

    v206 = sub_19B420058();
    if (*(v206 + 160) > 1 || *(v206 + 164) > 1 || *(v206 + 168) > 1 || *(v206 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v207 = *a3;
      v208 = *(a3 + 1);
      v209 = *(a3 + 2);
      v210 = *(a3 + 3);
      *v511 = 67110912;
      *&v511[4] = v61;
      *&v511[8] = 1024;
      *&v511[10] = v63;
      *&v511[14] = 2048;
      *&v511[16] = v58;
      *&v511[24] = 2048;
      *&v511[26] = v56;
      *&v511[34] = 2048;
      *&v511[36] = v207;
      *&v511[44] = 2048;
      *&v511[46] = v208;
      *&v511[54] = 2048;
      *&v511[56] = v209;
      *&v511[64] = 2048;
      *&v511[66] = v210;
      v211 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v211);
      if (v211 != buf)
      {
        free(v211);
      }
    }
  }

LABEL_442:
  v212 = *(a1 + 57);
  if (v212 != 1 || *(a1 + 20) != 5 || *(a1 + 220) != 1)
  {
    v496 = vnegq_f64(*(a1 + 416));
    v216 = *(a1 + 440);
    v497 = -*(a1 + 432);
    v498 = v216;
    sub_19B447A1C(&v492, v496.f64, a3);
    v218 = v492;
    v217 = v493;
    v220 = v494;
    v219 = v495;
    v221 = v505 - *(a1 + 464);
    v490[0] = &unk_1F0E33E90;
    v222 = fabs(v492) + fabs(v493) + fabs(v494) + fabs(v495);
    if (v505 == 0.0)
    {
      v223 = v221;
    }

    else
    {
      v223 = v221 / v505;
    }

    v224 = vsub_f32(v504, *(a1 + 456));
    v225 = vabs_f32(vbsl_s8(vceqz_f32(v504), v224, vdiv_f32(v224, v504)));
    v490[1] = v225;
    v226 = fabsf(v223);
    v491 = v226;
    if (v222 < 1.001)
    {
      v227 = (vaddv_f32(v225) + v226);
      if (v227 > 0.2)
      {
        ++*(a1 + 472);
        --*(a1 + 236);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v228 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          v229 = *(a1 + 472);
          *buf = 67110400;
          *&buf[4] = v229;
          *&buf[8] = 2048;
          *&buf[10] = v218;
          *&buf[18] = 2048;
          *&buf[20] = v217;
          *&buf[28] = 2048;
          *&buf[30] = v220;
          *&buf[38] = 2048;
          *&buf[40] = v219;
          *&buf[48] = 2048;
          *&buf[50] = v227;
          _os_log_impl(&dword_19B41C000, v228, OS_LOG_TYPE_DEBUG, "numSamplesSkipped (%d), deltaQ (%.3f/%.3f/%.3f/%.3f), deltaReadingM (%.3f)", buf, 0x3Au);
        }

        v230 = sub_19B420058();
        if (*(v230 + 160) > 1 || *(v230 + 164) > 1 || *(v230 + 168) > 1 || *(v230 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v231 = *(a1 + 472);
          *v511 = 67110400;
          *&v511[4] = v231;
          *&v511[8] = 2048;
          *&v511[10] = v218;
          *&v511[18] = 2048;
          *&v511[20] = v217;
          *&v511[28] = 2048;
          *&v511[30] = v220;
          *&v511[38] = 2048;
          *&v511[40] = v219;
          *&v511[48] = 2048;
          *&v511[50] = v227;
          v20 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v20);
          goto LABEL_473;
        }

        goto LABEL_789;
      }
    }

    if (v212 && *(a1 + 20) == 5)
    {
      if (!v63)
      {
        ++*(a1 + 472);
        --*(a1 + 236);
        goto LABEL_789;
      }

      if ((*(a1 + 184) & 1) == 0 && (*(a1 + 220) & 1) == 0 && (*(a1 + 16) * 4.0) <= *(a1 + 236))
      {
        *(a1 + 220) = 1;
      }
    }

    v232 = 0;
    v233 = *(a1 + 1568);
    v234 = 0.0;
    do
    {
      v234 = v234 + *(v233 + v232);
      v232 += 40;
    }

    while (v232 != 360);
    v235 = exp(v234 * 5.0) * 15.0;
    if (v235 > 5000.0)
    {
      v235 = 5000.0;
    }

    if (v235 < 300.0)
    {
      v235 = 300.0;
    }

    v236 = exp(-1.0 / *(a1 + 16) / v235);
    v237 = *(a1 + 472);
    if (v237 < 2)
    {
      v239 = v236;
    }

    else
    {
      v238 = v237 - 1;
      v239 = v236;
      do
      {
        v239 = v236 * v239;
        --v238;
      }

      while (v238);
    }

    v240 = 0;
    v241 = *(a1 + 20);
    *(a1 + 1520) = vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 144)), 1.0 - v239), *(a1 + 1520), v239);
    *(a1 + 1536) = (1.0 - v239) * *(a1 + 152) + v239 * *(a1 + 1536);
    v242 = v239 * v239;
    v243 = (1.0 - v239 * v239) * 6.25;
    v244 = v233 + 240;
    for (i = 6; i != 9; ++i)
    {
      for (j = 0; j != 108; j += 36)
      {
        v247 = v242 * *(v244 + j);
        if (v240 == j)
        {
          v248 = v243 + v247;
          v247 = v248;
        }

        *(v244 + j) = v247;
      }

      v240 += 36;
      v244 += 4;
    }

    sub_19B66EF8C((a1 + 1544), v233, 9);
    v249 = 0;
    v250 = *(a1 + 1576);
    v251 = v504;
    *(v250 + 36) = -v504.f32[0];
    *(v250 + 52) = -v251.f32[1];
    v252 = v505;
    *(v250 + 68) = -v505;
    *(v250 + 72) = *(a1 + 352);
    *(v250 + 84) = *(a1 + 356);
    *(v250 + 96) = *(a1 + 360);
    *(v250 + 76) = *(a1 + 376);
    *(v250 + 88) = *(a1 + 380);
    *(v250 + 100) = *(a1 + 384);
    *(v250 + 80) = *(a1 + 400);
    *(v250 + 92) = *(a1 + 404);
    *(v250 + 104) = *(a1 + 408);
    __asm { FMOV            V2.2S, #1.0 }

    v521 = _D2;
    v522.i32[0] = 1065353216;
    v527 = 0.0;
    v526 = 0;
    v258 = v250;
    do
    {
      v259 = v526.f32[v249];
      v260 = v258;
      for (k = 1472; k != 1544; k += 8)
      {
        v262 = *v260;
        v260 += 3;
        v259 = v259 + v262 * *(a1 + k);
      }

      v526.f32[v249++] = v259;
      ++v258;
    }

    while (v249 != 3);
    v524 = vsub_f32(v251, v526);
    v525 = v252 - v527;
    sub_19B66EDDC(buf, (a1 + 1544), v250, &v521, &v524, 9, 3, v511);
    v263 = *(a1 + 1568);
    bzero(*(a1 + 1584), 0x144uLL);
    bzero(v263, 0x144uLL);
    v264 = 0;
    v265 = *(a1 + 1552);
    v266 = *(a1 + 1584);
    v267 = *(a1 + 1544);
    v268 = v266;
    do
    {
      v266[10 * v264] = *(v265 + 4 * v264);
      if (v264)
      {
        v269 = 0;
        v270 = v268;
        do
        {
          *v270 = *(v265 + 4 * v264) * *(v267 + 4 * ((v264 - 1) * v264 / 2) + 4 * v269);
          v270 += 9;
          ++v269;
        }

        while (v264 != v269);
      }

      ++v264;
      ++v268;
    }

    while (v264 != 9);
    for (m = 0; m != 9; ++m)
    {
      v272 = 0;
      v273 = *(a1 + 1544) + 4 * m;
      v274 = v266;
      do
      {
        if (m <= v272)
        {
          LODWORD(n) = v272;
        }

        else
        {
          LODWORD(n) = m;
        }

        if (m >= v272)
        {
          v276 = v266[(9 * v272 + n)] + 0.0;
          LODWORD(n) = n + 1;
        }

        else
        {
          v276 = 0.0;
        }

        if (n <= 8)
        {
          for (n = n; n != 9; ++n)
          {
            v276 = v276 + (*(v273 + 4 * ((n - 1) * n / 2)) * v274[n]);
          }
        }

        *(v263 + 9 * v272++ + m) = v276;
        v274 += 9;
      }

      while (v272 != 9);
    }

    for (ii = 0; ii != 72; ii += 8)
    {
      *(a1 + ii + 1472) = *&buf[ii] + *(a1 + ii + 1472);
    }

    v278 = vcvt_f32_f64(*(a1 + 1520));
    v279 = *(a1 + 1536);
    *(a1 + 144) = v278;
    *(a1 + 152) = v279;
    if (v241 > 0)
    {
      v280 = *(a1 + 504) + 1;
      *(a1 + 504) = v280;
      v281 = *(a1 + 496) + v279;
      *(a1 + 496) = v281;
      v282 = 1.0 / v280;
      v283 = vadd_f32(*(a1 + 488), v278);
      *(a1 + 488) = v283;
      *(a1 + 144) = vmul_n_f32(v283, v282);
      *(a1 + 152) = v281 * v282;
    }

    *(a1 + 1592) = 0;
    *(a1 + 1600) = 0;
    v284 = (a1 + 1592);
    v285 = *(a1 + 1472);
    *buf = v285;
    v286 = *(a1 + 1480);
    *v511 = v286;
    v287 = *(a1 + 1488);
    *&v521 = v287;
    sub_19B4200DC(a1 + 784, buf);
    sub_19B4200DC(a1 + 856, v511);
    sub_19B4200DC(a1 + 928, &v521);
    v288 = 0;
    v289 = *(a1 + 1568);
    v290 = 0.0;
    do
    {
      v291 = *v289;
      v289 += 10;
      v526.f32[v288] = v291;
      v290 = v290 + v291;
      ++v288;
    }

    while (v288 != 3);
    v292 = *(a1 + 848);
    v293 = 0.0;
    v294 = 0.0;
    if (v292 >= 2)
    {
      v295 = (v292 * *(a1 + 804)) - (*(a1 + 800) * *(a1 + 800));
      v294 = 0.0;
      if (v295 >= 0.0)
      {
        v294 = v295 / ((v292 - 1) * v292);
      }
    }

    v296 = sqrtf(v294);
    v524.f32[0] = v296;
    v297 = *(a1 + 920);
    if (v297 >= 2)
    {
      v298 = (v297 * *(a1 + 876)) - (*(a1 + 872) * *(a1 + 872));
      if (v298 >= 0.0)
      {
        v293 = v298 / ((v297 - 1) * v297);
      }
    }

    v299 = sqrtf(v293);
    v524.f32[1] = v299;
    v300 = *(a1 + 992);
    v301 = 0.0;
    if (v300 >= 2)
    {
      v302 = (v300 * *(a1 + 948)) - (*(a1 + 944) * *(a1 + 944));
      if (v302 >= 0.0)
      {
        v301 = v302 / ((v300 - 1) * v300);
      }
    }

    v525 = sqrtf(v301);
    v303 = (v296 + v299) + v525;
    if (v303 > 1000.0)
    {
LABEL_537:
      sub_19B6CFC90(a1, &v499);
      goto LABEL_767;
    }

    if (*(a1 + 20) >= 3)
    {
      if (*(a1 + 24))
      {
        v304 = 0.08;
      }

      else
      {
        v304 = 0.04;
      }
    }

    else
    {
      v304 = 0.08;
    }

    v305 = 0;
    v306 = 0;
    v307 = (a1 + 1596);
    v308 = 0.0;
    do
    {
      v309 = (*(*a1 + 72))(a1);
      v310 = v526.f32[v305];
      if (v310 <= 0.02)
      {
        v311 = v309;
      }

      else
      {
        v311 = 0;
      }

      if (v311 == 1 && v524.f32[v305] > 10.0)
      {
        goto LABEL_537;
      }

      if (v310 > v308)
      {
        v308 = v526.f32[v305];
      }

      if (v310 <= v304 && v524.f32[v305] <= 1.0)
      {
        *(a1 + v305 * 4 + 1596) = 1;
        ++v306;
      }

      ++v305;
    }

    while (v305 != 3);
    if (v290 <= 0.125 && (v306 == 3 || (v312 = (*(*a1 + 72))(a1), v303 < 15.0) && v312 != 1 && v308 <= 0.08))
    {
      *v284 = xmmword_19B7BC2C0;
      *(a1 + 320) = -1;
      if (v290 <= 0.06)
      {
        *v284 = 5;
      }
    }

    else if (v303 <= 1.0 && v306 >= 1)
    {
      if (v290 <= 0.6)
      {
        *v284 = 3;
        if (v306 <= 1)
        {
          v313 = 0;
          v314 = -1;
          v315 = 9.0;
          do
          {
            if (!v307[v313] && v526.f32[v313] < v315)
            {
              v314 = v313;
              v315 = v526.f32[v313];
            }

            ++v313;
          }

          while (v313 != 3);
          v307[v314] = 1;
        }
      }

      else if (v306 >= 2)
      {
        *v284 = v306;
      }

      if (*v307)
      {
        *(a1 + 320) = 0;
      }

      else
      {
        if (*(a1 + 1600))
        {
          v316 = 1;
        }

        else
        {
          v316 = 2;
        }

        *(a1 + 320) = v316;
      }
    }

    v510 = 0.0;
    if (*(a1 + 57))
    {
      v321 = (*(*a1 + 72))(a1);
      v322 = *(a1 + 1592);
      v323 = *(a1 + 20);
      if (v322 >= v323)
      {
        v324 = v321;
      }

      else
      {
        v324 = 0;
      }

      if (v324 == 1)
      {
        v325 = *(a1 + 80) - *(a1 + 1488);
        v326 = fabsf(v325);
        v521 = &unk_1F0E33E90;
        v327 = vabs_f32(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*(a1 + 72)), *(a1 + 1472))));
        v522 = v327;
        v523 = v326;
        if (v322 <= v323 && (v328 = vaddv_f32(v327) + v326, 10.0 / v323 >= v328))
        {
          if (v328 <= 1.0)
          {
            goto LABEL_767;
          }

          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v416 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
          {
            v417 = *(a1 + 1472);
            v418 = *(a1 + 1480);
            v419 = *(a1 + 1488);
            v420 = *(a1 + 1608);
            *buf = 134218752;
            *&buf[4] = v417;
            *&buf[12] = 2048;
            *&buf[14] = v418;
            *&buf[22] = 2048;
            *&buf[24] = v419;
            *&buf[32] = 1024;
            *&buf[34] = v420;
            _os_log_impl(&dword_19B41C000, v416, OS_LOG_TYPE_DEBUG, "estimates improved.(%.3f/%.3f/%.3f), numImprov=%d ", buf, 0x26u);
          }

          v421 = sub_19B420058();
          if (*(v421 + 160) > 1 || *(v421 + 164) > 1 || *(v421 + 168) > 1 || *(v421 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v422 = *(a1 + 1472);
            v423 = *(a1 + 1480);
            v424 = *(a1 + 1488);
            v425 = *(a1 + 1608);
            *v511 = 134218752;
            *&v511[4] = v422;
            *&v511[12] = 2048;
            *&v511[14] = v423;
            *&v511[22] = 2048;
            *&v511[24] = v424;
            *&v511[32] = 1024;
            *&v511[34] = v425;
            v426 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v426);
            if (v426 != buf)
            {
              free(v426);
            }
          }

          v427 = *(a1 + 1472);
          *buf = v427;
          v428 = *(a1 + 1480);
          *v511 = v428;
          v429 = *(a1 + 1488);
          v519 = v429;
          sub_19B6CDC2C(a1 + 1232, buf, v511, &v519);
          v430 = 0.0;
          v431 = &v526;
          for (jj = 399; jj != 402; ++jj)
          {
            v433 = v431->f32[0];
            v431 = (v431 + 4);
            v430 = v430 + (*(a1 + 4 * jj) * v433);
          }

          if (v430 < 0.03)
          {
            v434 = *(a1 + 1608) + 1;
            *(a1 + 1608) = v434;
            if (v434 >= 2)
            {
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v435 = qword_1EAFE2888;
              if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
              {
                v436 = *(a1 + 184);
                *buf = 67109120;
                *&buf[4] = v436;
                _os_log_impl(&dword_19B41C000, v435, OS_LOG_TYPE_DEBUG, "new estimates needed, fIsCoasting (%d)", buf, 8u);
              }

              v437 = sub_19B420058();
              if (*(v437 + 160) > 1 || *(v437 + 164) > 1 || *(v437 + 168) > 1 || *(v437 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2880 != -1)
                {
                  dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
                }

                v438 = *(a1 + 184);
                *v511 = 67109120;
                *&v511[4] = v438;
                v439 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v439);
                if (v439 != buf)
                {
                  free(v439);
                }
              }

              sub_19B6CDC88(a1, &v499, (a1 + 336), *(a1 + 1592));
              *(a1 + 1608) = 0;
              goto LABEL_767;
            }
          }
        }

        else
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v329 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
          {
            v330 = *(a1 + 1472);
            v331 = *(a1 + 1480);
            v332 = *(a1 + 1488);
            v333 = *(a1 + 1596);
            v334 = *(a1 + 1600);
            v335 = *(a1 + 1604);
            v336 = *(a1 + 1592);
            *buf = 134219776;
            *&buf[4] = v330;
            *&buf[12] = 2048;
            *&buf[14] = v331;
            *&buf[22] = 2048;
            *&buf[24] = v332;
            *&buf[32] = 2048;
            *&buf[34] = v290;
            *&buf[42] = 1024;
            *&buf[44] = v333;
            *&buf[48] = 1024;
            *&buf[50] = v334;
            *&buf[54] = 1024;
            *&buf[56] = v335;
            *&buf[60] = 1024;
            *&buf[62] = v336;
            _os_log_impl(&dword_19B41C000, v329, OS_LOG_TYPE_DEBUG, "calibrated, first estimates completed (%.3f/%.3f/%.3f/%.3f), conv(%d %d %d), level (%d)", buf, 0x42u);
          }

          v337 = sub_19B420058();
          if (*(v337 + 160) > 1 || *(v337 + 164) > 1 || *(v337 + 168) > 1 || *(v337 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v338 = *(a1 + 1472);
            v339 = *(a1 + 1480);
            v340 = *(a1 + 1488);
            v341 = *(a1 + 1596);
            v342 = *(a1 + 1600);
            v343 = *(a1 + 1604);
            v344 = *(a1 + 1592);
            *v511 = 134219776;
            *&v511[4] = v338;
            *&v511[12] = 2048;
            *&v511[14] = v339;
            *&v511[22] = 2048;
            *&v511[24] = v340;
            *&v511[32] = 2048;
            *&v511[34] = v290;
            *&v511[42] = 1024;
            *&v511[44] = v341;
            *&v511[48] = 1024;
            *&v511[50] = v342;
            *&v511[54] = 1024;
            *&v511[56] = v343;
            *&v511[60] = 1024;
            *&v511[62] = v344;
            v345 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v345);
            if (v345 != buf)
            {
              free(v345);
            }
          }

          v346 = *(a1 + 1472);
          *buf = v346;
          v347 = *(a1 + 1480);
          *v511 = v347;
          v348 = *(a1 + 1488);
          v519 = v348;
          sub_19B4200DC(a1 + 1248, buf);
          sub_19B4200DC(a1 + 1320, v511);
          sub_19B4200DC(a1 + 1392, &v519);
          *v511 = *(a1 + 168);
          *&v511[8] = *(a1 + 176);
          if (!sub_19B6CFEA0(a1, v511, *(a1 + 1592), &v510))
          {
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v391 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v392 = *(a1 + 184);
              *buf = 67109120;
              *&buf[4] = v392;
              _os_log_impl(&dword_19B41C000, v391, OS_LOG_TYPE_DEBUG, "new estimates denied, fIsCoasting (%d)", buf, 8u);
            }

            v393 = sub_19B420058();
            if (*(v393 + 160) > 1 || *(v393 + 164) > 1 || *(v393 + 168) > 1 || *(v393 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v394 = *(a1 + 184);
              v519 = 1.5047e-36;
              v520 = v394;
              v395 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v395);
              if (v395 != buf)
              {
                free(v395);
              }
            }

            sub_19B6CDC88(a1, &v499, (a1 + 336), *(a1 + 1592));
            goto LABEL_767;
          }

          if ((*(a1 + 172) + *(a1 + 168) + *(a1 + 176)) <= 2 && (*(a1 + 16) * 180.0) < *(a1 + 236))
          {
            v349 = *(a1 + 1592);
            if (v349 >= 4 && v349 > *(a1 + 20))
            {
              sub_19B6CDC88(a1, &v499, (a1 + 336), v349);
              goto LABEL_767;
            }
          }

          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v396 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
          {
            v397 = *(a1 + 184);
            *buf = 67109120;
            *&buf[4] = v397;
            _os_log_impl(&dword_19B41C000, v396, OS_LOG_TYPE_DEBUG, "taking new estimates, fIsCoasting (%d)", buf, 8u);
          }

          v398 = sub_19B420058();
          if (*(v398 + 160) > 1 || *(v398 + 164) > 1 || *(v398 + 168) > 1 || *(v398 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v399 = *(a1 + 184);
            v519 = 1.5047e-36;
            v520 = v399;
            v400 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v400);
            if (v400 != buf)
            {
              free(v400);
            }
          }
        }
      }

      else
      {
        if (v322 <= v323)
        {
          goto LABEL_767;
        }

        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v365 = qword_1EAFE2888;
        v366 = v290;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          v367 = *(a1 + 1472);
          v368 = *(a1 + 1480);
          v369 = *(a1 + 1488);
          v370 = *(a1 + 1596);
          v371 = *(a1 + 1600);
          v372 = *(a1 + 1604);
          v373 = *(a1 + 1592);
          *buf = 134219776;
          *&buf[4] = v367;
          *&buf[12] = 2048;
          *&buf[14] = v368;
          *&buf[22] = 2048;
          *&buf[24] = v369;
          *&buf[32] = 2048;
          *&buf[34] = v366;
          *&buf[42] = 1024;
          *&buf[44] = v370;
          *&buf[48] = 1024;
          *&buf[50] = v371;
          *&buf[54] = 1024;
          *&buf[56] = v372;
          *&buf[60] = 1024;
          *&buf[62] = v373;
          _os_log_impl(&dword_19B41C000, v365, OS_LOG_TYPE_DEBUG, "first estimates completed (%.3f/%.3f/%.3f/%.3f), conv(%d %d %d), level (%d)", buf, 0x42u);
        }

        v374 = sub_19B420058();
        if (*(v374 + 160) > 1 || *(v374 + 164) > 1 || *(v374 + 168) > 1 || *(v374 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
          }

          v375 = *(a1 + 1472);
          v376 = *(a1 + 1480);
          v377 = *(a1 + 1488);
          v378 = *(a1 + 1596);
          v379 = *(a1 + 1600);
          v380 = *(a1 + 1604);
          v381 = *(a1 + 1592);
          *v511 = 134219776;
          *&v511[4] = v375;
          *&v511[12] = 2048;
          *&v511[14] = v376;
          *&v511[22] = 2048;
          *&v511[24] = v377;
          *&v511[32] = 2048;
          *&v511[34] = v366;
          *&v511[42] = 1024;
          *&v511[44] = v378;
          *&v511[48] = 1024;
          *&v511[50] = v379;
          *&v511[54] = 1024;
          *&v511[56] = v380;
          *&v511[60] = 1024;
          *&v511[62] = v381;
          v382 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v382);
          if (v382 != buf)
          {
            free(v382);
          }
        }

        sub_19B43FA98((a1 + 1248));
        sub_19B43FA98((a1 + 1320));
        sub_19B43FA98((a1 + 1392));
        v383 = *(a1 + 1472);
        *buf = v383;
        v384 = *(a1 + 1480);
        *v511 = v384;
        v385 = *(a1 + 1488);
        *&v521 = v385;
        sub_19B4200DC(a1 + 1248, buf);
        sub_19B4200DC(a1 + 1320, v511);
        sub_19B4200DC(a1 + 1392, &v521);
      }

      *(a1 + 244) = 1;
      goto LABEL_767;
    }

    if (*(a1 + 333) != 1 || *(a1 + 1592) < *(a1 + 1464))
    {
      if (*(a1 + 24) != 1 || (v350 = *(a1 + 1592), v350 < *(a1 + 20)) && (v306 < 2 || v350 <= 2))
      {
        if (*(a1 + 184) != 1 || (roundf(*(a1 + 16) * 20.0) < *(a1 + 232) ? (v351 = v306 < 2) : (v351 = 1), v351 || *v284 < 3))
        {
LABEL_767:
          if (*(a1 + 244))
          {
            v448 = *(a1 + 20);
            v449 = *(a1 + 1592);
            if (v448 >= 2)
            {
              if (v448 != v449)
              {
                goto LABEL_771;
              }

              v450 = *(a1 + 1472);
              v451 = vabdd_f64(*(a1 + 520), v450);
              LODWORD(v450) = *(a1 + 1596);
              v452 = *(a1 + 1480);
              v453 = vabdd_f64(*(a1 + 524), v452);
              LODWORD(v452) = *(a1 + 1600);
              v454 = v453 * *&v452 + v451 * *&v450;
              v455 = *(a1 + 1488);
              v456 = vabdd_f64(*(a1 + 528), v455);
              LODWORD(v455) = *(a1 + 1604);
              *&v454 = v454 + v456 * *&v455;
              v449 = *(a1 + 20);
              if (*&v454 > 2.5)
              {
LABEL_771:
                *(a1 + 25) = 1;
              }
            }

            v457 = vcvt_f32_f64(*(a1 + 1472));
            v458 = *(a1 + 1488);
            *(a1 + 72) = v457;
            *(a1 + 80) = v458;
            v459 = *(a1 + 1512);
            *(a1 + 96) = vcvt_f32_f64(*(a1 + 1496));
            *(a1 + 104) = v459;
            v460 = *(a1 + 1536);
            *(a1 + 120) = vcvt_f32_f64(*(a1 + 1520));
            *(a1 + 128) = v460;
            *(a1 + 20) = v449;
            *(a1 + 168) = *(a1 + 1596);
            *(a1 + 176) = *(a1 + 1604);
            if (*(a1 + 25) == 1)
            {
              *(a1 + 520) = v457;
              *(a1 + 528) = v458;
            }

            *(a1 + 24) = 0;
            *(a1 + 252) = 0;
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
            }

            v461 = qword_1EAFE2888;
            if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
            {
              v462 = *(a1 + 1472);
              v463 = *(a1 + 1480);
              v464 = *(a1 + 1488);
              v465 = *(a1 + 1496);
              v466 = *(a1 + 1504);
              v467 = *(a1 + 1512);
              v468 = *(a1 + 1520);
              v469 = *(a1 + 1528);
              v470 = *(a1 + 1536);
              *buf = 134220032;
              *&buf[4] = v462;
              *&buf[12] = 2048;
              *&buf[14] = v463;
              *&buf[22] = 2048;
              *&buf[24] = v464;
              *&buf[32] = 2048;
              *&buf[34] = v465;
              *&buf[42] = 2048;
              *&buf[44] = v466;
              *&buf[52] = 2048;
              *&buf[54] = v467;
              *&buf[62] = 2048;
              *&buf[64] = v468;
              *&buf[72] = 2048;
              *&buf[74] = v469;
              v529 = 2048;
              v530 = v470;
              _os_log_impl(&dword_19B41C000, v461, OS_LOG_TYPE_DEBUG, "bias.x,%.3f,bias.y,%.3f,bias.z,%.3f,scale.x,%.5f,scale.y,%.5f,scale.z,%.5f,extF.x,%.3f,extF.y,%.3f,extF.z,%.3f", buf, 0x5Cu);
            }

            v471 = sub_19B420058();
            if (*(v471 + 160) > 1 || *(v471 + 164) > 1 || *(v471 + 168) > 1 || *(v471 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2880 != -1)
              {
                dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
              }

              v472 = *(a1 + 1472);
              v473 = *(a1 + 1480);
              v474 = *(a1 + 1488);
              v475 = *(a1 + 1496);
              v476 = *(a1 + 1504);
              v477 = *(a1 + 1512);
              v478 = *(a1 + 1520);
              v479 = *(a1 + 1528);
              v480 = *(a1 + 1536);
              *v511 = 134220032;
              *&v511[4] = v472;
              *&v511[12] = 2048;
              *&v511[14] = v473;
              *&v511[22] = 2048;
              *&v511[24] = v474;
              *&v511[32] = 2048;
              *&v511[34] = v475;
              *&v511[42] = 2048;
              *&v511[44] = v476;
              *&v511[52] = 2048;
              *&v511[54] = v477;
              *&v511[62] = 2048;
              *&v511[64] = v478;
              *&v511[72] = 2048;
              v512 = v479;
              v513 = 2048;
              v514 = v480;
              v481 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAttitudeDependentKFCalibrator::setCalibrationValues()", "CoreLocation: %s\n", v481);
              if (v481 != buf)
              {
                free(v481);
              }
            }

            sub_19B6CD8B4(a1, 0);
            *(a1 + 244) = 0;
            *(a1 + 220) = 0;
          }

          *(a1 + 472) = 0;
          v482 = *(a3 + 1);
          *(a1 + 416) = *a3;
          *(a1 + 432) = v482;
          if (&v503 != (a1 + 448))
          {
            *(a1 + 456) = v504;
            *(a1 + 464) = v505;
          }

          goto LABEL_789;
        }
      }
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v352 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v353 = *(a1 + 1472);
      v354 = *(a1 + 1480);
      v355 = *(a1 + 1488);
      *buf = 134218496;
      *&buf[4] = v353;
      *&buf[12] = 2048;
      *&buf[14] = v354;
      *&buf[22] = 2048;
      *&buf[24] = v355;
      _os_log_impl(&dword_19B41C000, v352, OS_LOG_TYPE_DEBUG, "new internal estimates (%.3f %.3f %.3f)", buf, 0x20u);
    }

    v356 = sub_19B420058();
    if (*(v356 + 160) > 1 || *(v356 + 164) > 1 || *(v356 + 168) > 1 || *(v356 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v357 = *(a1 + 1472);
      v358 = *(a1 + 1480);
      v359 = *(a1 + 1488);
      *v511 = 134218496;
      *&v511[4] = v357;
      *&v511[12] = 2048;
      *&v511[14] = v358;
      *&v511[22] = 2048;
      *&v511[24] = v359;
      v360 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v360);
      if (v360 != buf)
      {
        free(v360);
      }
    }

    *(a1 + 57) = 1;
    if (*(a1 + 333) != 1)
    {
      v386 = *(a1 + 1472);
      *buf = v386;
      v387 = *(a1 + 1480);
      *v511 = v387;
      v388 = *(a1 + 1488);
      *&v521 = v388;
      sub_19B4200DC(a1 + 1248, buf);
      sub_19B4200DC(a1 + 1320, v511);
      sub_19B4200DC(a1 + 1392, &v521);
      v389 = sub_19B6CFEA0(a1, v307, *(a1 + 1592), &v510);
      v390 = *(a1 + 1592);
      if (v389)
      {
        if (v390 == 3 && *(a1 + 20) >= 4)
        {
          sub_19B6CDC2C(a1 + 1232, (a1 + 72), (a1 + 76), (a1 + 80));
          goto LABEL_767;
        }

        sub_19B6CFC1C(a1);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v440 = qword_1EAFE2888;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          v441 = *v284;
          *buf = 67109120;
          *&buf[4] = v441;
          _os_log_impl(&dword_19B41C000, v440, OS_LOG_TYPE_DEBUG, "taking new estimates, reached database. (%d)", buf, 8u);
        }

        v442 = sub_19B420058();
        if (*(v442 + 160) <= 1 && *(v442 + 164) <= 1 && *(v442 + 168) <= 1 && !*(v442 + 152))
        {
          goto LABEL_767;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v443 = *v284;
        *v511 = 67109120;
        *&v511[4] = v443;
        v415 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v415);
      }

      else
      {
        sub_19B6CDC88(a1, &v499, (a1 + 336), v390);
        v407 = v510;
        if (v510 > 25.0 && (*(a1 + 184) & 1) == 0)
        {
          *(a1 + 252) = 1;
        }

        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v408 = qword_1EAFE2888;
        v409 = v407;
        if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
        {
          v410 = *(a1 + 1592);
          v411 = *(a1 + 252);
          *buf = 67109632;
          *&buf[4] = v410;
          *&buf[8] = 1024;
          *&buf[10] = v411;
          *&buf[14] = 2048;
          *&buf[16] = v409;
          _os_log_impl(&dword_19B41C000, v408, OS_LOG_TYPE_DEBUG, "new esitmates disagree with database. (%d,%d,%.3f)", buf, 0x18u);
        }

        v412 = sub_19B420058();
        if (*(v412 + 160) <= 1 && *(v412 + 164) <= 1 && *(v412 + 168) <= 1 && !*(v412 + 152))
        {
          goto LABEL_767;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
        }

        v413 = *(a1 + 1592);
        v414 = *(a1 + 252);
        *v511 = 67109632;
        *&v511[4] = v413;
        *&v511[8] = 1024;
        *&v511[10] = v414;
        *&v511[14] = 2048;
        *&v511[16] = v409;
        v415 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v415);
      }

      goto LABEL_765;
    }

    v361 = *(a1 + 1472);
    *buf = v361;
    v362 = *(a1 + 1480);
    *v511 = v362;
    v363 = *(a1 + 1488);
    *&v521 = v363;
    sub_19B4200DC(a1 + 1248, buf);
    sub_19B4200DC(a1 + 1320, v511);
    sub_19B4200DC(a1 + 1392, &v521);
    v364 = *(a1 + 1464);
    if (*(a1 + 1312) < *(a1 + 1256))
    {
      sub_19B6CDC88(a1, &v499, (a1 + 336), *(a1 + 1464));
      goto LABEL_767;
    }

    if (sub_19B6CFEA0(a1, v307, *(a1 + 1464), &v510))
    {
      sub_19B6CFC1C(a1);
      v401 = *(a1 + 1472);
      v402 = *(a1 + 1480);
      v403 = *(a1 + 1488);
      sub_19B6D02A0(a1, v401, v402, v403);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v404 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v405 = *(a1 + 184);
        *buf = 67109120;
        *&buf[4] = v405;
        _os_log_impl(&dword_19B41C000, v404, OS_LOG_TYPE_DEBUG, "taking new estimates, Internal. fIsCoasting (%d)", buf, 8u);
      }

      v406 = sub_19B420058();
      if (*(v406 + 160) <= 1 && *(v406 + 164) <= 1 && *(v406 + 168) <= 1 && !*(v406 + 152))
      {
        goto LABEL_767;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 == -1)
      {
        goto LABEL_764;
      }
    }

    else
    {
      sub_19B6CDC88(a1, &v499, (a1 + 336), *(a1 + 1592));
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      v444 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v445 = *(a1 + 184);
        *buf = 67109120;
        *&buf[4] = v445;
        _os_log_impl(&dword_19B41C000, v444, OS_LOG_TYPE_DEBUG, "new estimates denied, fIsCoasting (%d)", buf, 8u);
      }

      v446 = sub_19B420058();
      if (*(v446 + 160) <= 1 && *(v446 + 164) <= 1 && *(v446 + 168) <= 1 && !*(v446 + 152))
      {
        goto LABEL_767;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 == -1)
      {
        goto LABEL_764;
      }
    }

    dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
LABEL_764:
    v447 = *(a1 + 184);
    *v511 = 67109120;
    *&v511[4] = v447;
    v415 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "int CLAttitudeDependentKFCalibrator::calcCalibrationLevel(const CLVector3d<float> &)", "CoreLocation: %s\n", v415);
LABEL_765:
    if (v415 != buf)
    {
      free(v415);
    }

    goto LABEL_767;
  }

  HIDWORD(v213) = -858993459 * *(a1 + 324) + 429496728;
  LODWORD(v213) = HIDWORD(v213);
  if ((v213 >> 2) <= 0xCCCCCCC)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
    }

    v214 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v214, OS_LOG_TYPE_DEBUG, "coasting vector is mature, no more updating", buf, 2u);
    }

    v215 = sub_19B420058();
    if (*(v215 + 160) > 1 || *(v215 + 164) > 1 || *(v215 + 168) > 1 || *(v215 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29A60);
      }

      *v511 = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAttitudeDependentKFCalibrator::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v20);
      goto LABEL_473;
    }
  }

LABEL_789:
  v483 = *MEMORY[0x1E69E9840];
}