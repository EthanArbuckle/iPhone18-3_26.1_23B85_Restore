uint64_t ColorSensorPlugIn::filter(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    Type = IOHIDEventGetType();
    if (Type == 12)
    {
      v7 = (a1 + 60);
      v8 = 4 * *(a1 + 60);
      __chkstk_darwin(Type);
      v10 = (&v56 - ((v9 + 15) & 0x7FFFFFFF0));
      v69 = 0.0;
      v68 = 0;
      if (*(a1 + 176) == 1)
      {
        v11 = *(a1 + 192);
        if (v11 > 0.0)
        {
          v12 = *(a1 + 184);
          v13 = *(a1 + 200);
          if (v13 >= 0.0)
          {
            v22 = *(a1 + 200);
            IOHIDEventSetFloatValue();
            IOHIDEventSetDoubleValue();
          }

          else
          {
            IOHIDEventGetDoubleValue();
            v13 = v14;
          }

          *&v23 = v12 * (v13 / v11);
          *&v24 = v13;
          v68 = __PAIR64__(v24, v23);
          IOHIDEventSetDoubleValue();
          IOHIDEventSetDoubleValue();
LABEL_16:
          IOHIDEventSetDoubleValue();
          IOHIDEventSetIntegerValue();
          goto LABEL_17;
        }
      }

      Children = IOHIDEventGetChildren();
      if (Children)
      {
        if (CFArrayGetValueAtIndex(Children, 0))
        {
          DataValue = IOHIDEventGetDataValue();
          if (DataValue)
          {
            v17 = DataValue;
            IntegerValue = IOHIDEventGetIntegerValue();
            memcpy(&v58, v17, IntegerValue);
            if (*(a1 + 52) == 1)
            {
              v19 = *v7;
              v20 = *v7 - 4;
              v57 = v17;
              if (v20 > 2)
              {
                inited = qword_20128;
                if (!qword_20128)
                {
                  inited = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    inited = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
                {
                  sub_146DC((a1 + 60));
                }

                goto LABEL_74;
              }

              if (v19 == 6)
              {
                v21 = 6 - *(a1 + 64);
              }

              else
              {
                v21 = 0;
              }

              if (*(a1 + 216) == 1)
              {
                v66[6] = v64;
                v67[0] = *v65;
                *(v67 + 9) = *(&v65[2] + 1);
                v66[2] = v60;
                v66[3] = v61;
                v66[4] = v62;
                v66[5] = v63;
                v66[0] = v58;
                v66[1] = v59;
                v27 = v21;
                v28 = sub_CA70(v66, *(a1 + 220), *(a1 + 224), *(a1 + 228));
                v21 = v27;
                if (v28)
                {
                  v29 = qword_20128;
                  if (!qword_20128)
                  {
                    v29 = _COREBRIGHTNESS_LOG_DEFAULT;
                    if (!_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v29 = init_default_corebrightness_log();
                    }
                  }

                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    sub_14750();
                  }

                  IOHIDEventSetFloatValue();
                  v68 = 0;
                  v69 = 0.0;
LABEL_74:
                  *(a1 + 136) = v68;
                  *(a1 + 144) = v69;
                  if (BYTE11(v64) == 1)
                  {
                    v55 = v57;
                    *(v57 + 108) = v68;
                    v55[29] = v69;
                    goto LABEL_17;
                  }

                  IOHIDEventSetDoubleValue();
                  IOHIDEventSetDoubleValue();
                  goto LABEL_16;
                }
              }

              for (i = 28; i != 52; i += 4)
              {
                if (*(&v58 + i) < 0.0)
                {
                  *(&v58 + i) = 0;
                }
              }

              v31 = *(a1 + 64);
              if (v31)
              {
                v32 = 0;
                v33 = *v7;
                v34 = v21;
                do
                {
                  if (v33 > v34)
                  {
                    v10[v32] = *(&v59 + v34 + 3);
                  }

                  ++v32;
                  ++v34;
                }

                while (v31 != v32);
                if ((*(a1 + 148) & 1) == 0)
                {
                  goto LABEL_48;
                }

                v35 = (a1 + 152);
                v36 = &v59 + v21 + 3;
                v37 = v10;
                do
                {
                  v38 = *v35++;
                  *v37++ = v38;
                  *v36++ = v38;
                  --v31;
                }

                while (v31);
              }

              else if ((*(a1 + 148) & 1) == 0)
              {
                LODWORD(v31) = 0;
                goto LABEL_48;
              }

              memcpy(v17, &v58, IntegerValue);
              v39 = *(a1 + 152);
              IOHIDEventSetFloatValue();
              v40 = *(a1 + 156);
              IOHIDEventSetFloatValue();
              v41 = *(a1 + 160);
              IOHIDEventSetFloatValue();
              v42 = *(a1 + 164);
              IOHIDEventSetFloatValue();
              LODWORD(v31) = *(a1 + 64);
LABEL_48:
              ColorSensorPlugIn::colourCalculationDynamic(a1, v10, &v68, v31);
              if ((*(a1 + 228) & 0xFFFFFFFE) != 8)
              {
                v43 = qword_20128;
                if (!qword_20128)
                {
                  v43 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v43 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(v66[0]) = 134221824;
                  *(v66 + 4) = *(&v59 + 1);
                  WORD6(v66[0]) = 1024;
                  *(v66 + 14) = v58;
                  WORD1(v66[1]) = 1024;
                  DWORD1(v66[1]) = BYTE4(v58);
                  WORD4(v66[1]) = 1024;
                  *(&v66[1] + 10) = BYTE5(v58);
                  HIWORD(v66[1]) = 1024;
                  LODWORD(v66[2]) = DWORD2(v58);
                  WORD2(v66[2]) = 1024;
                  *(&v66[2] + 6) = HIDWORD(v58);
                  WORD5(v66[2]) = 2048;
                  *(&v66[2] + 12) = (v59 * 0.000015259);
                  WORD2(v66[3]) = 2048;
                  *(&v66[3] + 6) = *&v68;
                  HIWORD(v66[3]) = 2048;
                  *&v66[4] = *(&v68 + 1);
                  WORD4(v66[4]) = 2048;
                  *(&v66[4] + 10) = v69;
                  WORD1(v66[5]) = 2048;
                  *(&v66[5] + 4) = *(&v59 + 3);
                  WORD6(v66[5]) = 2048;
                  *(&v66[5] + 14) = *&v60;
                  WORD3(v66[6]) = 2048;
                  *(&v66[6] + 1) = *(&v60 + 1);
                  LOWORD(v67[0]) = 2048;
                  *(v67 + 2) = *(&v60 + 2);
                  WORD5(v67[0]) = 2048;
                  *(v67 + 12) = *(&v60 + 3);
                  WORD2(v67[1]) = 2048;
                  *(&v67[1] + 6) = *&v61;
                  _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "lux=%f status=%d nChannels=%d orientation=%d integrationTime=%u reportInterval=%u gain=%f XYZ=[%f;%f;%f] Channels=[%f;%f;%f;%f;%f;%f]", v66, 0x8Eu);
                }
              }

              if (*(&v68 + 1) <= 0.0)
              {
                v68 = 0;
                v69 = 0.0;
              }

              else
              {
                v44 = *(&v59 + 1) / *(&v68 + 1);
                *&v68 = *&v68 * (*(&v59 + 1) / *(&v68 + 1));
                HIDWORD(v68) = DWORD1(v59);
                v69 = v44 * v69;
              }

              if (BYTE11(v64) == 1)
              {
                v45 = qword_20128;
                if (!qword_20128)
                {
                  v45 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v45 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(v66[0]) = 67110656;
                  DWORD1(v66[0]) = DWORD2(v62);
                  WORD4(v66[0]) = 2048;
                  *(v66 + 10) = *&v68;
                  WORD1(v66[1]) = 2048;
                  *(&v66[1] + 4) = *(&v68 + 1);
                  WORD6(v66[1]) = 2048;
                  *(&v66[1] + 14) = v69;
                  WORD3(v66[2]) = 2048;
                  *(&v66[2] + 1) = *&v65[2];
                  LOWORD(v66[3]) = 2048;
                  *(&v66[3] + 2) = *&v65[3];
                  WORD5(v66[3]) = 2048;
                  *(&v66[3] + 12) = *&v65[4];
                  _os_log_debug_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "[ColorCalc] ts=%u XYZAP=[%f %f %f] XYZAOP=[%f %f %f]", v66, 0x44u);
                }

                v47 = 0;
                *&v46 = 67110914;
                v56 = v46;
                do
                {
                  if (v47 != 1)
                  {
                    v48 = *(&v68 + v47);
                    v49 = *&v65[v47 + 2];
                    v50 = qword_20128;
                    if (!qword_20128)
                    {
                      v50 = _COREBRIGHTNESS_LOG_DEFAULT;
                      if (!_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v50 = init_default_corebrightness_log();
                      }
                    }

                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                    {
                      v51 = vabdd_f64(v48, v49);
                      v52 = *(&v68 + v47);
                      *&v66[0] = __PAIR64__(v47, v56);
                      v53 = v52;
                      WORD4(v66[0]) = 1024;
                      v54 = "YES";
                      if (v48 * 0.005 < v51)
                      {
                        v54 = "!!NO!!";
                      }

                      *(v66 + 10) = v47;
                      HIWORD(v66[0]) = 2048;
                      *&v66[1] = v53;
                      WORD4(v66[1]) = 2048;
                      *(&v66[1] + 10) = v49;
                      WORD1(v66[2]) = 2048;
                      *(&v66[2] + 4) = v51;
                      WORD6(v66[2]) = 2048;
                      *(&v66[2] + 14) = 0x3FE0000000000000;
                      WORD3(v66[3]) = 2048;
                      *(&v66[3] + 1) = v48 * 0.005;
                      LOWORD(v66[4]) = 2080;
                      *(&v66[4] + 2) = v54;
                      _os_log_debug_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "[ColorCalc] diff(XYZAP[%d], XYZAOP[%d]) = diff(%f, %f) = %f treshholdValue(%.2f%%) = %f isBelowTreshhold = %s", v66, 0x4Au);
                    }
                  }

                  ++v47;
                }

                while (v47 != 3);
              }

              goto LABEL_74;
            }
          }
        }
      }
    }
  }

LABEL_17:
  ColorSensorPlugIn::logALSSample(a1, a2, a3);
  return a2;
}

void ColorSensorPlugIn::setPropertyForClient(ColorSensorPlugIn *this, CFTypeRef cf1, const void *a3, const void *a4)
{
  if (CFEqual(cf1, @"RGBCOverride"))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
      *(this + 148) = valuePtr != 0;
      inited = qword_20128;
      if (!qword_20128)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
      {
        sub_1487C(&valuePtr);
      }
    }

    else
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(a3);
        if (*(this + 16) == Count)
        {
          *(this + 148) = 1;
          if (Count >= 1)
          {
            v13 = 0;
            v14 = (this + 152);
            v15 = Count & 0x7FFFFFFF;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a3, v13);
              if (ValueAtIndex)
              {
                CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v14);
                v17 = qword_20128;
                if (!qword_20128)
                {
                  v17 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v17 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  v18 = *v14;
                  valuePtr = 67109376;
                  LODWORD(v52[0]) = v13;
                  WORD2(v52[0]) = 1024;
                  *(v52 + 6) = v18;
                  _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "Override ch[%d]: %d", &valuePtr, 0xEu);
                }
              }

              ++v13;
              ++v14;
            }

            while (v15 != v13);
          }
        }
      }
    }

    return;
  }

  if (CFEqual(cf1, @"ChromaticityOverride"))
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
      *(this + 176) = valuePtr != 0;
      v10 = qword_20128;
      if (!qword_20128)
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_14A64(&valuePtr);
      }
    }

    else
    {
      v27 = CFGetTypeID(a3);
      if (v27 == CFArrayGetTypeID())
      {
        v28 = CFArrayGetCount(a3);
        if (v28 >= 2)
        {
          *(this + 176) = 1;
          v29 = CFArrayGetValueAtIndex(a3, 0);
          if (v29)
          {
            CFNumberGetValue(v29, kCFNumberDoubleType, this + 184);
            v30 = qword_20128;
            if (!qword_20128)
            {
              v30 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v30 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              sub_14908(this + 23);
            }
          }

          v31 = CFArrayGetValueAtIndex(a3, 1);
          if (v31)
          {
            CFNumberGetValue(v31, kCFNumberDoubleType, this + 192);
            v32 = qword_20128;
            if (!qword_20128)
            {
              v32 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v32 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              sub_1497C(this + 24);
            }
          }

          if (v28 == 2)
          {
            *(this + 25) = 0xBFF0000000000000;
          }

          else
          {
            v47 = CFArrayGetValueAtIndex(a3, 2);
            if (v47)
            {
              CFNumberGetValue(v47, kCFNumberDoubleType, this + 200);
              v48 = qword_20128;
              if (!qword_20128)
              {
                v48 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v48 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                sub_149F0(this + 25);
              }
            }
          }
        }
      }
    }

    return;
  }

  if (CFEqual(cf1, @"ColorAlgoLambda"))
  {
    v19 = CFGetTypeID(a3);
    if (v19 == CFNumberGetTypeID())
    {
      v20 = (this + 212);
      CFNumberGetValue(a3, kCFNumberFloatType, this + 212);
      v21 = qword_20128;
      if (!qword_20128)
      {
        v21 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v21 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *v20;
        valuePtr = 134217984;
        *v52 = v22;
        v23 = "Setting lambda %f.";
        v24 = v21;
        v25 = OS_LOG_TYPE_DEFAULT;
        v26 = 12;
LABEL_81:
        _os_log_impl(&dword_0, v24, v25, v23, &valuePtr, v26);
        return;
      }
    }

    return;
  }

  if (!CFEqual(cf1, @"ChannelRatioMitigationType"))
  {
    if (!CFEqual(cf1, @"RebuildHarmonyDB"))
    {
      if (CFEqual(cf1, @"AmbientLightSensorCalibration"))
      {
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {

          ColorSensorPlugIn::processFDRCalibration(this, a3, 1);
        }
      }

      return;
    }

    v36 = qword_20128;
    if (!qword_20128)
    {
      v36 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v36 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      LOWORD(valuePtr) = 0;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Rebuild databases.", &valuePtr, 2u);
    }

    v37 = *(this + 3);
    Property = IOHIDServiceGetProperty();
    if (Property)
    {
      v39 = Property;
      v40 = CFBooleanGetTypeID();
      if (v40 == CFGetTypeID(v39))
      {
        Value = CFBooleanGetValue(v39);
        v42 = qword_20128;
        if (!qword_20128)
        {
          v42 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v42 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = "Use";
          if (!Value)
          {
            v43 = "Don't use";
          }

          valuePtr = 136315138;
          v52[0] = v43;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%s sysconfig calibration to calibrate sensor\n", &valuePtr, 0xCu);
        }

        if (Value)
        {
          goto LABEL_75;
        }
      }
    }

    v44 = *(this + 3);
    v45 = IOHIDServiceGetProperty();
    if (v45 && v45 == kCFBooleanTrue)
    {
LABEL_75:
      if (ColorSensorPlugIn::processSysConfigCalibration(this, 0, 0, 1))
      {
LABEL_76:
        v46 = qword_20128;
        if (!qword_20128)
        {
          v46 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v46 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          LOWORD(valuePtr) = 0;
          v23 = "Databases were rebuilt successfully.";
          v24 = v46;
          v25 = OS_LOG_TYPE_INFO;
          v26 = 2;
          goto LABEL_81;
        }

        return;
      }
    }

    else if (ColorSensorPlugIn::loadFDRCalibration(this, 1, this + 60))
    {
      goto LABEL_76;
    }

    v50 = qword_20128;
    if (!qword_20128)
    {
      v50 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v50 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_14AF0();
    }

    return;
  }

  v33 = CFGetTypeID(a3);
  if (v33 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a3, kCFNumberIntType, this + 220);
    v34 = qword_20128;
    if (!qword_20128)
    {
      v34 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v34 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(this + 55);
      valuePtr = 67109120;
      LODWORD(v52[0]) = v35;
      v23 = "Setting channel ratio mitigation type %d.";
      v24 = v34;
      v25 = OS_LOG_TYPE_DEFAULT;
      v26 = 8;
      goto LABEL_81;
    }
  }
}

double hybridSolve(uint64_t a1, int a2, uint64_t a3, const float *a4, float32x4_t *a5, uint64_t a6)
{
  v12 = (a2 + a2 * a2) / 2;
  v13 = __chkstk_darwin(a1);
  v15 = (&v30 - v14);
  sub_34D0(v13, v16, v17, v13, a4, a5, v13, a6);
  sub_387C(a1, a2, a5, a1, a4, v15);
  sub_3C48(a2, v15, v18);
  v20.f32[0] = *v15 * 0.0625;
  v21.f32[0] = v15[v12 - 1];
  if (v20.f32[0] <= v21.f32[0])
  {
    if (a2 >= 1)
    {
      v23 = 0;
      v24 = a2 - 1;
      v25 = (a6 + 16);
      v26 = v15;
      do
      {
        v21 = vld1q_dup_f32(v26++);
        v20 = vdivq_f32(*(a6 + 16 * v23), v21);
        *(a6 + 16 * v23++) = v20;
        if (v23 < a2)
        {
          v20 = vnegq_f32(v20);
          v27 = v25;
          v28 = v24;
          do
          {
            v29 = *v26++;
            v21.f32[0] = v29;
            v19 = vmlaq_n_f32(*v27, v20, v29);
            *v27++ = v19;
            --v28;
          }

          while (v28);
        }

        --v24;
        ++v25;
      }

      while (v23 != a2);
    }

    *&result = sub_29B8(a2, a6, v15, v20, *v21.i64, *v19.f32).u64[0];
  }

  else
  {

    generalSolve(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t ColorSensorPlugIn::colourCalculationDynamic(ColorSensorPlugIn *this, float *a2, float *a3, int a4)
{
  v4 = 0;
  if (a2 && a3 && a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      if (a2[i] != 0.0)
      {
        if (*(this + 208) == 1)
        {
          ColorSensorPlugIn::normalizedByEuklidNorm(this, a2, 1, a4);
        }

        v9 = *(this + 14);
        operator new[]();
      }
    }

    a3[2] = 0.0;
    *a3 = 0;
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
    {
      sub_1478C();
    }

    v4 = 1;
    if (*a3 < 0.0)
    {
      *a3 = 0.0;
    }

    if (a3[1] < 0.0)
    {
      a3[1] = 0.0;
    }

    if (a3[2] < 0.0)
    {
      a3[2] = 0.0;
    }

    v10 = qword_20128;
    if (!qword_20128)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a3;
      v13 = a3[1];
      v14 = a3[2];
      v15 = 134219264;
      v16 = v12;
      v17 = 2048;
      v18 = v12 / 3.14159265;
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = v13 / 3.14159265;
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      v26 = v14 / 3.14159265;
      _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Color: X=%f(%f) Y=%f(%f) Z=%f(%f) \n", &v15, 0x3Eu);
    }
  }

  return v4 & 1;
}

void hybridSolveWithRegularization(uint64_t a1, int a2, const void *a3, const float *__A, float32x4_t *a5, uint64_t a6, float a7)
{
  if (a7 == 0.0)
  {

    hybridSolve(a1, a2, a3, __A, a5, a6);
  }

  else
  {
    __C = 0.0;
    v14 = a1;
    vDSP_maxv(__A, 1, &__C, a1);
    if (__C >= 100.0)
    {
      v93 = a6;
      v96 = &v88;
      __chkstk_darwin(v15);
      v94 = (&v88 - v16);
      bzero(&v88 - v16, v17);
      v18 = 4 * a2 * a1;
      v19 = malloc_type_malloc(v18, 0x100004052888210uLL);
      v95 = a1;
      v20 = 12 * a1;
      v98 = malloc_type_malloc(v20, 0x100004052888210uLL);
      v21 = 4 * v14;
      v22 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
      v23 = v22;
      v97 = v19;
      if (v19 && v98 && v22)
      {
        memcpy(v97, a5, v18);
        v24 = v98;
        memcpy(v98, a3, v20);
        memcpy(v23, __A, v21);
        v25 = v95;
        v26 = v95 - 1;
        if (v95 < 1)
        {
          v27 = 0;
          v28 = v97;
          v29 = v94;
        }

        else
        {
          v27 = 0;
          v28 = v97;
          v29 = v94;
          while (*&v23[4 * v27] < 100.0)
          {
            if (v95 == ++v27)
            {
              v27 = v95;
              goto LABEL_27;
            }
          }
        }

        if (v26 > v27)
        {
          v30 = v26;
          v31 = v26;
          do
          {
            if (*&v23[4 * v30] < 100.0)
            {
              v32 = a2;
              v33 = v28;
              if (a2 >= 1)
              {
                do
                {
                  v34 = v33->i32[v31];
                  v33->i32[v31] = v33->i32[v27];
                  v33->i32[v27] = v34;
                  v33 = (v33 + v21);
                  --v32;
                }

                while (v32);
              }

              v35 = 3;
              v36 = v24;
              do
              {
                v37 = v36->i32[v31];
                v36->i32[v31] = v36->i32[v27];
                v36->i32[v27] = v37;
                v36 = (v36 + v21);
                --v35;
              }

              while (v35);
              v38 = *&v23[4 * v30];
              *&v23[4 * v30] = *&v23[4 * v27];
              *&v23[4 * v27] = v38;
              v39 = v27 + 1;
              do
              {
                v27 = v39;
                if (v39 >= v30)
                {
                  break;
                }

                v40 = *&v23[4 * v39++];
              }

              while (v40 < 100.0);
            }

            --v30;
            --v31;
          }

          while (v30 > v27);
        }

LABEL_27:
        v104 = v25 - v27;
        __uplo = 85;
        v41 = v25 - v27 + a2;
        __nrhs = 3;
        __ldb = v41;
        v42 = malloc_type_malloc(4 * v41, 0x100004052888210uLL);
        __lwork = -1;
        *__work = 0;
        v43 = malloc_type_calloc((v41 * v41), 4uLL, 0x100004052888210uLL);
        v44 = malloc_type_calloc(3 * v41, 4uLL, 0x100004052888210uLL);
        if (v104 <= 0)
        {
          v45 = 0;
        }

        else
        {
          v45 = malloc_type_malloc(4 * v104, 0x100004052888210uLL);
        }

        v94 = 0;
        if (v42)
        {
          v46 = !v43 || v44 == 0;
          if (!v46 && v45 != 0)
          {
            v92 = v45;
            v90 = v42;
            v48 = v41;
            v49 = v104;
            if (v104 >= 1)
            {
              v50 = 0;
              v51 = v104;
              do
              {
                v43[v50] = 1.0;
                v50 += v48 + 1;
                --v51;
              }

              while (v51);
            }

            v52 = v95;
            sub_387C(v27, a2, v97, v95, v23, v29);
            v53 = &v23[4 * v27];
            v91 = a2;
            v89 = v23;
            if (a2 <= 0)
            {
              v66 = v27;
              vvsqrtf(v92, v53, &v104);
            }

            else
            {
              v54 = 0;
              v55 = 0;
              v56 = a2;
              v57 = a2 + v52 - v27 + 1;
              v58 = v49 * v57;
              v59 = v92;
              do
              {
                v60 = v58;
                v61 = v56;
                v62 = &v29[v54];
                do
                {
                  v63 = *v62++;
                  v43[v60] = -v63;
                  v60 += v48;
                  --v61;
                }

                while (v61);
                v43[(v49 + v55) * (v48 + 1)] = v43[(v49 + v55) * (v48 + 1)] - a7;
                ++v55;
                v54 += v56--;
                v58 += v57;
              }

              while (v55 != a2);
              v94 = v27;
              vvsqrtf(v59, v53, &v104);
              v64 = 0;
              v65 = &v97->f32[v27];
              do
              {
                vDSP_vmul(v65, 1, v59, 1, &v43[(v64++ + v104) * v48], 1, v104);
                v65 = (v65 + v21);
              }

              while (a2 != v64);
              v66 = v94;
            }

            v67 = 3;
            v68 = v44;
            v69 = &v98->f32[v66];
            v70 = v92;
            do
            {
              vDSP_vmul(v69, 1, v70, 1, v68, 1, v104);
              v68 += v48;
              v69 = (v69 + v21);
              --v67;
            }

            while (v67);
            v71 = v91;
            v23 = v89;
            v72 = v93;
            sub_34D0(v27, v91, v98, v95, v89, v97, v95, v93);
            v73 = 0;
            v74 = v104;
            v75 = v72;
            do
            {
              v76 = v71;
              v77 = v74;
              v78 = v75;
              if (v71 >= 1)
              {
                do
                {
                  v79 = *v78;
                  v78 += 4;
                  v44[v77++] = -v79;
                  --v76;
                }

                while (v76);
              }

              ++v73;
              ++v75;
              v74 += v48;
            }

            while (v73 != 3);
            v80 = v90;
            ssysv_(&__uplo, &__ldb, &__nrhs, v43, &__ldb, v90, v44, &__ldb, __work, &__lwork, &__work[1]);
            __lwork = __work[0];
            v81 = malloc_type_malloc(4 * __work[0], 0x100004052888210uLL);
            if (v81)
            {
              v94 = v81;
              ssysv_(&__uplo, &__ldb, &__nrhs, v43, &__ldb, v80, v44, &__ldb, v81, &__lwork, &__work[1]);
              v82 = 0;
              v83 = __ldb;
              v84 = v104;
              v42 = v80;
              v45 = v92;
              do
              {
                v85 = v71;
                v86 = v84;
                v87 = v72;
                if (v71 >= 1)
                {
                  do
                  {
                    *v87 = LODWORD(v44[v86]);
                    v87 += 4;
                    ++v86;
                    --v85;
                  }

                  while (v85);
                }

                ++v82;
                v72 += 4;
                v84 += v83;
              }

              while (v82 != 3);
            }

            else
            {
              v94 = 0;
              v42 = v80;
              v45 = v92;
            }
          }
        }

        if (v42)
        {
          free(v42);
        }

        if (v43)
        {
          free(v43);
        }

        if (v44)
        {
          free(v44);
        }

        if (v45)
        {
          free(v45);
        }

        if (v94)
        {
          free(v94);
        }
      }

      if (v97)
      {
        free(v97);
      }

      if (v98)
      {
        free(v98);
      }

      if (v23)
      {
        free(v23);
      }
    }

    else
    {
      specialSolveWithRegularization(a1, a2, a7, a3, __A, a5, a6);
    }
  }
}

float32x4_t sub_29B8(int a1, uint64_t a2, uint64_t a3, float32x4_t result, double a5, float32x2_t a6)
{
  if (a1 >= 1)
  {
    v6 = a3 + 4 * ((a1 + a1 * a1) >> 1);
    v7 = (a1 - 1);
    do
    {
      if (v7 < (a1 - 1))
      {
        v8 = (a2 + 16 * v7);
        result = *v8;
        v9 = 4 * a1 - 4;
        v10 = a1 - 2 + 1;
        do
        {
          v11 = *(v6 - 4);
          v6 -= 4;
          a6.i32[0] = v11;
          result = vmlsq_lane_f32(result, *(a2 + 4 * v9), a6, 0);
          *v8 = result;
          --v10;
          v9 -= 4;
        }

        while (v7 < v10);
      }

      v12 = *(v6 - 4);
      v6 -= 4;
      result.i32[0] = v12;
      result = vdivq_f32(*(a2 + 16 * v7), vdupq_lane_s32(*result.f32, 0));
      *(a2 + 16 * v7) = result;
    }

    while (v7-- > 0);
  }

  return result;
}

void generalSolve(int a1, int a2, uint64_t a3, const float *a4, uint64_t a5, uint64_t a6)
{
  LODWORD(__N) = a1;
  v12 = malloc_type_malloc(4 * a2 * a1, 0x100004052888210uLL);
  v13 = malloc_type_malloc(12 * a1, 0x100004052888210uLL);
  v14 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  v15 = v14;
  if (v12)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 0)
  {
    vvsqrtf(v14, a4, &__N);
    if (a2 >= 1)
    {
      v18 = 0;
      do
      {
        vDSP_vmul((a5 + 4 * __N * v18), 1, v15, 1, &v12[__N * v18], 1, __N);
        ++v18;
      }

      while (a2 != v18);
    }

    for (i = 0; i != 3; ++i)
    {
      vDSP_vmul((a3 + 4 * __N * i), 1, v15, 1, &v13[__N * i], 1, __N);
    }

    sub_2BC4(__N, a2, v12, v13, a6);
  }

  if (v12)
  {
    free(v12);
  }

  if (v13)
  {
    free(v13);
  }

  if (v15)
  {
    free(v15);
  }
}

