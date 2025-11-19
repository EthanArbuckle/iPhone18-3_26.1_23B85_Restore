H16ISP::H16ISPDevice **H16ISP::ProjectorManager::updateOnChange(H16ISP::H16ISPDevice **this, int a2, int a3)
{
  if (a2)
  {
    v5 = this;
    if (this[52])
    {
      if (*(this + 103) == a3)
      {
        return this;
      }
    }

    else
    {
      H16ISP::H16ISPDevice::EnableAE(this[1], *this, 0);
      *(v5 + 416) = 1;
    }

    v6 = v5[1];
    v7 = *(v6 + 24);
    if (v7 != *v5)
    {
      H16ISP::H16ISPDevice::SetMinimumFrameRate(v6, *v5);
      H16ISP::H16ISPDevice::SetMaximumFrameRate(v5[1], *v5);
      v6 = v5[1];
      v7 = *v5;
    }

    this = H16ISP::H16ISPDevice::SetAEIntegrationTimeAndGains(v6, v7, a2, 256, 256, 256, 0, a3, 0, 0, 0, 0);
    *(v5 + 103) = a3;
  }

  return this;
}

BOOL H16ISP::ProjectorManager::applyUserDefinedType(H16ISP::ProjectorManager *this)
{
  v61 = *MEMORY[0x277D85DE8];
  if (!H16ISP::g_UserDefinedProjectorType)
  {
    return 1;
  }

  v2 = CFGetTypeID(H16ISP::g_UserDefinedProjectorType);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 1;
  }

  Value = CFDictionaryGetValue(H16ISP::g_UserDefinedProjectorType, @"GenericProjectorTypeFrameRate");
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      v6 = CFDictionaryGetValue(H16ISP::g_UserDefinedProjectorType, @"GenericProjectorTypeModes");
      if (!v6 || (v7 = v6, v8 = CFGetTypeID(v6), v8 != CFArrayGetTypeID()))
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (result)
        {
          H16ISP::ProjectorManager::applyUserDefinedType();
          return 0;
        }

        return result;
      }

      v9 = CFDictionaryGetValue(H16ISP::g_UserDefinedProjectorType, @"GenericProjectorTypeSequence");
      if (!v9 || (v10 = v9, v11 = CFGetTypeID(v9), v11 != CFArrayGetTypeID()))
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
        }

        result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (result)
        {
          H16ISP::ProjectorManager::applyUserDefinedType();
          return 0;
        }

        return result;
      }

      if (CFArrayGetCount(v10) >= 64)
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
        }

        result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (result)
        {
          H16ISP::ProjectorManager::applyUserDefinedType(v10, v12);
          return 0;
        }

        return result;
      }

      Count = CFArrayGetCount(v7);
      if (Count + 28 <= *(this + 5))
      {
        *(this + 5) = 28;
        *(this + 6) = Count + 28;
      }

      else
      {
        v18 = *(this + 6);
        if (v18 + Count > 64)
        {
          v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v38 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v38;
          }

          result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
          if (result)
          {
            H16ISP::ProjectorManager::applyUserDefinedType();
            return 0;
          }

          return result;
        }

        *(this + 5) = v18;
        *(this + 6) = v18 + Count;
      }

      if (CFArrayGetCount(v7) < 1)
      {
        v20 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        while (2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v19);
          v22 = CFGetTypeID(ValueAtIndex);
          if (v22 != CFArrayGetTypeID())
          {
            v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v43 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v43;
            }

            result = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
            if (result)
            {
              H16ISP::ProjectorManager::applyUserDefinedType();
              return 0;
            }

            return result;
          }

          if (CFArrayGetCount(ValueAtIndex) != 6)
          {
            v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v44 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v44;
            }

            result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
            if (result)
            {
              H16ISP::ProjectorManager::applyUserDefinedType(ValueAtIndex, v19, v44);
              return 0;
            }

            return result;
          }

          v51 = 1563;
          v52 = *this;
          LODWORD(v53[0]) = 1;
          WORD3(v53[0]) = 1;
          memset(v53 + 12, 0, 48);
          *(&v53[3] + 8) = 0u;
          v23 = CFArrayGetValueAtIndex(ValueAtIndex, 5);
          TypeID = CFNumberGetTypeID();
          if (TypeID != CFGetTypeID(v23))
          {
            v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v45 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v45;
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              H16ISP::ProjectorManager::applyUserDefinedType();
            }

            return 0;
          }

          *buf = 0;
          CFNumberGetValue(v23, kCFNumberIntType, buf);
          v25 = 0;
          v26 = *buf;
          if (*buf <= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = *buf;
          }

          if (v19)
          {
            v26 = v27;
          }

          v47 = v26;
          v48 = v19;
          WORD2(v53[0]) = *(this + 10) + v19;
          v28 = v53 + 12;
          do
          {
            v29 = CFArrayGetValueAtIndex(ValueAtIndex, v25);
            v30 = CFNumberGetTypeID();
            if (v30 != CFGetTypeID(v29))
            {
              v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v31 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v31;
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                H16ISP::ProjectorManager::applyUserDefinedType();
              }

              return 0;
            }

            CFNumberGetValue(v29, kCFNumberIntType, v28);
            *(&v53[3] + ++v25) = *buf;
            v28 += 4;
          }

          while (v25 != 5);
          if (H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 1), v50, 0x6Cu, 0, 0xFFFFFFFF))
          {
            v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v46 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v46;
            }

            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              H16ISP::ProjectorManager::applyUserDefinedType(v53 + 2, v48, v46);
            }

            return 0;
          }

          v19 = v48 + 1;
          v20 = v47;
          if (CFArrayGetCount(v7) > v48 + 1)
          {
            continue;
          }

          break;
        }
      }

      v51 = 1572;
      v52 = *this;
      memset(v53, 0, 256);
      if (CFArrayGetCount(v10) >= 1)
      {
        v32 = 0;
        while (1)
        {
          v33 = CFArrayGetValueAtIndex(v10, v32);
          v34 = CFNumberGetTypeID();
          if (v34 != CFGetTypeID(v33))
          {
            break;
          }

          v49 = 0;
          CFNumberGetValue(v33, kCFNumberIntType, &v49);
          v35 = v49;
          if (CFArrayGetCount(v7) <= v35)
          {
            v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v40 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v40;
            }

            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = v49;
              v42 = CFArrayGetCount(v7);
              *buf = 67109632;
              v56 = v32;
              v57 = 1024;
              v58 = v41;
              v59 = 2048;
              v60 = v42;
              _os_log_error_impl(&dword_2247DB000, v40, OS_LOG_TYPE_ERROR, "User defined projector mode: sequence value %d refers to unknown mode %d (over the maximum %ld)\n", buf, 0x18u);
            }

            return 0;
          }

          v36 = &v50[2 * v32];
          *(v36 + 6) = *(this + 10) + v49;
          *(v36 + 70) = 1;
          if (CFArrayGetCount(v10) <= ++v32)
          {
            goto LABEL_57;
          }
        }

        v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v39 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
        }

        result = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        if (result)
        {
          H16ISP::ProjectorManager::applyUserDefinedType();
          return 0;
        }

        return result;
      }

LABEL_57:
      H16ISP::ProjectorManager::updateOnChange(this, v20, valuePtr << 8);
      if (H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 1), v50, 0x12Cu, 0, 0xFFFFFFFF))
      {
        v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v37 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v37;
        }

        result = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (result)
        {
          H16ISP::ProjectorManager::applyUserDefinedType();
          return 0;
        }

        return result;
      }

      return 1;
    }
  }

  v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v14 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
  }

  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    H16ISP::ProjectorManager::applyUserDefinedType();
    return 0;
  }

  return result;
}

