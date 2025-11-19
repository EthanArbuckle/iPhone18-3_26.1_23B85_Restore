uint64_t sub_19B41DF08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 16);
  v9 = a2;
  v10 = v8 + 80 * a2;
  v11 = *(v10 + 32);
  if (v11 != (v10 + 40))
  {
    do
    {
      v12 = *(v11 + 10);
      if (!v12)
      {
        result = (*(*v11[4] + 16))(v11[4], a2, a3, a4);
        v12 = *(v11 + 10);
      }

      *(v11 + 10) = (v12 + 1) % *(v11 + 11);
      v13 = v11[1];
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
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v8 = *(v7 + 16);
      v11 = v14;
    }

    while (v14 != (v8 + 80 * v9 + 40));
  }

  v16 = v8 + 80 * v9;
  v17 = *(v16 + 64);
  if (v17 != v16 + 56)
  {
    do
    {
      result = (*(**(v17 + 16) + 16))(*(v17 + 16), a2, a3, a4);
      v17 = *(v17 + 8);
    }

    while (v17 != *(v7 + 16) + 80 * v9 + 56);
  }

  return result;
}

double sub_19B41E070(unint64_t a1)
{
  v2 = *&qword_1ED71C8F8;
  if (*&qword_1ED71C8F8 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_1ED71C8F8 = v2;
  }

  return v2 * a1;
}

float32x4_t sub_19B41E130(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_19B41E194(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  *a2 = 0xBFF0000000000000;
  memset(buf, 0, sizeof(buf));
  sub_19B41E130(buf, a3);
  *(a2 + 8) = *buf;
  *(a2 + 96) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  if (a1)
  {
    __n = 0;
    __src = 0;
    IOHIDEventGetVendorDefinedData();
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      __dst = 0;
LABEL_25:
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLSensorFusionServiceSPU::populateDeviceMotion(IOHIDEventRef, uint32_t, CLSensorFusionService::Sample &)", "CoreLocation: %s\n");
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "#Warning Device motion event ref invalid", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      __dst = 0;
      goto LABEL_25;
    }
  }

  result = 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B41EA5C(uint64_t a1, uint64_t a2, __IOHIDServiceClient *a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Type = IOHIDEventGetType();
    if (Type)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v9 != v10)
      {
        v11 = Type;
        do
        {
          v12 = v9[1];
          if (v12)
          {
            v13 = *v9;
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v14 = std::__shared_weak_count::lock(v12);
            if (v14)
            {
              v15 = v14;
              if (v13)
              {
                v16 = *(v13 + 56);
                if (v16)
                {
                  if (*(v13 + 24) == a3 || *(v13 + 152) == v11)
                  {
                    v16(*(v13 + 64), a2, a3, a4);
                  }
                }
              }

              sub_19B41FFEC(v15);
            }

            std::__shared_weak_count::__release_weak(v12);
          }

          v9 += 2;
        }

        while (v9 != v10);
      }
    }

    else
    {
      valuePtr = 0;
      RegistryID = IOHIDServiceClientGetRegistryID(a3);
      CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v21 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
      {
        *buf = 134283777;
        v43 = a3;
        v44 = 2050;
        v45 = valuePtr;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Got null event,sender %{private}p,registryID %{public}llx", buf, 0x16u);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v38 = 134283777;
        v39 = a3;
        v40 = 2050;
        v41 = valuePtr;
        v23 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      v25 = *(a1 + 8);
      for (i = *(a1 + 16); v25 != i; v25 += 2)
      {
        v26 = v25[1];
        if (v26)
        {
          v27 = *v25;
          atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v28 = std::__shared_weak_count::lock(v26);
          if (v28)
          {
            v29 = v28;
            if (v27)
            {
              if (*(v27 + 8) == valuePtr && *(v27 + 136))
              {
                if (qword_1ED71C830 != -1)
                {
                  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                }

                v30 = off_1ED71C838;
                if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Fetching historical events", buf, 2u);
                }

                v31 = sub_19B420058();
                if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C830 != -1)
                  {
                    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                  }

                  LOWORD(v38) = 0;
                  v32 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v32);
                  if (v32 != buf)
                  {
                    free(v32);
                  }
                }

                (*(v27 + 136))(*(v27 + 144));
              }

              else
              {
                if (qword_1ED71C830 != -1)
                {
                  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                }

                v33 = off_1ED71C838;
                if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Did not fetch historical events", buf, 2u);
                }

                v34 = sub_19B420058();
                if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C830 != -1)
                  {
                    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                  }

                  LOWORD(v38) = 0;
                  v35 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v35);
                  if (v35 != buf)
                  {
                    free(v35);
                  }
                }
              }
            }

            sub_19B41FFEC(v29);
          }

          std::__shared_weak_count::__release_weak(v26);
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Received null sender", buf, 2u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      LOWORD(v38) = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onEvent(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_19B41F160(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_19B41F1A0(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v7 = 0xBFF0000000000000;
  sub_19B41E130((&v7 + 8), a2);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v12 = xmmword_19B7BA300;
  v13 = 0x1FF00000000;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_19B41E194(a5, &v7, xmmword_19B7BA300))
  {
    sub_19B41FA70(a1, &v7);
  }
}

void sub_19B41F22C()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v188 = *MEMORY[0x1E69E9840];
  if (*(v0 + 96) <= 0.0)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else if (((*(v0 + 178) ^ *(v1 + 82)) >> 8))
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  v5 = mach_absolute_time();
  v6 = sub_19B41E070(v5);
  v7 = *v2;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v8 = v6 - v7;
  v9 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, v4))
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    v13 = *(v2 + 20);
    v14 = *(v2 + 24);
    v15 = *(v2 + 28);
    v16 = *(v2 + 32);
    v17 = (*(v2 + 36) * 57.296);
    v18 = (*(v2 + 40) * 57.296);
    v19 = (*(v2 + 44) * 57.296);
    v20 = *(v2 + 48);
    v21 = *(v2 + 52);
    v22 = *(v2 + 56);
    v23 = *(v2 + 68);
    v24 = *(v2 + 72);
    v25 = *(v2 + 76);
    v26 = *(v2 + 60);
    v27 = *(v2 + 64);
    v28 = *(v2 + 80);
    v29 = *(v2 + 84);
    v30 = *(v2 + 81);
    v31 = *(v2 + 82);
    v32 = *(v2 + 96);
    v33 = *v2;
    *buf = 134224384;
    v95 = v10;
    v96 = 2048;
    v97 = v11;
    v98 = 2048;
    v99 = v12;
    v100 = 2048;
    v101 = v13;
    v102 = 2048;
    v103 = v14;
    v104 = 2048;
    v105 = v15;
    v106 = 2048;
    v107 = v16;
    v108 = 2048;
    v109 = v17;
    v110 = 2048;
    v111 = v18;
    v112 = 2048;
    v113 = v19;
    v114 = 2048;
    v115 = v20;
    v116 = 2048;
    v117 = v21;
    v118 = 2048;
    v119 = v22;
    v120 = 2048;
    v121 = v23;
    v122 = 2048;
    v123 = v24;
    v124 = 2048;
    v125 = v25;
    v126 = 2048;
    v127 = v26;
    v128 = 2048;
    v129 = v27;
    v130 = 1026;
    v131 = v28;
    v132 = 1026;
    v133 = v29;
    v134 = 1026;
    v135 = v30;
    v136 = 1026;
    v137 = v31;
    v138 = 2050;
    v139 = v32;
    v140 = 2050;
    v141 = v33;
    v142 = 2050;
    v143 = v6;
    v144 = 2050;
    v145 = v8;
    _os_log_impl(&dword_19B41C000, v9, v4, "[CLSensorFusionService] q.x,%10.10f,q.y,%10.10f,q.z,%10.10f,q.w,%10.10f,userAccel.x,%10.10f,userAccel.y,%10.10f,userAccel.z,%10.10f,rotationRate.x,%10.10f,rotationRate.y,%10.10f,rotationRate.z,%10.10f,magneticField.x,%10.10f,magneticField.y,%10.10f,magneticField.z,%10.10f,magBiasEstVar.x,%10.10f,magBiasEstVar.y,%10.10f,magBiasEstVar.z,%10.10f,heading,%.3f,accuracy,%.3f,level,%{public}d,variant,%{public}d,mode,%{public}d,status,%{public}#02x,clientID,%{public}llu,timestamp,%{public}lf,now,%{public}lf,latency,%{public}lf", buf, 0xF6u);
  }

  v34 = sub_19B420058();
  if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v35 = *(v2 + 8);
    v36 = *(v2 + 12);
    v37 = *(v2 + 16);
    v38 = *(v2 + 20);
    v39 = *(v2 + 24);
    v40 = *(v2 + 28);
    v41 = *(v2 + 32);
    v42 = (*(v2 + 36) * 57.296);
    v43 = (*(v2 + 40) * 57.296);
    v44 = (*(v2 + 44) * 57.296);
    v45 = *(v2 + 48);
    v46 = *(v2 + 52);
    v47 = *(v2 + 56);
    v48 = *(v2 + 68);
    v49 = *(v2 + 72);
    v50 = *(v2 + 76);
    v51 = *(v2 + 60);
    v52 = *(v2 + 64);
    v53 = *(v2 + 80);
    v54 = *(v2 + 84);
    v55 = *(v2 + 81);
    v56 = *(v2 + 82);
    v57 = *(v2 + 96);
    v58 = *v2;
    *v149 = 134224384;
    *&v149[4] = v35;
    *&v149[12] = 2048;
    *&v149[14] = v36;
    v150 = 2048;
    v151 = v37;
    *v152 = 2048;
    *&v152[2] = v38;
    *&v152[10] = 2048;
    *&v152[12] = v39;
    *&v152[20] = 2048;
    *&v152[22] = v40;
    *&v152[30] = 2048;
    *&v152[32] = v41;
    *v153 = 2048;
    *&v153[2] = v42;
    *&v153[10] = 2048;
    v154 = v43;
    v155 = 2048;
    *v156 = v44;
    *&v156[8] = 2048;
    v157 = v45;
    v158 = 2048;
    v159 = v46;
    v160 = 2048;
    v161 = v47;
    v162 = 2048;
    v163 = v48;
    v164 = 2048;
    v165 = v49;
    v166 = 2048;
    v167 = v50;
    v168 = 2048;
    v169 = v51;
    v170 = 2048;
    v171 = v52;
    v172 = 1026;
    v173 = v53;
    v174 = 1026;
    v175 = v54;
    v176 = 1026;
    v177 = v55;
    v178 = 1026;
    v179 = v56;
    v180 = 2050;
    v181 = v57;
    v182 = 2050;
    v183 = v58;
    v184 = 2050;
    v185 = v6;
    v186 = 2050;
    v187 = v8;
    v59 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService::logSample(const CLSensorFusionService::Sample *)", "CoreLocation: %s\n", v59);
    if (v59 != buf)
    {
      free(v59);
    }
  }

  if (*(v3 + 8) == 1)
  {
    *v149 = &unk_1F0E313F0;
    Current = CFAbsoluteTimeGetCurrent();
    v61 = *v2;
    *&v149[8] = Current;
    v151 = v61;
    *v152 = *(v2 + 8);
    *&v152[16] = *(v2 + 24);
    LODWORD(Current) = *(v2 + 32);
    *&v152[28] = vmul_f32(*(v2 + 36), vdup_n_s32(0x42652EE1u));
    *&v61 = *(v2 + 44) * 57.296;
    *&v152[24] = LODWORD(Current);
    *&v152[36] = LODWORD(v61);
    *v153 = *(v2 + 48);
    LOBYTE(v154) = *(v2 + 80);
    LODWORD(v61) = *(v2 + 60);
    *&v153[8] = *(v2 + 56);
    HIDWORD(v154) = LODWORD(v61);
    *&v156[2] = *(v2 + 64);
    v62 = *(v2 + 81);
    *&v156[6] = *(v2 + 84);
    LODWORD(v157) = v62;
    HIDWORD(v157) = *(v2 + 96);
    v158 = *(v2 + 82);
    v63 = sub_19B720E40();
    sub_19B7223F8(v63, v149);
    sub_19B517F80(buf);
    sub_19B532918(buf);
    v148 |= 1u;
    v146 = *&v149[8];
    v64 = v147;
    v65 = *v2;
    *(v147 + 124) |= 0x10u;
    *(v64 + 40) = v65;
    v66 = v147;
    v67 = *(v2 + 8);
    *(v147 + 124) |= 2u;
    *(v66 + 16) = v67;
    v68 = v147;
    v69 = *(v2 + 12);
    *(v147 + 124) |= 4u;
    *(v68 + 24) = v69;
    v70 = v147;
    v71 = *(v2 + 16);
    *(v147 + 124) |= 8u;
    *(v70 + 32) = v71;
    v72 = v147;
    v73 = *(v2 + 20);
    *(v147 + 124) |= 1u;
    *(v72 + 8) = v73;
    v74 = v147;
    LODWORD(v73) = *(v2 + 24);
    *(v147 + 124) |= 0x40000u;
    *(v74 + 100) = LODWORD(v73);
    v75 = v147;
    LODWORD(v73) = *(v2 + 28);
    *(v147 + 124) |= 0x80000u;
    *(v75 + 104) = LODWORD(v73);
    v76 = v147;
    LODWORD(v73) = *(v2 + 32);
    *(v147 + 124) |= 0x100000u;
    *(v76 + 108) = LODWORD(v73);
    v77 = v147;
    *&v73 = *(v2 + 36) * 57.296;
    *(v147 + 124) |= 0x2000u;
    *(v77 + 80) = LODWORD(v73);
    v78 = v147;
    *&v73 = *(v2 + 40) * 57.296;
    *(v147 + 124) |= 0x4000u;
    *(v78 + 84) = LODWORD(v73);
    v79 = v147;
    *&v73 = *(v2 + 44) * 57.296;
    *(v147 + 124) |= 0x8000u;
    *(v79 + 88) = LODWORD(v73);
    v80 = v147;
    LODWORD(v73) = *(v2 + 48);
    *(v147 + 124) |= 0x100u;
    *(v80 + 60) = LODWORD(v73);
    v81 = v147;
    LODWORD(v73) = *(v2 + 52);
    *(v147 + 124) |= 0x200u;
    *(v81 + 64) = LODWORD(v73);
    v82 = v147;
    LODWORD(v73) = *(v2 + 56);
    *(v147 + 124) |= 0x400u;
    *(v82 + 68) = LODWORD(v73);
    v83 = v147;
    v84 = *(v2 + 80);
    *(v147 + 124) |= 0x80u;
    *(v83 + 56) = v84;
    v85 = v147;
    LODWORD(v73) = *(v2 + 60);
    *(v147 + 124) |= 0x800u;
    *(v85 + 72) = LODWORD(v73);
    v86 = v147;
    LODWORD(v73) = *(v2 + 64);
    *(v147 + 124) |= 0x20u;
    *(v86 + 48) = LODWORD(v73);
    v87 = v147;
    v88 = *(v2 + 81);
    *(v147 + 124) |= 0x1000u;
    *(v87 + 76) = v88;
    v89 = v147;
    v90 = *(v2 + 96);
    *(v147 + 124) |= 0x40u;
    *(v89 + 52) = v90;
    v91 = v147;
    LODWORD(v90) = *(v2 + 82);
    *(v147 + 124) |= 0x10000u;
    *(v91 + 92) = v90;
    v92 = v147;
    LODWORD(v90) = *(v2 + 84);
    *(v147 + 124) |= 0x200000u;
    *(v92 + 112) = v90;
    sub_19B51DBD4(buf);
  }

  v93 = *MEMORY[0x1E69E9840];
}

void sub_19B41FA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B41FA70(uint64_t a1, __int128 *a2)
{
  sub_19B41F22C();
  v4 = *(a1 + 56);
  if (v4)
  {
    v4(a2, *(a1 + 12), *(a1 + 64));
  }

  os_unfair_lock_lock((a1 + 88));
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 112) = a2[1];
  *(a1 + 128) = v6;
  *(a1 + 96) = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 192) = *(a2 + 12);
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  *(a1 + 144) = v7;

  os_unfair_lock_unlock((a1 + 88));
}