void sub_2BC4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v148 = a5;
  v8 = a2;
  v9 = (__chkstk_darwin)();
  __chkstk_darwin(v9);
  v15 = &v146 - v14;
  v157 = v11;
  v147 = v10;
  if (v16 >= 1)
  {
    v17 = 0;
    v155 = v8 - 1;
    v18 = vdupq_n_s64(v8 - 1);
    v19 = xmmword_16160;
    v12 = xmmword_16170;
    v20 = v11 + 2;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v18, v12));
      if (vuzp1_s16(v21, *v18.i8).u8[0])
      {
        *(v20 - 2) = v17;
      }

      if (vuzp1_s16(v21, *&v18).i8[2])
      {
        *(v20 - 1) = v17 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v20 = v17 + 2;
        v20[1] = v17 + 3;
      }

      v17 += 4;
      v19 = vaddq_s64(v19, v13);
      v12 = vaddq_s64(v12, v13);
      v20 += 4;
    }

    while (((v8 + 3) & 0xFFFFFFFC) != v17);
    if (a2 >= 1)
    {
      v22 = 0;
      v156 = (a3 - 4);
      v154 = v11 + 1;
      v152 = v10;
      v149 = 4 * a1;
      v150 = v8;
      do
      {
        v23 = 0;
        v24 = a1 - v22;
        v25 = -1.0;
        v26 = v22;
        v27 = a3 + 4 * v22;
        v158 = v22;
        do
        {
          while (1)
          {
            v28 = v11[v26];
            if (v22)
            {
              break;
            }

            v33 = cblas_snrm2(a1, (a3 + 4 * v28 * a1), 1);
            v11 = v157;
            v22 = v158;
            *&v15[4 * v28] = v33;
            if (v33 > v25)
            {
              v25 = v33;
              v23 = v26;
            }

            if (++v26 == v8)
            {
              v34 = 0;
              goto LABEL_25;
            }
          }

          v29 = v156[v28 * a1 + v22];
          v30 = (*&v15[4 * v28] * *&v15[4 * v28]) - (v29 * v29);
          v31 = *&v15[4 * *v11];
          if (v30 <= ((v31 * v31) * 0.015625))
          {
            v32 = cblas_snrm2(v24, (v27 + 4 * v28 * a1), 1);
            v11 = v157;
            v22 = v158;
          }

          else
          {
            v32 = sqrtf(v30);
          }

          *&v15[4 * v28] = v32;
          if (v32 > v25)
          {
            v25 = v32;
            v23 = v26;
          }

          ++v26;
        }

        while (v26 != v8);
        v34 = v22;
        if (v25 < fabsf(*&v15[4 * *v11] * 0.00000023842))
        {
          goto LABEL_35;
        }

LABEL_25:
        v35 = v11[v23];
        v11[v23] = v11[v22];
        v11[v22] = v35;
        v36 = v35 * a1 + v34;
        v37 = *(a3 + 4 * v36);
        v38 = -v25;
        if (v37 < 0.0)
        {
          v38 = v25;
        }

        v39 = v37 - v38;
        *(a3 + 4 * v36) = v39;
        v40 = 1.0 / (v38 * v39);
        *&v15[4 * v35] = v38;
        v153 = v35 * a1;
        v151 = v22 + 1;
        if (v22 + 1 < v8)
        {
          v41 = v154;
          v42 = (v27 + 4 * v153);
          v43 = v155;
          do
          {
            v44 = *v41++;
            v45 = cblas_sdot(v24, (v27 + 4 * v44 * a1), 1, v42, 1);
            cblas_saxpy(v24, v40 * v45, v42, 1, (v27 + 4 * v44 * a1), 1);
            --v43;
          }

          while (v43);
        }

        v46 = v152;
        v47 = (a3 + 4 * v153 + 4 * v158);
        v48 = 3;
        v49 = v152;
        v50 = v149;
        do
        {
          v51 = cblas_sdot(v24, v49, 1, v47, 1);
          cblas_saxpy(v24, v40 * v51, v47, 1, v49, 1);
          v49 = (v49 + v50);
          --v48;
        }

        while (v48);
        ++v154;
        --v155;
        v152 = v46 + 4;
        v8 = v150;
        v22 = v151;
        v11 = v157;
      }

      while (v151 != v150);
      goto LABEL_36;
    }
  }

  v22 = 0;
LABEL_35:
  if (v22 == a2)
  {
LABEL_36:
    v52 = 0;
    v53 = v147;
    v54 = &v147[a2 - 2];
    do
    {
      if (a2 >= 1)
      {
        v55 = &v53[v52 * a1];
        v56 = a2 - 2 + 1;
        v57 = a3 + 4 * (a2 - 2);
        v58 = v54;
        v59 = a2;
        while (1)
        {
          v60 = v59--;
          v61 = v11[v59];
          *&v55[v59] = *&v55[v59] / *&v15[4 * v61];
          if (v60 < 2)
          {
            break;
          }

          v62 = (v57 + 4 * v61 * a1);
          v63 = v56;
          v64 = v58;
          do
          {
            v65 = *v62--;
            *v64 = *v64 - (*&v55[v59] * v65);
            --v64;
            v66 = v63-- <= 1;
          }

          while (!v66);
          --v58;
          v57 -= 4;
          --v56;
        }
      }

      ++v52;
      v54 += a1;
    }

    while (v52 != 3);
    v67 = 0;
    v68 = v148;
    do
    {
      if (a2 >= 1)
      {
        v69 = v8;
        v70 = v11;
        v71 = v53;
        do
        {
          v72 = *v71++;
          v73 = v72;
          v74 = *v70++;
          *(v68 + 4 * v67 + 16 * v74) = v73;
          --v69;
        }

        while (v69);
      }

      ++v67;
      v53 += a1;
    }

    while (v67 != 3);
    return;
  }

  if (v22)
  {
    v75 = 0;
    v76 = v22;
    do
    {
      *(a3 + 4 * (v75 + v11[v75] * a1)) = *&v15[4 * v11[v75]];
      ++v75;
    }

    while (v22 != v75);
    v77 = 0;
    v78 = v11 + 1;
    v79 = 1;
    v80.i64[0] = 0x8000000080000000;
    v80.i64[1] = 0x8000000080000000;
    v81 = v8;
    v82 = v11;
    v83 = v147;
    do
    {
      v12.i64[0] = 0;
      if (v77 < a2)
      {
        v84 = v81;
        v85 = v82;
        do
        {
          v86 = *v85++;
          v87 = *(a3 + 4 * (v77 + v86 * a1));
          *v12.i32 = *v12.i32 + (v87 * v87);
          --v84;
        }

        while (v84);
      }

      v88 = v11[v77];
      v89 = v77 + v88 * a1;
      v13.i32[0] = *(a3 + 4 * v89);
      *v12.i32 = sqrtf(*v12.i32);
      v12 = vbslq_s8(v80, v12, v13);
      *v13.i32 = *v13.i32 + *v12.i32;
      *(a3 + 4 * v89) = v13.i32[0];
      if (v77 < a2)
      {
        v90 = 0;
        v91 = sqrtf((*v12.i32 + *v12.i32) * *v13.i32);
        do
        {
          v92 = v77 + v82[v90] * a1;
          *(a3 + 4 * v92) = *(a3 + 4 * v92) / v91;
          ++v90;
        }

        while (v81 != v90);
      }

      v93 = v77 + 1;
      if (v77 + 1 < v22)
      {
        v94 = 1;
        v95 = v78;
        v96 = v79;
        do
        {
          if (v96 >= a2)
          {
            v13.i64[0] = 0x8000000080000000;
          }

          else
          {
            v13.i64[0] = 0;
            v97 = v96;
            v98 = v95;
            do
            {
              v99 = *v98++;
              *v13.i32 = *v13.i32 + (*(a3 + 4 * (v99 * a1 + v96)) * *(a3 + 4 * (v99 * a1 + v77)));
              ++v97;
            }

            while (v97 < a2);
            *v13.i32 = *v13.i32 * -2.0;
          }

          if (v77 < v96)
          {
            v100 = 0;
            do
            {
              *(a3 + 4 * (v82[v100] * a1 + v96)) = *v13.i32 * *(a3 + 4 * (v82[v100] * a1 + v77));
              ++v100;
            }

            while (v94 != v100);
          }

          if (v96 < a2)
          {
            v101 = 0;
            do
            {
              *(a3 + 4 * (v95[v101] * a1 + v96)) = *(a3 + 4 * (v95[v101] * a1 + v96)) + (*v13.i32 * *(a3 + 4 * (v95[v101] * a1 + v77)));
              ++v101;
            }

            while (v96 + v101 < a2);
          }

          ++v96;
          ++v95;
          ++v94;
        }

        while (v96 != v22);
      }

      *&v15[4 * v88] = -*v12.i32;
      ++v79;
      ++v82;
      --v81;
      ++v78;
      ++v77;
    }

    while (v93 != v22);
  }

  else
  {
    v76 = 0;
    v83 = v147;
  }

  v102 = 0;
  v103 = v22;
  v104 = (v83 + 1);
  v105 = 4 * a1;
  v154 = (a3 + 4);
  v155 = a1;
  v152 = 4 * (~v22 + a2);
  v153 = v22 - 1;
  v106 = 4 * v22 - 4;
  v107 = (v83 + v106);
  v108 = v11 + v106;
  v109 = v8 - v22 + 1;
  v150 = v8;
  v151 = v105;
  v149 = v109;
  do
  {
    if (v22)
    {
      v110 = 0;
      v111 = v154;
      v112 = &v83[v102 * v155];
      v113 = v153;
      v114 = v104;
      do
      {
        v115 = v11[v110];
        *&v112[v110] = *&v112[v110] / *&v15[4 * v115];
        v116 = v110 + 1;
        if (v110 + 1 < v76)
        {
          v117 = &v111[v115 * a1];
          v118 = v113;
          v119 = v114;
          do
          {
            v120 = *v117++;
            *v119 = *v119 - (*&v112[v110] * v120);
            ++v119;
            --v118;
          }

          while (v118);
        }

        ++v114;
        ++v111;
        --v113;
        ++v110;
      }

      while (v116 != v103);
    }

    if (v22 < a2)
    {
      v158 = v102;
      v121 = v22;
      v122 = v83;
      v156 = v107;
      bzero(&v83[v22 + v102 * a1], v152 + 4);
      v107 = v156;
      v11 = v157;
      v105 = v151;
      v102 = v158;
      v83 = v122;
      v109 = v149;
      v8 = v150;
      v22 = v121;
    }

    v123 = v109;
    v124 = v108;
    v125 = v107;
    v126 = v22;
    if (v22 >= 1)
    {
      do
      {
        v127 = v126 - 1;
        if (v126 <= a2)
        {
          v128 = 0.0;
          v129 = v123;
          v130 = v124;
          v131 = v125;
          do
          {
            v132 = *v131++;
            v133 = v132;
            v134 = *v130++;
            v128 = v128 + (v133 * *(a3 + 4 * (v127 + v134 * a1)));
            --v129;
          }

          while (v129);
          if (v126 <= a2)
          {
            v135 = 0;
            v136 = v128 * -2.0;
            do
            {
              v125[v135] = v125[v135] + (v136 * *(a3 + 4 * (v127 + v124[v135] * a1)));
              ++v135;
            }

            while (v123 != v135);
          }
        }

        --v125;
        --v124;
        ++v123;
        v66 = v126-- < 2;
      }

      while (!v66);
    }

    ++v102;
    v104 = (v104 + v105);
    v107 = (v107 + v105);
  }

  while (v102 != 3);
  v137 = 0;
  v138 = 4 * v155;
  v139 = v148;
  do
  {
    if (a2 >= 1)
    {
      v140 = v8;
      v141 = v11;
      v142 = v83;
      do
      {
        v143 = *v142++;
        v144 = v143;
        v145 = *v141++;
        *(v139 + 4 * v137 + 16 * v145) = v144;
        --v140;
      }

      while (v140);
    }

    ++v137;
    v83 = (v83 + v138);
  }

  while (v137 != 3);
}

void sub_34D0(uint64_t a1, int a2, float32x4_t *a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v15 = a1;
  v16 = (3 * a2);
  __chkstk_darwin(a1);
  v17 = ((&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0);
  bzero(v17, v18);
  if (v15 < 8)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = 0;
    v20 = a3;
    do
    {
      if (a2 >= 1)
      {
        v21 = 0;
        v22 = (a5 + 4 * v19);
        v24 = *v22;
        v23 = v22[1];
        v25 = (&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v26 = 0;
          v27 = (a6 + 4 * v19 + 4 * v21 * a7);
          v28 = vmulq_f32(v23, v27[1]);
          v29 = vmulq_f32(v24, *v27);
          v30 = v20;
          do
          {
            v31 = (v25 + v26);
            v32 = vmlaq_f32(*(v25 + v26 + 16), v28, v30[1]);
            *v31 = vmlaq_f32(*(v25 + v26), v29, *v30);
            v31[1] = v32;
            v26 += 32;
            v30 = (v30 + 4 * a4);
          }

          while (v26 != 96);
          ++v21;
          v25 += 96;
        }

        while (v21 != a2);
      }

      v19 += 8;
      v20 += 2;
    }

    while (v19 < (v15 - 7));
  }

  if (a2 >= 1)
  {
    v33 = 0;
    do
    {
      *(((&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0) + 16 * v33) = vaddq_f32(*(&dword_10[8 * v33] + ((&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0)), *(((&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0) + 32 * v33));
      ++v33;
    }

    while (v16 != v33);
  }

  if (v19 < v15 - 3)
  {
    v34 = v19;
    v35 = (a3 + 4 * v19);
    do
    {
      if (a2 >= 1)
      {
        v36 = 0;
        v37 = *(a5 + 4 * v34);
        v38 = (&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v39 = 0;
          v40 = vmulq_f32(v37, *(a6 + 4 * v34 + 4 * v36 * a7));
          v41 = v35;
          do
          {
            *(v38 + v39) = vmlaq_f32(*(v38 + v39), v40, *v41);
            v39 += 16;
            v41 = (v41 + 4 * a4);
          }

          while (v39 != 48);
          ++v36;
          v38 += 48;
        }

        while (v36 != a2);
      }

      v34 += 4;
      ++v35;
    }

    while (v34 < v15 - 3);
    LODWORD(v19) = v34;
  }

  if (a2 >= 1)
  {
    v42 = 0;
    do
    {
      v17[v42] = vadd_f32(*&vextq_s8(*v17[2 * v42].f32, *v17[2 * v42].f32, 8uLL), v17[2 * v42]);
      ++v42;
    }

    while (v16 != v42);
  }

  if (v19 < v15 - 1)
  {
    v43 = v19;
    v44 = &a3->f32[v19];
    do
    {
      if (a2 >= 1)
      {
        v45 = 0;
        v46 = *(a5 + 4 * v43);
        v47 = (&v61 - 4 * v16) & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v48 = 0;
          v49 = vmul_f32(v46, *(a6 + 4 * v43 + 4 * v45 * a7));
          v50 = v44;
          do
          {
            *(v47 + v48) = vmla_f32(*(v47 + v48), v49, *v50);
            v48 += 8;
            v50 = (v50 + 4 * a4);
          }

          while (v48 != 24);
          ++v45;
          v47 += 24;
        }

        while (v45 != a2);
      }

      v43 += 2;
      ++v44;
    }

    while (v43 < v15 - 1);
    LODWORD(v19) = v43;
  }

  if (a2 >= 1)
  {
    v51 = 0;
    v52 = a8;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(v52 + 4 * i) = vaddv_f32(v17[i]);
      }

      ++v51;
      v52 += 16;
      v17 += 3;
    }

    while (v51 != a2);
    if (v19 < v15)
    {
      v54 = 0;
      v55 = *(a5 + 4 * v19);
      v56 = a6 + 4 * v19;
      v57 = &a3->f32[v19];
      do
      {
        v58 = 0;
        v59 = v55 * *(v56 + 4 * v54 * a7);
        v60 = v57;
        do
        {
          *(a8 + v58) = *(a8 + v58) + (*v60 * v59);
          v58 += 4;
          v60 += a4;
        }

        while (v58 != 12);
        ++v54;
        a8 += 16;
      }

      while (v54 != a2);
    }
  }
}

void sub_387C(uint64_t a1, int a2, float32x4_t *a3, int a4, uint64_t a5, float *a6)
{
  v10 = a2;
  v11 = a1;
  v12 = a2 + a2 * a2;
  v13 = (v12 / 2);
  __chkstk_darwin(a1);
  v14 = ((&v72 - 4 * v13) & 0xFFFFFFFFFFFFFFE0);
  bzero(v14, v15);
  if (v11 < 8)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 4 * a4;
    v18 = a3;
    do
    {
      if (v10 >= 1)
      {
        v19 = 0;
        LODWORD(v20) = 0;
        v21 = (a5 + 4 * v16);
        v23 = *v21;
        v22 = v21[1];
        v24 = v10;
        v25 = v18;
        do
        {
          v26 = (a3 + 4 * v16 + 4 * v19 * a4);
          v27 = vmulq_f32(v22, v26[1]);
          v28 = vmulq_f32(v23, *v26);
          v20 = v20;
          v29 = v24;
          v30 = v25;
          do
          {
            v31 = &v14[4 * v20++];
            v32 = vmlaq_f32(v31[1], v30[1], v27);
            *v31 = vmlaq_f32(*v31, *v30, v28);
            v31[1] = v32;
            v30 = (v30 + v17);
            --v29;
          }

          while (v29);
          ++v19;
          v25 = (v25 + v17);
          --v24;
        }

        while (v19 != v10);
      }

      v16 += 8;
      v18 += 2;
    }

    while (v16 < (v11 - 7));
  }

  if (v12 >= 2)
  {
    v33 = 0;
    do
    {
      *(((&v72 - 4 * v13) & 0xFFFFFFFFFFFFFFE0) + 16 * v33) = vaddq_f32(*(&dword_10[8 * v33] + ((&v72 - 4 * v13) & 0xFFFFFFFFFFFFFFE0)), *(((&v72 - 4 * v13) & 0xFFFFFFFFFFFFFFE0) + 32 * v33));
      ++v33;
    }

    while (v13 != v33);
  }

  if (v16 < v11 - 3)
  {
    v34 = v16;
    v35 = 4 * a4;
    v36 = (a3 + 4 * v16);
    do
    {
      if (v10 >= 1)
      {
        v37 = 0;
        v38 = 0;
        v39 = *(a5 + 4 * v34);
        v40 = v36;
        v41 = v10;
        do
        {
          v42 = &v14[2 * v37];
          v43 = vmulq_f32(v39, *(a3 + 4 * v34 + 4 * v38 * a4));
          v44 = v40;
          v45 = v41;
          do
          {
            *v42 = vmlaq_f32(*v42, *v44, v43);
            ++v42;
            v44 = (v44 + v35);
            --v45;
          }

          while (v45);
          ++v38;
          v37 += v41--;
          v40 = (v40 + v35);
        }

        while (v38 != v10);
      }

      v34 += 4;
      ++v36;
    }

    while (v34 < v11 - 3);
    LODWORD(v16) = v34;
  }

  if (v12 >= 2)
  {
    v46 = 0;
    do
    {
      v14[v46] = vadd_f32(*&vextq_s8(*v14[2 * v46].f32, *v14[2 * v46].f32, 8uLL), v14[2 * v46]);
      ++v46;
    }

    while (v13 != v46);
  }

  if (v16 < v11 - 1)
  {
    v47 = v16;
    v48 = 4 * a4;
    v49 = &a3->f32[v16];
    do
    {
      if (v10 >= 1)
      {
        v50 = 0;
        v51 = 0;
        v52 = *(a5 + 4 * v47);
        v53 = v49;
        v54 = v10;
        do
        {
          v55 = &v14[v50];
          v56 = vmul_f32(v52, *&a3->f32[v47 + v51 * a4]);
          v57 = v53;
          v58 = v54;
          do
          {
            *v55 = vmla_f32(*v55, *v57, v56);
            ++v55;
            v57 = (v57 + v48);
            --v58;
          }

          while (v58);
          ++v51;
          v50 += v54--;
          v53 = (v53 + v48);
        }

        while (v51 != v10);
      }

      v47 += 2;
      ++v49;
    }

    while (v47 < v11 - 1);
    LODWORD(v16) = v47;
  }

  if (v12 >= 2)
  {
    v59 = a6;
    do
    {
      v60 = *v14++;
      *v59++ = vaddv_f32(v60);
      --v13;
    }

    while (v13);
  }

  if (v16 < v11 && v10 >= 1)
  {
    v61 = 0;
    v62 = 0;
    v63 = v16;
    v64 = &a3->f32[v16];
    v65 = 4 * a4;
    v66 = v64;
    v67 = v10;
    do
    {
      v68 = &a6[v61];
      v69 = v64[v62 * a4] * *(a5 + 4 * v63);
      v70 = v66;
      v71 = v10;
      do
      {
        *v68 = *v68 + (v69 * *v70);
        ++v68;
        v70 = (v70 + v65);
        --v71;
      }

      while (v71);
      ++v62;
      v61 += v10--;
      v66 = (v66 + v65);
    }

    while (v62 != v67);
  }
}