uint64_t H16ISP::ProjectorManager::setEntryPattern(int *a1, unsigned int a2)
{
  v2 = *(a1 + 50) + 20 * a2;
  v3 = *(v2 + 16);
  v5 = *v2;
  v4 = *(v2 + 8);
  v6.i64[0] = *v2;
  v6.u64[1] = v4;
  if (vmaxv_u16(vmovn_s32(vtstq_s32(v6, v6))))
  {
    v7 = vcgtz_s32(v5);
    v11 = 1563;
    v12 = *a1;
    v13 = 1;
    v15 = 1;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v14 = a2;
    *v16 = v5;
    v8 = vdup_n_s32(v3);
    v21 = vand_s8(v8, v7);
    *&v16[8] = 0;
    v22 = 0;
    v17 = v4;
    v23 = vand_s8(v8, vcgtz_s32(v4));
  }

  else
  {
    v11 = 1563;
    v12 = *a1;
    v13 = 1;
    v15 = 1;
    v18 = 0;
    v19 = 0;
    v14 = a2;
    v20 = 0;
    v21.i32[0] = v3;
    v21.i32[1] = v3;
    v22 = 0;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v23.i32[0] = v3;
    v23.i32[1] = v3;
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 1), v10, 0x6Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::ProjectorManager::setEntry(H16ISP::H16ISPDevice **this, __int16 a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{
  v14 = 1563;
  v15 = *this;
  v16 = 1;
  v18 = 1;
  v24 = 0;
  v25 = 0;
  v17 = a2;
  v26 = 0;
  v27 = a4;
  v19 = a3;
  v20 = a5;
  v28 = a6;
  v29 = a8;
  v21 = a7;
  v22 = a9;
  v23 = a11;
  v30 = a10;
  v31 = a12;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this[1], v13, 0x6Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::ProjectorManager::setEntryFlood(int *a1, unsigned int a2)
{
  v2 = (*(a1 + 50) + 20 * a2);
  v3 = *v2;
  LODWORD(v2) = v2[4];
  v6 = 1563;
  v7 = *a1;
  v8 = 1;
  v10 = 1;
  v14 = 0;
  v15 = 0;
  v9 = a2;
  v11 = 0;
  v16 = 0;
  v12 = v3;
  v17 = v2;
  v13 = 0u;
  v18 = 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 1), v5, 0x6Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::ProjectorManager::setParams(uint64_t this, int a2, int a3, int a4)
{
  v4 = this + 8 * a2;
  *(v4 + 32) = a3;
  *(v4 + 36) = a4;
  return this;
}

uint64_t H16ISP::ProjectorManager::getFloodProjectorCalibrationValue(H16ISP::ProjectorManager *this, H16ISP::H16ISPDevice *a2, _DWORD *a3, int *a4, int *a5)
{
  v7 = a2;
  v16 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x68uLL);
  v12 = 1565;
  v13 = v7;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x68u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v10 = v15;
    *a3 = v14;
    *a4 = v10;
  }

  return result;
}

uint64_t svd_os(uint64_t a1, double *a2, double *a3, double *a4, double *a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v87[53] = *MEMORY[0x277D85DE8];
  if ((a1 - 10) < 0xFFFFFFFFFFFFFFF7)
  {
    return 4294967197;
  }

  v12 = a2;
  v14 = a1 - 1;
  if (a1 == 1)
  {
    a6.i64[0] = *a2;
    a7.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *a3 = vbslq_s8(vnegq_f64(v15), a7, a6).u64[0];
    *a4 = fabs(*a2);
    *a5 = 1.0;
    if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    householder(a1, a2, 1, a6, *a7.i64, a8);
    *a4 = v16;
    if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v79 = v12;
      v80 = a3;
      v17 = 0;
      v8 = 0;
      v76 = a1 - 2;
      v77 = a5;
      v18 = a1;
      v74 = a4;
      v75 = v14;
      v19 = a4 + 1;
      v73 = &v87[v14];
      v84 = 8 * a1;
      while (1)
      {
        v20 = &v12[v18];
        applyHouseholder(1, a1 + v8, a1 + v8 - 1, v12, 1, &v12[v18], a1);
        if (a1 + v8 == 2)
        {
          break;
        }

        householder(a1 + v8 - 1, &v12[v18], a1, v21, *v22.i64, v23);
        v87[v17] = v29;
        if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          return -v8;
        }

        applyHouseholder(0, a1 + v8 - 1, a1 + v8 - 1, v20, a1, &v12[v84 / 8 + 1], a1);
        --v8;
        v18 = a1;
        householder(v8 + a1, &v12[v84 / 8 + 1], 1, v30, v31, v32);
        v19[v17] = v33;
        v12 += a1 + 1;
        ++v17;
        if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return v8;
        }
      }

      v34 = v74;
      v87[v76] = v12[a1];
      v35 = v20[1];
      v74[v76 + 1] = v35;
      v36 = v75;
      v37 = v36 + v36 * a1;
      v38 = v80;
      v80[v37] = 1.0;
      if (a1 < 2)
      {
        v66 = v77;
        v77[v37] = 1.0;
        *v77 = 1.0;
      }

      else
      {
        v39 = 0;
        v72 = a1 * a1;
        v40 = &v80[a1 * a1 - 2];
        v78 = (v18 * 8) ^ 0xFFFFFFFFFFFFFFF8;
        v41 = v80 + a1 * (v18 * 8 + 8) - 16;
        v42 = &v80[a1 * v75];
        v43 = v79;
        v44 = &v79[a1 * v75];
        v23 = xmmword_2249B9820;
        v45 = a1 - 2;
        do
        {
          v46 = v36;
          v47 = v45;
          if (v36 < a1)
          {
            v48 = 0;
            v49 = 0;
            v50 = vdupq_n_s64(v39);
            do
            {
              v51 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v49), v23)));
              if (v51.i8[0])
              {
                *(v40 + v48) = 0;
              }

              if (v51.i8[4])
              {
                *(v41 + v48) = 0;
              }

              v49 += 2;
              v48 += 16 * a1;
            }

            while ((v39 & 0xFFFFFFFFFFFFFFFELL) + 2 != v49);
          }

          v52 = v47 + v47 * a1;
          v53 = &v43[v52];
          v81 = v46;
          v82 = v47;
          applyHouseholder(1, a1 - v47, a1 - v47 - 1, v53, 1, &v80[v47 + v46 * a1], a1);
          v35 = *v53;
          *v22.i64 = 1.0 - *v53;
          v80[v52] = *v22.i64;
          if (v81 < a1)
          {
            v35 = -v35;
            v54 = -1;
            do
            {
              *v22.i64 = v44[v54] * v35;
              v42[v54++] = *v22.i64;
            }

            while (v39 != v54);
          }

          ++v39;
          v43 = v79;
          v40 += v78;
          v41 += v78;
          v42 = (v42 + v78);
          v44 = (v44 + v78);
          v36 = v82;
          v55 = 8 * a1;
          v45 = v82 - 1;
          v23 = xmmword_2249B9820;
        }

        while (v82 >= 1);
        v77[v75 + v75 * a1] = 1.0;
        if (a1 != 2)
        {
          v56 = 0;
          v83 = v79 - 2;
          v57 = v84 ^ 0xFFFFFFFFFFFFFFF8;
          v58 = &v77[v72 - 2];
          v59 = &v79[v72 - 3];
          v60 = 1;
          v61 = a1 - 2;
          v62 = v75;
          do
          {
            v63 = v62;
            v62 = v61;
            if (v63 < a1)
            {
              bzero(v77 + (v84 - 8) * a1 + v57 * v56 - 8, 8 * v56 + 8);
            }

            applyHouseholder(0, a1 - v62, a1 - v62, &v83[v63 + v62 * a1], a1, &v77[v62 + v62 * a1], a1);
            v35 = v83[v63 + v62 * a1];
            *v22.i64 = 1.0 - v35;
            v77[v62 + v62 * a1] = 1.0 - v35;
            v55 = 8 * a1;
            if (v63 < a1)
            {
              v64 = 0;
              v35 = -v35;
              v65 = v60;
              do
              {
                *v22.i64 = *(v59 + v64) * v35;
                *(v58 + v64) = v22.i64[0];
                v64 += v84;
                --v65;
              }

              while (v65);
            }

            v61 = v62 - 1;
            ++v56;
            ++v60;
            v58 += v57;
            v59 += v57;
          }

          while (v56 != v76);
        }

        v66 = v77;
        *v77 = 1.0;
        v34 = v74;
        v67 = v75;
        v38 = v80;
        v68 = v77 + 1;
        v69 = &v77[a1];
        do
        {
          *v69 = 0.0;
          *v68++ = 0;
          v69 = (v69 + v55);
          --v67;
        }

        while (v67);
      }

      v85 = a1;
      v86 = 0;
      v70 = dbdsqr_(&v85, &v85, &v85, v34, v87, v66, &v85, v38, v35, v22, v23, v24, v25, v26, v27, v28, &v85, v73, &v86);
      return (v70 | v86) != 0;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t householder(uint64_t result, double *a2, uint64_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  if (result < 2)
  {
    goto LABEL_5;
  }

  v6 = result - 1;
  v7 = 8 * a3;
  a4.i64[0] = 0;
  v8 = 8 * a3;
  v9 = result - 1;
  do
  {
    *a4.i64 = *a4.i64 + *(a2 + v8) * *(a2 + v8);
    v8 += v7;
    --v9;
  }

  while (v9);
  if (*a4.i64 == 0.0)
  {
LABEL_5:
    *a2 = 0.0;
  }

  else
  {
    v10 = *a2;
    *a4.i64 = sqrt(*a4.i64 + v10 * v10);
    *a6.i64 = -*a2;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = *vbslq_s8(vnegq_f64(v11), a4, a6).i64;
    *a2 = (v12 - *a2) / v12;
    v13 = &a2[a3];
    v14 = 1.0 / (v10 - v12);
    do
    {
      *v13 = v14 * *v13;
      v13 = (v13 + v7);
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t applyHouseholder(uint64_t result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double *a6, uint64_t a7)
{
  if (a2 >= 2 && a3 >= 1 && *a4 != 0.0)
  {
    if (result)
    {
      v7 = 0;
      v8 = 8 * a5;
      v9 = a6;
      do
      {
        v10 = 8 * a5;
        v11 = 1;
        v12 = a6[v7 * a7];
        do
        {
          v12 = v12 + *(a4 + v10) * v9[v11++];
          v10 += v8;
        }

        while (a2 != v11);
        v13 = v12 * *a4;
        a6[v7 * a7] = a6[v7 * a7] - v13;
        v14 = &a4[a5];
        for (i = 1; i != a2; ++i)
        {
          v9[i] = v9[i] + -v13 * *v14;
          v14 = (v14 + v8);
        }

        ++v7;
        v9 += a7;
      }

      while (v7 != a3);
    }

    else
    {
      v16 = 0;
      v17 = 8 * a7;
      v18 = &a6[a7];
      v19 = 8 * a5;
      do
      {
        v20 = a6[v16];
        v21 = 8 * a5;
        v22 = v18;
        v23 = a3 - 1;
        v24 = v20;
        if (a3 < 2)
        {
          a6[v16] = v20 - v20 * *a4;
        }

        else
        {
          do
          {
            v24 = v24 + *(a4 + v21) * *v22;
            v22 = (v22 + v17);
            v21 += v19;
            --v23;
          }

          while (v23);
          v25 = v24 * *a4;
          a6[v16] = v20 - v25;
          v26 = 0;
          v27 = &a4[a5];
          v28 = a3 - 1;
          do
          {
            *(v18 + v26) = *(v18 + v26) + -v25 * *v27;
            v26 += v17;
            v27 = (v27 + v19);
            --v28;
          }

          while (v28);
        }

        ++v16;
        ++v18;
      }

      while (v16 != a2);
    }
  }

  return result;
}

uint64_t bidiagonalSVD(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v16 = a1;
  v17 = 0;
  v14 = dbdsqr_(&v16, &v16, &v16, a2, a3, a5, &v16, a4, a7, a8, a9, a10, a11, a12, a13, a14, &v16, a6, &v17);
  return v14 | v17;
}

uint64_t dbdsqr_(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5, double *a6, uint64_t *a7, double *a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, double a14, int8x16_t a15, int8x16_t a16, uint64_t *a17, double *a18, uint64_t *a19)
{
  v19 = a19;
  v259 = 0.0;
  v260[0] = 0;
  v20 = *a17;
  v257 = 0.0;
  v258 = 0.0;
  v255 = 0.0;
  v256 = 0.0;
  v253 = 0.0;
  v254 = 0.0;
  v251 = 0.0;
  v252 = 0.0;
  v249 = 0.0;
  v250 = 0.0;
  v248 = 0.0;
  *a19 = 0;
  v21 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v22 = a8;
  v24 = a6;
  v25 = a4;
  v26 = a2;
  v27 = a4 - 1;
  v28 = v21 - 1;
  if (v21 == 1)
  {
    goto LABEL_18;
  }

  v29 = fabs(*v25);
  if (*v25 != 0.0)
  {
    v30 = v21 - 2;
    if (v21 >= 2)
    {
      v31 = v25 + 1;
      v32 = a5;
      v33 = v29;
      do
      {
        v34 = *v31++;
        v35 = fabs(v34);
        v36 = *v32++;
        *a12.i64 = v33 + fabs(v36);
        v33 = v35 * (v33 / *a12.i64);
        if (v29 >= v33)
        {
          v29 = v33;
        }

        v37 = v29 == 0.0 || v30-- == 0;
      }

      while (!v37);
    }
  }

  v38 = v29 / sqrt(v21) * 9.99200722e-15;
  v39 = 6 * v21 * v21;
  a11.i64[0] = 0x8000000000000;
  if (v38 <= v39 * COERCE_DOUBLE(0x8000000000000))
  {
    v40 = v39 * COERCE_DOUBLE(0x8000000000000);
  }

  else
  {
    v40 = v38;
  }

  if (v21 <= 1)
  {
    goto LABEL_17;
  }

  v71 = 0;
  v72 = 0;
  v223 = &a18[2 * v28];
  v222 = &a18[3 * v28];
  v221 = a18 - 1;
  v244 = &a18[v21 - 1];
  v239 = a5 - 1;
  v212 = v25 + 1;
  v204 = a6 - 1;
  v230 = a5 - 2;
  v225 = v25 - 2;
  v226 = &a8[~v20 + 1];
  v73 = &a18[3 * v21];
  v209 = &a18[2 * v21 - 4];
  v210 = v73 - 5;
  v243 = v73 - 3;
  v207 = a18 - 2;
  v208 = &a18[v21 - 3];
  v242 = &a18[2 * v21 - 2];
  v203 = a5 + 1;
  v74 = -1;
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  v76 = vnegq_f64(v75);
  v205 = v76;
  v77 = 0.0;
  v78 = 0.0;
  v79 = 0.0;
  v80 = -1;
  v228 = 6 * v21 * v21;
  v229 = a3;
  v224 = v20;
  v232 = a5;
  v231 = a1;
  v220 = v24;
  v206 = v25;
  v227 = v27;
  while (2)
  {
    v81 = v71 > v39;
    if (v71 <= v39)
    {
      v82 = v21 - 1;
      v83 = &v227[v21];
      v84 = &v239[v21 - 1];
      v219 = &v227[v21 - 1];
      v245 = v21;
      v85 = &v230[v21];
      v86 = v74;
      v87 = &v225[v21];
      v233 = v84;
LABEL_45:
      v74 = v86;
      while (2)
      {
        v88 = 0;
        v76.i64[0] = *v83;
        v89 = fabs(*v83);
        while (1)
        {
          *a10.i64 = fabs(v85[v88]);
          if (*a10.i64 <= v40)
          {
            break;
          }

          *a11.i64 = fabs(v87[v88]);
          if (v89 <= *a11.i64)
          {
            v76.i64[0] = a11.i64[0];
          }

          else
          {
            *v76.i64 = v89;
          }

          if (*v76.i64 <= *a10.i64)
          {
            v89 = *a10.i64;
          }

          else
          {
            v89 = *v76.i64;
          }

          --v88;
          if (!(v82 + v88))
          {
            v90 = 0;
            goto LABEL_58;
          }
        }

        v85[v88] = 0.0;
        if (v88)
        {
          v90 = v82 + v88;
LABEL_58:
          v91 = v90 + 1;
          if (v90 + 1 != v82)
          {
            if (v90 >= v80 || v21 < v74)
            {
              *v76.i64 = v25[v90];
              v93 = fabs(*v76.i64);
              a15.i64[0] = *v83;
              v92 = fabs(*v83);
              if (v93 >= v92)
              {
                goto LABEL_65;
              }

              v72 = 2;
            }

            else
            {
              if (v72 == 1)
              {
                a15.i64[0] = *v83;
                v92 = fabs(*v83);
LABEL_65:
                *a11.i64 = v92 * 9.99200722e-15;
                if (fabs(*v84) > *a11.i64)
                {
                  *v76.i64 = v25[v90];
                  v94 = fabs(*v76.i64);
                  if (v21 > v91)
                  {
                    v95 = &a5[v90];
                    v96 = v90 + 1;
                    *a11.i64 = v94;
                    while (1)
                    {
                      *a12.i64 = fabs(*v95);
                      *a13.i64 = *a11.i64 * 9.99200722e-15;
                      if (*a12.i64 <= *a11.i64 * 9.99200722e-15)
                      {
                        break;
                      }

                      v97 = v96 + 1;
                      *a11.i64 = *a11.i64 / (*a11.i64 + *a12.i64) * fabs(v25[v96]);
                      if (v94 >= *a11.i64)
                      {
                        v94 = *a11.i64;
                      }

                      ++v95;
                      ++v96;
                      if (v21 == v97)
                      {
                        v260[0] = v21 - 1;
                        v72 = 1;
                        v101 = 1;
                        goto LABEL_91;
                      }
                    }

                    v72 = 1;
                    goto LABEL_88;
                  }

                  v260[0] = v21 - 1;
                  v101 = 1;
                  v72 = 1;
                  goto LABEL_91;
                }

                v98 = v84;
                v72 = 1;
                goto LABEL_84;
              }

              *v76.i64 = v25[v90];
              v93 = fabs(*v76.i64);
            }

            v98 = &a5[v90];
            *a11.i64 = fabs(*v98);
            if (*a11.i64 > v93 * 9.99200722e-15)
            {
              a15.i64[0] = *v83;
              v94 = fabs(*v83);
              if (v82 > v90)
              {
                v99 = v21 - 2;
                *a11.i64 = v94;
                while (1)
                {
                  *a12.i64 = fabs(a5[v99]);
                  *a13.i64 = *a11.i64 * 9.99200722e-15;
                  if (*a12.i64 <= *a11.i64 * 9.99200722e-15)
                  {
                    break;
                  }

                  *a11.i64 = *a11.i64 / (*a11.i64 + *a12.i64) * fabs(v25[v99]);
                  if (v94 >= *a11.i64)
                  {
                    v94 = *a11.i64;
                  }

                  if (v99-- <= v90)
                  {
                    goto LABEL_90;
                  }
                }

                v96 = v99 + 1;
LABEL_88:
                v239[v96] = 0.0;
                if (!v81)
                {
                  continue;
                }

                goto LABEL_165;
              }

LABEL_90:
              v101 = 0;
              v260[0] = v90 + 1;
LABEL_91:
              v102 = *a1;
              v103 = ~v90;
              v246 = v90 + 1;
              v238 = v90;
              v234 = v72;
              if (v94 / v89 * (*a1 * 9.99200722e-15) > 1.11022302e-16 && ((v240 = *a1, v104 = v24, v105 = v22, v106 = v71, v214 = a15, v218 = v76, !v101) ? (v107 = fabs(*a15.i64), v108 = a5[v90], v109 = v212[v90]) : (v107 = fabs(*v76.i64), v76.i64[0] = *v219, v108 = *v84, v109 = *a15.i64), (singularValues2x2(*v76.i64, v108, v109, &v251, &v259), a5 = v232, v84 = &v239[v21 - 1], v71 = v106, v22 = v105, v24 = v104, v83 = &v227[v21], v91 = v246, v90 = v238, a15.i64[0] = v214.i64[0], v76.i64[0] = v218.i64[0], v102 = v240, v107 <= 0.0) || v251 / v107 * (v251 / v107) >= 1.11022302e-16))
              {
                v111 = v71 + v21 + v103;
                if (v251 != 0.0)
                {
                  v236 = v71 + v21 + v103;
                  if (!v101)
                  {
                    v110.i64[0] = 1.0;
                    v164 = (fabs(*v214.i64) - v251) * (*vbslq_s8(v205, v110, v214).i64 + v251 / *v214.i64);
                    if (v21 >= v238 + 2)
                    {
                      if (!givensRotation(v164, *v233, &v254, &v253, &v259))
                      {
                        v217 = a7;
                        v165 = v239;
                        v166 = &v210[-v238];
                        v167 = &v209[-v238];
                        v168 = &v208[-v238];
                        v169 = v225;
                        v170 = v21;
                        v171 = &v207[-v238];
                        while (1)
                        {
                          if (v170 < v21)
                          {
                            v165[v21] = v259;
                          }

                          v173 = v253;
                          v172 = v254;
                          v174 = v169[v245 + 1];
                          v175 = v165[v245 - 1];
                          v176 = v253 * v175 + v254 * v174;
                          v165[v245 - 1] = v254 * v175 - v253 * v174;
                          v177 = v169[v21];
                          v178 = v172 * v177;
                          v169[v21] = v172 * v177;
                          if (givensRotation(v176, v173 * v177, &v256, &v255, &v259))
                          {
                            break;
                          }

                          v179 = -v173;
                          v169[v245 + 1] = v259;
                          v181 = v255;
                          v180 = v256;
                          v182 = v165[v245 - 1];
                          v164 = v178 * v255 + v256 * v182;
                          v183 = -v255;
                          v169[v21] = v256 * v178 - v255 * v182;
                          if (v170 <= v238 + 2)
                          {
                            v171[v21] = v172;
                            v168[v21] = v179;
                            v167[v21] = v180;
                            v166[v21] = v183;
                            v26 = a2;
                            a7 = v217;
                            v24 = v220;
                            v25 = v206;
                            a5 = v232;
                            v91 = v246;
                            v90 = v238;
                            v22 = a8;
                            goto LABEL_151;
                          }

                          v184 = v165[v245 - 2];
                          v165[v245 - 2] = v180 * v184;
                          v171[v21] = v172;
                          v168[v21] = v179;
                          v167[v21] = v180;
                          v166[v21] = v183;
                          v185 = givensRotation(v164, v181 * v184, &v254, &v253, &v259);
                          --v166;
                          --v167;
                          --v168;
                          --v171;
                          --v165;
                          --v169;
                          --v170;
                          result = 0xFFFFFFFFLL;
                          if (v185)
                          {
                            return result;
                          }
                        }
                      }

                      return 0xFFFFFFFFLL;
                    }

LABEL_151:
                    if (fabs(v164) <= v40)
                    {
                      v164 = 0.0;
                    }

                    a5[v90] = v164;
                    v186 = v21 - v91 + 1;
                    v260[0] = v186;
                    dlasr_("L", "B", v260, v26, v223, v222, &v24[v90], a7);
                    v260[0] = v186;
                    v20 = v224;
                    dlasr_("R", "B", v229, v260, a18, &v221[*v231], &v226[v246 * v224], a17);
                    v86 = v246;
                    a1 = v231;
                    a5 = v232;
                    v84 = &v239[v21 - 1];
                    v19 = a19;
                    v87 = &v225[v21];
                    v72 = v234;
                    v71 = v236;
                    v83 = &v227[v21];
                    v85 = &v230[v21];
                    goto LABEL_125;
                  }

                  v216 = a7;
                  v110.i64[0] = 1.0;
                  v145 = (fabs(*v218.i64) - v251) * (*vbslq_s8(v205, v110, v218).i64 + v251 / *v218.i64);
                  v146 = v21 - v246;
                  if (v21 > v246)
                  {
                    v147 = 0;
                    v148 = v232[v238];
                    v149 = &v203[v238];
                    v150 = v246;
                    v151 = &v212[v238];
                    v202 = v77;
                    while (!givensRotation(v145, v148, &v254, &v253, &v259))
                    {
                      if (v150 > v246)
                      {
                        v149[v147 - 2] = v259;
                      }

                      v152 = v253;
                      v153 = v254;
                      v154 = v151[v147 - 1];
                      v155 = v149[v147 - 1];
                      v156 = v253 * v155 + v254 * v154;
                      v149[v147 - 1] = v254 * v155 - v253 * v154;
                      v157 = v151[v147];
                      v148 = v152 * v157;
                      v158 = v153 * v157;
                      v151[v147] = v153 * v157;
                      if (givensRotation(v156, v152 * v157, &v256, &v255, &v259))
                      {
                        break;
                      }

                      v151[v147 - 1] = v259;
                      v160 = v255;
                      v159 = v256;
                      v161 = v149[v147 - 1];
                      v151[v147] = v256 * v158 - v255 * v161;
                      if (v150 < v82)
                      {
                        v162 = v149[v147];
                        v148 = v160 * v162;
                        v149[v147] = v159 * v162;
                      }

                      ++v150;
                      v145 = v158 * v160 + v159 * v161;
                      a18[v147] = v153;
                      v244[v147] = v152;
                      v242[v147] = v159;
                      v243[v147++] = v160;
                      v83 = &v227[v21];
                      v77 = v202;
                      if (v21 == v150)
                      {
                        goto LABEL_137;
                      }
                    }

                    return 0xFFFFFFFFLL;
                  }

LABEL_137:
                  *v233 = v145;
                  v163 = v146 + 1;
                  v260[0] = v146 + 1;
                  v144 = v24;
                  v26 = a2;
                  a7 = v216;
                  dlasr_("L", "F", v260, a2, a18, &v221[v240], &v24[v238], v216);
                  v260[0] = v163;
                  v20 = v224;
                  dlasr_("R", "F", v229, v260, v223, v222, &v226[v246 * v224], a17);
                  v84 = &v239[v21 - 1];
                  if (fabs(*v233) <= v40)
                  {
                    *v233 = 0.0;
                  }

                  v22 = a8;
                  v25 = v206;
                  goto LABEL_123;
                }
              }

              else
              {
                v251 = 0.0;
                v111 = v71 + v21 + v103;
              }

              v258 = 1.0;
              v252 = 1.0;
              v236 = v111;
              if (!v101)
              {
                v122 = 1.0;
                v123 = 1.0;
                v241 = v90 + 2;
                if (v21 >= v90 + 2)
                {
                  v215 = a7;
                  v124 = &v210[-v90];
                  v125 = &v209[-v90];
                  v126 = v25;
                  v127 = &v208[-v90];
                  v128 = v230;
                  v129 = v21;
                  v130 = &v207[-v90];
                  v131 = v21;
                  while (1)
                  {
                    v132 = &v126[v131];
                    v134 = *(v132 - 1);
                    v133 = v132 - 1;
                    if (givensRotation(v134 * v123, v128[v21], &v258, &v257, &v259))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v135 = v259;
                    if (v129 < v21)
                    {
                      v128[v245 + 1] = v79 * v259;
                    }

                    v136 = v122 * v135;
                    v137 = v257;
                    v138 = v133;
                    v131 = v21;
                    if (givensRotation(v136, v126[v245 - 2] * v257, &v252, &v249, v138))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    --v129;
                    v123 = v258;
                    v130[v21] = v258;
                    v127[v21] = -v137;
                    v122 = v252;
                    v125[v21] = v252;
                    v79 = v249;
                    v124[v21] = -v249;
                    --v124;
                    --v125;
                    --v127;
                    --v130;
                    --v126;
                    --v128;
                    if (v129 + 1 <= v241)
                    {
                      v25 = v206;
                      v90 = v238;
                      *v76.i64 = v206[v238];
                      v77 = v79;
                      v78 = v79;
                      v22 = a8;
                      v26 = a2;
                      a7 = v215;
                      v24 = v220;
                      a5 = v232;
                      v83 = &v227[v21];
                      v91 = v246;
                      break;
                    }
                  }
                }

                v139 = *v76.i64 * v123;
                v25[v90] = v139 * v122;
                a5[v90] = v139 * v78;
                v140 = v21 - v91 + 1;
                v260[0] = v140;
                v141 = v91;
                dlasr_("L", "B", v260, v26, v223, v222, &v24[v90], a7);
                v260[0] = v140;
                v20 = v224;
                dlasr_("R", "B", v229, v260, a18, &v221[*v231], &v226[v141 * v224], a17);
                a5 = v232;
                if (fabs(v232[v238]) <= v40)
                {
                  v232[v238] = 0.0;
                }

                v79 = v78;
                v19 = a19;
                a1 = v231;
                v72 = v234;
                v71 = v236;
                v24 = v220;
                v84 = &v239[v21 - 1];
                goto LABEL_124;
              }

              v112 = v21 - v91;
              if (v21 > v91)
              {
                v113 = 0;
                v114 = &v25[v90];
                v115 = 1.0;
                v116 = 1.0;
                v117 = v91;
                v118 = &a5[v90];
                while (!givensRotation(v114[v113] * v116, v118[v113], &v258, &v257, &v259))
                {
                  v119 = v259;
                  if (v117 > v246)
                  {
                    v118[v113 - 1] = v78 * v259;
                  }

                  v120 = v115 * v119;
                  v121 = v257;
                  if (givensRotation(v120, v114[v113 + 1] * v257, &v252, &v249, &v114[v113]))
                  {
                    break;
                  }

                  v116 = v258;
                  a18[v113] = v258;
                  v244[v113] = v121;
                  v115 = v252;
                  v242[v113] = v252;
                  ++v117;
                  v78 = v249;
                  v243[v113++] = v249;
                  if (v21 == v117)
                  {
                    v83 = &v227[v21];
                    a15.i64[0] = *v83;
                    v102 = *v231;
                    v77 = v78;
                    v24 = v220;
                    v25 = v206;
                    v84 = &v239[v21 - 1];
                    v90 = v238;
                    goto LABEL_120;
                  }
                }

                return 0xFFFFFFFFLL;
              }

              v115 = 1.0;
              v116 = 1.0;
LABEL_120:
              v142 = *a15.i64 * v116;
              *v83 = v142 * v115;
              *v84 = v142 * v77;
              v143 = v112 + 1;
              v260[0] = v112 + 1;
              v144 = v24;
              v26 = a2;
              dlasr_("L", "F", v260, a2, a18, &v221[v102], &v24[v90], a7);
              v260[0] = v143;
              v20 = v224;
              dlasr_("R", "F", v229, v260, v223, v222, &v226[v246 * v224], a17);
              v84 = &v239[v21 - 1];
              if (fabs(*v233) <= v40)
              {
                *v233 = 0.0;
              }

              v78 = v77;
              v79 = v77;
LABEL_123:
              a5 = v232;
              v19 = a19;
              a1 = v231;
              v72 = v234;
              v71 = v236;
              v24 = v144;
LABEL_124:
              v87 = &v225[v21];
              v85 = &v230[v21];
              v86 = v246;
LABEL_125:
              v80 = v21;
              v81 = v71 > v228;
              if (v71 <= v228)
              {
                goto LABEL_45;
              }

              goto LABEL_165;
            }

LABEL_84:
            *v98 = 0.0;
            if (!v81)
            {
              continue;
            }

            goto LABEL_165;
          }

          v247 = v74;
          v235 = v72;
          v237 = v71;
          v260[0] = v21 - 1;
          v187 = v84;
          dlasv2_(v219, v84, v83, &v250, &v248, &v253, &v254, &v255, v76, a10, a11, a12, a13, v89, *a15.i64, a16, &v256);
          *v219 = v248;
          *v187 = 0.0;
          *v83 = v250;
          v188 = *v26;
          if (*v26 >= 1)
          {
            v189 = &v204[v21];
            v191 = v253;
            v190 = v254;
            v192 = 8 * *a7;
            do
            {
              v193 = *(v189 - 1);
              a12.i64[0] = *v189;
              *a13.i64 = v191 * *v189 + v190 * v193;
              *a11.i64 = v190 * *v189 - v193 * v191;
              *(v189 - 1) = a13.i64[0];
              *v189 = a11.i64[0];
              v189 = (v189 + v192);
              --v188;
            }

            while (v188);
          }

          a3 = v229;
          v194 = *v229;
          a5 = v232;
          v19 = a19;
          a1 = v231;
          v71 = v237;
          v22 = a8;
          if (*v229 >= 1)
          {
            v195 = &v226[v82 * v20];
            v196 = &v226[v21 * v20];
            v198 = v255;
            v197 = v256;
            do
            {
              v199 = *v195;
              a12.i64[0] = *v196;
              *a13.i64 = v198 * *v196 + v197 * *v195;
              *v195++ = *a13.i64;
              *a11.i64 = v197 * *a12.i64 - v199 * v198;
              *v196++ = a11.i64[0];
              --v194;
            }

            while (v194);
          }

          v82 = v21 - 2;
          v72 = v235;
          v24 = v220;
          v74 = v247;
        }

        else
        {
          a3 = v229;
        }

        break;
      }

      v21 = v82;
      v27 = v227;
      v39 = v228;
      if (v82 > 1)
      {
        continue;
      }

LABEL_17:
      v21 = *a1;
      if (*a1 >= 1)
      {
LABEL_18:
        v41 = 1;
        v42 = v24;
        do
        {
          v43 = v27[v41];
          if (v43 < 0.0)
          {
            v27[v41] = -v43;
            v44 = *v26;
            if (*v26 >= 1)
            {
              v45 = 8 * *a7;
              v46 = v42;
              do
              {
                *v46 = -*v46;
                v46 = (v46 + v45);
                --v44;
              }

              while (v44);
            }
          }

          ++v42;
          v37 = v41++ == v21;
        }

        while (!v37);
        if (v21 >= 2)
        {
          v47 = v21 + 1;
          v48 = v21 - 1;
          v49 = 8 * v21 - 8;
          v50 = (v22 + v20 * v49);
          v51 = 1;
          do
          {
            v52 = *v25;
            v53 = v47 - v51;
            if (v47 - v51 >= 2)
            {
              v55 = v25 + 1;
              v56 = v48;
              v54 = 1;
              v57 = 2;
              do
              {
                v58 = *v55++;
                v59 = v58;
                if (v58 <= v52)
                {
                  v54 = v57;
                  v52 = v59;
                }

                ++v57;
                --v56;
              }

              while (v56);
            }

            else
            {
              v54 = 1;
            }

            if (v54 != v53)
            {
              v27[v54] = v27[v53];
              v27[v53] = v52;
              v60 = *v26;
              v61 = 8 * v54;
              if (*v26 >= 1)
              {
                v62 = 8 * *a7;
                v63 = v61 - 8;
                v64 = v24;
                do
                {
                  v65 = *(v64 + v63);
                  *(v64 + v63) = *(v64 + v49);
                  *(v64 + v49) = v65;
                  v64 = (v64 + v62);
                  --v60;
                }

                while (v60);
              }

              v66 = *a3;
              if (*a3 >= 1)
              {
                v67 = (v22 + v20 * (v61 - 8));
                v68 = v50;
                do
                {
                  v69 = *v67;
                  *v67++ = *v68;
                  *v68++ = v69;
                  --v66;
                }

                while (v66);
              }
            }

            ++v51;
            --v48;
            v49 -= 8;
            v50 -= v20;
          }

          while (v51 != v21);
        }
      }

      return 0;
    }

    break;
  }

LABEL_165:
  *v19 = 0;
  if (*a1 < 2)
  {
    return 0;
  }

  v200 = 0;
  v201 = *a1 - 1;
  result = 0;
  do
  {
    if (*a5 != 0.0)
    {
      *v19 = ++v200;
    }

    ++a5;
    --v201;
  }

  while (v201);
  return result;
}

uint64_t dlasv2_(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, double a14, double a15, int8x16_t a16, double *a17)
{
  v19 = a17;
  v20 = *a1;
  v21 = fabs(*a1);
  v22 = fabs(*a3);
  v23 = 1;
  if (v22 > v21)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (v22 > v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v22;
  }

  if (v22 > v21)
  {
    a11.i64[0] = *a3;
  }

  else
  {
    a11.i64[0] = *a1;
  }

  if (v22 > v21)
  {
    v23 = 3;
  }

  else
  {
    v20 = *a3;
  }

  a13.i64[0] = *a2;
  if (*a2 == 0.0)
  {
    *a4 = v25;
    *a5 = v24;
    v26 = 0.0;
    v27 = 1.0;
    v28 = 1.0;
    v29 = 0.0;
  }

  else
  {
    v30 = fabs(*a13.i64);
    if (v30 > v24)
    {
      if (v24 / v30 < 1.11022302e-16)
      {
        *a5 = v30;
        if (v25 <= 1.0)
        {
          v31 = v25 * (v24 / v30);
        }

        else
        {
          v31 = v24 / (v30 / v25);
        }

        *a4 = v31;
        v47 = v20 / *a13.i64;
        v48 = *a11.i64 / *a13.i64;
        v49 = v22 <= v21;
        if (v22 <= v21)
        {
          v50 = v47;
        }

        else
        {
          v50 = v48;
        }

        if (v49)
        {
          v51 = v48;
        }

        else
        {
          v51 = v47;
        }

        *a17 = 1.0;
        *a8 = v50;
        *a7 = v51;
        *a6 = 1.0;
        a9.i64[0] = 1.0;
        goto LABEL_53;
      }

      v23 = 2;
    }

    *a16.i64 = v24 - v25;
    v32 = (v24 - v25) / v24;
    v17.i64[0] = 1.0;
    if (v24 - v25 == v24)
    {
      v32 = 1.0;
    }

    v33 = *a13.i64 / *a11.i64;
    v18.i64[0] = 2.0;
    v34 = 2.0 - v32;
    v35 = sqrt(v34 * v34 + v33 * v33);
    v36 = fabs(*a13.i64 / *a11.i64);
    v37 = sqrt(v33 * v33 + v32 * v32);
    if (v32 != 0.0)
    {
      v36 = v37;
    }

    v38 = (v35 + v36) * 0.5;
    *a4 = v25 / v38;
    *a5 = v24 * v38;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = vnegq_f64(v39);
    v41 = *a13.i64 / *vbslq_s8(v40, a16, a11).i64 + v33 / v34;
    v42 = *vbslq_s8(v40, v18, a11).i64 * *vbslq_s8(v40, v17, a13).i64;
    if (v32 != 0.0)
    {
      v42 = v41;
    }

    if (v33 * v33 != 0.0)
    {
      v42 = (v33 / (v34 + v35) + v33 / (v32 + v36)) * (v38 + 1.0);
    }

    v43 = sqrt(v42 * v42 + 4.0);
    v28 = 2.0 / v43;
    v29 = v42 / v43;
    v27 = (v28 + v29 * v33) / v38;
    v26 = v20 / *a11.i64 * v29 / v38;
  }

  v44 = v22 <= v21;
  if (v22 <= v21)
  {
    v45 = v27;
  }

  else
  {
    v45 = v29;
  }

  if (v44)
  {
    v46 = v26;
  }

  else
  {
    v46 = v28;
  }

  if (v44)
  {
    v26 = v28;
  }

  *a17 = v45;
  *a8 = v46;
  if (v44)
  {
    *a9.i64 = v29;
  }

  else
  {
    *a9.i64 = v27;
  }

  *a7 = v26;
  *a6 = *a9.i64;
  if (v23 != 2)
  {
    if (v23 == 1)
    {
      a9.i64[0] = *a7;
      a2 = a1;
    }

    else
    {
      v19 = a8;
      a2 = a3;
    }
  }

LABEL_53:
  a10.i64[0] = 1.0;
  v52.f64[0] = NAN;
  v52.f64[1] = NAN;
  v53 = vnegq_f64(v52);
  v54 = vbslq_s8(v53, a10, a9);
  a12.i64[0] = *v19;
  v55 = vbslq_s8(v53, a10, a12);
  *v54.i64 = *v54.i64 * *v55.i64;
  v55.i64[0] = *a2;
  v56 = vbslq_s8(v53, a10, v55);
  *v54.i64 = *v54.i64 * *v56.i64;
  v56.i64[0] = *a5;
  v57 = vbslq_s8(v53, v56, v54);
  *a5 = *v57.i64;
  v57.i64[0] = *a1;
  v58 = vbslq_s8(v53, a10, v57);
  *v54.i64 = *v54.i64 * *v58.i64;
  v58.i64[0] = *a3;
  v59 = vbslq_s8(v53, a10, v58);
  *v54.i64 = *v54.i64 * *v59.i64;
  v59.i64[0] = *a4;
  *a4 = vbslq_s8(v53, v59, v54).u64[0];
  return 0;
}

double *singularValues2x2(double a1, double a2, double a3, double *result, double *a5)
{
  v5 = fabs(a1);
  v6 = fabs(a2);
  v7 = fabs(a3);
  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v5 > v7)
  {
    v7 = v5;
  }

  if (v8 == 0.0)
  {
    *result = 0.0;
    if (v7 != 0.0)
    {
      if (v7 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      if (v7 > v6)
      {
        v6 = v7;
      }

      v6 = v6 * sqrt(v6 + v9 / v6 * (v9 / v6));
    }
  }

  else
  {
    v10 = v8 / v7 + 1.0;
    v11 = (v7 - v8) / v7;
    if (v6 >= v7)
    {
      v13 = v7 / v6;
      v14 = 2.0 / (sqrt(v13 * v10 * (v13 * v10) + 1.0) + sqrt(v13 * v11 * (v13 * v11) + 1.0));
      *result = v13 * (v8 * v14);
      v6 = v6 / v14;
    }

    else
    {
      v12 = 2.0 / (sqrt(v6 / v7 * (v6 / v7) + v10 * v10) + sqrt(v6 / v7 * (v6 / v7) + v11 * v11));
      *result = v8 * v12;
      v6 = v7 / v12;
    }
  }

  *a5 = v6;
  return result;
}

BOOL givensRotation(double a1, double a2, double *a3, double *a4, double *a5)
{
  if (a2 == 0.0)
  {
    v5 = 0;
    *a3 = 1.0;
    *a4 = 0.0;
    *a5 = a1;
  }

  else if (a1 == 0.0)
  {
    v5 = 0;
    *a3 = 0.0;
    *a4 = 1.0;
    *a5 = a2;
  }

  else
  {
    v6 = sqrt(a2 * a2 + a1 * a1);
    *a5 = v6;
    *a3 = a1 / v6;
    *a4 = a2 / *a5;
    if (fabs(a1) > fabs(a2) && *a3 < 0.0)
    {
      *a3 = -*a3;
      *a4 = -*a4;
      *a5 = -*a5;
    }

    return (*a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  }

  return v5;
}

uint64_t dlasr_(const char *a1, const char *a2, uint64_t *a3, uint64_t *a4, double *a5, double *a6, double *a7, uint64_t *a8)
{
  v8 = *a3;
  if (*a3)
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = a5 - 1;
      v11 = a6 - 1;
      v12 = *a8;
      v13 = *a2;
      if (*a1 == 76)
      {
        if (v13 == 70)
        {
          if (v8 >= 2)
          {
            v14 = a7 + 1;
            v15 = 8 * v12;
            for (i = 1; i != v8; ++i)
            {
              v17 = v10[i];
              v18 = v11[i];
              v20 = v18 == 0.0 && v17 == 1.0 || v9 < 1;
              if (!v20)
              {
                v21 = v14;
                v22 = v9;
                do
                {
                  v23 = *(v21 - 1);
                  v24 = v23 * -v18 + v17 * *v21;
                  *(v21 - 1) = v17 * v23 + v18 * *v21;
                  *v21 = v24;
                  v21 = (v21 + v15);
                  --v22;
                }

                while (v22);
              }

              ++v14;
            }
          }
        }

        else if (v8 >= 2)
        {
          v34 = &a7[v8 - 1];
          do
          {
            v35 = v10[v8 - 1];
            v36 = v11[v8 - 1];
            if ((v36 != 0.0 || v35 != 1.0) && v9 >= 1)
            {
              v39 = v34;
              v40 = v9;
              do
              {
                v41 = *(v39 - 1);
                v42 = v41 * -v36 + v35 * *v39;
                *(v39 - 1) = v35 * v41 + v36 * *v39;
                *v39 = v42;
                v39 += v12;
                --v40;
              }

              while (v40);
            }

            --v34;
            v20 = v8-- <= 2;
          }

          while (!v20);
        }
      }

      else if (v13 == 70)
      {
        if (v9 >= 2)
        {
          v25 = v12;
          for (j = 1; j != v9; ++j)
          {
            v27 = v10[j];
            v28 = v11[j];
            if ((v28 != 0.0 || v27 != 1.0) && v8 >= 1)
            {
              v31 = a7;
              v32 = v8;
              do
              {
                v33 = v31[v25];
                v31[v25] = *v31 * -v28 + v27 * v33;
                *v31 = v27 * *v31 + v28 * v33;
                ++v31;
                --v32;
              }

              while (v32);
            }

            a7 = (a7 + v25 * 8);
          }
        }
      }

      else if (v9 >= 2)
      {
        v43 = (a7 + v12 * (8 * v9 - 16));
        v44 = -8 * v12;
        v45 = (a7 + v12 * (8 * v9 - 8));
        do
        {
          v46 = v10[v9 - 1];
          v47 = v11[v9 - 1];
          if ((v47 != 0.0 || v46 != 1.0) && v8 >= 1)
          {
            v50 = v45;
            v51 = v43;
            v52 = v8;
            do
            {
              v53 = *v50;
              *v50 = *v51 * -v47 + v46 * *v50;
              ++v50;
              *v51 = v46 * *v51 + v47 * v53;
              ++v51;
              --v52;
            }

            while (v52);
          }

          v43 = (v43 + v44);
          v45 = (v45 + v44);
          v20 = v9-- <= 2;
        }

        while (!v20);
      }
    }
  }

  return 0;
}

CFDictionaryRef JasperCalibration::nvmToDictionary(JasperCalibration *this, H16ISP::H16ISPDevice *a2)
{
  NvmPeridotInputFactory::pDevice = this;
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = &unk_283813120;
  v4[1] = v5;
  theDict = 0;
  NvmPeridotInputFactory::validate(v4, a2);
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], theDict);
  NvmPeridotInputFactory::~NvmPeridotInputFactory(v4);
  return Copy;
}

void sub_224871044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  NvmPeridotInputFactory::~NvmPeridotInputFactory(va);
  _Unwind_Resume(a1);
}

uint64_t NvmPeridotInputFactory::validate(NvmPeridotInputFactory *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v11 = *MEMORY[0x277D85DE8];
  result = NvmPeridotInputFactory::pDevice;
  if (NvmPeridotInputFactory::pDevice)
  {
    H16ISP::H16ISPDevice::CacheNumChannels(NvmPeridotInputFactory::pDevice);
    SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(NvmPeridotInputFactory::pDevice, 1785950322, 1852793709);
    if (SensorChannel == -1)
    {
      NSLog(&cfstr_DefaultCalibra.isa);
    }

    else
    {
      v5 = SensorChannel;
      SensorNVM = NvmPeridotInputFactory::readSensorNVM(v2, NvmPeridotInputFactory::pDevice, SensorChannel, v10, 0xA000u);
      if (SensorNVM)
      {
        v7 = SensorNVM;
        DeviceNVM = NvmPeridotInputFactory::readDeviceNVM(v2, NvmPeridotInputFactory::pDevice, v5, 13, v10, 0xA000u);
        if (DeviceNVM)
        {
          v9 = DeviceNVM;
          *(v2 + 4) = PDPeridotCalibCalibrationBlobsFromNVM();
          CFRelease(v7);
          CFRelease(v9);
          if (*(v2 + 4))
          {
            NSLog(&cfstr_DefaultCalibra_3.isa);
            return 1;
          }

          NSLog(&cfstr_DefaultCalibra_2.isa);
        }

        else
        {
          NSLog(&cfstr_DefaultCalibra_1.isa);
          CFRelease(v7);
        }
      }

      else
      {
        NSLog(&cfstr_DefaultCalibra_0.isa);
      }
    }

    return 0;
  }

  return result;
}

uint64_t PCECalibrationManager<FDRInputFactory>::PCECalibrationManager(uint64_t a1)
{
  result = CalibrationManager<FDRInputFactory>::CalibrationManager(a1);
  *result = &unk_2838130A0;
  *(result + 73) = 1;
  if (*(result + 72) == 1)
  {
    *(result + 72) = *(result + 41);
  }

  return result;
}

{
  result = CalibrationManager<FDRInputFactory>::CalibrationManager(a1);
  *result = &unk_2838130A0;
  *(result + 73) = 1;
  if (*(result + 72) == 1)
  {
    *(result + 72) = *(result + 41);
  }

  return result;
}

uint64_t CalibrationManager<FDRInputFactory>::CalibrationManager(uint64_t a1)
{
  *a1 = &unk_2838133A0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = &unk_2838133C0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = FDRInputFactory::validate((a1 + 8));
  return a1;
}

uint64_t JasperCalibrationManager<FDRInputFactory>::JasperCalibrationManager(uint64_t a1)
{
  v2 = CalibrationManager<FDRInputFactory>::CalibrationManager(a1);
  *v2 = &unk_2838130C0;
  JasperCalibrationManager<FDRInputFactory>::readSerialNumber(v2);
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = *(a1 + 57);
  }

  return a1;
}

void sub_22487136C(_Unwind_Exception *a1)
{
  *v1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((v1 + 1));
  _Unwind_Resume(a1);
}

void JasperCalibrationManager<FDRInputFactory>::readSerialNumber(uint64_t a1)
{
  *(a1 + 73) = 0;
  v1 = (a1 + 73);
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", *MEMORY[0x277CBECE8], 3u);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v6);
    goto LABEL_7;
  }

  v9 = CFGetTypeID(v6);
  if (v9 == CFStringGetTypeID())
  {
    BytePtr = CFStringGetCStringPtr(v6, 0x8000100u);
LABEL_7:
    if (BytePtr)
    {
      strncpy(v1, BytePtr, 0x20uLL);
    }
  }

  CFRelease(v6);
}

uint64_t FileInputFactory::overrideFilesAllowed(FileInputFactory *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (FileInputFactory::_entitlementsChecked != 1)
  {
    NSLog(&cfstr_TestingIfAfdrM.isa);
    FileInputFactory::_entitlementsChecked = 1;
    FileInputFactory::_overrideFilesAllowed = 0;
    if ((pceConfiguration & 2) != 0)
    {
      FileInputFactory::_overrideFilesAllowed = 1;
      NSLog(&cfstr_AfdrMayBeUsed.isa);
    }

    else
    {
      v12 = 0;
      v2 = MGCopyAnswer();
      if (!v2)
      {
        NSLog(&cfstr_CouldnTGetBoot.isa);
        goto LABEL_15;
      }

      v3 = v2;
      v4 = MGCopyAnswer();
      if (!v4)
      {
        NSLog(&cfstr_CouldnTGetCryp.isa);
        goto LABEL_15;
      }

      v5 = v4;
      if (([v4 isEqualToString:@"sha2-384"] & 1) == 0)
      {
        NSLog(&cfstr_CryptoHashMeth.isa, v5, "sha2-384");
        goto LABEL_15;
      }

      v6 = [objc_msgSend(MEMORY[0x277D25710] "sharedDataAccessor")];
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
      if (!v7)
      {
        NSLog(&cfstr_CouldnTFindApT.isa, v6);

        goto LABEL_15;
      }

      v8 = v7;

      [v8 bytes];
      [v8 length];
      if (AMSupportDigestSha384())
      {
        NSLog(&cfstr_FailedToDigest.isa);
LABEL_15:
        v1 = 0;
        return v1 & 1;
      }

      if (memcmp(__s1, [v3 bytes], 0x30uLL))
      {
        NSLog(&cfstr_ApTicketDigest.isa);
        goto LABEL_15;
      }

      if (Img4DecodeInitManifest([v8 bytes], objc_msgSend(v8, "length"), v13))
      {
        NSLog(&cfstr_FailedToInitia.isa);
        v1 = 1;
        return v1 & 1;
      }

      if (Img4DecodeGetBooleanFromSection(v13, 0, 1717660003, &v12))
      {
        LOBYTE(v12) = 0;
      }

      if (Img4DecodeGetBooleanFromSection(v13, 0, 1717663091, &v12 + 1))
      {
        v10 = 0;
        HIBYTE(v12) = 0;
      }

      else
      {
        v10 = HIBYTE(v12);
      }

      FileInputFactory::_overrideFilesAllowed = (v10 | v12) & 1;
      v11 = " not";
      if ((v10 | v12))
      {
        v11 = "";
      }

      NSLog(&cfstr_AfdrMaySBeUsed.isa, v11, v12, v10);
    }

    v1 = FileInputFactory::_overrideFilesAllowed;
    return v1 & 1;
  }

  v1 = FileInputFactory::_overrideFilesAllowed;
  return v1 & 1;
}