void sub_19B41FAF4(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 13)
  {
    if (IOHIDEventGetIntegerValue() == 1)
    {
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v2 = qword_1ED71C7E8;
      if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Received shake data, discarding.", buf, 2u);
      }

      v3 = sub_19B420058();
      if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D8 != -1)
        {
          dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
        }

        *v36 = 0;
        v4 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLAccelerometer::onAccelerometerIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v4);
        if (v4 != buf)
        {
          free(v4);
        }
      }
    }

    else
    {
      IOHIDEventGetFloatValue();
      v6 = v5;
      IOHIDEventGetFloatValue();
      v8 = v7;
      IOHIDEventGetFloatValue();
      v10 = v9;
      TimeStamp = IOHIDEventGetTimeStamp();
      v12 = sub_19B41E070(TimeStamp);
      v23 = v12;
      v24 = v6;
      v25 = v8;
      v26 = v10;
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v13 = qword_1ED71C7E8;
      if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v28 = v6;
        v29 = 2048;
        v30 = v8;
        v31 = 2048;
        v32 = v10;
        v33 = 2048;
        *v34 = v12;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[Accelerometer] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x2Au);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7D8 != -1)
        {
          dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
        }

        *v36 = 134218752;
        *&v36[4] = v6;
        *&v36[12] = 2048;
        *&v36[14] = v8;
        v37 = 2048;
        v38 = v10;
        *v39 = 2048;
        *&v39[2] = v12;
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccelerometer::onAccelerometerData(const CLMotionTypeAcceleration &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      if (*(a1 + 32) == 1)
      {
        *v36 = &unk_1F0E31230;
        Current = CFAbsoluteTimeGetCurrent();
        *v39 = v6;
        *&v39[4] = v8;
        *&v39[8] = v10;
        *&v36[8] = Current;
        v38 = v12;
        v17 = sub_19B720E40();
        sub_19B7223F8(v17, v36);
        sub_19B517F80(buf);
        sub_19B532378(buf);
        v35 |= 1u;
        *(&v34[82] + 6) = *&v36[8];
        v18 = *(v34 + 6);
        *(*(v34 + 6) + 32) |= 1u;
        *(v18 + 8) = v12;
        v19 = *(v34 + 6);
        *(*(v34 + 6) + 32) |= 4u;
        *(v19 + 20) = v6;
        v20 = *(v34 + 6);
        *(*(v34 + 6) + 32) |= 8u;
        *(v20 + 24) = v8;
        v21 = *(v34 + 6);
        *(*(v34 + 6) + 32) |= 0x10u;
        *(v21 + 28) = v10;
        sub_19B51DBD4(buf);
      }

      sub_19B41DF08(a1, 0, &v23, 24);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_19B41FFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B41FFEC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_19B420058()
{
  if (qword_1ED71D348 != -1)
  {
    dispatch_once(&qword_1ED71D348, &unk_1F0E29740);
  }

  return qword_1ED71D340;
}

float sub_19B4200DC(uint64_t a1, float *a2)
{
  sub_19B420408(a1 + 24, a2);
  v4 = *(a1 + 64);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 56);
    v6 = *(*(*(a1 + 32) + ((v5 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v5 & 0x3FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 20) - (v6 * v6);
    *(a1 + 16) = v7;
    *(a1 + 20) = v8;
    *(a1 + 56) = v5 + 1;
    *(a1 + 64) = v4 - 1;
    sub_19B420490(a1 + 24, 1);
  }

  v9 = *(a1 + 20);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + (*a2 * *a2);
  *(a1 + 20) = result;
  return result;
}

double sub_19B420178(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  sub_19B4200DC(v4 + 16, (a2 + 8));
  sub_19B4200DC(v4 + 88, (a2 + 12));
  sub_19B4200DC(v4 + 160, (a2 + 16));
  v5 = *(a1 + 280);
  v6 = *(v5 + 80);
  if (v6 < *(v5 + 24))
  {
    goto LABEL_16;
  }

  result = 0.0;
  v8 = 0.0;
  if (v6 >= 2)
  {
    v9 = (v6 * *(v5 + 36)) - (*(v5 + 32) * *(v5 + 32));
    v8 = 0.0;
    if (v9 >= 0.0)
    {
      v8 = v9 / ((v6 - 1) * v6);
    }
  }

  v10 = *(v5 + 152);
  if (v10 >= 2)
  {
    v11 = (v10 * *(v5 + 108)) - (*(v5 + 104) * *(v5 + 104));
    if (v11 >= 0.0)
    {
      *&result = v11 / ((v10 - 1) * v10);
    }
  }

  v12 = *(v5 + 224);
  v13 = 0.0;
  if (v12 >= 2)
  {
    v14 = (v12 * *(v5 + 180)) - (*(v5 + 176) * *(v5 + 176));
    if (v14 >= 0.0)
    {
      v13 = v14 / ((v12 - 1) * v12);
    }
  }

  if (v8 >= *&result)
  {
    *&result = v8;
  }

  if (*&result < v13)
  {
    *&result = v13;
  }

  if (*&result > *(a1 + 944))
  {
LABEL_16:
    result = *a2;
    *(a1 + 936) = *a2;
    if (*(a1 + 48) == 2)
    {
      return result;
    }

    v15 = sub_19B420D84();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B798004;
    v20[3] = &unk_1E75327D8;
    v20[4] = a1;
    v16 = v20;
    goto LABEL_18;
  }

  v17 = *(a1 + 48);
  if (v17 == 1)
  {
    result = *a2;
    if (*a2 > *(a1 + 936) + *(a1 + 928))
    {
      v15 = sub_19B420D84();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19B44E8A4;
      v18[3] = &unk_1E75327D8;
      v18[4] = a1;
      v16 = v18;
      goto LABEL_18;
    }
  }

  else if (v17 == 2)
  {
    result = *a2;
    if (*a2 > *(a1 + 936) + *(a1 + 920))
    {
      v15 = sub_19B420D84();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B44DD98;
      v19[3] = &unk_1E75327D8;
      v19[4] = a1;
      v16 = v19;
LABEL_18:
      sub_19B421668(v15, v16);
    }
  }

  return result;
}

float sub_19B420408(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_19B4291D8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

uint64_t sub_19B420490(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

float sub_19B4204F0(uint64_t a1, float32x2_t *a2)
{
  v2 = *a2;
  *(a1 + 16) = vcvtq_f64_f32(a2[1]);
  v3 = a2[2].f32[1];
  *(a1 + 32) = a2[2].f32[0];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 40) = a2[3].i32[0];
  *(a1 + 44) = a2[3].i32[1];
  *(a1 + 48) = a2[4].i32[0];
  *(a1 + 52) = a2[4].i32[1];
  *(a1 + 56) = a2[5].i32[0];
  *(a1 + 60) = a2[5].i32[1];
  *(a1 + 64) = a2[6].i32[0];
  *(a1 + 68) = a2[6].i32[1];
  v4 = a2[7].i32[1];
  *(a1 + 72) = a2[7].i32[0];
  *(a1 + 122) = 0;
  if (((a2[10].i8[0] + 1) & 0xF8) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = (a2[10].i8[0] + 1) - 1;
  }

  *(a1 + 76) = v5;
  v6 = a2[10].i16[1];
  *(a1 + 81) = (v6 & 0x10) != 0;
  *(a1 + 80) = (v6 & 8) != 0;
  *(a1 + 82) = HIBYTE(v6) & 1;
  *(a1 + 84) = v4;
  *(a1 + 88) = (v6 & 0x4000) != 0;
  *(a1 + 89) = (v6 & 0x40) != 0;
  *(a1 + 96) = a2[8].i32[0];
  *(a1 + 92) = 0;
  *(a1 + 100) = a2[8].i32[1];
  *(a1 + 104) = a2[9].i32[0];
  result = a2[9].f32[1];
  *(a1 + 108) = result;
  *(a1 + 112) = a2[11].i8[0];
  *(a1 + 122) = v6;
  *(a1 + 120) = a2[10].i8[1];
  *(a1 + 124) = 0;
  return result;
}

void sub_19B4205E8(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  sub_19B4204F0(&v9, a1);
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0xA21) != 0)
    {
      v6 = a3;
      v7 = a2;
    }

    else if (((1 << a2) & 0x1C) != 0)
    {
      sub_19B41DF08(a3, 2, &v9, 128);
      sub_19B41DF08(a3, 3, &v9, 128);
      v5 = *(a3 + 96);
      if (v5 >= 0.0)
      {
        v8 = *(a3 + 104);
        sub_19B688CC8(v10, v8, v5);
      }

      else
      {
        v10[22] = 1127481344;
      }

      v6 = a3;
      v7 = 4;
    }

    else
    {
      if (((1 << a2) & 0x402) == 0)
      {
        return;
      }

      if (*(a3 + 80))
      {
        v6 = a3;
        v7 = 11;
      }

      else
      {
        sub_19B41DF08(a3, 1, &v9, 128);
        v6 = a3;
        v7 = 10;
      }
    }

    sub_19B41DF08(v6, v7, &v9, 128);
  }
}

void sub_19B420920()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
  }

  v0 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEBUG, "Ping timer fired, resetting watchdog", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void *CLMotionCore::runMotionThread(void *)_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = qword_1ED71C908;
  v4 = *(qword_1ED71C908 + 40);
  if (v4 || (v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]), *(qword_1ED71C908 + 40) = v5, dispatch_source_set_event_handler(v5, &unk_1F0E283A0), dispatch_resume(*(qword_1ED71C908 + 40)), v3 = qword_1ED71C908, (v4 = *(qword_1ED71C908 + 40)) != 0))
  {
    ++*(v3 + 48);
    v6 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v4, v6, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Failed to create watchdog timer", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B420C9C(uint64_t a1, uint64_t a2)
{
  if (CFRunLoopGetCurrent() == *qword_1ED71C908)
  {
    v5 = objc_autoreleasePoolPush();
    (*(a2 + 16))(a2);

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v3 = *(qword_1ED71C908 + 8);
    inited = pthread_dependency_init_np();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B421750;
    v6[3] = &unk_1E7532AD8;
    v6[4] = a2;
    v6[5] = &v7;
    sub_19B421668(inited, v6);
    pthread_dependency_wait_np();
  }
}

uint64_t sub_19B420D84()
{
  if (qword_1ED71C938 != -1)
  {
    dispatch_once(&qword_1ED71C938, &unk_1F0E29600);
  }

  return qword_1ED71C908;
}

double CLMotionActivity::getInit@<D0>(CLMotionActivity *this@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0;
  *(a2 + 88) = 0;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 12) = 0u;
  *(a2 + 40) = 0xBFF0000000000000;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 80) = 0xBFF0000000000000;
  *(a2 + 32) = 0;
  *(a2 + 48) = 0;
  *(a2 + 96) = 0;
  *(a2 + 100) = 0;
  *(a2 + 8) = 0;
  *(a2 + 64) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  return result;
}

double CLMotionActivity::init(CLMotionActivity *this)
{
  result = 0.0;
  *&this->type = 0;
  *&this[1].source = 0;
  this->tilt = 0.0;
  HIDWORD(this->conservativeMountedProbability) = 0;
  *&this->mountedState = 0u;
  this->timestamp = -1.0;
  this->exitState = 0;
  this->estExitTime = -1.0;
  *&this[1].type = 0xBFF0000000000000;
  this->isStanding = 0;
  this->isVehicleConnected = 0;
  LOBYTE(this[1].mountedConfidence) = 0;
  *&this[1].conservativeMountedState = 0;
  this->source = 0;
  this->vehicleType = 0;
  *&this[1].isStanding = 0;
  this[1].timestamp = 0.0;
  *&this[1].isVehicleConnected = 0;
  return result;
}

void sub_19B420FC0(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v20 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v21 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v22 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] initializeHidIfNecessary should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_42:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_7:
    v14 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Event system client initialized successfully", buf, 2u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_vtable[262] != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::initializeHidIfNecessary()", "CoreLocation: %s\n");
LABEL_26:
      if (v16 != buf)
      {
        free(v16);
      }

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (*(a1 + 40))
  {
    goto LABEL_28;
  }

  v31 = @"HighFrequency";
  v4 = MEMORY[0x1E695E110];
  if (*(a1 + 48))
  {
    v4 = MEMORY[0x1E695E118];
  }

  v32[0] = v4;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v32, &v31, 1);
  v5 = *MEMORY[0x1E695E480];
  v6 = *(a1 + 32);
  v7 = IOHIDEventSystemClientCreateWithType();
  *(a1 + 40) = v7;
  if (v7)
  {
    sub_19B420D84();
    v8 = *qword_1ED71C908;
    v9 = *MEMORY[0x1E695E8E0];
    IOHIDEventSystemClientScheduleWithRunLoop();
    v10 = *(a1 + 40);
    IOHIDEventSystemClientRegisterEventCallback();
    v11 = *(a1 + 40);
    IOHIDEventSystemClientRegisterResetCallback();
    v12 = *(a1 + 40);
    IOHIDEventSystemClientRegisterDeviceMatchingCallback();
    sub_19B42D440(a1);
    IOHIDEventSystemClientSetProperty(*(a1 + 40), @"PreserveTimestamp", *MEMORY[0x1E695E4D0]);
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v17 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not create event system client. All bets are off", buf, 2u);
  }

  v18 = sub_19B420058();
  if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::initializeHidIfNecessary()", "CoreLocation: %s\n");
    goto LABEL_26;
  }

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B4215D8()
{
  if (qword_1ED71C9E0 != -1)
  {
    dispatch_once(&qword_1ED71C9E0, &unk_1F0E3A4A0);
  }

  return byte_1ED71C971;
}

uint64_t sub_19B421620()
{
  if (qword_1ED71CA18 != -1)
  {
    dispatch_once(&qword_1ED71CA18, &unk_1F0E3A580);
  }

  return qword_1ED71CA20;
}

void sub_19B421668(uint64_t a1, uint64_t a2)
{
  v2 = *qword_1ED71C908;
  v3 = *MEMORY[0x1E695E8E0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B421704;
  block[3] = &unk_1E7532B40;
  block[4] = a2;
  CFRunLoopPerformBlock(v2, v3, block);
  CFRunLoopWakeUp(*qword_1ED71C908);
}

void sub_19B421704(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19B421750(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return pthread_dependency_fulfill_np();
}

uint64_t sub_19B421798()
{
  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  return qword_1ED71C980;
}

uint64_t sub_19B4217E0(__IOHIDServiceClient *a1, const __CFString *a2, const void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v15 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setPropertyIoHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v16 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setPropertyIoHid should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] setPropertyIoHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setPropertyIoHid should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_42;
  }

  if (!a1)
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_6:
      v9 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Property can not be set for null hidServiceRef", buf, 2u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        goto LABEL_27;
      }

      bzero(buf, 0x65CuLL);
      if (p_vtable[262] != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLIoHidInterface::setPropertyIoHid(IOHIDServiceClientRef, CFStringRef, CFTypeRef)", "CoreLocation: %s\n");
      goto LABEL_25;
    }