float sub_3C48(int a1, uint64_t a2, float result)
{
  if (a1 == 5)
  {
    v25 = sqrtf(*a2);
    *a2 = v25;
    _Q0 = vmulq_n_f32(*(a2 + 4), 1.0 / v25);
    _S4 = _Q0.i32[1];
    _S5 = _Q0.i32[2];
    v29 = *(a2 + 28) - (_Q0.f32[2] * _Q0.f32[0]);
    _S16 = _Q0.i32[3];
    v31 = *(a2 + 32) - (_Q0.f32[3] * _Q0.f32[0]);
    v32 = sqrtf(*(a2 + 20) - (_Q0.f32[0] * _Q0.f32[0]));
    v33 = 1.0 / v32;
    v34 = (*(a2 + 24) - (_Q0.f32[1] * _Q0.f32[0])) * (1.0 / v32);
    *(a2 + 20) = v32;
    *(a2 + 24) = v34;
    v35 = (1.0 / v32) * v29;
    v36 = v33 * v31;
    v37 = *(a2 + 36);
    v38 = *(a2 + 40);
    __asm
    {
      FMLS            S7, S4, V0.S[1]
      FMLS            S17, S5, V0.S[1]
    }

    v41 = *(a2 + 44);
    v42 = *(a2 + 48);
    __asm { FMLS            S4, S16, V0.S[1] }

    v44 = _S7 - (v34 * v34);
    v45 = _S17 - (v34 * v35);
    v46 = _S4 - (v34 * v36);
    *(a2 + 4) = _Q0;
    *(a2 + 28) = v35;
    *(a2 + 32) = v36;
    v47 = sqrtf(v44);
    v48 = v45 * (1.0 / v47);
    *(a2 + 36) = v47;
    *(a2 + 40) = v48;
    v49 = (1.0 / v47) * v46;
    __asm { FMLS            S18, S5, V0.S[2] }

    v51 = *(a2 + 52);
    __asm { FMLS            S3, S16, V0.S[2] }

    v53 = _S18 - (v35 * v35);
    v54 = _S3 - (v35 * v36);
    v55 = sqrtf(v53 - (v48 * v48));
    *(a2 + 44) = v49;
    *(a2 + 48) = v55;
    v56 = (v54 - (v48 * v49)) / v55;
    *(a2 + 52) = v56;
    __asm { FMLA            S3, S16, V0.S[3] }

    v23 = (_S3 + (v49 * v49)) + (v56 * v56);
    v24 = 56;
  }

  else
  {
    if (a1 != 4)
    {
      return result;
    }

    v3 = sqrtf(*a2);
    *a2 = v3;
    v4 = 1.0 / v3;
    _D2 = vmul_n_f32(*(a2 + 4), v4);
    *(a2 + 4) = _D2;
    _S0 = v4 * *(a2 + 12);
    _S4 = _D2.i32[1];
    v8 = *(a2 + 20) - (_D2.f32[1] * _D2.f32[0]);
    v9 = *(a2 + 24) - (_S0 * _D2.f32[0]);
    v10 = sqrtf(*(a2 + 16) - (_D2.f32[0] * _D2.f32[0]));
    *(a2 + 12) = _S0;
    *(a2 + 16) = v10;
    v11 = 1.0 / v10;
    v12 = v8 * (1.0 / v10);
    v13 = v11 * v9;
    *(a2 + 20) = v12;
    *(a2 + 24) = v13;
    v14 = *(a2 + 28);
    v15 = *(a2 + 32);
    __asm
    {
      FMLS            S5, S4, V2.S[1]
      FMLS            S6, S0, V2.S[1]
    }

    _D2.f32[0] = sqrtf(_S5 - (v12 * v12));
    v22 = (_S6 - (v12 * v13)) / _D2.f32[0];
    *(a2 + 28) = _D2.i32[0];
    *(a2 + 32) = v22;
    v23 = ((v13 * v13) + (_S0 * _S0)) + (v22 * v22);
    v24 = 36;
  }

  result = sqrtf(*(a2 + v24) - v23);
  *(a2 + v24) = result;
  return result;
}

BOOL ColorSensorPlugIn::multiplyMatrices(ColorSensorPlugIn *this, float *a2, int a3, unsigned int a4, float *a5, int a6, int a7, float *a8)
{
  if (a4 == a6)
  {
    if (a3)
    {
      v10 = 0;
      for (i = 0; i != a3; ++i)
      {
        if (a7)
        {
          for (j = 0; j != a7; a8[(i * a7 + j++)] = v13)
          {
            v13 = 0.0;
            if (a4)
            {
              v14 = a4;
              v15 = v10;
              v16 = j;
              do
              {
                v13 = v13 + (a2[v15] * a5[v16]);
                v16 += a7;
                ++v15;
                --v14;
              }

              while (v14);
            }
          }
        }

        v10 += a4;
      }
    }
  }

  else
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14D90();
    }
  }

  return a4 == a6;
}

void ColorSensorPlugIn::logALSSample(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 228);
  if (v5 == 8)
  {
    if (!a2)
    {
      return;
    }
  }

  else if (!a2 || v5 != 9)
  {
    return;
  }

  if (IOHIDEventGetType() != 12)
  {
    return;
  }

  TimeStamp = IOHIDEventGetTimeStamp();
  IOHIDEventGetDoubleValue();
  v8 = v7;
  IOHIDEventGetDoubleValue();
  v50 = v9;
  IOHIDEventGetDoubleValue();
  v49 = v10;
  IOHIDEventGetDoubleValue();
  v11.f64[0] = v49;
  v13 = v50 + v49 + v12;
  if (v13 == 0.0)
  {
    v14 = 0uLL;
  }

  else
  {
    v11.f64[1] = v50;
    v14 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v11, vdupq_lane_s64(COERCE__INT64(v13), 0))));
  }

  v51 = v14;
  Children = IOHIDEventGetChildren();
  if (Children && CFArrayGetValueAtIndex(Children, 0) && IOHIDEventGetIntegerValue() == 137 && (DataValue = IOHIDEventGetDataValue()) != 0)
  {
    v17 = DataValue;
    *__str = 0;
    v99 = 0;
    v100 = 0;
    if (*(DataValue + 136) == 1)
    {
      snprintf(__str, 0x14uLL, " filteredLux=%.3f", *(DataValue + 132));
    }

    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 272) * TimeStamp;
      v20 = *(v17 + 28);
      v21 = *(v17 + 32);
      v22 = *(v17 + 36);
      v23 = *(v17 + 40);
      v24 = *(v17 + 44);
      v25 = *(v17 + 52);
      v26 = *(v17 + 18);
      if (*(v17 + 82))
      {
        v27 = "ASYNC";
      }

      else
      {
        v27 = "SYNC";
      }

      v28 = *(v17 + 80);
      v29 = *(v17 + 24);
      v30 = *(v17 + 6);
      v31 = *(v17 + 83);
      v32 = *(v17 + 87);
      v33 = *(v17 + 91);
      v34 = *(v17 + 95);
      v35 = *(v17 + 99);
      v36 = *v17;
      *buf = 134223618;
      v53 = v19;
      v54 = 2048;
      v55 = v8;
      v56 = 2080;
      v57 = __str;
      v58 = 2048;
      v59 = v51.f64[1];
      v60 = 2048;
      v61 = v51.f64[0];
      v62 = 2048;
      v63 = v20;
      v64 = 2048;
      v65 = v21;
      v66 = 2048;
      v67 = v22;
      v68 = 2048;
      v69 = v23;
      v70 = 2048;
      v71 = v24;
      v72 = 2048;
      v73 = v25;
      v74 = 1024;
      v75 = v26;
      v76 = 2080;
      v77 = v27;
      v78 = 1024;
      v79 = v28;
      v80 = 2048;
      v81 = v29;
      v82 = 1024;
      v83 = v30;
      v84 = 1024;
      v85 = v31;
      v86 = 1024;
      v87 = v32;
      v88 = 1024;
      v89 = v33;
      v90 = 1024;
      v91 = v34;
      v92 = 1024;
      v93 = v35;
      v94 = 1024;
      v95 = v36;
      v96 = 1024;
      v97 = a3;
      v37 = "[ALS] ts=%.3f lux=%.3f%s xy=(%.3f %.3f) chs=[%.0f %.0f %.0f %.0f %.0f] CCT1=%.3f gain=%dx mode=%s subsamples=%u rawLux=%.3f nits=%u xTalk=[%u %u %u %u %u] status=0x%02X copyEvent=%d";
      v38 = inited;
      v39 = 192;
      goto LABEL_29;
    }
  }

  else
  {
    v40 = qword_20128;
    if (!qword_20128)
    {
      v40 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v40 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 272) * TimeStamp;
      IOHIDEventGetFloatValue();
      v43 = v42;
      IOHIDEventGetFloatValue();
      v45 = v44;
      IOHIDEventGetFloatValue();
      v47 = v46;
      IOHIDEventGetFloatValue();
      *buf = 134220032;
      v53 = v41;
      v54 = 2048;
      v55 = v8;
      v56 = 2048;
      v57 = *&v51.f64[1];
      v58 = 2048;
      v59 = v51.f64[0];
      v60 = 2048;
      v61 = v43;
      v62 = 2048;
      v63 = v45;
      v64 = 2048;
      v65 = v47;
      v66 = 2048;
      v67 = v48;
      v68 = 1024;
      LODWORD(v69) = a3;
      v37 = "[ALS] ts=%.3f lux=%.3f xy=(%.3f %.3f) chs=[%.0f %.0f %.0f %.0f N/A] copyEvent=%d";
      v38 = v40;
      v39 = 88;
LABEL_29:
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
    }
  }
}

uint64_t ColorSensorPlugIn::Release(ColorSensorPlugIn *this)
{
  v1 = *(this + 4);
  *(this + 4) = v1 - 1;
  if (v1 == 1)
  {
    if (*(this + 12))
    {
      operator delete[]();
    }

    if (*(this + 11))
    {
      operator delete[]();
    }

    if (*(this + 13))
    {
      operator delete[]();
    }

    ColorSensorPlugIn::~ColorSensorPlugIn(this);
    operator delete();
  }

  return (v1 - 1);
}

ColorSensorPlugIn *ColorSensorPlugInFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  Typed = CFAllocatorAllocateTyped();
  v5 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xD1u, 0x14u, 0x8Fu, 0xE3u, 0x60u, 0xF3u, 0x4Bu, 0x3Bu, 0x85u, 5u, 0xE2u, 0x8Cu, 0x1Eu, 0x66u, 0xEBu, 0xC8u);
  ColorSensorPlugIn::ColorSensorPlugIn(Typed, v5);
  return Typed;
}

void ColorSensorPlugIn::ColorSensorPlugIn(ColorSensorPlugIn *this, CFTypeRef cf)
{
  *this = &ColorSensorPlugIn::sColorSensorPlugInFtbl;
  *(this + 1) = CFRetain(cf);
  *(this + 4) = 1;
  *(this + 148) = 0;
  *(this + 176) = 0;
  *(this + 208) = 0;
  *(this + 53) = 0;
  *(this + 11) = 0;
  *(this + 6) = 0u;
  *(this + 236) = 1;
  *(this + 264) = 0;
  CFPlugInAddInstanceForFactory(cf);
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  qword_20128 = os_log_create("com.apple.CoreBrightness.ColourSensorFilterPlugin", "default");
  mach_timebase_info(&info);
  LODWORD(v4) = info.numer;
  LODWORD(v5) = info.denom;
  *(this + 34) = v4 / v5 * 0.000000001;
}

uint64_t ColorSensorPlugIn::QueryInterface(ColorSensorPlugIn *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 5u, 5u, 0xD7u, 0x8Du, 0x4Fu, 0x4Eu, 0x4Cu, 0x41u, 0xA3u, 0xA6u, 0xC7u, 0xA7u, 0x7Bu, 0x41u, 0xBDu, 0xACu);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xC7u, 0x10u, 0x95u, 0x1Du, 0x18u, 0x40u, 0x45u, 0x6Eu, 0x82u, 0xE7u, 0xFCu, 0xA1u, 0xA0u, 0xFAu, 0x7Fu, 0xE4u), CFEqual(v5, v7)) || (v8 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v8)))
  {
    v9 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v9 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v9;
}

uint64_t ColorSensorPlugIn::match()
{
  if (IOHIDServiceConformsTo())
  {
    v0 = IOHIDServiceCopyProperty();
    if (v0)
    {
      v1 = v0;
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v1))
      {
        if (CFArrayGetCount(v1) >= 1)
        {
          v3 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
            v5 = CFStringGetTypeID();
            if (v5 == CFGetTypeID(ValueAtIndex) && (CFEqual(@"als,ct709", ValueAtIndex) || CFEqual(@"als,ct711", ValueAtIndex) || CFEqual(@"als,ct720", ValueAtIndex) || CFEqual(@"als,tcs3490", ValueAtIndex)))
            {
              break;
            }

            if (CFArrayGetCount(v1) <= ++v3)
            {
              goto LABEL_23;
            }
          }

          inited = qword_20128;
          if (!qword_20128)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = init_default_corebrightness_log();
            }
          }

          if (!os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_47;
          }

          v12 = 136446210;
          CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x600u);
          goto LABEL_46;
        }
      }

      else
      {
        v6 = CFStringGetTypeID();
        if (v6 == CFGetTypeID(v1) && (CFEqual(@"als,ct709", v1) || CFEqual(@"als,ct711", v1) || CFEqual(@"als,ct720", v1) || CFEqual(@"als,tcs3490", v1)))
        {
          inited = qword_20128;
          if (!qword_20128)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = init_default_corebrightness_log();
            }
          }

          if (!os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_47;
          }

LABEL_22:
          v12 = 136446210;
          CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
LABEL_46:
          _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Matched on: %{public}s\n", &v12, 0xCu);
          goto LABEL_47;
        }
      }

LABEL_23:
      CFRelease(v1);
    }

    v8 = IOHIDServiceCopyProperty();
    if (v8)
    {
      v1 = v8;
      v9 = CFStringGetTypeID();
      if (v9 != CFGetTypeID(v1) || !CFEqual(@"AppleSPUCT709", v1) && !CFEqual(@"AppleSPUCT720", v1) && !CFEqual(@"AppleSPUCT721", v1) && !CFEqual(@"AppleSPUCT724", v1) && !CFEqual(@"AppleSPUCT725", v1) && !CFEqual(@"AppleSPUCT726", v1) && !CFEqual(@"AppleSPUVD6286", v1) && !CFEqual(@"AppleSPUVD6287", v1))
      {
        v10 = 0;
LABEL_48:
        CFRelease(v1);
        return v10;
      }

      inited = qword_20128;
      if (!qword_20128)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (!os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
LABEL_47:
        v10 = 1000;
        goto LABEL_48;
      }

      goto LABEL_22;
    }
  }

  return 0;
}

float clamp(float a1, float a2, float a3)
{
  if (a1 <= a3)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

float *find_bound(float *result, unint64_t a2, unint64_t *a3, uint64_t *a4, float a5)
{
  v5 = 0;
  v6 = 0;
  if (!result || !a2)
  {
    goto LABEL_13;
  }

  if (*result > a5)
  {
    v5 = 0;
    v6 = 1;
LABEL_13:
    *a3 = v5;
    *a4 = v6;
    return result;
  }

  v6 = a2 - 1;
  if (result[a2 - 1] <= a5)
  {
    v5 = a2 - 2;
    goto LABEL_13;
  }

  if (a2 >= 2)
  {
    v7 = 0;
    for (i = result + 1; *(i - 1) > a5 || *i <= a5; ++i)
    {
      if (1 - a2 == --v7)
      {
        return result;
      }
    }

    v5 = -v7;
    v6 = 1 - v7;
    goto LABEL_13;
  }

  return result;
}

float *two_dimensional_interpolation(float *result, unint64_t a2, float *a3, unint64_t a4, uint64_t a5, float a6, float a7)
{
  if (a4 >= 2 && a2 >= 2)
  {
    v8 = result;
    if (result)
    {
      if (a3 && a5)
      {
        v12 = result[a2 - 1];
        if (v12 >= a6)
        {
          v12 = a6;
        }

        if (*result <= a6)
        {
          v13 = v12;
        }

        else
        {
          v13 = *result;
        }

        v14 = a3[a4 - 1];
        if (v14 >= a7)
        {
          v14 = a7;
        }

        if (*a3 <= a7)
        {
          v15 = v14;
        }

        else
        {
          v15 = *a3;
        }

        v26 = 0;
        v27 = 0;
        find_bound(result, a2, &v27, &v26, v13);
        v24 = 0;
        v25 = 0;
        result = find_bound(a3, a4, &v25, &v24, v15);
        v16 = v8[v27];
        v17 = v8[v26];
        v18 = a3[v25];
        v19 = a3[v24];
        v20 = (v17 - v16) * (v19 - v18);
        v21 = fabsf(v20);
        v22 = 1.0 / v20;
        if (v21 <= (fmaxf(v21, 0.0) * 0.00000011921))
        {
          v22 = 1.0;
        }

        v23 = (((*(a5 + 4 * v24 * a2 + 4 * v27) * (((v17 - v13) * (v15 - v18)) * v22)) + ((((v17 - v13) * (v19 - v15)) * v22) * *(a5 + 4 * v25 * a2 + 4 * v27))) + ((((v13 - v16) * (v19 - v15)) * v22) * *(a5 + 4 * v25 * a2 + 4 * v26))) + ((((v13 - v16) * (v15 - v18)) * v22) * *(a5 + 4 * v24 * a2 + 4 * v26));
      }
    }
  }

  return result;
}

float mach_time_to_nanoseconds(unint64_t a1)
{
  if (qword_20080 != -1)
  {
    sub_13DAC();
  }

  return *&dword_20000 * a1;
}

float mach_time_to_milliseconds(unint64_t a1)
{
  if (qword_20080 != -1)
  {
    sub_13DAC();
  }

  return (*&dword_20000 * a1) / 1000000.0;
}

float mach_time_to_seconds(unint64_t a1)
{
  if (qword_20080 != -1)
  {
    sub_13DAC();
  }

  return (*&dword_20000 * a1) / 1000000000.0;
}

float mach_time_now_in_nanoseconds()
{
  v0 = mach_absolute_time();
  if (qword_20080 != -1)
  {
    sub_13DAC();
  }

  return *&dword_20000 * v0;
}

float mach_time_now_in_milliseconds()
{
  v0 = mach_absolute_time();
  if (qword_20080 != -1)
  {
    sub_13DAC();
  }

  return (*&dword_20000 * v0) / 1000000.0;
}

float mach_time_now_in_seconds()
{
  v0 = mach_absolute_time();
  if (qword_20080 != -1)
  {
    sub_13DAC();
  }

  return (*&dword_20000 * v0) / 1000000000.0;
}

unint64_t create_uint32_array_from_cfdata_0(const void *a1, UInt8 **a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDataGetTypeID()))
  {
    v7 = 0;
    goto LABEL_6;
  }

  Length = CFDataGetLength(a1);
  if ((CFDataGetLength(a1) & 3) == 0)
  {
    v6 = Length >> 2;
    v7 = malloc_type_calloc(Length >> 2, 4uLL, 0x100004052888210uLL);
    if (v7)
    {
      v9.length = Length & 0xFFFFFFFFFFFFFFFCLL;
      v9.location = 0;
      CFDataGetBytes(a1, v9, v7);
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
LABEL_7:
    *a2 = v7;
    return v6;
  }

  return 0;
}

const __CFData *get_uint32_from_cfdata_0(const __CFData *result, _DWORD *a2)
{
  *buffer = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 4)
    {
      v7.location = 0;
      v7.length = 4;
      CFDataGetBytes(v3, v7, buffer);
      result = (&dword_0 + 1);
      v5 = *buffer;
    }

    else
    {
      v5 = 0;
      result = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

const __CFData *sub_518C(const __CFData *result, _DWORD *a2)
{
  *buffer = 0;
  v3 = 0;
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFDataGetTypeID() && CFDataGetLength(v4) == 4)
    {
      v7.location = 0;
      v7.length = 4;
      CFDataGetBytes(v4, v7, buffer);
      result = (&dword_0 + 1);
      v3 = *buffer;
    }

    else
    {
      result = 0;
    }
  }

  *a2 = v3;
  return result;
}

CFTypeRef load_integer_array_from_edt(io_registry_entry_t a1, CFStringRef key, UInt8 **a3)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (result)
  {
    v5 = result;
    uint32_array_from_cfdata_0 = create_uint32_array_from_cfdata_0(result, a3);
    CFRelease(v5);
    return uint32_array_from_cfdata_0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t load_float_array_from_edt(io_registry_entry_t a1, CFStringRef key, void *a3)
{
  v4 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (v4)
  {
    v5 = v4;
    v8 = 0;
    v6 = create_uint32_array_from_cfdata_0(v4, &v8);
    *a3 = v8;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  return v6;
}

float load_float_from_edt(io_registry_entry_t a1, CFStringRef key)
{
  v5 = NAN;
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v2)
  {
    return NAN;
  }

  v3 = v2;
  sub_518C(v2, &v5);
  CFRelease(v3);
  return v5;
}

const __CFData *load_int_from_edt(io_registry_entry_t a1, CFStringRef key, _DWORD *a3)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (result)
  {
    v5 = result;
    uint32_from_cfdata_0 = get_uint32_from_cfdata_0(result, a3);
    CFRelease(v5);
    return uint32_from_cfdata_0;
  }

  return result;
}

const __CFData *load_uint_from_edt(io_registry_entry_t a1, CFStringRef key, _DWORD *a3)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (result)
  {
    v5 = result;
    uint32_from_cfdata_0 = get_uint32_from_cfdata_0(result, a3);
    CFRelease(v5);
    return uint32_from_cfdata_0;
  }

  return result;
}

float load_fixed_float_from_edt(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v2)
  {
    return NAN;
  }

  v3 = v2;
  v6 = 0;
  if (get_uint32_from_cfdata_0(v2, &v6))
  {
    v4 = v6 * 0.000015259;
  }

  else
  {
    v4 = NAN;
  }

  CFRelease(v3);
  return v4;
}

const __CFData *load_BOOL_from_edt(io_registry_entry_t a1, const __CFString *a2, BOOL *a3)
{
  v5 = 0;
  result = load_uint_from_edt(a1, a2, &v5);
  if (result)
  {
    *a3 = v5 != 0;
  }

  return result;
}

double scaleForExponent(int a1)
{
  result = 1.0;
  if (a1 >= 8)
  {
    if (a1 <= 0xF)
    {
      for (i = 16; i > a1; --i)
      {
        result = result * 10.0;
      }
    }
  }

  else
  {
    v2 = 1.0;
    if (a1 >= 1)
    {
      do
      {
        v2 = v2 * 10.0;
        --a1;
      }

      while (a1);
    }

    return 1.0 / v2;
  }

  return result;
}

double AAP_GCP_LuxThreshold(double a1)
{
  if (a1 <= *"")
  {
    return a1 * -0.146673 + a1 * 0.000081 * a1 + 74.694167;
  }

  v1 = 13.0;
  if (a1 >= 10000.0)
  {
    v2 = 50.0;
    v3 = a1 + -10000.0;
    if (v3 <= 50.0)
    {
      v2 = v3;
    }

    if (v3 >= 13.0)
    {
      return v2;
    }

    else
    {
      return 13.0;
    }
  }

  return v1;
}

char *get_int_from_bootarg(const char *a1, _DWORD *a2)
{
  bzero(__s1, 0x400uLL);
  v7 = 1024;
  if (sysctlbyname("kern.bootargs", __s1, &v7, 0, 0))
  {
    return 0;
  }

  result = strstr(__s1, a1);
  if (result)
  {
    v5 = result;
    v6 = strlen(a1);
    *a2 = strtol(&v5[v6 + 1], 0, 0);
    return (&dword_0 + 1);
  }

  return result;
}