uint64_t PCECalibration::readRosalineConfiguration(PCECalibration *this, unsigned __int16 *a2)
{
  CalibrationManager<FileInputFactory>::CalibrationManager(&v10);
  v10 = &unk_283813468;
  v13 = 1;
  if (v12 == 1 && (PCECalibrationManager<FileInputFactory>::readPFCL(&v10, this) & 1) != 0)
  {
    PFCL = 1;
  }

  else
  {
    CalibrationManager<FDRInputFactory>::CalibrationManager(&v5);
    v5 = &unk_2838130A0;
    v9 = 1;
    if (v8 == 1 && (v8 = v7, v7 == 1))
    {
      PFCL = PCECalibrationManager<FileInputFactory>::readPFCL(&v5, this);
    }

    else
    {
      PFCL = 0;
    }

    v5 = &unk_2838133A0;
    FDRInputFactory::~FDRInputFactory(&v6);
  }

  v10 = &unk_283813278;
  FileInputFactory::~FileInputFactory(&v11);
  return PFCL;
}

void sub_224871888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  FDRInputFactory::~FDRInputFactory((v13 + 8));
  FileInputFactory::~FileInputFactory(va);
  _Unwind_Resume(a1);
}

void *PCECalibrationManager<FDRInputFactory>::~PCECalibrationManager(void *a1)
{
  *a1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((a1 + 1));
  return a1;
}

uint64_t PCECalibrationManager<FileInputFactory>::~PCECalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((a1 + 8));
  return a1;
}

const void *PCECalibration::readNVMBuffer(size_t *this, unint64_t *a2)
{
  v3 = fopen("/var/mobile/Library/ISP/Pearl/NVM.bin", "rb");
  if (v3)
  {
    v4 = v3;
    fseeko(v3, 0, 2);
    *this = ftello(v4);
    fseeko(v4, 0, 0);
    if (*this > 0xC7)
    {
      operator new[]();
    }

    fclose(v4);
  }

  CalibrationManager<FileInputFactory>::CalibrationManager(&v14);
  v14 = &unk_283813468;
  v17 = 1;
  if (v16 == 1 && (PWCL = PCECalibrationManager<FileInputFactory>::readPWCL(&v14, this)) != 0 || ((CalibrationManager<FDRInputFactory>::CalibrationManager(&v9), v9 = &unk_2838130A0, v13 = 1, v12 != 1) || (v12 = v11, v11 != 1) ? (PWCL = 0) : (PWCL = PCECalibrationManager<FileInputFactory>::readPWCL(&v9, this)), v9 = &unk_2838133A0, FDRInputFactory::~FDRInputFactory(&v10), PWCL))
  {
    v6 = open_dprotected_np("/var/mobile/Library/ISP/Pearl/NVM.bin", 513, 4, 0, 511);
    v7 = fdopen(v6, "wb");
    if (v7)
    {
      fwrite(PWCL, 1uLL, *this, v7);
      fclose(v7);
    }
  }

  v14 = &unk_283813278;
  FileInputFactory::~FileInputFactory(&v15);
  return PWCL;
}

void sub_224871B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  FDRInputFactory::~FDRInputFactory((v13 + 8));
  FileInputFactory::~FileInputFactory(va);
  _Unwind_Resume(a1);
}

uint64_t PCECalibration::readColorAssembly(uint64_t a1)
{
  CalibrationManager<FileInputFactory>::CalibrationManager(&v10);
  v10 = &unk_283813468;
  v12 = 1;
  if (PCECalibrationManager<FileInputFactory>::readPCVE(&v10, a1) && (PCECalibrationManager<FileInputFactory>::readPCVI(&v10), (v2 & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    CalibrationManager<FDRInputFactory>::CalibrationManager(&v6);
    v6 = &unk_2838130A0;
    v9 = 1;
    if (v8 == 1)
    {
      v8 = v7[33];
    }

    if (PCECalibrationManager<FileInputFactory>::readPCVE(&v6, a1))
    {
      PCECalibrationManager<FileInputFactory>::readPCVI(&v6);
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    v6 = &unk_2838133A0;
    FDRInputFactory::~FDRInputFactory(v7);
  }

  v10 = &unk_283813278;
  FileInputFactory::~FileInputFactory(&v11);
  return v3;
}

void sub_224871D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  FileInputFactory::~FileInputFactory(va);
  _Unwind_Resume(a1);
}

uint64_t PCECalibrationManager<FileInputFactory>::readPCVE(uint64_t a1, uint64_t a2)
{
  Input = InputFactory::getInput((a1 + 8), 4);
  result = (*(*Input + 16))(Input);
  if (result)
  {
    (*(*Input + 24))(Input, &v11, 4);
    if (v11 == 1)
    {
      result = Input::readAll<pcve>(Input, v7);
      if (result)
      {
        v5 = v7[3];
        *(a2 + 32) = v7[2];
        *(a2 + 48) = v5;
        *(a2 + 64) = v8;
        v6 = v7[1];
        *a2 = v7[0];
        *(a2 + 16) = v6;
        *(a2 + 72) = v9;
        *(a2 + 88) = v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void PCECalibrationManager<FileInputFactory>::readPCVI(uint64_t a1)
{
  Input = InputFactory::getInput((a1 + 8), 3);
  if ((*(*Input + 16))(Input))
  {
    (*(*Input + 24))(Input, &v3, 4);
    switch(v3)
    {
      case 3:
        PCECalibrationManager<FileInputFactory>::readPCIIv3(a1, Input);
        break;
      case 2:
        PCECalibrationManager<FileInputFactory>::readPCIIv2(a1, Input);
        break;
      case 1:
        PCECalibrationManager<FileInputFactory>::readPCIIv1(a1, Input);
        break;
    }
  }
}

BOOL saveEntireCalibration(const void *a1)
{
  v1 = CFRetain(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v2);
  v5 = open_dprotected_np("/var/mobile/Library/ISP/JasperL/JasperLCalib.bin", 513, 4, 0, 511);
  v6 = fdopen(v5, "wb");
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    fwrite(BytePtr, 1uLL, Length, v6);
    fclose(v8);
  }

  CFRelease(v2);
  return v7;
}

{
  v2 = open_dprotected_np("/var/mobile/Library/ISP/Pearl/PCECalib.bin", 513, 4, 0, 511);
  v3 = fdopen(v2, "wb");
  if (v3)
  {
    fwrite(a1, 1uLL, 0x3400uLL, v3);
    fclose(v3);
  }

  return v3 != 0;
}

BOOL PCECalibration::isOverridden(PCECalibration *this)
{
  v5 = *MEMORY[0x277D85DE8];
  FileInput::FileInput(&v3, "/var/mobile/Documents/Pearl", 9u);
  v1 = v4;
  v3 = &unk_283813300;
  if (v4)
  {
    fclose(v4);
  }

  return v1 != 0;
}

void FileInput::~FileInput(FileInput *this)
{
  *this = &unk_283813300;
  v1 = *(this + 33);
  if (v1)
  {
    fclose(v1);
  }
}

{
  *this = &unk_283813300;
  v1 = *(this + 33);
  if (v1)
  {
    fclose(v1);
  }

  JUMPOUT(0x22AA55B60);
}

uint64_t PCECalibration::fill(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v33 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_PearlCalibrati_53.isa);
  umask(0);
  if ((makeDirectories("/var/mobile/Library/ISP/Pearl", v6) & 1) == 0)
  {
    NSLog(&cfstr_CouldnTValidat.isa);
    return 0;
  }

  NSLog(&cfstr_LookingForLoca.isa);
  v7 = fopen("/var/mobile/Library/ISP/Pearl/PCECalib.bin", "rb");
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v7;
  fread(v5, 1uLL, 0x3400uLL, v7);
  if (!v3)
  {
    goto LABEL_20;
  }

  NSLog(&cfstr_ValidatingCali.isa);
  CalibrationManager<FileInputFactory>::CalibrationManager(&v24);
  v24 = &unk_283813468;
  v29 = 0;
  if ((PCECalibrationManager<FileInputFactory>::readPRF1(&v24, &v30) & 1) == 0)
  {
    CalibrationManager<FDRInputFactory>::CalibrationManager(&v20);
    v20 = &unk_2838130A0;
    if (v22 == 1)
    {
      v22 = v21[33];
    }

    v23 = 0;
    if ((PCECalibrationManager<FDRInputFactory>::readPRF1(&v20, &v30) & 1) == 0)
    {
      NSLog(&cfstr_FailedToReadUu.isa);
      v20 = &unk_2838133A0;
      FDRInputFactory::~FDRInputFactory(v21);
      v24 = &unk_283813278;
      FileInputFactory::~FileInputFactory(v25);
      goto LABEL_25;
    }

    v20 = &unk_2838133A0;
    FDRInputFactory::~FDRInputFactory(v21);
  }

  v9 = 0;
  v11 = v5[1] != v31[0] || v5[2] != v31[1];
  v12 = @"Cached UUID: 0x";
  do
  {
    v12 = [(__CFString *)v12 stringByAppendingFormat:@"%02X", *(v5 + v9++ + 8)];
  }

  while (v9 != 16);
  v13 = [(__CFString *)v12 stringByAppendingString:@", calibration: 0x"];
  for (i = 8; i != 24; ++i)
  {
    v13 = [v13 stringByAppendingFormat:@"%02X", *(&v31[-1] + i)];
  }

  NSLog(&stru_283816880.isa, v13);
  v24 = &unk_283813278;
  FileInputFactory::~FileInputFactory(v25);
  if (!v11)
  {
LABEL_20:
    if (*v5 == 8)
    {
      NSLog(&cfstr_Found.isa);
      fclose(v8);
      return 1;
    }

    NSLog(&cfstr_IgnoringUnexpe.isa, *v5, 8);
    goto LABEL_26;
  }

LABEL_25:
  deleteDirectoryContent("/var/mobile/Library/ISP/Pearl");
  NSLog(&cfstr_CalibrationUui.isa);
LABEL_26:
  fclose(v8);
LABEL_27:
  NSLog(&cfstr_LookingForLoca_0.isa);
  CalibrationManager<FileInputFactory>::CalibrationManager(&v30);
  v30 = &unk_283813468;
  v32 = 1;
  PCECalibrationManager<FileInputFactory>::read(&v30, v5);
  if (v16)
  {
    goto LABEL_31;
  }

  NSLog(&cfstr_LookingForFdrD.isa);
  NSLog(&cfstr_ReadingFromFdr.isa);
  CalibrationManager<FDRInputFactory>::CalibrationManager(&v24);
  v24 = &unk_2838130A0;
  if (v27 == 1)
  {
    v27 = v26;
  }

  v28 = (pceConfiguration & 1) == 0;
  PCECalibrationManager<FDRInputFactory>::read(&v24, v5);
  v18 = v17;
  v24 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory(v25);
  if (v18)
  {
LABEL_31:
    NSLog(&cfstr_CreatingLocalC.isa);
    *v5 = 8;
    kdebug_trace();
    v15 = saveEntireCalibration(v5);
  }

  else
  {
    NSLog(&cfstr_DidnTFindCalib.isa);
    v15 = 0;
  }

  v30 = &unk_283813278;
  FileInputFactory::~FileInputFactory(v31);
  return v15;
}

void sub_224872694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  FileInputFactory::~FileInputFactory(va);
  _Unwind_Resume(a1);
}

uint64_t makeDirectories(const char *a1, const char *a2)
{
  v3 = mkdir("/var/mobile/Library/ISP", 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (*__error() != 17)
    {
      printf("\tCan't create %s! (%d)\n", "/var/mobile/Library/ISP", v4);
      return 0;
    }
  }

  v5 = open_dprotected_np("/var/mobile/Library/ISP", 0, 0, 1);
  fcntl(v5, 64, 4);
  close(v5);
  v6 = mkdir(a1, 0x1FFu);
  if (v6)
  {
    v7 = v6;
    if (*__error() != 17)
    {
      printf("\tCan't create %s! (%d)\n", a1, v7);
      return 0;
    }
  }

  v8 = 1;
  v9 = open_dprotected_np(a1, 0, 0, 1);
  fcntl(v9, 64, 4);
  close(v9);
  return v8;
}

uint64_t deleteDirectoryContent(const char *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 contentsOfDirectoryAtPath:objc_msgSend(MEMORY[0x277CCACA8] error:{"stringWithUTF8String:", a1), 0}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        [v9 removeItemAtPath:objc_msgSend(MEMORY[0x277CCACA8] error:{"stringWithFormat:", @"%s/%@", a1, v8), 0}];
        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void PCECalibrationManager<FileInputFactory>::read(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 1)
  {
    bzero(a2, 0x3400uLL);
    PCECalibrationManager<FileInputFactory>::readPCIC(a1, a2);
    if (v4)
    {
      PCECalibrationManager<FileInputFactory>::readPCII(a1);
      if (v5)
      {
        if ((pceConfiguration & 4) != 0 || (PCECalibrationManager<FileInputFactory>::readPCVC(a1, a2), v6) && (PCECalibrationManager<FileInputFactory>::readPCVI(a1), v7) && (PCECalibrationManager<FileInputFactory>::readPCVE(a1, a2 + 8552) & 1) != 0 || (pceConfiguration & 0x10) != 0)
        {
          if (PCECalibrationManager<FileInputFactory>::readPBAS(a1, a2 + 8648) && PCECalibrationManager<FileInputFactory>::readPMPC(a1, a2 + 8672) && PCECalibrationManager<FileInputFactory>::initRuntime(a1, a2))
          {
            if (PCECalibrationManager<FileInputFactory>::readPRF1(a1, a2))
            {
              PCECalibrationManager<FileInputFactory>::readPSD2(a1);
              (*(*(a1 + 8) + 32))(a1 + 8, a2);
            }
          }
        }
      }
    }
  }
}

void PCECalibrationManager<FDRInputFactory>::read(uint64_t a1, void *a2)
{
  if (*(a1 + 72) == 1)
  {
    bzero(a2, 0x3400uLL);
    PCECalibrationManager<FileInputFactory>::readPCIC(a1, a2);
    if (v4)
    {
      PCECalibrationManager<FileInputFactory>::readPCII(a1);
      if (v5)
      {
        if ((pceConfiguration & 4) != 0 || (PCECalibrationManager<FileInputFactory>::readPCVC(a1, a2), v6) && (PCECalibrationManager<FileInputFactory>::readPCVI(a1), v7) && (PCECalibrationManager<FileInputFactory>::readPCVE(a1, a2 + 8552) & 1) != 0 || (pceConfiguration & 0x10) != 0)
        {
          if (PCECalibrationManager<FileInputFactory>::readPBAS(a1, a2 + 8648) && PCECalibrationManager<FileInputFactory>::readPMPC(a1, a2 + 8672) && PCECalibrationManager<FileInputFactory>::initRuntime(a1, a2))
          {
            if (PCECalibrationManager<FDRInputFactory>::readPRF1(a1, a2))
            {
              PCECalibrationManager<FileInputFactory>::readPSD2(a1);
              (*(*(a1 + 8) + 32))(a1 + 8, a2);
            }
          }
        }
      }
    }
  }
}

const void *JasperCalibration::get(JasperCalibration *this, H16ISP::H16ISPDevice *a2)
{
  v2 = a2;
  v38 = *MEMORY[0x277D85DE8];
  NvmPeridotInputFactory::pDevice = this;
  NSLog(&cfstr_JasperCalibrat.isa);
  umask(0);
  if ((makeDirectories("/var/mobile/Library/ISP/JasperL", v4) & 1) == 0)
  {
    NSLog(&cfstr_CouldnTValidat.isa);
    return 0;
  }

  NSLog(&cfstr_LookingForLoca.isa);
  if ([MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/ISP/JasperL/JasperLCalib.bin"])
  {
    v5 = PDPeridotCalibCreateWithBinaryRepresentation();
    if (v5)
    {
      v6 = v5;
      if (AuthorizedRepairManager::process(&authorizedRepairManager, this, v5))
      {
        saveEntireCalibration(v6);
      }

      if (!v2)
      {
        goto LABEL_21;
      }

      NSLog(&cfstr_ValidatingCali_0.isa);
      JasperCalibrationManager<FileInputFactory>::JasperCalibrationManager(&v35);
      OnlyBlob = JasperCalibrationManager<FileInputFactory>::readOnlyBlob(&v35, 18);
      if (!OnlyBlob)
      {
        if (allowFdrForTof != 1 || (JasperCalibrationManager<FDRInputFactory>::JasperCalibrationManager(&v33), OnlyBlob = JasperCalibrationManager<FileInputFactory>::readOnlyBlob(&v33, 18), v33 = &unk_2838133A0, FDRInputFactory::~FDRInputFactory(v34), !OnlyBlob))
        {
          NSLog(&cfstr_ValidtingSnReg.isa);
          v15 = PDPeridotCalibCopySerialNumber();
          v16 = v15;
          if (v15)
          {
            v17 = [v15 UTF8String];
            v18 = strlen(v37);
            if (v18 == strlen(v17))
            {
              v10 = strncmp(v37, v17, v18);
              NSLog(&cfstr_CachedSerialNu.isa, v17, v37);
              CFRelease(v16);
              goto LABEL_20;
            }

            NSLog(&cfstr_SerialNubmersS.isa);
            CFRelease(v16);
          }

          else
          {
            NSLog(&cfstr_CanTReadSerial.isa);
          }

          v35 = &unk_283813278;
          FileInputFactory::~FileInputFactory(v36);
LABEL_30:
          deleteDirectoryContent("/var/mobile/Library/ISP/JasperL");
          NSLog(&cfstr_CalibrationUui.isa);
          CFRelease(v6);
          goto LABEL_31;
        }
      }

      v33 = 0;
      v34[0] = 0;
      v31 = 0;
      v32 = 0;
      PDPeridotCalibGetMpcUUID();
      PDPeridotCalibGetMpcUUIDFromCalibrationBlob();
      v8 = bswap64(v33);
      v9 = bswap64(0);
      if (v8 == v9 && (v8 = bswap64(v34[0]), v9 = bswap64(v32), v8 == v9))
      {
        v10 = 0;
      }

      else if (v8 < v9)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      v11 = 0;
      v12 = @"Cached UUID: 0x";
      do
      {
        v12 = [(__CFString *)v12 stringByAppendingFormat:@"%02X", *(&v34[-1] + v11++)];
      }

      while (v11 != 16);
      v13 = [(__CFString *)v12 stringByAppendingString:@", calibration: 0x"];
      for (i = 0; i != 16; ++i)
      {
        v13 = [v13 stringByAppendingFormat:@"%02X", *(&v31 + i)];
      }

      NSLog(&stru_283816880.isa, v13);
      CFRelease(OnlyBlob);
LABEL_20:
      v35 = &unk_283813278;
      FileInputFactory::~FileInputFactory(v36);
      if (!v10)
      {
LABEL_21:
        NSLog(&cfstr_Found.isa);
        return v6;
      }

      goto LABEL_30;
    }
  }

LABEL_31:
  NSLog(&cfstr_LookingForLoca_0.isa);
  JasperCalibrationManager<FileInputFactory>::JasperCalibrationManager(&v35);
  v6 = JasperCalibrationManager<FileInputFactory>::read(&v35, 0);
  if (v6)
  {
    goto LABEL_44;
  }

  if (allowFdrForTof == 1)
  {
    NSLog(&cfstr_LookingForFdrD.isa);
    v19 = IOServiceNameMatching("isp");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v19);
    v21 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"pearl-calibration-data", *MEMORY[0x277CBECE8], 3u);
    v22 = v21;
    if (v21)
    {
      Length = CFDataGetLength(v21);
      BytePtr = CFDataGetBytePtr(v22);
      v25 = fopen("/var/mobile/Library/ISP/JasperL/JasperRecalibration.bin", "rb");
      v26 = v25;
      if (v25)
      {
        fseeko(v25, 0, 2);
        v27 = ftello(v26);
        fseeko(v26, 0, 0);
        if (v27 == Length)
        {
          operator new[]();
        }

        fclose(v26);
      }

      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v28 = fopen("/var/mobile/Library/ISP/JasperL/JasperRecalibration.bin", "wb");
      if (v28)
      {
        fwrite(BytePtr, Length, 1uLL, v28);
        fclose(v28);
      }
    }

    NSLog(&cfstr_ReadingFromFdr.isa);
    JasperCalibrationManager<FDRInputFactory>::JasperCalibrationManager(&v33);
    v6 = JasperCalibrationManager<FDRInputFactory>::read(&v33, v22);
    if (v22)
    {
      CFRelease(v22);
    }

    v33 = &unk_2838133A0;
    FDRInputFactory::~FDRInputFactory(v34);
    if (v6)
    {
      goto LABEL_44;
    }
  }

  NSLog(&cfstr_LookingForCali.isa);
  JasperCalibrationManager<NvmPeridotInputFactory>::JasperCalibrationManager(&v33, v29);
  v6 = JasperCalibrationManager<NvmPeridotInputFactory>::read(&v33, 0);
  v33 = &unk_283813370;
  NvmPeridotInputFactory::~NvmPeridotInputFactory(v34);
  if (v6)
  {
LABEL_44:
    AuthorizedRepairManager::process(&authorizedRepairManager, this, v6);
    NSLog(&cfstr_CreatingLocalC.isa);
    kdebug_trace();
    saveEntireCalibration(v6);
  }

  else
  {
    NSLog(&cfstr_DidnTFindCalib.isa);
    v6 = 0;
  }

  v35 = &unk_283813278;
  FileInputFactory::~FileInputFactory(v36);
  return v6;
}

uint64_t AuthorizedRepairManager::process(AuthorizedRepairManager *this, H16ISP::H16ISPDevice *a2, const void *a3)
{
  if (a3)
  {
    v4 = *this;
    if ((*this - 1) >= 2 && v4 != 4)
    {
      if (v4 == 3)
      {
        NSLog(&cfstr_ComponentValid.isa, a2);
        PDPeridotCalibResetStray();
        *this = 4;
        return 1;
      }

      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x3052000000;
      v11[3] = __Block_byref_object_copy__0;
      v7 = MEMORY[0x277CBEBF8];
      v11[4] = __Block_byref_object_dispose__0;
      v12 = MEMORY[0x277CBEBF8];
      v8 = **(a2 + 538) - 66;
      if (v8 > 0x20)
      {
        goto LABEL_16;
      }

      if (((1 << v8) & 3) != 0)
      {
        v7 = &unk_2838200B0;
      }

      else if (((1 << v8) & 0x18) != 0)
      {
        v7 = &unk_2838200C8;
      }

      else
      {
        if (((1 << v8) & 0x180000000) == 0)
        {
LABEL_16:
          if ([v7 count])
          {
            v9 = *(this + 1);
            if (!v9)
            {
              v9 = dispatch_queue_create("com.apple.component-replacement.test", 0);
              *(this + 1) = v9;
            }

            *this = 2;
            v10[0] = MEMORY[0x277D85DD0];
            v10[1] = 3221225472;
            v10[2] = ___ZN23AuthorizedRepairManager7processEPN6H16ISP12H16ISPDeviceEPKv_block_invoke;
            v10[3] = &unk_278530E60;
            v10[4] = v11;
            v10[5] = this;
            dispatch_async(v9, v10);
          }

          else
          {
            *this = 4;
          }

          _Block_object_dispose(v11, 8);
          return 0;
        }

        v7 = &unk_2838200E0;
      }

      v12 = v7;
      goto LABEL_16;
    }
  }

  return 0;
}

void sub_224873558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t JasperCalibrationManager<FileInputFactory>::read(uint64_t a1, const void *a2)
{
  if (*(a1 + 80) != 1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x13u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x14u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x15u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x16u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x17u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x11u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x12u, Mutable))
  {
    JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x18u, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, [MEMORY[0x277CCACA8] stringWithUTF8String:"PrCL"], a2);
    }

    else
    {
      JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x1Au, Mutable);
    }

    v5 = PDPeridotCalibCreateWithCalibrationDictionary();
    if (v5)
    {
      (*(*(a1 + 8) + 24))(a1 + 8, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(Mutable);
  return v5;
}

uint64_t JasperCalibrationManager<FDRInputFactory>::read(uint64_t a1, const void *a2)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x13u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x14u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x15u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x16u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x17u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x11u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x12u, Mutable))
  {
    JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x18u, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, [MEMORY[0x277CCACA8] stringWithUTF8String:"PrCL"], a2);
    }

    else
    {
      JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x1Au, Mutable);
    }

    v5 = PDPeridotCalibCreateWithCalibrationDictionary();
    if (v5)
    {
      (*(*(a1 + 8) + 24))(a1 + 8, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(Mutable);
  return v5;
}

void *JasperCalibrationManager<FDRInputFactory>::~JasperCalibrationManager(void *a1)
{
  *a1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((a1 + 1));
  return a1;
}

uint64_t JasperCalibrationManager<NvmPeridotInputFactory>::read(uint64_t a1, const void *a2)
{
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x13u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x14u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x15u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x16u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x17u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x11u, Mutable) && JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x12u, Mutable))
  {
    JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x18u, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, [MEMORY[0x277CCACA8] stringWithUTF8String:"PrCL"], a2);
    }

    else
    {
      JasperCalibrationManager<FileInputFactory>::readBlob(a1, 0x1Au, Mutable);
    }

    v5 = PDPeridotCalibCreateWithCalibrationDictionary();
    if (v5)
    {
      (*(*(a1 + 8) + 24))(a1 + 8, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(Mutable);
  return v5;
}

void *JasperCalibrationManager<NvmPeridotInputFactory>::~JasperCalibrationManager(void *a1)
{
  *a1 = &unk_283813370;
  NvmPeridotInputFactory::~NvmPeridotInputFactory((a1 + 1));
  return a1;
}

uint64_t JasperCalibrationManager<FileInputFactory>::~JasperCalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((a1 + 8));
  return a1;
}

void *JasperCalibration::copyCalibData(JasperCalibration *this, H16ISP::H16ISPDevice *a2)
{
  v17 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v19 = objc_opt_new();
  v2 = "jlin";
  v3 = *MEMORY[0x277CBECE8];
  v4 = 11;
  do
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    v6 = fopen([objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%s/%@.bin", "/var/mobile/Documents/JasperL", v5), "UTF8String"], "rb");
    if (v6)
    {
      v7 = v6;
      fseeko(v6, 0, 2);
      v8 = ftello(v7);
      fseeko(v7, 0, 0);
      Mutable = CFDataCreateMutable(v3, v8);
      if (Mutable)
      {
        v10 = Mutable;
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        fread(MutableBytePtr, v8, 1uLL, v7);
        CFDataSetLength(v10, v8);
        [v19 setObject:v10 forKey:v5];
        CFRelease(v10);
      }

      fclose(v7);
    }

    v2 += 256;
    --v4;
  }

  while (v4);
  v12 = JasperCalibration::get(this, 0);
  if (v12)
  {
    v13 = v12;
    v14 = CFRetain(v12);
    if (v14)
    {
      v15 = v14;
      [v19 setObject:v14 forKey:@"JasperLCalib"];
      CFRelease(v15);
    }

    CFRelease(v13);
  }

  if (this)
  {
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", **(this + 538)), @"PlatformId"}];
    if (!H16ISP::H16ISPDevice::GetCameraConfig(this, v17, 0, v20, v21))
    {
      [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedShort:", v22), @"SensorVersion"}];
    }
  }

  return v19;
}

void PCECalibrationManager<FDRInputFactory>::~PCECalibrationManager(void *a1)
{
  *a1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((a1 + 1));

  JUMPOUT(0x22AA55B60);
}

void JasperCalibrationManager<FDRInputFactory>::~JasperCalibrationManager(void *a1)
{
  *a1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((a1 + 1));

  JUMPOUT(0x22AA55B60);
}

void NvmPeridotInputFactory::~NvmPeridotInputFactory(NvmPeridotInputFactory *this)
{
  NvmPeridotInputFactory::~NvmPeridotInputFactory(this);

  JUMPOUT(0x22AA55B60);
}

{
  *this = &unk_283813120;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  InputFactory::~InputFactory(this);
}

uint64_t DictionaryInput::DictionaryInput(uint64_t a1, const __CFDictionary *a2, unsigned int a3)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  v5 = MEMORY[0x277CBECE8];
  *a1 = &unk_2838131C8;
  v6 = CFStringCreateWithCString(*v5, &CalibrationDataTypeName[256 * a3], 0x8000100u);
  Value = CFDictionaryGetValue(a2, v6);
  CFRelease(v6);
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 == CFDataGetTypeID())
    {
      *(a1 + 264) = Value;
      CFRetain(Value);
      BytePtr = CFDataGetBytePtr(*(a1 + 264));
      *(a1 + 272) = BytePtr;
      *(a1 + 280) = BytePtr;
      *(a1 + 288) = CFDataGetLength(*(a1 + 264));
    }

    else
    {
      CFRelease(Value);
    }
  }

  return a1;
}