LABEL_42:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_6;
  }

  if (!IOHIDServiceClientSetProperty(a1, a2, a3))
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v12 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] IOHIDServiceClientSetProperty() returned false", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLIoHidInterface::setPropertyIoHid(IOHIDServiceClientRef, CFStringRef, CFTypeRef)", "CoreLocation: %s\n");
LABEL_25:
    if (v11 != buf)
    {
      free(v11);
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

  result = 1;
LABEL_28:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B421D14(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v67 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v94 = 0;
      *&v94[4] = 2082;
      *&v94[6] = "";
      *&v94[14] = 2082;
      *&v94[16] = "assert";
      *&v94[24] = 2081;
      *&v94[26] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v67, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v68 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v94 = 0;
      *&v94[4] = 2082;
      *&v94[6] = "";
      *&v94[14] = 2082;
      *&v94[16] = "assert";
      *&v94[24] = 2081;
      *&v94[26] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v68, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v69 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v94 = 0;
      *&v94[4] = 2082;
      *&v94[6] = "";
      *&v94[14] = 2082;
      *&v94[16] = "assert";
      *&v94[24] = 2081;
      *&v94[26] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] applyAllDirtyDeviceProperties should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v71 = 219;
    v72 = "applyAllDirtyDeviceProperties";
    v70 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm";
    abort_report_np();
    __break(1u);
  }

  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_3:
  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Apply all dirty device properties", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v84) = 0;
    LODWORD(v71) = 2;
    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 != v7)
  {
    LOBYTE(v79) = 1;
    v73 = *(a1 + 16);
    do
    {
      v8 = v6[1];
      if (v8)
      {
        v9 = *v6;
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v76 = v8;
        v75 = std::__shared_weak_count::lock(v8);
        if (v75)
        {
          v74 = v6;
          if (v9)
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            obj = *(v9 + 168);
            v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v80, v92, 16);
            if (v12)
            {
              v13 = *v81;
              do
              {
                v14 = 0;
                do
                {
                  if (*v81 != v13)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v15 = *(*(&v80 + 1) + 8 * v14);
                  v16 = objc_msgSend_objectForKeyedSubscript_(*(v9 + 168), v11, v15, v70, v71, v72);
                  if (objc_msgSend_dirty(v16, v17, v18))
                  {
                    if (!*(v9 + 24))
                    {
                      sub_19B42E770(v5, 0);
                    }

                    if (*(v5 + 52) >= 10 && (*(v9 + 48) & 1) != 0)
                    {
                      LOBYTE(v79) = 1;
                    }

                    else
                    {
                      v20 = *(v9 + 24);
                      if (v20)
                      {
                        v21 = objc_msgSend_value(v16, v11, v19);
                        v22 = sub_19B4217E0(v20, v15, v21);
                        objc_msgSend_setDirty_(v16, v23, v22 ^ 1u);
                        if (v79)
                        {
                          v79 = objc_msgSend_dirty(v16, v24, v25) ^ 1;
                        }

                        else
                        {
                          LOBYTE(v79) = 0;
                        }

                        if (qword_1ED71C830 != -1)
                        {
                          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                        }

                        v33 = off_1ED71C838;
                        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
                        {
                          v37 = *(v9 + 16);
                          v36 = *(v9 + 20);
                          v38 = objc_msgSend_value(v16, v34, v35);
                          v41 = objc_msgSend_dirty(v16, v39, v40);
                          *buf = 67241218;
                          v42 = "successfully";
                          if (v41)
                          {
                            v42 = "unsuccessfully";
                          }

                          *v94 = v36;
                          *&v94[4] = 1026;
                          *&v94[6] = v37;
                          *&v94[10] = 2114;
                          *&v94[12] = v15;
                          *&v94[20] = 2114;
                          *&v94[22] = v38;
                          *&v94[30] = 2082;
                          *&v94[32] = v42;
                          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Property for usage pair {%{public}d, %{public}d}: {%{public}@ = %{public}@} was set %{public}s", buf, 0x2Cu);
                          v5 = a1;
                        }

                        v43 = sub_19B420058();
                        if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1ED71C830 != -1)
                          {
                            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                          }

                          v47 = *(v9 + 16);
                          v46 = *(v9 + 20);
                          v48 = objc_msgSend_value(v16, v44, v45);
                          v51 = objc_msgSend_dirty(v16, v49, v50);
                          v84 = 67241218;
                          v52 = "successfully";
                          if (v51)
                          {
                            v52 = "unsuccessfully";
                          }

                          *v85 = v46;
                          *&v85[4] = 1026;
                          *&v85[6] = v47;
                          v86 = 2114;
                          v87 = v15;
                          v88 = 2114;
                          v89 = v48;
                          v90 = 2082;
                          v91 = v52;
                          LODWORD(v71) = 44;
                          v53 = _os_log_send_and_compose_impl();
                          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v53);
                          if (v53 != buf)
                          {
                            free(v53);
                          }

                          v5 = a1;
                        }
                      }

                      else
                      {
                        if (qword_1ED71C830 != -1)
                        {
                          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                        }

                        v26 = off_1ED71C838;
                        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
                        {
                          v28 = *(v9 + 16);
                          v27 = *(v9 + 20);
                          *buf = 67240448;
                          *v94 = v27;
                          *&v94[4] = 1026;
                          *&v94[6] = v28;
                          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service for device with usage pair {%{public}d, %{public}d} is not ready", buf, 0xEu);
                        }

                        v29 = sub_19B420058();
                        if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1ED71C830 != -1)
                          {
                            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                          }

                          v31 = *(v9 + 16);
                          v30 = *(v9 + 20);
                          v84 = 67240448;
                          *v85 = v30;
                          *&v85[4] = 1026;
                          *&v85[6] = v31;
                          LODWORD(v71) = 14;
                          v32 = _os_log_send_and_compose_impl();
                          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v32);
                          if (v32 != buf)
                          {
                            free(v32);
                          }
                        }

                        LOBYTE(v79) = 0;
                      }
                    }
                  }

                  ++v14;
                }

                while (v12 != v14);
                v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v80, v92, 16);
              }

              while (v12);
            }
          }

          sub_19B41FFEC(v75);
          v7 = v73;
          v6 = v74;
        }

        std::__shared_weak_count::__release_weak(v76);
      }

      v6 += 2;
    }

    while (v6 != v7);
    if ((v79 & 1) == 0)
    {
      v55 = *(v5 + 52);
      *(v5 + 52) = v55 + 1;
      if (v55 > 4)
      {
        if (v55 > 9)
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v63 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v63, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not set all properties after too many retries. Giving up.", buf, 2u);
          }

          v64 = sub_19B420058();
          if ((*(v64 + 160) & 0x80000000) == 0 || (*(v64 + 164) & 0x80000000) == 0 || (*(v64 + 168) & 0x80000000) == 0 || *(v64 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            LOWORD(v84) = 0;
            v65 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v65);
            if (v65 != buf)
            {
              free(v65);
            }
          }

          v54 = 1.79769313e308;
          goto LABEL_108;
        }

        v60 = CFAbsoluteTimeGetCurrent();
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v61 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          *v94 = 0x4004000000000000;
          _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", buf, 0xCu);
        }

        v62 = sub_19B420058();
        v54 = v60 + 2.5;
        if (*(v62 + 160) <= 1 && *(v62 + 164) <= 1 && *(v62 + 168) <= 1 && !*(v62 + 152))
        {
LABEL_108:
          v5 = a1;
          goto LABEL_109;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v84 = 134349056;
        *v85 = 0x4004000000000000;
        v59 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v59);
      }

      else
      {
        v56 = CFAbsoluteTimeGetCurrent();
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v57 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *v94 = 0x3FD0000000000000;
          _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", buf, 0xCu);
        }

        v58 = sub_19B420058();
        v54 = v56 + 0.25;
        if (*(v58 + 160) <= 1 && *(v58 + 164) <= 1 && *(v58 + 168) <= 1 && !*(v58 + 152))
        {
          goto LABEL_108;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v84 = 134349056;
        *v85 = 0x3FD0000000000000;
        v59 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "CoreLocation: %s\n", v59);
      }

      if (v59 != buf)
      {
        free(v59);
      }

      goto LABEL_108;
    }
  }

  *(v5 + 52) = 0;
  v54 = 1.79769313e308;
LABEL_109:
  CFRunLoopTimerSetNextFireDate(*(v5 + 56), v54);
  v66 = *MEMORY[0x1E69E9840];
}

void sub_19B422AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16)
{
  sub_19B41FFEC(a15);
  std::__shared_weak_count::__release_weak(a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B422B38(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v3[2];
  v5 = v4 + 80 * v1;
  v8 = *(v5 + 40);
  v7 = (v5 + 40);
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = (v7 - 1);
  v10 = v7;
  v11 = v6;
  do
  {
    v12 = v11[4];
    v13 = v12 >= v2;
    v14 = v12 < v2;
    if (v13)
    {
      v10 = v11;
    }

    v11 = v11[v14];
  }

  while (v11);
  if (v10 != v7 && v10[4] <= v2)
  {
    v23 = v10[1];
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
      v25 = v10;
      do
      {
        v24 = v25[2];
        v26 = *v24 == v25;
        v25 = v24;
      }

      while (!v26);
    }

    if (*v9 == v10)
    {
      *v9 = v24;
    }

    --v7[1];
    sub_19B4271C4(v6, v10);
    operator delete(v10);
    v27 = v3[2];
    v28 = sub_19B426978(v27, v1);
    v36 = v28;
    v29 = sub_19B4268E8(v27, v1);
    v35 = v29;
    v30 = (v27 + 80 * v1);
    if (v28 != *v30)
    {
      *v30 = v28;
      *(v3[2] + 80 * v1 + 16) = (*(*v3 + 16))(v3, v1, &v36);
      sub_19B423614(v3, v1);
      v27 = v3[2];
    }

    v31 = v27 + 80 * v1;
    v33 = *(v31 + 8);
    v32 = (v31 + 8);
    if (v29 != v33)
    {
      *v32 = v29;
      v34 = (*(*v3 + 24))(v3, v1, &v35);
      v27 = v3[2];
      *(v27 + 80 * v1 + 24) = v34;
    }

    return (*(*v3 + 40))(v3, v1, *(v27 + 80 * v1 + 48) + 1);
  }

  else
  {
LABEL_9:
    v15 = v4 + 80 * v1;
    result = (v15 + 56);
    for (i = *(v15 + 64); i != result; i = i[1])
    {
      if (i[2] == v2)
      {
        result = i;
        break;
      }
    }

    v18 = v4 + 80 * v1 + 56;
    if (result != v18)
    {
      v20 = *result;
      v19 = result[1];
      *(v20 + 8) = v19;
      *v19 = v20;
      --*(v18 + 16);
      operator delete(result);
      v21 = *(v3[2] + 80 * v1 + 72);
      v22 = *(*v3 + 32);

      return v22(v3, v1, v21);
    }
  }

  return result;
}

__n128 sub_19B422E10(uint64_t a1)
{
  *v2.i64 = (*(*a1 + 56))(a1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *v7 = 0;
  v6 = 0xBFF0000000000000;
  sub_19B41E130((&v6 + 8), v2);
  memset(&v7[8], 0, 36);
  *&v7[44] = xmmword_19B7BA300;
  *&v7[60] = 0;
  *&v8 = 511;
  BYTE8(v8) = 0;
  *(a1 + 192) = 0;
  v3 = v8;
  *(a1 + 160) = *&v7[48];
  *(a1 + 176) = v3;
  v4 = *v7;
  *(a1 + 96) = v6;
  *(a1 + 112) = v4;
  result = *&v7[32];
  *(a1 + 128) = *&v7[16];
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_19B422EC8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    sub_19B420D84();
    v3 = *_CFGetProgname();
    *buf = 136446210;
    v13 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "%{public}s is disabling power conservation for parallax.", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
    }

    sub_19B420D84();
    v11 = *_CFGetProgname();
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService3AxisDynamicGyro::stop()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (*(a1 + 225) == 1)
  {
    v6 = sub_19B442E70();
    sub_19B445814(v6);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));
  if (*(a1 + 288))
  {
    v7 = sub_19B42AD98();
    sub_19B426A14(v7, 0, *(a1 + 288));
    v8 = *(a1 + 288);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(a1 + 288) = 0;
  }

  sub_19B423148((a1 + 200));
  result = *(a1 + 280);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(a1 + 280) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B423148(void *result)
{
  if (result[1])
  {
    v1 = result;
    v2 = sub_19B4249E4();
    sub_19B426A14(v2, 0, v1[1]);
    result = v1[1];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[1] = 0;
  }

  return result;
}

uint64_t sub_19B4231B4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = sub_19B423E34();
  if ((v2 & 4) != 0)
  {
    if (!*(a1 + 40))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v4 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Accel unavailable, unable to establish hid interface", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLAccelerometer::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return (v2 >> 2) & 1;
}

void sub_19B423614(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = v2 + 80 * a2;
  v6 = *(v3 + 32);
  v4 = v3 + 32;
  v5 = v6;
  v7 = *(v4 - 16);
  if (v7 <= 0.0)
  {
    if (v5 != (v4 + 8))
    {
      do
      {
        *(v5 + 11) = 1;
        v18 = v5[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v5[2];
            v17 = *v19 == v5;
            v5 = v19;
          }

          while (!v17);
        }

        v5 = v19;
      }

      while (v19 != (v4 + 8));
    }
  }

  else if (v5 != (v2 + 80 * a2 + 40))
  {
    do
    {
      if (v7 <= 0.0)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
        }

        v10 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
        {
          v11 = *(*(a1 + 16) + 80 * a2 + 16);
          *buf = 134217984;
          v23 = v11;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "CLMotionNotifier::updateSamplePeriod UpdateInterval:%f", buf, 0xCu);
        }

        v12 = sub_19B420058();
        if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
          }

          v21 = *(*(a1 + 16) + 80 * a2 + 16);
          v13 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLMotionNotifier::updateSamplePeriods(int)", "CoreLocation: %s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      v14 = *(a1 + 16);
      v7 = *(v14 + 80 * a2 + 16);
      *(v5 + 11) = llround(*(v5 + 6) / v7);
      v15 = v5[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v17 = *v16 == v5;
          v5 = v16;
        }

        while (!v17);
      }

      v5 = v16;
    }

    while (v16 != (v14 + 80 * a2 + 40));
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B4238F4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  v6 = objc_msgSend_initWithLong_(v4, v5, a2);
  (*(*a1 + 16))(a1, @"ReportInterval", v6);

  return a2;
}

void sub_19B423974(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v16 = off_1ED71C838;
    p_vtable = "assert";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 16);
      v17 = *(a1 + 20);
      *buf = 68290051;
      *v25 = 0;
      *&v25[4] = 2082;
      *&v25[6] = "";
      v26 = 1026;
      v27 = v17;
      v28 = 1026;
      v29 = v18;
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
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
      *v25 = 0;
      *&v25[4] = 2082;
      *&v25[6] = "";
      v26 = 1026;
      v27 = v20;
      v28 = 1026;
      v29 = v21;
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setProperty should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a2 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 16);
      v22 = *(a1 + 20);
      *buf = 68290051;
      *v25 = 0;
      *&v25[4] = 2082;
      *&v25[6] = "";
      v26 = 1026;
      v27 = v22;
      v28 = 1026;
      v29 = v23;
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setProperty should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
LABEL_28:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_5;
  }

  sub_19B420FC0(*(a1 + 40));
  if (a3)
  {
    v7 = [CLPropertyValue alloc];
    v9 = objc_msgSend_initWithValue_dirty_(v7, v8, a3, 1);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 168), v10, v9, a2);
    goto LABEL_14;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_28;
  }

LABEL_5:
  v12 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    *v25 = a2;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not set property value for %{public}@", buf, 0xCu);
  }

  v13 = sub_19B420058();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLIoHidInterface::Device::setProperty(NSString *, id)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