char *get_float_from_bootarg(const char *a1, float *a2)
{
  bzero(__s1, 0x400uLL);
  v7 = 1024;
  if (sysctlbyname("kern.bootargs", __s1, &v7, 0, 0))
  {
    return 0;
  }

  result = strstr(__s1, a1);
  if (result)
  {
    v5 = result;
    v6 = strlen(a1);
    *a2 = strtof(&v5[v6 + 1], 0);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t printUsage(void)
{
  puts("FDRCalibrationTester <calibrationType> <filepath> [-print] [-parse]");
  puts("\nCurrently only supports HmCA 10.0");

  return puts("\nCalibration Types: [HmCA10]");
}

os_log_t init_default_corebrightness_log()
{
  v0 = os_log_create("com.apple.CoreBrightness", "default");
  _COREBRIGHTNESS_LOG_DEFAULT = v0;
  if (!v0)
  {
    v0 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_13DC0();
    }

    _COREBRIGHTNESS_LOG_DEFAULT = &_os_log_default;
  }

  return v0;
}

uint64_t CBU_IsHarmonySupported()
{
  bzero(__s1, 0x400uLL);
  v2 = 1024;
  if (sysctlbyname("kern.bootargs", __s1, &v2, 0, 0) || !strstr(__s1, "FORCE_HARMONY_SUPPORT"))
  {
    return 0;
  }

  v0 = 1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v4 = "CBU_IsHarmonySupported";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: boot-arg to enforce harmony support", buf, 0xCu);
  }

  return v0;
}

uint64_t CBU_PlatformNativelySupportsColorALS()
{
  if (qword_20090 != -1)
  {
    sub_13E08();
  }

  return byte_20004;
}

void sub_614C(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/arm-io/aop/iop-aop-nub");
  if (v1)
  {
    v2 = v1;
    iterator[0] = 0;
    v3 = IORegistryEntryCreateIterator(v1, "IODeviceTree", 0, iterator);
    v4 = iterator[0];
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = iterator[0] == 0;
    }

    if (!v5)
    {
      v6 = IOIteratorNext(iterator[0]);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v11 = 0;
          if (load_BOOL_from_edt(v6, @"als-supports-color", &v11))
          {
            v8 |= v11;
            v7 = 1;
          }

          v6 = IOIteratorNext(iterator[0]);
        }

        while (v6);
        v9 = byte_20004 != 0;
        if (v7)
        {
          v9 = v8;
        }
      }

      else
      {
        v9 = byte_20004 != 0;
      }

      byte_20004 = v9;
      v4 = iterator[0];
    }

    IOObjectRelease(v4);
    IOObjectRelease(v2);
  }

  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    init_default_corebrightness_log();
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    iterator[0] = 67109120;
    iterator[1] = byte_20004;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Platform natively supports color ALS: %d", iterator, 8u);
  }
}

uint64_t CBU_ForceUpdateFrequencyAndFrameSkip()
{
  if (qword_200A0 != -1)
  {
    sub_13E1C();
  }

  return byte_20098;
}

uint64_t CBU_ForceFrameAfterBrightnessUpdate()
{
  if (qword_200B0 != -1)
  {
    sub_13E30();
  }

  return byte_200A8;
}

void sub_6460(id a1)
{
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
  byte_200A8 |= MGIsDeviceOneOfType();
}

uint64_t CBU_PassContrastEnhancerStrengthThroughSyncDBV()
{
  if (qword_200B8 != -1)
  {
    sub_13E44();
  }

  return byte_20005;
}

void sub_67DC(id a1)
{
  if (byte_20005 != 1 || (v1 = MGIsDeviceOneOfType(), byte_20005 = v1 ^ 1, (v1 & 1) != 0) || (v2 = MGIsDeviceOneOfType(), byte_20005 = v2 ^ 1, (v2 & 1) != 0) || (v3 = MGIsDeviceOneOfType(), byte_20005 = v3 ^ 1, (v3 & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = MGIsDeviceOneOfType() ^ 1;
  }

  byte_20005 = v4;
}

uint64_t CBU_RampLumaBoostFactorInAOD()
{
  if (qword_200C8 != -1)
  {
    sub_13E58();
  }

  return byte_200C0;
}

uint64_t CBU_IsPad()
{
  if (qword_200D8 != -1)
  {
    sub_13E6C();
  }

  return byte_200D0;
}

void sub_6C64(id a1)
{
  if (MGGetSInt32Answer() == 3)
  {
    byte_200D0 = 1;
  }
}

uint64_t CBU_IsR2RSupported()
{
  byte_200E0 = 1;
  if (qword_200E8 != -1)
  {
    sub_13E80();
  }

  return byte_200E0;
}

void sub_6CE0(id a1)
{
  if (get_int_from_bootarg("als_R2R_supported", &dword_200E4))
  {
    byte_200E0 = dword_200E4 != 0;
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      init_default_corebrightness_log();
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      v2 = "disabled";
      if (byte_200E0)
      {
        v2 = "enabled";
      }

      v3 = 136315650;
      v4 = v2;
      v5 = 2080;
      v6 = "als_R2R_supported";
      v7 = 1024;
      v8 = dword_200E4;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "R2R support is %s by %s = %d", &v3, 0x1Cu);
    }
  }
}

uint64_t CBU_IsTestModeEnabled()
{
  if (qword_200F8 != -1)
  {
    sub_13E94();
  }

  return byte_200F0;
}

void sub_6E4C(id a1)
{
  if (get_int_from_bootarg("cb_enable_test_mode", &dword_200F4))
  {
    byte_200F0 = dword_200F4 != 0;
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      init_default_corebrightness_log();
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      v2 = "disabled";
      if (byte_200F0)
      {
        v2 = "enabled";
      }

      v3 = 136315650;
      v4 = v2;
      v5 = 2080;
      v6 = "cb_enable_test_mode";
      v7 = 1024;
      v8 = dword_200F4;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "CoreBrightness Test Mode is %s by %s = %d", &v3, 0x1Cu);
    }
  }
}

void CBU_GetNightShiftCCTRange(io_registry_entry_t a1, float *a2, float *a3, float *a4, float *a5)
{
  if (a2 && a3 && a4 && a5)
  {
    v10 = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-min", kCFAllocatorDefault, 3u);
    if (v10)
    {
      v11 = v10;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v11) && CFDataGetLength(v11) >= 4)
      {
        *a2 = *CFDataGetBytePtr(v11);
      }

      CFRelease(v11);
    }

    v13 = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-max", kCFAllocatorDefault, 3u);
    if (v13)
    {
      v14 = v13;
      v15 = CFDataGetTypeID();
      if (v15 == CFGetTypeID(v14) && CFDataGetLength(v14) >= 4)
      {
        *a4 = *CFDataGetBytePtr(v14);
      }

      CFRelease(v14);
    }

    v16 = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-default", kCFAllocatorDefault, 3u);
    if (v16)
    {
      v17 = v16;
      v18 = CFDataGetTypeID();
      if (v18 == CFGetTypeID(v17) && CFDataGetLength(v17) >= 4)
      {
        *a3 = *CFDataGetBytePtr(v17);
      }

      CFRelease(v17);
    }

    v19 = IORegistryEntrySearchCFProperty(a1, "IOService", @"blr-cct-warning", kCFAllocatorDefault, 3u);
    if (v19)
    {
      v20 = v19;
      v21 = CFDataGetTypeID();
      if (v21 == CFGetTypeID(v20) && CFDataGetLength(v20) >= 4)
      {
        *a5 = *CFDataGetBytePtr(v20);
      }

      CFRelease(v20);
    }
  }
}

uint64_t CBU_ShouldNotHandleExistingInternalDisplayAttachment()
{
  if (qword_20108 != -1)
  {
    sub_13EA8();
  }

  return byte_20100;
}

uint64_t convertMachToNanoSeconds(uint64_t a1)
{
  v2 = dword_20114;
  if (!dword_20114)
  {
    mach_timebase_info(&dword_20110);
    v2 = dword_20114;
  }

  return dword_20110 / v2 * a1;
}

uint64_t CBU_ImplicitUserInteractedWithUI()
{
  if (qword_20120 != -1)
  {
    sub_13EBC();
  }

  return byte_20118;
}

unint64_t readDataFromIOService(io_registry_entry_t a1, CFStringRef key, UInt8 *a3, CFIndex *a4)
{
  v6 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(v7);
    v10 = Length;
    if (Length >= *a4)
    {
      v11.length = *a4;
    }

    else
    {
      v11.length = Length;
    }

    *a4 = v11.length;
    v11.location = 0;
    CFDataGetBytes(v7, v11, a3);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v7);
  return v10;
}

void VD6287HmCl::VD6287HmCl(VD6287HmCl *this)
{
  *this = os_log_create("com.apple.CoreBrightness.ColourSensorFilterPlugin", "VD6287_HmCl");
}

{
  *this = os_log_create("com.apple.CoreBrightness.ColourSensorFilterPlugin", "VD6287_HmCl");
}

void VD6287HmCl::~VD6287HmCl(void **this)
{
  os_release(*this);
}

{
  os_release(*this);
}

BOOL VD6287HmCl::processHeader(NSObject **a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2 >= 2u)
  {
    inited = *a1;
    if (!*a1)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(inited, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_13ED0(a2);
      return 0;
    }
  }

  else if (a2[4] == 5 && ((v4 = a2[6], v4 != 9) ? (v5 = v4 == 7) : (v5 = 1), v5 && (v6 = a2[5], (v6 | 2) == 2)))
  {
    *(a3 + 1) = v4;
    *a3 = 5;
    *(a3 + 327) = v6;
    v7 = a2[7] - v4 + 9;
    *(a3 + 2) = v7;
    if (v7 < 0xAu)
    {
      *(a3 + 3) = *(a2 + 2);
      return 1;
    }

    v11 = *a1;
    if (!*a1)
    {
      v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v11 = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_13F48();
      return 0;
    }
  }

  else
  {
    v10 = *a1;
    if (!*a1)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_13F88();
      return 0;
    }
  }

  return result;
}

uint64_t VD6287HmCl::processColor(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v6 = 128.0;
  LODWORD(a2) = 1.0;
  if (*(a4 + 5) <= 1u)
  {
    v6 = 1.0;
  }

  LOWORD(a2) = *(a5 + 5);
  v7 = *&a2 / 100.0;
  *(a6 + 7) = v7;
  v8 = vcvtd_n_f64_u32(*(a5 + 7), 0xEuLL);
  *(a6 + 19) = v8;
  v9 = *a6;
  if (*a6)
  {
    v10 = 0;
    v11 = 9 - a6[1];
    v12 = a5 + 9;
    v13 = a6 + 27;
    do
    {
      v14 = &a6[40 * v10 + 23];
      *v14 = 0x400000003F800000;
      *(v14 + 8) = 1082130432;
      if (v11 <= 8)
      {
        v15 = *(v14 + 4 * v11);
        v16 = v11;
        do
        {
          v15 = vcvtd_n_f64_u32(*(v12 + 2 * v16), 0xEuLL) * v15;
          *&v13[4 * v16++] = v15;
        }

        while (v16 != 9);
      }

      *&a6[4 * v10 + 223] = *(a5 + 99 + 2 * v10) / v6;
      v17 = vcvtd_n_f64_s32(*(a5 + 109 + 2 * v10), 0xEuLL);
      *&a6[4 * v10 + 243] = v17;
      *&a6[4 * v10 + 263] = *(a5 + 119 + 4 * v10) * 0.000015259;
      *&a6[4 * v10 + 283] = *(a5 + 139 + 4 * v10) * 0.0039062;
      *&a6[4 * v10 + 307] = *(a5 + 163 + 4 * v10) * 0.000015259;
      ++v10;
      v12 += 18;
      v13 += 40;
    }

    while (v10 != v9);
  }

  *(a6 + 303) = *(a5 + 159) * 0.000015259;
  return 1;
}

uint64_t VD6287HmCl::processOD(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v3 = vcvtd_n_f64_s32(*a2, 0xEuLL);
  *(a3 + 328) = v3;
  v4 = *(a3 + 327);
  if (*(a3 + 327))
  {
    v5 = 0;
    v6 = a2 + 3;
    v7 = a3 + 344;
    do
    {
      v8 = 0;
      v9 = a3 + 332 + 40 * v5;
      *v9 = 0x400000003F800000;
      *(v9 + 8) = 1082130432;
      v10 = 4.0;
      do
      {
        v10 = vcvtd_n_f64_u32(v6[v8], 0xEuLL) * v10;
        *(v7 + 4 * v8++) = v10;
      }

      while (v8 != 7);
      *(a3 + 412 + 4 * v5) = a2[v5 + 19];
      ++v5;
      v6 += 9;
      v7 += 40;
    }

    while (v5 != v4);
  }

  return 1;
}

BOOL VD6287HmCl::processXtalk(NSObject **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 4);
  *(a4 + 420) = v5;
  if (v5 == 7)
  {
    v6 = 0;
    v7 = *(a4 + 1);
    v8 = 467;
    do
    {
      v9 = a4 + v6;
      *(a4 + v6 + 425) = *(a3 + v6 + 5);
      *(a4 + v6 + 439) = *(a3 + v6 + 19);
      *(a4 + v6 + 453) = *(a3 + v6 + 33);
      *(a4 + v8) = *(a3 + v8 - 420) - v7 + 9;
      *(v9 + 474) = *(a3 + v6 + 54);
      *(v9 + 488) = *(a3 + v6 + 68);
      v6 += 2;
      ++v8;
    }

    while (v6 != 14);
    v10 = 0.0;
    if (*(a2 + 5) > 2u)
    {
      v10 = vcvts_n_f32_s32(*(a3 + 83), 7uLL);
    }

    *(a4 + 421) = v10;
  }

  else
  {
    inited = *a1;
    if (!*a1)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_13FC8((a4 + 420));
    }
  }

  return v5 == 7;
}

uint64_t VD6287HmCl::processSpectrum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new[]();
  }

  return 1;
}

BOOL VD6287HmCl::processBlob(NSObject **a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5, uint64_t a6)
{
  v10 = *a4;
  v11 = a3 + v10;
  *a4 = v10 + 4296;
  result = VD6287HmCl::processHeader(a1, (a3 + v10), a5);
  if (result)
  {
    v15 = VD6287HmCl::processColor(v13, v14, result, a2, v11 + 12, a5);
    VD6287HmCl::processSpectrum(v15, v11 + 195, a5, a6);
    result = VD6287HmCl::processXtalk(a1, a2, v11 + 4212, a5);
    if (result)
    {
      a5[1] = 10;
      return 1;
    }
  }

  return result;
}

BOOL VD6287HmCl::processBlobOD(NSObject **a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5, uint64_t a6)
{
  v10 = *a4;
  v11 = a3 + v10;
  *a4 = v10 + 4340;
  result = VD6287HmCl::processHeader(a1, (a3 + v10), a5);
  if (result)
  {
    v15 = VD6287HmCl::processColor(v13, v14, result, a2, v11 + 12, a5);
    v16 = VD6287HmCl::processOD(v15, (v11 + 195), a5);
    VD6287HmCl::processSpectrum(v16, v11 + 239, a5, a6);
    result = VD6287HmCl::processXtalk(a1, a2, v11 + 4256, a5);
    if (result)
    {
      a5[1] = 10;
      return 1;
    }
  }

  return result;
}

const __CFData *VD6287HmCl::match(const __CFData *this, const __CFData *a2)
{
  if (this)
  {
    v2 = this;
    if (CFDataGetLength(this) >= 0x50 && (BytePtr = CFDataGetBytePtr(v2), *BytePtr == 1215120236) && BytePtr[4] == 4)
    {
      return (BytePtr[5] < 4u);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t VD6287HmCl::process(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  v6 = os_log_create("com.apple.CoreBrightness.ColourSensorFilterPlugin", "VD6287_HmCl");
  v35 = v6;
  if ((VD6287HmCl::match(a1, v7) & 1) == 0)
  {
    inited = v6;
    if (!v6)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14040();
    }

    goto LABEL_30;
  }

  Length = CFDataGetLength(a1);
  if (Length == 8672)
  {
    v9 = 0;
  }

  else
  {
    if (Length != 8760)
    {
      v16 = v6;
      if (!v6)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_140F8();
      }

      goto LABEL_30;
    }

    v9 = 1;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (BytePtr[10] != 2)
  {
    v17 = v6;
    if (!v6)
    {
      v17 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v17 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_14080(BytePtr + 10);
    }

LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  v12 = v6;
  if (!v6)
  {
    v12 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v12 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = BytePtr[4];
    v14 = BytePtr[5];
    *buf = 67109376;
    *&buf[4] = v13;
    *&buf[8] = 1024;
    *&buf[10] = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "HmCl calibration version = v%d.%d", buf, 0xEu);
  }

  v34 = 80;
  if (v9)
  {
    if (VD6287HmCl::processBlobOD(&v35, BytePtr, BytePtr, &v34, (a2 + 502), 0))
    {
      v15 = VD6287HmCl::processBlobOD(&v35, BytePtr, BytePtr, &v34, a2, a3);
LABEL_34:
      v18 = v15;
      v22 = BytePtr[5];
      v21 = (BytePtr + 5);
      v20 = v22;
      if (v15 && !v20)
      {
        v40 = *(a2 + 1002);
        v23 = *(a2 + 970);
        v37 = *(a2 + 954);
        v38 = v23;
        v39 = *(a2 + 986);
        v24 = *(a2 + 938);
        *buf = *(a2 + 922);
        *&buf[16] = v24;
        *(a2 + 1002) = *(a2 + 500);
        v25 = *(a2 + 468);
        *(a2 + 954) = *(a2 + 452);
        *(a2 + 970) = v25;
        *(a2 + 986) = *(a2 + 484);
        v26 = *(a2 + 436);
        *(a2 + 922) = *(a2 + 420);
        *(a2 + 938) = v26;
        v27 = *&buf[16];
        *(a2 + 420) = *buf;
        *(a2 + 436) = v27;
        *(a2 + 500) = v40;
        v28 = v39;
        *(a2 + 468) = v38;
        *(a2 + 484) = v28;
        v18 = 1;
        *(a2 + 452) = v37;
      }

      goto LABEL_38;
    }
  }

  else if (VD6287HmCl::processBlob(&v35, BytePtr, BytePtr, &v34, (a2 + 502), 0))
  {
    v15 = VD6287HmCl::processBlob(&v35, BytePtr, BytePtr, &v34, a2, a3);
    goto LABEL_34;
  }

  v18 = 0;
  v21 = (BytePtr + 5);
LABEL_38:
  v29 = v6;
  if (!v6)
  {
    v29 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v29 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a2 + 421);
    v31 = *(a2 + 923);
    *buf = 134218240;
    *&buf[4] = v30;
    *&buf[12] = 2048;
    *&buf[14] = v31;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "{ lux_error_offset_sync:%f, lux_error_offset_async:%f }", buf, 0x16u);
  }

  v32 = dword_16128[*v21 > 1u];
  v33 = dword_16130[*v21 > 1u];
  *(a2 + 11) = v32;
  *(a2 + 15) = v33;
  *(a2 + 513) = v32;
  *(a2 + 517) = v33;
LABEL_31:
  os_release(v6);
  return v18;
}

BOOL processFDRCalibrationHmCA10(const __CFData **a1, const __CFData **a2, unsigned int *a3, uint64_t a4)
{
  Length = CFDataGetLength(*a1);
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 134218240;
    *&buf[1] = a4;
    LOWORD(buf[3]) = 2048;
    *(&buf[3] + 2) = Length;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "[0x%llx] FDR calibration data length = %ld\n", buf, 0x16u);
  }

  if (Length == 10632)
  {
    BytePtr = CFDataGetBytePtr(*a1);
    if (*BytePtr != 1215120193)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_141FC(BytePtr, a4, v10);
      }
    }

    v11 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v11 = init_default_corebrightness_log();
    }

    v35 = a2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = BytePtr[4];
      v13 = BytePtr[5];
      buf[0] = 134218496;
      *&buf[1] = a4;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v12;
      HIWORD(buf[4]) = 1024;
      buf[5] = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[0x%llx] HmCA version = v%d.%d\n", buf, 0x18u);
    }

    memset(&buf[9] + 1, 0, 156);
    *(&buf[5] + 1) = 0u;
    *(&buf[1] + 1) = 0u;
    LOBYTE(buf[0]) = BytePtr[5] + 10 * BytePtr[4];
    BYTE1(buf[2]) = 1;
    *(buf + 1) = 2;
    HIWORD(buf[2]) = 193;
    LOWORD(buf[3]) = *(BytePtr + 15);
    v14 = BytePtr[29];
    v15 = BytePtr[206] - v14 + 9;
    v16 = *(BytePtr + 104);
    HIWORD(buf[3]) = *(BytePtr + 104);
    buf[4] = 6488164;
    strcpy(&buf[5], ">");
    *(&buf[5] + 2) = 16843009 * v15;
    BYTE2(buf[6]) = BytePtr[28];
    v40 = BYTE2(buf[6]);
    *a3 = BYTE2(buf[6]);
    HIBYTE(buf[6]) = v14;
    v17 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v17 = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 134218754;
      v42 = a4;
      v43 = 2080;
      v44 = "processFDRCalibrationHmCA10";
      v45 = 1024;
      v46 = v40;
      v47 = 1024;
      LODWORD(v48) = v14;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[0x%llx] %s: nChannels = %d, nGains = %d", v41, 0x22u);
    }

    v18 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v18 = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 134218754;
      v42 = a4;
      v43 = 2080;
      v44 = "processFDRCalibrationHmCA10";
      v45 = 1024;
      v46 = v15;
      v47 = 1024;
      LODWORD(v48) = v16;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[0x%llx] %s: gain = %d, iTime = %d", v41, 0x22u);
    }

    if (v40)
    {
      v19 = 0;
      v39 = BytePtr + 140;
      v37 = BytePtr + 158;
      v38 = BytePtr + 146;
      v20 = BytePtr + 182;
      v21 = BytePtr + 32;
      v22 = &buf[20] + 3;
      do
      {
        v23 = v39[v19];
        v24 = &buf[17] + 25 * v19;
        *v24 = v39[v19];
        *(v24 + 5) = *&v38[2 * v19];
        v25 = *&v37[4 * v19] * 4.6566e-10;
        *&buf[v19 + 7] = v25;
        v26 = *&v20[4 * v19] * 0.000061035;
        *&buf[v19 + 12] = v26;
        v27 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v27 = init_default_corebrightness_log();
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(v24 + 1);
          *v41 = 134220290;
          v42 = a4;
          v43 = 2080;
          v44 = "processFDRCalibrationHmCA10";
          v45 = 1024;
          v46 = v19;
          v47 = 2048;
          v48 = v25;
          v49 = 1024;
          v50 = v19;
          v51 = 2048;
          v52 = v26;
          v53 = 1024;
          v54 = v19;
          v55 = 1024;
          v56 = v28;
          v57 = 1024;
          v58 = v19;
          v59 = 1024;
          v60 = v23;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[0x%llx] %s: luxCoeff[%d]=%f, cctCoeff[%d]=%f, offsetCounts[%d]=%d/255 darkCounts[%d] = %d", v41, 0x4Eu);
        }

        *(v24 + 7) = 0x8000800080008000;
        v29 = v14;
        v30 = v21;
        v31 = v22;
        if (v14)
        {
          do
          {
            v32 = *v30;
            v30 += 2;
            *v31++ = v32;
            --v29;
          }

          while (v29);
        }

        ++v19;
        v22 += 25;
        v21 += 18;
      }

      while (v19 < v40);
    }

    Length = 10632;
    *v35 = CFDataCreate(kCFAllocatorDefault, buf, 193);
  }

  else
  {
    v33 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v33 = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_14174(a4, Length, v33);
    }
  }

  return Length == 10632;
}

BOOL processFDRSpectrumHmCA10(CFDataRef *a1, uint64_t a2)
{
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Process FDR calibration spectrum", &v9, 2u);
  }

  Length = CFDataGetLength(*a1);
  if (Length == 10632)
  {
    CFDataGetBytePtr(*a1);
    v6 = (401 * *(a2 + 20));
    operator new[]();
  }

  v7 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v7 = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_142AC(Length, v7);
  }

  return Length == 10632;
}