void BufferInput::~BufferInput(BufferInput *this)
{
  *this = &unk_283813240;
  v1 = *(this + 33);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  BufferInput::~BufferInput(this);

  JUMPOUT(0x22AA55B60);
}

void DictionaryInput::~DictionaryInput(DictionaryInput *this)
{
  BufferInput::~BufferInput(this);

  JUMPOUT(0x22AA55B60);
}

void *BufferInput::readBuffer(const void **this, void *__dst, int a3)
{
  result = memcpy(__dst, this[35], a3);
  this[35] = this[35] + a3;
  return result;
}

CFDataRef NvmPeridotInputFactory::readSensorNVM(NvmPeridotInputFactory *this, H16ISP::H16ISPDevice *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  LODWORD(length) = a5;
  bzero(a4, a5);
  SensorNVMBytes = H16ISP::H16ISPDevice::GetSensorNVMBytes(a2, a3, a4, 0, &length);
  if (SensorNVMBytes == -536870184)
  {
    H16ISP::H16ISPDevice::CacheDeviceConfigs(a2, v9);
    SensorNVMBytes = H16ISP::H16ISPDevice::GetSensorNVMBytes(a2, a3, a4, 0, &length);
  }

  if (SensorNVMBytes)
  {
    return 0;
  }

  else
  {
    return CFDataCreate(*MEMORY[0x277CBECE8], a4, length);
  }
}

CFDataRef NvmPeridotInputFactory::readDeviceNVM(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  LODWORD(length) = a6;
  bzero(a5, a6);
  if (H16ISP::H16ISPDevice::GetDeviceNVMBytes(a2, a3, a4, a5, 0, &length))
  {
    return 0;
  }

  else
  {
    return CFDataCreate(*MEMORY[0x277CBECE8], a5, length);
  }
}

void InputFactory::~InputFactory(InputFactory *this)
{
  *this = &unk_283813188;
  v2 = (this + 8);
  v3 = *(this + 1);
  v4 = (this + 16);
  while (v3 != v4)
  {
    v5 = v3[5];
    std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::__remove_node_pointer(v2, v3);
    operator delete(v3);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v3 = *v2;
  }

  std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(v2, *(this + 2));
}

uint64_t *std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t CalibrationManager<FileInputFactory>::~CalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((a1 + 8));
  return a1;
}

void CalibrationManager<FileInputFactory>::~CalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((a1 + 8));

  JUMPOUT(0x22AA55B60);
}

void FileInputFactory::~FileInputFactory(CFTypeRef *this)
{
  *this = &unk_2838132A8;
  if (*(this + 40) == 1)
  {
    CFRelease(this[6]);
  }

  if (*(this + 56) == 1)
  {
    CFRelease(this[8]);
  }

  InputFactory::~InputFactory(this);
}

{
  FileInputFactory::~FileInputFactory(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t FileInputFactory::validate(FileInputFactory *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    result = FileInputFactory::overrideFilesAllowed(this);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if (!v2)
  {
    v2 = "/var/mobile/Documents/Pearl";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%s.bin", v2, "PlCl"];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v4];
  if (v5)
  {
    *(this + 40) = 1;
    *(this + 6) = v5;
  }

  v6 = *(this + 4);
  if (!v6)
  {
    v6 = "/var/mobile/Documents/JasperL";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%s.bin", v6, "JpCl"];
  v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v7];
  result = 1;
  if (v8)
  {
    *(this + 56) = 1;
    *(this + 8) = v8;
  }

  return result;
}

uint64_t FileInputFactory::createInput(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x10)
  {
    if (*(a1 + 40) == 1)
    {
      operator new();
    }

    operator new();
  }

  if (a2 - 17 <= 0xA)
  {
    if (*(a1 + 56) == 1)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t FileInput::FileInput(uint64_t a1, const char *a2, unsigned int a3)
{
  *a1 = &unk_283813300;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
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
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  snprintf((a1 + 8), 0x100uLL, "%s/%s.bin", a2, &CalibrationDataTypeName[256 * a3]);
  *(a1 + 264) = fopen(v4, "rb");
  return a1;
}

uint64_t FileInput::size(FILE **this)
{
  v2 = ftello(this[33]);
  fseeko(this[33], 0, 2);
  v3 = ftello(this[33]);
  fseeko(this[33], v2, 0);
  return (v3 - v2);
}

void AuthorizedRepairManager::~AuthorizedRepairManager(AuthorizedRepairManager *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *this = 1;
    dispatch_sync(v2, &__block_literal_global);
    dispatch_release(*(this + 1));
    *(this + 1) = 0;
  }
}

uint64_t PCECalibrationManager<FileInputFactory>::readPRF1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  Input = InputFactory::getInput((a1 + 8), 9);
  result = (*(*Input + 16))(Input);
  if (result)
  {
    (*(*Input + 24))(Input, &v8, 4);
    if (v8 == 3)
    {
      (*(*Input + 24))(Input, &v9, 19);
      v6 = v12;
      *(a2 + 8704) = v10;
      *(a2 + 8706) = v11;
      *(a2 + 8) = v9;
    }

    else
    {
      if (v8 == 2)
      {
        (*(*Input + 24))(Input, &v9, 3);
        v6 = BYTE2(v9);
        *(a2 + 8704) = v9;
        *(a2 + 8706) = BYTE1(v9);
      }

      else
      {
        if (v8 != 1)
        {
          return 0;
        }

        (*(*Input + 24))(Input, &v9, 1);
        v6 = v9;
        *(a2 + 8704) = 0;
      }

      bzero((a2 + 8), 0x10uLL);
    }

    result = 1;
    if (*(a1 + 81) == 1 && v6)
    {
      v7 = 1;
      do
      {
        (*(*Input + 24))(Input, &v9, 22);
        if (v9 > 3)
        {
          result = 1;
        }

        else
        {
          result = PCECalibrationManager<FileInputFactory>::prepareReferencesByType(a1, Input, &v9);
        }

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t PCECalibrationManager<FDRInputFactory>::readPRF1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  Input = InputFactory::getInput((a1 + 8), 9);
  result = (*(*Input + 16))(Input);
  if (result)
  {
    (*(*Input + 24))(Input, &v8, 4);
    if (v8 == 3)
    {
      (*(*Input + 24))(Input, &v9, 19);
      v6 = v12;
      *(a2 + 8704) = v10;
      *(a2 + 8706) = v11;
      *(a2 + 8) = v9;
    }

    else
    {
      if (v8 == 2)
      {
        (*(*Input + 24))(Input, &v9, 3);
        v6 = BYTE2(v9);
        *(a2 + 8704) = v9;
        *(a2 + 8706) = BYTE1(v9);
      }

      else
      {
        if (v8 != 1)
        {
          return 0;
        }

        (*(*Input + 24))(Input, &v9, 1);
        v6 = v9;
        *(a2 + 8704) = 0;
      }

      bzero((a2 + 8), 0x10uLL);
    }

    result = 1;
    if (*(a1 + 73) == 1 && v6)
    {
      v7 = 1;
      do
      {
        (*(*Input + 24))(Input, &v9, 22);
        if (v9 > 3)
        {
          result = 1;
        }

        else
        {
          result = PCECalibrationManager<FileInputFactory>::prepareReferencesByType(a1, Input, &v9);
        }

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t PCECalibrationManager<FileInputFactory>::prepareReferencesByType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a3 + 4) <= 3u)
  {
    operator new[]();
  }

  return 0;
}

uint64_t InputFactory::getInput(void *a1, int a2)
{
  v7 = a2;
  v2 = a1[2];
  v3 = (a1 + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = a1 + 2;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v4 == a1 + 2 || *(v4 + 8) > a2)
  {
LABEL_8:
    v5 = (*(*a1 + 40))(a1);
    v8 = &v7;
    std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::__emplace_unique_key_args<CalibrationDataTypes,std::piecewise_construct_t const&,std::tuple<CalibrationDataTypes const&>,std::tuple<>>(v3, &v7)[5] = v5;
  }

  v8 = &v7;
  return std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::__emplace_unique_key_args<CalibrationDataTypes,std::piecewise_construct_t const&,std::tuple<CalibrationDataTypes const&>,std::tuple<>>(v3, &v7)[5];
}

uint64_t *std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::__emplace_unique_key_args<CalibrationDataTypes,std::piecewise_construct_t const&,std::tuple<CalibrationDataTypes const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void ___ZN23AuthorizedRepairManager7processEPN6H16ISP12H16ISPDeviceEPKv_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  NSLog(&cfstr_ComponentValid_0.isa);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*v2 == 1)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v8 = [*(*(&v11 + 1) + 8 * i) integerValue];
        v9 = CRGetComponentState();
        if ((v9 - 2) <= 2)
        {
          NSLog(&cfstr_ComponentValid_2.isa, v8, v9);
          v10 = 3;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 4;
LABEL_13:
  *v2 = v10;
}

__CFData *JasperCalibrationManager<FileInputFactory>::readOnlyBlob(uint64_t a1, int a2)
{
  Input = InputFactory::getInput((a1 + 8), a2);
  if (!(*(*Input + 16))(Input))
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = (*(*Input + 32))(Input);
  Mutable = CFDataCreateMutable(v3, v4);
  v6 = (*(*Input + 32))(Input);
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v8 = (*(*Input + 32))(Input);
  (*(*Input + 24))(Input, MutableBytePtr, v8);
  return Mutable;
}

void *CalibrationManager<NvmPeridotInputFactory>::~CalibrationManager(void *a1)
{
  *a1 = &unk_283813370;
  NvmPeridotInputFactory::~NvmPeridotInputFactory((a1 + 1));
  return a1;
}

void CalibrationManager<NvmPeridotInputFactory>::~CalibrationManager(void *a1)
{
  *a1 = &unk_283813370;
  NvmPeridotInputFactory::~NvmPeridotInputFactory((a1 + 1));

  JUMPOUT(0x22AA55B60);
}

uint64_t FDRInputFactory::validate(FDRInputFactory *this)
{
  if ((pceConfiguration & 8) != 0)
  {
    return 0;
  }

  FDRInputFactory::checkUnifiedInputs(this);
  if (__PAIR64__(*(this + 33), *(this + 32)) == 0x100000001)
  {
    result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "PlCl", 0x8000100u);
    if (!result)
    {
      return result;
    }

    v3 = result;
    *(this + 5) = AMFDRSealingMapCopyLocalDictForClass();
    CFRelease(v3);
  }

  if (*(this + 49) == 1 && *(this + 48) == 1)
  {
    result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "JpCl", 0x8000100u);
    if (!result)
    {
      return result;
    }

    v4 = result;
    *(this + 7) = AMFDRSealingMapCopyLocalDictForClass();
    CFRelease(v4);
  }

  return 1;
}

void *CalibrationManager<FDRInputFactory>::~CalibrationManager(void *a1)
{
  *a1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((a1 + 1));
  return a1;
}

void CalibrationManager<FDRInputFactory>::~CalibrationManager(void *a1)
{
  *a1 = &unk_2838133A0;
  FDRInputFactory::~FDRInputFactory((a1 + 1));

  JUMPOUT(0x22AA55B60);
}

void FDRInputFactory::~FDRInputFactory(FDRInputFactory *this)
{
  FDRInputFactory::~FDRInputFactory(this);

  JUMPOUT(0x22AA55B60);
}

{
  *this = &unk_2838133C0;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  InputFactory::~InputFactory(this);
}

void FDRInputFactory::createInput(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x10 && (*(a1 + 32) & 1) != 0)
  {
    operator new();
  }

  if (a2 - 17 <= 0xA && (*(a1 + 48) & 1) != 0)
  {
    operator new();
  }

  operator new();
}

uint64_t FDRInput::FDRInput(uint64_t a1, unsigned int a2)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *a1 = &unk_283813418;
  strcpy((a1 + 8), &CalibrationDataTypeName[256 * a2]);
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 8), 0x8000100u);
  *(a1 + 264) = AMFDRSealingMapCopyLocalDataForClass();
  CFRelease(v3);
  v4 = *(a1 + 264);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    *(a1 + 272) = BytePtr;
    *(a1 + 280) = BytePtr;
    *(a1 + 288) = CFDataGetLength(*(a1 + 264));
  }

  return a1;
}

void FDRInput::~FDRInput(FDRInput *this)
{
  BufferInput::~BufferInput(this);

  JUMPOUT(0x22AA55B60);
}

void FDRInputFactory::checkUnifiedInputs(FDRInputFactory *this)
{
  if ((FDRInputFactory::_fdr3SupportChecked & 1) == 0)
  {
    FDRInputFactory::_fdr3SupportChecked = 1;
    FDRInputFactory::_tofUnified = 0;
    FDRInputFactory::_pearlUnified = 0;
    FDRInputFactory::_tofAvailable = 0;
    FDRInputFactory::_pearlAvailable = 0;
    v2 = *(this + 7);
    if (v2)
    {
      CFRelease(v2);
      *(this + 7) = 0;
    }

    v3 = *(this + 5);
    if (v3)
    {
      CFRelease(v3);
      *(this + 5) = 0;
    }

    v4 = *MEMORY[0x277CD2898];
    v5 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v4, v5);
    v7 = *MEMORY[0x277CBECE8];
    v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", *MEMORY[0x277CBECE8], 3u);
    if (v8)
    {
      FDRInputFactory::_tofAvailable = 1;
      CFRelease(v8);
    }

    v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageSNUM", v7, 3u);
    if (v9)
    {
      FDRInputFactory::_pearlAvailable = 1;
      CFRelease(v9);
    }

    if (FDRInputFactory::_pearlAvailable == 1)
    {
      v10 = CFStringCreateWithCString(v7, "PlCl", 0x8000100u);
      if (v10)
      {
        v11 = v10;
        v12 = AMFDRSealingMapCopyLocalDictForClass();
        CFRelease(v11);
        FDRInputFactory::_pearlUnified = v12 != 0;
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    if (FDRInputFactory::_tofAvailable == 1)
    {
      v13 = CFStringCreateWithCString(v7, "JpCl", 0x8000100u);
      if (v13)
      {
        v14 = v13;
        v15 = AMFDRSealingMapCopyLocalDictForClass();
        CFRelease(v14);
        FDRInputFactory::_tofUnified = v15 != 0;
        if (v15)
        {
          CFRelease(v15);
        }
      }
    }
  }

  v16 = FDRInputFactory::_pearlUnified;
  *(this + 32) = FDRInputFactory::_pearlUnified;
  v17 = FDRInputFactory::_tofUnified;
  *(this + 48) = FDRInputFactory::_tofUnified;
  v18 = FDRInputFactory::_pearlAvailable;
  *(this + 33) = FDRInputFactory::_pearlAvailable;
  v19 = FDRInputFactory::_tofAvailable;
  *(this + 49) = FDRInputFactory::_tofAvailable;
  if (v16)
  {
    v20 = "unified";
  }

  else
  {
    v20 = "not unified";
  }

  if (!v18)
  {
    v20 = "unavailable";
  }

  if (v17)
  {
    v21 = "unified";
  }

  else
  {
    v21 = "not unified";
  }

  if (!v19)
  {
    v21 = "unavailable";
  }

  NSLog(&cfstr_PearlFdrIsSTof.isa, v20, v21);
}

uint64_t CalibrationManager<FileInputFactory>::CalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = &unk_2838132A8;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 80) = FileInputFactory::validate((a1 + 8));
  return a1;
}

void PCECalibrationManager<FileInputFactory>::~PCECalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((a1 + 8));

  JUMPOUT(0x22AA55B60);
}

uint64_t PCECalibrationManager<FileInputFactory>::readPFCL(uint64_t a1, _WORD *a2)
{
  Input = InputFactory::getInput((a1 + 8), 14);
  result = (*(*Input + 16))(Input);
  if (result)
  {
    (*(*Input + 24))(Input, &v6, 4);
    if (v6 == 0x1000000)
    {
      result = Input::readAll<pfcl>(Input, v5);
      if (result)
      {
        *a2 = v5[3];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL Input::readAll<pfcl>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 8)
  {
    (*(*a1 + 24))(a1, a2, 8);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 8, v4);
  }

  return v5 == 8;
}

uint64_t PCECalibrationManager<FileInputFactory>::readPWCL(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  Input = InputFactory::getInput((a1 + 8), 13);
  if ((*(*Input + 16))(Input))
  {
    (*(*Input + 24))(Input, &v5, 4);
    if (v5 == 50331648)
    {
      (*(*Input + 24))(Input, v6, 125);
      *a2 = bswap32(v7) >> 16;
      operator new[]();
    }
  }

  return 0;
}

BOOL Input::readAll<pcve>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 96)
  {
    (*(*a1 + 24))(a1, a2, 96);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 96, v4);
  }

  return v5 == 96;
}

BOOL PCECalibrationManager<FileInputFactory>::readPCIIv1(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = Input::readAll<pcii_v1>(v4, &v11);
  if (v5)
  {
    v6 = 0;
    v7 = *v3;
    *(v3 + 8) = vmulq_n_f64(v11, *v3);
    *(v3 + 24) = v7 * v12;
    v8 = v3;
    do
    {
      v9 = &v13[v6];
      v14 = vld2q_f64(v9);
      v8[2] = vmulq_n_f64(v14.val[0], v7);
      v8[130] = vmulq_n_f64(v14.val[1], v7);
      v6 += 32;
      ++v8;
    }

    while (v6 != 4096);
    bzero((v3 + 4128), 0x40uLL);
    bzero((v3 + 4192), 0x40uLL);
  }

  return v5;
}

BOOL PCECalibrationManager<FileInputFactory>::readPCIIv2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = Input::readAll<pcii_v1>(v4, &v11);
  if (v5)
  {
    v6 = *v3;
    *(v3 + 8) = vmulq_n_f64(v11, *v3);
    *(v3 + 24) = v6 * v12;
    v7 = &v11;
    v8 = 256;
    v9 = v3;
    do
    {
      v9[2] = vmulq_n_f64(*(v7 + 24), v6);
      v9[130] = vmulq_n_f64(*(v7++ + 2072), v6);
      ++v9;
      v8 -= 2;
    }

    while (v8);
    bzero((v3 + 4128), 0x40uLL);
    bzero((v3 + 4192), 0x40uLL);
  }

  return v5;
}

double PCECalibrationManager<FileInputFactory>::readPCIIv3(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  if (Input::readAll<pcii_v3>(v4, &v14))
  {
    v6 = *v3;
    *(v3 + 8) = vmulq_n_f64(v14, *v3);
    *(v3 + 24) = v6 * v15;
    v7 = &v14;
    v8 = 256;
    v9 = v3;
    do
    {
      v9[2] = vmulq_n_f64(*(v7 + 24), v6);
      v9[130] = vmulq_n_f64(*(v7++ + 2072), v6);
      ++v9;
      v8 -= 2;
    }

    while (v8);
    v10 = v17;
    *(v3 + 4128) = v16;
    *(v3 + 4144) = v10;
    v11 = v19;
    *(v3 + 4160) = v18;
    *(v3 + 4176) = v11;
    v12 = v21;
    *(v3 + 4192) = v20;
    *(v3 + 4208) = v12;
    result = *&v22;
    v13 = v23;
    *(v3 + 4224) = v22;
    *(v3 + 4240) = v13;
  }

  return result;
}

BOOL Input::readAll<pcii_v1>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 4144)
  {
    (*(*a1 + 24))(a1, a2, 4144);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 4144, v4);
  }

  return v5 == 4144;
}

BOOL Input::readAll<pcii_v3>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 4248)
  {
    (*(*a1 + 24))(a1, a2, 4248);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 4248, v4);
  }

  return v5 == 4248;
}

uint64_t JasperCalibrationManager<FileInputFactory>::JasperCalibrationManager(uint64_t a1)
{
  v2 = CalibrationManager<FileInputFactory>::CalibrationManager(a1);
  *v2 = &unk_2838134A0;
  JasperCalibrationManager<FileInputFactory>::readSerialNumber(v2);
  return a1;
}

void sub_224876CE8(_Unwind_Exception *a1)
{
  *v1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((v1 + 8));
  _Unwind_Resume(a1);
}

void JasperCalibrationManager<FileInputFactory>::readSerialNumber(uint64_t a1)
{
  *(a1 + 81) = 0;
  v1 = (a1 + 81);
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", *MEMORY[0x277CBECE8], 3u);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v6);
    goto LABEL_7;
  }

  v9 = CFGetTypeID(v6);
  if (v9 == CFStringGetTypeID())
  {
    BytePtr = CFStringGetCStringPtr(v6, 0x8000100u);
LABEL_7:
    if (BytePtr)
    {
      strncpy(v1, BytePtr, 0x20uLL);
    }
  }

  CFRelease(v6);
}

void JasperCalibrationManager<FileInputFactory>::~JasperCalibrationManager(uint64_t a1)
{
  *a1 = &unk_283813278;
  FileInputFactory::~FileInputFactory((a1 + 8));

  JUMPOUT(0x22AA55B60);
}

double PCECalibrationManager<FileInputFactory>::readPCIC(uint64_t a1, uint64_t a2)
{
  Input = InputFactory::getInput((a1 + 8), 0);
  if ((*(*Input + 16))(Input))
  {
    (*(*Input + 24))(Input, &v6, 4);
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          return PCECalibrationManager<FileInputFactory>::readPCICv4(a1, Input, a2);
        }

        if (v6 == 6)
        {
          PCECalibrationManager<FileInputFactory>::readPCICv6(a1, Input, a2);
        }

        return result;
      }

      if (!Input::readAll<pcic_v3>(Input, &v7))
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v6 == 1)
    {
      if (!Input::readAll<pcic_v1>(Input, &v7))
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v6 == 2 && Input::readAll<pcic_v2>(Input, &v7))
    {
LABEL_15:
      *(a2 + 4280) = v7;
      result = v8;
      *(a2 + 24) = v8;
    }
  }

  return result;
}

void PCECalibrationManager<FileInputFactory>::readPCII(uint64_t a1)
{
  Input = InputFactory::getInput((a1 + 8), 2);
  if ((*(*Input + 16))(Input))
  {
    (*(*Input + 24))(Input, &v3, 4);
    switch(v3)
    {
      case 3:
        PCECalibrationManager<FileInputFactory>::readPCIIv3(a1, Input);
        break;
      case 2:
        PCECalibrationManager<FileInputFactory>::readPCIIv2(a1, Input);
        break;
      case 1:
        PCECalibrationManager<FileInputFactory>::readPCIIv1(a1, Input);
        break;
    }
  }
}

void PCECalibrationManager<FileInputFactory>::readPCVC(uint64_t a1, uint64_t a2)
{
  Input = InputFactory::getInput((a1 + 8), 1);
  if ((*(*Input + 16))(Input))
  {
    (*(*Input + 24))(Input, &v5, 4);
    if (v5 == 3)
    {
      PCECalibrationManager<FileInputFactory>::readPCVCv3(a1, Input, a2);
    }

    else if (v5 == 2)
    {
      PCECalibrationManager<FileInputFactory>::readPCVCv2(a1, Input, a2);
    }

    else if (v5 == 1 && Input::readAll<pcic_v1>(Input, &v6))
    {
      *(a2 + 8544) = v6;
      *(a2 + 4288) = v7;
      *(a2 + 8904) = 0;
      *(a2 + 8920) = 0;
      *(a2 + 8912) = 0;
    }
  }
}

uint64_t PCECalibrationManager<FileInputFactory>::readPBAS(uint64_t a1, uint64_t a2)
{
  Input = InputFactory::getInput((a1 + 8), 5);
  result = (*(*Input + 16))(Input);
  if (result)
  {
    (*(*Input + 24))(Input, &v7, 4);
    if (v7 == 1)
    {
      result = Input::readAll<pbas>(Input, &v5);
      if (result)
      {
        *a2 = v5;
        *(a2 + 16) = v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PCECalibrationManager<FileInputFactory>::readPMPC(uint64_t a1, uint64_t a2)
{
  Input = InputFactory::getInput((a1 + 8), 6);
  result = (*(*Input + 16))(Input);
  if (result)
  {
    (*(*Input + 24))(Input, &v8, 4);
    if (v8 == 1)
    {
      result = Input::readAll<pmpc>(Input, &v5);
      if (result)
      {
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 24) = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PCECalibrationManager<FileInputFactory>::initRuntime(uint64_t a1, uint64_t a2)
{
  memcpy((a2 + 8928), (a2 + 24), 0x10A8uLL);
  v3 = 0;
  v4 = (a2 + 13192);
  v5 = vdupq_n_s64(3uLL);
  v6 = vdupq_n_s64(2uLL);
  do
  {
    v7 = v4;
    v8 = 4;
    v9 = xmmword_2249B9820;
    do
    {
      if (vmovn_s64(vcgtq_u64(v5, v9)).u8[0])
      {
        if (v3 + v8 == 4)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *v7 = v10;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v9)).i32[1])
      {
        if (v3 + v8 == 5)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v7[3] = v11;
      }

      v9 = vaddq_s64(v9, v6);
      v7 += 6;
      v8 -= 2;
    }

    while (v8);
    ++v3;
    ++v4;
  }

  while (v3 != 3);
  *(a2 + 13264) = *(a2 + 8648);
  *(a2 + 13280) = *(a2 + 8664);
  if (*(a2 + 8912) == 0.0 && *(a2 + 8920) == 0.0)
  {
    v12 = *(a2 + 4296);
    if (v12 != 0.0)
    {
      *(a2 + 8912) = v12;
    }
  }

  v13 = *(a2 + 8936);
  if (v13 != 0.0 && *(a2 + 8880) == 0.0)
  {
    *(a2 + 8880) = v13;
  }

  v14 = *(a2 + 8944);
  if (v14 != 0.0)
  {
    v15 = *(a2 + 8952);
    if (v15 != 0.0 && *(a2 + 8728) == 0.0 && *(a2 + 8744) == 0.0 && *(a2 + 8792) == 0.0 && *(a2 + 8808) == 0.0)
    {
      *(a2 + 8728) = v14;
      *(a2 + 8792) = v15;
    }
  }

  return 1;
}

uint64_t PCECalibrationManager<FileInputFactory>::readPSD2(uint64_t a1)
{
  Input = InputFactory::getInput((a1 + 8), 12);
  if ((*(*Input + 16))(Input))
  {
    (*(*Input + 32))(Input);
    operator new[]();
  }

  return 0;
}

double PCECalibrationManager<FileInputFactory>::readPCICv4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (Input::readAll<pcic_v4>(a2, &v6))
  {
    *(a3 + 4280) = v6;
    v5 = v7;
    *(a3 + 24) = v7;
    *(a3 + 8880) = 0;
    *(a3 + 8896) = 0;
    *(a3 + 8888) = 0;
    *(a3 + 8720) = v10;
    *(a3 + 8728) = 0;
    *(a3 + 8792) = 0;
    *(a3 + 8736) = v5 * v8;
    result = v5 * v9;
    *(a3 + 8800) = result;
  }

  return result;
}

BOOL PCECalibrationManager<FileInputFactory>::readPCICv6(uint64_t a1, const char *a2, uint64_t a3)
{
  result = Input::readAll<pcic_v6>(a2, v11);
  if (result)
  {
    v5 = v14;
    *(a3 + 8896) = v15;
    v6 = v12;
    *(a3 + 8880) = v12 * v13;
    *(a3 + 4280) = v11[1];
    *(a3 + 24) = v6;
    *(a3 + 8888) = v6 * v5;
    *(a3 + 8720) = v16[8];
    v7 = v16;
    v8 = (a3 + 8792);
    v9 = 8;
    do
    {
      v8[-4] = vmulq_n_f64(v7[-4], v6);
      v10 = *v7++;
      *v8++ = vmulq_n_f64(v10, v6);
      v9 -= 2;
    }

    while (v9);
  }

  return result;
}

BOOL Input::readAll<pcic_v1>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 12)
  {
    (*(*a1 + 24))(a1, a2, 12);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 12, v4);
  }

  return v5 == 12;
}

BOOL Input::readAll<pcic_v2>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 20)
  {
    (*(*a1 + 24))(a1, a2, 20);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 20, v4);
  }

  return v5 == 20;
}

BOOL Input::readAll<pcic_v3>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 36)
  {
    (*(*a1 + 24))(a1, a2, 36);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 36, v4);
  }

  return v5 == 36;
}

BOOL Input::readAll<pcic_v4>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 84)
  {
    (*(*a1 + 24))(a1, a2, 84);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 84, v4);
  }

  return v5 == 84;
}

BOOL Input::readAll<pcic_v6>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 176)
  {
    (*(*a1 + 24))(a1, a2, 176);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 176, v4);
  }

  return v5 == 176;
}

double PCECalibrationManager<FileInputFactory>::readPCVCv2(uint64_t a1, const char *a2, uint64_t a3)
{
  if (Input::readAll<pcic_v2>(a2, &v6))
  {
    *(a3 + 8544) = v6;
    v5 = v8;
    *(a3 + 4288) = v7;
    *(a3 + 8904) = v5;
    result = 0.0;
    *(a3 + 8912) = 0u;
  }

  return result;
}

double PCECalibrationManager<FileInputFactory>::readPCVCv3(uint64_t a1, const char *a2, uint64_t a3)
{
  if (Input::readAll<pcic_v3>(a2, &v7))
  {
    *(a3 + 8544) = v7;
    v5 = v8;
    v6 = v9;
    *(a3 + 4288) = v8;
    *(a3 + 8904) = v6;
    *(a3 + 8912) = v5 * v10;
    result = v5 * v11;
    *(a3 + 8920) = result;
  }

  return result;
}

BOOL Input::readAll<pbas>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 24)
  {
    (*(*a1 + 24))(a1, a2, 24);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 24, v4);
  }

  return v5 == 24;
}

BOOL Input::readAll<pmpc>(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 32)
  {
    (*(*a1 + 24))(a1, a2, 32);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 32, v4);
  }

  return v5 == 32;
}