LABEL_14:
  sub_19B421D14(*(a1 + 40));
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B423E34()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 0;
  v1 = dword_1ED71C97C;
  switch(dword_1ED71C97C)
  {
    case 0:
    case 281:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v8 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v1;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Unsupported HW type %d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
      {
        goto LABEL_20;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_18;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v4 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v11 = v1;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      v5 = sub_19B420058();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B38 != -1)
        {
LABEL_44:
          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
        }

LABEL_18:
        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static CLPlatformInfo::MotionProviders CLPlatformInfo::motionProviders()", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }

LABEL_20:
      result = 0;
      break;
    case 6:
    case 60:
    case 61:
    case 204:
      result = 4;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 78:
    case 79:
    case 80:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 168:
    case 170:
    case 171:
    case 172:
    case 173:
    case 176:
    case 177:
    case 233:
      result = 31;
      break;
    case 26:
      result = 15;
      break;
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 62:
    case 63:
    case 64:
    case 65:
    case 76:
    case 77:
    case 134:
    case 135:
    case 136:
    case 137:
    case 144:
    case 145:
    case 146:
    case 147:
    case 154:
    case 155:
    case 156:
    case 157:
    case 161:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
      result = 23;
      break;
    case 39:
    case 42:
    case 148:
    case 149:
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      result = 6;
      break;
    case 50:
    case 51:
    case 66:
    case 67:
    case 74:
    case 75:
    case 82:
    case 84:
    case 86:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 150:
    case 151:
    case 152:
    case 153:
      if (qword_1ED71CA10 != -1)
      {
        dispatch_once(&qword_1ED71CA10, &unk_1F0E3A560);
      }

      v2 = byte_1ED71C977 == 0;
      v3 = 22;
      goto LABEL_24;
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 280:
      if (qword_1ED71CA10 != -1)
      {
        dispatch_once(&qword_1ED71CA10, &unk_1F0E3A560);
      }

      v2 = byte_1ED71C977 == 0;
      v3 = 54;
LABEL_24:
      if (v2)
      {
        result = v3;
      }

      else
      {
        result = v3 + 1;
      }

      break;
    case 169:
    case 174:
    case 175:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      result = 63;
      break;
    default:
      break;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B424680(uint64_t a1, int a2, double *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v3 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccelerometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else if (sub_19B4231B4(a1))
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v8 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      *buf = 134349056;
      v18 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "Setting accelerometer update interval to %{public}f", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v16 = *a3;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccelerometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = rint(*a3 * 1000000.0);
    if (*a3 < 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    sub_19B4238F4(*(a1 + 40), v13);
    v14 = *a3;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B4249E4()
{
  if (qword_1ED71D1F8 != -1)
  {
    dispatch_once(&qword_1ED71D1F8, &unk_1F0E29500);
  }

  return qword_1ED71D1F0;
}

uint64_t sub_19B424A2C(uint64_t a1, double a2)
{
  v3 = rint(a2 * 1000000.0);
  if (v3 >= 1000000)
  {
    v3 = 1000000;
  }

  if (v3 <= 10000)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v3;
  }

  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  v7 = objc_msgSend_initWithLong_(v5, v6, v4);
  (*(*a1 + 16))(a1, @"BatchInterval", v7);

  return v4;
}

uint64_t sub_19B424AE0()
{
  if (qword_1ED71D5D8 != -1)
  {
    dispatch_once(&qword_1ED71D5D8, &unk_1F0E29FC0);
  }

  return qword_1ED71D5D0;
}

void sub_19B424B28(void *a1, int a2, uint64_t *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v7 = *a3;
    *buf = 67240448;
    *&buf[4] = a2;
    *&buf[8] = 2050;
    *&buf[10] = v7;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CLDeviceMotion::minimumUpdateIntervalChanged,notification,%{public}d,minimumUpdateInterval,%{public}f", buf, 0x12u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v47 = *a3;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLDeviceMotion::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v10 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    sub_19B42753C(a1, 0);
    v12 = v11;
    sub_19B42753C(a1, 9);
    v14 = v13;
    sub_19B42753C(a1, 1);
    v16 = v15;
    sub_19B42753C(a1, 10);
    v18 = v17;
    sub_19B42753C(a1, 2);
    v20 = v19;
    sub_19B42753C(a1, 3);
    v22 = v21;
    sub_19B42753C(a1, 4);
    v24 = v23;
    sub_19B42753C(a1, 5);
    v26 = v25;
    sub_19B42753C(a1, 11);
    *buf = 134351104;
    *&buf[4] = v12;
    *&buf[12] = 2050;
    *&buf[14] = v14;
    v49 = 2050;
    v50 = v16;
    v51 = 2050;
    v52 = v18;
    v53 = 2050;
    v54 = v20;
    v55 = 2050;
    v56 = v22;
    v57 = 2050;
    v58 = v24;
    v59 = 2050;
    v60 = v26;
    v61 = 2050;
    v62 = v27;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "minimumUpdateInterval GyroOnly:%{public}f, 3AxisDynamicGyro:%{public}f, 6Axis:%{public}f, 6AxisThrottledGyro:%{public}f, 9Axis:%{public}f, 9AxisWithNorthReference:%{public}f, 9AxisWithTrueNorthReference:%{public}f, BuildGYTT:%{public}f, 6AxisAlwaysOnSPU:%{public}f", buf, 0x5Cu);
  }

  v28 = sub_19B420058();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    sub_19B42753C(a1, 0);
    sub_19B42753C(a1, 9);
    sub_19B42753C(a1, 1);
    sub_19B42753C(a1, 10);
    sub_19B42753C(a1, 2);
    sub_19B42753C(a1, 3);
    sub_19B42753C(a1, 4);
    sub_19B42753C(a1, 5);
    sub_19B42753C(a1, 11);
    v29 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLDeviceMotion::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  if (a2 > 4)
  {
    if (a2 > 9)
    {
      if (a2 != 11)
      {
        if (a2 != 10)
        {
          goto LABEL_74;
        }

        goto LABEL_53;
      }

      v37 = a1[10];
      if (!v37)
      {
        goto LABEL_74;
      }
    }

    else if (a2 == 5)
    {
      v37 = a1[4];
      if (!v37)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (a2 != 9)
      {
        goto LABEL_74;
      }

      v37 = a1[6];
      if (!v37)
      {
        goto LABEL_74;
      }
    }

LABEL_72:
    v42 = *(*v37 + 16);
    goto LABEL_73;
  }

  if ((a2 - 2) < 3)
  {
    if (a1[9])
    {
      sub_19B42753C(a1, 2);
      v31 = v30;
      sub_19B42753C(a1, 3);
      if (v31 <= 0.0)
      {
        v33 = 1.79769313e308;
      }

      else
      {
        v33 = v31;
      }

      if (v32 <= 0.0)
      {
        v32 = 1.79769313e308;
      }

      if (v32 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      sub_19B42753C(a1, 4);
      if (v35 <= 0.0)
      {
        v35 = 1.79769313e308;
      }

      if (v35 >= v34)
      {
        v35 = v34;
      }

      if (v35 == 1.79769313e308)
      {
        v35 = 0.0;
      }

      *buf = v35;
      v36 = a1[9];
LABEL_64:
      v42 = *(*v36 + 16);
LABEL_73:
      v42();
      goto LABEL_74;
    }

    goto LABEL_74;
  }

  if (!a2)
  {
    v43 = a1[7];
    if (v43)
    {
      sub_19B42753C(a1, 0);
      *buf = v44;
      (*(*v43 + 16))(v43, buf);
    }

    v37 = a1[5];
    if (!v37)
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  if (a2 != 1)
  {
    goto LABEL_74;
  }

LABEL_53:
  if (a1[8])
  {
    sub_19B42753C(a1, 1);
    v39 = v38;
    sub_19B42753C(a1, 10);
    if (v39 <= 0.0)
    {
      v41 = 1.79769313e308;
    }

    else
    {
      v41 = v39;
    }

    if (v40 <= 0.0)
    {
      v40 = 1.79769313e308;
    }

    if (v40 >= v41)
    {
      v40 = v41;
    }

    if (v40 == 1.79769313e308)
    {
      v40 = 0.0;
    }

    *buf = v40;
    v36 = a1[8];
    goto LABEL_64;
  }

LABEL_74:
  v45 = *a3;
  v46 = *MEMORY[0x1E69E9840];
}

unint64_t sub_19B42521C()
{
  if ((sub_19B421620() & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return (sub_19B421620() >> 4) & 1;
  }
}

void sub_19B425248(uint64_t a1, uint64_t a2)
{
  v4 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B426B24;
  v5[3] = &unk_1E7535180;
  v5[4] = a1;
  v5[5] = a2;
  sub_19B420C9C(v4, v5);
}

void sub_19B4253A0(void *a1, int *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67240192;
    v18 = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopping device motion, mode=%{public}#x", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v15 = *a2;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::disableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (sub_19B426490(a2))
  {
    v8 = *a2;
    if (*a2 <= 18)
    {
      if (v8 > 6)
      {
        if (v8 == 7 || v8 == 15)
        {
LABEL_28:
          v9 = a1[9];
          if (!v9)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        goto LABEL_39;
      }

      if (v8 != 2)
      {
        if (v8 == 3)
        {
          goto LABEL_24;
        }

        goto LABEL_39;
      }

      sub_19B421798();
      if ((sub_19B421620() & 0x100) != 0)
      {
        v9 = a1[7];
        if (!v9)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v9 = a1[5];
        if (!v9)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if (v8 > 66)
      {
        if (v8 != 67)
        {
          if (v8 != 143)
          {
            if (v8 == 259)
            {
              v9 = a1[10];
              if (!v9)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            goto LABEL_39;
          }

          goto LABEL_28;
        }

LABEL_24:
        v9 = a1[8];
        if (!v9)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (v8 != 19)
      {
        if (v8 == 34)
        {
          v9 = a1[6];
          if (!v9)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

LABEL_39:
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v10 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
        {
          v11 = *a2;
          *buf = 67240192;
          v18 = v11;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Device motion mode (%{public}d) not supported, unable to disable sensor fusion", buf, 8u);
        }

        v12 = sub_19B420058();
        if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }

          v16 = *a2;
          v13 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLDeviceMotion::disableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        goto LABEL_52;
      }

      v9 = a1[4];
      if (!v9)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    sub_19B422E10(v9);
  }

LABEL_52:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B4257A0(NSObject *a1, int a2, unint64_t a3, unint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    buf = 67240704;
    *buf_4 = a2;
    *&buf_4[4] = 2050;
    *&buf_4[6] = a3;
    *&buf_4[14] = 2050;
    *&buf_4[16] = a4;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CLDeviceMotion::numberOfClientsChanged notification:%{public}d, from:%{public}zu, to:%{public}zu", &buf, 0x1Cu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLDeviceMotion::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v8);
    if (v8 != &buf)
    {
      free(v8);
    }
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v9 = off_1ED71C808;
  v42 = a4;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v41 = sub_19B427728(a1, 0);
    v10 = sub_19B427728(a1, 9);
    v11 = sub_19B427728(a1, 1);
    v12 = sub_19B427728(a1, 10);
    v13 = sub_19B427728(a1, 2);
    v14 = sub_19B427728(a1, 3);
    v15 = sub_19B427728(a1, 4);
    v16 = sub_19B427728(a1, 5);
    v17 = sub_19B427728(a1, 11);
    buf = 134351104;
    *buf_4 = v41;
    *&buf_4[8] = 2050;
    *&buf_4[10] = v10;
    *&buf_4[18] = 2050;
    *&buf_4[20] = v11;
    *&buf_4[28] = 2050;
    *&buf_4[30] = v12;
    v47 = 2050;
    v48 = v13;
    v49 = 2050;
    v50 = v14;
    v51 = 2050;
    v52 = v15;
    v53 = 2050;
    v54 = v16;
    a4 = v42;
    v55 = 2050;
    v56 = v17;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "numberOfClients GyroOnly:%{public}zd, 3AxisDynamicGyro:%{public}zd, 6Axis:%{public}zd, 6AxisThrottledGyro:%{public}zd, 9Axis:%{public}zd, 9AxisWithNorthReference:%{public}zd, 9AxisWithTrueNorthReference:%{public}zd, BuildGYTT:%{public}zd, 6AxisAlwaysOnSPU:%{public}zd", &buf, 0x5Cu);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    sub_19B427728(a1, 0);
    sub_19B427728(a1, 9);
    sub_19B427728(a1, 1);
    sub_19B427728(a1, 10);
    sub_19B427728(a1, 2);
    sub_19B427728(a1, 3);
    sub_19B427728(a1, 4);
    sub_19B427728(a1, 5);
    sub_19B427728(a1, 11);
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLDeviceMotion::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v19);
    if (v19 != &buf)
    {
      free(v19);
    }

    a4 = v42;
  }

  if (a2 == 10)
  {
    LODWORD(v20) = 1;
  }

  else
  {
    LODWORD(v20) = a2;
  }

  v21 = sub_19B427728(a1, 2);
  v22 = sub_19B427728(a1, 3);
  v23 = sub_19B427728(a1, 4);
  v24 = sub_19B421620();
  if (v20 > 0xB)
  {
    goto LABEL_56;
  }

  if (((1 << v20) & 0xA23) == 0)
  {
    v25 = v24;
    if (((1 << v20) & 0xC) != 0)
    {
      goto LABEL_84;
    }

    if (v20 == 4)
    {
      if (a3 || a4 != 1)
      {
        if (a3 != 1 || a4 || !a1[11].isa)
        {
          goto LABEL_84;
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v33 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_INFO, "Unregistering for geomagnetic model updates", &buf, 2u);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }

          v36 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::unregisterForGeomagneticModelNotification()", "CoreLocation: %s\n", v36);
          if (v36 != &buf)
          {
            free(v36);
          }
        }

        objc_msgSend_unregister_forNotification_(*(a1[11].isa + 2), v35, *(a1[11].isa + 1), 0);
        *&a1[12].isa = xmmword_19B7B7710;
      }

      else
      {
        if (!a1[11].isa)
        {
          sub_19B43D9C4();
          sub_19B43DA50();
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v26 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "Registering for geomagnetic model updates", &buf, 2u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }

          v29 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::registerForGeomagneticModelNotification()", "CoreLocation: %s\n", v29);
          if (v29 != &buf)
          {
            free(v29);
          }
        }

        objc_msgSend_register_forNotification_registrationInfo_(*(a1[11].isa + 2), v28, *(a1[11].isa + 1), 0, 0);
      }

      a4 = v42;
LABEL_84:
      v37 = v22 + v21 + v23;
      if (a3 < a4)
      {
        if (v37 == 1)
        {
          buf = sub_19B427908(v20);
          sub_19B43B878(a1, &buf);
        }

        if (*(a1[9].isa + 7))
        {
          goto LABEL_101;
        }

        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
        }

        v38 = off_1ED71C808;
        v20 = "sE";
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
        {
          buf = 68289539;
          *buf_4 = 0;
          *&buf_4[4] = 2082;
          *&buf_4[6] = "";
          *&buf_4[14] = 2082;
          *&buf_4[16] = "assert";
          *&buf_4[24] = 2081;
          *&buf_4[26] = "fSensorFusionService9Axis->isRunning()";
          _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:9Axis should be running, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }
        }

        v39 = off_1ED71C808;
        if (os_signpost_enabled(off_1ED71C808))
        {
          buf = 68289539;
          *buf_4 = 0;
          *&buf_4[4] = 2082;
          *&buf_4[6] = "";
          *&buf_4[14] = 2082;
          *&buf_4[16] = "assert";
          *&buf_4[24] = 2081;
          *&buf_4[26] = "fSensorFusionService9Axis->isRunning()";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "9Axis should be running", "{msg%{public}.0s:9Axis should be running, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
          }
        }

        a1 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
        {
          buf = 68289539;
          *buf_4 = 0;
          *&buf_4[4] = 2082;
          *&buf_4[6] = "";
          *&buf_4[14] = 2082;
          *&buf_4[16] = "assert";
          *&buf_4[24] = 2081;
          *&buf_4[26] = "fSensorFusionService9Axis->isRunning()";
          _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:9Axis should be running, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
        }

        abort_report_np();
      }

      if (((v25 >> 4) & 1 ^ v37) != 1)
      {
        goto LABEL_101;
      }

LABEL_100:
      buf = sub_19B427908(v20);
      sub_19B4253A0(a1, &buf);
      goto LABEL_101;
    }

LABEL_56:
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v30 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      buf = 67240192;
      *buf_4 = a2;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "Device motion mode (%{public}d) not supported, can't process client change", &buf, 8u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v32 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLDeviceMotion::numberOfClientsChanged(int, size_t, size_t)", "CoreLocation: %s\n", v32);
      if (v32 != &buf)
      {
        free(v32);
      }
    }

    goto LABEL_101;
  }

  if (!a3 && a4 == 1)
  {
    buf = sub_19B427908(v20);
    sub_19B43B878(a1, &buf);
    goto LABEL_101;
  }

  if (a3 == 1 && !a4)
  {
    goto LABEL_100;
  }