uint64_t dumpCalibrationData(float *a1)
{
  putchar(10);
  putchar(10);
  printf("CAL DATA STRUCT SIZE: %lu \n", 193);
  puts("Calibration Header -- ");
  printf("alsCalibrationHeader.version = %d\n", *a1);
  printf("alsCalibrationHeader.numSensor = %d\n", *(a1 + 9));
  printf("alsCalibrationHeader.calibrationType = %d\n", *(a1 + 1));
  printf("alsCalibrationHeader.size = %d\n", *(a1 + 5));
  putchar(10);
  puts("Cal Data for Sensor --");
  printf("calibrationFudgeForLux = %d / 1000\n", (1000 * *(a1 + 6)) >> 14);
  printf("slowModeIntegrationTime = %d\n", *(a1 + 7));
  printf("fastModeIntegrationTime = %d\n", *(a1 + 8));
  printf("rapidModeIntegrationTime = %d\n", *(a1 + 9));
  printf("occlusionModeIntegrationTime = %d\n", *(a1 + 10));
  printf("slowModeGain = %d\n", *(a1 + 22));
  printf("fastModeGain = %d\n", *(a1 + 23));
  printf("rapidModeGain = %d\n", *(a1 + 24));
  printf("occlusionModeGain = %d\n", *(a1 + 25));
  printf("numberOfGains=%d \n", *(a1 + 27));
  if (*(a1 + 26))
  {
    v2 = 0;
    v3 = a1 + 75;
    do
    {
      putchar(10);
      printf("Channel %d --\n", v2);
      v4 = a1 + 25 * v2 + 68;
      printf("dark counts = %d\n", *v4);
      printf("channel offset counts = %d/1000 \n", 1000 * *(v4 + 1) / 256);
      printf("backlight leakage high counts = %d \n", *(v4 + 5));
      if (*(a1 + 27))
      {
        v5 = 0;
        do
        {
          printf("scale factor %d = %d / 1000\n", v5, (1000 * *&v3[2 * v5]) >> 14);
          ++v5;
        }

        while (v5 < *(a1 + 27));
      }

      ++v2;
      v3 += 25;
    }

    while (v2 < *(a1 + 26));
  }

  printf("Lux coefficients: a1=%d/1000000 a2=%d/1000000 a3=%d/1000000 a4=%d/1000000 a5=%d/1000000\n", (a1[7] * 1000000.0), (a1[8] * 1000000.0), (a1[9] * 1000000.0), (a1[10] * 1000000.0), (a1[11] * 1000000.0));
  return printf("CCT coefficients: a1=%d/1000000 a2=%d/1000000 a3=%d/1000000 a4=%d/1000000 a5=%d/1000000\n", (a1[12] * 1000000.0), (a1[13] * 1000000.0), (a1[14] * 1000000.0), (a1[15] * 1000000.0), (a1[16] * 1000000.0));
}

BOOL convertFDRCalibrationFormatFrom17to10(const __CFData **a1, const __CFData **a2)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  Length = CFDataGetLength(*v2);
  if (Length == 9962)
  {
    BytePtr = CFDataGetBytePtr(*v5);
    *bytes = *BytePtr;
    v27 = *(BytePtr + 2);
    v28 = 10632;
    v29 = (BytePtr[13] << 56) | (BytePtr[15] << 48) | (BytePtr[17] << 40) | (BytePtr[19] << 32) | (BytePtr[21] << 24) | (BytePtr[23] << 16) | (BytePtr[25] << 8) | BytePtr[27];
    v30 = 4;
    v31 = BytePtr[76];
    v32 = BytePtr[77];
    v33 = 10608;
    v34 = BytePtr[80];
    v8 = v34;
    v9 = BytePtr[81];
    v35 = BytePtr[81];
    v36 = *(BytePtr + 41);
    v37[87] = *(BytePtr + 141);
    v37[88] = *(BytePtr + 142);
    v38 = *(BytePtr + 290);
    v39 = *(BytePtr + 165);
    v40 = *(BytePtr + 166);
    v41 = *(BytePtr + 167);
    v42 = BytePtr[336];
    if (v34)
    {
      v10 = 0;
      v11 = BytePtr + 216;
      v12 = BytePtr + 222;
      v13 = BytePtr + 234;
      v14 = BytePtr + 258;
      v15 = BytePtr + 84;
      v16 = v37;
      v17 = BytePtr + 338;
      v18 = &v43;
      do
      {
        *(&v37[54] + v10) = v11[v10];
        v37[v10 + 57] = *&v12[2 * v10];
        *&v37[2 * v10 + 63] = *&v13[4 * v10];
        *&v37[2 * v10 + 75] = *&v14[4 * v10];
        v19 = v9;
        v20 = v16;
        v21 = v15;
        if (v9)
        {
          do
          {
            v22 = *v21;
            v21 += 2;
            *v20++ = v22;
            --v19;
          }

          while (v19);
        }

        for (i = 0; i != 1604; i += 4)
        {
          *(v18 + i) = *&v17[i];
        }

        ++v10;
        v15 += 18;
        v16 += 9;
        v17 += 1604;
        v18 = (v18 + 1604);
      }

      while (v10 != v8);
    }

    *v4 = CFDataCreate(kCFAllocatorDefault, bytes, 10632);
  }

  else
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14324(Length, inited);
    }
  }

  return Length == 9962;
}

double specialSolve(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6)
{
  v11 = __chkstk_darwin(a1);
  v13 = (&v28 - v12);
  sub_34D0(v11, v14, v15, v11, a4, a5, v11, a6);
  sub_387C(a1, a2, a5, a1, a4, v13);
  v17.f32[0] = sub_3C48(a2, v13, v16);
  if (a2 >= 1)
  {
    v20 = 0;
    v21 = a2 - 1;
    v22 = (a6 + 16);
    v23 = v13;
    do
    {
      v18 = vld1q_dup_f32(v23++);
      v17 = vdivq_f32(*(a6 + 16 * v20), v18);
      *(a6 + 16 * v20++) = v17;
      if (v20 < a2)
      {
        v17 = vnegq_f32(v17);
        v24 = v22;
        v25 = v21;
        do
        {
          v26 = *v23++;
          v18.f32[0] = v26;
          v19 = vmlaq_n_f32(*v24, v17, v26);
          *v24++ = v19;
          --v25;
        }

        while (v25);
      }

      --v21;
      ++v22;
    }

    while (v20 != a2);
  }

  *&result = sub_29B8(a2, a6, v13, v17, *v18.i64, *v19.f32).u64[0];
  return result;
}

void specialSolveWithRegularization(uint64_t a1, int a2, float a3, uint64_t a4, uint64_t a5, float32x4_t *a6, uint64_t a7)
{
  v13 = __chkstk_darwin(a1);
  v15 = (&v32 - v14);
  sub_34D0(v13, v16, v17, v13, a5, a6, v13, a7);
  sub_387C(a1, a2, a6, a1, a5, v15);
  if (a2 <= 0)
  {
    v28.f32[0] = sub_3C48(a2, v15, v18);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v15[v20] + a3;
      v15[v20] = v21;
      v20 = v20 + a2 - v19++;
    }

    while (a2 != v19);
    sub_3C48(a2, v15, v21);
    v23 = 0;
    v24 = a2 - 1;
    v25 = (a7 + 16);
    v26 = v15;
    do
    {
      v27 = vld1q_dup_f32(v26++);
      v28 = vdivq_f32(*(a7 + 16 * v23), v27);
      *(a7 + 16 * v23++) = v28;
      if (v23 < a2)
      {
        v28 = vnegq_f32(v28);
        v29 = v25;
        v30 = v24;
        do
        {
          v31 = *v26++;
          v27.f32[0] = v31;
          v22 = vmlaq_n_f32(*v29, v28, v31);
          *v29++ = v22;
          --v30;
        }

        while (v30);
      }

      --v24;
      ++v25;
    }

    while (v23 != a2);
  }

  sub_29B8(a2, a7, v15, v28, *v27.i64, *v22.f32);
}

void generalSolveWithRegularization(int a1, int a2, uint64_t a3, const float *a4, uint64_t a5, uint64_t a6, float a7)
{
  v7 = a6;
  LODWORD(__N) = a1;
  if (a7 == 0.0)
  {

    generalSolve(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    __work = 0.0;
    __uplo = 85;
    v13 = a2 + a1;
    __nrhs = 3;
    __ldb = a2 + a1;
    v14 = malloc_type_malloc(4 * (a2 + a1), 0x100004052888210uLL);
    v38 = 0;
    __lwork = -1;
    v15 = malloc_type_calloc((v13 * v13), 4uLL, 0x100004052888210uLL);
    v16 = malloc_type_calloc(3 * v13, 4uLL, 0x100004052888210uLL);
    v17 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
    v18 = v17;
    __ipiv = v14;
    if (v14)
    {
      if (v15)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = v19 || v17 == 0;
      v21 = 0;
      if (!v20)
      {
        if (a1 >= 1)
        {
          v22 = 0;
          v23 = a1;
          do
          {
            v15[v22] = 1.0;
            v22 += v13 + 1;
            --v23;
          }

          while (v23);
        }

        if (a2 <= 0)
        {
          vvsqrtf(v17, a4, &__N);
        }

        else
        {
          v24 = a1 * (v13 + 1);
          v25 = v13 - a1;
          do
          {
            v15[v24] = -a7;
            v24 += v13 + 1;
            --v25;
          }

          while (v25);
          vvsqrtf(v17, a4, &__N);
          v26 = 0;
          do
          {
            vDSP_vmul((a5 + 4 * __N * v26), 1, v18, 1, &v15[(v26 + __N) * v13], 1, __N);
            ++v26;
          }

          while (a2 != v26);
        }

        v27 = 0;
        v28 = 4 * v13;
        v29 = v16;
        do
        {
          vDSP_vmul((a3 + 4 * __N * v27++), 1, v18, 1, v29, 1, __N);
          v29 = (v29 + v28);
        }

        while (v27 != 3);
        ssysv_(&__uplo, &__ldb, &__nrhs, v15, &__ldb, __ipiv, v16, &__ldb, &__work, &__lwork, &v38);
        __lwork = __work;
        v21 = malloc_type_malloc(4 * __work, 0x100004052888210uLL);
        if (v21)
        {
          ssysv_(&__uplo, &__ldb, &__nrhs, v15, &__ldb, __ipiv, v16, &__ldb, v21, &__lwork, &v38);
          v30 = 0;
          v31 = __ldb;
          v32 = __N;
          do
          {
            v33 = a2;
            v34 = v32;
            v35 = v7;
            if (a2 >= 1)
            {
              do
              {
                *v35 = LODWORD(v16[v34]);
                v35 += 4;
                ++v34;
                --v33;
              }

              while (v33);
            }

            ++v30;
            ++v7;
            v32 += v31;
          }

          while (v30 != 3);
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (__ipiv)
    {
      free(__ipiv);
    }

    if (v15)
    {
      free(v15);
    }

    if (v16)
    {
      free(v16);
    }

    if (v18)
    {
      free(v18);
    }

    if (v21)
    {
      free(v21);
    }
  }
}

uint64_t ColorSensorPlugIn::AddRef(ColorSensorPlugIn *this, void *a2)
{
  v2 = (*(this + 4) + 1);
  *(this + 4) = v2;
  return v2;
}

uint64_t ColorSensorPlugIn::AddRef(ColorSensorPlugIn *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t ProgressCallback(_DWORD *a1, int a2, float *a3, float *a4)
{
  v4 = *a1;
  *(*a1 + 4 * a2) = *a3;
  v6 = a1[4];
  v5 = a1[5];
  *(v4 + 4 * (v6 + a2)) = a3[1];
  *(v4 + 4 * (a2 + 2 * v6)) = a3[2];
  if (v5)
  {
    v7 = __chkstk_darwin();
    v12 = &v31 - ((v11 + 15) & 0xFFFFFFFF0);
    v13 = *(v7 + 20);
    if (v13)
    {
      v14 = 0;
      v15 = *(v7 + 48);
      v16 = 0.0;
      do
      {
        v17 = 0.0;
        if (v10 >= 1)
        {
          v18 = 0;
          v19 = v14;
          do
          {
            v20 = *(*(v7 + 40) + 4 * v19);
            if (*(v7 + 28) && v18 >= v10 - 196)
            {
              v21 = ((*(v7 + 32) * v20) * *(*(v7 + 56) + 4 * v14));
            }

            else
            {
              v21 = v20;
            }

            v17 = v17 + v21 * *(v9 + 4 * v18++);
            v19 += v13;
          }

          while (v10 != v18);
        }

        *&v12[8 * v14] = v17;
        v16 = v16 + v17 * *(v15 + 4 * v14++);
      }

      while (v14 != v13);
    }

    else
    {
      v16 = 0.0;
    }

    v22 = *(v7 + 24);
    if (v13 != v22)
    {
      v23 = (v13 - v22);
      v24 = *(v7 + 16);
      v25 = &v12[8 * v22];
      v26 = (*(v7 + 8) + 4 * v8);
      v27 = 300.0 / v16;
      do
      {
        v28 = *v25++;
        v29 = v27 * v28;
        *v26 = v29;
        v26 += v24;
        --v23;
      }

      while (v23);
    }
  }

  return 0;
}

void ColorSensorPlugIn::open(_DWORD *a1, uint64_t a2)
{
  Property = IOHIDServiceGetProperty();
  if (Property)
  {
    v5 = CFCopyDescription(Property);
    if (v5)
    {
      v6 = v5;
      inited = qword_20128;
      if (!qword_20128)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = CFStringGetCStringPtr(v6, 0x600u);
        _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "IONameMatched=%{public}s \n", buf, 0xCu);
      }

      CFRelease(v6);
    }
  }

  else
  {
    v8 = qword_20128;
    if (!qword_20128)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Unknown IONameMatched\n", buf, 2u);
    }
  }

  *(a1 + 9) = 0x100000001;
  *(a1 + 3) = a2;
  *(a1 + 44) = 0;
  a1[12] = 1066192077;
  *(a1 + 52) = 0;
  *(a1 + 8) = 0;
  *(a1 + 7) = 0;
  a1[28] = 925353388;
  *(a1 + 216) = 0;
  *(a1 + 55) = 0;
  *(a1 + 19) = 0;
  a1[18] = 0;
  *(a1 + 256) = 0;
  a1[65] = 0;
  a1[58] = 0;
  v9 = MGCopyAnswer();
  v10 = v9;
  if (v9)
  {
    v11 = CFEqual(v9, @"Bridge OS");
    *(a1 + 256) = v11 != 0;
    if (v11)
    {
      v12 = qword_20128;
      if (!qword_20128)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Plugin is opening on Bridge OS.", buf, 2u);
      }
    }

    CFRelease(v10);
  }

  v13 = MGCopyAnswer();
  v14 = v13;
  if (v13)
  {
    if (CFEqual(v13, @"1"))
    {
      v15 = 1;
    }

    else
    {
      if (!CFEqual(v14, @"2"))
      {
        goto LABEL_28;
      }

      v15 = 2;
    }

    a1[58] = v15;
LABEL_28:
    v16 = qword_20128;
    if (!qword_20128)
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v16 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = a1[58];
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "DeviceColor is %d", buf, 8u);
    }

    CFRelease(v14);
  }

  valuePtr = 0;
  v18 = *(a1 + 3);
  RegistryID = IOHIDServiceGetRegistryID();
  if (RegistryID)
  {
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
  }

  if (valuePtr)
  {
    v20 = IORegistryEntryIDMatching(valuePtr);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v20);
    a1[8] = MatchingService;
    if (!MatchingService)
    {
      goto LABEL_89;
    }
  }

  else
  {
    MatchingService = a1[8];
    if (!MatchingService)
    {
      goto LABEL_89;
    }
  }

  if ((load_uint_from_edt(MatchingService, @"IOHIDOrientationType", a1 + 9) & 1) == 0)
  {
    v22 = *(a1 + 3);
    v23 = IOHIDServiceGetProperty();
    v24 = v23;
    if (v23)
    {
      v25 = CFGetTypeID(v23);
      if (v25 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v24, kCFNumberIntType, a1 + 9);
      }
    }
  }

  if ((load_uint_from_edt(a1[8], @"IOHIDPlacementType", a1 + 10) & 1) == 0)
  {
    v26 = *(a1 + 3);
    v27 = IOHIDServiceGetProperty();
    v28 = v27;
    if (v27)
    {
      v29 = CFGetTypeID(v27);
      if (v29 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v28, kCFNumberIntType, a1 + 10);
      }
    }
  }

  sub_A658(buf);
  sub_12604(&v99[2], "ALS_", 4);
  v30 = a1[9];
  std::ostream::operator<<();
  if (qword_20128)
  {
    os_release(qword_20128);
  }

  std::stringbuf::str();
  if (v96 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = *__p;
  }

  qword_20128 = os_log_create("com.apple.CoreBrightness.ColourSensorFilterPlugin", v31);
  if (v96 < 0)
  {
    operator delete(*__p);
  }

  v32 = IORegistryEntrySearchCFProperty(a1[8], "IOService", @"color-algo-override", kCFAllocatorDefault, 3u);
  v33 = v32;
  if (v32)
  {
    if (CFDataGetLength(v32) == 4)
    {
      v103.location = 0;
      v103.length = 1;
      CFDataGetBytes(v33, v103, a1 + 45);
      v34 = qword_20128;
      if (!qword_20128)
      {
        v34 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v34 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 45);
        *__p = 67109120;
        *&__p[4] = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Color algo override version = %hhu from EDT\n", __p, 8u);
      }
    }

    CFRelease(v33);
  }

  v36 = IORegistryEntrySearchCFProperty(a1[8], "IOService", @"harmony-db-version", kCFAllocatorDefault, 3u);
  v37 = v36;
  if (v36)
  {
    *buffer = 0;
    if (CFDataGetLength(v36) == 4)
    {
      v104.location = 0;
      v104.length = 4;
      CFDataGetBytes(v37, v104, buffer);
      v38 = qword_20128;
      if (!qword_20128)
      {
        v38 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v38 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *__p = 67109120;
        *&__p[4] = *buffer;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Harmony light DB version = %u from EDT\n", __p, 8u);
      }

      if ((*buffer - 1) > 2)
      {
        if (os_log_type_enabled(qword_20128, OS_LOG_TYPE_FAULT))
        {
          sub_1439C();
        }
      }

      else
      {
        a1[59] = *buffer;
      }
    }

    CFRelease(v37);
  }

  v39 = IORegistryEntrySearchCFProperty(a1[8], "IOService", @"color-algo-lambda", kCFAllocatorDefault, 3u);
  v40 = v39;
  if (v39)
  {
    v41 = CFGetTypeID(v39);
    if (v41 == CFDataGetTypeID())
    {
      *buffer = 0;
      if (CFDataGetLength(v40) == 4)
      {
        v105.location = 0;
        v105.length = 4;
        CFDataGetBytes(v40, v105, buffer);
        if (*buffer)
        {
          *(a1 + 53) = *buffer / 100.0;
          v42 = qword_20128;
          if (!qword_20128)
          {
            v42 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v42 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = *(a1 + 53);
            *__p = 134217984;
            *&__p[4] = v43;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Setting color algo lambda = %f from EDT\n", __p, 0xCu);
          }

          *(a1 + 208) = 1;
        }
      }
    }

    CFRelease(v40);
  }

  *&v99[2] = v44;
  if (v102 < 0)
  {
    operator delete(v101[7].__locale_);
  }

  std::locale::~locale(v101);
  std::iostream::~basic_iostream();
  std::ios::~ios();
LABEL_89:
  v45 = *(a1 + 3);
  v46 = IOHIDServiceGetProperty();
  if (v46)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v46))
    {
      CFNumberGetValue(v46, kCFNumberIntType, a1 + 15);
      v48 = a1[15];
      if (v48 == 6)
      {
        v48 = 5;
      }

      a1[16] = v48;
    }
  }

  v49 = *(a1 + 3);
  v50 = IOHIDServiceGetProperty();
  if (v50)
  {
    v51 = CFNumberGetTypeID();
    if (v51 == CFGetTypeID(v50))
    {
      CFNumberGetValue(v50, kCFNumberFloatType, a1 + 53);
      v52 = qword_20128;
      if (!qword_20128)
      {
        v52 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v52 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = *(a1 + 53);
        *buf = 134217984;
        *&buf[4] = v53;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "Setting color algo lambda = %f from EDT\n", buf, 0xCu);
      }

      *(a1 + 208) = 1;
    }
  }

  v54 = *(a1 + 3);
  v55 = IOHIDServiceGetProperty();
  if (v55)
  {
    v56 = CFNumberGetTypeID();
    if (v56 == CFGetTypeID(v55))
    {
      CFNumberGetValue(v55, kCFNumberIntType, a1 + 55);
      *(a1 + 216) = a1[55] != 0;
      v57 = qword_20128;
      if (!qword_20128)
      {
        v57 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v57 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = a1[55];
        if (*(a1 + 216))
        {
          v59 = "YES";
        }

        else
        {
          v59 = "NO";
        }

        *buf = 136315394;
        *&buf[4] = v59;
        v98 = 1024;
        *v99 = v58;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "Use channel ratio mitigation - %s, type = %d\n", buf, 0x12u);
      }
    }
  }

  a1[61] = 0;
  v60 = *(a1 + 3);
  v61 = IOHIDServiceGetProperty();
  if (v61)
  {
    v62 = CFNumberGetTypeID();
    if (v62 == CFGetTypeID(v61))
    {
      CFNumberGetValue(v61, kCFNumberIntType, a1 + 61);
      v63 = qword_20128;
      if (!qword_20128)
      {
        v63 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v63 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = a1[61];
        *buf = 67109120;
        *&buf[4] = v64;
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "ChipID is 0x%x\n", buf, 8u);
      }
    }
  }

  *(a1 + 31) = 0;
  v65 = (a1 + 62);
  v66 = *(a1 + 3);
  v67 = IOHIDServiceGetProperty();
  if (v67)
  {
    v68 = CFNumberGetTypeID();
    if (v68 == CFGetTypeID(v67))
    {
      CFNumberGetValue(v67, kCFNumberLongLongType, a1 + 62);
      v69 = qword_20128;
      if (!qword_20128)
      {
        v69 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v69 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *v65;
        *buf = 134217984;
        *&buf[4] = v70;
LABEL_132:
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "CFSN is 0x%llx\n", buf, 0xCu);
      }
    }

    else
    {
      v71 = CFDataGetTypeID();
      if (v71 == CFGetTypeID(v67))
      {
        v106.location = 0;
        v106.length = 8;
        CFDataGetBytes(v67, v106, a1 + 248);
        v69 = qword_20128;
        if (!qword_20128)
        {
          v69 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v69 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v72 = *v65;
          *buf = 134217984;
          *&buf[4] = v72;
          goto LABEL_132;
        }
      }
    }
  }

  a1[57] = 0;
  v73 = *(a1 + 3);
  v74 = IOHIDServiceGetProperty();
  if (v74)
  {
    v75 = CFNumberGetTypeID();
    if (v75 == CFGetTypeID(v74))
    {
      CFNumberGetValue(v74, kCFNumberIntType, a1 + 57);
      v76 = qword_20128;
      if (!qword_20128)
      {
        v76 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v76 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = a1[57];
        *buf = 67109120;
        *&buf[4] = v77;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_INFO, "Found sensor type = %d\n", buf, 8u);
      }
    }
  }

  v78 = *(a1 + 3);
  v79 = IOHIDServiceGetProperty();
  if (v79)
  {
    v80 = CFBooleanGetTypeID();
    if (v80 == CFGetTypeID(v79))
    {
      Value = CFBooleanGetValue(v79);
      LOBYTE(v79) = Value != 0;
      v82 = qword_20128;
      if (!qword_20128)
      {
        v82 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v82 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = "Don't use";
        if (Value)
        {
          v83 = "Use";
        }

        *buf = 136315138;
        *&buf[4] = v83;
        _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "%s sysconfig calibration to calibrate sensor\n", buf, 0xCu);
      }
    }

    else
    {
      LOBYTE(v79) = 0;
    }
  }

  v84 = *(a1 + 3);
  v85 = IOHIDServiceGetProperty();
  if (v85)
  {
    v86 = CFBooleanGetTypeID();
    if (v86 == CFGetTypeID(v85))
    {
      *(a1 + 264) = CFBooleanGetValue(v85) != 0;
      v87 = qword_20128;
      if (!qword_20128)
      {
        v87 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v87 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 264))
        {
          v88 = &unk_16E0B;
        }

        else
        {
          v88 = "Don't";
        }

        *buf = 136315138;
        *&buf[4] = v88;
        _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEFAULT, "%s look for FDR calibration before trying sysconfig\n", buf, 0xCu);
      }
    }
  }

  v89 = *(a1 + 3);
  if (!IOHIDServiceGetProperty())
  {
    goto LABEL_167;
  }

  v90 = *(a1 + 3);
  v91 = IOHIDServiceGetProperty();
  v92 = qword_20128;
  if (v91)
  {
    if (!qword_20128)
    {
      v92 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v92 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEFAULT, "EXBright calibration succeeded.", buf, 2u);
    }

LABEL_167:
    ColorSensorPlugIn::loadCalibration(a1, v79, *(a1 + 264));
    return;
  }

  if (!qword_20128)
  {
    v92 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v92 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    sub_1440C();
  }
}

void sub_A60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_A658(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_12440((a1 + 3), 24);
  return a1;
}

void sub_A8D4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void ColorSensorPlugIn::loadCalibration(ColorSensorPlugIn *this, char a2, char a3)
{
  global_queue = dispatch_get_global_queue(2, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_A9E0;
  v7[3] = &unk_1C818;
  v7[4] = this;
  v8 = a2;
  v9 = a3;
  dispatch_async(global_queue, v7);
}

const char *calibrationLoadingTypeToString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "Undefined";
  }

  else
  {
    return (&off_1C898)[a1];
  }
}

const char *calibrationResultToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Undefined";
  }

  else
  {
    return (&off_1C8C8)[a1];
  }
}