BOOL JasperCalibrationManager<FileInputFactory>::readBlob(uint64_t a1, unsigned int a2, __CFDictionary *a3)
{
  OnlyBlob = JasperCalibrationManager<FileInputFactory>::readOnlyBlob(a1, a2);
  if (OnlyBlob)
  {
    CFDictionarySetValue(a3, [MEMORY[0x277CCACA8] stringWithUTF8String:&CalibrationDataTypeName[256 * a2]], OnlyBlob);
    CFRelease(OnlyBlob);
  }

  else
  {
    NSLog(&cfstr_SCouldnTOpenIn.isa, &CalibrationDataTypeName[256 * a2]);
  }

  return OnlyBlob != 0;
}

uint64_t JasperCalibrationManager<NvmPeridotInputFactory>::JasperCalibrationManager(uint64_t a1, uint64_t a2)
{
  v3 = CalibrationManager<NvmPeridotInputFactory>::CalibrationManager(a1, a2);
  *v3 = &unk_2838134D8;
  JasperCalibrationManager<NvmPeridotInputFactory>::readSerialNumber(v3);
  return a1;
}

void sub_224877E10(_Unwind_Exception *a1)
{
  *v1 = &unk_283813370;
  NvmPeridotInputFactory::~NvmPeridotInputFactory((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t CalibrationManager<NvmPeridotInputFactory>::CalibrationManager(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283813370;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = &unk_283813120;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 48) = NvmPeridotInputFactory::validate((a1 + 8), a2);
  return a1;
}

void JasperCalibrationManager<NvmPeridotInputFactory>::readSerialNumber(uint64_t a1)
{
  *(a1 + 49) = 0;
  v1 = (a1 + 49);
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", *MEMORY[0x277CBECE8], 3u);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v6);
    goto LABEL_7;
  }

  v9 = CFGetTypeID(v6);
  if (v9 == CFStringGetTypeID())
  {
    BytePtr = CFStringGetCStringPtr(v6, 0x8000100u);
LABEL_7:
    if (BytePtr)
    {
      strncpy(v1, BytePtr, 0x20uLL);
    }
  }

  CFRelease(v6);
}

void JasperCalibrationManager<NvmPeridotInputFactory>::~JasperCalibrationManager(void *a1)
{
  *a1 = &unk_283813370;
  NvmPeridotInputFactory::~NvmPeridotInputFactory((a1 + 1));

  JUMPOUT(0x22AA55B60);
}

uint64_t _GLOBAL__sub_I_H16ISPPCECalibration_mm()
{
  allowFdrForTof = H16ISP::H16ISPGetCFPreferenceNumber(@"FdrForTof", @"com.apple.coremedia", 1) != 0;
  authorizedRepairManager = 0;
  qword_281003B18 = 0;

  return __cxa_atexit(AuthorizedRepairManager::~AuthorizedRepairManager, &authorizedRepairManager, &dword_2247DB000);
}

uint64_t FLD::GetAFEDelayV(FLD *this, int a2)
{
  v2 = this;
  result = 0;
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        return result;
      }

      if (!a2)
      {
        return 3;
      }

      if (a2 != 1)
      {
        FLD::GetAFEDelayV();
      }
    }

    else
    {
      if (!v2)
      {
        return result;
      }

      if (v2 != 1)
      {
        goto LABEL_31;
      }

      if (!a2)
      {
        return 2;
      }

      if (a2 != 1)
      {
        FLD::GetAFEDelayV();
      }
    }

    return 1;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      goto LABEL_21;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        FLD::GetAFEDelayV();
      }

      return 0;
    }

    return 1;
  }

  if (v2 == 6)
  {
    if (!a2)
    {
      return 2;
    }

    if (a2 != 1)
    {
      FLD::GetAFEDelayV();
    }

    return 1;
  }

  if (v2 == 7)
  {
LABEL_21:
    if (!a2)
    {
      return 4;
    }

    if (a2 != 1)
    {
      FLD::GetAFEDelayV();
    }

    return 2;
  }

  if (v2 != 8)
  {
LABEL_31:
    FLD::GetAFEDelayV();
  }

  return result;
}

unint64_t FLD::GetAFEAddress(FLD *a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v11 = a1;
  result = FLD::GetAFEDelayV(a1, a2[8]);
  if (v11 > 8)
  {
    FLD::GetAFEAddress();
  }

  if (((1 << v11) & 0xFA) == 0)
  {
    v21 = 0;
    if (((1 << v11) & 0x101) != 0)
    {
      v22 = *a2 * a3;
      *a4 = v22;
      v23 = a2[2] * a3 + v22 * 2 * a2[3];
    }

    else
    {
      v24 = 2 * a3 * *a2;
      *a4 = v24;
      v23 = v24 * a2[3] + 2 * a2[2] * a3;
    }

    *a5 = v23;
    goto LABEL_18;
  }

  v13 = a2[1];
  if (result >= v13)
  {
    FLD::GetAFEAddress();
  }

  v14 = a2[3];
  if (v14 >= v13)
  {
    FLD::GetAFEAddress();
  }

  if (v11 > 7)
  {
    goto LABEL_21;
  }

  if (((1 << v11) & 0x9A) == 0)
  {
    if (((1 << v11) & 0x60) != 0)
    {
      a3 *= 2;
      goto LABEL_9;
    }

LABEL_21:
    FLD::GetAFEAddress();
  }

LABEL_9:
  *a4 = a3 * *a2;
  *a5 = 0;
  v15 = 2 * v14 - result;
  if (result > v14)
  {
    v15 = v14;
  }

  *a5 = *a4 * v15;
  v16 = (v13 + ~v14);
  v17 = *a4 * (2 * v13 - 1);
  *a6 = v17;
  v18 = v17 + *a4 * (result - 2 * v16);
  v19 = v17 - *a4 * v16;
  if (result <= v16)
  {
    v19 = v18;
  }

  *a6 = v19;
  v20 = a3 * a2[2];
  *a5 += v20;
  v21 = *a6 + v20;
LABEL_18:
  *a6 = v21;
  return result;
}

uint64_t FLD::GetInputAFE(FLD *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 20) = -1;
  *(a4 + 52) = -1;
  v4 = a2[4];
  v5 = a2[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = v4 >= v7;
  v9 = v4 - v7;
  v10 = v9 != 0 && v8 && v5 > v6;
  v11 = !v10 || a3 == 0;
  v12 = !v11;
  if (v11)
  {
    return v12;
  }

  *(a4 + 4) = v5 - v6;
  if (a1 <= 2)
  {
    if (!a1)
    {
LABEL_28:
      v17 = a2[6];
      if (v17 >= 2)
      {
        FLD::GetInputAFE();
      }

      v18 = a2[7];
      if (v18 != -1)
      {
        FLD::GetInputAFE();
      }

      goto LABEL_30;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        if (a2[6])
        {
          FLD::GetInputAFE();
        }

        if (a2[7] != -1)
        {
          FLD::GetInputAFE();
        }

        v17 = 0;
        goto LABEL_32;
      }

      goto LABEL_53;
    }

LABEL_24:
    v17 = a2[6];
    if (v17 >= 2)
    {
      FLD::GetInputAFE();
    }

    v18 = a2[7];
    if ((v18 - 4) <= 0xFFFFFFFD)
    {
      FLD::GetInputAFE();
    }

    goto LABEL_30;
  }

  if (a1 > 8)
  {
    goto LABEL_53;
  }

  if (((1 << a1) & 0x98) != 0)
  {
    goto LABEL_24;
  }

  if (((1 << a1) & 0x60) == 0)
  {
    if (a1 == 8)
    {
      goto LABEL_28;
    }

LABEL_53:
    FLD::GetInputAFE();
  }

  if (a2[6])
  {
    FLD::GetInputAFE();
  }

  if (a2[7] != 2)
  {
    FLD::GetInputAFE();
  }

  v17 = 0;
  v18 = 2;
LABEL_30:
  if (((1 << a1) & 0xD2) != 0)
  {
    *(a4 + 16) = v9;
    *(a4 + 20) = 0;
    *(a4 + 24) = v17;
    *(a4 + 48) = v9;
    *(a4 + 52) = 1;
    *(a4 + 56) = v18;
    goto LABEL_35;
  }

  if (((1 << a1) & 0x105) == 0)
  {
    *(a4 + 48) = v9;
    *(a4 + 52) = 0;
    *(a4 + 56) = v18;
    *(a4 + 16) = v9;
    *(a4 + 20) = 1;
    *(a4 + 24) = v17;
    goto LABEL_35;
  }

LABEL_32:
  *(a4 + 16) = v9;
  *(a4 + 20) = 0;
  *(a4 + 24) = v17;
  *(a4 + 48) = 0xFFFFFFFF00000000;
  *(a4 + 56) = -1;
LABEL_35:
  v26 = 0;
  v27 = 0;
  v25 = 0;
  FLD::GetAFEAddress(a1, a2, 8, &v27, &v26, &v25);
  *(a4 + 8) = v27 >> 1;
  *(a4 + 32) = 0;
  *(a4 + 64) = 0;
  AFEDelayV = FLD::GetAFEDelayV(a1, a2[8]);
  if (((1 << a1) & 0xFA) != 0)
  {
    v20 = a2[3];
    if (AFEDelayV > v20)
    {
      *(a4 + 32) = AFEDelayV - v20;
    }

    v21 = a2[1] + ~AFEDelayV;
    v8 = v21 >= v20;
    v22 = v21 - v20;
    if (v8)
    {
      *(a4 + 64) = v22;
    }

    *(a4 + 40) = a3 + v26;
    v23 = a3 + v25;
  }

  else
  {
    v23 = 0;
    *(a4 + 40) = a3 + v26;
  }

  *(a4 + 72) = v23;
  if (!*(a4 + 8))
  {
    FLD::GetInputAFE();
  }

  return v12;
}

double FLD::Init(uint64_t a1)
{
  if (!a1)
  {
    FLD::Init();
  }

  *&result = 0x100000001;
  *a1 = xmmword_2249BB860;
  *(a1 + 6756) = 0;
  *(a1 + 6752) = 16;
  return result;
}

uint64_t FLD::Prepare(uint64_t result)
{
  if (!result)
  {
    FLD::Prepare();
  }

  *(result + 8) = -1;
  *(result + 112) = 0;
  return result;
}

void FLD::ComputeBinnedXtalk(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a3 == 1)
  {
    v9 = 0;
    v8 = 0;
    v5 = a1[6];
    v4 = a1[7];
    v10 = (v4 - 15) >> 4;
    v54 = (v5 - 23) / 0x18uLL;
    v6 = 16;
    v7 = 24;
  }

  else
  {
    if (a3)
    {
      FLD::ComputeBinnedXtalk();
    }

    v5 = a1[6];
    v4 = a1[7];
    v6 = v4 / 0x2CuLL;
    v7 = v5 / 0x18uLL;
    v54 = 24;
    v8 = (24 - v7) >> 1;
    v9 = (16 - v6) >> 1;
    v10 = 44;
  }

  v47 = v6;
  v49 = v10;
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v53 = 4 * v12;
  v15 = (v4 - v10 * v6) & 0xFFFFFFFFFFFFFFFELL;
  if (v15)
  {
    if (v11 > 8)
    {
      FLD::ComputeBinnedXtalk();
    }

    do
    {
      if (v11 == 8 || v11 == 2 || !v11)
      {
        v13 += 2 * v12;
      }

      else
      {
        v16 = v14 - 1;
        if (v14)
        {
          v13 += 2 * v12;
        }

        else
        {
          v16 = 0;
          v13 += v53;
        }

        v14 = v16;
      }

      --v15;
    }

    while (v15);
  }

  v17 = a1 + 1834;
  bzero(a1 + 1834, 0xC00uLL);
  if (v47)
  {
    v18 = v3 + 1762;
    v45 = v8;
    v46 = v3;
    v19 = v3 + 1690;
    v20 = 0;
    v44 = v9;
    v21 = &v17[48 * v9 + 2 * v8];
    v22 = (2 * (v5 - v54 * v7)) & 0xFFFFFFFFFFFFFFFCLL;
    v51 = &v19[12 * v8];
    v23 = (v49 * v54);
    v48 = v19;
    v50 = &v18[12 * v8];
    v8 = v47;
    do
    {
      bzero(v48, 0x240uLL);
      v26 = v49;
      for (i = v20; v26; --v26)
      {
        FLD::FLDAccumlateRow<false>(v13 + 2 * v22, v7, v54, v50);
        if (v11 > 8)
        {
          FLD::ComputeBinnedXtalk();
        }

        v27 = 1 << v11;
        if (((1 << v11) & 0xFA) != 0)
        {
          v28 = v14 - 1;
          if (v14)
          {
            v29 = v13 + 2 * v12;
          }

          else
          {
            v28 = 0;
            v29 = v13 + v53;
          }

          v14 = v28;
        }

        else
        {
          v29 = v13 + 2 * v12;
          if ((v27 & 0x101) == 0)
          {
            FLD::FLDAccumlateRow<true>(v29 + 2 * v22, v7, v54, v51);
LABEL_35:
            v20 = i;
            v13 = v29 + 2 * v12;
            continue;
          }
        }

        FLD::FLDAccumlateRow<true>(v29 + 2 * v22, v7, v54, v51);
        if ((v27 & 0xFA) != 0)
        {
          v30 = v14 - 1;
          if (v14)
          {
            v13 = v29 + 2 * v12;
          }

          else
          {
            v30 = 0;
            v13 = v29 + v53;
          }

          v14 = v30;
        }

        else
        {
          if ((v27 & 0x101) == 0)
          {
            goto LABEL_35;
          }

          v13 = v29 + 2 * v12;
        }

        v20 = i;
      }

      if (v7)
      {
        v31 = 0;
        v32 = v51;
        do
        {
          LOWORD(v24) = *(v32 + 4);
          v33 = (LODWORD(v24) / v23) * 100.0;
          LOWORD(v25) = *(v32 + 148);
          v34 = ((v25 / v23) * 100.0) <= 90.0 || v33 <= 90.0;
          v35 = !v34;
          *(v21 + v31 + 6) = v35 << 31 >> 31;
          v36 = *v32;
          v37 = 0.0;
          v38 = 0.0;
          if (*v32)
          {
            v38 = ((v32[1] / v36) + -1.0) * 10000.0;
          }

          v39 = v32[72];
          v40 = v39;
          if (v39)
          {
            v37 = ((v32[73] / v40) + -1.0) * 10000.0;
          }

          v41 = sqrtf((v37 * v37) + (v38 * v38));
          v42 = atan2f(v38, v37);
          v43 = (v21 + v31);
          v43[1] = v41;
          v43[2] = ((v42 * 180.0) / 3.14159265 + 0.5);
          v24 = (v40 + v36) / ((v49 + v49) * v54);
          *v43 = v24;
          v32 += 3;
          v31 += 8;
        }

        while (8 * v7 != v31);
        v21 += v31;
        v8 = v47;
        v20 = i;
      }

      v21 += 8 * (24 - v7);
      ++v20;
    }

    while (v20 != v8);
    v34 = v8 > 0x10;
    LOBYTE(v8) = v45;
    v3 = v46;
    LOBYTE(v9) = v44;
    if (v34)
    {
      FLD::ComputeBinnedXtalk();
    }
  }

  if (v7 >= 0x19)
  {
    FLD::ComputeBinnedXtalk();
  }

  *(v3 + 6745) = v47;
  *(v3 + 6744) = v7;
  *(v3 + 6747) = v49;
  *(v3 + 6746) = v54;
  *(v3 + 6749) = v9;
  *(v3 + 6748) = v8;
}

uint64_t FLD::FLDAccumlateRow<false>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a3)
      {
        v6 = *a4;
        v5 = a4[1];
        v7 = a3;
        v8 = *(a4 + 4);
        do
        {
          v9 = *(result + 6);
          v10 = (v9 - 16) >= 0xDD5 || (v9 - (*result >> 3) - 16) >= 0xDD5u;
          v5 += v9;
          v6 += (v9 - (*result >> 3));
          if (!v10)
          {
            ++v8;
          }

          *(a4 + 4) = v8;
          result += 8;
          --v7;
        }

        while (v7);
        *a4 = v6;
        a4[1] = v5;
      }

      a4 += 3;
    }
  }

  return result;
}

uint64_t FLD::FLDAccumlateRow<true>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a3)
      {
        v6 = *a4;
        v5 = a4[1];
        v7 = a3;
        v8 = *(a4 + 4);
        do
        {
          v9 = *(result + 6);
          v10 = (v9 - 16) >= 0xDD5 || (v9 + (*result >> 3) - 16) >= 0xDD5u;
          v5 += v9;
          v6 += (v9 + (*result >> 3));
          if (!v10)
          {
            ++v8;
          }

          *(a4 + 4) = v8;
          result += 8;
          --v7;
        }

        while (v7);
        *a4 = v6;
        a4[1] = v5;
      }

      a4 += 3;
    }
  }

  return result;
}

void FLD::ComputeBinnedXtalkNeon(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a3 == 1)
  {
    v8 = 0;
    v7 = 0;
    v5 = a1[6];
    v4 = a1[7];
    v10 = (v4 - 15) >> 4;
    v65 = (v5 - 23) / 0x18uLL;
    v9 = 16;
    v6 = 24;
  }

  else
  {
    if (a3)
    {
      FLD::ComputeBinnedXtalkNeon();
    }

    v5 = a1[6];
    v4 = a1[7];
    v6 = v5 / 0x18uLL;
    v65 = 24;
    v7 = (24 - v6) >> 1;
    v8 = (16 - v4 / 0x2CuLL) >> 1;
    v9 = v4 / 0x2CuLL;
    v10 = 44;
  }

  v72 = v10;
  v73 = v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v70 = 4 * v12;
  v15 = (v4 - v10 * v9) & 0xFFFFFFFFFFFFFFFELL;
  if (v15)
  {
    if (v11 > 8)
    {
      FLD::ComputeBinnedXtalk();
    }

    do
    {
      if (v11 == 8 || v11 == 2 || !v11)
      {
        v13 += 2 * v12;
      }

      else
      {
        v16 = v14 - 1;
        if (v14)
        {
          v13 += 2 * v12;
        }

        else
        {
          v16 = 0;
          v13 += v70;
        }

        v14 = v16;
      }

      --v15;
    }

    while (v15);
  }

  bzero(a1 + 1834, 0xC00uLL);
  v17 = v73;
  if (v73)
  {
    v74 = 0;
    v62 = v8;
    v63 = v7;
    v18 = &v3[48 * v8 + 1834 + 2 * v7];
    v19 = 3 * v7;
    v68 = &v3[3 * v7 + 1762];
    v69 = (2 * (v5 - v65 * v6)) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v65 & 0xFFFFFFFFFFFFFF8;
    v67 = &v3[3 * v7 + 1690];
    v21 = v72;
    v22 = (v72 * v65);
    v71 = v3 + 1690;
    v64 = v3;
    v23 = &v3[v19];
    v66 = vdupq_n_s16(0xDD5u);
    do
    {
      bzero(v71, 0x240uLL);
      if (v21)
      {
        v26 = 0;
        v27.i64[0] = 0xF000F000F000FLL;
        v27.i64[1] = 0xF000F000F000FLL;
        do
        {
          if (v6)
          {
            v28 = 0;
            v29 = (v13 + 2 * v69);
            v30 = v68;
            do
            {
              if (v20)
              {
                v31 = 0;
                v32 = 0uLL;
                v25 = 0uLL;
                v33 = 0uLL;
                do
                {
                  v75 = vld4q_s16(v29);
                  v29 += 32;
                  v34 = vsubq_s16(v75.val[3], vshrq_n_s16(v75.val[0], 3uLL));
                  v32 = vaddq_s16(v75.val[3], v32);
                  v25 = vaddq_s16(v34, v25);
                  v33 = vsubq_s16(v33, vcgtq_u16(v66, vmaxq_u16(vaddq_s16(v34, v27), vaddq_s16(v75.val[3], v27))));
                  v31 += 8;
                }

                while (v31 < v20);
              }

              else
              {
                v33 = 0uLL;
                v25 = 0uLL;
                v32 = 0uLL;
              }

              v35 = vpaddq_s16(vpaddq_s16(v32, v25), v33);
              v36 = *(v30 + 4);
              *v30 += v35.u16[3] + v35.u16[2];
              *(v30 + 4) = v35.u16[0] + v35.u16[1] + v36;
              v24 = vpaddq_s16(v35, v35).u64[0];
              *(v30 + 8) += WORD2(v24) + HIWORD(v24);
              v30 += 12;
              ++v28;
            }

            while (v28 != v6);
          }

          if (v11 > 8)
          {
            FLD::ComputeBinnedXtalk();
          }

          v37 = 1 << v11;
          v38 = v13 + v70;
          v39 = v14 - 1;
          if (v14)
          {
            v38 = v13 + 2 * v12;
          }

          else
          {
            v39 = 0;
          }

          if ((v37 & 0xFA) != 0)
          {
            v14 = v39;
          }

          else
          {
            v38 = v13 + 2 * v12;
          }

          if (v6)
          {
            v40 = 0;
            v41 = (v38 + 2 * v69);
            v42 = v67;
            do
            {
              if (v20)
              {
                v43 = 0;
                v44 = 0uLL;
                v25 = 0uLL;
                v45 = 0uLL;
                do
                {
                  v76 = vld4q_s16(v41);
                  v41 += 32;
                  v46 = vsraq_n_s16(v76.val[3], v76.val[0], 3uLL);
                  v45 = vaddq_s16(v76.val[3], v45);
                  v25 = vaddq_s16(v46, v25);
                  v44 = vsubq_s16(v44, vcgtq_u16(v66, vmaxq_u16(vaddq_s16(v46, v27), vaddq_s16(v76.val[3], v27))));
                  v43 += 8;
                }

                while (v43 < v20);
              }

              else
              {
                v45 = 0uLL;
                v25 = 0uLL;
                v44 = 0uLL;
              }

              v47 = vpaddq_s16(vpaddq_s16(v45, v25), v44);
              v48 = *(v42 + 4);
              *v42 += v47.u16[3] + v47.u16[2];
              *(v42 + 4) = v47.u16[0] + v47.u16[1] + v48;
              v24 = vpaddq_s16(v47, v47).u64[0];
              *(v42 + 8) += WORD2(v24) + HIWORD(v24);
              v42 += 12;
              ++v40;
            }

            while (v40 != v6);
          }

          if ((v37 & 0xFA) != 0)
          {
            v49 = v38 + v70;
            v50 = v38 + 2 * v12;
            v51 = v14 - 1;
            if (v14)
            {
              v13 = v50;
            }

            else
            {
              v51 = 0;
              v13 = v49;
            }

            v14 = v51;
          }

          else
          {
            v13 = v38 + 2 * v12;
          }

          ++v26;
        }

        while (v26 != v21);
      }

      if (v6)
      {
        v52 = 0;
        do
        {
          v53 = &v23[v52];
          LOWORD(v24) = v23[v52 + 1692];
          *&v24 = (v24 / v22) * 100.0;
          v25.i16[0] = v23[v52 + 1764];
          v55 = ((v25.u32[0] / v22) * 100.0) > 90.0 && *&v24 > 90.0;
          *(v18 + 6) = v55 << 31 >> 31;
          v56 = v53[1690];
          v57 = 0.0;
          v58 = 0.0;
          if (v56)
          {
            v58 = ((v53[1691] / v56) + -1.0) * 10000.0;
          }

          v59 = v53[1762];
          v60 = v59;
          if (v59)
          {
            v57 = ((v23[v52 + 1763] / v60) + -1.0) * 10000.0;
          }

          v61 = sqrtf((v57 * v57) + (v58 * v58));
          *&v24 = atan2f(v58, v57);
          *(v18 + 2) = v61;
          *(v18 + 4) = ((*&v24 * 180.0) / 3.14159265 + 0.5);
          *&v24 = (v60 + v56) / ((v72 + v72) * v65);
          *v18 = *&v24;
          v18 += 8;
          v52 += 3;
        }

        while (3 * v6 != v52);
      }

      v18 += 8 * (24 - v6);
      ++v74;
      v21 = v72;
    }

    while (v74 != v73);
    v17 = v73;
    LOBYTE(v7) = v63;
    v3 = v64;
    LOBYTE(v8) = v62;
    if (v73 > 0x10)
    {
      FLD::ComputeBinnedXtalkNeon();
    }
  }

  if (v6 >= 0x19)
  {
    FLD::ComputeBinnedXtalkNeon();
  }

  *(v3 + 6745) = v17;
  *(v3 + 6744) = v6;
  *(v3 + 6747) = v72;
  *(v3 + 6746) = v65;
  *(v3 + 6749) = v8;
  *(v3 + 6748) = v7;
}

void FLD::ComputeDetectionLogic(FLD *this, float a2, float a3, BOOL *a4, BOOL *a5, unsigned __int8 *a6)
{
  v10 = tanhf((a2 + -1000.0) * 0.01);
  *a5 = ((((v10 + 1.0) * 0.5) * 255.0) + 0.5);
  *this = v10 > 0.0;
  v11 = v10 > 0.0 && fminf(fabsf(a3 + 11.46), fabsf(a3 + -100.23)) <= 43.0;
  *a4 = v11;
}

void FLD::DetectFlare(uint64_t a1)
{
  v2 = (a1 + 4096);
  bzero((a1 + 116), 0x19A8uLL);
  v55 = 0;
  v54 = 0;
  v49 = v2[2649];
  if (v2[2649])
  {
    v5 = 0;
    v48 = v2[2648];
    v6 = v2[2652];
    v7 = (v2 + 2580);
    v8 = a1 + 2804;
    v9 = a1 + 6644;
    v10 = 8 * v6 + 192 * v2[2653];
    v11 = v10 + 7342;
    v12 = v6 + 24 * v2[2653];
    v13 = v10 + 7336;
    do
    {
      v52 = v11;
      v53 = v5;
      v50 = v13;
      v51 = v12;
      v14 = v48;
      if (v48)
      {
        do
        {
          v4.i16[0] = *(a1 + v13 + 2);
          v15 = v4.u32[0];
          v16 = *(a1 + v13 + 4);
          v17 = *(a1 + v11);
          FLD::ComputeDetectionLogic(&v56, v4.u32[0], v16, &v55, &v54, v3);
          v18 = v17 != 0;
          v19 = v55;
          v20 = v54;
          v21 = v18 & v55;
          if (!v21)
          {
            v20 = 0;
          }

          v22 = ((v15 / 250.0) + 0.5);
          v23 = (((v16 + 180.0) / 15.0) + 0.5);
          if (v22 >= 0x1F)
          {
            v22 = 31;
          }

          if (v23 >= 0x17)
          {
            v23 = 23;
          }

          if (v17)
          {
            v24 = -1;
          }

          else
          {
            v24 = 0;
          }

          v25 = (a1 + v12);
          v25[116] = v24;
          v25[1652] = v20;
          v25[500] = (fminf(v15 / 8000.0, 1.0) * 255.0);
          *(a1 + 2 * v12 + 2036) = *(a1 + v13);
          v26.i32[0] = v19;
          v26.i32[1] = !v19;
          v27 = vand_s8(vdup_n_s32(v18), v26);
          v28.i16[0] = 1;
          v28.i16[1] = v17 == 0;
          v28.i16[2] = v27.i16[0];
          v28.i16[3] = v27.i16[2];
          v4 = vadd_s16(*v7, v28);
          *v7 = v4;
          v29 = (v23 << 6) | (2 * v22);
          v30 = *(v8 + v29);
          if (v17)
          {
            ++v30;
          }

          *(v8 + v29) = v30;
          if (v21 == 1)
          {
            v31 = v15 / 1000.0;
            v32 = vcvtms_u32_f32(v15 / 1000.0);
            v33 = vcvtps_u32_f32(v15 / 1000.0);
            v34 = 7;
            if (v32 >= 7)
            {
              v35 = 7;
            }

            else
            {
              v35 = v32;
            }

            if (v32 == v33)
            {
              *v4.i32 = *(v9 + 4 * v35) + 1.0;
            }

            else
            {
              if (v33 < 7)
              {
                v34 = v33;
              }

              *(v9 + 4 * v34) = (v31 - v32) + *(v9 + 4 * v34);
              *v4.i32 = (v33 - v31) + *(v9 + 4 * v35);
            }

            *(v9 + 4 * v35) = v4.i32[0];
          }

          ++v12;
          v13 += 8;
          v11 += 8;
          --v14;
        }

        while (v14);
      }

      v5 = v53 + 1;
      v11 = v52 + 192;
      v12 = v51 + 24;
      v13 = v50 + 192;
    }

    while (v53 + 1 != v49);
  }

  v36 = 0;
  v37 = 0;
  v38 = a1 + 2804;
  v39 = a1 + 4340;
  do
  {
    v40 = 0;
    v41 = v36;
    do
    {
      v42 = *(v38 + 2 * v40);
      FLD::ComputeDetectionLogic(&v56, (v40 * 250.0) + 0.0, (v37 * 15.0) + -180.0, &v55, &v54, v3);
      if (v42)
      {
        v43 = 3 * (v40 + 32 * v37);
        *(v39 + v41) = 0;
        v44 = 8 * v42;
        if ((8 * v42) >= 0xFF)
        {
          v44 = -1;
        }
      }

      else
      {
        v44 = 0;
        v45 = v55;
        if (((v40 * 250.0) + 0.0) > 2500.0)
        {
          v46 = -1;
        }

        else
        {
          v46 = 127;
        }

        if (!v55)
        {
          v46 = 0;
        }

        v47 = (v39 + v41);
        *v47 = v46;
        v47[1] = v45 - 1;
        v43 = v41;
      }

      *(v43 + v39 + 2) = v44;
      ++v40;
      v41 += 3;
    }

    while (v40 != 32);
    ++v37;
    v38 += 64;
    v36 += 96;
  }

  while (v37 != 24);
}