LABEL_101:
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B426490(int *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1 > 142)
  {
    if (v2 != 143 && v2 != 259)
    {
LABEL_36:
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v11 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
      {
        v12 = *a1;
        *buf = 67240192;
        v20 = v12;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Unsupported mode (%{public}d). Returning.", buf, 8u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_48;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v18 = *a1;
LABEL_46:
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLDeviceMotion::isModeValid(const CLMotionTypeDeviceMotionMode &) const", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

LABEL_48:
      result = 0;
      goto LABEL_49;
    }
  }

  else
  {
    v3 = (v2 - 7) > 0x3C || ((1 << (v2 - 7)) & 0x1000000008001101) == 0;
    if (v3 && (v2 - 2) >= 2)
    {
      goto LABEL_36;
    }
  }

  if ((v2 & 4) != 0)
  {
    if (!sub_19B43A6F0())
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v8 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
      {
        v9 = *a1;
        *buf = 67240192;
        v20 = v9;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Unsupported mode (%{public}d). Compass not found. Returning.", buf, 8u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        goto LABEL_48;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v17 = *a1;
      goto LABEL_46;
    }

    v2 = *a1;
  }

  if ((v2 & 2) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v4 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      v5 = *a1;
      *buf = 67240192;
      v20 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unsupported mode (%{public}d). Couldn't do DeviceMotion without Gyro. Returning.", buf, 8u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) != 0 && (*(v6 + 164) & 0x80000000) != 0 && (*(v6 + 168) & 0x80000000) != 0 && !*(v6 + 152))
    {
      goto LABEL_48;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v16 = *a1;
    goto LABEL_46;
  }

  result = 1;
LABEL_49:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B4268E8(uint64_t a1, int a2)
{
  v2 = a1 + 80 * a2;
  v3 = *(v2 + 32);
  v4 = (v2 + 40);
  if (v3 == v4)
  {
    result = 1.79769313e308;
  }

  else
  {
    result = 1.79769313e308;
    do
    {
      v6 = v3[7];
      if (v6 < result && v6 > 0.0)
      {
        result = v3[7];
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

double sub_19B426978(uint64_t a1, int a2)
{
  v2 = a1 + 80 * a2;
  v3 = *(v2 + 32);
  v4 = (v2 + 40);
  if (v3 == v4)
  {
    result = 1.79769313e308;
  }

  else
  {
    result = 1.79769313e308;
    do
    {
      v6 = v3[6];
      if (v6 < result && v6 > 0.0)
      {
        result = v3[6];
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

double sub_19B426A08(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 40) = *a2;
  return result;
}

void sub_19B426A14(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B422B38;
  v7[3] = &unk_1E7533D90;
  v8 = a2;
  v7[4] = a1;
  v7[5] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B426B24(uint64_t a1)
{
  v1 = a1;
  v37 = *MEMORY[0x1E69E9840];
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

    v26 = off_1ED71C808;
    v4 = "assert";
    v2 = "properties != nullptr";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v27 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "properties != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v1 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v29 = 210;
    v30 = "removeDeviceMotionDispatcher_block_invoke";
    v28 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
LABEL_3:
  v5 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_description(v4, v6, v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    *buf = 136446210;
    *v32 = v11;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "CLDeviceMotion::removeDeviceMotionDispatcher removing dispatcher with property: %{public}s", buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v17 = objc_msgSend_description(v4, v15, v16, v28, v29, v30);
    objc_msgSend_UTF8String(v17, v18, v19);
    LODWORD(v29) = 12;
    v20 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::removeDeviceMotionDispatcher(CLDeviceMotion::Dispatcher *)_block_invoke", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  *buf = objc_msgSend_mode(v4, v13, v14, v28, v29);
  if (sub_19B426490(buf))
  {
    v23 = objc_msgSend_mode(v4, v21, v22);
    v24 = sub_19B426F5C(v23);
    sub_19B426A14(v2, v24, *(v1 + 5));
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B426F5C(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 <= 18)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        result = 2;
        goto LABEL_34;
      }

      if (a1 == 15)
      {
        result = 3;
        goto LABEL_34;
      }
    }

    else
    {
      if (a1 == 2)
      {
        result = 0;
        goto LABEL_34;
      }

      if (a1 == 3)
      {
        result = 1;
        goto LABEL_34;
      }
    }
  }

  else if (a1 <= 66)
  {
    if (a1 == 19)
    {
      result = 5;
      goto LABEL_34;
    }

    if (a1 == 34)
    {
      result = 9;
      goto LABEL_34;
    }
  }

  else
  {
    switch(a1)
    {
      case 67:
        result = 10;
        goto LABEL_34;
      case 143:
        result = 4;
        goto LABEL_34;
      case 259:
        result = 11;
        goto LABEL_34;
    }
  }

  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v3 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v8 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "No viable conversion for mode %{public}#x", buf, 8u);
  }

  v4 = sub_19B420058();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static CLDeviceMotion::CLDeviceMotionNotification CLDeviceMotion::CLMotionTypeDeviceMotionModeToCLDeviceMotionNotification(const CLMotionTypeDeviceMotionMode)", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  result = 12;
LABEL_34:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_19B4271C4(uint64_t *result, uint64_t *a2)
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

void sub_19B42753C(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) <= a2)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v9 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CFTimeInterval CLMotionNotifier::minimumUpdateInterval(int)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    v3 = *(*(a1 + 16) + 80 * a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B427728(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) <= a2)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v9 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "ssize_t CLMotionNotifier::numberOfClients(int)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = -1;
  }

  else
  {
    result = *(*(a1 + 16) + 80 * a2 + 48);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B427908(unsigned int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 < 0xC && ((0xE3Fu >> a1) & 1) != 0)
  {
    result = dword_19B7BD104[a1];
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v8 = a1;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "No viable conversion for notification %{public}#x", buf, 8u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static CLMotionTypeDeviceMotionMode CLDeviceMotion::CLDeviceMotionNotificationToCLMotionTypeDeviceMotionMode(const int)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B427AEC(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = sub_19B42AD98();
    sub_19B426A14(v2, 0, v1[2]);
    result = v1[2];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[2] = 0;
  }

  return result;
}

void sub_19B427CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CLMotionActivity::isInVehicle(CLMotionActivity *this)
{
  type = this->type;
  v2 = 1;
  if (this->type > 51)
  {
    if (type == 52 || type == 56)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!type)
  {
    return 0;
  }

  if (type != 5)
  {
LABEL_7:
    v2 = 0;
  }

LABEL_8:
  if ((type & 0xFFFFFFFE) == 0xA)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t CLMotionActivity::isTypeInVehicle(uint64_t result)
{
  v1 = 1;
  if (result > 51)
  {
    if (result == 52 || result == 56)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!result)
  {
    return result;
  }

  if (result != 5)
  {
LABEL_7:
    v1 = 0;
  }

LABEL_8:
  if ((result & 0xFFFFFFFE) == 0xA)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

const char *CLMotionActivity::activityTypeToString(int a1)
{
  result = "frozen";
  if (a1 > 12149)
  {
    if (a1 > 15659)
    {
      if (a1 > 18239)
      {
        if (a1 > 90121)
        {
          if (a1 <= 515620)
          {
            v7 = 90122;
            v8 = "Indoor Hand Cycling";
            v9 = a1 == 90603;
            v10 = "Outdoor Wheelchair Activity";
          }

          else
          {
            if (a1 == 515621)
            {
              return "Baseball";
            }

            v7 = 515652;
            v8 = "Racquetball";
            v9 = a1 == 519150;
            v10 = "Snowboarding";
          }
        }

        else if (a1 <= 19089)
        {
          v7 = 18240;
          v8 = "Swimming";
          v9 = a1 == 19030;
          v10 = "Indoor Skating Sports";
        }

        else
        {
          if (a1 == 19090)
          {
            return "Cross Country Skiing";
          }

          v7 = 19150;
          v8 = "DownhillSkiing";
          v9 = a1 == 90121;
          v10 = "Outdoor Hand Cycling";
        }

        goto LABEL_143;
      }

      if (a1 > 15732)
      {
        if (a1 <= 18049)
        {
          v7 = 15733;
          v8 = "Track and Field";
          v9 = a1 == 17150;
          v10 = "Indoor Walking";
        }

        else
        {
          if (a1 == 18050)
          {
            return "Outdoor Rowing";
          }

          v7 = 18100;
          v8 = "Paddle Sports";
          v9 = a1 == 18200;
          v10 = "Scuba Diving";
        }

        goto LABEL_143;
      }

      v25 = 15674;
      v37 = "Volleyball";
      if (a1 != 15711)
      {
        v37 = "frozen";
      }

      if (a1 == 15675)
      {
        v27 = "Tennis";
      }

      else
      {
        v27 = v37;
      }

      v28 = "Table Tennis";
      v29 = a1 == 15670;
      v30 = "Tai Chi";
      v31 = 15660;
LABEL_116:
      if (!v29)
      {
        v30 = "frozen";
      }

      if (a1 != v31)
      {
        v28 = v30;
      }

      if (a1 <= v25)
      {
        return v28;
      }

      else
      {
        return v27;
      }
    }

    if (a1 > 15329)
    {
      if (a1 <= 15559)
      {
        v25 = 15359;
        v34 = "Lacrosse";
        if (a1 != 15460)
        {
          v34 = "frozen";
        }

        if (a1 == 15360)
        {
          v27 = "Indoor Hockey";
        }

        else
        {
          v27 = v34;
        }

        v28 = "Handball";
        v29 = a1 == 15350;
        v30 = "Outdoor Hockey";
        v31 = 15330;
        goto LABEL_116;
      }

      if (a1 <= 15609)
      {
        v7 = 15560;
        v8 = "Rugby";
        v9 = a1 == 15592;
        v10 = "Outdoor Skating Sports";
      }

      else
      {
        if (a1 == 15610)
        {
          return "Outdoor Soccer";
        }

        v7 = 15620;
        v8 = "Softball";
        v9 = a1 == 15652;
        v10 = "Squash";
      }
    }

    else
    {
      if (a1 <= 15109)
      {
        v25 = 15054;
        v26 = "Boxing";
        if (a1 != 15100)
        {
          v26 = "frozen";
        }

        if (a1 == 15055)
        {
          v27 = "Basketball";
        }

        else
        {
          v27 = v26;
        }

        v28 = "Indoor Running";
        v29 = a1 == 15030;
        v30 = "Badminton";
        v31 = 12150;
        goto LABEL_116;
      }

      if (a1 <= 15229)
      {
        v7 = 15110;
        v8 = "Kickboxing";
        v9 = a1 == 15150;
        v10 = "Cricket";
      }

      else
      {
        if (a1 == 15230)
        {
          return "American Football";
        }

        v7 = 15250;
        v8 = "Disc Sports";
        v9 = a1 == 15255;
        v10 = "Golfing";
      }
    }

LABEL_143:
    if (!v9)
    {
      v10 = "frozen";
    }

    if (a1 == v7)
    {
      return v8;
    }

    else
    {
      return v10;
    }
  }

  if (a1 <= 65)
  {
    if (a1 > 10)
    {
      if (a1 > 60)
      {
        if (a1 > 63)
        {
          v3 = "Indoor Soccer";
          v4 = "Australian Football";
          if (a1 != 65)
          {
            v4 = "frozen";
          }

          v6 = a1 == 64;
          goto LABEL_131;
        }

        if ((a1 - 61) >= 2)
        {
          v20 = a1 == 63;
          v21 = "Multi Sport Transition";
          goto LABEL_137;
        }

        return "Unknown";
      }

      v11 = "vehicular in hand";
      v35 = "driving other";
      if (a1 != 56)
      {
        v35 = "frozen";
      }

      if (a1 != 52)
      {
        v11 = v35;
      }

      v14 = "in vehicle static";
      v36 = "walking slow";
      if (a1 != 41)
      {
        v36 = "frozen";
      }

      if (a1 != 11)
      {
        v14 = v36;
      }

      v16 = a1 <= 51;
    }

    else
    {
      if (a1 <= 5)
      {
        if (a1 > 2)
        {
          v3 = "moving";
          v4 = "walking";
          v5 = "driving";
          if (a1 != 5)
          {
            v5 = "frozen";
          }

          if (a1 != 4)
          {
            v4 = v5;
          }

          v6 = a1 == 3;
LABEL_131:
          if (v6)
          {
            return v3;
          }

          else
          {
            return v4;
          }
        }

        if (a1)
        {
          v20 = a1 == 2;
          v21 = "static";
LABEL_137:
          if (v20)
          {
            return v21;
          }

          return result;
        }

        return "Unknown";
      }

      v11 = "running";
      v22 = "moving coarse";
      v23 = "in vehicle frozen";
      if (a1 != 10)
      {
        v23 = "frozen";
      }

      if (a1 != 9)
      {
        v22 = v23;
      }

      if (a1 != 8)
      {
        v11 = v22;
      }

      v14 = "cycling";
      v24 = "semi-stationary";
      if (a1 != 7)
      {
        v24 = "frozen";
      }

      if (a1 != 6)
      {
        v14 = v24;
      }

      v16 = a1 <= 7;
    }

LABEL_107:
    if (v16)
    {
      return v14;
    }

    else
    {
      return v11;
    }
  }

  if (a1 > 2064)
  {
    if (a1 <= 2104)
    {
      v11 = "Rowing";
      v32 = "Cool Down";
      if (a1 != 2101)
      {
        v32 = "frozen";
      }

      if (a1 != 2071)
      {
        v11 = v32;
      }

      v14 = "Stair Climbing";
      v33 = "Jump Rope";
      if (a1 != 2068)
      {
        v33 = "frozen";
      }

      if (a1 != 2065)
      {
        v14 = v33;
      }

      v16 = a1 <= 2070;
    }

    else
    {
      v11 = "Dancing";
      v17 = "Step Training";
      v18 = "Pushing Wheelchair";
      if (a1 != 11805)
      {
        v18 = "frozen";
      }

      if (a1 != 3016)
      {
        v17 = v18;
      }

      if (a1 != 3015)
      {
        v11 = v17;
      }

      v14 = "Pilates";
      v19 = "Yoga";
      if (a1 != 2150)
      {
        v19 = "frozen";
      }

      if (a1 != 2105)
      {
        v14 = v19;
      }

      v16 = a1 <= 3014;
    }

    goto LABEL_107;
  }

  if (a1 > 2019)
  {
    v11 = "Core Training";
    v12 = "Elliptical";
    v13 = "Cross Training";
    if (a1 != 2061)
    {
      v13 = "frozen";
    }

    if (a1 != 2048)
    {
      v12 = v13;
    }

    if (a1 != 2024)
    {
      v11 = v12;
    }

    v14 = "Calisthenics";
    v15 = "Functional Strength Training";
    if (a1 != 2022)
    {
      v15 = "frozen";
    }

    if (a1 != 2020)
    {
      v14 = v15;
    }

    v16 = a1 <= 2023;
    goto LABEL_107;
  }

  if (a1 > 99)
  {
    v3 = "cycling leg";
    v4 = "Stationary Cycling";
    if (a1 != 2010)
    {
      v4 = "frozen";
    }

    v6 = a1 == 100;
    goto LABEL_131;
  }

  if (a1 == 66)
  {
    return "Pickleball";
  }

  if (a1 == 73)
  {
    return "Unknown";
  }

  return result;
}

const char *CLMotionActivity::activityConfidenceToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_1E7534580[a1];
  }
}

long double CLClientGetDistanceHighPrecision(_OWORD *a1, _OWORD *a2)
{
  if ((atomic_load_explicit(&qword_1ED71D208, memory_order_acquire) & 1) == 0)
  {
    v11 = a1;
    v12 = a2;
    v13 = __cxa_guard_acquire(&qword_1ED71D208);
    a2 = v12;
    v14 = v13;
    a1 = v11;
    if (v14)
    {
      qword_1ED71D250 = 0;
      unk_1ED71D258 = 0;
      xmmword_1ED71D240 = xmmword_19B7B7DA0;
      qword_1ED71D260 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1ED71D208);
      a1 = v11;
      a2 = v12;
    }
  }

  v2 = a1[7];
  v17[6] = a1[6];
  v17[7] = v2;
  v18[0] = a1[8];
  *(v18 + 12) = *(a1 + 140);
  v3 = a1[3];
  v17[2] = a1[2];
  v17[3] = v3;
  v4 = a1[5];
  v17[4] = a1[4];
  v17[5] = v4;
  v5 = a1[1];
  v17[0] = *a1;
  v17[1] = v5;
  v6 = a2[7];
  v15[6] = a2[6];
  v15[7] = v6;
  v16[0] = a2[8];
  *(v16 + 12) = *(a2 + 140);
  v7 = a2[3];
  v15[2] = a2[2];
  v15[3] = v7;
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  return sub_19B428558(&xmmword_1ED71D240, v17, v15);
}

long double sub_19B428558(float64x2_t *a1, uint64_t a2, uint64_t a3)
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
  if (sub_19B428690(v8, v9, v10, v11))
  {

    return sub_19B725958(v8, v9, v10, v11);
  }

  else
  {

    return sub_19B428714(a1, v8, v9, v10, v11, v7);
  }
}

BOOL sub_19B428690(double a1, double a2, double a3, double a4)
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

long double sub_19B428714(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = 0.0;
  v15 = 0.0;
  if (!sub_19B428690(a2, a3, a4, a5) && sub_19B4287F0(a1, &v15, &v14, &v13, a2, a3, a6, a4, a5, a6))
  {
    return sqrt(v14 * v14 + v15 * v15);
  }

  return sub_19B725958(a2, a3, a4, a5);
}

BOOL sub_19B4287F0(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
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
      *a1 = vdivq_f64(xmmword_19B7B7DA0, v26);
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

void sub_19B428A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B428AFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

_BYTE *sub_19B428B50(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B4C51DC();
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

uint64_t sub_19B428C08(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t sub_19B428F64(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  v4 = xmmword_19B7BD300;
  *(a1 + 8) = xmmword_19B7BD300;
  *(a1 + 24) = 0;
  if (a2)
  {
    v5 = objc_msgSend_copy(a2, a2, a3);
    v4 = xmmword_19B7BD300;
  }

  else
  {
    v5 = @"BundleIdNotAvailable";
  }

  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_19B428FCC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B72A364(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void *sub_19B4290B0(void *result, void *a2)
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

      sub_19B446FB8(result, v11);
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

void *sub_19B4291D8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_19B446FB8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_19B4290B0(a1, &v10);
}

void sub_19B429360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19B4294F0(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E34578;
  operator new();
}

os_log_t sub_19B429648()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429678()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4296A8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4296D8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429708()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429738()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429768()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429798()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4297C8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4297F8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429828()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429858()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429888()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4298B8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4298E8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429918()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429948()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429978()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4299A8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B4299D8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A08()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A38()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A68()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429A98()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429AC8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429AF8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429B28()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429B58()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429B88()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429BB8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429BE8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429C18()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

os_log_t sub_19B429C48()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED71C828 = result;
  return result;
}

void sub_19B429D10(CFTypeRef cf)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!qword_1ED71C900)
  {
    goto LABEL_24;
  }

  if (qword_1ED71C900 == cf)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v4 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Setting CLCommon's runloop after it was already established", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v2 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Changing CLCommon's runloop after it was already established", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 == -1)
      {
LABEL_22:
        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCommonSetRunLoop(CFRunLoopRef)", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }

        goto LABEL_24;
      }

LABEL_41:
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      goto LABEL_22;
    }
  }

LABEL_24:
  if (cf)
  {
    CFRetain(cf);
  }

  if (qword_1ED71C900)
  {
    CFRelease(qword_1ED71C900);
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
  }

  v7 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v12 = cf;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "CLCommonSetRunLoop, %p", buf, 0xCu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCommonSetRunLoop(CFRunLoopRef)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  qword_1ED71C900 = cf;
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B42A180(uint64_t a1, int a2, double *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v4 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v17) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unrecognized notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccelerometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else if (sub_19B4231B4(a1))
  {
    if (qword_1ED71C7D8 != -1)
    {
      dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
    }

    v9 = qword_1ED71C7E8;
    if (os_log_type_enabled(qword_1ED71C7E8, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 134349056;
      v17 = v10;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "Setting batch interval to %{public}f", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7D8 != -1)
      {
        dispatch_once(&qword_1ED71C7D8, &unk_1F0E28740);
      }

      v15 = *a3;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccelerometer::minimumBatchIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_19B424A2C(*(a1 + 40), *a3);
    v13 = *a3;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B42A4E4(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B42A51C(uint64_t a1)
{
  *a1 = &unk_1F0E31130;

  return a1;
}

uint64_t sub_19B42A568(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
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

BOOL sub_19B42A614(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = sub_19B42A90C(a1);
  if (v4)
  {
    v6 = *(a1 + 64);
    v5 = *(a1 + 72);
    if (v6 == 0.0 || (v5 != 0.0 ? (v7 = v5 < v6) : (v7 = 0), v7))
    {
      v6 = *(a1 + 72);
    }

    v8 = objc_autoreleasePoolPush();
    (*(**(a1 + 80) + 16))(*(a1 + 80), @"GyroProperties", &unk_1F0E6A2C8);
    v9 = 0.0;
    if (v6 != 1.79769313e308)
    {
      v9 = v6;
    }

    v10 = rint(v9 * 1000000.0);
    if (v9 < 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_19B4238F4(*(a1 + 80), v11);
    if ((a2 & 0x80000000) == 0)
    {
      v13 = *(a1 + 80);
      v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, a2 != 0);
      (*(*v13 + 16))(v13, @"GyroExtLevelTriggerSync", v14);
      *(a1 + 32) = a2;
    }

    objc_autoreleasePoolPop(v8);
    if (sub_19B42A90C(a1))
    {
      v15 = sub_19B424A2C(*(a1 + 80), 0.015);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v16 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v22 = v15;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Setting gyro batch interval to: %{public}ld us", buf, 0xCu);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
        }

        v18 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGyro::setGyroBatchInterval(const CFTimeInterval &)", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL sub_19B42A90C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80) && (sub_19B423E34() & 2) != 0)
  {
    v2 = sub_19B42CAAC();
    v5 = 0x90000FF00;
    v6 = 0;
    sub_19B42C428(v2);
  }

  result = *(a1 + 80) != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B42AC20(void *a1)
{
  *a1 = &unk_1F0E32BF8;
  a1[20] = &unk_1F0E32728;
  sub_19B42A568(a1 + 23);
  a1[11] = &unk_1F0E32728;
  sub_19B42A568(a1 + 14);
  a1[2] = &unk_1F0E32728;
  sub_19B42A568(a1 + 5);
  return a1;
}

void sub_19B42ACD8(void *a1)
{
  sub_19B42AC20(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B42AD10(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_19B42AD60(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B42AD98()
{
  if (qword_1ED71D278 != -1)
  {
    dispatch_once(&qword_1ED71D278, &unk_1F0E29520);
  }

  return qword_1ED71D270;
}

void sub_19B42ADE0()
{
  v5 = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
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
      dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLIspDataVisitor::onCMAData(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B42AFB0(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = 0;
  switch(*a2)
  {
    case 1:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 16))(a1);
      return 1;
    case 2:
      if (a3 != 72)
      {
        return 0;
      }

      (*(*a1 + 24))(a1);
      return 1;
    case 3:
      if (a3 != 105)
      {
        return 0;
      }

      (*(*a1 + 32))(a1);
      return 1;
    case 4:
      if (a3 != 64)
      {
        return 0;
      }

      (*(*a1 + 40))(a1);
      return 1;
    case 5:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 56))(a1);
      return 1;
    case 6:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 64))(a1);
      return 1;
    case 7:
      if (a3 != 212)
      {
        return 0;
      }

      (*(*a1 + 72))(a1);
      return 1;
    case 8:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 80))(a1);
      return 1;
    case 9:
      if (a3 != 212)
      {
        return 0;
      }

      (*(*a1 + 88))(a1);
      return 1;
    case 0xA:
      if (a3 != 193)
      {
        return 0;
      }

      (*(*a1 + 272))(a1);
      return 1;
    case 0xC:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 96))(a1);
      return 1;
    case 0xD:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 104))(a1);
      return 1;
    case 0xE:
      if (a3 != 55)
      {
        return 0;
      }

      (*(*a1 + 112))(a1);
      return 1;
    case 0xF:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 120))(a1);
      return 1;
    case 0x11:
      if (a3 != 36)
      {
        return 0;
      }

      (*(*a1 + 128))(a1);
      return 1;
    case 0x14:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 152))(a1);
      return 1;
    case 0x15:
      if (a3 != 48)
      {
        return 0;
      }

      (*(*a1 + 160))(a1);
      return 1;
    case 0x17:
      if (a3 != 21)
      {
        return 0;
      }

      (*(*a1 + 168))(a1);
      return 1;
    case 0x18:
      if (a3 != 89)
      {
        return 0;
      }

      (*(*a1 + 176))(a1);
      return 1;
    case 0x19:
      if (a3 != 218)
      {
        return 0;
      }

      (*(*a1 + 192))(a1);
      return 1;
    case 0x1B:
      if (a3 != 132)
      {
        return 0;
      }

      (*(*a1 + 200))(a1);
      return 1;
    case 0x1C:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 48))(a1);
      return 1;
    case 0x1D:
      if (a3 != 32)
      {
        return 0;
      }

      (*(*a1 + 136))(a1);
      return 1;
    case 0x1F:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 184))(a1);
      return 1;
    case 0x20:
      if (a3 != 157)
      {
        return 0;
      }

      (*(*a1 + 208))(a1);
      return 1;
    case 0x21:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 216))(a1);
      return 1;
    case 0x22:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 224))(a1);
      return 1;
    case 0x23:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 232))(a1);
      return 1;
    case 0x24:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 248))(a1);
      return 1;
    case 0x25:
      if (a3 != 21)
      {
        return 0;
      }

      (*(*a1 + 256))(a1);
      return 1;
    case 0x26:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 264))(a1);
      return 1;
    case 0x27:
      if (a3 != 205)
      {
        return 0;
      }

      (*(*a1 + 280))(a1);
      return 1;
    case 0x28:
      if (a3 != 25)
      {
        return 0;
      }

      (*(*a1 + 288))(a1);
      return 1;
    case 0x29:
      if (a3 != 69)
      {
        return 0;
      }

      (*(*a1 + 296))(a1);
      return 1;
    case 0x2B:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 240))(a1);
      return 1;
    case 0x2C:
      if (a3 != 29)
      {
        return 0;
      }

      (*(*a1 + 312))(a1);
      return 1;
    case 0x2D:
      if (a3 != 37)
      {
        return 0;
      }

      (*(*a1 + 320))(a1);
      return 1;
    case 0x2E:
      if (a3 != 45)
      {
        return 0;
      }

      (*(*a1 + 328))(a1);
      return 1;
    case 0x2F:
      if (a3 != 113)
      {
        return 0;
      }

      (*(*a1 + 336))(a1);
      return 1;
    case 0x30:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 304))(a1);
      return 1;
    case 0x31:
      if (a3 != 68)
      {
        return 0;
      }

      v4 = *(*a1 + 352);
      goto LABEL_164;
    case 0x32:
      if (a3 != 43)
      {
        return 0;
      }

      (*(*a1 + 360))(a1);
      return 1;
    case 0x33:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 368))(a1);
      return 1;
    case 0x34:
      if (a3 != 49)
      {
        return 0;
      }

      (*(*a1 + 384))(a1);
      return 1;
    case 0x35:
      if (a3 != 20)
      {
        return 0;
      }

      (*(*a1 + 392))(a1);
      return 1;
    case 0x36:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 400))(a1);
      return 1;
    case 0x37:
      if (a3 != 30)
      {
        return 0;
      }

      (*(*a1 + 408))(a1);
      return 1;
    case 0x38:
      if (a3 != 28)
      {
        return 0;
      }

      (*(*a1 + 416))(a1);
      return 1;
    case 0x39:
      if (a3 != 57)
      {
        return 0;
      }

      (*(*a1 + 344))(a1);
      return 1;
    case 0x3A:
      if (a3 != 232)
      {
        return 0;
      }

      (*(*a1 + 376))(a1);
      return 1;
    case 0x3B:
      if (a3 != 44)
      {
        return 0;
      }

      (*(*a1 + 472))(a1);
      return 1;
    case 0x3C:
      if (a3 != 10)
      {
        return 0;
      }

      (*(*a1 + 488))(a1);
      return 1;
    case 0x40:
      if (a3 != 29)
      {
        return 0;
      }

      (*(*a1 + 424))(a1);
      return 1;
    case 0x41:
      if (a3 != 9)
      {
        return 0;
      }

      (*(*a1 + 440))(a1);
      return 1;
    case 0x42:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 448))(a1);
      return 1;
    case 0x43:
      if (a3 != 12)
      {
        return 0;
      }

      (*(*a1 + 496))(a1);
      return 1;
    case 0x44:
      if (a3 != 76)
      {
        return 0;
      }

      (*(*a1 + 456))(a1);
      return 1;
    case 0x45:
      if (a3 != 39)
      {
        return 0;
      }

      (*(*a1 + 504))(a1);
      return 1;
    case 0x47:
      if (a3 != 45)
      {
        return 0;
      }

      (*(*a1 + 512))(a1);
      return 1;
    case 0x48:
      if (a3 != 16)
      {
        return 0;
      }

      (*(*a1 + 528))(a1);
      return 1;
    case 0x49:
      if (a3 != 83)
      {
        return 0;
      }

      (*(*a1 + 520))(a1);
      return 1;
    case 0x4A:
      if (a3 != 51)
      {
        return 0;
      }

      v4 = *(*a1 + 544);