void sub_A9E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v33 = 0;
  if (get_int_from_bootarg("als_default_calibration", &v33))
  {
    v3 = v33 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 41))
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v6 = *(v2 + 24);
      Property = IOHIDServiceGetProperty();
      if (Property != kCFBooleanTrue || Property == 0)
      {
        v4 = 2;
      }

      else
      {
        v4 = 4;
      }
    }
  }

  else
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "boot-args are set to use default calibration", buf, 2u);
    }

    v4 = 5;
  }

  v9 = qword_20128;
  if (!qword_20128)
  {
    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = calibrationLoadingTypeToString(v4);
    *buf = 136315138;
    v35 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Use %s calibration type", buf, 0xCu);
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      FDRCalibration = ColorSensorPlugIn::loadFDRCalibration(v2, 1, (v2 + 240));
      v12 = qword_20128;
      if (FDRCalibration)
      {
        if (!qword_20128)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v12 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "FDR Calibration has been loaded successfully", buf, 2u);
        }
      }

      else
      {
        if (!qword_20128)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v12 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "FDR Calibration not found: trying sysconfig", buf, 2u);
        }

        if (!ColorSensorPlugIn::processSysConfigCalibration(v2, 1, 1, 1))
        {
          goto LABEL_71;
        }

        *(v2 + 240) = 1;
      }

      v4 = 3;
      goto LABEL_81;
    }

    if (v4 == 4)
    {
      if (ColorSensorPlugIn::processSysConfigCalibration(v2, 1, 0, 1))
      {
        *(v2 + 240) = 1;
        v4 = 4;
        goto LABEL_81;
      }

      goto LABEL_71;
    }

    v13 = qword_20128;
    if (!qword_20128)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = init_default_corebrightness_log();
      }
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_71:
      v19 = qword_20128;
      if (!qword_20128)
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v19 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Switching off color adaptation support.\n", buf, 2u);
      }

      *buf = 0;
      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
      if (v20)
      {
        v21 = v20;
        v22 = *(v2 + 24);
        IOHIDServiceSetProperty();
        CFRelease(v21);
      }

      *(v2 + 52) = 0;
      v23 = ColorSensorPlugIn::calibrateSensorWithDefaultCalibration(v2, *(v2 + 228));
      *(v2 + 240) = 3;
      if (v23)
      {
        v4 = 5;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_81;
    }

    *buf = 0;
    v14 = "Use default calibration.\n";
    v15 = v13;
LABEL_70:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    goto LABEL_71;
  }

  if (v4 == 1)
  {
    if (ColorSensorPlugIn::processSysConfigCalibration(v2, 1, 1, 1))
    {
      *(v2 + 240) = 1;
      goto LABEL_81;
    }

    goto LABEL_71;
  }

  v16 = qword_20128;
  if (!qword_20128)
  {
    v16 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v16 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Getting FDR calibration...\n", buf, 2u);
  }

  v17 = ColorSensorPlugIn::loadFDRCalibration(v2, 0, (v2 + 240));
  v18 = qword_20128;
  if (!v17)
  {
    if (!qword_20128)
    {
      v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = init_default_corebrightness_log();
      }
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    *buf = 0;
    v14 = "Failed to load FDR calibration.\n";
    v15 = v18;
    goto LABEL_70;
  }

  if (!qword_20128)
  {
    v18 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v18 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = 2;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "FDR Calibration has been loaded successfully", buf, 2u);
  }

  else
  {
    v4 = 2;
  }

LABEL_81:
  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (v2 + 240));
  if (v24)
  {
    v25 = v24;
    v26 = *(v2 + 24);
    IOHIDServiceSetProperty();
    CFRelease(v25);
  }

  v27 = qword_20128;
  if (!qword_20128)
  {
    v27 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v27 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = calibrationLoadingTypeToString(v4);
    v29 = *(v2 + 240);
    if (v29 > 3)
    {
      v30 = "Undefined";
    }

    else
    {
      v30 = (&off_1C8C8)[v29];
    }

    v31 = *(v2 + 228);
    v32 = *(v2 + 52);
    *buf = 136315906;
    v35 = v28;
    v36 = 2080;
    v37 = v30;
    v38 = 1024;
    v39 = v31;
    v40 = 1024;
    v41 = v32;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Calibration type: %s, result: %s, sensor type: %d, color support: %d", buf, 0x22u);
  }
}

uint64_t ColorSensorPlugIn::processSysConfigCalibration(ColorSensorPlugIn *this, BOOL a2, int a3, int a4)
{
  v5 = *(this + 8);
  if (!v5)
  {
    return 0;
  }

  v8 = IORegistryEntrySearchCFProperty(v5, "IOService", @"alsCalibration", kCFAllocatorDefault, 3u);
  v9 = IORegistryEntrySearchCFProperty(*(this + 8), "IOService", @"alsAuxCalibration", kCFAllocatorDefault, 3u);
  if (!v8)
  {
    v12 = 0;
    goto LABEL_35;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(v8))
  {
    goto LABEL_33;
  }

  v74 = v8;
  if (CFDataGetLength(v8) <= 7)
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14608(v8, inited);
    }

    goto LABEL_33;
  }

  v82.location = 0;
  v82.length = 8;
  CFDataGetBytes(v8, v82, &buffer);
  v67 = 8;
  if (v71 != 1)
  {
    v15 = qword_20128;
    if (!qword_20128)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_14448(&v71);
    }

    goto LABEL_33;
  }

  Length = CFDataGetLength(v8);
  v14 = qword_20128;
  if (Length < v73)
  {
    if (!qword_20128)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_14568(v8, &v73, v14);
    }

    goto LABEL_33;
  }

  if (!qword_20128)
  {
    v14 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v14 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    buf[0] = 67109632;
    buf[1] = v71;
    LOWORD(buf[2]) = 1024;
    *(&buf[2] + 2) = buffer;
    HIWORD(buf[3]) = 1024;
    buf[4] = v73;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "supported calibration version %d,%d with size %d\n", buf, 0x14u);
  }

  if (!v72)
  {
    goto LABEL_33;
  }

  v16 = 0;
  v17 = 8;
  while (1)
  {
    v83.location = v17;
    v83.length = 8;
    CFDataGetBytes(v8, v83, v68);
    if (*(this + 9) == v68[2])
    {
      break;
    }

    v17 += v69;
    if (++v16 >= v72)
    {
      goto LABEL_33;
    }
  }

  v67 = v17;
  v19 = qword_20128;
  if (!qword_20128)
  {
    v19 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v19 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(this + 9);
    buf[0] = 67109632;
    buf[1] = v20;
    LOWORD(buf[2]) = 1024;
    *(&buf[2] + 2) = v68[0];
    HIWORD(buf[3]) = 1024;
    buf[4] = v68[3];
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Found calibration for orientation = %d, senzorType = %d, chipType = %d \n", buf, 0x14u);
  }

  if (!a3)
  {
    goto LABEL_68;
  }

  cf = 0;
  v21 = *(this + 57);
  if ((v21 - 1) >= 2)
  {
    if (v21 != 7)
    {
      goto LABEL_68;
    }

    if (ColorSensorPlugIn::processSysConfigSensorCalibrationVD6286())
    {
      v40 = cf;
      goto LABEL_64;
    }
  }

  else
  {
    memset(v81, 0, 140);
    LOBYTE(v81[1]) = v72;
    *bytes_1 = 1;
    *(&v81[1] + 1) = 145;
    bytes = 1;
    v84.location = v17 + 8;
    v84.length = 16;
    CFDataGetBytes(v8, v84, v58);
    v67 = v17 + 24;
    *(&v81[1] + 3) = vcvts_n_s32_f32(vcvts_n_f32_u32(*v58, 8uLL), 0xEuLL);
    v23 = v59;
    *(&v81[2] + 1) = v59;
    v24 = v60;
    *(&v81[2] + 3) = v60;
    v25 = v61;
    *(&v81[3] + 1) = v61;
    if (*(this + 45))
    {
      *(this + 44) = *(this + 45);
    }

    *(this + 20) = 1000 * v23;
    *(this + 18) = 1000 * v25;
    *(this + 19) = 1000 * v24;
    v22.i32[0] = v62;
    v26 = vmovl_u8(v22).u16[3];
    *(this + 15) = v26;
    *(this + 16) = v26;
    *(&v81[3] + 3) = v22.i32[0];
    HIBYTE(v81[4]) = v63;
    if (v63 == 9)
    {
      v86.length = 22 * v26;
      v86.location = v17 + 24;
      CFDataGetBytes(v8, v86, buf);
      v42 = *(this + 15);
      v29 = 22 * v42;
      if (v42)
      {
        v43 = 0;
        v44 = v63;
        v45 = &v81[12] + 2;
        v46 = &buf[1];
        do
        {
          v47 = buf + 22 * v43;
          v48 = &v81[6 * v43 + 11];
          *v48 = *v47;
          LOWORD(v41) = *(v47 + 1);
          v41 = LODWORD(v41) / 1000.0;
          *(v48 + 1) = vcvts_n_s32_f32(v41, 8uLL);
          *(v48 + 3) = 0;
          *(v48 + 5) = v47[3];
          v49 = v44;
          v50 = v46;
          v51 = v45;
          if (v44)
          {
            do
            {
              v52 = *v50++;
              v41 = vcvts_n_f32_u32(v52, 8uLL);
              *v51++ = vcvts_n_s32_f32(v41, 0xEuLL);
              --v49;
            }

            while (v49);
          }

          ++v43;
          v45 += 24;
          v46 = (v46 + 22);
        }

        while (v43 != v42);
      }

      goto LABEL_63;
    }

    if (v63 == 8)
    {
      v85.length = 20 * v26;
      v85.location = v17 + 24;
      CFDataGetBytes(v8, v85, buf);
      v28 = *(this + 15);
      v29 = 20 * v28;
      if (v28)
      {
        v30 = 0;
        v31 = v63;
        v32 = &v81[12] + 2;
        v33 = &buf[1];
        do
        {
          v34 = &buf[5 * v30];
          v35 = &v81[6 * v30 + 11];
          *v35 = *v34;
          LOWORD(v27) = *(v34 + 1);
          v27 = LODWORD(v27) / 1000.0;
          *(v35 + 1) = vcvts_n_s32_f32(v27, 8uLL);
          *(v35 + 3) = 0;
          *(v35 + 5) = *(v34 + 3);
          v36 = v31;
          v37 = v33;
          v38 = v32;
          if (v31)
          {
            do
            {
              v39 = *v37++;
              v27 = vcvts_n_f32_u32(v39, 8uLL);
              *v38++ = vcvts_n_s32_f32(v27, 0xEuLL);
              --v36;
            }

            while (v36);
          }

          ++v30;
          v32 += 24;
          v33 += 10;
        }

        while (v30 != v28);
      }

LABEL_63:
      v87.location = v29 + v17 + 24;
      v87.length = 3240;
      CFDataGetBytes(v8, v87, buf);
      v67 = v17;
      *&v81[5] = vcvtq_n_s32_f32(vdivq_f32(vcvtq_f32_s32(*&buf[1]), vdupq_n_s32(0x49742400u)), 0x10uLL);
      *&v81[9] = vshl_n_s32(*v76, 0x10uLL);
      *v64 = 145;
      v40 = CFDataCreate(kCFAllocatorDefault, &bytes, 145);
LABEL_64:
      if (v40)
      {
        v53 = *(this + 3);
        v12 = v53 != 0;
        if (v53 && !IOHIDServiceSetProperty())
        {
          v57 = qword_20128;
          if (!qword_20128)
          {
            v57 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v57 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_144BC();
          }

          CFRelease(v40);
          goto LABEL_33;
        }

        CFRelease(v40);
LABEL_69:
        if (!a4)
        {
          goto LABEL_34;
        }

        if (ColorSensorPlugIn::processCachedDB(this, *(this + 15), *(this + 59)))
        {
          v54 = qword_20128;
          if (!qword_20128)
          {
            v54 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v54 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Found cached DB\n", buf, 2u);
          }

          v12 = 1;
          *(this + 52) = 1;
          goto LABEL_34;
        }

        v78 = 0;
        v77 = 0u;
        *&v76[4] = 0u;
        *buf = *(this + 88);
        v55 = *(this + 15);
        buf[4] = *(this + 14);
        *v76 = v55;
        if (v55 == 5)
        {
          if (*(this + 57) == 7)
          {
            v12 = ColorSensorPlugIn::processSysConfigSpectrumVD6286();
          }
        }

        else if (v55 == 4)
        {
          *v64 = 0;
          v65 = 0;
          v88.location = v17 + 8;
          v88.length = 16;
          CFDataGetBytes(v8, v88, v64);
          if (BYTE4(v65) == 8)
          {
            v56 = 20;
LABEL_91:
            v67 = v17 + 24 + v56 * BYTE3(v65);
            if (buffer)
            {
              operator new();
            }

            operator new();
          }

          if (BYTE4(v65) == 9)
          {
            v56 = 22;
            goto LABEL_91;
          }
        }

        sub_123DC(buf);
        goto LABEL_34;
      }

LABEL_68:
      v12 = 0;
      goto LABEL_69;
    }
  }

LABEL_33:
  v12 = 0;
LABEL_34:
  CFRelease(v8);
LABEL_35:
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

uint64_t ColorSensorPlugIn::loadFDRCalibration(uint64_t a1, char a2, int *a3)
{
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_146A0();
  }

  v19 = 0;
  if (get_int_from_bootarg("als_calibration_overrides", &v19))
  {
    v7 = qword_20128;
    if (!qword_20128)
    {
      v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v19;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Calibration overrides set to %d", buf, 8u);
    }
  }

  if (*(a1 + 256) != 1)
  {
    v8 = ColorSensorPlugIn::copyFDRCalibrationData(a1, @"HmCA", a3, v19);
    if (!v8)
    {
      v8 = ColorSensorPlugIn::copyFDRCalibrationData(a1, @"AlsC", a3, v19);
      if (!v8)
      {
        v16 = ColorSensorPlugIn::copyFDRCalibrationData(a1, @"HmCl", a3, v19);
        v15 = ColorSensorPlugIn::processFDRCalibration(a1, v16, a2);
        if (!v16)
        {
          return v15;
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v16 = v8;
    v15 = ColorSensorPlugIn::processFDRCalibration(a1, v8, a2);
LABEL_26:
    CFRelease(v16);
    return v15;
  }

  v8 = ColorSensorPlugIn::copyFDRCalibrationData(a1, @"HmCM", a3, v19);
  if (v8)
  {
    goto LABEL_25;
  }

  v8 = ColorSensorPlugIn::copyFDRCalibrationData(a1, @"HmCA", a3, v19);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 260);
  *(a1 + 260) = v9 + 1;
  if (v9 <= 19)
  {
    v10 = qword_20128;
    if (!qword_20128)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 260);
      *buf = 67109120;
      v21 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Retrieving FDR calibration data failed in attempt number %d/20. Try again in 5 sec.\n", buf, 8u);
    }

    v12 = mach_absolute_time();
    v13 = dispatch_time(v12, 5000000000);
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1227C;
    block[3] = &unk_1C878;
    block[4] = a1;
    block[5] = a3;
    dispatch_after(v13, global_queue, block);
  }

  return ColorSensorPlugIn::processFDRCalibration(a1, 0, a2);
}

BOOL ColorSensorPlugIn::calibrateSensorWithDefaultCalibration(uint64_t a1, int a2)
{
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Calibrate sensor with default calibration data. Sensor type = %d", buf, 8u);
  }

  if ((a2 - 1) <= 1)
  {
    v5 = 0;
    memset(&buf[5], 0, 140);
    buf[0] = 1;
    buf[9] = 1;
    *&buf[1] = 3;
    *(a1 + 60) = 4;
    *&buf[10] = 0x6400FA40000091;
    strcpy(&buf[18], "c");
    *(a1 + 80) = 250000;
    *(a1 + 72) = 0x186A0000182B8;
    if (*(a1 + 232) == 2)
    {
      v6 = 6;
    }

    else
    {
      v6 = 8;
    }

    if (*(a1 + 232) == 2)
    {
      v7 = 15040;
    }

    else
    {
      v7 = 11658;
    }

    if (a2 == 2)
    {
      v6 = 8;
      v8 = 9;
    }

    else
    {
      v8 = 8;
    }

    buf[20] = v6;
    buf[21] = v8;
    buf[22] = v8;
    buf[24] = v8;
    buf[23] = 4;
    v9 = (2 * v8);
    v10 = 55;
    *&buf[29] = 0;
    *&buf[37] = v7;
    do
    {
      v11 = qword_20128;
      if (!qword_20128)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = *&buf[4 * v5 + 25];
        *v35 = 67109376;
        v36 = v5;
        v37 = 1024;
        LODWORD(v38) = v13;
        _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "luxCoeff[%d]=%d/65536", v35, 0xEu);
      }

      memset_pattern16(&buf[v10], &unk_162A0, v9);
      v10 += 24;
      v12 = v5++ >= 3;
    }

    while (!v12);
    v18 = kCFAllocatorDefault;
    v19 = 145;
    goto LABEL_45;
  }

  if ((a2 - 5) <= 1)
  {
    v14 = 0;
    memset(&buf[48], 0, 145);
    buf[0] = 1;
    buf[9] = 1;
    *(a1 + 224) = 0;
    *&buf[1] = 3;
    *(a1 + 60) = 0x500000005;
    *&buf[10] = 0x6400FA400000C1;
    *&buf[18] = 4063331;
    *(a1 + 80) = 250000;
    *(a1 + 72) = 0x186A0000182B8;
    *&buf[22] = 134809864;
    *&buf[26] = 2309;
    v15 = 75;
    *&buf[28] = xmmword_16290;
    *&buf[44] = 1007478532;
    do
    {
      v16 = qword_20128;
      if (!qword_20128)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *&buf[4 * v14 + 28];
        *v35 = 67109376;
        v36 = v14;
        v37 = 2048;
        v38 = v17;
        _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "luxCoeff[%d]=%f", v35, 0x12u);
      }

      memset_pattern16(&buf[v15], &unk_162A0, 0x12uLL);
      v15 += 25;
      v12 = v14++ >= 4;
    }

    while (!v12);
LABEL_44:
    v18 = kCFAllocatorDefault;
    v19 = 193;
    goto LABEL_45;
  }

  if (a2 == 7)
  {
    v20 = 0;
    memset(&buf[48], 0, 145);
    buf[0] = 1;
    buf[9] = 1;
    *(a1 + 224) = 0;
    *&buf[1] = 3;
    *(a1 + 60) = 0x500000005;
    *&buf[10] = 0x6400FA400000C1;
    *&buf[18] = 4063331;
    *(a1 + 80) = 250000;
    *(a1 + 72) = 0x186A0000182B8;
    *&buf[22] = 134809864;
    *&buf[26] = 2309;
    v21 = 75;
    *&buf[28] = xmmword_16290;
    *&buf[44] = 1007478532;
    do
    {
      v22 = qword_20128;
      if (!qword_20128)
      {
        v22 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v22 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *&buf[4 * v20 + 28];
        *v35 = 67109376;
        v36 = v20;
        v37 = 2048;
        v38 = v23;
        _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "luxCoeff[%d]=%f", v35, 0x12u);
      }

      memset_pattern16(&buf[v21], &unk_162A0, 0x12uLL);
      v21 += 25;
      v12 = v20++ >= 4;
    }

    while (!v12);
    goto LABEL_44;
  }

  if ((a2 - 3) > 1)
  {
    return 0;
  }

  v28 = 0;
  v34 = 0;
  memset(&buf[52], 0, 160);
  buf[0] = 1;
  buf[9] = 1;
  *(a1 + 224) = 0;
  *&buf[1] = 3;
  *(a1 + 60) = 0x500000006;
  *&buf[10] = 0x6400FA400000DCLL;
  *&buf[18] = 4063331;
  *(a1 + 80) = 250000;
  *(a1 + 72) = 0x186A0000182B8;
  *&buf[22] = 134809864;
  *&buf[26] = 2310;
  *&buf[28] = xmmword_16280;
  v29 = 82;
  *&buf[44] = vdup_n_s32(0x3DB020C5u);
  do
  {
    v30 = qword_20128;
    if (!qword_20128)
    {
      v30 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v30 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = *&buf[4 * v28 + 28];
      *v35 = 67109376;
      v36 = v28;
      v37 = 2048;
      v38 = v31;
      _os_log_debug_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "luxCoeff[%d]=%f", v35, 0x12u);
    }

    memset_pattern16(&buf[v29], &unk_162A0, 0x12uLL);
    v29 += 24;
    v12 = v28++ >= 5;
  }

  while (!v12);
  v18 = kCFAllocatorDefault;
  v19 = 220;
LABEL_45:
  v24 = CFDataCreate(v18, buf, v19);
  if (!v24)
  {
    return 0;
  }

  v25 = *(a1 + 24);
  v26 = v25 != 0;
  if (v25)
  {
    if (IOHIDServiceSetProperty())
    {
      v26 = 1;
    }

    else
    {
      v27 = qword_20128;
      if (!qword_20128)
      {
        v27 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v27 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_144BC();
      }

      v26 = 0;
    }
  }

  CFRelease(v24);
  return v26;
}

uint64_t sub_CA70(uint64_t a1, int a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a4 == 2 ? 60 : 20;
  v6 = *(a1 + 20);
  if (v6 >= v5)
  {
    return 0;
  }

  v8 = *(a1 + 4);
  v10 = *(a1 + 28);
  v9 = *(a1 + 32);
  v12 = *(a1 + 36);
  v11 = *(a1 + 40);
  v13 = *(a1 + 44);
  v14 = *(a1 + 48);
  if (a2 == 2 && v8 == 6)
  {
    v15 = v14 - v10;
    if (a3 != 2)
    {
      v15 = *(a1 + 48);
    }

    v8 = 5;
    if (a3 == 1)
    {
      v16 = v14 * 0.5;
    }

    else
    {
      v16 = v15;
    }

    if (a3 == 1)
    {
      v8 = 5;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v14 = v14 * 0.5;
  }

  if (a2 == 3 && v9 > 0.0 && (v19 = (v12 + v11) + v13, v19 > 0.0))
  {
    v17 = 0;
    if (v6 >= 10.0)
    {
      return v17;
    }

    v18 = v19 / (v9 * 3.0);
    if (v18 > 1.2)
    {
      return v17;
    }
  }

  else
  {
    if (v8 == 4 && v10 > 0.0)
    {
      v17 = 0;
      v20 = v11 < 50.0 || a4 == 2;
      if (!v20 || v11 <= 0.0)
      {
        return v17;
      }

      v21 = (v12 / v11) + ((v10 / v11) + (v9 / v11));
      v22 = 3.0;
    }

    else
    {
      if (v8 != 6 || (v10 > 1.0 ? (v23 = v10 < 180.0) : (v23 = 0), !v23))
      {
        v16 = *(a1 + 44);
        v13 = *(a1 + 40);
        v11 = *(a1 + 36);
        v12 = *(a1 + 32);
        v9 = *(a1 + 28);
LABEL_15:
        v17 = 0;
        if (v8 != 5 || v16 <= 1.0)
        {
          return v17;
        }

        if (v6 >= 10.0 || v11 >= 55.0)
        {
          v17 = 0;
          if (v6 <= 10.0 || v11 >= 80.0)
          {
            return v17;
          }
        }

        v18 = ((v13 / v16) + ((v11 / v16) + ((v12 / v16) + (v9 / v16)))) * 0.25;
        if (v18 > 1.5)
        {
          return 0;
        }

        goto LABEL_48;
      }

      v21 = ((((v9 / v10) + (v12 / v10)) + (v11 / v10)) + (v13 / v10)) + (v14 / v10);
      v22 = 5.0;
    }

    v18 = v21 / v22;
    if ((v21 / v22) <= 0.5)
    {
      return 0;
    }
  }

LABEL_48:
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  v17 = 1;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    v25 = *(a1 + 20);
    v27[0] = 67109632;
    v27[1] = a2;
    v28 = 2048;
    v29 = v25;
    v30 = 2048;
    v31 = v18;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "ALS spike detected (type = %d). Lux = %f, Channel ratio = %f", v27, 0x1Cu);
  }

  return v17;
}