void FLD::Process(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    FLD::Process();
  }

  if (!a2)
  {
    FLD::Process();
  }

  v4 = *a1;
  if (*a1 == 1)
  {
    if ((*(a1 + 113) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 84);
      v7 = *(a1 + 88);
      v8 = *(a1 + 76);
      v9 = *(a1 + 80);
      v10 = *(a1 + 108);
      v11 = *(a1 + 6752);
      v16 = 67110656;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CFLD:FLD #%07d  FLD::Process() ROI xywh:(%d %d)(%d %d) AfeDmaSize=%d tuning=%d\n", &v16, 0x2Cu);
    }

    if ((*(a1 + 6752) & 0xF0) != 0)
    {
      *(a1 + 12) = 1;
      if ((*(a1 + 113) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(v16) = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "CFLD:FLD: Neon Mode\n";
    }

    else
    {
      *(a1 + 12) = 0;
      if ((*(a1 + 113) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(v16) = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "CFLD:FLD: Scalar Mode\n";
    }

    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, v13, &v16, 2u);
LABEL_19:
    v14 = *(a1 + 12);
    if (v14 >= 2)
    {
      FLD::Process();
    }

    if (FLD::GetInputAFE(*(a1 + 72), (a1 + 24), a2, &v16))
    {
      v15 = *(a1 + 6752) & 0xF;
      if (v14)
      {
        FLD::ComputeBinnedXtalkNeon(a1, &v16, v15);
      }

      else
      {
        FLD::ComputeBinnedXtalk(a1, &v16, v15);
      }

      FLD::DetectFlare(a1);
    }

    return;
  }

  if ((*(a1 + 113) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109376;
    v17 = 1;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CFLD:incompatible context version (expected %d, got %d)\n", &v16, 0xEu);
  }

  *(a1 + 8) = 1;
}

void H16ISP::H16ISPGraphSegmentationNode::H16ISPGraphSegmentationNode(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(a1, 8);
  *v13 = &unk_283813510;
  *(v13 + 80) = a2;
  *(v13 + 88) = a3;
  *(v13 + 92) = a4;
  *(v13 + 96) = a5;
  *(v13 + 100) = a6;
  *(v13 + 104) = a7;
  *(v13 + 112) = 0;
  *(v13 + 120) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(a1, 8);
  *v13 = &unk_283813510;
  *(v13 + 80) = a2;
  *(v13 + 88) = a3;
  *(v13 + 92) = a4;
  *(v13 + 96) = a5;
  *(v13 + 100) = a6;
  *(v13 + 104) = a7;
  *(v13 + 112) = 0;
  *(v13 + 120) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
}

void H16ISP::H16ISPGraphSegmentationNode::~H16ISPGraphSegmentationNode(H16ISP::H16ISPGraphSegmentationNode *this)
{
  *this = &unk_283813510;
  H16ISP::H16ISPGraphSegmentationNode::onDeactivate(this);

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphSegmentationNode::~H16ISPGraphSegmentationNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphSegmentationNode::onDeactivate(H16ISP::H16ISPGraphSegmentationNode *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    CFRelease(v2);
    *(this + 14) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
    *(this + 17) = 0;
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphSegmentationNode::onMessageProcessing(H16ISP::H16ISPGraphSegmentationNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v2 = *(this + 30);
  if (v2)
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2000000000;
    v31[3] = 0;
    v30 = 0;
    v29 = 0;
    dispatch_semaphore_create(0);
    v5 = *(*(this + 10) + 4304);
    v6 = *(this + 22);
    v7 = *(this + 23);
    pthread_mutex_lock((a2 + 8));
    v8 = 0;
    texture = 0;
    Attachment = 0;
    v10 = 0;
    v25 = (a2 + 80);
    v28 = v5 + 8;
    key = *MEMORY[0x277CF3F70];
    v24 = a2;
    for (i = a2 + 112; ; i += 344)
    {
      v12 = v25 + 344 * v10;
      v13 = *(v12 + 5);
      if (v13)
      {
        break;
      }

LABEL_23:
      if (++v10 == 3)
      {
        v22 = Attachment;
        if (v8)
        {
          CVPixelBufferRetain(v8);
        }

        if (texture)
        {
          CVPixelBufferRetain(texture);
        }

        if (v22)
        {
          CFRetain(v22);
        }

        if (v30)
        {
          CVPixelBufferRetain(v30);
        }

        if (v29)
        {
          CVPixelBufferRetain(v29);
        }

        pthread_mutex_unlock((v24 + 8));
        operator new();
      }
    }

    v14 = 0;
    v15 = i;
    v16 = v8;
    while (1)
    {
      v8 = *(v15 - 1);
      v17 = *(v12 + 4);
      if (v2 == 2 && *(v28 + 104 * v17 + 8) == 1718186595)
      {
        if (*v15 == 15)
        {
          v18 = &v30;
        }

        else
        {
          if (*v15 != 2)
          {
            goto LABEL_12;
          }

          v18 = &v29;
        }

        *v18 = v8;
      }

LABEL_12:
      if (v17 != v6)
      {
        goto LABEL_21;
      }

      v19 = *v15;
      if (*v15 != v7)
      {
        if (v19 == 15)
        {
          v30 = v8;
        }

        else
        {
          v20 = v19 == 2;
          v21 = texture;
          if (v20)
          {
            v21 = v8;
          }

          texture = v21;
        }

LABEL_21:
        v8 = v16;
        goto LABEL_22;
      }

      Attachment = CVBufferGetAttachment(v8, key, 0);
      v13 = *(v12 + 5);
LABEL_22:
      ++v14;
      v15 += 4;
      v16 = v8;
      if (v14 >= v13)
      {
        goto LABEL_23;
      }
    }
  }

  return 0;
}

void sub_22487A390(_Unwind_Exception *a1)
{
  MEMORY[0x22AA55B60](v1, 0x1020C4076DE8769);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN6H16ISP27H16ISPGraphSegmentationNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  CFRetain(*(*(*(a1 + 32) + 8) + 24));
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void H16ISP::H16ISPGraphExclaveAttentionDetectionNode::H16ISPGraphExclaveAttentionDetectionNode(H16ISP::H16ISPGraphExclaveAttentionDetectionNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 17);
  *v5 = &unk_283813588;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 17);
  *v5 = &unk_283813588;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

void H16ISP::H16ISPGraphExclaveAttentionDetectionNode::~H16ISPGraphExclaveAttentionDetectionNode(H16ISP::H16ISPGraphExclaveAttentionDetectionNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveAttentionDetectionNode::onActivate(H16ISP::H16ISPGraphExclaveAttentionDetectionNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves]: H16ISPGraphAttentionDetectionNode::onActivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveAttentionDetectionNode::onDeactivate(H16ISP::H16ISPGraphExclaveAttentionDetectionNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves]: H16ISPGraphAttentionDetectionNode::onDeactivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveAttentionDetectionNode::AddAttentionDetectionMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v8 = *MEMORY[0x277CBECE8];
  v9 = MEMORY[0x277CBF138];
  v10 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
  v13 = CFDictionaryCreateMutable(v8, 0, v9, v10);
  v14 = CFDictionaryCreateMutable(v8, 0, v9, v10);
  v15 = CFDictionaryCreateMutable(v8, 0, v9, v10);
  v16 = v15;
  if (Mutable)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v13 == 0 || v14 == 0 || v15 == 0)
  {
    v21 = 3758097086;
    goto LABEL_33;
  }

  if (*(a3 + 288) > 0.0)
  {
    valuePtr = *(a3 + 308);
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v13, *MEMORY[0x277CF4CB8], v22);
    CFRelease(v22);
    v42 = *(a3 + 296);
    v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v42);
    CFDictionarySetValue(v13, *MEMORY[0x277CF4A48], v23);
    CFRelease(v23);
    v42 = *(a3 + 300);
    v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v42);
    CFDictionarySetValue(v13, *MEMORY[0x277CF4A40], v24);
    CFRelease(v24);
    v42 = *(a3 + 292);
    v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v42);
    CFDictionarySetValue(v13, *MEMORY[0x277CF4A38], v25);
    CFRelease(v25);
    v41 = *(a3 + 304);
    v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    CFDictionarySetValue(v13, *MEMORY[0x277CF4C98], v26);
    CFRelease(v26);
    v47.origin.x = *(a3 + 272);
    v47.origin.y = *(a3 + 276);
    v47.size.width = *(a3 + 280);
    v47.size.height = *(a3 + 284);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v47);
    if (DictionaryRepresentation)
    {
      v28 = DictionaryRepresentation;
      CFDictionarySetValue(v13, *MEMORY[0x277CF50B8], DictionaryRepresentation);
      CFRelease(v28);
    }

    v40 = (*(a3 + 288) * 1000.0);
    v29 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
    CFDictionarySetValue(v13, *MEMORY[0x277CF4B68], v29);
    CFRelease(v29);
    v30 = *MEMORY[0x277CBED28];
    v31 = *MEMORY[0x277CBED10];
    if (*(a3 + 264))
    {
      v32 = *MEMORY[0x277CBED28];
    }

    else
    {
      v32 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v13, *MEMORY[0x277CF4A58], v32);
    if (a5)
    {
      v33 = *(a3 + 348);
      if (v33 != 32 && v33 != 2048)
      {
        v30 = v31;
      }

      CFDictionarySetValue(v13, *MEMORY[0x277CF4CB0], v30);
    }

    CFArrayAppendValue(v12, v13);
    goto LABEL_32;
  }

  v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v34 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v34;
  }

  v21 = 0;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a3 + 288);
    valuePtr = 134217984;
    v45 = v35;
    _os_log_impl(&dword_2247DB000, v34, OS_LOG_TYPE_DEFAULT, "[Exclaves]: Face crop score is %f (i.e., no face in FOV). Return empty dictionary\n", &valuePtr, 0xCu);
LABEL_32:
    v21 = 0;
  }

LABEL_33:
  if (v16)
  {
    v36 = v14 == 0;
  }

  else
  {
    v36 = 1;
  }

  if (!v36 && v12 != 0)
  {
    CFDictionarySetValue(v16, *MEMORY[0x277CF4440], v12);
    v38 = CFNumberCreate(0, kCFNumberLongLongType, &v43);
    CFDictionarySetValue(v16, *MEMORY[0x277CF52E8], v38);
    CFRelease(v38);
    CFDictionarySetValue(v14, *MEMORY[0x277CF4408], v16);
    pthread_mutex_lock((a2 + 8));
    CFDictionarySetValue(*(a2 + 368), *MEMORY[0x277CF48A8], v14);
    pthread_mutex_unlock((a2 + 8));
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v21;
}

void H16ISP::H16ISPGraphExclaveAttentionDetectionNode::AddFaceIDMetadata(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFNumberCreate(0, kCFNumberSInt32Type, a3 + 348);
      CFDictionarySetValue(v8, *MEMORY[0x277CF5E98], v9);
      CFRelease(v9);
      isExclaveADRequired = H16ISP::H16ISPDevice::isExclaveADRequired(*(a1 + 88));
      v11 = MEMORY[0x277CBED10];
      v12 = 264;
      if (isExclaveADRequired)
      {
        v12 = 312;
      }

      if (a3[v12])
      {
        v11 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(v8, *MEMORY[0x277CF5EA0], *v11);
      v13 = CFNumberCreate(0, kCFNumberSInt32Type, a3 + 352);
      CFDictionarySetValue(v8, *MEMORY[0x277CF5EA8], v13);
      CFRelease(v13);
      pthread_mutex_lock((a2 + 8));
      CFDictionarySetValue(*(a2 + 368), *MEMORY[0x277CF48B8], v8);
      pthread_mutex_unlock((a2 + 8));
      CFRelease(v8);
    }
  }

  if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(a1 + 88)))
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a3 + 87);
      v16 = a3[264];
      v17 = a3[312];
      v18 = 136315906;
      v19 = "AddFaceIDMetadata";
      v20 = 1024;
      v21 = v15;
      v22 = 1024;
      v23 = v16;
      v24 = 1024;
      v25 = v17;
      _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "%s - Face ID PreCheck uxFeedback=0x%08X, hasAttention=%{BOOL}d, isUserEngaged=%{BOOL}d\n", &v18, 0x1Eu);
    }
  }
}

uint64_t H16ISP::H16ISPGraphExclaveAttentionDetectionNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  *(this + 80) = v4 != 0;
  if (v4)
  {
    pthread_mutex_lock((a2 + 8));
    v5 = *(a2 + 90);
    v6 = *(a2 + 11);
    v7 = *(a2 + 385);
    v8 = *(a2 + 386);
    pthread_mutex_unlock((a2 + 8));
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]))
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(this + 24);
        *buf = 136315650;
        v23 = "onMessageProcessing";
        v24 = 1024;
        v25 = v5;
        v26 = 1024;
        v27 = v10;
        _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "[Exclaves] H16ISPGraphAttentionDetectionNode::%s RunKit AD reqid 0x%08X channel %d\n", buf, 0x18u);
      }
    }

    bzero(&v23, 0x370uLL);
    v28 = *(this + 24);
    *buf = 393217;
    kdebug_trace();
    v11 = ispExclaveKitCommand();
    kdebug_trace();
    if (v11)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
      }

      v13 = 3758097130;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveAttentionDetectionNode::onMessageProcessing(v11, v12);
      }

      return v13;
    }

    v16 = H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]);
    if (v16)
    {
      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v17 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v17;
      }

      v16 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        v19[0] = 67109376;
        v19[1] = v28;
        v20 = 1024;
        v21 = v29[264];
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "[Exclaves]: IR AD IDL Success: channel=%u, hasAttention=%d\n", v19, 0xEu);
      }
    }

    H16ISP::H16ISPGraphExclaveAttentionDetectionNode::AddAttentionDetectionMetadata(v16, a2, v29, v6, v8);
    H16ISP::H16ISPGraphExclaveAttentionDetectionNode::AddFaceIDMetadata(this, a2, v29, v7);
    return 0;
  }

  v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v14 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
  }

  v13 = 0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 80);
    *buf = 136315394;
    v23 = "onMessageProcessing";
    v24 = 1024;
    v25 = v15;
    _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "[Exclaves] H16ISPGraphAttentionDetectionNode::%s Skipped processing secure attention detection algorithm algoProcessing %d\n", buf, 0x12u);
    return 0;
  }

  return v13;
}

uint64_t H16ISP::LoadPDEFiles(H16ISP *this, H16ISP::H16ISPDevice *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v3 = 0;
  v61 = *MEMORY[0x277D85DE8];
  v4 = (*(v2 + 538) + 8);
  v5 = -1;
  v6 = -1;
  do
  {
    v7 = v4[2];
    if (v7 == 1785950322)
    {
      if (*v4)
      {
        v6 = v3;
      }
    }

    else if (v7 == 1718186595 && *v4)
    {
      v5 = v3;
    }

    v4 += 26;
    ++v3;
  }

  while (v3 != 6);
  v8 = MEMORY[0x277CBECE8];
  if (v5 == -1)
  {
    NSLog(&cfstr_FoundNoIrSenso.isa);
    goto LABEL_67;
  }

  v9 = *MEMORY[0x277CD2898];
  v10 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v9, v10);
  v12 = *v8;
  v13 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageSNUM", *v8, 3u);
  if (v13)
  {
    CFRelease(v13);
    v15 = 0;
  }

  else
  {
    NSLog(&cfstr_LoadpdefilesNo.isa);
    v15 = 8;
  }

  isOverridden = PCECalibration::isOverridden(v14);
  v17 = isOverridden;
  NSLog(&cfstr_LoadpdefilesIs.isa, isOverridden);
  v58 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v57, "");
  v18 = [objc_msgSend(MEMORY[0x277D25710] "sharedDataAccessor")];
  if (v58)
  {

    if (!v17)
    {
      NSLog(&cfstr_CouldNotFindSe.isa);
    }
  }

  else
  {
    v19 = v18;
    std::string::__assign_external(&v57, [v18 UTF8String]);
    std::string::append(&v57, "/", 1uLL);

    if (!v17)
    {
      getMultiReferenceFileName(&v57.__r_.__value_.__l.__data_, 5, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0].__r_.__value_.__r.__words[0];
      }

      v21 = fopen(v20, "r");
      v22 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if (v21)
      {
        v23 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = __p;
        }

        NSLog(&cfstr_FoundReference.isa, v23);
        v15 |= 1u;
        fclose(v21);
      }

      else
      {
        v24 = __p[0].__r_.__value_.__r.__words[0];
        v25 = __error();
        v26 = __p;
        if (v22 < 0)
        {
          v26 = v24;
        }

        NSLog(&cfstr_CouldNotFindRe.isa, v26, *v25);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  H16ISP::H16ISPDevice::ISP_GetCameraStatus(v2, outputStruct);
  v27 = outputStruct[11];
  IsSupportedFrontAutoFocus = H16ISP::H16ISPDevice::ISP_IsSupportedFrontAutoFocus(v2);
  if (v27)
  {
    v29 = v15 | 2;
  }

  else
  {
    v29 = v15;
  }

  if (IsSupportedFrontAutoFocus)
  {
    v30 = 4;
  }

  else
  {
    v30 = 16;
  }

  v31 = PCECalibration::configure(v29 | v30);
  PCECalibration::resetFdrValidation(v31);
  __p[0].__r_.__value_.__r.__words[0] = 0;
  if (PCECalibration::readNVMBuffer(__p, v32))
  {
    operator new[]();
  }

  NSLog(&cfstr_ErrorCouldnTSe.isa);
  bzero(__p, 0x14uLL);
  NSLog(&cfstr_ReadingRosalin.isa);
  v33 = IOServiceNameMatching("product");
  v34 = IOServiceGetMatchingService(v9, v33);
  v35 = IORegistryEntrySearchCFProperty(v34, "IOService", @"rosaline-serial-num", v12, 3u);
  v36 = v35;
  if (!v35)
  {
    NSLog(&cfstr_CouldnTReadSer.isa);
    goto LABEL_54;
  }

  BytePtr = CFDataGetBytePtr(v35);
  Length = CFDataGetLength(v36);
  memcpy(&__p[0].__r_.__value_.__s.__data_[2], BytePtr, Length);
  NSLog(&cfstr_ReadingRosalin_0.isa);
  LOBYTE(BytePtr) = PCECalibration::readRosalineConfiguration(__p, v39);
  CFRelease(v36);
  if ((BytePtr & 1) == 0)
  {
    NSLog(&cfstr_ReadingRosalin_1.isa);
    v40 = IOServiceNameMatching("AppleProxHIDEventDriver");
    v41 = IOServiceGetMatchingService(v9, v40);
    v42 = IORegistryEntrySearchCFProperty(v41, "IOService", @"floodCalibrationCurrent", v12, 3u);
    v43 = v42;
    if (v42)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v42, kCFNumberSInt32Type, &valuePtr))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = valuePtr;
        if (valuePtr < 0x10000)
        {
          CFRelease(v43);
          goto LABEL_51;
        }

        NSLog(&cfstr_ErrorConvertin_0.isa);
      }

      else
      {
        NSLog(&cfstr_ErrorConvertin_1.isa);
      }

      CFRelease(v43);
    }

    else
    {
      NSLog(&cfstr_CouldNotReadCa.isa);
    }

    NSLog(&cfstr_ReadingRosalin_2.isa);
    v44 = IOServiceNameMatching("isp");
    v45 = IOServiceGetMatchingService(v9, v44);
    v46 = IORegistryEntrySearchCFProperty(v45, "IOService", @"rosaline-calibration-current", v12, 3u);
    v47 = v46;
    if (!v46)
    {
      NSLog(&cfstr_CouldNotReadCa_0.isa);
      goto LABEL_54;
    }

    LOWORD(__p[0].__r_.__value_.__l.__data_) = *(CFDataGetBytePtr(v46) + 1);
    CFRelease(v47);
  }

LABEL_51:
  NSLog(&cfstr_SendingRosalin.isa, &__p[0].__r_.__value_.__s.__data_[2], LOWORD(__p[0].__r_.__value_.__l.__data_));
  DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(v2, v5, __p, 0x14u, 6u);
  if (!DataFile)
  {
    goto LABEL_55;
  }

  NSLog(&cfstr_FailedToSendRo_0.isa, DataFile);
LABEL_54:
  NSLog(&cfstr_ErrorCouldnTSe_0.isa);
LABEL_55:
  bzero(__p, 0x3400uLL);
  if ((PCECalibration::fill(v2, __p) & 1) == 0)
  {
    NSLog(&cfstr_FailedToReadPc.isa);
    goto LABEL_64;
  }

  if (v29)
  {
    v49 = &v57;
  }

  else
  {
    v49 = g_baseConfigurationDirectory;
  }

  if (sendReferences(v2, &v49->__r_.__value_.__l.__data_, v5))
  {
    NSLog(&cfstr_FailedToSendRe.isa);
LABEL_64:
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    NSLog(&cfstr_FailedToLoadPd.isa);
    goto LABEL_67;
  }

  if (H16ISP::H16ISPDevice::ISP_LoadDataFile(v2, v5, __p, 0x3400u, 0xFFu))
  {
    NSLog(&cfstr_FailedToSendPc.isa);
    goto LABEL_64;
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

LABEL_67:
  if (v6 != -1)
  {
    H16ISP::H16ISPDevice::ISP_GetCameraStatus(v2, __p);
    if (__p[0].__r_.__value_.__s.__data_[11])
    {
      v50 = 2;
    }

    else
    {
      v50 = 0;
    }

    v51 = IOServiceNameMatching("AppleH16CamIn");
    v52 = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v51);
    v53 = IORegistryEntrySearchCFProperty(v52, "IOService", @"JasperSNUM", *v8, 3u);
    if (v53)
    {
      CFRelease(v53);
    }

    else
    {
      NSLog(&cfstr_LoadpdefilesNo_0.isa);
      v50 = v50 | 8;
    }

    PCECalibration::configure(v50);
    v54 = JasperCalibration::get(v2, 1);
    if (v54)
    {
      CFRelease(v54);
    }

    else
    {
      NSLog(&cfstr_FailedToCreate_8.isa);
      NSLog(&cfstr_FailedToLoadJa.isa);
    }
  }

  return 1;
}