LABEL_164:
      v4();
      return 1;
    case 0x4B:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 552))(a1);
      return 1;
    case 0x4C:
      if (a3 != 10)
      {
        return 0;
      }

      (*(*a1 + 536))(a1);
      return 1;
    case 0x4D:
      if (a3 != 13)
      {
        return 0;
      }

      (*(*a1 + 480))(a1);
      return 1;
    case 0x4E:
      if (a3 != 58)
      {
        return 0;
      }

      (*(*a1 + 464))(a1);
      return 1;
    case 0x4F:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 560))(a1);
      return 1;
    case 0x50:
      if (a3 != 18)
      {
        return 0;
      }

      (*(*a1 + 568))(a1);
      return 1;
    case 0x52:
      if (a3 != 26)
      {
        return 0;
      }

      (*(*a1 + 576))(a1);
      return 1;
    case 0x53:
      if (a3 != 22)
      {
        return 0;
      }

      (*(*a1 + 584))(a1);
      return 1;
    case 0x54:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 592))(a1);
      return 1;
    case 0x55:
      if (a3 != 20)
      {
        return 0;
      }

      (*(*a1 + 600))(a1);
      return 1;
    case 0x56:
      if (a3 != 113)
      {
        return 0;
      }

      (*(*a1 + 608))(a1);
      return 1;
    case 0x57:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 616))(a1);
      return 1;
    case 0x58:
      if (a3 != 61)
      {
        return 0;
      }

      (*(*a1 + 624))(a1);
      return 1;
    case 0x59:
      if (a3 != 47)
      {
        return 0;
      }

      (*(*a1 + 432))(a1);
      return 1;
    case 0x5A:
      if (a3 != 222)
      {
        return 0;
      }

      (*(*a1 + 632))(a1);
      return 1;
    case 0x5B:
      if (a3 != 48)
      {
        return 0;
      }

      (*(*a1 + 640))(a1);
      return 1;
    case 0x5C:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 648))(a1);
      return 1;
    case 0x5D:
      if (a3 != 8)
      {
        return 0;
      }

      (*(*a1 + 656))(a1);
      return 1;
    case 0x5E:
      if (a3 != 60)
      {
        return 0;
      }

      (*(*a1 + 664))(a1);
      return 1;
    case 0x5F:
      if (a3 != 74)
      {
        return 0;
      }

      (*(*a1 + 672))(a1);
      return 1;
    case 0x60:
      if (a3 != 13)
      {
        return 0;
      }

      (*(*a1 + 680))(a1);
      return 1;
    case 0xB0:
      if (a3 != 17)
      {
        return 0;
      }

      (*(*a1 + 144))(a1);
      return 1;
    default:
      return v3;
  }
}