uint64_t ColorSensorPlugIn::filterCopyEvent(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 228) & 0xFFFFFFFE) == 8)
  {
    ColorSensorPlugIn::filter(a1, a2, 1);
  }

  else
  {
    if (a2)
    {
      if (IOHIDEventGetType() == 12 && *(a1 + 52) == 1)
      {
        IntegerValue = IOHIDEventGetIntegerValue();
        if (IntegerValue)
        {
          v5 = IntegerValue;
          IOHIDEventGetDoubleValue();
          v7 = v6;
          IOHIDEventGetDoubleValue();
          v9 = v8;
          IOHIDEventGetDoubleValue();
          v11 = v10;
        }

        else
        {
          v7 = *(a1 + 136);
          v9 = *(a1 + 140);
          v11 = *(a1 + 144);
          IOHIDEventSetDoubleValue();
          v14 = *(a1 + 140);
          IOHIDEventSetDoubleValue();
          v15 = *(a1 + 144);
          IOHIDEventSetDoubleValue();
          v5 = 1;
          IOHIDEventSetIntegerValue();
        }

        if (*(a1 + 176) == 1)
        {
          v16 = *(a1 + 192);
          if (v16 > 0.0)
          {
            v17 = *(a1 + 184);
            v18 = *(a1 + 200);
            if (v18 >= 0.0)
            {
              v20 = *(a1 + 200);
              IOHIDEventSetFloatValue();
              IOHIDEventSetDoubleValue();
            }

            else
            {
              IOHIDEventGetDoubleValue();
              v18 = v19;
            }

            v21 = v18 / v16;
            v7 = v17 * (v18 / v16);
            v9 = v18;
            v11 = (1.0 - v17 - v16) * v21;
            IOHIDEventSetDoubleValue();
            IOHIDEventSetDoubleValue();
            IOHIDEventSetDoubleValue();
            IOHIDEventSetIntegerValue();
          }
        }

        inited = qword_20128;
        if (!qword_20128)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
        {
          v23 = 134218752;
          v24 = v7;
          v25 = 2048;
          v26 = v9;
          v27 = 2048;
          v28 = v11;
          v29 = 2048;
          v30 = v5;
          _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "Copy event with color = [%f, %f, %f], color space = %ld", &v23, 0x2Au);
        }
      }
    }

    else
    {
      v12 = qword_20128;
      if (!qword_20128)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_14840();
      }
    }

    ColorSensorPlugIn::logALSSample(a1, a2, 1);
  }

  return a2;
}

uint64_t ColorSensorPlugIn::processFDRCalibration(ColorSensorPlugIn *this, CFDataRef theData, char a3)
{
  theDataa = theData;
  if (!theData)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = Length;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "FDR calibration data length = %ld\n", buf, 0xCu);
  }

  v132 = this;
  cf = 0;
  if (Length == 10440)
  {
    CFDataGetBytePtr(theDataa);
    v6 = ColorSensorPlugIn::convertNighthawkHmClv1Tov3();
    if (v6)
    {
      CFRelease(theDataa);
      theDataa = v6;
      Length = CFDataGetLength(v6);
      v7 = qword_20128;
      if (!qword_20128)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = Length;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "FDR calibration data converted from v1 to v3. New size = %ld\n", buf, 0xCu);
      }
    }

    else
    {
      Length = 10440;
    }
  }

  if (sub_1090C(theDataa))
  {
    v9 = sub_109A4(this, &theDataa, &cf);
    v10 = qword_20128;
    if (!qword_20128)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AlsC FDR calibration parsed = %d", buf, 8u);
    }

    goto LABEL_58;
  }

  if (Length > 10235)
  {
    if (Length == 10348)
    {
      v11 = ColorSensorPlugIn::processFDRCalibrationVD6287_HmClv3(this, &theDataa, &cf);
      goto LABEL_57;
    }

    if (Length != 10236)
    {
      goto LABEL_54;
    }
  }

  else if (Length != 5156)
  {
    if (Length == 9962)
    {
      v11 = ColorSensorPlugIn::processFDRCalibrationHmCAT2(this, &theDataa, &cf);
LABEL_57:
      v9 = v11;
LABEL_58:
      BytePtr = 0;
      goto LABEL_116;
    }

LABEL_54:
    if (VD6287HmCl::match(theDataa, v8))
    {
      v9 = ColorSensorPlugIn::processFDRCalibrationVD6287_HmClv4(this, &theDataa, &cf);
      BytePtr = 0;
      *(this + 59) = 3;
      goto LABEL_116;
    }

    if (!processFDRCalibrationHmCA10(&theDataa, &cf, this + 15, *(this + 31)))
    {
      v9 = 0;
      goto LABEL_58;
    }

    BytePtr = 0;
    *(this + 16) = *(this + 15);
    *(this + 12) = 1067869798;
    v9 = 1;
    goto LABEL_116;
  }

  BytePtr = CFDataGetBytePtr(theDataa);
  v12 = qword_20128;
  if (!qword_20128)
  {
    v12 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v12 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = BytePtr[4];
    v14 = BytePtr[5];
    *buf = 67109376;
    *&buf[4] = v13;
    *&buf[8] = 1024;
    *&buf[10] = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "HmCl version = v%d.%d\n", buf, 0xEu);
  }

  v15 = qword_20128;
  if (!qword_20128)
  {
    v15 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v15 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = BytePtr[16];
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Device_id = 0x%x\n", buf, 8u);
  }

  v17 = qword_20128;
  if (!qword_20128)
  {
    v17 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v17 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_14B2C(BytePtr);
  }

  v18 = qword_20128;
  if (!qword_20128)
  {
    v18 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v18 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = BytePtr[74];
    *buf = 67109120;
    *&buf[4] = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Chip_type = %d\n", buf, 8u);
  }

  v20 = *(BytePtr + 3);
  v21 = *(this + 61);
  v22 = qword_20128;
  if (v20 == v21 || bswap32(v20) == v21)
  {
    if (!qword_20128)
    {
      v22 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v22 = init_default_corebrightness_log();
      }
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    v28 = *(this + 61);
    *buf = 67109120;
    *&buf[4] = v28;
    v25 = "Found calibration for chip with ID = 0x%x\n";
    v26 = v22;
    v27 = 8;
  }

  else
  {
    if (!qword_20128)
    {
      v22 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v22 = init_default_corebrightness_log();
      }
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    v23 = *(BytePtr + 3);
    v24 = *(this + 61);
    *buf = 67109376;
    *&buf[4] = v23;
    *&buf[8] = 1024;
    *&buf[10] = v24;
    v25 = "ID in FDR calibration (0x%x) doesn't match with chip ID (0x%x), will still try to process available calibration.\n";
    v26 = v22;
    v27 = 14;
  }

  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, v25, buf, v27);
LABEL_65:
  v29 = BytePtr[16];
  if (v29 > 0x22)
  {
    if (v29 != 35)
    {
      if (v29 == 62)
      {
        *(this + 12) = 1067030938;
        buf[0] = 1;
        buf[9] = 1;
        *&buf[1] = 2;
        v61 = BytePtr[74];
        *(this + 56) = v61;
        *&buf[5] = v61;
        *&buf[10] = 220;
        v62 = &BytePtr[5080 * BytePtr[10] - 5080];
        v63 = v62[80];
        *(this + 15) = v63;
        *(this + 16) = v63 - 1;
        *&buf[12] = *(v62 + 47);
        v64 = *(v62 + 82);
        *(this + 20) = 1000 * v64;
        *&buf[14] = v64;
        *(this + 18) = 1000 * WORD2(v64);
        *(this + 19) = 1000 * WORD1(v64);
        *&buf[22] = *(v62 + 90);
        buf[26] = v63;
        buf[27] = v62[81];
        if (v61)
        {
          v65 = 256.0;
        }

        else
        {
          v65 = 65536.0;
        }

        if (v63)
        {
          v66 = 0;
          v67 = v62 + 76;
          v130 = v67 + 152;
          v127 = v67 + 128;
          v129 = v67 + 140;
          v68 = v67 + 158;
          v69 = v67 + 164;
          v70 = v67 + 188;
          v71 = (v67 + 20);
          v72 = v148;
          do
          {
            v73 = &v147[24 * v66 + 1];
            *v73 = v130[v66];
            *(v73 + 1) = *&v129[2 * v66];
            *(v73 + 3) = *&v127[2 * v66];
            v73[5] = v68[v66];
            *&buf[4 * v66 + 28] = *&v69[4 * v66] * 0.000015259;
            *(&v144 + v66 + 3) = *&v70[4 * v66] / v65;
            v74 = qword_20128;
            if (!qword_20128)
            {
              v74 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v74 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              v79 = *&buf[4 * v66 + 28];
              v80 = *(&v144 + v66 + 3);
              v81 = *(v73 + 1);
              *v135 = 67110400;
              LODWORD(v136) = v66;
              WORD2(v136) = 2048;
              *(&v136 + 6) = v79;
              HIWORD(v136) = 1024;
              *v137 = v66;
              *&v137[4] = 2048;
              *&v137[6] = v80;
              v138 = 1024;
              *v139 = v66;
              *&v139[4] = 1024;
              *&v139[6] = v81;
              _os_log_debug_impl(&dword_0, v74, OS_LOG_TYPE_DEBUG, "luxCoeff[%d]=%f, cctCoeff[%d]=%f, offsetCounts[%d]=%d/255", v135, 0x2Eu);
            }

            v75 = buf[27];
            v76 = v71;
            v77 = v72;
            if (buf[27])
            {
              do
              {
                v78 = *v76++;
                *v77++ = v78;
                --v75;
              }

              while (v75);
            }

            ++v66;
            v72 += 24;
            v71 += 9;
          }

          while (v66 < buf[26]);
        }

        cf = CFDataCreate(kCFAllocatorDefault, buf, 220);
        this = v132;
        v132[59] = 2;
        v9 = 1;
        goto LABEL_116;
      }

      v9 = 0;
      if (v29 != 58)
      {
        goto LABEL_116;
      }
    }

    *(this + 44) = 4;
    *(this + 208) = 1;
    *(this + 53) = 1008981770;
    buf[0] = 1;
    buf[9] = 1;
    *&buf[1] = 2;
    *&buf[10] = 145;
    v30 = &BytePtr[5080 * BytePtr[10] - 5080];
    v128 = v30 + 76;
    v31 = v30[80];
    *(this + 15) = v31;
    *(this + 16) = v31;
    *&buf[12] = *(v30 + 47);
    *&buf[14] = *(v30 + 41);
    *&buf[16] = *(v30 + 42);
    v32 = *&buf[16];
    *&buf[18] = *(v30 + 43);
    v33 = *&buf[18];
    *(this + 20) = 1000 * *&buf[14];
    *(this + 18) = 1000 * v33;
    *(this + 19) = 1000 * v32;
    buf[20] = v30[90];
    *&buf[21] = *(v30 + 91);
    buf[23] = v31;
    buf[24] = v30[81];
    if (v31)
    {
      v34 = 0;
      v35 = (v30 + 96);
      v36 = &v144 + 15;
      do
      {
        v37 = &v144 + 24 * v34 + 9;
        *v37 = v128[v34 + 152];
        *(v37 + 1) = *&v128[2 * v34 + 140];
        *(v37 + 3) = *&v128[2 * v34 + 128];
        v37[5] = v128[v34 + 158];
        *&buf[4 * v34 + 25] = *&v128[4 * v34 + 164];
        v38 = qword_20128;
        if (!qword_20128)
        {
          v38 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v38 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v43 = *&buf[4 * v34 + 25];
          v44 = *(v37 + 1);
          *v135 = 67109888;
          LODWORD(v136) = v34;
          WORD2(v136) = 1024;
          *(&v136 + 6) = v43;
          WORD5(v136) = 1024;
          HIDWORD(v136) = v34;
          *v137 = 1024;
          *&v137[2] = v44;
          _os_log_debug_impl(&dword_0, v38, OS_LOG_TYPE_DEBUG, "luxCoeff[%d]=%d/65536, offsetCounts[%d]=%d/255", v135, 0x1Au);
        }

        v39 = buf[24];
        v40 = v35;
        v41 = v36;
        if (buf[24])
        {
          do
          {
            v42 = *v40++;
            *v41++ = v42;
            --v39;
          }

          while (v39);
        }

        ++v34;
        v36 += 24;
        v35 += 9;
      }

      while (v34 < buf[23]);
    }

    *(&v144 + 1) = *(v128 + 47);
    *(&v144 + 5) = *(v128 + 48);
    cf = CFDataCreate(kCFAllocatorDefault, buf, 145);
    v9 = 1;
    this = v132;
    goto LABEL_116;
  }

  if (v29 == 14 || (v9 = 0, v29 == 19))
  {
    v45 = qword_20128;
    if (!qword_20128)
    {
      v45 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v45 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      sub_14BA0(BytePtr + 16);
    }

    *(this + 12) = 1067869798;
    buf[0] = 1;
    buf[9] = 1;
    *&buf[1] = 2;
    v46 = BytePtr[74];
    *(this + 56) = v46;
    *&buf[5] = v46;
    *&buf[10] = 193;
    v47 = BytePtr[80];
    *(this + 15) = v47;
    *(this + 16) = v47;
    v48 = *(BytePtr + 82);
    *&buf[12] = *(BytePtr + 47);
    *(this + 20) = 1000 * v48;
    *&buf[14] = v48;
    *(this + 18) = 1000 * WORD2(v48);
    *(this + 19) = 1000 * WORD1(v48);
    *&buf[22] = *(BytePtr + 90);
    buf[26] = v47;
    buf[27] = BytePtr[81];
    if (v47)
    {
      v49 = 0;
      v50 = BytePtr + 96;
      v51 = v147;
      do
      {
        v52 = &v146[25 * v49];
        *v52 = BytePtr[v49 + 228];
        *(v52 + 1) = *&BytePtr[2 * v49 + 216];
        *(v52 + 3) = *&BytePtr[2 * v49 + 204];
        *(v52 + 5) = BytePtr[v49 + 234];
        *&buf[4 * v49 + 28] = *&BytePtr[4 * v49 + 240] * 0.000015259;
        *(&v144 + v49 + 2) = *&BytePtr[4 * v49 + 264] * 0.0039062;
        v53 = qword_20128;
        if (!qword_20128)
        {
          v53 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v53 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v58 = *&buf[4 * v49 + 28];
          v59 = *(&v144 + v49 + 2);
          v60 = *(v52 + 1);
          *v135 = 136316674;
          *&v136 = "processFDRCalibration";
          WORD4(v136) = 1024;
          *(&v136 + 10) = v49;
          HIWORD(v136) = 2048;
          *v137 = v58;
          *&v137[8] = 1024;
          *&v137[10] = v49;
          v138 = 2048;
          *v139 = v59;
          *&v139[8] = 1024;
          v140 = v49;
          v141 = 1024;
          v142 = v60;
          _os_log_debug_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, "%s: luxCoeff[%d]=%f, cctCoeff[%d]=%f, offsetCounts[%d]=%d/255", v135, 0x38u);
        }

        v54 = buf[27];
        v55 = v50;
        v56 = v51;
        if (buf[27])
        {
          do
          {
            v57 = *v55;
            v55 += 2;
            *v56++ = v57;
            --v54;
          }

          while (v54);
        }

        ++v49;
        v51 += 25;
        v50 += 18;
      }

      while (v49 < buf[26]);
    }

    cf = CFDataCreate(kCFAllocatorDefault, buf, 193);
    *(this + 59) = 2;
    v9 = 1;
  }

LABEL_116:
  v82 = cf;
  if (!cf)
  {
    v87 = qword_20128;
    if (!qword_20128)
    {
      v87 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v87 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      sub_14D54();
    }

    return 0;
  }

  if (!*(this + 3))
  {
    goto LABEL_120;
  }

  if (!IOHIDServiceSetProperty())
  {
    v88 = qword_20128;
    if (!qword_20128)
    {
      v88 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v88 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      sub_144BC();
    }

    CFRelease(cf);
    return 0;
  }

  v82 = cf;
LABEL_120:
  CFRelease(v82);
  v83 = v132;
  if (!v9)
  {
    goto LABEL_205;
  }

  v84 = CFDataGetLength(theDataa);
  if (!ColorSensorPlugIn::processCachedDB(v132, v132[16], v132[59]))
  {
    v90 = qword_20128;
    v83 = v132;
    if (!qword_20128)
    {
      v90 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v90 = init_default_corebrightness_log();
        v83 = v132;
      }
    }

    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v91 = "Cached DB not found.";
      v92 = v90;
LABEL_153:
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEFAULT, v91, buf, 2u);
    }

LABEL_154:
    v145 = 0;
    v144 = 0u;
    *&buf[24] = 0u;
    *buf = *(v83 + 88);
    *&buf[16] = *(v83 + 56);
    if ((*(v83 + 224) - 1) > 1)
    {
      v94 = *(v83 + 60);
      v93 = v94 - *(v83 + 64);
    }

    else
    {
      v93 = 0;
      v94 = *(v83 + 64);
    }

    *&buf[20] = v94;
    *&buf[24] = v93;
    if (BytePtr)
    {
      *(v83 + 68) = 401;
      operator new[]();
    }

    switch(v84)
    {
      case 10632:
        v95 = processFDRSpectrumHmCA10(&theDataa, buf);
        break;
      case 10348:
        v95 = ColorSensorPlugIn::processFDRSpectrumVD6287_HmClv3(v83, &theDataa, buf);
        break;
      case 9962:
        v95 = ColorSensorPlugIn::processFDRSpectrumHmCAT2(v83, &theDataa, buf);
        break;
      default:
        v96 = VD6287HmCl::match(theDataa, v86);
        if (v96)
        {
          v95 = ColorSensorPlugIn::processFDRSpectrumVD6287_HmClv4(v96, &theDataa, buf);
        }

        else
        {
          if (!sub_1090C(theDataa))
          {
LABEL_196:
            sub_123DC(buf);
            goto LABEL_197;
          }

          v95 = sub_11E6C(v83, &theDataa, buf);
        }

        break;
    }

    if (v95)
    {
      v97 = LDBMParseBigDB(v83 + 116, ProgressCallback, buf, *(v83 + 236));
      v98 = qword_20128;
      if (v97)
      {
        if (!qword_20128)
        {
          v98 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v98 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          sub_14C2C();
          v83 = v132;
        }
      }

      else
      {
        if (!qword_20128)
        {
          v98 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v98 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *v135 = 0;
          _os_log_impl(&dword_0, v98, OS_LOG_TYPE_DEFAULT, "Parsed big DB\n", v135, 2u);
        }

        if (*(v83 + 240) == 1)
        {
          v99 = *(v83 + 48);
          v100 = LDBMCreateSmallDB(v83 + 116, *(v83 + 88), *(v83 + 96), *(v83 + 36), *(v83 + 44), *(v83 + 64), *(v83 + 244));
          v101 = qword_20128;
          if (v100)
          {
            if (!qword_20128)
            {
              v101 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v101 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              sub_144F8();
              v83 = v132;
            }
          }

          else
          {
            if (!qword_20128)
            {
              v101 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v101 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              *v135 = 0;
              _os_log_impl(&dword_0, v101, OS_LOG_TYPE_DEFAULT, "Small DB has been created\n", v135, 2u);
            }
          }
        }

        if ((*(v83 + 60) - 4) <= 2)
        {
          *(v83 + 52) = 1;
        }
      }
    }

    goto LABEL_196;
  }

  v83 = v132;
  v85 = qword_20128;
  if (v132[60] != 1)
  {
    if (!qword_20128)
    {
      v85 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v85 = init_default_corebrightness_log();
        v83 = v132;
      }
    }

    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v91 = "Unmatched calibration => do NOT use cached DB";
      v92 = v85;
      goto LABEL_153;
    }

    goto LABEL_154;
  }

  if (!qword_20128)
  {
    v85 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v85 = init_default_corebrightness_log();
      v83 = v132;
    }
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "Found cached DB and matched calibration.", buf, 2u);
  }

  if (*(v83 + 60) - 7) < 0xFFFFFFFD || (a3)
  {
    goto LABEL_154;
  }

  *(v83 + 52) = 1;
LABEL_197:
  if (*(v83 + 208) == 1 && *(v83 + 52) == 1)
  {
    v102 = qword_20128;
    if (!qword_20128)
    {
      v102 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v102 = init_default_corebrightness_log();
        v83 = v132;
      }
    }

    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_INFO);
    if (v103)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v102, OS_LOG_TYPE_INFO, "RR normalization", buf, 2u);
    }

    v104 = *(v83 + 96);
    v105 = *(v83 + 56);
    v106 = v83 + 96;
    ColorSensorPlugIn::normalizedByEuklidNorm(v103, v104, v105, *(v106 - 32));
    v107 = 4 * *(v106 - 32);
    operator new[]();
  }

LABEL_205:
  if (*(v83 + 52) == 1 && *(v83 + 24) && *(v83 + 228) == 8)
  {
    v109 = (v83 + 236);
    v108 = *(v83 + 236);
    if (v108 == 3)
    {
      v116 = *(v83 + 56);
      v115 = *(v83 + 60);
      v118 = *(v83 + 88);
      v117 = *(v83 + 96);
      v114 = sub_121A0();
    }

    else
    {
      if (v108 != 1)
      {
        v124 = qword_20128;
        if (!qword_20128)
        {
          v124 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v124 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
        {
          sub_14CA4(v109);
        }

        goto LABEL_230;
      }

      v111 = *(v83 + 56);
      v110 = *(v83 + 60);
      v113 = *(v83 + 88);
      v112 = *(v83 + 96);
      v114 = sub_120C4();
    }

    v119 = v114;
    v120 = v132;
    if (v114)
    {
      v121 = qword_20128;
      if (!qword_20128)
      {
        v121 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v121 = init_default_corebrightness_log();
          v120 = v132;
        }
      }

      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v121, OS_LOG_TYPE_INFO, "Sending Harmony DB to AOP", buf, 2u);
      }

      v122 = *(v120 + 3);
      if (!IOHIDServiceSetProperty())
      {
        v123 = qword_20128;
        if (!qword_20128)
        {
          v123 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v123 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
        {
          sub_14C68();
        }
      }

      CFRelease(v119);
      return 1;
    }

LABEL_230:
    v125 = qword_20128;
    if (!qword_20128)
    {
      v125 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v125 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
    {
      sub_14D18();
    }
  }

  return 1;
}

uint64_t ColorSensorPlugIn::processCachedDB(uint64_t a1, int a2, int a3)
{
  v10 = 0;
  if (!LDBMInitialize(*(a1 + 36), a1 + 116, &v10, a3, *(a1 + 48)))
  {
    v6 = *(a1 + 120);
    *(a1 + 56) = v6;
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
        v6 = *(a1 + 56);
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = v6;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "nSources: %u nChannels: %d\n", buf, 0xEu);
      v8 = *(a1 + 56);
    }

    operator new[]();
  }

  v5 = qword_20128;
  if (!qword_20128)
  {
    v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Database not found!\n", buf, 2u);
  }

  return v10;
}

void ColorSensorPlugIn::normalizedByEuklidNorm(ColorSensorPlugIn *this, float *a2, int a3, int a4)
{
  if (a2 && a3 >= 1)
  {
    v5 = a2;
    v6 = 0;
    v7 = 4 * a3;
    v8 = a3;
    v9 = a4;
    do
    {
      v10 = 0.0;
      if (a4 >= 1)
      {
        v11 = v9;
        v12 = v5;
        do
        {
          v10 = v10 + (*v12 * *v12);
          v12 = (v12 + v7);
          --v11;
        }

        while (v11);
      }

      v13 = sqrt(v10);
      if (v13 != 1.0 && v13 != 0.0)
      {
        inited = qword_20128;
        if (!qword_20128)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v19 = v13;
          _os_log_debug_impl(&dword_0, inited, OS_LOG_TYPE_DEBUG, "Normalization - Euklid norm = %f\n", buf, 0xCu);
        }

        if (a4 >= 1)
        {
          v15 = v9;
          v16 = v5;
          do
          {
            v17 = *v16 / v13;
            *v16 = v17;
            v16 = (v16 + v7);
            --v15;
          }

          while (v15);
        }
      }

      ++v6;
      ++v5;
    }

    while (v6 != v8);
  }
}