void sub_22487B838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getMultiReferenceFileName(const void **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "reference", &v13);
  if ((a2 - 4) > 0xA)
  {
    v5 = "";
  }

  else
  {
    v5 = off_278530EF0[a2 - 4];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v13, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, ".plist", 6uLL);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_22487B988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sendReferences(uint64_t a1, const void **a2, int a3)
{
  v19 = 256;
  v6 = MEMORY[0x277CBEAC0];
  v7 = MEMORY[0x277CCACA8];
  getMultiReferenceFileName(a2, 4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  processReferenceList(a1, a3, [v6 dictionaryWithContentsOfFile:{objc_msgSend(v7, "stringWithUTF8String:", p_p)}], a2, 2, &v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = MEMORY[0x277CBEAC0];
  v10 = MEMORY[0x277CCACA8];
  getMultiReferenceFileName(a2, 5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  v12 = processReferenceList(a1, a3, [v9 dictionaryWithContentsOfFile:{objc_msgSend(v10, "stringWithUTF8String:", v11)}], a2, 1, &v19);
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      return v13;
    }
  }

  else if (v12)
  {
    return v13;
  }

  v14 = MEMORY[0x277CBEAC0];
  v15 = MEMORY[0x277CCACA8];
  getMultiReferenceFileName(a2, 12, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  processReferenceList(a1, a3, [v14 dictionaryWithContentsOfFile:{objc_msgSend(v15, "stringWithUTF8String:", v16)}], a2, 3, &v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_22487BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t H16ISP::DepthFrontRotatedConfigurations::getPreset(H16ISP::DepthFrontRotatedConfigurations *this, int a2, int a3)
{
  v3 = this;
  result = 0;
  v5 = &word_281003890;
  do
  {
    if (*(v5 - 2) == v3 && *(v5 - 1) == a2 && *v5 == a3)
    {
      break;
    }

    ++result;
    v5 += 6;
  }

  while (result != 8);
  return result;
}

uint64_t H16ISP::DepthFrontRotatedConfigurations::getWidthOfPreset(H16ISP::DepthFrontRotatedConfigurations *this)
{
  if (this <= 7)
  {
    return *(&H16ISP::PCEFrontRotatedPresets + 3 * this);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthFrontRotatedConfigurations::getHeightOfPreset(H16ISP::DepthFrontRotatedConfigurations *this)
{
  if (this <= 7)
  {
    return *(&H16ISP::PCEFrontRotatedPresets + 3 * this + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthFrontRotatedConfigurations::getRegistrationOfPreset(H16ISP::DepthFrontRotatedConfigurations *this)
{
  if (this <= 7)
  {
    return *(&H16ISP::PCEFrontRotatedPresets + 12 * this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthFrontRotatedConfigurations::supports(unsigned int a1, int a2)
{
  if (a1 > 7 || (v2 = &H16ISP::PCEFrontRotatedPresets + 3 * a1, *v2 < 1))
  {
    v3 = 0;
  }

  else
  {
    v3 = (a2 == 11) | *(v2 + 9) ^ 1;
  }

  return v3 & 1;
}

uint64_t H16ISP::DepthFrontConfigurations::getPreset(H16ISP::DepthFrontConfigurations *this, int a2, int a3)
{
  v3 = this;
  result = 0;
  v5 = &word_281003970;
  do
  {
    if (*(v5 - 2) == v3 && *(v5 - 1) == a2 && *v5 == a3)
    {
      break;
    }

    ++result;
    v5 += 6;
  }

  while (result != 8);
  return result;
}

uint64_t H16ISP::DepthFrontConfigurations::getWidthOfPreset(H16ISP::DepthFrontConfigurations *this)
{
  if (this <= 7)
  {
    return *(&H16ISP::PCEFrontPresets + 3 * this);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthFrontConfigurations::getHeightOfPreset(H16ISP::DepthFrontConfigurations *this)
{
  if (this <= 7)
  {
    return *(&H16ISP::PCEFrontPresets + 3 * this + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthFrontConfigurations::getRegistrationOfPreset(H16ISP::DepthFrontConfigurations *this)
{
  if (this <= 7)
  {
    return *(&H16ISP::PCEFrontPresets + 12 * this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthFrontConfigurations::supports(unsigned int a1, int a2)
{
  if (a1 > 7 || (v2 = &H16ISP::PCEFrontPresets + 3 * a1, *v2 < 1))
  {
    v3 = 0;
  }

  else
  {
    v3 = (a2 == 11) | *(v2 + 9) ^ 1;
  }

  return v3 & 1;
}

uint64_t H16ISP::DepthRearConfigurations::supports(H16ISP::DepthRearConfigurations *this)
{
  if (this > 4 || (v1 = &H16ISP::PCERearPresets + 3 * this, *v1 < 1))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 9);
  }

  return v2 & 1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t processReferenceList(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = 3758097084;
  if (a3)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v13 = [a3 allKeys];
    v32[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"doubleValue" ascending:1];
    v14 = [v13 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v32, 1)}];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v15 = [a3 objectForKey:@"FormatDR"];
    if (v15)
    {
      v16 = [v15 intValue];
      *(v27 + 6) = v16;
    }

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3052000000;
    v25[3] = __Block_byref_object_copy__1;
    v25[4] = __Block_byref_object_dispose__1;
    v25[5] = &unk_2838200F8;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZL20processReferenceListPN6H16ISP12H16ISPDeviceEjP12NSDictionaryRKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEiPi_block_invoke;
    v18[3] = &unk_278530ED0;
    v18[4] = a3;
    v18[5] = v25;
    v19 = a2;
    v20 = a5;
    v18[10] = a1;
    v18[11] = a6;
    v18[6] = v30;
    v18[7] = &v26;
    v18[8] = &v21;
    v18[9] = a4;
    [v14 enumerateObjectsUsingBlock:v18];
    if (*(v22 + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = 3758097084;
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(v30, 8);
  }

  return v6;
}

void sub_22487C160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void ___ZL20processReferenceListPN6H16ISP12H16ISPDeviceEjP12NSDictionaryRKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEiPi_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([*(*(*(a1 + 40) + 8) + 40) containsObject:a2] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKey:a2];
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = [v7 UTF8String];
      v10 = v9;
      if (*(v8 + 23) >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = v8[1];
      }

      v12 = strlen(v9);
      v13 = __p;
      std::string::basic_string[abi:ne200100](__p, v11 + v12);
      if (v25 < 0)
      {
        v13 = __p[0];
      }

      if (v11)
      {
        if (*(v8 + 23) >= 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *v8;
        }

        memmove(v13, v14, v11);
      }

      v15 = v13 + v11;
      if (v12)
      {
        memmove(v15, v10, v12);
      }

      v15[v12] = 0;
      if (v25 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = *(a1 + 88);
      v18 = *v17;
      *v17 = v18 + 1;
      v19 = *(*(*(a1 + 48) + 8) + 24);
      [a2 doubleValue];
      v21 = v20;
      NSLog(&cfstr_SendingReferen.isa, v16, v18);
      NSLog(&cfstr_TryingToLoadRe.isa, v16, v18, v19, v21);
      v22 = fopen(v16, "rb");
      v23 = v22;
      if (v22)
      {
        fseeko(v22, 0, 2);
        ftello(v23);
        fseeko(v23, 0, 0);
        operator new[]();
      }

      NSLog(&cfstr_CouldNotOpenIn.isa, v16);
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_22487C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double _GLOBAL__sub_I_H16ISPDepthProcessing_mm()
{
  std::string::basic_string[abi:ne200100]<0>(g_baseConfigurationDirectory, "/var/mobile/Library/ISP/Pearl/");
  __cxa_atexit(MEMORY[0x277D82640], g_baseConfigurationDirectory, &dword_2247DB000);
  H16ISP::PCEFrontRotatedPresets = 0x29000000228;
  word_281003890 = 0;
  unk_281003894 = 0x100000000D8;
  word_28100389C = 0;
  qword_2810038A0 = 0x16800000280;
  word_2810038A8 = 1;
  unk_2810038AC = 0x1E000000280;
  word_2810038B4 = 1;
  qword_2810038B8 = 0x148000000B8;
  word_2810038C0 = 1;
  unk_2810038C4 = vdup_n_s32(0x280u);
  word_2810038CC = 257;
  qword_2810038D0 = 0x12000000200;
  word_2810038D8 = 257;
  unk_2810038DC = 0x20000000120;
  word_2810038E4 = 257;
  H16ISP::PCEFrontPresets = 0x29000000228;
  word_281003970 = 0;
  unk_281003974 = 0x100000000D8;
  word_28100397C = 0;
  qword_281003980 = 0x28000000168;
  word_281003988 = 1;
  unk_28100398C = 0x280000001E0;
  word_281003994 = 1;
  qword_281003998 = 0x148000000B8;
  word_2810039A0 = 1;
  unk_2810039A4 = unk_2810038C4;
  word_2810039AC = 257;
  qword_2810039B0 = 0x12000000200;
  word_2810039B8 = 257;
  unk_2810039BC = 0x20000000120;
  word_2810039C4 = 257;
  H16ISP::PCERearPresets = 0xF000000140;
  word_2810039D0 = 256;
  unk_2810039D4 = 0x78000000A0;
  word_2810039DC = 0;
  qword_2810039E0 = 0xB400000140;
  word_2810039E8 = 256;
  unk_2810039EC = 0x5A000000A0;
  word_2810039F4 = 0;
  *&result = 0xB800000148;
  qword_2810039F8 = 0xB800000148;
  word_281003A00 = 256;
  return result;
}

void AppleH16PhotonDetectorDevice::AppleH16PhotonDetectorDevice(AppleH16PhotonDetectorDevice *this, int a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init((this + 8), &v3);
  pthread_mutexattr_destroy(&v3);
}

void AppleH16PhotonDetectorDevice::~AppleH16PhotonDetectorDevice(AppleH16PhotonDetectorDevice *this)
{
  if (*(this + 1))
  {
    AppleH16PhotonDetectorDevice::DeviceClose(this);
  }

  pthread_mutex_destroy((this + 8));
  *this = 0;
}

uint64_t AppleH16PhotonDetectorDevice::DeviceClose(AppleH16PhotonDetectorDevice *this)
{
  pthread_mutex_lock((this + 8));
  v2 = *(this + 1);
  if (v2)
  {
    IOConnectCallScalarMethod(v2, 1u, 0, 0, 0, 0);
    IOServiceClose(*(this + 1));
    v3 = 0;
    *(this + 1) = 0;
  }

  else
  {
    v3 = 3758097101;
  }

  pthread_mutex_unlock((this + 8));
  return v3;
}

uint64_t AppleH16PhotonDetectorDevice::DeviceOpen(AppleH16PhotonDetectorDevice *this)
{
  pthread_mutex_lock((this + 8));
  if (*(this + 1))
  {
    v2 = 3758097093;
  }

  else
  {
    v3 = IOServiceOpen(*this, *MEMORY[0x277D85F48], 0x63u, this + 1);
    v4 = *(this + 1);
    if (v4)
    {
      v2 = v3;
    }

    else
    {
      v2 = 3758097088;
    }

    if (!v2)
    {
      v2 = IOConnectCallScalarMethod(v4, 0, 0, 0, 0, 0);
    }
  }

  pthread_mutex_unlock((this + 8));
  return v2;
}

uint64_t AppleH16PhotonDetectorDevice::PowerOnDevice(AppleH16PhotonDetectorDevice *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 2u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t AppleH16PhotonDetectorDevice::PowerOffDevice(AppleH16PhotonDetectorDevice *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 3u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097101;
  }
}

uint64_t AppleH16PhotonDetectorDevice::GetGainInfo(AppleH16PhotonDetectorDevice *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  outputStruct = 0;
  v7 = 2;
  v3 = *(this + 1);
  if (!v3)
  {
    return 3758097101;
  }

  result = IOConnectCallStructMethod(v3, 4u, 0, 0, &outputStruct, &v7);
  if (!result)
  {
    *a2 = outputStruct;
    *a3 = HIBYTE(outputStruct);
  }

  return result;
}

uint64_t AppleH16PhotonDetectorDevice::ReadReg(AppleH16PhotonDetectorDevice *this, char a2, unsigned __int8 *a3, unsigned int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&inputStruct[1], 0, 14);
  outputStruct[0] = 0;
  outputStruct[1] = 0;
  v8 = 16;
  inputStruct[0] = a2;
  inputStruct[15] = a4;
  v4 = *(this + 1);
  if (!v4)
  {
    return 3758097101;
  }

  result = IOConnectCallStructMethod(v4, 5u, inputStruct, 0x10uLL, outputStruct, &v8);
  if (!result)
  {
    memcpy(a3, outputStruct + 1, a4);
    return 0;
  }

  return result;
}

uint64_t AppleH16PhotonDetectorDevice::WriteReg(AppleH16PhotonDetectorDevice *this, char a2, unsigned __int8 *__src, size_t __n)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = 3758097090;
  if (__n <= 0xE)
  {
    memset(v9, 0, sizeof(v9));
    inputStruct = a2;
    v10 = __n;
    memcpy(v9, __src, __n);
    v6 = *(this + 1);
    if (v6)
    {
      return IOConnectCallStructMethod(v6, 6u, &inputStruct, 0x10uLL, 0, 0);
    }

    else
    {
      return 3758097101;
    }
  }

  return v4;
}

void AppleH16PhotonDetectorDevice::ReadCalibrationData(AppleH16PhotonDetectorDevice *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 && a3)
  {
    v5 = *MEMORY[0x277CD2898];
    v6 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    v8 = *MEMORY[0x277CBECE8];
    v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"photon-detector-cal-data", *MEMORY[0x277CBECE8], 3u);
    if (v9)
    {
      v10 = v9;
      Length = CFDataGetLength(v9);
      BytePtr = CFDataGetBytePtr(v10);
      memmove(a2, BytePtr, Length);
      CFRelease(v10);
    }

    v13 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"photon-detector-cal-data-offset", v8, 3u);
    if (v13)
    {
      v14 = v13;
      v15 = CFDataGetLength(v13);
      v16 = CFDataGetBytePtr(v14);
      memmove(a3, v16, v15);

      CFRelease(v14);
    }
  }

  else
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      AppleH16PhotonDetectorDevice::ReadCalibrationData(v17);
    }
  }
}

uint64_t CopyBufferQueue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 698) == 1)
  {
    *a2 = 0;
    return 4294954509;
  }

  else
  {
    result = *(a3 + 24);
    *a2 = result;
    if (result)
    {
      CFRetain(result);
      return 0;
    }
  }

  return result;
}

uint64_t CopyStillImageBufferQueue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 698) == 1)
  {
    *a2 = 0;
    return 4294954509;
  }

  else
  {
    result = *(a3 + 32);
    *a2 = result;
    if (result)
    {
      CFRetain(result);
      return 0;
    }
  }

  return result;
}

uint64_t CopySupportedFormatsArray(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  *(&v496[2] + 4) = *MEMORY[0x277D85DE8];
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1785950322);
  v8 = *MEMORY[0x277CBECE8];
  theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!theArray)
  {
    return 4294954516;
  }

  v358 = a2;
  v9 = *(*(v5 + 24) + 4304);
  if (CFArrayGetCount(*(a3 + 136)))
  {
    v10 = 0;
    v417 = 0;
    key = *MEMORY[0x277CF6BF0];
    v379 = *MEMORY[0x277CF6C10];
    v378 = *MEMORY[0x277CF6C18];
    v387 = *MEMORY[0x277CF6BE8];
    v11 = *MEMORY[0x277CBED28];
    v382 = *MEMORY[0x277CF6C20];
    v404 = *MEMORY[0x277CF6C08];
    v12 = *MEMORY[0x277CBED10];
    v403 = *MEMORY[0x277CF6BF8];
    v402 = *MEMORY[0x277CF6C00];
    v401 = *MEMORY[0x277CF69B0];
    v400 = *MEMORY[0x277CF69D8];
    v399 = *MEMORY[0x277CF69C0];
    v398 = *MEMORY[0x277CF69D0];
    v397 = *MEMORY[0x277CF64C0];
    v396 = *MEMORY[0x277CF64A8];
    v395 = *MEMORY[0x277CF69C8];
    v394 = *MEMORY[0x277CF6518];
    v393 = *MEMORY[0x277CF69B8];
    v392 = *MEMORY[0x277CF6508];
    v391 = *MEMORY[0x277CF6520];
    v390 = *MEMORY[0x277CF64E8];
    v389 = *MEMORY[0x277CF64E0];
    v381 = *MEMORY[0x277CF69A0];
    v359 = *MEMORY[0x277CF6510];
    v385 = *MEMORY[0x277CF69A8];
    v329 = 136315394;
    v388 = *MEMORY[0x277CF6500];
    v370 = *MEMORY[0x277CF6538];
    v373 = *MEMORY[0x277CF64B0];
    v374 = *MEMORY[0x277CF64B8];
    v376 = *MEMORY[0x277CF64D8];
    v377 = *MEMORY[0x277CF64D0];
    v380 = *MEMORY[0x277CF64F8];
    cf1 = *MEMORY[0x277CBEEE8];
    v344 = *MEMORY[0x277CF6528];
    v372 = *MEMORY[0x277CF64F0];
    v360 = *MEMORY[0x277CF64C8];
    v414 = *MEMORY[0x277CF66B8];
    v413 = *MEMORY[0x277CF66A8];
    v412 = *MEMORY[0x277CF66A0];
    v411 = *MEMORY[0x277CF6698];
    v368 = *MEMORY[0x277CF66C8];
    v367 = *MEMORY[0x277CF6588];
    v410 = *MEMORY[0x277CF6700];
    v409 = *MEMORY[0x277CF66F8];
    v357 = *MEMORY[0x277CF66C0];
    v356 = *MEMORY[0x277CF66B0];
    v386 = *MEMORY[0x277CF6680];
    v408 = *MEMORY[0x277CF6688];
    v407 = *MEMORY[0x277CF66D0];
    v406 = *MEMORY[0x277CF66E0];
    v355 = *MEMORY[0x277CF6640];
    v13 = SupportedOutputFormatsRaw;
    if (isSensorType)
    {
      v13 = SupportedOutputFormatsJasperSensor;
    }

    v353 = v13;
    v354 = *MEMORY[0x277CF6658];
    v352 = *MEMORY[0x277CF6628];
    v363 = *MEMORY[0x277CF6278];
    v362 = *MEMORY[0x277CF6270];
    v371 = *MEMORY[0x277CF6268];
    v351 = *MEMORY[0x277CF6660];
    v342 = *MEMORY[0x277CF6668];
    v349 = *MEMORY[0x277CF6670];
    v350 = *MEMORY[0x277CF6678];
    v348 = *MEMORY[0x277CF6650];
    v366 = *MEMORY[0x277CF6648];
    v333 = *MEMORY[0x277CF66D8];
    v338 = *MEMORY[0x277CF65B8];
    v336 = *MEMORY[0x277CF6638];
    v337 = *MEMORY[0x277CF6590];
    v346 = *MEMORY[0x277CF4878];
    v347 = *MEMORY[0x277CF4888];
    v332 = *MEMORY[0x277CF48D0];
    v343 = *MEMORY[0x277CF48A8];
    v330 = *MEMORY[0x277CF48A0];
    v331 = *MEMORY[0x277CF48C8];
    v334 = *MEMORY[0x277CF48B8];
    v335 = *MEMORY[0x277CF48B0];
    v345 = *MEMORY[0x277CF4630];
    v341 = *MEMORY[0x277CF3EF8];
    v339 = *MEMORY[0x277CF6690];
    v340 = *MEMORY[0x277CF3EC0];
    v375 = *MEMORY[0x277CF6530];
    v365 = *MEMORY[0x277CF6630];
    v369 = v9;
    v416 = v9 + 8;
    if (isSensorType)
    {
      v14 = *MEMORY[0x277CBED10];
    }

    else
    {
      v14 = *MEMORY[0x277CBED28];
    }

    value = v14;
    v405 = v5;
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        break;
      }

LABEL_367:
      if (++v10 >= CFArrayGetCount(*(a3 + 136)))
      {
        goto LABEL_371;
      }
    }

    v16 = Mutable;
    if (v10 >= *(a3 + 192))
    {
      v17 = *(a3 + 192);
    }

    else
    {
      v17 = 0;
    }

    if ((*(a3 + 698) & 1) == 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 136), v10);
      CFDictionarySetValue(v16, key, ValueAtIndex);
    }

    v19 = (v10 - v17);
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(v5 + 24), *(a3 + 156), *(*(a3 + 184) + 120 * v19 + 16), &v440, v470))
    {
      v417 = -12780;
    }

    else
    {
      v21 = *(a3 + 184);
      v22 = *(a3 + 48);
      v23 = *(a3 + 192);
      if (v22 < v23)
      {
        v23 = 0;
      }

      v24 = 120 * (v22 - v23);
      if (v21)
      {
        v25 = v21 + 120 * v19;
      }

      else
      {
        v25 = v24;
      }

      v26 = *(v25 + 108);
      if (v26 == 0.0)
      {
        v27 = v445;
      }

      else
      {
        v27 = v26 * 256.0;
      }

      valuePtr[0] = v27 * 0.0039062;
      v28 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      CFDictionarySetValue(v16, v379, v28);
      CFRelease(v28);
      if (v446)
      {
        v29 = (v446 >> 8) + 1;
      }

      else
      {
        v29 = v446 >> 8;
      }

      LODWORD(__dst[0]) = v29;
      v30 = CFNumberCreate(0, kCFNumberIntType, __dst);
      CFDictionarySetValue(v16, v378, v30);
      CFRelease(v30);
    }

    if (*(*(a3 + 184) + 120 * v19 + 114) != 1 || v10 >= *(a3 + 192))
    {
      CFDictionarySetValue(v16, v387, v11);
    }

    if ((*(a3 + 698) & 1) == 0)
    {
      LOWORD(v20) = v442;
      v31 = *(*(a3 + 184) + 120 * v19 + 4) / v20;
      valuePtr[0] = v31;
      v32 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      CFDictionarySetValue(v16, v382, v32);
      CFRelease(v32);
    }

    if (v443 | v444)
    {
      v33 = v11;
    }

    else
    {
      v33 = v12;
    }

    CFDictionarySetValue(v16, v404, v33);
    v439 = 1;
    if (v443 == 2)
    {
      v439 = 4;
    }

    else if (v443 == 1)
    {
      v439 = 2;
    }

    v34 = CFNumberCreate(0, kCFNumberIntType, &v439);
    CFDictionarySetValue(v16, v403, v34);
    CFRelease(v34);
    v438 = 1;
    if (v444 == 2)
    {
      v438 = 4;
    }

    else if (v444 == 1)
    {
      v438 = 2;
    }

    v35 = CFNumberCreate(0, kCFNumberIntType, &v438);
    CFDictionarySetValue(v16, v402, v35);
    CFRelease(v35);
    if (v447 >= 0xFFFF)
    {
      v36 = v12;
    }

    else
    {
      v36 = v11;
    }

    CFDictionarySetValue(v16, v401, v36);
    if (v448 > 2)
    {
      if (v448 == 3)
      {
        v38 = 14;
        goto LABEL_59;
      }

      if (v448 == 15)
      {
        v37 = 16;
        goto LABEL_55;
      }
    }

    else
    {
      if (!v448)
      {
        v38 = 8;
        goto LABEL_59;
      }

      if (v448 == 2)
      {
        v37 = 12;
LABEL_55:
        v437 = v37;
        goto LABEL_60;
      }
    }

    v38 = 10;
LABEL_59:
    v437 = v38;