void sub_19B42C49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B42C54C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x19EAE71C0]();

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

BOOL sub_19B42C59C()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 1;
  if ((dword_1ED71C97C - 184) > 0x38 || ((1 << (dword_1ED71C97C + 72)) & 0x10000000000003FLL) == 0)
  {
    return (dword_1ED71C97C - 174) < 2;
  }

  return result;
}

void *sub_19B42C644(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Uiapplication.isa);
  result = objc_msgSend_performSelector_(v2, v3, sel_sharedApplication);
  if (result)
  {
    result = objc_msgSend_performSelector_(result, v5, sel_applicationState);
    *(*(a1 + 32) + 632) = result == 0;
  }

  return result;
}

uint64_t sub_19B42C69C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E32D70;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  if (sub_19B421620())
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v2 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLIspDataVisitor] setting up oscar callback", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
      }

      v15 = 0;
      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLIspDataVisitor::CLIspDataVisitor()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    v5 = sub_19B420D84();
    v6 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v7 = sub_19B62FD78;
LABEL_29:
    v6[2] = v7;
    v6[3] = &unk_1E75327D8;
    v6[4] = a1;
    sub_19B420C9C(v5, v6);
    goto LABEL_30;
  }

  if ((sub_19B421620() & 2) != 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CLIspDataVisitor] setting up devmotion3 callback", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
      }

      v15 = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLIspDataVisitor::CLIspDataVisitor()", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v5 = sub_19B420D84();
    v6 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v7 = sub_19B63019C;
    goto LABEL_29;
  }

LABEL_30:
  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B42CA6C(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B42CAAC()
{
  if (qword_1ED71D7A8 != -1)
  {
    dispatch_once(&qword_1ED71D7A8, &unk_1F0E2A5C0);
  }

  return qword_1ED71D7A0;
}

void *sub_19B42CAF4(void *a1, int *a2, int *a3, char *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2ACD0;
  sub_19B42CB60((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

uint64_t sub_19B42CB60(uint64_t a1, int a2, int a3, char a4, uint64_t a5)
{
  *a1 = &unk_1F0E31168;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 20) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a5;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = objc_opt_new();
  return a1;
}

void sub_19B42CBE8(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v25 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] addDevice should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }
      }

      v26 = off_1ED71C838;
      if (os_signpost_enabled(off_1ED71C838))
      {
        *buf = 68289539;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] addDevice should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] addDevice should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }
      }

      v27 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
        _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] addDevice should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_42:
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*a2 + 16);
    v7 = *(*a2 + 20);
    *buf = 67240448;
    v31 = v7;
    v32 = 1026;
    LODWORD(v33) = v6;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Adding new Device with usage pair {%{public}d, %{public}d}", buf, 0xEu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v28 = *(*a2 + 20);
    v29 = *(*a2 + 16);
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::addDevice(std::shared_ptr<CLIoHidInterface::Device>)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 4;
    v18 = v17 + 1;
    if ((v17 + 1) >> 60)
    {
      sub_19B5BE690();
    }

    v19 = v12 - v15;
    if (v19 >> 3 > v18)
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

      sub_19B4C5080();
    }

    v21 = v17;
    v22 = (16 * v17);
    v23 = &v22[-v21];
    *v22 = v10;
    v14 = v22 + 1;
    memcpy(v23, v15, v16);
    a1[1] = v23;
    a1[2] = v14;
    a1[3] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v10;
    *(v13 + 1) = v11;
    v14 = v13 + 16;
  }

  a1[2] = v14;
  v24 = *MEMORY[0x1E69E9840];
}

void sub_19B42D0E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B42D100(uint64_t a1, uint64_t a2, uint64_t a3)
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
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
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
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setCallback should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
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
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setCallback should be called from motion thread, usagePage:%{public}d, usage:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x32u);
    }

    abort_report_np();
  }

  sub_19B420FC0(*(a1 + 40));
  v7 = *(a1 + 56) == 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  if (((a2 != 0) ^ v7))
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x1E69E9840];

    sub_19B42D440(v9);
  }
}

void sub_19B42D440(NSObject *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v35 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v47 = 0;
      *&v47[4] = 2082;
      *&v47[6] = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setMatchingForDevices should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v36 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v47 = 0;
      *&v47[4] = 2082;
      *&v47[6] = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setMatchingForDevices should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] setMatchingForDevices should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v47 = 0;
      *&v47[4] = 2082;
      *&v47[6] = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setMatchingForDevices should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v38 = 281;
    v39 = "setMatchingForDevices";
    v37 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm";
    abort_report_np();
    __break(1u);
LABEL_66:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_30:
    v25 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *v47 = v1;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Setting matching multiple for %{public}lu events", buf, 0xCu);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v44 = 134349056;
      *v45 = v1;
      LODWORD(v38) = 12;
      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::setMatchingForDevices()", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    isa = a1[5].isa;
    objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v27, v41, v37, v38, v39);
    IOHIDEventSystemClientSetMatchingMultiple();
    objc_autoreleasePoolPop(context);
    sub_19B42DD0C(a1);
    sub_19B42E770(a1, 0);
    goto LABEL_41;
  }

  context = objc_autoreleasePoolPush();
  v4 = sub_19B421620();
  v41 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, (a1[2].isa - a1[1].isa) >> 4);
  v7 = a1[1].isa;
  v6 = a1[2].isa;
  if (v7 == v6)
  {
    v1 = 0;
LABEL_29:
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

  v1 = 0;
  while (1)
  {
    v8 = v7[1];
    if (v8)
    {
      break;
    }

LABEL_26:
    v7 += 2;
    if (v7 == v6)
    {
      goto LABEL_29;
    }
  }

  v9 = *v7;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
LABEL_25:
    std::__shared_weak_count::__release_weak(v8);
    goto LABEL_26;
  }

  v11 = v10;
  if (!v9)
  {
LABEL_24:
    sub_19B41FFEC(v11);
    goto LABEL_25;
  }

  if ((v4 & 0x1000000000000) != 0 || *(v9 + 20) != 65280 || *(v9 + 16) != 8)
  {
    if (*(v9 + 56))
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v12 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(v9 + 16);
        v13 = *(v9 + 20);
        *buf = 67240448;
        *v47 = v13;
        *&v47[4] = 1026;
        *&v47[6] = v14;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Adding match entry for usage pair {%{public}d, %{public}d}", buf, 0xEu);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 20);
        v44 = 67240448;
        *v45 = v17;
        *&v45[4] = 1026;
        *&v45[6] = v18;
        LODWORD(v38) = 14;
        v19 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::setMatchingForDevices()", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      v42[0] = @"PrimaryUsagePage";
      v20 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, *(v9 + 20));
      v42[1] = @"PrimaryUsage";
      v43[0] = v20;
      v43[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v21, *(v9 + 16));
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v43, v42, 2);
      objc_msgSend_setObject_atIndexedSubscript_(v41, v24, v23, v1++);
    }

    goto LABEL_24;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
  }

  v31 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Prox: remove set matching multiple", buf, 2u);
  }

  v32 = sub_19B420058();
  if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v44) = 0;
    v33 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::setMatchingForDevices()", "CoreLocation: %s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  v34 = a1[5].isa;
  IOHIDEventSystemClientSetMatchingMultiple();
  sub_19B42DD0C(a1);
  sub_19B42E770(a1, 0);
  sub_19B41FFEC(v11);
  std::__shared_weak_count::__release_weak(v8);
  objc_autoreleasePoolPop(context);
LABEL_41:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_19B42DCDC(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_19B42DD0C(NSObject *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v45 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v65 = 0;
      *&v65[4] = 2082;
      *&v65[6] = "";
      *&v65[14] = 2082;
      *&v65[16] = "assert";
      *&v65[24] = 2081;
      v66 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v46 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v65 = 0;
      *&v65[4] = 2082;
      *&v65[6] = "";
      *&v65[14] = 2082;
      *&v65[16] = "assert";
      *&v65[24] = 2081;
      v66 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v65 = 0;
      *&v65[4] = 2082;
      *&v65[6] = "";
      *&v65[14] = 2082;
      *&v65[16] = "assert";
      *&v65[24] = 2081;
      v66 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] invalidateDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v48 = 187;
    v49 = "invalidateDeviceServiceRefs";
    v47 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/IO/CLIoHidInterface.mm";
    abort_report_np();
    __break(1u);
  }

  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_3:
  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Invalidating hid service refs", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v67[0]) = 0;
    LODWORD(v48) = 2;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::invalidateDeviceServiceRefs()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  isa = a1[1].isa;
  v6 = a1[2].isa;
  if (isa != v6)
  {
    v50 = v6;
    do
    {
      v8 = isa[1];
      if (v8)
      {
        v9 = *isa;
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v53 = v8;
        v52 = std::__shared_weak_count::lock(v8);
        if (v52)
        {
          if (v9)
          {
            v51 = isa;
            (*(*v9 + 48))(v9);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            v10 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
            {
              v12 = *(v9 + 16);
              v11 = *(v9 + 20);
              v13 = *(v9 + 56) != 0;
              v14 = *(v9 + 24);
              *buf = 67240961;
              *v65 = v11;
              *&v65[4] = 1026;
              *&v65[6] = v12;
              *&v65[10] = 1026;
              *&v65[12] = v13;
              *&v65[16] = 2049;
              *&v65[18] = v14;
              _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Device,hidUsagePage,%{public}d,hidUsage,%{public}d,hasCallback,%{public}d,serviceRef,%{private}p", buf, 0x1Eu);
            }

            v15 = sub_19B420058();
            if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C830 != -1)
              {
                dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
              }

              v17 = *(v9 + 16);
              v16 = *(v9 + 20);
              v18 = *(v9 + 56) != 0;
              v19 = *(v9 + 24);
              v67[0] = 67240961;
              v67[1] = v16;
              v68 = 1026;
              v69 = v17;
              v70 = 1026;
              v71 = v18;
              v72 = 2049;
              v73 = v19;
              LODWORD(v48) = 30;
              v20 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::print() const", "CoreLocation: %s\n", v20);
              if (v20 != buf)
              {
                free(v20);
              }
            }

            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v22 = *(v9 + 168);
              v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v21, &v54, v67, 16);
              if (v24)
              {
                v25 = *v55;
                do
                {
                  v26 = 0;
                  do
                  {
                    if (*v55 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v54 + 1) + 8 * v26);
                    v28 = objc_msgSend_objectForKeyedSubscript_(*(v9 + 168), v23, v27, v47, v48, v49);
                    if (qword_1ED71C830 != -1)
                    {
                      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                    }

                    v29 = off_1ED71C838;
                    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
                    {
                      v32 = objc_msgSend_value(v28, v30, v31);
                      v35 = objc_msgSend_dirty(v28, v33, v34);
                      *buf = 138543874;
                      *v65 = v27;
                      *&v65[8] = 2114;
                      *&v65[10] = v32;
                      *&v65[18] = 1026;
                      *&v65[20] = v35;
                      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] \tProperty: %{public}@ = %{public}@,dirty,%{public}d", buf, 0x1Cu);
                    }

                    v36 = sub_19B420058();
                    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1ED71C830 != -1)
                      {
                        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
                      }

                      v39 = objc_msgSend_value(v28, v37, v38);
                      v42 = objc_msgSend_dirty(v28, v40, v41);
                      v58 = 138543874;
                      v59 = v27;
                      v60 = 2114;
                      v61 = v39;
                      v62 = 1026;
                      v63 = v42;
                      LODWORD(v48) = 28;
                      v43 = _os_log_send_and_compose_impl();
                      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::printProperties() const", "CoreLocation: %s\n", v43);
                      if (v43 != buf)
                      {
                        free(v43);
                      }
                    }

                    ++v26;
                  }

                  while (v24 != v26);
                  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v54, v67, 16);
                }

                while (v24);
              }
            }

            isa = v51;
            v6 = v50;
          }

          sub_19B41FFEC(v52);
        }

        std::__shared_weak_count::__release_weak(v53);
      }

      isa += 2;
    }

    while (isa != v6);
  }

  v44 = *MEMORY[0x1E69E9840];
}

void sub_19B42E5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, std::__shared_weak_count *a18)
{
  sub_19B41FFEC(a17);
  std::__shared_weak_count::__release_weak(a18);
  _Unwind_Resume(a1);
}

uint64_t sub_19B42E628(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
    sub_19B42E734(a1);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 168);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, a2, &v13, v17, 16);
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 168), v6, *(*(&v13 + 1) + 8 * v9));
        objc_msgSend_setDirty_(v10, v11, 1);
        ++v9;
      }

      while (v7 != v9);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
      v7 = result;
    }

    while (result);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B42E734(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IOHIDDeviceClose(v2, 0);
    CFRelease(*(a1 + 32));
    *(a1 + 32) = 0;
  }
}