BOOL ColorSensorPlugIn::processSysConfigSensorCalibrationVD6286()
{
  v0 = __chkstk_darwin();
  v7 = *(v4 + 4) >> 2;
  if (v7 <= 0x40E)
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14DCC();
    }
  }

  else
  {
    v8 = v4;
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v0;
    v31 = v5;
    v32 = v6;
    memset(v36, 0, sizeof(v36));
    v35 = 0u;
    v13 = qword_20128;
    if (!qword_20128)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(v8 + 4);
      buf = 134218240;
      *v38 = 4156;
      *&v38[8] = 1024;
      v39 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "ALSCalibrationDataVD6286 size: %lu, calibration data %u.", &buf, 0x12u);
    }

    v49.location = *v10;
    v49.length = 4156;
    CFDataGetBytes(*v11, v49, &buf);
    BYTE4(v35) = *(v9 + 2);
    v34 = 1;
    *(&v35 + 5) = 193;
    bytes = 1;
    *(&v35 + 7) = vcvts_n_s32_f32(vcvts_n_f32_u32(*&v38[4], 8uLL), 0xEuLL);
    *(&v35 + 9) = *&v38[6];
    v16 = *&v38[8];
    *(&v35 + 13) = v39;
    v17 = v39;
    v12[20] = 1000 * *&v38[6];
    v12[18] = 1000 * v17;
    v12[19] = 1000 * v16;
    *&v36[1] = HIWORD(v39);
    v36[3] = v40;
    v18 = v41;
    v12[15] = v41;
    v12[16] = v18;
    v36[5] = v18;
    v19 = v42;
    v36[6] = v42;
    *&v36[7] = vdivq_f32(vcvtq_f32_s32(v45), vdupq_n_s32(0x49742400u));
    *&v36[23] = v46 / 1000000.0;
    *&v36[27] = vcvtq_f32_s32(v47);
    *&v36[43] = v48;
    if (v18)
    {
      v20 = 0;
      v21 = &v36[62];
      v22 = &v44;
      do
      {
        v23 = &v43[7 * v20];
        v24 = &v36[25 * v20 + 47];
        *v24 = *v23;
        LOWORD(v15) = *(v23 + 1);
        v15 = LODWORD(v15) / 1000.0;
        *(v24 + 1) = vcvts_n_s32_f32(v15, 8uLL);
        *(v24 + 3) = 0;
        *(v24 + 5) = *(v23 + 3);
        *(v24 + 7) = 0x8000800080008000;
        v25 = v19;
        v26 = v22;
        v27 = v21;
        if (v19)
        {
          do
          {
            v28 = *v26++;
            v15 = vcvts_n_f32_u32(v28, 8uLL);
            *v27++ = vcvts_n_s32_f32(v15, 0xEuLL);
            --v25;
          }

          while (v25);
        }

        ++v20;
        v21 += 25;
        v22 = (v22 + 14);
      }

      while (v20 != v18);
    }

    *v31 = 193;
    *v32 = CFDataCreate(kCFAllocatorDefault, &bytes, 193);
  }

  return v7 > 0x40E;
}

void sub_F044(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = LDBMCreateSmallDB(v1 + 116, *(v1 + 88), *(v1 + 96), *(v1 + 36), *(v1 + 44), *(v1 + 60), *(v1 + 244));
  inited = qword_20128;
  if (v2)
  {
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_144F8();
    }
  }

  else
  {
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Small DB has been created\n", v4, 2u);
    }

    *(v1 + 52) = 1;
  }
}

uint64_t ColorSensorPlugIn::processSysConfigSpectrumVD6286()
{
  v0 = __chkstk_darwin();
  if (*(v3 + 4) >> 2 > 0x40Eu)
  {
    v5 = v3;
    v6 = v2;
    v7 = v1;
    v8 = v0;
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
    {
      v10 = *(v5 + 4);
      *buf = 134218240;
      v15 = 4156;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_INFO, "ALSCalibrationDataVD6286 size: %lu, calibration data %u.", buf, 0x12u);
    }

    v20.location = *v6;
    v20.length = 4156;
    CFDataGetBytes(*v7, v20, buf);
    v11 = v18;
    if (*(v8 + 45))
    {
      v11 = *(v8 + 45);
    }

    *(v8 + 44) = v11;
    *(v8 + 68) = v19;
    v12 = *(v8 + 60);
    operator new[]();
  }

  v4 = qword_20128;
  if (!qword_20128)
  {
    v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_14DCC();
  }

  return 0;
}

void sub_F5A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = LDBMCreateSmallDB(v1 + 116, *(v1 + 88), *(v1 + 96), *(v1 + 36), *(v1 + 44), *(v1 + 60), *(v1 + 244));
  inited = qword_20128;
  if (v2)
  {
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_144F8();
    }
  }

  else
  {
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Small DB has been created\n", v4, 2u);
    }

    *(v1 + 52) = 1;
  }
}

const void *ColorSensorPlugIn::copyDataFromCalibrationInstances(ColorSensorPlugIn *this, const __CFString *a2, CFArrayRef theArray, int a4, unsigned __int8 *a5, unsigned __int8 *a6, unint64_t *a7)
{
  Value = 0;
  if (CFArrayGetCount(theArray) > a4)
  {
    v15 = CFStringCompare(a2, @"AlsC", 0);
    CFArrayGetValueAtIndex(theArray, a4);
    if (v15)
    {
      Value = AMFDRSealingMapCopyLocalData();
    }

    else
    {
      v16 = AMFDRSealingMapCopyLocalDict();
      if (v16)
      {
        v17 = v16;
        Value = CFDictionaryGetValue(v16, @"AlsC");
        CFRetain(Value);
        CFRelease(v17);
      }

      else
      {
        Value = 0;
      }
    }

    if (Value)
    {
      if (CFDataGetLength(Value) == 5112)
      {
        BytePtr = CFDataGetBytePtr(Value);
        *a5 = BytePtr[18];
        *a6 = BytePtr[17];
        v19 = *(this + 31) & 0xFF0000000000FFFFLL;
        *a7 = v19;
        v20 = v19 | (BytePtr[20] << 48);
        *a7 = v20;
        v21 = v20 | (BytePtr[21] << 40);
        *a7 = v21;
        v22 = v21 | (BytePtr[22] << 32);
        *a7 = v22;
        v23 = v22 | (BytePtr[23] << 24);
        *a7 = v23;
        *a7 = v23 | (BytePtr[24] << 16);
        inited = qword_20128;
        if (!qword_20128)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(this + 31);
          v26 = *a7;
          *buf = 134218240;
          v30 = v25;
          v31 = 2048;
          v32 = v26;
          _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "[0x%llx] CFSN = 0x%llx", buf, 0x16u);
        }
      }

      else if (CFDataGetLength(Value) == 10632)
      {
        v27 = CFDataGetBytePtr(Value);
        *a5 = v27[19];
        *a6 = v27[18];
        *a7 = *(v27 + 10);
      }
    }
  }

  return Value;
}

const __CFArray *ColorSensorPlugIn::copyFDRInstances(ColorSensorPlugIn *this, const __CFString *a2, char a3, char a4)
{
  if (a3)
  {
    goto LABEL_14;
  }

  v6 = AMFDRSealingManifestCopyMultiInstanceForClass();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) >= 1)
    {
      inited = qword_20128;
      if (!qword_20128)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "copyFDRInstances";
        v16 = 2114;
        v17 = a2;
        v18 = 2112;
        v19 = v7;
        v9 = "[%s] [%{public}@] [SealingManifest] Succeeded! Instances: %@.";
LABEL_22:
        _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, v9, buf, 0x20u);
        return v7;
      }

      return v7;
    }

    CFRelease(v7);
  }

  v10 = qword_20128;
  if (!qword_20128)
  {
    v10 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v10 = init_default_corebrightness_log();
    }
  }

  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    if ((a4 & 1) == 0)
    {
      goto LABEL_15;
    }

    return 0;
  }

  sub_14E08();
  if (a4)
  {
    return 0;
  }

LABEL_15:
  v11 = AMFDRSealingMapCopyMultiInstanceForClass();
  if (!v11)
  {
    goto LABEL_24;
  }

  v7 = v11;
  if (CFArrayGetCount(v11) < 1)
  {
    CFRelease(v7);
LABEL_24:
    v12 = qword_20128;
    if (!qword_20128)
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_14E84();
    }

    return 0;
  }

  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "copyFDRInstances";
    v16 = 2114;
    v17 = a2;
    v18 = 2112;
    v19 = v7;
    v9 = "[%s] [%{public}@] [SealingMap] Succeeded! Instances: %@.";
    goto LABEL_22;
  }

  return v7;
}

CFTypeRef ColorSensorPlugIn::copyFDRCalibrationData(uint64_t a1, const __CFString *a2, int *a3, char a4)
{
  v7 = a4 & 1;
  *a3 = 0;
  v8 = a4 & 2;
  v9 = a4 & 4;
  v10 = &dword_20000;
  if ((a4 & 7) != 0)
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v49 = v7;
      *&v49[4] = 1024;
      *&v49[6] = v8 >> 1;
      LOWORD(v50) = 1024;
      *(&v50 + 2) = v9 >> 2;
      _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Calibration overrides: skipSealingMapCopy = %d, skipSealingManifestCopy = %d, useUnmatched = %d", buf, 0x14u);
    }
  }

  v12 = AMFDRLogSetHandler();
  v13 = ColorSensorPlugIn::copyFDRInstances(v12, a2, v8 != 0, v7);
  v14 = v13;
  v15 = "not found";
  if (!v13)
  {
    v26 = 0;
    v27 = 3;
    goto LABEL_90;
  }

  if (CFArrayGetCount(v13) < 1)
  {
    goto LABEL_49;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    *v47 = 0;
    err = 0;
    if (v18)
    {
      CFRelease(v18);
    }

    v18 = ColorSensorPlugIn::copyDataFromCalibrationInstances(a1, a2, v14, v16, &v47[1], v47, &err);
    if (CFArrayGetCount(v14) < 2)
    {
      if (v18)
      {
        if (v17)
        {
          CFRelease(v17);
        }

        v26 = CFRetain(v18);
        v15 = "not found";
        goto LABEL_82;
      }

      goto LABEL_37;
    }

    v19 = err;
    v20 = *(a1 + 248);
    if (v9)
    {
      if (err != v20)
      {
        *a3 = 2;
        v40 = *(v10 + 37);
        if (!v40)
        {
          v40 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v40 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(a1 + 248);
          *buf = 134217984;
          *v49 = v41;
          v37 = "[0x%llx] Found unmatched calibration data.";
          v38 = v40;
          v39 = 12;
LABEL_78:
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
        }

        goto LABEL_79;
      }

      goto LABEL_37;
    }

    if (err == v20)
    {
      break;
    }

    if (CBU_IsR2RSupported() && *(a1 + 40) == v47[0])
    {
      v21 = *(v10 + 37);
      if (!v21)
      {
        v21 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v21 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 248);
        v23 = "doesn't ";
        if (*(a1 + 36) == v47[1])
        {
          v23 = &unk_16E0B;
        }

        *buf = 134218754;
        *v49 = v22;
        *&v49[8] = 2114;
        v50 = a2;
        v51 = 2048;
        v52 = v19;
        v53 = 2080;
        v54 = v23;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[0x%llx] %{public}@ CFSN 0x%llx - placement match, orientation %smatch", buf, 0x2Au);
      }

      if (v17)
      {
        v10 = &dword_20000;
        if (*(a1 + 36) == v47[1])
        {
          CFRelease(v17);
          v17 = CFRetain(v18);
        }

        goto LABEL_37;
      }

      v17 = CFRetain(v18);
    }

    else
    {
      v24 = *(v10 + 37);
      if (!v24)
      {
        v24 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v24 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 248);
        *buf = 134218498;
        *v49 = v25;
        *&v49[8] = 2114;
        v50 = a2;
        v51 = 2048;
        v52 = v19;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[0x%llx] %{public}@ CFSN 0x%llx does not match.", buf, 0x20u);
      }
    }

    v10 = &dword_20000;
LABEL_37:
    if (CFArrayGetCount(v14) <= ++v16)
    {
      if (v18)
      {
        CFRelease(v18);
      }

      if (v17)
      {
        *a3 = 2;
        v28 = *(v10 + 37);
        if (!v28)
        {
          v28 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v28 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1 + 248);
          *buf = 134217984;
          *v49 = v29;
          v30 = "[0x%llx] Found valid but NOT matching calibration data.";
          goto LABEL_66;
        }

        goto LABEL_67;
      }

LABEL_49:
      if (CBU_IsR2RSupported())
      {
        err = 0;
        CFArrayGetValueAtIndex(v14, 0);
        AMFDRSealingMapCopyLocalData();
        if (err && CFErrorGetCode(err))
        {
          v31 = *(v10 + 37);
          if (!v31)
          {
            v31 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v31 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 248);
            *buf = 134218498;
            *v49 = v32;
            *&v49[8] = 2112;
            v50 = a2;
            v51 = 2112;
            v52 = err;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "[0x%llx] Looking for non matching calibration data -> AMFDRSealingMapCopyLocalData (index = 0) for key %@ failed with error %@", buf, 0x20u);
          }
        }

        else
        {
          *a3 = 2;
          v28 = *(v10 + 37);
          if (!v28)
          {
            v28 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (!_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v28 = init_default_corebrightness_log();
            }
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 248);
            *buf = 134217984;
            *v49 = v33;
            v30 = "[0x%llx] Found valid but NOT matching calibration data at index 0.";
LABEL_66:
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
          }
        }
      }

LABEL_67:
      Length = CFStringGetLength(a2);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }
  }

  v35 = *(v10 + 37);
  if (!v35)
  {
    v35 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v35 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 248);
    *buf = 134218498;
    *v49 = v36;
    *&v49[8] = 2114;
    v50 = a2;
    v51 = 2048;
    v52 = v19;
    v37 = "[0x%llx] Found matched %{public}@ CFSN 0x%llx";
    v38 = v35;
    v39 = 32;
    goto LABEL_78;
  }

LABEL_79:
  if (v17)
  {
    CFRelease(v17);
  }

  v26 = CFRetain(v18);
  v15 = "not found";
  if (v18)
  {
LABEL_82:
    CFRelease(v18);
  }

  if (v26)
  {
    v27 = 2;
  }

  else
  {
    v27 = 3;
  }

  if (!v26 || (v15 = "found", v9))
  {
LABEL_90:
    *a3 = v27;
  }

  else
  {
    v15 = "found";
    if (*a3 != 2)
    {
      v27 = 1;
      goto LABEL_90;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v42 = *(v10 + 37);
  if (!v42)
  {
    v42 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v42 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *a3;
    if (v43 > 3)
    {
      v44 = "Undefined";
    }

    else
    {
      v44 = (&off_1C8C8)[v43];
    }

    *buf = 138543874;
    *v49 = a2;
    *&v49[8] = 2080;
    v50 = v15;
    v51 = 2080;
    v52 = v44;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "FDR calibration %{public}@ data %s (%s).", buf, 0x20u);
  }

  return v26;
}

void sub_105D8()
{
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    sub_14F00();
  }
}

CFDataRef ColorSensorPlugIn::convertNighthawkHmClv1Tov3()
{
  __chkstk_darwin();
  v1 = v0;
  bzero(v32, 0x281CuLL);
  v2 = 0;
  *bytes = *v1;
  v25 = *(v1 + 8);
  v26 = *(v1 + 12);
  v27 = *(v1 + 20);
  *&v29[12] = *(v1 + 52);
  v3 = v1 + 80;
  v4 = 1;
  *v29 = *(v1 + 40);
  v5 = *(v1 + 24);
  v30 = *(v1 + 68);
  v31 = *(v1 + 76);
  v28 = v5;
  do
  {
    v6 = 0;
    v7 = v3 + 5180 * v2;
    v8 = &v32[2567 * v2];
    *v8 = *v7;
    *(v8 + 4) = *(v7 + 4);
    v9 = v4;
    *(v8 + 5) = *(v7 + 5);
    *(v8 + 7) = -1;
    *(v8 + 11) = *(v7 + 9);
    *(v8 + 15) = *(v7 + 13);
    *(v8 + 17) = *(v7 + 19);
    *(v8 + 19) = *(v7 + 21);
    v10 = *(v7 + 23);
    v11 = *(v7 + 39);
    *(v8 + 53) = *(v7 + 55);
    *(v8 + 37) = v11;
    *(v8 + 21) = v10;
    v12 = *(v7 + 71);
    v13 = *(v7 + 87);
    v14 = *(v7 + 103);
    *(v8 + 113) = *(v7 + 115);
    *(v8 + 101) = v14;
    *(v8 + 85) = v13;
    *(v8 + 69) = v12;
    do
    {
      *(&v8[v6 + 64] + 1) = *(v7 + 137 + v6);
      ++v6;
    }

    while (v6 != 6);
    *(v8 + 141) = *(v7 + 143);
    *(v8 + 149) = *(v7 + 151);
    *(v8 + 153) = *(v7 + 155);
    *(v8 + 169) = *(v7 + 171);
    *(v8 + 177) = *(v7 + 179);
    *(v8 + 193) = *(v7 + 195);
    *(v8 + 201) = *(v7 + 203);
    *(v8 + 221) = *(v7 + 223);
    *(v8 + 205) = *(v7 + 207);
    *(v8 + 229) = *(v7 + 231);
    *(v8 + 231) = *(v7 + 233);
    *(v8 + 235) = *(v7 + 237);
    memcpy(v8 + 119, (v7 + 239), 0x12D0uLL);
    LOWORD(v15) = *(v7 + 5055) + 1;
    *(v8 + 5054) = *(v7 + 5055) + 1;
    *(v8 + 5057) = *(v7 + 5056);
    v16 = *(v7 + 5064);
    *(v8 + 5071) = v16;
    *(v8 + 5069) = v16;
    if ((v15 & 0x100) == 0)
    {
      v17 = v8 + 5097;
      v18 = v8 + 2559;
      v15 = v15;
      v19 = *(v7 + 5072);
      v20 = *(v7 + 5073);
      v21 = *(v7 + 5077);
      v22 = *(v7 + 5075);
      do
      {
        *(v18 - 35) = v20;
        *v17++ = v19;
        *(v18 - 7) = v21;
        *v18++ = v22;
        --v15;
      }

      while (v15);
    }

    v4 = 0;
    *(v8 + 5132) = *(v7 + 5079);
    v2 = 1;
  }

  while ((v9 & 1) != 0);
  return CFDataCreate(kCFAllocatorDefault, bytes, 10348);
}

const __CFData *sub_1090C(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v1);
    result = 0;
    if (BytePtr)
    {
      if (Length >> 3 >= 0x27F)
      {
        if (*BytePtr == 1097626435 && BytePtr[4] == 1 && !BytePtr[5] && BytePtr[16] == 35)
        {
          return (BytePtr[11] == 32);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_109A4(uint64_t a1, const __CFData **a2, CFDataRef *a3)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v5 = sub_12A3C(*a2, &v11);
  if (v5)
  {
    *a3 = CFDataCreate(kCFAllocatorDefault, &v11, 145);
    *(a1 + 44) = 4;
    *(a1 + 208) = 1;
    *(a1 + 212) = 1008981770;
    v6 = BYTE7(v12);
    *(a1 + 60) = BYTE7(v12);
    *(a1 + 64) = v6;
    v7 = 1000 * HIWORD(v11);
    v8 = 1000 * WORD1(v12);
    *(a1 + 76) = 1000 * v12;
    *(a1 + 80) = v7;
    *(a1 + 72) = v8;
    *(a1 + 48) = 1067869798;
  }

  else
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14F70();
    }
  }

  return v5;
}

BOOL ColorSensorPlugIn::processFDRCalibrationHmCAT2(ColorSensorPlugIn *this, const __CFData **a2, const __CFData **a3)
{
  Length = CFDataGetLength(*a2);
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 134217984;
    *&buf[1] = Length;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "FDR calibration data length = %ld\n", buf, 0xCu);
  }

  if (Length == 9962)
  {
    BytePtr = CFDataGetBytePtr(*a2);
    v9 = qword_20128;
    if (!qword_20128)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = BytePtr[4];
      v11 = BytePtr[5];
      buf[0] = 67109376;
      buf[1] = v10;
      LOWORD(buf[2]) = 1024;
      *(&buf[2] + 2) = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HmCA version = v%d.%d\n", buf, 0xEu);
    }

    v12 = qword_20128;
    if (!qword_20128)
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = BytePtr[28];
      buf[0] = 67109120;
      buf[1] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Device_id = 0x%x\n", buf, 8u);
    }

    *__str = *(BytePtr + 2);
    v74 = 0;
    v14 = strtoul(__str, 0, 16);
    v15 = qword_20128;
    if (!qword_20128)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    v46 = a3;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 67109120;
      buf[1] = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Chip_id is 0x%08X", buf, 8u);
    }

    v16 = *(this + 61);
    if (v16 != v14)
    {
      v17 = bswap32(v14);
      if (v17 != v16)
      {
        v18 = qword_20128;
        if (!qword_20128)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v18 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v45 = *(this + 61);
          buf[0] = 67109632;
          buf[1] = v45;
          LOWORD(buf[2]) = 1024;
          *(&buf[2] + 2) = v14;
          HIWORD(buf[3]) = 1024;
          buf[4] = v17;
          _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Chip ID doesn't match - (device chip ID 0x%08X != calibration chip ID 0x%08X and chip_id_reversed 0x%08X)", buf, 0x14u);
        }
      }
    }

    memset(&buf[1] + 1, 0, 32);
    memset(&buf[9] + 1, 0, 156);
    *(this + 12) = 1067869798;
    LOBYTE(buf[0]) = 1;
    BYTE1(buf[2]) = 1;
    *(buf + 1) = 2;
    HIWORD(buf[2]) = 193;
    v19 = BytePtr[80];
    *(this + 15) = v19;
    *(this + 16) = v19;
    v20 = *(BytePtr + 41);
    LOWORD(buf[3]) = v20;
    if (BytePtr[5] + 10 * BytePtr[4] <= 0x10)
    {
      v24 = BytePtr[81];
      v25 = 6;
      v22 = 150;
    }

    else
    {
      v21 = *(BytePtr + 142);
      v22 = *(BytePtr + 142);
      if (MGGetProductType() == 376943508 && BytePtr[4] == 1 && BytePtr[5] == 7)
      {
        v23 = qword_20128;
        if (!qword_20128)
        {
          v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1501C(v20, v21, v23);
        }

        LOWORD(buf[3]) = 19660;
        v22 = 250;
      }

      v24 = BytePtr[81];
      v25 = BytePtr[282] - v24 + 9;
      v19 = BytePtr[80];
    }

    HIWORD(buf[3]) = v22;
    buf[4] = 6488164;
    strcpy(&buf[5], ">");
    *(this + 20) = 1000 * v22;
    *(this + 9) = 0x186A0000182B8;
    *(&buf[5] + 2) = 16843009 * v25;
    BYTE2(buf[6]) = v19;
    HIBYTE(buf[6]) = v24;
    v27 = qword_20128;
    if (!qword_20128)
    {
      v27 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v27 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v54 = 136315650;
      v55 = "processFDRCalibrationHmCAT2";
      v56 = 1024;
      v57 = v19;
      v58 = 1024;
      LODWORD(v59) = v24;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%s: nChannels = %d, nGains = %d", v54, 0x18u);
    }

    v28 = qword_20128;
    if (!qword_20128)
    {
      v28 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v28 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v54 = 136315650;
      v55 = "processFDRCalibrationHmCAT2";
      v56 = 1024;
      v57 = v25;
      v58 = 1024;
      LODWORD(v59) = v22;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%s: gain = %d, iTime = %d", v54, 0x18u);
    }

    if (v19)
    {
      v29 = 0;
      v53 = BytePtr + 216;
      v51 = BytePtr + 192;
      v52 = BytePtr + 204;
      v49 = BytePtr + 234;
      v50 = BytePtr + 222;
      v48 = BytePtr + 258;
      v30 = BytePtr + 84;
      v47 = v24;
      v31 = v19;
      v32 = &buf[20] + 3;
      do
      {
        v33 = v24;
        v34 = v53[v29];
        v35 = &buf[17] + 25 * v29;
        *v35 = v53[v29];
        v36 = *&v52[2 * v29];
        *(v35 + 1) = *&v52[2 * v29];
        *(v35 + 3) = *&v51[2 * v29];
        *(v35 + 5) = *&v50[2 * v29];
        v37 = *&v49[4 * v29] * 4.6566e-10;
        *&buf[v29 + 7] = v37;
        v38 = *&v48[4 * v29] * 0.000061035;
        *&buf[v29 + 12] = v38;
        v39 = qword_20128;
        if (!qword_20128)
        {
          v39 = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v39 = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 136317186;
          v55 = "processFDRCalibrationHmCAT2";
          v56 = 1024;
          v57 = v29;
          v58 = 2048;
          v59 = v37;
          v60 = 1024;
          v61 = v29;
          v62 = 2048;
          v63 = v38;
          v64 = 1024;
          v65 = v29;
          v66 = 1024;
          v67 = v36;
          v68 = 1024;
          v69 = v29;
          v70 = 1024;
          v71 = v34;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%s: luxCoeff[%d]=%f, cctCoeff[%d]=%f, offsetCounts[%d]=%d/255 darkCounts[%d] = %d", v54, 0x44u);
        }

        *(v35 + 7) = 0x8000800080008000;
        v40 = v47;
        v41 = v30;
        v42 = v32;
        v24 = v33;
        if (v33)
        {
          do
          {
            v43 = *v41;
            v41 += 2;
            *v42++ = v43;
            --v40;
          }

          while (v40);
        }

        ++v29;
        v32 += 25;
        v30 += 18;
      }

      while (v29 < v31);
    }

    Length = 9962;
    *v46 = CFDataCreate(kCFAllocatorDefault, buf, 193);
  }

  else
  {
    v26 = qword_20128;
    if (!qword_20128)
    {
      v26 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v26 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_14FAC();
    }
  }

  return Length == 9962;
}