LABEL_60:
    v39 = CFNumberCreate(0, kCFNumberIntType, &v437);
    CFDictionarySetValue(v16, v400, v39);
    CFRelease(v39);
    v436 = v450;
    v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v436);
    CFDictionarySetValue(v16, v399, v40);
    CFRelease(v40);
    v435 = v451;
    v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v435);
    CFDictionarySetValue(v16, v398, v41);
    CFRelease(v41);
    v434 = v452;
    v42 = CFNumberCreate(0, kCFNumberFloatType, &v434);
    CFDictionarySetValue(v16, v397, v42);
    CFRelease(v42);
    v433 = v453;
    v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v433);
    CFDictionarySetValue(v16, v396, v43);
    CFRelease(v43);
    v432 = v455;
    v44 = CFNumberCreate(0, kCFNumberIntType, &v432);
    if (*(a3 + 698))
    {
      v45 = v394;
    }

    else
    {
      v45 = v395;
    }

    CFDictionarySetValue(v16, v45, v44);
    CFRelease(v44);
    v431 = v456;
    v46 = CFNumberCreate(0, kCFNumberIntType, &v431);
    if (*(a3 + 698))
    {
      v47 = v392;
    }

    else
    {
      v47 = v393;
    }

    CFDictionarySetValue(v16, v47, v46);
    CFRelease(v46);
    if (*(*(a3 + 184) + 120 * v19 + 104))
    {
      v48 = v11;
    }

    else
    {
      v48 = v12;
    }

    CFDictionarySetValue(v16, v391, v48);
    if (v457)
    {
      v49 = v11;
    }

    else
    {
      v49 = v12;
    }

    CFDictionarySetValue(v16, v390, v49);
    v430 = v458;
    v50 = CFNumberCreate(0, kCFNumberIntType, &v430);
    CFDictionarySetValue(v16, v389, v50);
    CFRelease(v50);
    if ((*(a3 + 698) & 1) == 0)
    {
      v55 = (*(a3 + 184) + 120 * v19);
      LODWORD(v51) = v55[5];
      LODWORD(v52) = v55[6];
      v497.origin.x = v51;
      v497.origin.y = v52;
      LODWORD(v53) = v55[7];
      LODWORD(v54) = v55[8];
      v497.size.width = v53;
      v497.size.height = v54;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v497);
      CFDictionarySetValue(v16, v381, DictionaryRepresentation);
      CFRelease(DictionaryRepresentation);
    }

    bzero(valuePtr, 0x9CuLL);
    v58 = *(a3 + 156);
    if (!*(v416 + 104 * v58) || H16ISP::H16ISPDevice::ISP_GetModuleParams(*(v5 + 24), v58, valuePtr))
    {
      v59 = 0;
      goto LABEL_77;
    }

    v59 = v469;
    if (*(a3 + 698) != 1 || (v59 = v469, !v459[0]))
    {
LABEL_77:
      *v429 = 0;
      *v428 = 0;
      v60 = *(a3 + 184);
      v61 = v60 + 120 * v19;
      if (*(v61 + 36) == 1)
      {
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        v64 = *(v61 + 56);
        v65 = *(v61 + 60);
        v66 = *(v61 + 40);
        v67 = *(v61 + 44);
        v68 = *(v61 + 20);
        v69 = *(v61 + 24);
        if (*(v61 + 92))
        {
          v71 = *(v61 + 96);
          v70 = *(v61 + 100);
        }

        else
        {
          v71 = *(v61 + 28);
          v70 = *(v61 + 32);
        }

        H16ISP::CalculateTotalCrop(0, 0, v62, v63, v64, v65, v66, v67, v68, v69, v71, v70, &v429[1], v429, &v428[1], v428, v329);
      }

      else
      {
        if (*(v61 + 92))
        {
          v72 = 0;
          *v429 = 0;
          v73 = v60 + 120 * v19;
          v74 = (v73 + 96);
          v75 = (v73 + 100);
        }

        else
        {
          v429[1] = *(v61 + 20);
          v76 = (v60 + 120 * v19);
          v429[0] = v76[6];
          v74 = v76 + 7;
          v75 = v76 + 8;
          v72 = 2 * v429[1];
        }

        v77 = *v74;
        v428[1] = v77;
        v428[0] = *v75;
        if (v454)
        {
          v428[1] = 2 * v77;
          v429[1] = v72;
        }
      }

      if (v443 >= 3u)
      {
        fprintf(*MEMORY[0x277D85DF8], "Unexpected binning mode 0x%08x \n", v443);
        v78 = 1.0;
        if (!v59)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v78 = dbl_2249BBEF8[v443];
        if (!v59)
        {
          goto LABEL_98;
        }
      }

      v79 = v59[3];
      if (v79 <= 0.0)
      {
        LODWORD(v57) = v428[1];
        v81 = v78 * v57;
        if (v459[0] == 2)
        {
          v82 = 2.0;
        }

        else
        {
          v82 = 1.0;
        }

        v80 = atan(v81 * (v59[2] * v82) / 1000.0 / (v59[1] + v59[1])) * 114.591559;
      }

      else
      {
        v80 = v79;
      }

      *__dst = v80;
      v83 = CFNumberCreate(0, kCFNumberDoubleType, __dst);
      CFDictionarySetValue(v16, v385, v83);
      CFRelease(v83);
LABEL_98:
      v427 = v449 != 0;
      v84 = CFNumberCreate(0, kCFNumberSInt32Type, &v427);
      CFDictionarySetValue(v16, v388, v84);
      CFRelease(v84);
      if (H16ISP::H16ISPDevice::GetLSCCoefficients(*(v5 + 24), *(a3 + 156), *(*(a3 + 184) + 120 * v19 + 16), __dst))
      {
        v417 = -12780;
      }

      else
      {
        v87 = v5;
        v88 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
        if (v88)
        {
          v89 = v88;
          *buf = __dst[2] * 1.38777878e-17;
          v90 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v90);
          CFRelease(v90);
          *buf = __dst[3] * 1.38777878e-17;
          v91 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v91);
          CFRelease(v91);
          *buf = __dst[4] * 1.38777878e-17;
          v92 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v92);
          CFRelease(v92);
          *buf = __dst[5] * 1.38777878e-17;
          v93 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v93);
          CFRelease(v93);
          *buf = __dst[6] * 1.38777878e-17;
          v94 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v94);
          CFRelease(v94);
          *buf = __dst[7] * 1.38777878e-17;
          v95 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v95);
          CFRelease(v95);
          *buf = __dst[8] * 1.38777878e-17;
          v96 = CFNumberCreate(0, kCFNumberDoubleType, buf);
          CFArrayAppendValue(v89, v96);
          CFRelease(v96);
          CFDictionarySetValue(v16, v370, v89);
          CFRelease(v89);
        }

        v5 = v87;
      }

      if (*(a3 + 698) != 1)
      {
        goto LABEL_366;
      }

      v97 = *(a3 + 184);
      if ((*(v97 + 120 * v19 + 36) & 1) != 0 || v454)
      {
        *buf = 0;
        HIDWORD(v425) = 0;
        v98 = v97 + 120 * v19;
        if (*(v98 + 36) == 1)
        {
          *buf = *(v98 + 40);
          HIDWORD(v425) = *(v97 + 120 * v19 + 44);
        }

        else
        {
          *buf = v455;
          HIDWORD(v425) = v456;
          if (v454)
          {
            *buf = v455 >> 1;
          }
        }

        v100 = CFNumberCreate(0, kCFNumberIntType, buf);
        CFDictionarySetValue(v16, v374, v100);
        CFRelease(v100);
        v101 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
        CFDictionarySetValue(v16, v373, v101);
        CFRelease(v101);
      }

      if (v459[0])
      {
        v102 = CFNumberCreate(v8, kCFNumberIntType, v459);
        CFDictionaryAddValue(v16, v377, v102);
        CFRelease(v102);
        v103 = vcvtd_n_f64_u32(v464, 8uLL);
        *buf = v103;
        v104 = CFNumberCreate(v8, kCFNumberFloatType, buf);
        CFDictionarySetValue(v16, v376, v104);
        CFRelease(v104);
      }

      v498.origin.x = v460;
      v498.origin.y = v461;
      LODWORD(v85) = v462;
      LODWORD(v86) = v463;
      v498.size.width = v85;
      v498.size.height = v86;
      v105 = CGRectCreateDictionaryRepresentation(v498);
      CFDictionaryAddValue(v16, v380, v105);
      CFRelease(v105);
      v106 = *(a3 + 4808);
      if (v106)
      {
        if (CFArrayGetCount(v106) > v19)
        {
          v107 = CFArrayGetValueAtIndex(*(a3 + 4808), v19);
          if (!CFEqual(cf1, v107))
          {
            CFDictionarySetValue(v16, v344, v107);
          }
        }
      }

      if (*(*(v5 + 24) + 4312) >= 17)
      {
        v108 = v465 ? v11 : v12;
        CFDictionaryAddValue(v16, v372, v108);
        if (*(*(v5 + 24) + 4312) >= 17)
        {
          if (v466)
          {
            v109 = v11;
          }

          else
          {
            v109 = v12;
          }

          CFDictionaryAddValue(v16, v360, v109);
        }
      }

      theDict = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!theDict)
      {
        goto LABEL_366;
      }

      v110 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v110)
      {
LABEL_160:
        if (((*(a3 + 4256) | isSensorType) & 1) == 0)
        {
          v136 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v136)
          {
            v137 = v136;
            SetSupportedFormats(v136, SupportedOutputFormatsSecondaryScaler, 0, v475);
            *buf = 0;
            v138 = *(a3 + 184) + 120 * v19;
            if (*(v138 + 36) == 1)
            {
              v139 = *(v138 + 40);
            }

            else
            {
              v139 = v455;
              if (v454)
              {
                v139 = v455 >> 1;
              }
            }

            *buf = v139;
            v140 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v137, v414, v140);
            CFRelease(v140);
            HIDWORD(v425) = 0;
            v141 = *(a3 + 184) + 120 * v19;
            v142 = *(v141 + 36);
            v143 = (v141 + 44);
            if (!v142)
            {
              v143 = &v456;
            }

            HIDWORD(v425) = *v143;
            v144 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
            CFDictionarySetValue(v137, v413, v144);
            CFRelease(v144);
            LODWORD(v425) = 1048576000;
            v145 = CFNumberCreate(0, kCFNumberFloatType, &v425);
            CFDictionarySetValue(v137, v412, v145);
            CFRelease(v145);
            v146 = v471 / *buf;
            if (v146 >= 1.0)
            {
              v146 = 1.0;
            }

            v424 = LODWORD(v146);
            v147 = CFNumberCreate(0, kCFNumberFloatType, &v424);
            CFDictionarySetValue(v137, v411, v147);
            CFRelease(v147);
            CFDictionarySetValue(v137, v410, v12);
            CFDictionarySetValue(v137, v409, v12);
            LODWORD(v148) = *buf;
            v500.size.width = v148;
            LODWORD(v148) = HIDWORD(v425);
            v500.size.height = v148;
            v500.origin.x = 0.0;
            v500.origin.y = 0.0;
            v149 = CGRectCreateDictionaryRepresentation(v500);
            if (v149)
            {
              v150 = v149;
              CFDictionarySetValue(v137, v386, v149);
              CFRelease(v150);
            }

            CFDictionarySetValue(v137, v408, v11);
            CFDictionarySetValue(v137, v407, v11);
            CFDictionarySetValue(v137, v406, v12);
            CFDictionarySetValue(theDict, v354, v137);
            CFRelease(v137);
          }
        }

        if (((*(a3 + 4256) | isSensorType) & 1) == 0)
        {
          v151 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v151)
          {
            v152 = v151;
            SetSupportedFormats(v151, SupportedOutputFormatsIntermediateTap, 0, v475);
            *buf = 0;
            v153 = *(a3 + 184) + 120 * v19;
            if (*(v153 + 36) == 1)
            {
              v154 = *(v153 + 40);
            }

            else
            {
              v154 = v455;
              if (v454)
              {
                v154 = v455 >> 1;
              }
            }

            *buf = v154;
            v155 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v152, v414, v155);
            CFRelease(v155);
            HIDWORD(v425) = 0;
            v156 = *(a3 + 184) + 120 * v19;
            v157 = *(v156 + 36);
            v158 = (v156 + 44);
            if (!v157)
            {
              v158 = &v456;
            }

            HIDWORD(v425) = *v158;
            v159 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
            CFDictionarySetValue(v152, v413, v159);
            CFRelease(v159);
            LODWORD(v425) = 1065353216;
            v160 = CFNumberCreate(0, kCFNumberFloatType, &v425);
            CFDictionarySetValue(v152, v411, v160);
            CFRelease(v160);
            v424 = 1065353216;
            v161 = CFNumberCreate(0, kCFNumberFloatType, &v424);
            CFDictionarySetValue(v152, v412, v161);
            CFRelease(v161);
            CFDictionarySetValue(v152, v410, v12);
            CFDictionarySetValue(v152, v409, v12);
            LODWORD(v162) = *buf;
            v501.size.width = v162;
            LODWORD(v162) = HIDWORD(v425);
            v501.size.height = v162;
            v501.origin.x = 0.0;
            v501.origin.y = 0.0;
            v163 = CGRectCreateDictionaryRepresentation(v501);
            if (v163)
            {
              v164 = v163;
              CFDictionarySetValue(v152, v386, v163);
              CFRelease(v164);
            }

            CFDictionarySetValue(v152, v408, v11);
            CFDictionarySetValue(v152, v407, v11);
            CFDictionarySetValue(v152, v406, v12);
            CFDictionarySetValue(theDict, v352, v152);
            CFRelease(v152);
          }
        }

        if (!isSensorType)
        {
          v165 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v165)
          {
            v166 = v165;
            v167 = *(*(*(v405 + 24) + 4304) + 104 * *(a3 + 156) + 16);
            v168 = SupportedOutputFormatsIRSensor;
            if (v167 != 1718186595)
            {
              v168 = SupportedOutputFormatsStillImage;
            }

            if (v167 == 1785950322)
            {
              v169 = SupportedOutputFormatsJasperSensor;
            }

            else
            {
              v169 = v168;
            }

            SetSupportedFormats(v165, v169, 0, v475);
            *buf = 0;
            v170 = *(a3 + 184) + 120 * v19;
            if (*(v170 + 64) == 1)
            {
              v171 = *(v170 + 68);
            }

            else
            {
              v171 = v455;
              if (v454)
              {
                v171 = v455 >> 1;
              }
            }

            *buf = v171;
            v172 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v166, v414, v172);
            CFRelease(v172);
            HIDWORD(v425) = 0;
            v173 = *(a3 + 184) + 120 * v19;
            v174 = *(v173 + 64);
            v175 = (v173 + 72);
            if (!v174)
            {
              v175 = &v456;
            }

            HIDWORD(v425) = *v175;
            v176 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
            CFDictionarySetValue(v166, v413, v176);
            CFRelease(v176);
            if (*(a3 + 4256))
            {
              v177 = 1.0;
            }

            else
            {
              v177 = 0.25;
            }

            *&v425 = v177;
            v178 = CFNumberCreate(0, kCFNumberFloatType, &v425);
            CFDictionarySetValue(v166, v412, v178);
            CFRelease(v178);
            v424 = 1065353216;
            v179 = CFNumberCreate(0, kCFNumberFloatType, &v424);
            CFDictionarySetValue(v166, v411, v179);
            CFRelease(v179);
            CFDictionarySetValue(v166, v410, v12);
            if (*(v369 + 673) == 1)
            {
              CFDictionarySetValue(v166, v409, v11);
              v180 = CFNumberCreate(0, kCFNumberIntType, buf);
              CFDictionarySetValue(v166, v357, v180);
              CFRelease(v180);
              v181 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
              CFDictionarySetValue(v166, v356, v181);
              CFRelease(v181);
            }

            else
            {
              CFDictionarySetValue(v166, v409, v12);
            }

            LODWORD(v182) = *buf;
            v502.size.width = v182;
            LODWORD(v182) = HIDWORD(v425);
            v502.size.height = v182;
            v502.origin.x = 0.0;
            v502.origin.y = 0.0;
            v183 = CGRectCreateDictionaryRepresentation(v502);
            if (v183)
            {
              v184 = v183;
              CFDictionarySetValue(v166, v386, v183);
              CFRelease(v184);
            }

            v423 = *(a3 + 4464);
            v185 = CFNumberCreate(0, kCFNumberIntType, &v423);
            if (v185)
            {
              v186 = v185;
              CFDictionarySetValue(v166, v363, v185);
              CFRelease(v186);
            }

            v422 = *(a3 + 4464);
            v187 = CFNumberCreate(0, kCFNumberIntType, &v422);
            if (v187)
            {
              v188 = v187;
              CFDictionarySetValue(v166, v362, v187);
              CFRelease(v188);
            }

            CFDictionarySetValue(v166, v371, v11);
            CFDictionarySetValue(v166, v408, v11);
            CFDictionarySetValue(v166, v407, v11);
            CFDictionarySetValue(v166, v406, v12);
            CFDictionarySetValue(theDict, v351, v166);
            CFRelease(v166);
          }

          if ((*(a3 + 4256) & 1) == 0)
          {
            v189 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v189)
            {
              v190 = v189;
              SetSupportedFormats(v189, SupportedOutputFormatsStillImageIntermediateTap, 0, v475);
              *buf = 0;
              v191 = *(a3 + 184) + 120 * v19;
              if (*(v191 + 64) == 1)
              {
                v192 = *(v191 + 68);
              }

              else
              {
                v192 = v455;
                if (v454)
                {
                  v192 = v455 >> 1;
                }
              }

              *buf = v192;
              v193 = CFNumberCreate(0, kCFNumberIntType, buf);
              CFDictionarySetValue(v190, v414, v193);
              CFRelease(v193);
              HIDWORD(v425) = 0;
              v194 = *(a3 + 184) + 120 * v19;
              v195 = *(v194 + 64);
              v196 = (v194 + 72);
              if (!v195)
              {
                v196 = &v456;
              }

              HIDWORD(v425) = *v196;
              v197 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
              CFDictionarySetValue(v190, v413, v197);
              CFRelease(v197);
              LODWORD(v425) = 1065353216;
              v198 = CFNumberCreate(0, kCFNumberFloatType, &v425);
              CFDictionarySetValue(v190, v411, v198);
              CFRelease(v198);
              v424 = 1065353216;
              v199 = CFNumberCreate(0, kCFNumberFloatType, &v424);
              CFDictionarySetValue(v190, v412, v199);
              CFRelease(v199);
              CFDictionarySetValue(v190, v410, v12);
              CFDictionarySetValue(v190, v409, v12);
              LODWORD(v200) = *buf;
              v503.size.width = v200;
              LODWORD(v200) = HIDWORD(v425);
              v503.size.height = v200;
              v503.origin.x = 0.0;
              v503.origin.y = 0.0;
              v201 = CGRectCreateDictionaryRepresentation(v503);
              if (v201)
              {
                v202 = v201;
                CFDictionarySetValue(v190, v386, v201);
                CFRelease(v202);
              }

              v423 = *(a3 + 4464);
              v203 = CFNumberCreate(0, kCFNumberIntType, &v423);
              if (v203)
              {
                v204 = v203;
                CFDictionarySetValue(v190, v363, v203);
                CFRelease(v204);
              }

              v422 = *(a3 + 4464);
              v205 = CFNumberCreate(0, kCFNumberIntType, &v422);
              if (v205)
              {
                v206 = v205;
                CFDictionarySetValue(v190, v362, v205);
                CFRelease(v206);
              }

              CFDictionarySetValue(v190, v371, v11);
              CFDictionarySetValue(v190, v408, v12);
              CFDictionarySetValue(v190, v407, v12);
              CFDictionarySetValue(v190, v406, v12);
              CFDictionarySetValue(theDict, v342, v190);
              CFRelease(v190);
            }
          }

          v207 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v207)
          {
            v208 = v207;
            if (*(a3 + 4256))
            {
              v209 = SupportedOutputFormatsIRSensor;
            }

            else
            {
              v209 = SupportedOutputFormatsStillImageRaw;
            }

            SetSupportedFormats(v207, v209, 0, v475);
            *buf = v440;
            v210 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v208, v414, v210);
            CFRelease(v210);
            HIDWORD(v425) = v441;
            v211 = CFNumberCreate(0, kCFNumberIntType, &v425 + 4);
            CFDictionarySetValue(v208, v413, v211);
            CFRelease(v211);
            LODWORD(v425) = 1065353216;
            v212 = CFNumberCreate(0, kCFNumberFloatType, &v425);
            CFDictionarySetValue(v208, v411, v212);
            CFRelease(v212);
            v424 = 1065353216;
            v213 = CFNumberCreate(0, kCFNumberFloatType, &v424);
            CFDictionarySetValue(v208, v412, v213);
            CFRelease(v213);
            CFDictionarySetValue(v208, v410, v12);
            CFDictionarySetValue(v208, v409, v12);
            LODWORD(v214) = *buf;
            v504.size.width = v214;
            LODWORD(v214) = HIDWORD(v425);
            v504.size.height = v214;
            v504.origin.x = 0.0;
            v504.origin.y = 0.0;
            v215 = CGRectCreateDictionaryRepresentation(v504);
            if (v215)
            {
              v216 = v215;
              CFDictionarySetValue(v208, v386, v215);
              CFRelease(v216);
            }

            v423 = *(a3 + 4464);
            v217 = CFNumberCreate(0, kCFNumberIntType, &v423);
            CFDictionarySetValue(v208, v363, v217);
            CFRelease(v217);
            v423 = *(a3 + 4464);
            v218 = CFNumberCreate(0, kCFNumberIntType, &v423);
            CFDictionarySetValue(v208, v362, v218);
            CFRelease(v218);
            CFDictionarySetValue(v208, v371, v11);
            CFDictionarySetValue(v208, v408, v12);
            CFDictionarySetValue(v208, v407, v12);
            CFDictionarySetValue(v208, v406, v12);
            CFDictionarySetValue(theDict, v350, v208);
            CFRelease(v208);
          }
        }

        v425 = 0;
        if (ConfigSupportsContextSwitchCaptures(a3, v405, &v425 + 1, &v425))
        {
          v219 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v219)
          {
            v220 = v219;
            SetSupportedFormats(v219, SupportedOutputFormatsStillImageQuadra, 0, v475);
            *buf = HIDWORD(v425);
            v221 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v220, v414, v221);
            CFRelease(v221);
            v424 = v425;
            v222 = CFNumberCreate(0, kCFNumberIntType, &v424);
            CFDictionarySetValue(v220, v413, v222);
            CFRelease(v222);
            v423 = 1065353216;
            v223 = CFNumberCreate(0, kCFNumberFloatType, &v423);
            CFDictionarySetValue(v220, v411, v223);
            CFRelease(v223);
            v422 = 1065353216;
            v224 = CFNumberCreate(0, kCFNumberFloatType, &v422);
            CFDictionarySetValue(v220, v412, v224);
            CFRelease(v224);
            CFDictionarySetValue(v220, v410, v12);
            CFDictionarySetValue(v220, v409, v12);
            LODWORD(v225) = HIDWORD(v425);
            v505.size.width = v225;
            LODWORD(v225) = v425;
            v505.size.height = v225;
            v505.origin.x = 0.0;
            v505.origin.y = 0.0;
            v226 = CGRectCreateDictionaryRepresentation(v505);
            if (v226)
            {
              v227 = v226;
              CFDictionarySetValue(v220, v386, v226);
              CFRelease(v227);
            }

            CFDictionarySetValue(v220, v408, v12);
            CFDictionarySetValue(v220, v407, v12);
            CFDictionarySetValue(v220, v406, v12);
            CFDictionarySetValue(theDict, v349, v220);
            CFRelease(v220);
          }
        }

        if ((*(a3 + 4256) | isSensorType))
        {
          v228 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v228)
          {
            v229 = v228;
            SetSupportedFormats(v228, v353, 0, v475);
            *buf = v440;
            v230 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v229, v414, v230);
            CFRelease(v230);
            v424 = v441;
            v231 = CFNumberCreate(0, kCFNumberIntType, &v424);
            CFDictionarySetValue(v229, v413, v231);
            CFRelease(v231);
            v423 = 1065353216;
            v232 = CFNumberCreate(0, kCFNumberFloatType, &v423);
            CFDictionarySetValue(v229, v411, v232);
            CFRelease(v232);
            v422 = 1065353216;
            v233 = CFNumberCreate(0, kCFNumberFloatType, &v422);
            CFDictionarySetValue(v229, v412, v233);
            CFRelease(v233);
            CFDictionarySetValue(v229, v410, v12);
            CFDictionarySetValue(v229, v409, v12);
            LODWORD(v234) = *buf;
            v506.size.width = v234;
            LODWORD(v234) = v424;
            v506.size.height = v234;
            v506.origin.x = 0.0;
            v506.origin.y = 0.0;
            v235 = CGRectCreateDictionaryRepresentation(v506);
            if (v235)
            {
              v236 = v235;
              CFDictionarySetValue(v229, v386, v235);
              CFRelease(v236);
            }

            CFDictionarySetValue(v229, v408, v12);
            CFDictionarySetValue(v229, v407, v12);
            CFDictionarySetValue(v229, v406, v12);
            CFDictionarySetValue(theDict, v348, v229);
            CFRelease(v229);
          }
        }

        v237 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v237)
        {
          v239 = v237;
          SetSupportedFormats(v237, SupportedOutputFormatsProResRaw, 0, v475);
          v240 = 120 * v19;
          v241 = *(a3 + 184) + 120 * v19;
          v242 = *(v241 + 36);
          v243 = (v241 + 40);
          if (!v242)
          {
            v243 = &v455;
          }

          *buf = *v243;
          v244 = CFNumberCreate(0, kCFNumberIntType, buf);
          CFDictionarySetValue(v239, v414, v244);
          CFRelease(v244);
          v245 = *(a3 + 184) + v240;
          v246 = *(v245 + 36);
          v247 = (v245 + 44);
          if (!v246)
          {
            v247 = &v456;
          }

          v424 = *v247;
          v248 = CFNumberCreate(0, kCFNumberIntType, &v424);
          CFDictionarySetValue(v239, v413, v248);
          CFRelease(v248);
          v423 = 1065353216;
          v249 = CFNumberCreate(0, kCFNumberFloatType, &v423);
          CFDictionarySetValue(v239, v411, v249);
          CFRelease(v249);
          v422 = 1065353216;
          v250 = CFNumberCreate(0, kCFNumberFloatType, &v422);
          CFDictionarySetValue(v239, v412, v250);
          CFRelease(v250);
          CFDictionarySetValue(v239, v410, v12);
          CFDictionarySetValue(v239, v409, v12);
          LODWORD(v251) = *buf;
          v507.size.width = v251;
          LODWORD(v251) = v424;
          v507.size.height = v251;
          v507.origin.x = 0.0;
          v507.origin.y = 0.0;
          v252 = CGRectCreateDictionaryRepresentation(v507);
          if (v252)
          {
            v253 = v252;
            CFDictionarySetValue(v239, v386, v252);
            CFRelease(v253);
          }

          CFDictionarySetValue(v239, v408, v12);
          CFDictionarySetValue(v239, v407, v12);
          CFDictionarySetValue(v239, v406, v12);
          CFDictionarySetValue(theDict, v366, v239);
          CFRelease(v239);
        }

        if (isSensorType)
        {
          *buf = 0;
          v424 = 0;
          v254 = *(a3 + 180);
          if (v254 == 1425)
          {
            H16ISP::JasperConfigManager::maxPeridotCloudSize(v440, v441, buf, &v424, v238);
            v5 = v405;
          }

          else
          {
            v5 = v405;
            if (v254 != 1424)
            {
              goto LABEL_269;
            }

            *buf = 144;
            v424 = H16ISP::JasperConfigManager::maxJasperCloudSizeBytes(v237);
          }

          if (*buf)
          {
            v271 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v271)
            {
              v272 = v271;
              v423 = 0;
              v273 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
              if (v273)
              {
                v274 = v273;
                v423 = 1785950320;
                v275 = CFNumberCreate(0, kCFNumberIntType, &v423);
                CFArrayAppendValue(v274, v275);
                v276 = v275;
                v5 = v405;
                CFRelease(v276);
                CFDictionarySetValue(v272, v333, v274);
                CFRelease(v274);
              }

              v277 = CFNumberCreate(0, kCFNumberIntType, buf);
              CFDictionarySetValue(v272, v338, v277);
              CFRelease(v277);
              v278 = CFNumberCreate(0, kCFNumberIntType, &v424);
              CFDictionarySetValue(v272, v337, v278);
              CFRelease(v278);
              CFDictionarySetValue(theDict, v336, v272);
              CFRelease(v272);
            }
          }
        }

        else
        {
          v255 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v5 = v405;
          if (v255)
          {
            v256 = v255;
            SetSupportedFormats(v255, SupportedOutputFormatsVisPipe, 0, v475);
            *buf = v440;
            v257 = CFNumberCreate(0, kCFNumberIntType, buf);
            CFDictionarySetValue(v256, v414, v257);
            CFRelease(v257);
            v424 = v441;
            v258 = CFNumberCreate(0, kCFNumberIntType, &v424);
            CFDictionarySetValue(v256, v413, v258);
            CFRelease(v258);
            v423 = 1065353216;
            v259 = CFNumberCreate(0, kCFNumberFloatType, &v423);
            CFDictionarySetValue(v256, v411, v259);
            CFRelease(v259);
            v422 = 1040187392;
            v260 = CFNumberCreate(0, kCFNumberFloatType, &v422);
            CFDictionarySetValue(v256, v412, v260);
            CFRelease(v260);
            v261 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
            if (v261)
            {
              v262 = v261;
              v421 = 0;
              v263 = CFNumberCreate(0, kCFNumberIntType, &v421);
              CFArrayAppendValue(v262, v263);
              CFRelease(v263);
              v421 = 1;
              v264 = CFNumberCreate(0, kCFNumberIntType, &v421);
              CFArrayAppendValue(v262, v264);
              CFRelease(v264);
              v421 = 2;
              v265 = CFNumberCreate(0, kCFNumberIntType, &v421);
              CFArrayAppendValue(v262, v265);
              CFRelease(v265);
              v421 = 3;
              v266 = CFNumberCreate(0, kCFNumberIntType, &v421);
              CFArrayAppendValue(v262, v266);
              CFRelease(v266);
              v421 = 4;
              v267 = CFNumberCreate(0, kCFNumberIntType, &v421);
              CFArrayAppendValue(v262, v267);
              CFRelease(v267);
              CFDictionarySetValue(v256, @"VisPipeSupportedRawBitDepth", v262);
              CFRelease(v262);
            }

            CFDictionarySetValue(v256, v410, v12);
            CFDictionarySetValue(v256, v409, v12);
            LODWORD(v268) = *buf;
            v508.size.width = v268;
            LODWORD(v268) = v424;
            v508.size.height = v268;
            v508.origin.x = 0.0;
            v508.origin.y = 0.0;
            v269 = CGRectCreateDictionaryRepresentation(v508);
            if (v269)
            {
              v270 = v269;
              CFDictionarySetValue(v256, v386, v269);
              CFRelease(v270);
            }

            CFDictionarySetValue(v256, v408, v12);
            CFDictionarySetValue(v256, v407, v12);
            CFDictionarySetValue(v256, v406, v12);
            CFDictionarySetValue(theDict, @"VisPipe", v256);
            CFRelease(v256);
            v5 = v405;
          }
        }

LABEL_269:
        v279 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v279)
        {
LABEL_365:
          CFDictionarySetValue(v16, v375, theDict);
          CFRelease(theDict);
LABEL_366:
          CFArrayAppendValue(theArray, v16);
          CFRelease(v16);
          goto LABEL_367;
        }

        v280 = v279;
        if (*(a3 + 3033) == 1)
        {
          for (i = 0; i != 384; i += 96)
          {
            v282 = *(*(a3 + 3344 + i) + 16);
            v283 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v283)
            {
              v284 = v283;
              CFDictionarySetValue(v280, v282, v283);
              CFRelease(v284);
            }

            else
            {
              v285 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v285 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v285;
              }

              if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
              {
                CopySupportedFormatsArray(&v476, &v477);
              }
            }
          }
        }

        v286 = v405;
        if (*(a3 + 3034) == 1)
        {
          v287 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v287)
          {
            v288 = v287;
            CFDictionarySetValue(v280, *(*(a3 + 3728) + 16), v287);
            CFRelease(v288);
          }

          else
          {
            v289 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v289 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v289;
            }

            if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
            {
              CopySupportedFormatsArray(&v478, &v479);
            }
          }
        }

        if (*(a3 + 3032) == 1)
        {
          v290 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v290)
          {
            v291 = v290;
            CFDictionarySetValue(v280, v347, v290);
            CFRelease(v291);
          }

          v292 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v292)
          {
            v293 = v292;
            CFDictionarySetValue(v280, v346, v292);
            CFRelease(v293);
          }
        }

        if (*(a3 + 2925) != 1 || (v294 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
        {
LABEL_315:
          if (*(a3 + 3035) == 1)
          {
            v304 = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v304)
            {
              v305 = v304;
              CFDictionarySetValue(v280, *(*(a3 + 3824) + 16), v304);
              CFRelease(v305);
            }

            else
            {
              v306 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v306 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v306;
              }

              if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
              {
                CopySupportedFormatsArray(&v483, &v484);
              }
            }
          }

          if (*(a3 + 3036) == 1)
          {
            v307 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v307)
            {
              v308 = v307;
              CFDictionarySetValue(v307, v345, v11);
              if (!*(a3 + 3854) || !*(a3 + 3856))
              {
                bzero(buf, 0x10uLL);
                *&buf[4] = 8207;
                *&buf[8] = *(a3 + 156);
                if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v405 + 24), buf, 0x10u, 0, 0xFFFFFFFF))
                {
                  v309 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v309 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v309;
                  }

                  if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
                  {
                    CopySupportedFormatsArray(&v487, &v488);
                  }

LABEL_342:
                  CFRelease(v308);
                  goto LABEL_343;
                }

                *(a3 + 3854) = v481;
                *(a3 + 3856) = v482;
              }

              v311 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v311)
              {
                v312 = v311;
                v313 = CFNumberCreate(v8, kCFNumberSInt16Type, (a3 + 3854));
                CFDictionarySetValue(v312, v341, v313);
                CFRelease(v313);
                v314 = CFNumberCreate(v8, kCFNumberSInt16Type, (a3 + 3856));
                CFDictionarySetValue(v312, v340, v314);
                v315 = v314;
                v286 = v405;
                CFRelease(v315);
                CFDictionarySetValue(v308, v339, v312);
                CFRelease(v312);
                CFDictionarySetValue(v280, *(*(a3 + 3936) + 16), v308);
              }

              else
              {
                v316 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v316 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v316;
                }

                if (os_log_type_enabled(v316, OS_LOG_TYPE_ERROR))
                {
                  CopySupportedFormatsArray(&v485, &v486);
                }
              }

              goto LABEL_342;
            }

            v310 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v310 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v310;
            }

            if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
            {
              CopySupportedFormatsArray(&v489, &v490);
            }
          }

LABEL_343:
          if (*(a3 + 3037) != 1)
          {
LABEL_364:
            CFDictionarySetValue(theDict, v365, v280);
            CFRelease(v280);
            v5 = v286;
            goto LABEL_365;
          }

          v317 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v317)
          {
            v320 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v320 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v320;
            }

            if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
            {
              CopySupportedFormatsArray(&v495, v496);
            }

            goto LABEL_364;
          }

          v318 = v317;
          if (!*(a3 + 3966) || !*(a3 + 3968))
          {
            bzero(buf, 0x10uLL);
            *&buf[4] = 8209;
            *&buf[8] = *(a3 + 156);
            if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v286 + 24), buf, 0x10u, 0, 0xFFFFFFFF))
            {
              v319 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v319 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v319;
              }

              if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
              {
                CopySupportedFormatsArray(&v493, &v494);
              }

LABEL_363:
              CFRelease(v318);
              goto LABEL_364;
            }

            *(a3 + 3966) = v481;
            *(a3 + 3968) = v482;
          }

          v321 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v321)
          {
            v322 = v321;
            v323 = CFNumberCreate(v8, kCFNumberSInt16Type, (a3 + 3966));
            CFDictionarySetValue(v322, v341, v323);
            CFRelease(v323);
            v324 = CFNumberCreate(v8, kCFNumberSInt16Type, (a3 + 3968));
            CFDictionarySetValue(v322, v340, v324);
            v325 = v324;
            v286 = v405;
            CFRelease(v325);
            CFDictionarySetValue(v318, v339, v322);
            CFRelease(v322);
            CFDictionarySetValue(v280, *(*(a3 + 4048) + 16), v318);
          }

          else
          {
            v326 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v326 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v326;
            }

            if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
            {
              CopySupportedFormatsArray(&v491, &v492);
            }
          }

          goto LABEL_363;
        }

        v295 = v294;
        if (H16ISP::H16ISPDevice::isSensorType(*(v405 + 24), *(a3 + 156), 1718186595))
        {
          CFDictionarySetValue(v280, v335, v295);
          CFDictionarySetValue(v280, v343, v295);
          CFDictionarySetValue(v280, v334, v295);
          v296 = *(v405 + 24);
          if (!v296 || (*(*(v296 + 4304) + 104 * *(a3 + 156) + 104) & 1) == 0)
          {
            goto LABEL_314;
          }

          v297 = v280;
          v298 = v331;
          goto LABEL_305;
        }

        if (!H16ISP::H16ISPDevice::isSensorType(*(v405 + 24), *(a3 + 156), 1718775412) && !H16ISP::H16ISPDevice::isSensorType(*(v405 + 24), *(a3 + 156), 1718776695))
        {
          v303 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v303 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v303;
          }

          if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
          {
            v327 = *(a3 + 156);
            *buf = v329;
            *&buf[4] = "ExclavesAnnounceSupport";
            v481 = 1024;
            v482 = v327;
            _os_log_error_impl(&dword_2247DB000, v303, OS_LOG_TYPE_ERROR, "%s - Invalid sensor is given for Exclave support (camChannel:%u)\n", buf, 0x12u);
          }

          goto LABEL_314;
        }

        CFDictionarySetValue(v280, v332, v295);
        CFDictionarySetValue(v280, v343, v295);
        v299 = *(v405 + 24);
        if (v299)
        {
          v300 = *(*(v299 + 4304) + 104 * *(a3 + 156) + 104);
          if (v300)
          {
            CFDictionarySetValue(v280, v331, v295);
            v301 = *(v405 + 24);
            if (!v301)
            {
              goto LABEL_314;
            }

            v300 = *(*(v301 + 4304) + 104 * *(a3 + 156) + 104);
          }

          if ((v300 & 2) != 0)
          {
            v297 = v280;
            v298 = v330;
LABEL_305:
            CFDictionarySetValue(v297, v298, v295);
          }
        }

LABEL_314:
        CFRelease(v295);
        goto LABEL_315;
      }

      v111 = v110;
      v112 = *(v416 + 104 * *(a3 + 156) + 8);
      v113 = SupportedOutputFormatsIRSensor;
      if (v112 != 1718186595)
      {
        v113 = SupportedOutputFormatsPrimaryScaler;
      }

      if (v112 == 1785950322)
      {
        v114 = SupportedOutputFormatsJasperSensor;
      }

      else
      {
        v114 = v113;
      }

      SetSupportedFormats(v110, v114, 0, v475);
      *buf = 0;
      HIDWORD(v425) = 0;
      v115 = *(a3 + 184);
      v116 = v115 + 120 * v19;
      if (*(v116 + 36) == 1)
      {
        *buf = *(v116 + 40);
        v117 = *(v115 + 120 * v19 + 44);
      }

      else
      {
        v118 = v455;
        if (v454)
        {
          v118 = v455 >> 1;
        }

        *buf = v118;
        v117 = v456;
      }

      HIDWORD(v425) = v117;
      v119 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
      CFDictionarySetValue(v111, v414, v119);
      CFRelease(v119);
      v120 = CFNumberCreate(0, kCFNumberSInt32Type, &v425 + 4);
      CFDictionarySetValue(v111, v413, v120);
      CFRelease(v120);
      if ((*(a3 + 4256) | isSensorType))
      {
        v121 = 1.0;
      }

      else
      {
        v121 = 0.25;
      }

      *&v425 = v121;
      v122 = CFNumberCreate(0, kCFNumberFloatType, &v425);
      CFDictionarySetValue(v111, v412, v122);
      CFRelease(v122);
      v424 = 1065353216;
      v123 = CFNumberCreate(0, kCFNumberFloatType, &v424);
      CFDictionarySetValue(v111, v411, v123);
      CFRelease(v123);
      v423 = v473;
      v124 = CFNumberCreate(0, kCFNumberIntType, &v423);
      CFDictionarySetValue(v111, v368, v124);
      CFRelease(v124);
      v422 = v472;
      v125 = CFNumberCreate(0, kCFNumberIntType, &v422);
      CFDictionarySetValue(v111, v367, v125);
      CFRelease(v125);
      if (isSensorType)
      {
        CFDictionarySetValue(v111, v410, v12);
      }

      else
      {
        CFDictionarySetValue(v111, v410, v11);
        if (*(v369 + 673) == 1)
        {
          CFDictionarySetValue(v111, v409, v11);
          v421 = 0;
          v420 = 0;
          v126 = *(a3 + 184) + 120 * v19;
          v127 = *(v126 + 92);
          v128 = (v126 + 96);
          v129 = (v126 + 100);
          v130 = v127 == 0;
          v131 = buf;
          if (v130)
          {
            v129 = &v425 + 1;
          }

          else
          {
            v131 = v128;
          }

          v421 = *v131;
          v420 = *v129;
          v132 = CFNumberCreate(0, kCFNumberIntType, &v421);
          CFDictionarySetValue(v111, v357, v132);
          CFRelease(v132);
          v133 = CFNumberCreate(0, kCFNumberIntType, &v420);
          CFDictionarySetValue(v111, v356, v133);
          CFRelease(v133);
          goto LABEL_155;
        }
      }

      CFDictionarySetValue(v111, v409, v12);
LABEL_155:
      v499.size.width = *buf;
      v499.size.height = SHIDWORD(v425);
      v499.origin.x = 0.0;
      v499.origin.y = 0.0;
      v134 = CGRectCreateDictionaryRepresentation(v499);
      if (v134)
      {
        v135 = v134;
        CFDictionarySetValue(v111, v386, v134);
        CFRelease(v135);
      }

      CFDictionarySetValue(v111, v408, value);
      CFDictionarySetValue(v111, v407, value);
      CFDictionarySetValue(v111, v406, value);
      if (v474 == 1)
      {
        CFDictionarySetValue(theDict, v355, v111);
      }

      CFRelease(v111);
      goto LABEL_160;
    }

    LODWORD(__dst[0]) = 0;
    if (v468 > 1)
    {
      if (v468 == 2)
      {
        v99 = 1650943796;
        goto LABEL_308;
      }

      if (v468 == 3)
      {
        v99 = 1734505012;
        goto LABEL_308;
      }
    }

    else
    {
      if (!v468)
      {
        v99 = 1735549492;
        goto LABEL_308;
      }

      if (v468 == 1)
      {
        v99 = 1919379252;
LABEL_308:
        LODWORD(__dst[0]) = v99;
      }
    }

    v302 = CFNumberCreate(v8, kCFNumberIntType, __dst);
    CFDictionaryAddValue(v16, v359, v302);
    CFRelease(v302);
    v59 = v469;
    goto LABEL_77;
  }

  v417 = 0;
LABEL_371:
  *v358 = theArray;
  return v417;
}