void sub_19B42E770(uint64_t a1, __IOHIDServiceClient *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current == *qword_1ED71C908)
  {
    if (qword_1ED71C830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v34 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v55 = 0;
      *&v55[4] = 2082;
      *&v55[6] = "";
      v56 = 2082;
      *v57 = "assert";
      *&v57[8] = 2081;
      v58 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v35 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v55 = 0;
      *&v55[4] = 2082;
      *&v55[6] = "";
      v56 = 2082;
      *v57 = "assert";
      *&v57[8] = 2081;
      v58 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v36 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v55 = 0;
      *&v55[4] = 2082;
      *&v55[6] = "";
      v56 = 2082;
      *v57 = "assert";
      *&v57[8] = 2081;
      v58 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] refreshDeviceServiceRefs should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
LABEL_3:
  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Refreshing service refs", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    LOWORD(v45) = 0;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::refreshDeviceServiceRefs(const IOHIDServiceClientRef)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  obj = IOHIDEventSystemClientCopyServices(*(a1 + 40));
  if (obj)
  {
    context = objc_autoreleasePoolPush();
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v41, v53, 16);
    if (v8)
    {
      v39 = *v42;
      do
      {
        v9 = 0;
        do
        {
          if (*v42 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v41 + 1) + 8 * v9);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
          {
            v12 = IOHIDServiceClientCopyProperty(v10, @"PrimaryUsagePage");
            v15 = objc_msgSend_intValue(v12, v13, v14);
            v16 = IOHIDServiceClientCopyProperty(v10, @"PrimaryUsage");
            v19 = objc_msgSend_intValue(v16, v17, v18);
            v20 = IOHIDServiceClientCopyProperty(v10, @"LocationID");
            v23 = objc_msgSend_intValue(v20, v21, v22);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
            }

            v24 = off_1ED71C838;
            if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134284289;
              *v55 = v10;
              *&v55[8] = 1026;
              *&v55[10] = v15;
              v56 = 1026;
              *v57 = v19;
              *&v57[4] = 1026;
              *&v57[6] = v23;
              _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Check service ref %{private}p with usage pair {%{public}d, %{public}d} locationID %{public}d as a potential match", buf, 0x1Eu);
            }

            v25 = sub_19B420058();
            if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C830 != -1)
              {
                dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
              }

              v45 = 134284289;
              v46 = v10;
              v47 = 1026;
              v48 = v15;
              v49 = 1026;
              v50 = v19;
              v51 = 1026;
              v52 = v23;
              v26 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::refreshDeviceServiceRefs(const IOHIDServiceClientRef)", "CoreLocation: %s\n", v26);
              if (v26 != buf)
              {
                free(v26);
              }
            }
          }

          if (v10 != a2)
          {
            v28 = *(a1 + 8);
            v27 = *(a1 + 16);
            while (v28 != v27)
            {
              v29 = *(v28 + 8);
              if (v29)
              {
                v30 = *v28;
                atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v31 = std::__shared_weak_count::lock(v29);
                if (v31)
                {
                  v32 = v31;
                  if (v30 && (sub_19B42F570(v30, v10) & 1) != 0)
                  {
                    sub_19B42F5C8(v30, v10, 0);
                    if (v30[11])
                    {
                      IOHIDServiceClientRegisterRemovalCallback();
                    }
                  }

                  sub_19B41FFEC(v32);
                }

                std::__shared_weak_count::__release_weak(v29);
              }

              v28 += 16;
            }
          }

          ++v9;
        }

        while (v9 != v8);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v41, v53, 16);
      }

      while (v8);
    }

    objc_autoreleasePoolPop(context);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_19B42EF38(_Unwind_Exception *a1)
{
  sub_19B41FFEC(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B42EF5C(__IOHIDServiceClient *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, a2, &v24, v40, 16);
  if (!v4)
  {
    result = 1;
    goto LABEL_50;
  }

  v6 = v4;
  v7 = *v25;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(a2);
      }

      v9 = *(*(&v24 + 1) + 8 * i);
      v10 = objc_msgSend_objectForKeyedSubscript_(a2, v5, v9);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v11 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543875;
        v35 = v9;
        v36 = 2113;
        v37 = v10;
        v38 = 2049;
        v39 = a1;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Checking matching property %{public}@ = %{private}@ for service ref %{private}p", buf, 0x20u);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v28 = 138543875;
        v29 = v9;
        v30 = 2113;
        v31 = v10;
        v32 = 2049;
        v33 = a1;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLIoHidInterface::Device::serviceMatchesProperties(IOHIDServiceClientRef, NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      v14 = IOHIDServiceClientCopyProperty(a1, v9);
      if (!v14)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v17 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543875;
          v35 = v9;
          v36 = 2114;
          v37 = v10;
          v38 = 2049;
          v39 = a1;
          _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Invalid matching property %{public}@ = %{public}@ for service ref %{private}p", buf, 0x20u);
        }

        v18 = sub_19B420058();
        if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v28 = 138543875;
          v29 = v9;
          v30 = 2114;
          v31 = v10;
          v32 = 2049;
          v33 = a1;
          v19 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLIoHidInterface::Device::serviceMatchesProperties(IOHIDServiceClientRef, NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        goto LABEL_49;
      }

      v15 = v14;
      if (!CFEqual(v14, v10))
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v20 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543875;
          v35 = v9;
          v36 = 2114;
          v37 = v15;
          v38 = 2049;
          v39 = a1;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Property mismatch! %{public}@ = %{public}@ for service ref %{private}p", buf, 0x20u);
        }

        v21 = sub_19B420058();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
          }

          v28 = 138543875;
          v29 = v9;
          v30 = 2114;
          v31 = v15;
          v32 = 2049;
          v33 = a1;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLIoHidInterface::Device::serviceMatchesProperties(IOHIDServiceClientRef, NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        CFRelease(v15);
LABEL_49:
        result = 0;
        goto LABEL_50;
      }

      CFRelease(v15);
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v5, &v24, v40, 16);
    result = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_50:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B42F570(uint64_t a1, IOHIDServiceClientRef service)
{
  result = IOHIDServiceClientConformsTo(service, *(a1 + 20), *(a1 + 16));
  if (result)
  {
    v5 = *(a1 + 160);

    return sub_19B42EF5C(service, v5);
  }

  return result;
}

void sub_19B42F5C8(void *a1, char *a2, int a3)
{
  LODWORD(v3) = a3;
  v49 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v33 = off_1ED71C838;
    p_vtable = "sE";
    a2 = "assert";
    v3 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v47 = 2082;
      *v48 = "";
      *&v48[8] = 2082;
      *&v48[10] = "assert";
      *&v48[18] = 2081;
      *&v48[20] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v34 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v47 = 2082;
      *v48 = "";
      *&v48[8] = 2082;
      *&v48[10] = "assert";
      *&v48[18] = 2081;
      *&v48[20] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] Should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v47 = 2082;
      *v48 = "";
      *&v48[8] = 2082;
      *&v48[10] = "assert";
      *&v48[18] = 2081;
      *&v48[20] = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_65:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_32;
  }

  v7 = *(a1 + 3);
  if (v7 == a2)
  {
    goto LABEL_51;
  }

  if (v7)
  {
    if (!v3)
    {
      goto LABEL_51;
    }

    if (*(a1 + 48) == 1 && (sub_19B4217E0(*(a1 + 3), @"ReportInterval", &unk_1F0E6A6C0) & 1) == 0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v8 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] Failed to stop streaming from the old service before switching to the new one", buf, 2u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        LOWORD(v36) = 0;
        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::Device::updateServiceRef(IOHIDServiceClientRef, BOOL)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }

    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v11 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 4);
      v12 = *(a1 + 5);
      v14 = *(a1 + 20);
      *buf = 67241219;
      *&buf[4] = v12;
      v47 = 1026;
      *v48 = v13;
      *&v48[4] = 2049;
      *&v48[6] = v7;
      *&v48[14] = 2049;
      *&v48[16] = a2;
      *&v48[24] = 2113;
      *&v48[26] = v14;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Device,usagePage,%{public}d,usage,%{public}d,hidserviceref,old,%{private}p,new,%{private}p,matchingProperties,%{private}@", buf, 0x2Cu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v17 = *(a1 + 4);
      v16 = *(a1 + 5);
      v18 = *(a1 + 20);
      v36 = 67241219;
      v37 = v16;
      v38 = 1026;
      v39 = v17;
      v40 = 2049;
      v41 = v7;
      v42 = 2049;
      v43 = a2;
      v44 = 2113;
      v45 = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::updateServiceRef(IOHIDServiceClientRef, BOOL)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    (*(*a1 + 48))(a1);
    goto LABEL_42;
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (qword_1ED71C830 != -1)
  {
    goto LABEL_65;
  }

LABEL_32:
  v21 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 4);
    v22 = *(a1 + 5);
    v24 = *(a1 + 20);
    *buf = 67240963;
    *&buf[4] = v22;
    v47 = 1026;
    *v48 = v23;
    *&v48[4] = 2049;
    *&v48[6] = a2;
    *&v48[14] = 2113;
    *&v48[16] = v24;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service ref with usage pair {%{public}d, %{public}d} is %{private}p with matching properties %{private}@", buf, 0x22u);
  }

  v25 = sub_19B420058();
  if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (p_vtable[262] != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v27 = *(a1 + 4);
    v26 = *(a1 + 5);
    v28 = *(a1 + 20);
    v36 = 67240963;
    v37 = v26;
    v38 = 1026;
    v39 = v27;
    v40 = 2049;
    v41 = a2;
    v42 = 2113;
    v43 = v28;
    v29 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::updateServiceRef(IOHIDServiceClientRef, BOOL)", "CoreLocation: %s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

LABEL_42:
  *(a1 + 3) = CFRetain(a2);
  sub_19B42E734(a1);
  if (v3)
  {
    sub_19B421D14(*(a1 + 5));
  }

  if (*(a1 + 15))
  {
    *buf = 0;
    RegistryID = IOHIDServiceClientGetRegistryID(a2);
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, buf);
    if (*buf != *(a1 + 1))
    {
      (*(a1 + 15))(*(a1 + 16));
    }
  }

  if (*(a1 + 9) && ((v3 & 1) != 0 || *(a1 + 48) == 1))
  {
    v31 = sub_19B420D84();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_19B782F70;
    v35[3] = &unk_1E75327D8;
    v35[4] = a1;
    sub_19B421668(v31, v35);
  }

LABEL_51:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B42FE48(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient_CoreMotion, a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_timeSyncMachTimeStamp_oscarTimeStamp_, a1);
}

void sub_19B4303F0(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B4334DC;
    block[3] = &unk_1E75327D8;
    block[4] = a1;
    if (*v2 != -1)
    {
      dispatch_once(v2, block);
    }

    *(a1 + 32) = 1;
  }
}

uint64_t sub_19B430490(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = objc_autoreleasePoolPush();
  v2 = _CFGetProgname();
  v3 = strcmp(*v2, "locationd") == 0;
  *(qword_1ED71C908 + 16) = v3;
  pthread_setname_np("com.apple.CoreMotion.MotionThread");
  if (*(qword_1ED71C908 + 16) != 1)
  {
    operator new();
  }

  sub_19B5FC534(buf);
  v4 = *&buf[0].version;
  buf[0].version = 0;
  buf[0].info = 0;
  v5 = *(qword_1ED71C908 + 32);
  *(qword_1ED71C908 + 24) = v4;
  if (v5)
  {
    sub_19B41FFEC(v5);
    if (buf[0].info)
    {
      sub_19B41FFEC(buf[0].info);
    }
  }

  v38 = 0;
  if ((sub_19B432FD8(*(qword_1ED71C908 + 24), "MotionThreadPriority", &v38) & 1) == 0)
  {
    v38 = -1;
  }

  v36 = 0;
  v6 = pthread_self();
  v7 = pthread_getschedparam(v6, &v36, &v37);
  if (v7)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0].version) = 67240192;
      HIDWORD(buf[0].version) = v7;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Could not get scheduling parameters for motion thread, error = %{public}d", buf, 8u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
      }

      LODWORD(context.version) = 67240192;
      HIDWORD(context.version) = v7;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    sched_priority = v38;
    if (v38 <= 0)
    {
      priority_max = sched_get_priority_max(v36);
      sched_priority = v37.sched_priority;
      if (priority_max > v37.sched_priority)
      {
        sched_priority = priority_max;
      }
    }

    v37.sched_priority = sched_priority;
    v13 = pthread_self();
    pthread_setschedparam(v13, v36, &v37);
    v14 = pthread_self();
    pthread_getschedparam(v14, &v36, &v37);
  }

  *qword_1ED71C908 = CFRunLoopGetCurrent();
  sub_19B4303F0(a1);
  pthread_dependency_fulfill_np();
  memset(&context, 0, sizeof(context));
  v15 = *MEMORY[0x1E695E480];
  v16 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  if (!v16)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    v17 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf[0].version) = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "could not create runloop source", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
      }

      LOWORD(v39) = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v20 = *MEMORY[0x1E695E8D0];
  CFRunLoopAddSource(*qword_1ED71C908, v16, *MEMORY[0x1E695E8D0]);
  v21 = _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
  }

  v22 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0].version) = 67174657;
    HIDWORD(buf[0].version) = v21;
    _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEBUG, "_CFRunLoopSetPerCalloutAutoreleasepoolEnabled() returned a value of, %{private}d.", buf, 8u);
  }

  v23 = sub_19B420058();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v39 = 67174657;
    v40 = v21;
    v24 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  if (v21)
  {
    v25 = 0;
    v26 = 0;
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    buf[0].version = 0;
    buf[0].info = Mutable;
    buf[0].retain = MEMORY[0x1E695D7C8];
    buf[0].release = MEMORY[0x1E695D7C0];
    buf[0].copyDescription = MEMORY[0x1E695D768];
    v26 = CFRunLoopObserverCreate(0, 1uLL, 1u, -2147483647, sub_19B6783F4, buf);
    v25 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, sub_19B6783F4, buf);
    CFRunLoopAddObserver(*qword_1ED71C908, v26, v20);
    CFRunLoopAddObserver(*qword_1ED71C908, v25, v20);
  }

  *(qword_1ED71C908 + 40) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v29 = CFRunLoopTimerCreateWithHandler(v15, Current + 1.0, 5.0, 0, 0, &unk_1F0E28560);
  CFRunLoopAddTimer(*qword_1ED71C908, v29, v20);
  objc_autoreleasePoolPop(v35);
  CFRunLoopRun();
  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
  }

  v30 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf[0].version) = 0;
    _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "Motion thread exiting", buf, 2u);
  }

  v31 = sub_19B420058();
  if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    LOWORD(context.version) = 0;
    v32 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void *CLMotionCore::runMotionThread(void *)", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  if (v29)
  {
    CFRunLoopRemoveTimer(*qword_1ED71C908, v29, v20);
    CFRelease(v29);
  }

  if (v25)
  {
    CFRunLoopRemoveObserver(*qword_1ED71C908, v25, v20);
    CFRelease(v25);
  }

  if (v26)
  {
    CFRunLoopRemoveObserver(*qword_1ED71C908, v26, v20);
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRunLoopRemoveSource(*qword_1ED71C908, v16, v20);
    CFRelease(v16);
  }

  v33 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B430DF4(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = sub_19B431640(a1);
  *v8 = &unk_1F0E33A28;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_19B431640(v8 + 13);
  *(a1 + 104) = &unk_1F0E31430;
  sub_19B431640((a1 + 120));
  *(a1 + 120) = &unk_1F0E31430;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_19B431834(*(a1 + 80), &v59);
  if (v60 >= 0)
  {
    v10 = &v59;
  }

  else
  {
    v10 = v59;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v13 = &v59;
      if (v60 < 0)
      {
        v13 = v59;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }

      v15 = &v59;
      if (v60 < 0)
      {
        v15 = v59;
      }

      LODWORD(v61.__r_.__value_.__l.__data_) = 136446210;
      *(v61.__r_.__value_.__r.__words + 4) = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_19B4C5138(__dst, v59, *(&v59 + 1));
  }

  else
  {
    *__dst = v59;
    v57 = v60;
  }

  sub_19B432230(__dst, &v58);
  v17 = std::string::append(&v58, "/Library/Preferences/", 0x15uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_19B431834(a2, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v19 = &v53;
  }

  else
  {
    v19 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v20 = v55;
  }

  else
  {
    v20 = v54;
  }

  v21 = std::string::append(&v61, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_19B428B50(&__p, ".plist");
  if ((v52 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v52 & 0x80u) == 0)
  {
    v24 = v52;
  }

  else
  {
    v24 = v51;
  }

  v25 = std::string::append(buf, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  v62[0] = v25->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v28 = v62[0];
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 39) = *(v62 + 7);
  *(a1 + 47) = v27;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_19B4C5138(v48, v59, *(&v59 + 1));
  }

  else
  {
    *v48 = v59;
    v49 = v60;
  }

  sub_19B4324F8(v48, &v58);
  v29 = std::string::append(&v58, "/", 1uLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  sub_19B431834(a2, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v31 = &v53;
  }

  else
  {
    v31 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v32 = v55;
  }

  else
  {
    v32 = v54;
  }

  v33 = std::string::append(&v61, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  sub_19B428B50(&__p, ".plist");
  if ((v52 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51;
  }

  v37 = std::string::append(buf, v35, v36);
  v38 = v37->__r_.__value_.__r.__words[0];
  v62[0] = v37->__r_.__value_.__l.__size_;
  *(v62 + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
  v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v40 = v62[0];
  *(a1 + 48) = v38;
  *(a1 + 56) = v40;
  *(a1 + 63) = *(v62 + 7);
  *(a1 + 71) = v39;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  v41 = getpwnam("root");
  v45 = 0;
  if (v41)
  {
    v42 = v41;
    pw_uid = v41->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v42->pw_gid;
      if (pw_gid == getgid())
      {
        v45 = 1;
      }
    }
  }

  *(a1 + 16) = v45;
  sub_19B432E80(a1);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  v46 = *MEMORY[0x1E69E9840];
  return a1;
}