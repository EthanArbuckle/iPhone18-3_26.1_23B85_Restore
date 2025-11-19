uint64_t vthisgsPixelTransferToIntermediateBuffer(VTPixelTransferSessionRef *pixelTransferSessionOut, CVPixelBufferRef pixelBuffer, CFDictionaryRef DictionaryRepresentation, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = pixelTransferSessionOut + 2;
  v16 = MEMORY[0x1E695E480];
  if (!pixelTransferSessionOut[2])
  {
    v17 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], v15);
    if (v17)
    {
      return v17;
    }
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v22 = pixelTransferSessionOut[3];
  v21 = (pixelTransferSessionOut + 3);
  v20 = v22;
  if (v22)
  {
    if (Width == CVPixelBufferGetWidth(v20) && Height == CVPixelBufferGetHeight(*v21))
    {
      if (*v21)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_11;
      }
    }

    else if (*v21)
    {
      CFRelease(*v21);
      *v21 = 0;
    }
  }

  v25 = *v16;
  v24 = OUTLINED_FUNCTION_6_9();
  v23 = OUTLINED_FUNCTION_6_9();
  CFDictionarySetValue(v24, *MEMORY[0x1E69660D8], v23);
  v26 = CVPixelBufferCreate(v25, Width, Height, 0x42475241u, v24, v21);
  if (v26)
  {
    v35 = v26;
    v29 = 0;
    v30 = 0;
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_11:
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1882468912 && (v27 = a5 % 6, v27 >= 1))
  {
    v38.origin.x = (a5 - v27);
    v38.origin.y = a6;
    v38.size.width = (v27 + a7);
    v28 = a8;
    v38.size.height = v28;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v38);
    if (a4)
    {
      v39.origin.x = v27;
      v39.size.width = a7;
      v39.origin.y = 0.0;
      v39.size.height = v28;
      v29 = CGRectCreateDictionaryRepresentation(v39);
    }

    else
    {
      v29 = 0;
    }

    v30 = DictionaryRepresentation;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  VTSessionSetProperty(*v15, @"SourceCropRectangle", DictionaryRepresentation);
  VTSessionSetProperty(*v15, @"DestinationRectangle", DictionaryRepresentation);
  v31 = *v15;
  v32 = @"EnableHistogram";
  if (a4)
  {
    VTSessionSetProperty(v31, @"EnableHistogram", *MEMORY[0x1E695E4D0]);
    v31 = *v15;
    v32 = @"HistogramRectangle";
    v33 = v29;
  }

  else
  {
    v33 = *MEMORY[0x1E695E4C0];
  }

  VTSessionSetProperty(v31, v32, v33);
  CVBufferPropagateAttachments(pixelBuffer, *v21);
  v34 = VTPixelTransferSessionTransferImage(*v15, pixelBuffer, *v21);
  v35 = v34;
  if (a4 && !v34)
  {
    VTSessionCopyProperty(*v15, @"HistogramData", *MEMORY[0x1E695E480], a4);
  }

  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_25:
  CFRelease(v24);
LABEL_26:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v35;
}

void VTHDRImageStatisticsGenerationSessionCreate_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t VTHDRImageStatisticsGenerationSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRImageStatisticsGenerationSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBlitterColorHandlingOptimized_setup(int a1, CFDictionaryRef theDict, int a3, const __CFDictionary *a4, const __CFDictionary *a5, int a6, int a7, char *a8, void *a9, uint64_t a10, void (__cdecl **a11)(void *))
{
  v187 = *MEMORY[0x1E69E9840];
  v20 = MEMORY[0x1E6965F98];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6965F98]);
  }

  else
  {
    Value = 0;
  }

  if (a4)
  {
    v144 = CFDictionaryGetValue(a4, *v20);
  }

  else
  {
    v144 = 0;
  }

  v178 = 0;
  v177 = 0;
  cf = 0;
  bzero(v182, 0x180uLL);
  v21 = 0;
  v180 = 0;
  v179 = 0;
  v181 = 0;
  v172 = 0;
  v173 = &v172;
  v174 = 0x2000000000;
  v175 = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2000000000;
  v171 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2000000000;
  v167 = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x2000000000;
  v163 = 0;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2000000000;
  v159 = 0;
  v152 = 0;
  v153 = &v152;
  v154 = 0x2000000000;
  v155 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2000000000;
  v151 = 0;
  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x2000000000;
  v147[3] = 0;
  do
  {
    v22 = &v182[v21];
    *v22 = 0;
    *(v22 + 8) = xmmword_18FECF2D0;
    *(v22 + 6) = 1065353216;
    *(v22 + 28) = 0uLL;
    *(v22 + 44) = 0uLL;
    *(v22 + 60) = 0uLL;
    *(v22 + 76) = 0uLL;
    *(v22 + 92) = 0uLL;
    v21 += 128;
    *(v22 + 108) = 0uLL;
  }

  while (v21 != 384);
  VectorCapabilities = getVectorCapabilities();
  v146 = a8;
  if (a8)
  {
    v24 = 0x4000;
    if (VectorCapabilities < 2)
    {
      v24 = 0x8000;
    }

    v25 = malloc_type_calloc(1uLL, (3 * v24) | 0xA4, 0x1000040254CD248uLL);
    a8 = v25;
    if (!v25)
    {
      fig_log_get_emitter();
      v33 = FigSignalErrorAtGM();
      v27 = 0;
      v28 = 0;
      goto LABEL_27;
    }

    v179 = v25 + 164;
    v180 = v25 + 16548;
    v181 = v25 + 32932;
    if (a7)
    {
      MaxLogicalCoreCount = 1;
    }

    else
    {
      MaxLogicalCoreCount = FigThreadGetMaxLogicalCoreCount();
    }

    a8[162] = MaxLogicalCoreCount;
  }

  v27 = 0;
  v28 = 0;
  if (theDict && a4)
  {
    VTCreateColorSpacesFromDictionaries(theDict, a4, &v177, &cf);
    if (v29)
    {
      v27 = 0;
      v28 = 0;
      v33 = v29;
      goto LABEL_27;
    }

    v30 = *MEMORY[0x1E695E480];
    if (a5)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v30, 0, a5);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v27 = MutableCopy;
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695F478], *MEMORY[0x1E695E4D0]);
    v32 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(v27, @"kCGPQEETF3DLut", *MEMORY[0x1E695E4C0]);
    CFDictionarySetValue(v27, @"kCGHLGSceneMapping3DLut", v32);
    v28 = CGColorConversionInfoCreateFromList(v27, v177, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, cf, 1, 0, 0);
    CGColorConversionInfoIterateFunctionsWithCallbacks();
  }

  if (*(v153 + 24) || *(v157 + 24))
  {
    v33 = 4294954396;
    goto LABEL_27;
  }

  v35 = v165;
  v36 = *(v165 + 24);
  if (a8 && !*(v165 + 24))
  {
    *(a8 + 72) = xmmword_18FECF2E0;
    *(a8 + 88) = xmmword_18FECF2E0;
    *(a8 + 26) = 1065353216;
    v36 = *(v35 + 24);
  }

  v33 = VTPixelBlitterSetupAssignBlitter(a1, a3, *(v173 + 24), *(v169 + 24), v36, *(v161 + 24), a6, &v178);
  if (v146)
  {
    if (a1 == 2019963956)
    {
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_118;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_12_4();
    if (_ZF)
    {
      goto LABEL_118;
    }

    switch(a1)
    {
      case 875836518:
        goto LABEL_123;
      case 875836534:
        goto LABEL_118;
      case 1111970369:
        OUTLINED_FUNCTION_2_15();
        *(a8 + 32) = v70;
        v68 = 50331906;
        goto LABEL_144;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
LABEL_123:
      v141 = 0;
      OUTLINED_FUNCTION_2_15();
      *(a8 + 32) = v61;
      v62 = 0x800000;
LABEL_132:
      *(a8 + 35) = v62;
      v59 = *(v60 + 568);
LABEL_151:
      v54 = 1;
LABEL_152:
      v142 = v28;
      v143 = v33;
      v139 = v54;
      switch(a3)
      {
        case 2037741171:
          goto LABEL_239;
        case 846624102:
          goto LABEL_253;
        case 846624121:
          goto LABEL_239;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_253;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_239;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_253;
      }

      OUTLINED_FUNCTION_13_4();
      if (_ZF)
      {
        goto LABEL_239;
      }

      switch(a3)
      {
        case 875836518:
LABEL_253:
          v140 = 0;
          OUTLINED_FUNCTION_0_14();
          OUTLINED_FUNCTION_4_13(COERCE_DOUBLE(0xFF00800000));
          goto LABEL_254;
        case 875836534:
          goto LABEL_239;
        case 1111970369:
LABEL_312:
          v138 = 0;
          OUTLINED_FUNCTION_0_14();
          goto LABEL_313;
        case 1278226488:
          goto LABEL_253;
        case 1278226736:
          goto LABEL_238;
        case 1278226738:
          goto LABEL_245;
        case 1278226742:
          goto LABEL_247;
        case 1380401729:
          v138 = 0;
          OUTLINED_FUNCTION_0_14();
          OUTLINED_FUNCTION_14_3();
LABEL_313:
          OUTLINED_FUNCTION_11_4();
          goto LABEL_255;
        case 1380410945:
          v138 = 0;
          v136 = 32;
          break;
        case 1380411457:
          v138 = 0;
          v136 = 16;
          break;
        default:
          switch(a3)
          {
            case 1630697081:
              goto LABEL_239;
            case 1647534392:
              goto LABEL_275;
            case 1647719521:
              v138 = 0;
              OUTLINED_FUNCTION_1_14();
              break;
            case 1815162994:
              v138 = 0;
              *(a8 + 72) = 0;
              OUTLINED_FUNCTION_5_10();
              v11 = 0;
              v140 = 1;
              goto LABEL_244;
            case 1815491698:
              v138 = 0;
              OUTLINED_FUNCTION_1_14();
              OUTLINED_FUNCTION_14_3();
              break;
            case 1932681587:
            case 1932812659:
              goto LABEL_240;
            case 1936077360:
            case 1936077362:
            case 1936077876:
LABEL_247:
              v140 = 0;
              OUTLINED_FUNCTION_1_14();
              OUTLINED_FUNCTION_4_13(COERCE_DOUBLE(0xFFFF80000000));
              goto LABEL_248;
            case 1937125936:
            case 1937125938:
            case 1937126452:
LABEL_240:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_1_14();
              *(a8 + 18) = 0x1000EB0080001000;
              *(a8 + 76) = -4096;
LABEL_248:
              v11 = 0;
LABEL_249:
              v93 = *(v91 + 3376);
              goto LABEL_256;
            case 1949458803:
            case 1949589875:
LABEL_241:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_16_3();
              *(a8 + 18) = 0x1000EB008000100;
              *(a8 + 76) = 3840;
LABEL_246:
              v11 = 0;
              v93 = *(v92 + 800);
              goto LABEL_256;
            case 1952854576:
            case 1952854578:
            case 1952855092:
LABEL_245:
              v140 = 0;
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_4_13(COERCE_DOUBLE(0xFFF08000000));
              goto LABEL_246;
            case 1953903152:
            case 1953903154:
            case 1953903668:
              goto LABEL_241;
            case 1982882104:
              goto LABEL_239;
            case 1983000886:
              goto LABEL_240;
            case 1983013176:
            case 1983144248:
LABEL_239:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_0_14();
              *(a8 + 18) = 0x1000EB00800010;
              *(a8 + 76) = 240;
LABEL_254:
              v11 = 0;
LABEL_255:
              v93 = 255.0;
              goto LABEL_256;
            case 1999843442:
LABEL_275:
              if (*(v161 + 24))
              {
                v112 = 0;
                v113 = 1023;
                v93 = 511.0;
                v11 = 1136656384;
              }

              else
              {
                v11 = 0;
                v113 = 511;
                v112 = 384;
                v93 = 1023.0;
              }

              v138 = 0;
              *(a8 + 72) = v112;
              *(a8 + 34) = v113;
              a8[132] = 10;
              v140 = 1;
              goto LABEL_256;
            case 2016567667:
            case 2016686640:
            case 2016686642:
            case 2016687156:
            case 2016698739:
              OUTLINED_FUNCTION_9_4();
              OUTLINED_FUNCTION_5_10();
              *(a8 + 18) = 0x4003AC02000040;
              *(a8 + 76) = 960;
              goto LABEL_243;
            case 2019963440:
            case 2019963442:
            case 2019963956:
LABEL_238:
              v140 = 0;
              OUTLINED_FUNCTION_5_10();
              *(a8 + 18) = 0x3FF02000000;
              *(a8 + 76) = v90;
              v138 = 1;
LABEL_243:
              v11 = 0;
LABEL_244:
              v93 = *(v89 + 3372);
LABEL_256:
              v94 = v149;
              LODWORD(v95) = *(v149 + 24);
              if (*(v149 + 24))
              {
                v96 = 0;
                v97 = *(v71 + 568);
                do
                {
                  v98 = &v182[128 * v96];
                  if (v96 == v95 - 1)
                  {
                    *(v98 + 2) = 956302336;
                    *(v98 + 4) = v93;
                    *(v98 + 5) = v11;
                  }

                  else if (v96)
                  {
                    if (v96 == 1)
                    {
                      v185 = v97;
                      v186 = 1065353216;
                    }
                  }

                  else
                  {
                    v183 = v59;
                    v184 = 1174403072;
                  }

                  v99 = (&v179)[v96];
                  v100 = *v98;
                  if (*v98)
                  {
                    for (i = 0; i != 0x2000; ++i)
                    {
                      _S0 = v100(&v182[128 * v96], i);
                      __asm { FCVT            H0, S0 }

                      *&v99[2 * i] = LOWORD(_S0);
                    }

                    v94 = v149;
                  }

                  else
                  {
                    bzero((&v179)[v96], 0x4000uLL);
                  }

                  ++v96;
                  v95 = *(v94 + 24);
                }

                while (v96 < v95);
              }

              v28 = v142;
              if ((v141 & 1) == 0)
              {
                v106 = a8[124];
                v107 = FigCFEqual();
                v108 = 0xBEB032983FB374BCLL;
                v109 = 1.772;
                v110 = -0.71414;
                if (!v107)
                {
                  IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(Value);
                  v108 = 0xBEB032983FB374BCLL;
                  if (IntegerCodePointForString != 5)
                  {
                    if (FigCFEqual())
                    {
                      v108 = 0xBE2880953FBCBFB1;
                      v109 = 1.8814;
                      v110 = -0.57135;
                    }

                    else
                    {
                      if (!FigCFEqual())
                      {
                        v33 = 4294954391;
                        goto LABEL_27;
                      }

                      v108 = 0xBE3FD1DD3FC9930CLL;
                      v109 = 1.8556;
                      v110 = -0.46812;
                    }
                  }
                }

                v143 = 0;
                *a8 = 1065353216;
                *(a8 + 2) = v108;
                *(a8 + 3) = 1065353216;
                *(a8 + 4) = HIDWORD(v108);
                *(a8 + 5) = v110;
                *(a8 + 6) = 1065353216;
                *(a8 + 7) = v109;
                *(a8 + 8) = 0;
                if ((v139 & 1) == 0)
                {
                  v143 = 0;
                  if (v106 >= 0x10)
                  {
                    v114 = 16;
                  }

                  else
                  {
                    v114 = v106;
                  }

                  if (v114 <= 8)
                  {
                    LOBYTE(v114) = 8;
                  }

                  *v115.i32 = OUTLINED_FUNCTION_6_10(v114);
                  *v117.i8 = OUTLINED_FUNCTION_7_5(v115, v116, 0xDB000000E0);
                  v119 = vdivq_f32(vtrn1q_s32(xmmword_18FECF2F0, vzip1q_s32(v118, v117)), vzip1q_s32(v117, vdupq_lane_s32(*v117.i8, 0)));
                  *a8 = v119.i32[2];
                  *(a8 + 6) = v119.i32[2];
                  *(a8 + 4) = v119;
                  *(a8 + 5) = v110 / *v117.i32;
                  *(a8 + 7) = v109 / *v117.i32;
                  *(a8 + 8) = v119.i32[0];
                }
              }

              LODWORD(v33) = v143;
              if ((v140 & 1) == 0)
              {
                v120 = a8[132];
                v121 = FigCFEqual();
                v122 = xmmword_18FECF300;
                v123 = -0.081312;
                v124 = -1093247418;
                v125 = -1096180881;
                if (!v121)
                {
                  v126 = CVYCbCrMatrixGetIntegerCodePointForString(v144);
                  v125 = -1096180881;
                  v124 = -1093247418;
                  v122 = xmmword_18FECF300;
                  if (v126 != 5)
                  {
                    if (FigCFEqual())
                    {
                      v122 = xmmword_18FECD120;
                      v123 = -0.040215;
                      v124 = -1091868431;
                      v125 = -1095204245;
                    }

                    else
                    {
                      if (!FigCFEqual())
                      {
                        v33 = 4294954391;
                        v28 = v142;
                        goto LABEL_27;
                      }

                      v122 = xmmword_18FECF310;
                      v123 = -0.045847;
                      v124 = -1092057410;
                      v125 = -1094363438;
                    }
                  }
                }

                *(a8 + 36) = v122;
                *(a8 + 13) = v125;
                *(a8 + 7) = 0x3F0000003F000000;
                *(a8 + 16) = v124;
                *(a8 + 17) = v123;
                v28 = v142;
                if (v138)
                {
                  LODWORD(v33) = 0;
                }

                else
                {
                  LODWORD(v33) = 0;
                  if (v120 >= 0x10)
                  {
                    v127 = 16;
                  }

                  else
                  {
                    v127 = v120;
                  }

                  if (v127 <= 8)
                  {
                    LOBYTE(v127) = 8;
                  }

                  *v128.i32 = OUTLINED_FUNCTION_6_10(v127);
                  *v130.i8 = OUTLINED_FUNCTION_7_5(v128, v129, 0xE0000000DBLL);
                  v131 = vzip1q_s32(v130, v130);
                  v131.i32[2] = v130.i32[0];
                  *(a8 + 36) = vmulq_f32(v131, v132);
                  v131.i32[2] = 1056964608;
                  v131.i64[0] = v133 | 0x3F00000000000000;
                  v131.i32[3] = v134;
                  *(a8 + 52) = vmulq_lane_f32(v131, *v130.i8, 1);
                  *(a8 + 17) = vmuls_lane_f32(v123, *v130.i8, 1);
                }
              }

              v135 = v178;
              if (v178)
              {
                v33 = v33;
              }

              else
              {
                v33 = 4294954396;
              }

              if (!v33)
              {
                *v146 = a8;
                *a9 = v135;
                *a11 = VTPixelBlitterColorHandlingOptimized_cleanup;
                a8 = 0;
              }

              goto LABEL_27;
            case 2037741158:
              goto LABEL_253;
            case 32:
              goto LABEL_312;
            default:
              OUTLINED_FUNCTION_9_4();
              a8[132] = 0;
              *(a8 + 34) = 0;
              *(a8 + 18) = 0;
              v93 = 1.0;
              v11 = 0;
              *(a8 + 76) = 0;
              goto LABEL_256;
          }

          OUTLINED_FUNCTION_11_4();
          goto LABEL_249;
      }

      a8[132] = v136;
      v140 = 1;
      *(a8 + 34) = 1;
      OUTLINED_FUNCTION_14_3();
      *(a8 + 158) = v137;
      v93 = 1.0;
      v11 = 0;
      goto LABEL_256;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
LABEL_131:
      v141 = 0;
      OUTLINED_FUNCTION_8_5();
      *(a8 + 32) = v65;
      v62 = 0x2000000;
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
LABEL_124:
      v141 = 0;
      OUTLINED_FUNCTION_15_3();
      v62 = 0x8000000;
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_10_5();
    if (_ZF)
    {
      goto LABEL_125;
    }

    if (a1 == 1380401729)
    {
      OUTLINED_FUNCTION_2_15();
    }

    else if (a1 == 1380410945)
    {
      a8[124] = 32;
      v66 = -1;
    }

    else
    {
      if (a1 != 1380411457)
      {
        switch(a1)
        {
          case 1647534392:
LABEL_133:
            a8[124] = 10;
            if (*(v173 + 24))
            {
              *(a8 + 70) = 0;
              *(a8 + 32) = 1023;
              v59 = 0x3F40603039802411;
LABEL_150:
              v141 = 1;
              goto LABEL_151;
            }

            *(a8 + 70) = 384;
            v69 = 511;
            goto LABEL_148;
          case 1647719521:
            OUTLINED_FUNCTION_3_12();
            goto LABEL_139;
          case 1815162994:
            *(a8 + 70) = 0;
            OUTLINED_FUNCTION_8_5();
LABEL_148:
            *(a8 + 32) = v69;
            goto LABEL_149;
        }

        if (a1 != 1815491698)
        {
          _ZF = a1 == 1932681587 || a1 == 1932812659;
          if (_ZF)
          {
            goto LABEL_119;
          }

          if (a1 != 1936077360 && a1 != 1936077362 && a1 != 1936077876)
          {
            if (a1 != 1937125936 && a1 != 1937125938 && a1 != 1937126452)
            {
              if (a1 == 1949458803 || a1 == 1949589875)
              {
                goto LABEL_120;
              }

              if (a1 != 1952854576 && a1 != 1952854578 && a1 != 1952855092)
              {
                if (a1 != 1953903152 && a1 != 1953903154 && a1 != 1953903668)
                {
                  if (a1 != 1982882104 && a1 != 1983013176 && a1 != 1983144248)
                  {
                    if (a1 != 1999843442)
                    {
                      if (a1 != 2016567667 && a1 != 2016686640 && a1 != 2016686642 && a1 != 2016687156 && a1 != 2016698739)
                      {
                        if (a1 != 2019963440 && a1 != 2019963442)
                        {
                          if (a1 == 32)
                          {
                            OUTLINED_FUNCTION_2_15();
LABEL_139:
                            *(a8 + 32) = v67;
                            v68 = 197121;
LABEL_144:
                            *(a8 + 154) = v68;
LABEL_149:
                            v59 = *(v37 + 568);
                            goto LABEL_150;
                          }

                          v141 = 0;
                          a8[124] = 0;
                          *(a8 + 32) = 0;
                          *(a8 + 35) = 0;
                          v54 = 1;
LABEL_122:
                          v59 = *(v37 + 568);
                          goto LABEL_152;
                        }

                        goto LABEL_131;
                      }

                      OUTLINED_FUNCTION_17_2();
                      OUTLINED_FUNCTION_8_5();
                      *(a8 + 32) = v55;
                      v56 = 33554496;
LABEL_121:
                      *(a8 + 35) = v56;
                      goto LABEL_122;
                    }

                    goto LABEL_133;
                  }

LABEL_118:
                  OUTLINED_FUNCTION_17_2();
                  OUTLINED_FUNCTION_2_15();
                  *(a8 + 32) = v57;
                  v56 = 8388624;
                  goto LABEL_121;
                }

LABEL_120:
                OUTLINED_FUNCTION_17_2();
                OUTLINED_FUNCTION_15_3();
                v56 = 134217984;
                goto LABEL_121;
              }

              goto LABEL_124;
            }

LABEL_119:
            OUTLINED_FUNCTION_17_2();
            OUTLINED_FUNCTION_3_12();
            *(a8 + 32) = v58;
            v56 = -2147479552;
            goto LABEL_121;
          }

LABEL_125:
          v141 = 0;
          OUTLINED_FUNCTION_3_12();
          *(a8 + 32) = v63;
          v62 = 0x80000000;
          goto LABEL_132;
        }
      }

      OUTLINED_FUNCTION_3_12();
    }

    *(a8 + 32) = v66;
    OUTLINED_FUNCTION_14_3();
    goto LABEL_144;
  }

LABEL_27:
  free(a8);
  if (v177)
  {
    CFRelease(v177);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  _Block_object_dispose(v147, 8);
  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(&v152, 8);
  _Block_object_dispose(&v156, 8);
  _Block_object_dispose(&v160, 8);
  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(&v172, 8);
  return v33;
}

uint64_t VTParavirtualizedJPEGSessionCreate(uint64_t a1, uint64_t *a2)
{
  MEMORY[0x193AE3010](&VTParavirtualizedJPEGSessionGetTypeID_onceToken, RegisterVTParavirtualizedJPEGSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294954392;
  }

  v4 = Instance;
  v5 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  *(v4 + 16) = CFUUIDGetUUIDBytes(v5);
  v6 = VTParavirtualizationGuestInstallHandlerForUUID((v4 + 16), &__block_literal_global_14, 0);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v14 = 0;
    cf = 0;
    v12 = 0;
    v13 = 0;
    v7 = VTParavirtualizationCreateMessageAndByteStream(1784897904, 1, v4 + 16, 0, &v14, &v13);
    if (v7 || (v10 = kVTParavirtualizationDefaultReplyTimeout, v11 = 0, v7 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v14, &v10, &cf), v7) || (LODWORD(v10) = 0, VTParavirtualizationMessageGetSInt32(), v7))
    {
      v8 = v7;
    }

    else
    {
      v8 = v10;
      if (!v10)
      {
        v8 = VTParavirtualizationMessageCopyCFDictionary(cf, 745169761, &v12);
        if (!v8)
        {
          *(v4 + 32) = v12;
          v12 = 0;
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (a2 && !v8)
    {
      *a2 = v4;
      if (!v5)
      {
        return v8;
      }

      goto LABEL_25;
    }
  }

  CFRelease(v4);
  if (v5)
  {
LABEL_25:
    CFRelease(v5);
  }

  return v8;
}

uint64_t VTParavirtualizedJPEGSessionCopyCapabilities(CFDictionaryRef *a1, CFDictionaryRef *a2)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = CFGetAllocator(a1);
  Copy = CFDictionaryCreateCopy(v4, a1[4]);
  result = 0;
  *a2 = Copy;
  return result;
}

uint64_t VTParavirtualizedJPEGSessionEncodeImage(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf, _DWORD *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  cfa = 0;
  v17 = 0;
  v5 = 4294954394;
  if (a1 && a2 && a3 && cf)
  {
    v11 = CFGetTypeID(cf);
    if (v11 == CFDictionaryGetTypeID())
    {
      appended = VTParavirtualizationCreateMessageAndByteStream(1785032291, 1, a1 + 16, 0, &v18, &v17);
      if (appended || (appended = VTParavirtualizationMessageAppendCFDictionary(v17, 745172847, cf), appended) || (v20 = a2, v21 = a3, appended = OUTLINED_FUNCTION_0_15(v18, &kVTParavirtualizationCodecOperationReplyTimeout, v15, v16), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
      {
        v5 = appended;
      }

      else
      {
        VTParavirtualizationMessageGetUInt32();
        v5 = v13;
        if (a5 && !v13)
        {
          *a5 = 0;
        }
      }
    }

    else
    {
      v5 = 4294954394;
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v5;
}

uint64_t VTParavirtualizedJPEGSessionDecodeImage(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0;
  cfa = 0;
  v16 = 0;
  v4 = 4294954394;
  if (a1 && a2 && a3 && cf)
  {
    v9 = CFGetTypeID(cf);
    if (v9 == CFDictionaryGetTypeID())
    {
      appended = VTParavirtualizationCreateMessageAndByteStream(1784964451, 1, a1 + 16, 0, &v17, &v16);
      if (appended || (appended = VTParavirtualizationMessageAppendCFDictionary(v16, 745172847, cf), appended))
      {
        v4 = appended;
      }

      else
      {
        v19 = a2;
        v20 = a3;
        v4 = OUTLINED_FUNCTION_0_15(v17, &kVTParavirtualizationDefaultReplyTimeout, v14, v15);
        v11 = cfa;
        if (!v4)
        {
          VTParavirtualizationMessageGetSInt32();
          if (v12)
          {
            v4 = v12;
          }

          else
          {
            v4 = 0;
          }

          v11 = cfa;
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    else
    {
      v4 = 4294954394;
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v4;
}

void TestIPBVideoDecoder_DecodeFrameSynchronously(uint64_t a1, const void *a2, CMSampleBufferRef sbuf, unsigned int *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  dataPointerOut = 0;
  blockBufferOut = 0;
  v48 = 0;
  cf = 0;
  v47 = 0;
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]);
      if (Value)
      {
        v14 = Value;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v14))
        {
          CFBooleanGetValue(v14);
        }
      }
    }
  }

  bzero(v56, 0x101uLL);
  bzero(v55, 0x101uLL);
  bzero(v54, 0x101uLL);
  bzero(v53, 0x101uLL);
  bzero(v52, 0x101uLL);
  v16 = CMGetAttachment(sbuf, @"IPBFrameDelay", 0);
  if (v16)
  {
    valuePtr = 0;
    CFNumberGetValue(v16, kCFNumberCFIndexType, &valuePtr);
    v17 = 1000 * valuePtr;
    if ((valuePtr - 1) >= 0x418937)
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = *(a1 + 620);
  }

  v18 = *(a1 + 548);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0);
  v21 = MEMORY[0x1E695E480];
  if (IsRangeContiguous)
  {
    v22 = CFRetain(DataBuffer);
    blockBufferOut = v22;
  }

  else
  {
    if (CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, DataLength, 0, &blockBufferOut))
    {
      OUTLINED_FUNCTION_1_15();
      goto LABEL_22;
    }

    v22 = blockBufferOut;
  }

  CMBlockBufferGetDataPointer(v22, 0, 0, 0, &dataPointerOut);
  VTDecoderSessionTrace(*(a1 + 8));
  OUTLINED_FUNCTION_0_16();
  if (IPB_GetFrameStrings(v23, DataLength, v24, v25, v26, v27) || (DataBuffer = v55, DataLength = v52, IPB_SimulatePrediction((a1 + 32), (a1 + 289), (a1 + 546), v56, v55, v52)))
  {
    OUTLINED_FUNCTION_1_15();
    goto LABEL_18;
  }

  v46 = a4;
  v56[v56[0] + 1] = 0;
  v55[v55[0] + 1] = 0;
  v54[v54[0] + 1] = 0;
  v53[v53[0] + 1] = 0;
  v52[v52[0] + 1] = 0;
  if (v19)
  {
    snprintf(&valuePtr, 0x20uLL, " (delayed %u ms)", v19 / 0x3E8);
  }

  IPB_AreStringsDifferent(v53, v52);
  v30 = *(a1 + 552);
  if (v30)
  {
    Count = CFArrayGetCount(v30);
    v32 = *v21;
    v33 = MEMORY[0x1E695E9C0];
    DataLength = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0]);
    DataBuffer = CFArrayCreateMutable(v32, 0, v33);
    if (Count >= 1)
    {
      v34 = 0;
      while (1)
      {
        FigCFArrayGetInt32AtIndex();
        valuePtr = 0;
        v58 = 0;
        valuePtr = FigTagMakeWithSInt64Value();
        v58 = v35;
        v36 = FigTagCollectionCreate();
        if (v36)
        {
          break;
        }

        OUTLINED_FUNCTION_0_16();
        v36 = testipb_CreatePixelBufferAndDrawFrame(a1, a2, v37, v38, v39, v40, v52, 1, 0, &cf);
        if (v36)
        {
          break;
        }

        v41 = cf;
        CFArrayAppendValue(DataBuffer, cf);
        if (v41)
        {
          CFRelease(v41);
          cf = 0;
        }

        CFArrayAppendValue(DataLength, v48);
        if (v48)
        {
          CFRelease(v48);
          v48 = 0;
        }

        if (Count == ++v34)
        {
          goto LABEL_51;
        }
      }

      v4 = v36;
      goto LABEL_56;
    }

LABEL_51:
    v4 = MEMORY[0x193AE2F70](v32, DataLength, DataBuffer, &v47);
    if (v4)
    {
LABEL_56:
      a4 = v46;
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    testipb_CreatePixelBufferAndDrawFrame(a1, a2, v42, v43, v44, v45, v52, 0, 0, &cf);
    OUTLINED_FUNCTION_1_15();
  }

  a4 = v46;
LABEL_18:
  VTDecoderSessionTrace(*(a1 + 8));
  if (v19)
  {
    MEMORY[0x193AE3030](v19);
  }

LABEL_22:
  v28 = *(a1 + 8);
  v29 = *a4;
  if (*(a1 + 552))
  {
    VTDecoderSessionEmitDecodedMultiImageFrame(v28, a2, v4, v29, v47);
  }

  else
  {
    VTDecoderSessionEmitDecodedFrame(v28, a2, v4, v29, cf);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  VTDecoderSessionCleanUpAfterDecode(*(a1 + 8));
  if (DataLength)
  {
    CFRelease(DataLength);
  }

  if (DataBuffer)
  {
    CFRelease(DataBuffer);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }
}

uint64_t TestIPBVideoDecoder_WorkerThread_cold_1(uint64_t a1, unsigned int *a2, uint64_t a3, _BYTE *a4)
{
  v7 = (a1 + 592);
  do
  {
    FigSimpleMutexLock();
    v8 = *(a1 + 592);
    v9 = *(a1 + 600);
    *v7 = 0;
    v7[1] = 0;
    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    TestIPBVideoDecoder_DecodeFrameSynchronously(a1, v8, v9, a2);
    if (v9)
    {
      CFRelease(v9);
    }

    *a2 = 1;
    result = FigSemaphoreWaitRelative();
  }

  while (!*a4);
  return result;
}

uint64_t __displayRequiresRealTimeCacheMode_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("hw.optional.ucnormal_mem", &v2, &v1, 0, 0);
  if (!result)
  {
    displayRequiresRealTimeCacheMode_isTrueUCEnabled = v2 != 0;
  }

  return result;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCreatePixelBufferCacheModeArray_cold_1(uint64_t a1, const void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM();
  CFRelease(a2);
}

uint64_t FigCreatePixelBufferCacheModeArray_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t appendIntToArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createArrayWithCacheModes_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_TransferM2_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dssxpc_ReplyingMessageHandler(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_2;
  }

  *token.val = 0;
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    goto LABEL_2;
  }

  OUTLINED_FUNCTION_13_5();
  if (v14 || v13 == 1684366196)
  {
    goto LABEL_38;
  }

  if (v13 != 1701016182)
  {
    if (v13 == 1718641264)
    {
      OpCode = VTDecompressionSessionFlushPixelBufferPool(0);
      goto LABEL_2;
    }

    if (v13 != 1718838374 && v13 != 1718838388 && v13 != 1735423091 && v13 != 1835953528 && v13 != 1936550243 && v13 != 2003198310)
    {
      switch(v13)
      {
        case 778268793:
          v22 = OUTLINED_FUNCTION_11_5(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v28, v29, 0);
          OpCode = dssxpc_CopyProperty(v22, v23);
          break;
        case 779314548:
          v24 = OUTLINED_FUNCTION_11_5(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v28, v29, 0);
          OpCode = dssxpc_SetProperty(v24, v25);
          break;
        case 1668508784:
          v16 = OUTLINED_FUNCTION_10_6(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v28, v29, 0);
          OpCode = dssxpc_CopySerializableProperties(v16, v17);
          break;
        case 1668509796:
          v20 = OUTLINED_FUNCTION_10_6(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v28, v29, 0);
          OpCode = dssxpc_CopySupportedPropertyDictionary(v20, v21);
          break;
        case 1936749683:
          v18 = OUTLINED_FUNCTION_11_5(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v28, v29, 0);
          OpCode = dssxpc_SetProperties(v18, v19);
          break;
        default:
          v4 = 4294949605;
          goto LABEL_20;
      }

LABEL_2:
      v4 = OpCode;
      goto LABEL_20;
    }

LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    OpCode = FigSignalErrorAtGM();
    goto LABEL_2;
  }

  FigSemaphoreSignal();
  v4 = 0;
LABEL_20:
  if (v30)
  {
    CFRelease(v30);
  }

  return v4;
}

uint64_t tddss_NoReplyMessageHandler(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294949605;
  }
}

uint64_t dssxpc_DecodeFrame_XPCMessage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v22 = 0;
  cf = 0;
  if (*(a3 + 122))
  {
    v17 = 4294954393;
  }

  else
  {
    OUTLINED_FUNCTION_9_5();
    Cryptor = FigXPCServerCopyMemoryRecipient();
    if (Cryptor || (Cryptor = FigXPCMessageCopyCMSampleBufferWithLastCryptor(), Cryptor) || (uint64 = xpc_dictionary_get_uint64(a4, "FrameRefCon"), v10 = xpc_dictionary_get_uint64(a4, "DecoderFlags"), Cryptor = FigXPCMessageCopyCFDictionary(), Cryptor))
    {
      v17 = Cryptor;
    }

    else
    {
      if (xpc_dictionary_get_BOOL(a4, "RequiresMultiImageOutputHandler") && !*(v6[7] + 112))
      {
        OUTLINED_FUNCTION_3_13();
        VTDecompressionSessionSetMultiImageCallback(v11, v12, v6);
      }

      FigXPCRetain();
      if (v5)
      {
        CFRetain(v5);
      }

      v13 = v25[3];
      if (v13)
      {
        CFRetain(v13);
      }

      v14 = v6[3];
      v15 = v6[11];
      v16 = v6[12];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __dssxpc_DecodeFrame_XPCMessage_block_invoke;
      v20[3] = &unk_1E72C8A90;
      v20[4] = &v24;
      v20[5] = v5;
      v21 = v10;
      v20[6] = cf;
      v20[7] = uint64;
      v20[8] = v14;
      v20[9] = 0;
      v20[10] = v4;
      dispatch_group_async(v15, v16, v20);
      v17 = 0;
    }
  }

  v18 = v25[3];
  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v24, 8);
  return v17;
}

void dssxpc_DecodeTile(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t block, uint64_t a14, uint64_t (*a15)(uint64_t a1), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, const void *a30, const void *a31, const void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  OUTLINED_FUNCTION_21_1();
  a44 = v45;
  a45 = v50;
  a31 = 0;
  a32 = 0;
  a30 = 0;
  if (*(v48 + 122))
  {
    v58 = 0;
  }

  else
  {
    v51 = v49;
    v52 = v48;
    v53 = v46;
    cfa = v47;
    if (FigXPCServerCopyMemoryRecipient() || VTCopyCMSampleBufferFromXPCMessage(v51, a30, (v52 + 9), &a32))
    {
      v58 = 0;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(v51, "FrameRefCon");
      v55 = xpc_dictionary_get_uint64(v51, "DecoderFlags");
      v56 = xpc_dictionary_get_uint64(v51, "TileCropOffsetXY");
      v69 = xpc_dictionary_get_uint64(v51, "TileCropDimensionWH");
      v68 = xpc_dictionary_get_uint64(v51, "OffsetInImageBufferXY");
      value = xpc_dictionary_get_value(v51, "CanvasioSurface");
      if (value)
      {
        v58 = IOSurfaceLookupFromXPCObject(value);
        if (v58)
        {
          v59 = v56;
          CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v58, 0, &a31);
          v60 = v52[16];
          v61 = a31;
          v52[16] = a31;
          if (v61)
          {
            CFRetain(v61);
          }

          if (v60)
          {
            CFRelease(v60);
          }

          v56 = v59;
        }

        v62 = a31;
      }

      else
      {
        v62 = v52[16];
        if (v62)
        {
          v62 = CFRetain(v62);
        }

        v58 = 0;
        a31 = v62;
      }

      if (v62)
      {
        FigXPCRetain();
        if (a32)
        {
          CFRetain(a32);
        }

        if (a31)
        {
          CFRetain(a31);
        }

        v63 = cfa;
        if (cfa)
        {
          CFRetain(cfa);
          v63 = cfa;
        }

        v64 = v52[3];
        v65 = v52[11];
        v66 = v52[12];
        block = MEMORY[0x1E69E9820];
        a14 = 0x40000000;
        a15 = __dssxpc_DecodeTile_block_invoke;
        a16 = &__block_descriptor_tmp_95;
        a17 = v63;
        a18 = a32;
        a23 = HIDWORD(v56);
        a24 = v56;
        a25 = HIDWORD(v69);
        a26 = v69;
        a27 = HIDWORD(v68);
        a28 = v68;
        a29 = v55;
        a19 = a31;
        a20 = uint64;
        a21 = v64;
        a22 = v53;
        dispatch_group_async(v65, v66, &block);
      }
    }
  }

  if (a32)
  {
    CFRelease(a32);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (a31)
  {
    CFRelease(a31);
  }

  if (a30)
  {
    CFRelease(a30);
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t dssxpc_CopySupportedPropertyDictionary(CFTypeRef cf, uint64_t a2)
{
  cfa = 0;
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  if (*(a2 + 32))
  {
    if (cf)
    {
      v3 = CFGetTypeID(cf);
      if (v3 == VTTileDecompressionSessionGetTypeID())
      {
        VTTileDecompressionSessionCopySupportedPropertyDictionary(cf, &cfa);
        goto LABEL_9;
      }
    }
  }

  else if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == VTDecompressionSessionGetTypeID())
    {
      VTDecompressionSessionCopySupportedPropertyDictionary(cf, &cfa);
LABEL_9:
      v5 = FigXPCMessageSetCFDictionary();
      if (cfa)
      {
        CFRelease(cfa);
      }

      return v5;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_1();

  return FigSignalErrorAtGM();
}

uint64_t dssxpc_CopySerializableProperties(CFTypeRef cf, uint64_t a2)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  if (*(a2 + 32))
  {
    if (cf)
    {
      v2 = CFGetTypeID(cf);
      if (v2 == VTTileDecompressionSessionGetTypeID())
      {
        v3 = OUTLINED_FUNCTION_14_4();
        v6 = VTTileDecompressionSessionCopySerializableProperties(v3, v4, v5);
        goto LABEL_9;
      }
    }
  }

  else if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == VTDecompressionSessionGetTypeID())
    {
      v8 = OUTLINED_FUNCTION_14_4();
      v6 = VTDecompressionSessionCopySerializableProperties(v8, v9, v10);
LABEL_9:
      v11 = v6;
      if (!v6)
      {
        return FigXPCMessageSetCFDictionary();
      }

      return v11;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_1();

  return FigSignalErrorAtGM();
}

uint64_t dssxpc_CopyProperty(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  v2 = FigXPCMessageCopyCFString();
  if (!v2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    return FigSignalErrorAtGM();
  }

  return v2;
}

uint64_t dssxpc_SetProperty(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  v2 = FigXPCMessageCopyCFObject();
  if (!v2)
  {
    v2 = FigXPCMessageCopyCFString();
    if (!v2)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      return FigSignalErrorAtGM();
    }
  }

  return v2;
}

uint64_t dssxpc_SetProperties(const void *a1, uint64_t a2)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  v4 = FigXPCMessageCopyCFDictionary();
  if (!v4)
  {
    if (*(a2 + 32))
    {
      if (a1)
      {
        v5 = CFGetTypeID(a1);
        if (v5 == VTTileDecompressionSessionGetTypeID())
        {
          return VTTileDecompressionSessionSetProperties(a1, 0);
        }
      }
    }

    else if (a1)
    {
      v6 = CFGetTypeID(a1);
      if (v6 == VTDecompressionSessionGetTypeID())
      {
        return VTDecompressionSessionSetProperties(a1, 0);
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    return FigSignalErrorAtGM();
  }

  return v4;
}

uint64_t dssxpc_FinishDelayedFrames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  OUTLINED_FUNCTION_9_5();
  FigXPCRetain();
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_15_4(v4, v5, v6, v8, v9, 0x40000000, __dssxpc_FinishDelayedFrames_block_invoke, &__block_descriptor_tmp_96, v10, v11, v12);
  return 0;
}

uint64_t dssxpc_FinishDelayedTiles(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  OUTLINED_FUNCTION_9_5();
  FigXPCRetain();
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_15_4(v4, v5, v6, v8, v9, 0x40000000, __dssxpc_FinishDelayedTiles_block_invoke, &__block_descriptor_tmp_97, v10, v11, v12);
  return 0;
}

uint64_t dssxpc_WaitForAsynchronousFrames_XPCMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  OUTLINED_FUNCTION_9_5();
  FigXPCRetain();
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_15_4(v4, v5, v6, v8, v9, 0x40000000, __dssxpc_WaitForAsynchronousFrames_XPCMessage_block_invoke, &__block_descriptor_tmp_98, v10, v11, v12);
  return 0;
}

uint64_t dssxpc_CanAcceptFormatDescription(OpaqueVTDecompressionSession *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  v6 = FigXPCMessageCopyFormatDescription();
  if (!v6)
  {
    v7 = VTDecompressionSessionCanAcceptFormatDescription(a1, 0) != 0;
    xpc_dictionary_set_BOOL(a4, "CanacceptFormat", v7);
  }

  return v6;
}

uint64_t dssxpc_CopyBlackPixelBuffer(uint64_t a1, VTDecompressionSessionRef session, uint64_t a3)
{
  v8 = 0;
  cf = 0;
  if (*(a3 + 122))
  {
    return 4294954393;
  }

  v4 = VTDecompressionSessionCopyBlackPixelBuffer(session, &v8);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = dssxpc_copyPixelBufferOriginForConnection(a1, &cf);
    v6 = cf;
    if (!v5)
    {
      v5 = FigPixelBufferOriginSetPixelBufferInXPCMessage();
      v6 = cf;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t dssxpc_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  VTDecompressionSessionGetMinOutputPresentationTimeStampOfFramesBeingDecoded(a1, &v15);
  OUTLINED_FUNCTION_16_4(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15);
  return FigXPCMessageSetCMTime();
}

uint64_t dssxpc_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, uint64_t a2)
{
  v13 = **&MEMORY[0x1E6960C70];
  v12 = v13;
  if (*(a2 + 122))
  {
    return 4294954393;
  }

  result = VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(a1, &v13, &v12);
  if (!result)
  {
    v10 = v13;
    result = FigXPCMessageSetCMTime();
    if (!result)
    {
      OUTLINED_FUNCTION_16_4(result, v3, v4, v5, v6, v7, v8, v9, v10.value, *&v10.timescale, v10.epoch, v11, *&v12.value);
      return FigXPCMessageSetCMTime();
    }
  }

  return result;
}

void DecompressionOutputCallback_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CFTypeRef a28, xpc_object_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_21_1();
  a41 = v42;
  a42 = v48;
  a29 = 0;
  a30 = 0;
  a28 = 0;
  if (!*(v43 + 121))
  {
    v49 = v43;
    if (!*(v43 + 122))
    {
      v50 = v47;
      v51 = v46;
      v52 = v45;
      v53 = v44;
      if (!dssxpc_copyPixelBufferOriginForConnection(*(v43 + 136), &a28))
      {
        if ((v51 & 2) != 0)
        {
          goto LABEL_19;
        }

        dssxpc_ensureEventLinkIfSupported(v49, &a30);
        if (!a30)
        {
          goto LABEL_19;
        }

        v54 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
        if (!v54)
        {
          goto LABEL_14;
        }

        if (v54 == -19428)
        {
          FigOSEventLinkRemoteInvalidate();
        }

        else
        {
LABEL_19:
          if (!FigXPCCreateBasicMessage())
          {
            FigPixelBufferOriginSetPixelBufferInXPCMessage();
            xpc_dictionary_set_int64(a29, "Result", v52);
            xpc_dictionary_set_uint64(a29, "DecoderFlags", v51);
            xpc_dictionary_set_uint64(a29, "FrameRefCon", v53);
            FigXPCMessageSetCMTime();
            FigXPCMessageSetCMTime();
            xpc_connection_send_message(*(v49 + 136), a29);
            if (!*(v49 + 122))
            {
              OUTLINED_FUNCTION_8_3();
              do
              {
                if (FigSemaphoreWaitRelative() != v53)
                {
                  break;
                }

                v50 *= 2;
              }

              while (!*(v49 + 122));
            }
          }
        }
      }
    }
  }

LABEL_14:
  FigXPCRelease();
  if (a28)
  {
    CFRelease(a28);
  }

  OUTLINED_FUNCTION_16_0();
}

void dssxpc_DisposeClientRecord(void *cf)
{
  if (cf)
  {
    v2 = cf[5];
    if (v2 && *(v2 + 48))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_7_6();
      FigNotificationCenterRemoveWeakListener();
    }

    dssxpc_invalidateSession(cf);

    CFRelease(cf);
  }
}

void dssxpc_appStateChangeListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      FigCFDictionaryGetInt32IfPresent();
      *(a2 + 48) = 8;
    }
  }
}

void dssxpc_invalidateSession(_BYTE *cf)
{
  if (!cf[122])
  {
    cf[122] = 1;
    if (*(cf + 7) || *(cf + 8))
    {
      CFRetain(cf);
      for (i = 168; i != 248; i += 8)
      {
        if (*&cf[i])
        {
          FigOSEventLinkRemoteInvalidate();
        }
      }

      if (*(cf + 13))
      {
        FigSemaphoreSignal();
      }

      OUTLINED_FUNCTION_6_11();
      v6 = 0x40000000;
      v7 = __dssxpc_invalidateSession_block_invoke;
      v8 = &__block_descriptor_tmp_85;
      v9 = cf;
      dispatch_group_async(v3, v4, block);
    }
  }
}

uint64_t TileDecompressionOutputCallback_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v14 = 0;
  if (!*(a1 + 121) && !*(a1 + 122))
  {
    dssxpc_ensureEventLinkIfSupported(a1, &v14);
    if (v14)
    {
      OUTLINED_FUNCTION_6_11();
      v12 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      if (!v12)
      {
        return FigXPCRelease();
      }

      if (v12 == -19428)
      {
        FigOSEventLinkRemoteInvalidate();
        return FigXPCRelease();
      }
    }

    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "FrameRefCon", a2);
      xpc_dictionary_set_int64(0, "Result", a7);
      xpc_dictionary_set_uint64(0, "DecoderFlags", a8);
      xpc_connection_send_message(*(a1 + 136), 0);
      if (!*(a1 + 122))
      {
        OUTLINED_FUNCTION_8_3();
        do
        {
          if (FigSemaphoreWaitRelative() != a2)
          {
            break;
          }

          a8 *= 2;
        }

        while (!*(a1 + 122));
      }
    }
  }

  return FigXPCRelease();
}

void DecompressionMultiImageOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CFTypeRef a28, xpc_object_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_21_1();
  a41 = v42;
  a42 = v43;
  LODWORD(v45) = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  a30 = 0;
  Count = CMTaggedBufferGroupGetCount(v46);
  a28 = 0;
  a29 = 0;
  if (Count >= 6)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else if (!*(v55 + 121) && !*(v55 + 122))
  {
    v57 = Count;
    if (!dssxpc_copyPixelBufferOriginForConnection(*(v55 + 136), &a28))
    {
      if ((v49 & 2) != 0)
      {
        goto LABEL_28;
      }

      dssxpc_ensureEventLinkIfSupported(v55, &a30);
      if (!a30)
      {
        goto LABEL_28;
      }

      v58 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      if (!v58)
      {
        goto LABEL_22;
      }

      if (v58 == -19428)
      {
        FigOSEventLinkRemoteInvalidate();
      }

      else
      {
LABEL_28:
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_int64(a29, "Result", v51);
          xpc_dictionary_set_uint64(a29, "FrameRefCon", v53);
          xpc_dictionary_set_uint64(a29, "DecoderFlags", v49);
          FigXPCMessageSetCMTime();
          FigXPCMessageSetCMTime();
          xpc_dictionary_set_uint64(a29, "MultiImageCount", v57);
          if (v57 < 1)
          {
LABEL_18:
            xpc_connection_send_message(*(v55 + 136), a29);
            if (!*(v55 + 122))
            {
              OUTLINED_FUNCTION_8_3();
              do
              {
                if (FigSemaphoreWaitRelative() != v45)
                {
                  break;
                }

                v47 = (2 * v47);
              }

              while (!*(v55 + 122));
            }
          }

          else
          {
            v45 = 0;
            v59 = *MEMORY[0x1E695E480];
            while (1)
            {
              TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v47, v45);
              v61 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v59);
              v62 = FigXPCMessageSetCFData();
              if (v61)
              {
                CFRelease(v61);
              }

              if (v62)
              {
                break;
              }

              FigTaggedBufferGroupGetCVPixelBufferAtIndex();
              if (FigPixelBufferOriginSetPixelBufferInXPCMessage())
              {
                break;
              }

              if (v57 == ++v45)
              {
                goto LABEL_18;
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  FigXPCRelease();
  if (a28)
  {
    CFRelease(a28);
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t __DecompressionMultiImageOutputCallback_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!DataPointer)
  {
    if ((dataPointerOut & 7) != 0)
    {
      return 4294949291;
    }

    else if (lengthAtOffsetOut > 0xA7)
    {
      bzero(dataPointerOut, 0xA8uLL);
      v5 = lengthAtOffsetOut;
      v4 = dataPointerOut;
      *dataPointerOut = *(*(a1 + 32) + 24);
      *(v4 + 2) = 1701672297;
      *(v4 + 4) = *(a1 + 72);
      *(v4 + 5) = *(a1 + 76);
      *(v4 + 3) = *(a1 + 40);
      v6 = *(a1 + 80);
      *(v4 + 6) = *(a1 + 96);
      *(v4 + 2) = v6;
      v7 = *(a1 + 104);
      *(v4 + 9) = *(a1 + 120);
      *(v4 + 56) = v7;
      *(v4 + 10) = *(a1 + 48);
      v8 = MEMORY[0x1E695E480];
      if (!*(*(a1 + 32) + 328))
      {
        v9 = OUTLINED_FUNCTION_14_4();
        Mutable = CFDictionaryCreateMutable(v9, v10, v11, v12);
        v31 = *(a1 + 32);
        v14 = OUTLINED_FUNCTION_14_4();
        v17 = CFStringCreateWithFormat(v14, v15, v16, v31);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], v17);
        *(*(a1 + 32) + 328) = CMMemoryPoolCreate(Mutable);
        if (v17)
        {
          CFRelease(v17);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      FigXPCServerCopyMemoryOrigin();
      if (*(a1 + 48) < 1)
      {
        return 0;
      }

      else
      {
        v18 = 0;
        v19 = v5 - 168;
        v20 = v4 + 168;
        v21 = *v8;
        v22 = (v4 + 128);
        while (1)
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(*(a1 + 56), v18);
          v24 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v21);
          DataPointer = FigInMemorySerializerAppendCFData();
          if (v24)
          {
            CFRelease(v24);
          }

          if (DataPointer)
          {
            break;
          }

          v25 = *(v22 - 5);
          v26 = &v20[v25];
          v27 = v19 - v25;
          FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          appended = FigPixelBufferOriginAppendPixelBufferToIPCMessageData();
          if (appended)
          {
            return appended;
          }

          v29 = *v22++;
          v20 = &v26[v29];
          v19 = v27 - v29;
          if (*(a1 + 48) <= ++v18)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      return 4294949290;
    }
  }

  return DataPointer;
}

uint64_t dss_EventLinkServerMessageHandler()
{
  FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection();
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v0 = OUTLINED_FUNCTION_14_4();
  DataPointer = CMBlockBufferGetDataPointer(v0, v1, v2, 0, v3);
  if (!DataPointer)
  {
    return 4294949290;
  }

  return DataPointer;
}

uint64_t dssxpc_InitializeClient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dssxpc_InitializeClient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dssxpc_copyPixelBufferOriginForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dssxpc_ensureEventLinkIfSupported_cold_3(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v8 = *(a1 + 56);
  v9 = MEMORY[0x1E695E480];
  if (v8)
  {
    if (VTDecompressionSessionCopyProperty(v8, @"DecoderEmitsFramesFromConsistentThread", *MEMORY[0x1E695E480], a3))
    {
      return 0;
    }
  }

  else
  {
    result = *(a1 + 64);
    if (!result)
    {
      return result;
    }

    if (VTTileDecompressionSessionCopyProperty(result, @"DecoderEmitsFramesFromConsistentThread", *MEMORY[0x1E695E480], a3))
    {
      return 0;
    }
  }

  if (*a3 != *MEMORY[0x1E695E4D0])
  {
    return 0;
  }

  v11 = *(a1 + 56);
  if (!v11)
  {
    v13 = *(a1 + 64);
    if (v13 && VTTileDecompressionSessionCopyProperty(v13, @"MachThreadPriorityForThreadEmittingFrames", *v9, a2))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (VTDecompressionSessionCopyProperty(v11, @"MachThreadPriorityForThreadEmittingFrames", *v9, a2))
  {
    return 0;
  }

LABEL_9:
  SInt32 = FigCFNumberGetSInt32();
  *a4 = SInt32;
  *(a1 + 156) = SInt32;
  return 1;
}

uint64_t vtdsr_createPixelBufferAttributesWithIOSurfaceSupport(CFDictionaryRef theDict, __CFDictionary **a2)
{
  if (!a2)
  {
    return 4294954394;
  }

  v4 = MEMORY[0x1E69660D8];
  if (theDict && CFDictionaryContainsKey(theDict, *MEMORY[0x1E69660D8]))
  {
    MutableCopyWithCFTypeCallbacks = CFRetain(theDict);
  }

  else
  {
    MutableCopyWithCFTypeCallbacks = FigCFDictionaryCreateMutableCopyWithCFTypeCallbacks();
    IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
    if (IOSurfacePropertiesDictionary)
    {
      v7 = IOSurfacePropertiesDictionary;
      CFDictionarySetValue(MutableCopyWithCFTypeCallbacks, *v4, IOSurfacePropertiesDictionary);
      CFRelease(v7);
    }
  }

  result = 0;
  *a2 = MutableCopyWithCFTypeCallbacks;
  return result;
}

uint64_t VTDecompressionSessionRemoteCallbackServer_DecodeFrameReturn(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v8 = weakReferenceTable_CopyPointerFromKey_0();
  if (v8)
  {
    v9 = v8;
    *(v8 + 144) = a3;
    *(v8 + 152) = a5;
    *(v8 + 148) = a4;
    FigSemaphoreSignal();
    CFRelease(v9);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteCallbackServer_FinishDelayedFramesReturn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = weakReferenceTable_CopyPointerFromKey_0();
  if (v4)
  {
    v5 = v4;
    *(v4 + 168) = a3;
    FigSemaphoreSignal();
    CFRelease(v5);
  }

  return 0;
}

void VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t MinOutputPresentationTimeStampOfFramesBeingDecoded@<X0>, uint64_t a2@<X8>)
{
  v2 = MinOutputPresentationTimeStampOfFramesBeingDecoded;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = *"";
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  if (*(MinOutputPresentationTimeStampOfFramesBeingDecoded + 28) || *(MinOutputPresentationTimeStampOfFramesBeingDecoded + 52))
  {
    v4 = 0;
  }

  else if (*(MinOutputPresentationTimeStampOfFramesBeingDecoded + 128))
  {
    MinOutputPresentationTimeStampOfFramesBeingDecoded = VTDecompressionSessionRemoteClient_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(*(MinOutputPresentationTimeStampOfFramesBeingDecoded + 24), &v12);
    v4 = MinOutputPresentationTimeStampOfFramesBeingDecoded;
    *(v15 + 6) = MinOutputPresentationTimeStampOfFramesBeingDecoded;
  }

  else
  {
    v5 = *(MinOutputPresentationTimeStampOfFramesBeingDecoded + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
    block[3] = &unk_1E72C8BF0;
    block[4] = &v14;
    block[5] = &v9;
    block[6] = v2;
    dispatch_sync(v5, block);
    v4 = *(v15 + 6);
  }

  v6 = OUTLINED_FUNCTION_2_16(MinOutputPresentationTimeStampOfFramesBeingDecoded, v4);
  *(v15 + 6) = v6;
  v7 = v10;
  *a2 = *(v10 + 3);
  *(a2 + 16) = v7[5];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v14, 8);
}

uint64_t VTDecompressionSessionRemoteCallbackServer_NotificationIsPending()
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v0 = weakReferenceTable_CopyPointerFromKey_0();
  if (v0)
  {
    v1 = v0;
    v12 = 0;
    if (!*(v0 + 52))
    {
      v3 = *MEMORY[0x1E695E480];
      v4 = MEMORY[0x1E69E9A60];
      do
      {
        v11 = 0;
        v10 = 0;
        v13 = 0;
        if (!VTDecompressionSessionRemoteClient_GetNextPendingNotification(*(v1 + 24), &v13, &v12, cStr, &v11, &v10))
        {
          v5 = v11;
          v6 = v10;
          cf = 0;
          if (!*(v1 + 52))
          {
            v7 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v7)
            {
              v8 = v7;
              v9 = CFStringCreateWithCString(v3, cStr, 0);
              if (v9)
              {
                if (v5 && v6)
                {
                  FigCreateCFPropertyListFromData();
                }

                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
              }

              CFRelease(v8);
              if (cf)
              {
                CFRelease(cf);
              }

              if (v9)
              {
                CFRelease(v9);
              }
            }
          }

          MEMORY[0x193AE4440](*v4, v11, v10);
        }
      }

      while (v13);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteCallbackServer_FrameIsPending()
{
  v0 = weakReferenceTable_CopyPointerFromKey_0();
  if (v0)
  {
    v1 = v0;
    if (!*(v0 + 52))
    {
      vtdsr_dequeueAllPendingFramesAndCallbackClientForEach(v0, 0, 0);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_AddPointerAndGetKey_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_Invalidate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTDecompressionSessionRemote_FinishDelayedTiles_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_16(a1);
  v4 = VTDecompressionSessionRemoteClient_FinishDelayedTiles(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = FigSemaphoreWaitRelative();
    v5 = *(v2 + 168);
  }

  result = OUTLINED_FUNCTION_2_16(v4, v5);
  *v1 = result;
  return result;
}

void VTDecompressionSessionRemote_CopyProperty_cold_1(uint64_t a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 192);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 192) = 0;
  }

  v7 = *a2;
  v8 = *a3;
  *a2 = *a3;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTDecompressionSessionRemote_DecodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_CopyPointerFromKey_cold_1_0()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTDecompressionSessionRemote_WaitForAsynchronousFrames_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_16(a1);
  v4 = VTDecompressionSessionRemoteClient_FinishDelayedFrames(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = FigSemaphoreWaitRelative();
    v5 = *(v2 + 168);
    if (!v5)
    {
      FigSemaphoreWaitRelative();
      v4 = FigSemaphoreSignal();
      v5 = 0;
    }
  }

  result = OUTLINED_FUNCTION_2_16(v4, v5);
  *v1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_FinishDelayedFrames_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_16(a1);
  v4 = VTDecompressionSessionRemoteClient_FinishDelayedFrames(v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = FigSemaphoreWaitRelative();
    v5 = *(v2 + 168);
  }

  result = OUTLINED_FUNCTION_2_16(v4, v5);
  *v1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_CanAcceptFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemote_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vt_Rotate_8_90CW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar8(v8, v9, v10, v11, v12))
      {
        v13 = OUTLINED_FUNCTION_28_0();
        if (vtRotatePixelRect90CW_1BPP_arm(v13, v14, v15, v16, v17, v18))
        {
          if (*v6 >= 1)
          {
            OUTLINED_FUNCTION_18_3();
            v28 = v27 + v25 * v26;
            v29 = -v26;
            do
            {
              if (v21 >= 1)
              {
                if (v19 >= 0x40)
                {
                  v30 = 64;
                }

                else
                {
                  v30 = v19;
                }

                v31 = v21;
                v32 = v24;
                v33 = v28;
                do
                {
                  if (v31 >= 0x40)
                  {
                    v34 = 64;
                  }

                  else
                  {
                    v34 = v31;
                  }

                  v35 = v30;
                  v36 = v32;
                  v37 = v33;
                  do
                  {
                    v38 = 0;
                    v39 = v36;
                    do
                    {
                      *v39 = *(v37 + v38);
                      v39 += v20;
                      ++v38;
                    }

                    while (v34 != v38);
                    v37 += v29;
                    ++v36;
                    --v35;
                  }

                  while (v35);
                  v33 += 64;
                  v32 += v22;
                  v40 = v31 <= 64;
                  v31 -= 64;
                }

                while (!v40);
              }

              v28 += v23;
              v24 += 64;
              v40 = v19 <= 64;
              v19 -= 64;
            }

            while (!v40);
          }
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

void vt_Rotate_8_180()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_21_2();
  if (v5)
  {
    OUTLINED_FUNCTION_19_2(v1, v2, v3, v4);
    OUTLINED_FUNCTION_26_1();
    if (v5)
    {
      if ((v6 & 0xF) != 0 || ((v7 | v6) & 0xF) != 0 || ((v9 | v10) & 0xF) != 0)
      {
        vtRotatePixelRect180_1BPP_inplace(v6, v7, v8, v9, v10, v11);
      }

      else
      {
        vtRotatePixelRect180_1BPP_inplace_arm(v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar8(v12, v13, v14, v15, v16))
      {
        v17 = OUTLINED_FUNCTION_29_0();
        if (vtRotatePixelRect180_1BPP_arm(v17, v18, v19, v20, v21, v22))
        {
          if (*v0)
          {
            OUTLINED_FUNCTION_23_1();
            v28 = v25 + v23 + v27 * (v26 - 1) - 1;
            v29 = -v23;
            do
            {
              if (v23)
              {
                v30 = 0;
                v31 = v24;
                do
                {
                  *v31++ = *(v28 + v30--);
                }

                while (v29 != v30);
              }

              OUTLINED_FUNCTION_32_0();
            }

            while (v32);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_40_0();
}

void vt_Rotate_8_90CCW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar8(v8, v9, v10, v11, v12))
      {
        v13 = OUTLINED_FUNCTION_28_0();
        if (vtRotatePixelRect90CCW_1BPP_arm(v13, v14, v15, v16, v17, v18))
        {
          if (*v6 >= 1)
          {
            OUTLINED_FUNCTION_17_4();
            v27 = v26 + v22 - 1;
            do
            {
              if (v22 >= 1)
              {
                if (v19 >= 0x40)
                {
                  v28 = 64;
                }

                else
                {
                  v28 = v19;
                }

                v29 = v22;
                v30 = v25;
                v31 = v27;
                do
                {
                  if (v29 >= 0x40)
                  {
                    v32 = 64;
                  }

                  else
                  {
                    v32 = v29;
                  }

                  v33 = -v32;
                  v34 = v28;
                  v35 = v30;
                  v36 = v31;
                  do
                  {
                    v37 = 0;
                    v38 = v35;
                    do
                    {
                      *v38 = *(v36 + v37);
                      v38 += v21;
                      --v37;
                    }

                    while (v33 != v37);
                    v36 += v20;
                    ++v35;
                    --v34;
                  }

                  while (v34);
                  v31 -= 64;
                  v30 += v23;
                  v39 = v29 <= 64;
                  v29 -= 64;
                }

                while (!v39);
              }

              v27 += v24;
              v25 += 64;
              v39 = v19 <= 64;
              v19 -= 64;
            }

            while (!v39);
          }
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

void vt_Rotate_16_90CW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar16U(v8, v9, v10, v11, v12))
      {
        if (*v6 >= 1)
        {
          OUTLINED_FUNCTION_18_3();
          v22 = v21 + v19 * v20;
          v23 = -v20;
          do
          {
            if (v15 >= 1)
            {
              if (v13 >= 0x40)
              {
                v24 = 64;
              }

              else
              {
                v24 = v13;
              }

              v25 = v15;
              v26 = v18;
              v27 = v22;
              do
              {
                if (v25 >= 0x40)
                {
                  v28 = 64;
                }

                else
                {
                  v28 = v25;
                }

                v29 = v24;
                v30 = v26;
                v31 = v27;
                do
                {
                  v32 = 0;
                  v33 = v30;
                  do
                  {
                    *v33 = *(v31 + 2 * v32);
                    v33 = (v33 + v14);
                    ++v32;
                  }

                  while (v28 != v32);
                  v31 += v23;
                  ++v30;
                  --v29;
                }

                while (v29);
                v27 += 128;
                v26 = (v26 + v16);
                v34 = v25 <= 64;
                v25 -= 64;
              }

              while (!v34);
            }

            v22 += v17;
            v18 += 64;
            v34 = v13 <= 64;
            v13 -= 64;
          }

          while (!v34);
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

void vt_Rotate_16_180()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_21_2();
  if (v5)
  {
    OUTLINED_FUNCTION_19_2(v1, v2, v3, v4);
    OUTLINED_FUNCTION_26_1();
    if (v5)
    {
      if ((v6 & 0xF) != 0 || ((v7 | v6) & 0xF) != 0 || ((v9 | v10) & 0xF) != 0)
      {
        vtRotatePixelRect180_2BPP_inplace(v6, v7, v8, v9, v10, v11);
      }

      else
      {
        vtRotatePixelRect180_2BPP_inplace_arm(v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar16U(v12, v13, v14, v15, v16))
      {
        v17 = OUTLINED_FUNCTION_29_0();
        if (vtRotatePixelRect180_2BPP_arm(v17, v18, v19, v20, v21, v22))
        {
          if (*v0)
          {
            OUTLINED_FUNCTION_23_1();
            v28 = v25 + 2 * v23 + v27 * (v26 - 1) - 2;
            do
            {
              if (v23)
              {
                v29 = 0;
                for (i = 0; i != v23; ++i)
                {
                  *(v24 + 2 * i) = *(v28 + v29);
                  v29 -= 2;
                }
              }

              OUTLINED_FUNCTION_32_0();
            }

            while (v31);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_40_0();
}

void vt_Rotate_16_90CCW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 == *a6)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_12_5();
    if (v7)
    {
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_27_1();
      if (vImageRotate90_Planar16U(v8, v9, v10, v11, v12))
      {
        if (*v6 >= 1)
        {
          OUTLINED_FUNCTION_17_4();
          v21 = v20 + 2 * v16 - 2;
          do
          {
            if (v16 >= 1)
            {
              if (v13 >= 0x40)
              {
                v22 = 64;
              }

              else
              {
                v22 = v13;
              }

              v23 = v16;
              v24 = v19;
              v25 = v21;
              do
              {
                if (v23 >= 0x40)
                {
                  v26 = 64;
                }

                else
                {
                  v26 = v23;
                }

                v27 = -v26;
                v28 = v22;
                v29 = v24;
                v30 = v25;
                do
                {
                  v31 = 0;
                  v32 = v29;
                  do
                  {
                    *v32 = *(v30 + 2 * v31);
                    v32 = (v32 + v15);
                    --v31;
                  }

                  while (v27 != v31);
                  v30 += v14;
                  ++v29;
                  --v28;
                }

                while (v28);
                v25 -= 128;
                v24 = (v24 + v17);
                v33 = v23 <= 64;
                v23 -= 64;
              }

              while (!v33);
            }

            v21 += v18;
            v19 += 64;
            v33 = v13 <= 64;
            v13 -= 64;
          }

          while (!v33);
        }
      }
    }

    OUTLINED_FUNCTION_40_0();
  }
}

vImage_Error vt_Rotate_32_90CW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 != *a6)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_12_5();
  if (!v7)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_25_1();
  result = vImageRotate90_ARGB8888(v8, v9, 3u, v10, 0);
  if (result)
  {
    if (*v6 >= 1)
    {
      OUTLINED_FUNCTION_18_3();
      v20 = v19 + v17 * v18;
      v21 = -v18;
      do
      {
        if (v13 >= 1)
        {
          if (v11 >= 0x40)
          {
            v22 = 64;
          }

          else
          {
            v22 = v11;
          }

          v23 = v13;
          v24 = v16;
          v25 = v20;
          do
          {
            if (v23 >= 0x40)
            {
              v26 = 64;
            }

            else
            {
              v26 = v23;
            }

            v27 = v22;
            v28 = v24;
            v29 = v25;
            do
            {
              v30 = 0;
              v31 = v28;
              do
              {
                *v31 = *(v29 + 4 * v30);
                v31 = (v31 + v12);
                ++v30;
              }

              while (v26 != v30);
              v29 += v21;
              ++v28;
              --v27;
            }

            while (v27);
            v25 += 256;
            v24 = (v24 + v14);
            v32 = v23 <= 64;
            v23 -= 64;
          }

          while (!v32);
        }

        v20 += v15;
        v16 += 64;
        v32 = v11 <= 64;
        v11 -= 64;
      }

      while (!v32);
    }

    return 0;
  }

  return result;
}

vImage_Error vt_Rotate_32_180()
{
  OUTLINED_FUNCTION_21_2();
  if (!v6)
  {
    return 4294954382;
  }

  v7 = OUTLINED_FUNCTION_19_2(v2, v3, v4, v5);
  *backColor = 0;
  v11 = *v10;
  src.data = v7;
  src.height = v11;
  v12 = *v0;
  src.width = v9;
  src.rowBytes = v12;
  v14 = *v13;
  dest.data = v8;
  dest.height = v14;
  v16 = *v15;
  dest.width = v9;
  dest.rowBytes = v16;
  if (v7 == v8)
  {
    vtRotatePixelRect180_4BPP_inplace(v7, v12, v8, v16, v9, v14);
  }

  else
  {
    result = vImageRotate90_ARGB8888(&src, &dest, 2u, backColor, 0);
    if (!result)
    {
      return result;
    }

    if (*v1)
    {
      OUTLINED_FUNCTION_23_1();
      v22 = v19 + 4 * v17 + v21 * (v20 - 1) - 4;
      do
      {
        if (v17)
        {
          v23 = 0;
          for (i = 0; i != v17; ++i)
          {
            *(v18 + 4 * i) = *(v22 + v23);
            v23 -= 4;
          }
        }

        OUTLINED_FUNCTION_32_0();
      }

      while (v25);
    }
  }

  return 0;
}

vImage_Error vt_Rotate_32_90CCW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1 != *a6)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_12_5();
  if (!v7)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_25_1();
  result = vImageRotate90_ARGB8888(v8, v9, 1u, v10, 0);
  if (result)
  {
    if (*v6 >= 1)
    {
      OUTLINED_FUNCTION_17_4();
      v19 = v18 + 4 * v14 - 4;
      do
      {
        if (v14 >= 1)
        {
          if (v11 >= 0x40)
          {
            v20 = 64;
          }

          else
          {
            v20 = v11;
          }

          v21 = v14;
          v22 = v17;
          v23 = v19;
          do
          {
            if (v21 >= 0x40)
            {
              v24 = 64;
            }

            else
            {
              v24 = v21;
            }

            v25 = -v24;
            v26 = v20;
            v27 = v22;
            v28 = v23;
            do
            {
              v29 = 0;
              v30 = v27;
              do
              {
                *v30 = *(v28 + 4 * v29);
                v30 = (v30 + v13);
                --v29;
              }

              while (v25 != v29);
              v28 += v12;
              ++v27;
              --v26;
            }

            while (v26);
            v23 -= 256;
            v22 = (v22 + v15);
            v31 = v21 <= 64;
            v21 -= 64;
          }

          while (!v31);
        }

        v19 += v16;
        v17 += 64;
        v31 = v11 <= 64;
        v11 -= 64;
      }

      while (!v31);
    }

    return 0;
  }

  return result;
}

vImage_Error vt_Rotate_64_90CW()
{
  OUTLINED_FUNCTION_37_0(*MEMORY[0x1E69E9840]);
  if (!v2 || *v0 != *v1)
  {
    return 4294954382;
  }

  *backColor = 255;
  OUTLINED_FUNCTION_1_17();
  return vImageRotate90_ARGB16U(v3, v4, 3u, backColor, 0);
}

vImage_Error vt_Rotate_64_180(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, void **a4, void *a5, vImagePixelCount *a6, size_t *a7, void **a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*a1 != *a5)
  {
    return 4294954382;
  }

  *backColor = 255;
  v9 = *a2;
  src.data = *a4;
  src.height = v9;
  v10 = *a3;
  src.width = v8;
  src.rowBytes = v10;
  v11 = *a6;
  v14.data = *a8;
  v14.height = v11;
  v12 = *a7;
  v14.width = v8;
  v14.rowBytes = v12;
  return vImageRotate90_ARGB16U(&src, &v14, 2u, backColor, 0);
}

vImage_Error vt_Rotate_64_90CCW()
{
  OUTLINED_FUNCTION_37_0(*MEMORY[0x1E69E9840]);
  if (!v2 || *v0 != *v1)
  {
    return 4294954382;
  }

  *backColor = 255;
  OUTLINED_FUNCTION_1_17();
  return vImageRotate90_ARGB16U(v3, v4, 1u, backColor, 0);
}

vImage_Error vt_Rotate_b3a8(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, uint64_t a4, size_t *a5, void **a6, int a7)
{
  *backColor = 255;
  v7 = *a2;
  v8 = *(a4 + 8);
  src.data = *a4;
  src.height = v7;
  v10 = *a3;
  v11 = a3[1];
  src.width = *a1;
  width = src.width;
  src.rowBytes = v10;
  v21 = v8;
  v22 = v7;
  v23 = src.width;
  v24 = v11;
  dest.data = *a6;
  dest.height = v7;
  v12 = *a5;
  dest.width = src.width;
  dest.rowBytes = v12;
  switch(a7)
  {
    case 270:
      src.height = src.width;
      src.width = v7;
      v13 = 1;
      goto LABEL_7;
    case 180:
      v13 = 2;
      goto LABEL_9;
    case 90:
      src.height = src.width;
      src.width = v7;
      v13 = 3;
LABEL_7:
      v22 = width;
      v23 = v7;
      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:
  result = vImageRotate90_ARGB8888(&src, &dest, v13, backColor, 0);
  if (!result)
  {
    OUTLINED_FUNCTION_27_1();
    return vImageRotate90_Planar8(v15, v16, v17, v18, v19);
  }

  return result;
}

void vt_Rotate_b3a8_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  if (vt_Rotate_32_90CW(v0, v1, v2, v3, v4, v5))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v6, v7, v8, v9, v10, v11);
  }
}

void vt_Rotate_b3a8_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  if (vt_Rotate_32_180())
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }
}

void vt_Rotate_b3a8_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  if (vt_Rotate_32_90CCW(v0, v1, v2, v3, v4, v5))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v6, v7, v8, v9, v10, v11);
  }
}

void vt_Rotate_y420_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  vt_Rotate_8_90CW(v0, v1, v2, v3, v4, v5);
  if (v6 || (v7 = OUTLINED_FUNCTION_6_12(), vt_Rotate_8_90CW(v7, v8, v9, v10, v11, v12), v13))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v14, v15, v16, v17, v18, v19);
  }
}

void vt_Rotate_y420_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  vt_Rotate_8_180();
  if (v0 || (OUTLINED_FUNCTION_6_12(), vt_Rotate_8_180(), v1))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }
}

void vt_Rotate_y420_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_14();
  vt_Rotate_8_90CCW(v0, v1, v2, v3, v4, v5);
  if (v6 || (v7 = OUTLINED_FUNCTION_6_12(), vt_Rotate_8_90CCW(v7, v8, v9, v10, v11, v12), v13))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v14, v15, v16, v17, v18, v19);
  }
}

void vt_Rotate_420v_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_8_90CW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), vt_Rotate_16_90CW(v9, v10, v11, v12, v13, v14), !v15) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_420v_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_8_180();
  if (!v2 && (OUTLINED_FUNCTION_5_12(), vt_Rotate_16_180(), !v3) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_420v_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_8_90CCW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), vt_Rotate_16_90CCW(v9, v10, v11, v12, v13, v14), !v15) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_x420_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_16_90CW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), !vt_Rotate_32_90CW(v9, v10, v11, v12, v13, v14)) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_16_90CW(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_x420_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_16_180();
  if (!v2 && (OUTLINED_FUNCTION_5_12(), !vt_Rotate_32_180()) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_16_180();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_x420_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_4_14();
  vt_Rotate_16_90CCW(v2, v3, v4, v5, v6, v7);
  if (!v8 && (v9 = OUTLINED_FUNCTION_5_12(), !vt_Rotate_32_90CCW(v9, v10, v11, v12, v13, v14)) && *(v1 + 16) && *(v0 + 16))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_16_90CCW(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_2vuy_90CW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39_0();
  if (v0 && (OUTLINED_FUNCTION_34_0(), v0) && (v6 = v5, v7 = v4, v8 = OUTLINED_FUNCTION_7_7(v1, v2, v3, v4), vtRotatePixelRect90CW_2vuy(v8, v9, v10, v11, v12, v13), *(v7 + 8)) && *(v6 + 8))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CW(v14, v15, v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_2vuy_180()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_21_2();
  if (v5 && (v6 = v4, v7 = v3, v8 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3), vtRotatePixelRect180_2vuy(v8, v9, v10, v11, v12, v13), *(v7 + 8)) && *(v6 + 8))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_180();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

void vt_Rotate_2vuy_90CCW()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39_0();
  if (v0 && (OUTLINED_FUNCTION_34_0(), v0) && (v6 = v5, v7 = v4, v8 = OUTLINED_FUNCTION_7_7(v1, v2, v3, v4), vtRotatePixelRect90CCW_2vuy(v8, v9, v10, v11, v12, v13), *(v7 + 8)) && *(v6 + 8))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_33_0();

    vt_Rotate_8_90CCW(v14, v15, v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
  }
}

uint64_t vt_Rotate_yuvs_90CW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CW_yuvs(v6, v7, v8, v9, v10, v11);
  return 0;
}

uint64_t vt_Rotate_yuvs_180()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtRotatePixelRect180_yuvs(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Rotate_yuvs_90CCW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CCW_yuvs(v6, v7, v8, v9, v10, v11);
  return 0;
}

uint64_t vt_Rotate_v216_90CW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CW_v216(v6, v7, v8, v9, v10, v11);
  return 0;
}

uint64_t vt_Rotate_v216_180()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtRotatePixelRect180_v216(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Rotate_v216_90CCW(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*a1 != *a6 || *a2 != *a5)
  {
    return 4294954382;
  }

  v6 = OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
  vtRotatePixelRect90CCW_v216(v6, v7, v8, v9, v10, v11);
  return 0;
}

void vtFlipPixelRectVert()
{
  OUTLINED_FUNCTION_35_0();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = &v10[(v1 - 1) * v4];
  v12 = v2 * v0;
  if (v8 == v10)
  {
    if (!v0 || (v0 & 0x8000000000000000) == 0 && is_mul_ok(v0, v2) && v12)
    {
      v13 = malloc_type_malloc(v2 * v0, 0x100004077774924uLL);
      if (v13)
      {
        v14 = v13;
        if ((v3 + 1) >= 3)
        {
          v15 = -v5;
          v16 = v3 / 2;
          do
          {
            --v16;
            memcpy(v14, v11, v12);
            memcpy(v11, v9, v12);
            memcpy(v9, v14, v12);
            v9 += v7;
            v11 += v15;
          }

          while (v16);
        }

        free(v14);
      }
    }
  }

  else if (v1)
  {
    do
    {
      --v3;
      memcpy(v11, v9, v12);
      v9 += v7;
      v11 -= v5;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t vt_Flip_8_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_1BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_8_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

uint64_t vt_Flip_16_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_2BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_16_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

uint64_t vt_Flip_32_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_4BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_32_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

uint64_t vt_Flip_64_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_8BPP(v5, v6, v7, v8, v9, v10);
  return 0;
}

uint64_t vt_Flip_64_Ver()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectVert();
  return 0;
}

void vt_Flip_b3a8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a7)
  {
    v8 = OUTLINED_FUNCTION_31_0();
    vtFlipPixelRectHoriz_4BPP(v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_8_7();
    vtFlipPixelRectHoriz_2BPP(v14, v15, v16, v17, v18, v19);
  }

  else if (a8)
  {
    OUTLINED_FUNCTION_31_0();
    vtFlipPixelRectVert();
    if (!v20)
    {
      OUTLINED_FUNCTION_8_7();

      vtFlipPixelRectVert();
    }
  }
}

uint64_t vt_Flip_b3a8_Hor()
{
  OUTLINED_FUNCTION_22_1();
  if (!v0)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_15_5();
  v5 = OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
  vtFlipPixelRectHoriz_4BPP(v5, v6, v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_8_7();
  vtFlipPixelRectHoriz_2BPP(v11, v12, v13, v14, v15, v16);
  return 0;
}

void vt_Flip_b3a8_Ver()
{
  OUTLINED_FUNCTION_22_1();
  if (v0)
  {
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
    vtFlipPixelRectVert();
    if (!v5)
    {
      OUTLINED_FUNCTION_8_7();

      vtFlipPixelRectVert();
    }
  }
}

uint64_t vt_Flip_y420_Hor()
{
  OUTLINED_FUNCTION_22_1();
  if (!v0)
  {
    return 4294954382;
  }

  OUTLINED_FUNCTION_15_5();
  v5 = OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
  vtFlipPixelRectHoriz_1BPP(v5, v6, v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_8_7();
  vtFlipPixelRectHoriz_1BPP(v11, v12, v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_30_0();
  vtFlipPixelRectHoriz_1BPP(v17, v18, v19, v20, v21, v22);
  return 0;
}

void vt_Flip_y420_Ver()
{
  OUTLINED_FUNCTION_22_1();
  if (v0)
  {
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v1, v2, v3, v4);
    vtFlipPixelRectVert();
    if (!v5)
    {
      OUTLINED_FUNCTION_8_7();
      vtFlipPixelRectVert();
      if (!v6)
      {
        OUTLINED_FUNCTION_30_0();

        vtFlipPixelRectVert();
      }
    }
  }
}

uint64_t vt_Flip_420v_Hor()
{
  OUTLINED_FUNCTION_16_5();
  if (!v2)
  {
    return 4294954382;
  }

  v3 = v1;
  OUTLINED_FUNCTION_15_5();
  v8 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
  vtFlipPixelRectHoriz_1BPP(v8, v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_11_6();
  vtFlipPixelRectHoriz_2BPP(v14, v15, v16, v17, v18, v19);
  result = *(v0 + 16);
  if (result)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_20_1();
      vtFlipPixelRectHoriz_1BPP(v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return result;
}

void vt_Flip_420v_Ver()
{
  OUTLINED_FUNCTION_16_5();
  if (v2)
  {
    v3 = v1;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
    vtFlipPixelRectVert();
    if (!v8)
    {
      OUTLINED_FUNCTION_11_6();
      vtFlipPixelRectVert();
      if (!v9 && *(v0 + 16) && *(v3 + 16))
      {
        OUTLINED_FUNCTION_20_1();

        vtFlipPixelRectVert();
      }
    }
  }
}

uint64_t vt_Flip_x420_Hor()
{
  OUTLINED_FUNCTION_16_5();
  if (!v2)
  {
    return 4294954382;
  }

  v3 = v1;
  OUTLINED_FUNCTION_15_5();
  v8 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
  vtFlipPixelRectHoriz_2BPP(v8, v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_11_6();
  vtFlipPixelRectHoriz_4BPP(v14, v15, v16, v17, v18, v19);
  result = *(v0 + 16);
  if (result)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_20_1();
      vtFlipPixelRectHoriz_2BPP(v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return result;
}

void vt_Flip_x420_Ver()
{
  OUTLINED_FUNCTION_16_5();
  if (v2)
  {
    v3 = v1;
    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
    vtFlipPixelRectVert();
    if (!v8)
    {
      OUTLINED_FUNCTION_11_6();
      vtFlipPixelRectVert();
      if (!v9 && *(v0 + 16) && *(v3 + 16))
      {
        OUTLINED_FUNCTION_20_1();

        vtFlipPixelRectVert();
      }
    }
  }
}

uint64_t vt_Flip_2vuy_Hor()
{
  OUTLINED_FUNCTION_16_5();
  if (!v2)
  {
    return 4294954382;
  }

  v3 = v1;
  OUTLINED_FUNCTION_15_5();
  v8 = OUTLINED_FUNCTION_0_18(v4, v5, v6, v7);
  vtFlipPixelRectHoriz_2vuy(v8, v9, v10, v11, v12, v13);
  result = *(v0 + 8);
  if (result)
  {
    if (*(v3 + 8))
    {
      OUTLINED_FUNCTION_38_0();
      vtFlipPixelRectHoriz_1BPP(v14, v15, v16, v17, v18, v19);
    }

    return 0;
  }

  return result;
}

void vt_Flip_2vuy_Ver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == *a5)
  {
    OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
    vtFlipPixelRectVert();
    if (!v10 && *(a4 + 8) && *(a8 + 8))
    {
      OUTLINED_FUNCTION_38_0();

      vtFlipPixelRectVert();
    }
  }
}

uint64_t vt_Flip_yuvs_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_yuvs(v5, v6, v7, v8, v9, v10);
  return 0;
}

void vt_Flip_yuvs_Ver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1 == *a5)
  {
    OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
    vtFlipPixelRectVert();
  }
}

uint64_t vt_Flip_v216_Hor()
{
  OUTLINED_FUNCTION_36_0();
  if (!v4)
  {
    return 4294954382;
  }

  v5 = OUTLINED_FUNCTION_0_18(v0, v1, v2, v3);
  vtFlipPixelRectHoriz_v216(v5, v6, v7, v8, v9, v10);
  return 0;
}

void vt_Flip_v216_Ver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1 == *a5)
  {
    OUTLINED_FUNCTION_7_7(a1, a2, a3, a4);
    vtFlipPixelRectVert();
  }
}

uint64_t VTParavirtualizationHostDecoderSessionCreate(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, void *a4, CFTypeRef *a5)
{
  v7 = v6;
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_3_2();
    v5 = FigSignalErrorAtGM();
    v7 = 0;
LABEL_51:
    v20 = 0;
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_2_18();
    goto LABEL_51;
  }

  if (_MergedGlobals_14 != -1)
  {
    OUTLINED_FUNCTION_1_18();
    dispatch_once_f(v30, v31, v32);
  }

  Instance = _CFRuntimeCreateInstance();
  v16 = Instance;
  if (!Instance)
  {
    goto LABEL_54;
  }

  *(Instance + 20) = 0;
  *(Instance + 56) = Instance;
  *(Instance + 80) = Instance;
  *(Instance + 88) = FigDispatchQueueCreateWithPriority();
  if (VTParavirtualizationReplyClerkCreate("host decoder session", v16 + 12))
  {
    goto LABEL_55;
  }

  v16[13] = _Block_copy(a3);
  v16[19] = FigSimpleMutexCreate();
  v16[23] = FigSimpleMutexCreate();
  v16[22] = dispatch_group_create();
  v17 = dispatch_group_create();
  v16[29] = 0;
  v16[30] = 0;
  v16[28] = v17;
  VTParavirtualizationMessageGetSInt32();
  if (v18)
  {
    goto LABEL_55;
  }

  if (!v38)
  {
LABEL_54:
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
LABEL_55:
    OUTLINED_FUNCTION_2_18();
    v20 = 0;
    goto LABEL_27;
  }

  VTParavirtualizationMessageGetUInt32();
  if (v19 || VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, 0, v16 + 14))
  {
    goto LABEL_55;
  }

  v20 = CFDictionaryCreateMutable(v13, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v20, @"AllowParavirtualizedDecoder", *MEMORY[0x1E695E4C0]);
  v21 = VTParavirtualizationMessageCopyCFPropertyList(a2, 744712548, &v37);
  if (v21)
  {
    goto LABEL_47;
  }

  v33 = a5;
  if (v37)
  {
    FigCFDictionarySetValue();
  }

  v22 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(v20, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
  v21 = VTParavirtualizationMessageCopyCFDictionary(a2, 744974702, &cf);
  if (v21)
  {
LABEL_47:
    v5 = v21;
    v7 = 0;
    goto LABEL_48;
  }

  v7 = FigCFCopyCompactDescription();
  if (!VTSelectAndCreateVideoDecoderInstance(v38, a1, v20, v16 + 3))
  {
    v26 = v16[3];
    if (v26)
    {
      CMBaseObject = VTVideoDecoderGetCMBaseObject(v26);
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v28)
      {
        v28(CMBaseObject, @"Paravirtualized", v22);
      }
    }
  }

  appended = VTParavirtualizationCreateReplyAndByteStream(a2, 4, &v36, &v35);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendUInt32(), appended))
  {
    v5 = appended;
LABEL_48:
    a2 = 0;
    goto LABEL_27;
  }

  a2 = MGCopyAnswer();
  FigCFDictionarySetValue();
  v24 = VTParavirtualizationMessageAppendCFDictionary(v35, 745040238, Mutable);
  if (!v24)
  {
    if (dword_1EAD321C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 0;
    *a4 = v16;
    *v33 = v36;
    v36 = 0;
    goto LABEL_26;
  }

  v5 = v24;
LABEL_27:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v5;
}

uint64_t VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest(void *a1, OpaqueCMBlockBuffer *a2, NSObject **a3, NSObject **a4, unint64_t a5)
{
  v19 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v19 + 1, &v19, 0);
  if (!result)
  {
    if ((v19 & 8) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (a3 && a5 == 1)
      {
        v15 = *a3;
        v16 = *a4;
      }

      return VTParavirtualizationReplyClerkDeliverReply(a1[12], a2, v15, v16);
    }

    else
    {
      v11 = 0;
      if (a5 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = a5;
      }

      v13 = 0;
      if (a3 && a5)
      {
        v11 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
        v13 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL);
        if (v11)
        {
          memcpy(v11, a3, 8 * v12);
        }

        if (v13)
        {
          memcpy(v13, a4, 8 * v12);
        }
      }

      CFRetain(a1);
      CFRetain(a2);
      v14 = a1[11];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke;
      block[3] = &__block_descriptor_tmp_23;
      v18 = HIDWORD(v19);
      block[4] = a1;
      block[5] = a2;
      block[6] = v11;
      block[7] = v13;
      block[8] = v12;
      dispatch_async(v14, block);
      return 0;
    }
  }

  return result;
}

uint64_t VTParavirtualizationHostDecoderSessionSetPixelBufferAttributes(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 136);
  *(a1 + 136) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v9 = 0;
  cfa = 0;
  v8 = 0;
  if (VTParavirtualizationPixelBufferAttributesContainIOSurfaceProtectionOptions())
  {
    *(a1 + 132) = 1;
    v4 = *(a1 + 144);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 144) = 0;
    }
  }

  else
  {
    *(a1 + 132) = 0;
  }

  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(*(a1 + 136), &v8);
  if (!appended)
  {
    appended = VTParavirtualizationCreateMessageAndByteStream(1148215905, 0, a1 + 112, 0, &cfa, &v9);
    if (!appended)
    {
      appended = VTParavirtualizationMessageAppendCFPropertyList();
      if (!appended)
      {
        appended = vtParavirtualizationHostDecoderSession_sendMessageToGuest(a1, cfa);
      }
    }
  }

  v6 = appended;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v14, &v16, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v16 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 96), a2, &v15);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, a2);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v9 = *(a1 + 96);
          v12 = *a3;
          v13 = *(a3 + 2);
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v9, v14, v15, &v12, a4, 0, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_2();
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM();
    }
  }

  v10 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 96), v15);
  return v10;
}

uint64_t VTParavirtualizationHostDecoderSessionCleanUpAfterDecode(uint64_t a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v22 = 0;
  cf[0] = 0;
  FigSimpleMutexLock();
  v2 = *(a1 + 160);
  if (!v2 || (Count = CFArrayGetCount(v2), Count < 1))
  {
    FigSimpleMutexUnlock();
    v6 = 0;
    Mutable = 0;
LABEL_26:
    v16 = 0;
    v17 = 1;
    goto LABEL_27;
  }

  v4 = Count;
  v5 = 0;
  v6 = 0;
  Mutable = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), v5);
    v11 = MEMORY[0x193AE2470](ValueAtIndex + 1);
    if (v11)
    {
      CFRelease(v11);
      ++v5;
    }

    else
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v8, 0, v9);
      }

      FigCFArrayAppendInt64();
      v12 = ValueAtIndex[2];
      if (v12)
      {
        if (!v6)
        {
          v6 = CFArrayCreateMutable(v8, 0, v9);
          v12 = ValueAtIndex[2];
        }

        CFArrayAppendValue(v6, v12);
        v13 = ValueAtIndex[2];
        if (v13)
        {
          CFRelease(v13);
          ValueAtIndex[2] = 0;
        }
      }

      CFArrayRemoveValueAtIndex(*(a1 + 160), v5);
      dispatch_group_leave(*(a1 + 176));
      --v4;
    }
  }

  while (v5 < v4);
  FigSimpleMutexUnlock();
  if (!Mutable)
  {
    goto LABEL_26;
  }

  v14 = CFArrayGetCount(Mutable);
  MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(Mutable, 0, v14, cf);
  if (!MessageBoxToRelinquishSurfaceMappingIDs)
  {
    MessageBoxToRelinquishSurfaceMappingIDs = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, cf[0]);
    if (!MessageBoxToRelinquishSurfaceMappingIDs)
    {
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (!v6)
      {
        v17 = 0;
        v16 = 0;
        goto LABEL_27;
      }

      MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageAndByteStream(1147565410, 0, a1 + 112, 0, cf, &v22);
      if (!MessageBoxToRelinquishSurfaceMappingIDs)
      {
        MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationMessageAppendCFUUIDArray(v22, 745892139, v6);
        if (!MessageBoxToRelinquishSurfaceMappingIDs)
        {
          MessageBoxToRelinquishSurfaceMappingIDs = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, cf[0]);
        }
      }
    }
  }

  v16 = MessageBoxToRelinquishSurfaceMappingIDs;
  v17 = 0;
LABEL_27:
  v18 = *(a1 + 160);
  if (v18)
  {
    if (CFArrayGetCount(v18) >= 1 && dword_1EAD321C0 != 0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if ((v17 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v16;
}

uint64_t VTParavirtualizationHostDecoderSessionCopyResolvedPixelBufferAttributes(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  cf = 0;
  v8 = 0;
  v9 = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(1148350561, 2, a1 + 112, 0, &cf, &v10);
  if (v5 || (v5 = vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v9), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = VTParavirtualizationMessageCopyCFDictionary(v9, 745562721, &v8);
    if (!v6)
    {
      *a3 = v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t vtParavirtualizationHostDecoderSession_sendMessageToGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v5 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, &v5, 0);
  if (!result)
  {
    if ((v5 & 2) != 0)
    {
      return FigSignalErrorAtGM();
    }

    else
    {
      return vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, a2);
    }
  }

  return result;
}

const __CFArray *VTParavirtualizationHostDecoderSessionCleanUpAfterTileDecode(uint64_t a1)
{
  cf = 0;
  FigSimpleMutexLock();
  v2 = *(a1 + 208);
  if (v2)
  {
    Count = CFArrayGetCount(*(a1 + 208));
    MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(v2, 0, Count, &cf);
    if (!MessageBoxToRelinquishSurfaceMappingIDs)
    {
      v5 = *(a1 + 208);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 208) = 0;
      }

      MessageBoxToRelinquishSurfaceMappingIDs = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(a1, cf);
    }

    v2 = MessageBoxToRelinquishSurfaceMappingIDs;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

void vtParavirtualizationHostDecoderSession_Finalize(uint64_t a1)
{
  if (dword_1EAD321C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_19();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  VTParavirtualizationHostDecoderSessionCleanUpAfterDecode(a1);
  v4 = *(a1 + 88);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 96) = 0;
  }

  _Block_release(*(a1 + 104));
  *(a1 + 104) = 0;
  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 144) = 0;
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
    v9 = *(a1 + 160);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 160) = 0;
    }
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    CFDictionaryRemoveAllValues(v10);
    v11 = *(a1 + 192);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 192) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 152) = 0;
  FigSimpleMutexDestroy();
  *(a1 + 184) = 0;
  v12 = *(a1 + 176);
  if (v12)
  {
    dispatch_release(v12);
    *(a1 + 176) = 0;
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    dispatch_release(v13);
    *(a1 + 224) = 0;
  }

  v14 = *(a1 + 200);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 200) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 168) = 0;
  }

  v17 = *(a1 + 216);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 216) = 0;
  }

  v18 = *(a1 + 232);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 232) = 0;
  }

  v19 = *(a1 + 240);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 240) = 0;
  }

  v20 = *(a1 + 248);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 248) = 0;
  }
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_2(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

BOOL VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_3(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM();
  *a3 = v4;
  FigSimpleMutexUnlock();
  return v4 == 0;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void *filterOutputCallback(void *result, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if (result)
  {
    v5 = *a4;
    v6 = *(a4 + 2);
    return [result handleEmittedFrame:a5 presentationTimestamp:&v5 status:a2 infoFlags:a3];
  }

  return result;
}

void *vtRateControlSessionRegisterBundle()
{
  result = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 1);
  qword_1ED6D4270 = result;
  if (result)
  {
    off_1ED6D4268 = dlsym(result, "VCPRateControlSessionCreate");
    off_1ED6D4278 = dlsym(qword_1ED6D4270, "VCPRateControlSessionCopySupportedPropertyDictionary");
    off_1ED6D4280 = dlsym(qword_1ED6D4270, "VCPRateControlSessionSetProperty");
    off_1ED6D4288 = dlsym(qword_1ED6D4270, "VCPRateControlSessionCopyProperty");
    off_1ED6D4290 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforePrepareToEncodeFrames");
    if (!off_1ED6D4290)
    {
      off_1ED6D4290 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforePrepareToEncodeFrame");
    }

    off_1ED6D4298 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforeEncodeFrame");
    off_1ED6D42A0 = dlsym(qword_1ED6D4270, "VCPRateControlSessionBeforeEmitEncodedFrame");
    off_1ED6D42A8 = dlsym(qword_1ED6D4270, "VCPRateControlSessionCompleteFrames");
    off_1ED6D42B0 = dlsym(qword_1ED6D4270, "VCPGetVersion");
    result = dlsym(qword_1ED6D4270, "VCPReactionObserverCreate");
    off_1ED6D42B8 = result;
    if (off_1ED6D4268 && off_1ED6D4278 && off_1ED6D4280 && off_1ED6D4288 && off_1ED6D4290 && off_1ED6D4298 && off_1ED6D42A0 && off_1ED6D42A8 && off_1ED6D42B0)
    {
      _MergedGlobals_15 = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t VTRateControlSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionBeforeEncodeFrameCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionCompleteFramesCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionCompleteFramesCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionCompleteFramesCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforePrepareToEncodeFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforePrepareToEncodeFrames_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforeEncodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforeEncodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionBeforeEmitEncodedFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlSessionCompleteFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlGetVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRateControlReactionObserverCreate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTRateControlReactionObserverCreate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t MuxedAlphaEncoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"AlphaChannelMode"))
  {
    if (CFEqual(a2, @"SublayerEncoderSpecification"))
    {
      v9 = *(DerivedStorage + 48);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (CFEqual(a2, @"MVHEVCVideoLayerIDs"))
    {
      v9 = *(DerivedStorage + 80);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (CFEqual(a2, @"MVHEVCViewIDs"))
    {
      v9 = *(DerivedStorage + 88);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MVHEVCLeftAndRightViewIDs"))
      {
        if (!*(DerivedStorage + 64) || !*(DerivedStorage + 112))
        {
          return 4294954393;
        }

        if (CFEqual(a2, @"TargetQualityForAlpha"))
        {
          v12 = *(DerivedStorage + 112);
          v13 = @"Quality";
        }

        else
        {
          v12 = *(DerivedStorage + 64);
          v13 = a2;
        }

        return VTSessionCopyProperty(v12, v13, a3, a4);
      }

      v9 = *(DerivedStorage + 96);
      if (v9)
      {
LABEL_9:
        v10 = CFRetain(v9);
LABEL_10:
        result = 0;
        *a4 = v10;
        return result;
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 40) || *(DerivedStorage + 41))
  {
    v8 = &kVTAlphaChannelMode_StraightAlpha;
    if (*(DerivedStorage + 42))
    {
      v8 = &kVTAlphaChannelMode_PremultipliedAlpha;
    }

    v9 = *v8;
    goto LABEL_9;
  }

  result = 0;
  *a4 = 0;
  return result;
}

void MuxedAlphaEncoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ProfileLevel"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 != CFStringGetTypeID())
      {
        goto LABEL_4;
      }
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"OutputBitDepth"))
  {
    if (a3)
    {
      SInt32 = FigCFNumberGetSInt32();
      if ((SInt32 | 2) == 0xA)
      {
        v10 = SInt32;
        if (!VTSessionSetProperty(*(DerivedStorage + 64), @"OutputBitDepth", a3))
        {
          *(DerivedStorage + 176) = v10;
LABEL_18:
          OUTLINED_FUNCTION_3_15();

          alphaencoder_configureSubEncodersByProfile(v12, v13);
          return;
        }

LABEL_41:
        OUTLINED_FUNCTION_3_15();
        return;
      }
    }

LABEL_4:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_3_15();

    FigSignalErrorAtGM();
    return;
  }

  if (CFEqual(a2, @"AlphaChannelMode"))
  {
    if (!a3)
    {
      if (*(DerivedStorage + 41))
      {
        goto LABEL_4;
      }

      *(DerivedStorage + 42) = 1;
      *(DerivedStorage + 40) = 0;
      goto LABEL_41;
    }

    if (CFEqual(a3, @"StraightAlpha"))
    {
      v11 = 0;
    }

    else
    {
      if (!CFEqual(a3, @"PremultipliedAlpha"))
      {
        goto LABEL_4;
      }

      v11 = 1;
    }

    if (!*(DerivedStorage + 41) || *(DerivedStorage + 42) == v11)
    {
      *(DerivedStorage + 42) = v11;
      *(DerivedStorage + 40) = 1;
      goto LABEL_41;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"SublayerEncoderSpecification"))
  {
    if (a3)
    {
      v15 = CFGetTypeID(a3);
      if (v15 == CFDictionaryGetTypeID())
      {
        v16 = *(DerivedStorage + 48);
        *(DerivedStorage + 48) = a3;
        CFRetain(a3);
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_41;
      }
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"BaseLayerProperties"))
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    v17 = CFGetTypeID(a3);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_4;
    }

LABEL_46:
    OUTLINED_FUNCTION_3_15();

    alphaencoder_setSessionPropertiesInListFromDictionaryIfPresent(v19, v20);
    return;
  }

  if (CFEqual(a2, @"AlphaLayerProperties"))
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    v18 = CFGetTypeID(a3);
    if (v18 != CFDictionaryGetTypeID())
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  if (CFEqual(a2, @"MVHEVCVideoLayerIDs"))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (a3)
    {
      v22 = CFGetTypeID(a3);
      if (v22 == CFArrayGetTypeID())
      {
        FigCFArrayGetInt32AtIndex();
        FigCFArrayGetInt32AtIndex();
        v28 = *(DerivedStorage + 80);
        if (v28)
        {
          CFRelease(v28);
          *(DerivedStorage + 80) = 0;
        }

        *(DerivedStorage + 80) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        if (!alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder())
        {
          alphaencoder_configureSubEncodersByProfile(a1, *(DerivedStorage + 72));
        }
      }
    }

    else
    {
      v25 = *(DerivedStorage + 80);
      if (v25)
      {
        CFRelease(v25);
        *(DerivedStorage + 80) = 0;
      }
    }

    goto LABEL_41;
  }

  if (CFEqual(a2, @"MVHEVCViewIDs"))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (a3)
    {
      v23 = CFGetTypeID(a3);
      if (v23 == CFArrayGetTypeID())
      {
        v24 = *(DerivedStorage + 88);
        if (v24)
        {
          CFRelease(v24);
          *(DerivedStorage + 88) = 0;
        }

        *(DerivedStorage + 88) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        if (!alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder())
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v27 = *(DerivedStorage + 88);
      if (v27)
      {
        CFRelease(v27);
        *(DerivedStorage + 88) = 0;
      }
    }

    goto LABEL_41;
  }

  if (CFEqual(a2, @"MVHEVCLeftAndRightViewIDs"))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (a3)
    {
      v26 = CFGetTypeID(a3);
      if (v26 == CFArrayGetTypeID())
      {
        v34 = *(DerivedStorage + 96);
        if (v34)
        {
          CFRelease(v34);
          *(DerivedStorage + 96) = 0;
        }

        *(DerivedStorage + 96) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
        if (!alphaencoder_setLeftAndRightViewIDsToMVHEVCColorAlphaEncoder())
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v29 = *(DerivedStorage + 96);
      if (v29)
      {
        CFRelease(v29);
        *(DerivedStorage + 96) = 0;
      }
    }

    goto LABEL_41;
  }

  if (!*(DerivedStorage + 64) || !*(DerivedStorage + 112))
  {
    goto LABEL_41;
  }

  if (!CFEqual(a2, @"TargetQualityForAlpha") && !CFEqual(a2, @"AverageBitRate") && !CFEqual(a2, @"AverageDataRate") && !CFEqual(a2, @"RelaxAverageBitRateTarget"))
  {
    v35 = VTSessionSetProperty(*(DerivedStorage + 64), a2, a3);
    VTSessionSetProperty(*(DerivedStorage + 112), a2, a3);
    if (v35)
    {
      CFEqual(a2, @"SourceFrameCount");
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_3_15();

  VTSessionSetProperty(v30, v31, v32);
}

uint64_t alphaencoder_configureSubEncodersByProfile(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v32 = 0;
  v5 = DerivedStorage[10] || DerivedStorage[11] || DerivedStorage[12] != 0;
  v6 = kVTProfileLevel_HEVC_Main44410_AutoLevel;
  if (!a2 || CFEqual(a2, @"HEVC_Main_AutoLevel"))
  {
    OUTLINED_FUNCTION_5_13();
    *(v4 + 43) = v7 | 0x76300000;
    v8 = @"HEVC_Main_AutoLevel";
    v9 = @"HEVC_Main_AutoLevel";
    goto LABEL_18;
  }

  v9 = @"HEVC_Main444_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    OUTLINED_FUNCTION_5_13();
    v11 = v10 | 0x76300000;
LABEL_9:
    v12 = v11 | 0x40000;
LABEL_17:
    *(v4 + 43) = v12;
    v8 = @"HEVC_Monochrome_AutoLevel";
LABEL_18:
    if (v5)
    {
      v14 = @"HEVC_Main_AutoLevel";
    }

    else
    {
      v14 = v8;
    }

    if (!CFEqual(v4[9], v9))
    {
      v15 = VTSessionSetProperty(v4[8], @"ProfileLevel", v9);
      if (v15)
      {
        return v15;
      }

      v16 = v4[9];
      v4[9] = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (!CFEqual(v4[15], v14))
    {
      VTSessionSetProperty(v4[14], @"ProfileLevel", v14);
      v17 = v4[15];
      v4[15] = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    v18 = alphaencoder_createPixelBufferAttributesDictionary(*(v4 + 4), *(v4 + 5), v4 + 172, 1, &v32);
    v19 = v32;
    if (!v18)
    {
      VTEncoderSessionSetPixelBufferAttributes(v4[1], v32);
      if (CFEqual(v9, v14))
      {
        v20 = 0;
        if (!v19)
        {
          return v20;
        }

        goto LABEL_54;
      }

      v21 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v23 = Mutable;
        v24 = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]);
        if (!v24)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v20 = FigSignalErrorAtGM();
          v29 = v23;
          goto LABEL_52;
        }

        v25 = v24;
        if (!CFEqual(v14, @"HEVC_Main_AutoLevel") && !CFEqual(v14, @"HEVC_Main10_AutoLevel") && !CFEqual(v14, @"HEVC_Main444_AutoLevel") && !CFEqual(v14, *v6) && !CFEqual(v14, @"HEVC_Main44410_AutoLevel") && !CFEqual(v14, @"HEVC_Monochrome_AutoLevel") && !CFEqual(v14, @"HEVC_Monochrome10_AutoLevel"))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v26 = FigSignalErrorAtGM();
          if (v26)
          {
            goto LABEL_69;
          }
        }

        if (v5)
        {
          FigCFArrayAppendInt();
          FigCFArrayAppendInt();
          v26 = VTSessionSetProperty(v4[8], @"RequiredHEVCVideoParameterSetRepFormatBitDepths", v23);
          if (!v26)
          {
            FigCFArrayAppendInt();
            FigCFArrayAppendInt();
            v26 = VTSessionSetProperty(v4[8], @"RequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v25);
            if (!v26)
            {
              SInt32 = FigCFNumberCreateSInt32();
              if (!SInt32)
              {
                goto LABEL_75;
              }

              goto LABEL_48;
            }
          }
        }

        else
        {
          FigCFArrayAppendInt();
          v26 = VTSessionSetProperty(v4[8], @"RequiredHEVCVideoParameterSetRepFormatBitDepths", v23);
          if (!v26)
          {
            FigCFArrayAppendInt();
            v26 = VTSessionSetProperty(v4[8], @"RequiredHEVCVideoParameterSetRepFormatChromaFormatIdcs", v25);
            if (!v26)
            {
              SInt32 = FigCFNumberCreateSInt32();
              if (!SInt32)
              {
LABEL_75:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_9_1();
                v28 = FigSignalErrorAtGM();
                goto LABEL_76;
              }

LABEL_48:
              v28 = VTSessionSetProperty(v4[14], @"RequiredHEVCSequenceParameterSetRepFormatIndex", SInt32);
              if (!v28)
              {
                v20 = 0;
LABEL_50:
                CFRelease(v23);
                CFRelease(v25);
                if (!SInt32)
                {
                  goto LABEL_53;
                }

                v29 = SInt32;
LABEL_52:
                CFRelease(v29);
LABEL_53:
                if (!v19)
                {
                  return v20;
                }

LABEL_54:
                CFRelease(v19);
                return v20;
              }

LABEL_76:
              v20 = v28;
              goto LABEL_50;
            }
          }
        }

LABEL_69:
        v20 = v26;
        SInt32 = 0;
        goto LABEL_50;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_9_1();
      v18 = FigSignalErrorAtGM();
    }

    v20 = v18;
    if (!v19)
    {
      return v20;
    }

    goto LABEL_54;
  }

  v9 = @"HEVC_Main10_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    OUTLINED_FUNCTION_5_13();
    v12 = v13 | 0x78300000;
    goto LABEL_17;
  }

  v9 = @"HEVC_Main42210_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    v6 = &kVTProfileLevel_HEVC_Main42210_AutoLevel;
    if (*(v4 + 44) == 8)
    {
      v12 = 1983013176;
    }

    else
    {
      v12 = 2016567608;
    }

    goto LABEL_17;
  }

  v9 = @"HEVC_Main44410_AutoLevel";
  if (OUTLINED_FUNCTION_9_7())
  {
    OUTLINED_FUNCTION_5_13();
    v11 = v31 | 0x78300000;
    goto LABEL_9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t alphaencoder_setLeftAndRightViewIDsToMVHEVCColorAlphaEncoder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 96);
  if (v1 && CFArrayGetCount(v1) == 2)
  {
    v2 = *(DerivedStorage + 88);
    if (!v2 || CFArrayGetCount(v2) != 2)
    {
      return 0;
    }

    FigCFArrayGetIntAtIndex();
    FigCFArrayGetIntAtIndex();
    v3 = *MEMORY[0x1E695E480];
    v4 = OUTLINED_FUNCTION_3_11();
    Mutable = CFArrayCreateMutable(v4, v5, v6);
    if (Mutable)
    {
      v8 = Mutable;
      FigCFArrayGetIntAtIndex();
      FigCFArrayGetIntAtIndex();
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      v9 = *(DerivedStorage + 144);
      if (v9)
      {
        CFRelease(v9);
        *(DerivedStorage + 144) = 0;
      }

      Copy = CFArrayCreateCopy(v3, v8);
      *(DerivedStorage + 144) = Copy;
      if (Copy)
      {
        v11 = VTSessionSetProperty(*(DerivedStorage + 64), @"MVHEVCLeftAndRightViewIDs", *(DerivedStorage + 96));
        if (!v11)
        {
          v11 = VTSessionSetProperty(*(DerivedStorage + 112), @"MVHEVCLeftAndRightViewIDs", *(DerivedStorage + 144));
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        v11 = FigSignalErrorAtGM();
      }

      v12 = v11;
      CFRelease(v8);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      return FigSignalErrorAtGM();
    }

    return v12;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM();
  }
}

uint64_t MuxedAlphaEncoder_StartSession(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = HIDWORD(a3);
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  v39[0] = 0x4C30303834323066;
  v36 = 0;
  v37 = 0;
  valuePtr = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v34 = 1;
  propertyValue = CFNumberCreate(v9, kCFNumberSInt32Type, &v34);
  cf = FigCFNumberCreateFloat32();
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 20) = v7;
  v11 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = @"HEVC_Main_AutoLevel";
  if (@"HEVC_Main_AutoLevel")
  {
    CFRetain(@"HEVC_Main_AutoLevel");
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = @"HEVC_Main_AutoLevel";
  if (@"HEVC_Main_AutoLevel")
  {
    CFRetain(@"HEVC_Main_AutoLevel");
  }

  if (v12)
  {
    CFRelease(v12);
  }

  *(DerivedStorage + 172) = 1982882104;
  v13 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 32);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 32) = 0;
  }

  PixelBufferAttributesDictionary = alphaencoder_createPixelBufferAttributesDictionary(a3, v7, DerivedStorage + 172, 1, &v38);
  if (PixelBufferAttributesDictionary || (VTEncoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), v38), PixelBufferAttributesDictionary = alphaencoder_createPixelBufferAttributesDictionary(a3, v7, &unk_18FED0548, 6, &v37), PixelBufferAttributesDictionary) || (v19 = (DerivedStorage + 64), PixelBufferAttributesDictionary = OUTLINED_FUNCTION_7_8(v9, a3, v7, v16, *(DerivedStorage + 48), v37, v17, v18, 0, (DerivedStorage + 64)), PixelBufferAttributesDictionary) || (PixelBufferAttributesDictionary = VTSessionSetProperty(*(DerivedStorage + 64), @"ProfileLevel", *(DerivedStorage + 72)), PixelBufferAttributesDictionary) || (PixelBufferAttributesDictionary = VTSessionSetProperty(*v19, @"RequiredHEVCSequenceParameterSetID", v10), PixelBufferAttributesDictionary) || (PixelBufferAttributesDictionary = VTSessionSetProperty(*v19, @"RequiredHEVCPictureParameterSetID", v10), PixelBufferAttributesDictionary))
  {
    v29 = PixelBufferAttributesDictionary;
  }

  else
  {
    v31 = v10;
    VTSessionSetProperty(*v19, @"RequiredHEVCVideoParameterSetAlphaLayerID", propertyValue);
    v20 = *MEMORY[0x1E695E4D0];
    v21 = VTSessionSetProperty(*v19, @"RequireDeterministicDependencyAndReordering", *MEMORY[0x1E695E4D0]);
    if (!v21)
    {
      v21 = VTSessionSetProperty(*v19, @"HDRMetadataInsertionMode", @"HDRMetadataInsertionMode_None");
      if (!v21)
      {
        v21 = alphaencoder_createPixelBufferAttributesDictionary(a3, v7, v39, 2, &v36);
        if (!v21)
        {
          v25 = (DerivedStorage + 112);
          v21 = OUTLINED_FUNCTION_7_8(v9, a3, v7, v22, *(DerivedStorage + 48), v36, v23, v24, 0, (DerivedStorage + 112));
          if (!v21)
          {
            v21 = VTSessionSetProperty(*(DerivedStorage + 112), @"ProfileLevel", *(DerivedStorage + 120));
            if (!v21)
            {
              v26 = propertyValue;
              v27 = VTSessionSetProperty(*v25, @"RequiredHEVCSequenceParameterSetID", propertyValue);
              v28 = cf;
              if (!v27)
              {
                v27 = VTSessionSetProperty(*v25, @"RequiredHEVCPictureParameterSetID", propertyValue);
                if (!v27)
                {
                  VTSessionSetProperty(*v25, @"EncodesAlpha", v20);
                  VTSessionSetProperty(*v25, @"Quality", cf);
                  v27 = VTSessionSetProperty(*v25, @"RequireDeterministicDependencyAndReordering", v20);
                }
              }

              v29 = v27;
              v10 = v31;
              if (cf)
              {
                goto LABEL_30;
              }

              goto LABEL_31;
            }
          }
        }
      }
    }

    v29 = v21;
    v10 = v31;
  }

  v28 = cf;
  v26 = propertyValue;
  if (cf)
  {
LABEL_30:
    CFRelease(v28);
  }

LABEL_31:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v29;
}

uint64_t MuxedAlphaEncoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  supportedPropertyDictionaryOut = 0;
  v56 = 0;
  v57 = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = OUTLINED_FUNCTION_3_11();
  v9 = CFDictionaryCreate(v5, v6, 0, 0, v7, v8);
  *keys = 0u;
  v55 = 0u;
  *values = 0u;
  *v53 = 0u;
  v10 = VTSessionCopySupportedPropertyDictionary(*(DerivedStorage + 64), &supportedPropertyDictionaryOut);
  if (v10)
  {
    v27 = 0;
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryRemoveValue(MutableCopy, @"MultiPassStorage");
    FigCFDictionaryGetValue();
    if (FigCFDictionaryGetArrayValue())
    {
      v43 = @"ProfileLevel";
      v44 = a2;
      HIDWORD(v45) = 0;
      v47 = @"HEVC_Main_AutoLevel";
      v48 = @"HEVC_Main444_AutoLevel";
      v49 = @"HEVC_Main10_AutoLevel";
      v50 = @"HEVC_Main42210_AutoLevel";
      v51 = @"HEVC_Main44410_AutoLevel";
      Mutable = CFArrayCreateMutable(v4, 5, MEMORY[0x1E695E9C0]);
      for (i = 0; i != 40; i += 8)
      {
        v14 = *(&v47 + i);
        LODWORD(v15) = FigCFArrayContainsValue();
        if (v15)
        {
          CFArrayAppendValue(Mutable, v14);
        }
      }

      v10 = 0;
      if (Mutable)
      {
        goto LABEL_9;
      }
    }

    values[0] = @"HEVC_Main_AutoLevel";
    v15 = CFArrayCreate(v4, values, 1, MEMORY[0x1E695E9C0]);
    Mutable = v15;
    if (v15)
    {
LABEL_9:
      keys[1] = @"PropertyType";
      *&v55 = @"ReadWriteStatus";
      *(&v55 + 1) = @"ShouldBeSerialized";
      v21 = OUTLINED_FUNCTION_8_8(v15, v16, v17, v18, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8], v19, v20, v42, v43, v44, v45, supportedPropertyDictionaryOut, v47, v48, v49, v50, v51, Mutable, @"Enumeration", @"ReadWrite", *MEMORY[0x1E695E4C0], @"SupportedValueList");
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(MutableCopy, @"ProfileLevel", v21);
        CFRelease(v22);
      }

      CFRelease(Mutable);
    }

    v23 = OUTLINED_FUNCTION_3_11();
    v27 = CFDictionaryCreateMutable(v23, v24, v25, v26);
    values[0] = @"StraightAlpha";
    values[1] = @"PremultipliedAlpha";
    v28 = CFArrayCreate(v4, values, 2, MEMORY[0x1E695E9C0]);
    if (v28)
    {
      v34 = v28;
      keys[1] = @"PropertyType";
      *&v55 = @"ReadWriteStatus";
      *(&v55 + 1) = @"ShouldBeSerialized";
      v35 = OUTLINED_FUNCTION_8_8(v28, v29, v30, v31, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8], v32, v33, v42, v43, v44, v45, supportedPropertyDictionaryOut, v47, v48, v49, v50, v51, v28, @"Enumeration", @"ReadWrite", *MEMORY[0x1E695E4C0], @"SupportedValueList");
      if (v35)
      {
        v36 = v35;
        CFDictionarySetValue(MutableCopy, @"AlphaChannelMode", v35);
        CFRelease(v36);
      }

      CFRelease(v34);
    }

    OUTLINED_FUNCTION_4_15(v28, @"SublayerEncoderSpecification");
    OUTLINED_FUNCTION_4_15(v37, @"SourceFrameCount");
    OUTLINED_FUNCTION_4_15(v38, @"BaseLayerProperties");
    OUTLINED_FUNCTION_4_15(v39, @"AlphaLayerProperties");
    v40 = CFDictionaryContainsKey(MutableCopy, @"Quality");
    if (v40)
    {
      OUTLINED_FUNCTION_4_15(v40, @"TargetQualityForAlpha");
    }

    v56 = MutableCopy;
    v57 = v27;
    FigCFCreateCombinedDictionary();
  }

  if (supportedPropertyDictionaryOut)
  {
    CFRelease(supportedPropertyDictionaryOut);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t alphaencoder_createDerivedSampleBuffer(opaqueCMSampleBuffer *a1, opaqueCMSampleBuffer *a2, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription *a4, CMSampleBufferRef *a5)
{
  sampleBufferOut = 0;
  *&timingInfoOut.duration.value = *MEMORY[0x1E6960C70];
  timingInfoOut.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    return SampleTimingInfo;
  }

  v11 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], theBuffer, a4, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &sampleBufferOut);
  v12 = sampleBufferOut;
  if (v11)
  {
    v26 = v11;
  }

  else
  {
    CMPropagateAttachments(a1, sampleBufferOut);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (!SampleAttachmentsArray || (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0), v15 = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u), v16 = CFArrayGetValueAtIndex(v15, 0), CFDictionaryApplyFunction(ValueAtIndex, alphaencoder_dictionarySetValue, v16), (v17 = CMSampleBufferGetSampleAttachmentsArray(a2, 0)) == 0))
    {
      v26 = 0;
      *a5 = sampleBufferOut;
      return v26;
    }

    v18 = CFArrayGetValueAtIndex(v17, 0);
    v19 = OUTLINED_FUNCTION_3_11();
    Mutable = CFDictionaryCreateMutable(v19, v20, v21, v22);
    if (Mutable)
    {
      v24 = Mutable;
      alphaencoder_setKeysInListFromDictionaryIfPresent(v18, kMuxedAlphaEncoderAlphaLayerSampleAttachmentKeyAllowList, 9, Mutable);
      DataBuffer = CMSampleBufferGetDataBuffer(a2);
      CMBlockBufferGetDataLength(DataBuffer);
      FigCFDictionarySetInt32();
      CFDictionarySetValue(v16, @"AlphaLayerAttachments", v24);
      *a5 = sampleBufferOut;
      sampleBufferOut = 0;
      CFRelease(v24);
      return 0;
    }

    fig_log_get_emitter();
    v26 = FigSignalErrorAtGM();
    v12 = sampleBufferOut;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v26;
}

uint64_t MuxedAlphaEncoder_CreateInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setVideoLayerIDsToMVHEVCColorAlphaEncoder_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_setViewIDsToMVHEVCColorAlphaEncoder_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_createPixelBufferAttributesDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeFrame_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MuxedAlphaEncoder_EncodeMultiImageFrame_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_demuxBaseAndAlpha_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_demuxBaseAndAlpha_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL alphaencoder_demuxBaseAndAlpha_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t alphaencoder_demuxBaseAndAlpha_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphaencoder_transferPlane_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void VTPixelBufferAttributesMediatorCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t VTPixelBufferAttributesMediatorCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorCopyProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferAttributesMediatorSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFTypeID VTMetalTransferSessionSetProperty(const void *a1, const void *a2, const void *a3)
{
  v6 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    goto LABEL_50;
  }

  v8 = DerivedStorage;
  v9 = CFGetTypeID(a1);
  TypeID = VTPixelTransferNodeGetTypeID();
  v11 = 4294954394;
  if (!a2 || v9 != TypeID)
  {
    goto LABEL_140;
  }

  v12 = CFGetTypeID(a2);
  if (v12 != CFStringGetTypeID())
  {
LABEL_50:
    v11 = 4294954394;
    goto LABEL_140;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v14 = CFStringGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1880), v15, v14))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v16 = CFStringGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1888), v17, v16))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v18 = CFDataGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1896), v19, v18))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v20 = CFStringGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1904), v21, v20))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v22 = CFBooleanGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1856), v23, v22))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v24 = CFBooleanGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1864), v25, v24))
    {
      goto LABEL_25;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v26 = CFNumberGetTypeID();
    if (OUTLINED_FUNCTION_59_0((v13 + 1872), v27, v26))
    {
LABEL_25:
      OUTLINED_FUNCTION_19_3();
      v28 = FigSignalErrorAtGM();
LABEL_26:
      v11 = v28;
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D42F0;
    v51 = v8 + 1792;
LABEL_99:
    v28 = processBooleanProperty(a3, v50, v51);
    goto LABEL_26;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D42F1;
    v51 = v8 + 1793;
    goto LABEL_99;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D4300;
    v51 = v8 + 1808;
    goto LABEL_99;
  }

  if (FigCFEqual())
  {
    v50 = byte_1ED6D42F2;
    v51 = v8 + 1794;
    goto LABEL_99;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      v42 = *(v8 + 227);
      if (v42)
      {
        CFRelease(v42);
        v11 = 0;
        *(v8 + 227) = 0;
        goto LABEL_140;
      }

      goto LABEL_139;
    }

    v11 = CFGetTypeID(a3);
    if (v11 != CFNumberGetTypeID())
    {
      goto LABEL_25;
    }

    if (!FigCFEqual())
    {
      if (*MEMORY[0x1E695E738] == a3)
      {
        OUTLINED_FUNCTION_53_0();
      }

      v29 = *(v8 + 227);
      *(v8 + 227) = a3;
      CFRetain(a3);
      if (v29)
      {
        CFRelease(v29);
      }

      if (*(v13 + 2152))
      {
        v30 = CFGetTypeID(a3);
        if (v30 == CFNumberGetTypeID() && CFArrayGetCount(*(v13 + 2152)) >= 1)
        {
          OUTLINED_FUNCTION_76();
          do
          {
            v31 = OUTLINED_FUNCTION_83();
            if (v31)
            {
              v32 = v31[15];
              if (v32)
              {
                v33 = [v32 contents];
                if (v33)
                {
                  OUTLINED_FUNCTION_84(v33, v34, v33);
                }
              }
            }

            OUTLINED_FUNCTION_28_1();
          }

          while (!v35);
          goto LABEL_140;
        }
      }
    }

LABEL_139:
    v11 = 0;
    goto LABEL_140;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (!a3)
      {
        v58 = *(v8 + 229);
        if (v58)
        {
          CFRelease(v58);
          v11 = 0;
          *(v8 + 229) = 0;
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        goto LABEL_25;
      }

      if (FigCFEqual())
      {
        goto LABEL_139;
      }

      if (*MEMORY[0x1E695E738] == a3)
      {
        OUTLINED_FUNCTION_53_0();
      }

      v43 = *(v8 + 229);
      *(v8 + 229) = a3;
      CFRetain(a3);
      if (v43)
      {
        CFRelease(v43);
      }

      if (!*(v13 + 2152))
      {
        goto LABEL_139;
      }

      v44 = CFGetTypeID(a3);
      if (v44 != CFNumberGetTypeID() || CFArrayGetCount(*(v13 + 2152)) < 1)
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_76();
      do
      {
        v45 = OUTLINED_FUNCTION_83();
        if (v45)
        {
          v46 = v45[15];
          if (v46)
          {
            v47 = [v46 contents];
            if (v47)
            {
              OUTLINED_FUNCTION_84(v47, v48, (v47 + 8));
            }
          }
        }

        OUTLINED_FUNCTION_28_1();
      }

      while (!v35);
      goto LABEL_140;
    }

    if (FigCFEqual())
    {
      if (!a3)
      {
        v60 = *(v8 + 230);
        if (v60)
        {
          CFRelease(v60);
          v11 = 0;
          *(v8 + 230) = 0;
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        goto LABEL_25;
      }

      if (FigCFEqual())
      {
        goto LABEL_139;
      }

      if (*MEMORY[0x1E695E738] == a3)
      {
        OUTLINED_FUNCTION_53_0();
      }

      v52 = *(v8 + 230);
      *(v8 + 230) = a3;
      CFRetain(a3);
      if (v52)
      {
        CFRelease(v52);
      }

      if (!*(v13 + 2152))
      {
        goto LABEL_139;
      }

      v53 = CFGetTypeID(a3);
      if (v53 != CFNumberGetTypeID() || CFArrayGetCount(*(v13 + 2152)) < 1)
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_76();
      do
      {
        v54 = OUTLINED_FUNCTION_83();
        if (v54)
        {
          v55 = v54[15];
          if (v55)
          {
            v56 = [v55 contents];
            if (v56)
            {
              OUTLINED_FUNCTION_84(v56, v57, (v56 + 12));
            }
          }
        }

        OUTLINED_FUNCTION_28_1();
      }

      while (!v35);
      goto LABEL_140;
    }

    if (FigCFEqual())
    {
      if (a3 && !CFEqual(a3, *MEMORY[0x1E695E738]))
      {
        v63 = CFGetTypeID(a3);
        if (v63 != CFStringGetTypeID())
        {
          goto LABEL_25;
        }

        if (!FigCFEqual())
        {
          v64 = *(v8 + 223);
          *(v8 + 223) = a3;
          CFRetain(a3);
          if (v64)
          {
            CFRelease(v64);
          }
        }
      }

      else
      {
        v59 = *(v8 + 223);
        if (v59)
        {
          CFRelease(v59);
          v11 = 0;
          *(v8 + 223) = 0;
          goto LABEL_140;
        }
      }

      goto LABEL_139;
    }

    if (FigCFEqual())
    {
      IsTypeOfDispatchQueue = FigIsTypeOfDispatchQueue();
      v62 = *MEMORY[0x1E695E738];
      if (a3 && !IsTypeOfDispatchQueue && v62 != a3)
      {
        goto LABEL_25;
      }

      if (v62 == a3)
      {
        v68 = 0;
      }

      else
      {
        v68 = a3;
      }

      v69 = *(v8 + 239);
      *(v8 + 239) = v68;
      if (!v68)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_25;
      }

      v66 = FigIsTypeOfDispatchQueue();
      v67 = *MEMORY[0x1E695E738];
      if (a3)
      {
        if (!v66 && v67 != a3)
        {
          goto LABEL_25;
        }
      }

      if (v67 == a3)
      {
        v68 = 0;
      }

      else
      {
        v68 = a3;
      }

      v69 = *(v8 + 240);
      *(v8 + 240) = v68;
      if (!v68)
      {
        goto LABEL_151;
      }
    }

    CFRetain(v68);
LABEL_151:
    if (v69)
    {
      CFRelease(v69);
    }

    v11 = 0;
    OUTLINED_FUNCTION_53_0();
    goto LABEL_140;
  }

  if (!a3)
  {
    v49 = *(v8 + 228);
    if (v49)
    {
      CFRelease(v49);
      v11 = 0;
      *(v8 + 228) = 0;
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v11 = CFGetTypeID(a3);
  if (v11 != CFNumberGetTypeID())
  {
    goto LABEL_25;
  }

  if (FigCFEqual())
  {
    goto LABEL_139;
  }

  if (*MEMORY[0x1E695E738] == a3)
  {
    OUTLINED_FUNCTION_53_0();
  }

  v36 = *(v8 + 228);
  *(v8 + 228) = a3;
  CFRetain(a3);
  if (v36)
  {
    CFRelease(v36);
  }

  if (!*(v13 + 2152))
  {
    goto LABEL_139;
  }

  v37 = CFGetTypeID(a3);
  if (v37 != CFNumberGetTypeID() || CFArrayGetCount(*(v13 + 2152)) < 1)
  {
    goto LABEL_139;
  }

  OUTLINED_FUNCTION_76();
  do
  {
    v38 = OUTLINED_FUNCTION_83();
    if (v38)
    {
      v39 = v38[15];
      if (v39)
      {
        v40 = [v39 contents];
        if (v40)
        {
          OUTLINED_FUNCTION_84(v40, v41, (v40 + 4));
        }
      }
    }

    OUTLINED_FUNCTION_28_1();
  }

  while (!v35);
LABEL_140:
  objc_autoreleasePoolPop(v6);
  return v11;
}

uint64_t vtPixelTransferAppendMetalNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  cf = 0;
  v11 = *(a6 + 176);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  session = v11;
  v12 = *(a2 + 4) ^ *(a1 + 4);
  v13 = (v12 >> 4) & 1;
  v14 = (v12 >> 3) & 1;
  valuePtr = 0;
  v15 = v12 & 0x18;
  if ((v12 & 4) != 0)
  {
    if (v15 == 24)
    {
      v14 = 0;
      valuePtr = 90;
      v13 = 1;
      goto LABEL_12;
    }

    if (!v13)
    {
      valuePtr = 90;
      v14 = (v12 & 8) == 0;
      goto LABEL_12;
    }

    v14 = 0;
    v13 = 0;
    v16 = 270;
  }

  else
  {
    if (v15 != 24)
    {
      goto LABEL_12;
    }

    v14 = 0;
    v13 = 0;
    v16 = 180;
  }

  valuePtr = v16;
LABEL_12:
  v38 = 0u;
  v39 = 0u;
  if (!v11)
  {
    CurrentDimensions = VTMetalTransferSessionCreate(0, *(a6 + 200), &session);
    if (CurrentDimensions)
    {
LABEL_49:
      appended = CurrentDimensions;
      goto LABEL_44;
    }

    v11 = session;
    if (!session)
    {
      appended = 0;
      goto LABEL_44;
    }
  }

  if (valuePtr)
  {
    v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(session, @"Rotation", v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    VTSessionSetProperty(v11, @"Rotation", 0);
  }

  v19 = *MEMORY[0x1E695E4D0];
  if (v13)
  {
    v20 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v20 = 0;
  }

  VTSessionSetProperty(session, @"FlipHorizontalOrientation", v20);
  if (v14)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  VTSessionSetProperty(session, @"FlipVerticalOrientation", v21);
  if (((*(a2 + 4) ^ *(a1 + 4)) & 2) != 0)
  {
    Value = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965D88]);
    v23 = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965F30]);
    v24 = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965F98]);
    v25 = CFDictionaryGetValue(*(a6 + 160), *MEMORY[0x1E6965EC8]);
    if (Value)
    {
      VTSessionSetProperty(session, @"DestinationColorPrimaries", Value);
    }

    if (v23)
    {
      VTSessionSetProperty(session, @"DestinationTransferFunction", v23);
    }

    if (v24)
    {
      VTSessionSetProperty(session, @"DestinationYCbCrMatrix", v24);
    }

    if (v25)
    {
      VTSessionSetProperty(session, @"DestinationICCProfile", v25);
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = OUTLINED_FUNCTION_41_1();
  CurrentDimensions = VTPixelTransferGraphGetCurrentDimensions(v27, v28, a3, a6, 0, v29);
  if (CurrentDimensions)
  {
    goto LABEL_49;
  }

  CurrentDimensions = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, 1, *&v39, *(&v39 + 1), &cf);
  if (CurrentDimensions)
  {
    goto LABEL_49;
  }

  v30 = *DerivedStorage;
  v31 = cf;
  *DerivedStorage = cf;
  if (v31)
  {
    CFRetain(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  appended = VTPixelTransferChainAppendNode(*a6, session);
  if (*&v39 != *(a6 + 76) || *(&v39 + 1) != *(a6 + 84))
  {
    v34 = 0;
    if (VTSessionGetBooleanIfPresent(session, @"WriteBlackPixelsOutsideDestRect", &v34))
    {
      *(a6 + 208) = v34;
    }
  }

LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  if (session)
  {
    CFRelease(session);
  }

  objc_autoreleasePoolPop(v10);
  return appended;
}

void VTLoadVTMetalTransferLibrary(void *a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v4 = 0;
  v11 = 0;
  v12 = 0;
  if (a1 && a2 && a3)
  {
    v8 = 0;
    v9 = 0;
    if (a4)
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11}];
      v8 = [a1 newDefaultLibraryWithBundle:v9 error:&v11];
      loadMTLFunctionConstants(a3, &v12);
      v4 = v12;
      *a4 = [v8 newFunctionWithName:a2 constantValues:v12 error:&v11];
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }
}

void *vtMetalTransferSessionConfigureForManySourcesAndManyDests(uint64_t a1, const __CFArray *a2, const __CFArray *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    LODWORD(v39) = 0;
    v40 = 0;
    v17 = 0;
    goto LABEL_87;
  }

  Value = CFDictionaryGetValue(a4, @"SourceAmendments");
  v9 = MEMORY[0x1E695E480];
  if (Value && ((v10 = Value, v11 = CFGetTypeID(Value), v11 == CFArrayGetTypeID()) || (v12 = CFGetTypeID(v10), v12 == CFDictionaryGetTypeID())))
  {
    v13 = OUTLINED_FUNCTION_17();
    Mutable = CFArrayCreateMutable(v13, v14, v15);
    if (!Mutable)
    {
      return 0;
    }

    v17 = Mutable;
    if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
    {
      v19 = Count;
      v72 = a1;
      allocator = a3;
      v20 = 0;
      v21 = a2;
      do
      {
        CFArrayGetValueAtIndex(a2, v20);
        v22 = OUTLINED_FUNCTION_17();
        MutableCopy = CFDictionaryCreateMutableCopy(v22, v23, v24);
        if (!MutableCopy)
        {
          v51 = 0;
          v40 = 0;
          goto LABEL_94;
        }

        v26 = MutableCopy;
        v27 = CFGetTypeID(v10);
        if (v27 != CFDictionaryGetTypeID())
        {
          v28 = CFGetTypeID(v10);
          if (v28 == CFArrayGetTypeID())
          {
            CFArrayGetValueAtIndex(v10, v20);
          }
        }

        OUTLINED_FUNCTION_22_2();
        CFDictionaryApplyFunction(v29, v30, v26);
        if (!CFDictionaryGetValue(v26, @"FlipHorizontalOrientation"))
        {
          v31 = *(DerivedStorage + 1856);
          if (v31)
          {
            v32 = CFGetTypeID(*(DerivedStorage + 1856));
            if (v32 == CFArrayGetTypeID() && v20 < CFArrayGetCount(v31))
            {
              OUTLINED_FUNCTION_81();
            }

            a2 = v21;
          }

          FigCFDictionarySetValue();
        }

        if (!CFDictionaryGetValue(v26, @"FlipVerticalOrientation"))
        {
          v33 = *(DerivedStorage + 1864);
          if (v33)
          {
            v34 = CFGetTypeID(*(DerivedStorage + 1864));
            if (v34 == CFArrayGetTypeID() && v20 < CFArrayGetCount(v33))
            {
              OUTLINED_FUNCTION_81();
            }

            a2 = v21;
          }

          FigCFDictionarySetValue();
        }

        if (!CFDictionaryGetValue(v26, @"Rotation"))
        {
          v35 = *(DerivedStorage + 1872);
          if (v35)
          {
            v36 = CFGetTypeID(*(DerivedStorage + 1872));
            if (v36 == CFArrayGetTypeID() && v20 < CFArrayGetCount(v35))
            {
              OUTLINED_FUNCTION_81();
            }

            a2 = v21;
          }

          FigCFDictionarySetValue();
        }

        v37 = OUTLINED_FUNCTION_41_1();
        CFArrayAppendValue(v37, v38);
        CFRelease(v26);
        ++v20;
      }

      while (v19 != v20);
      a2 = v17;
      a1 = v72;
      a3 = allocator;
      v9 = MEMORY[0x1E695E480];
    }

    else
    {
      a2 = v17;
    }
  }

  else
  {
    v17 = 0;
  }

  v41 = CFDictionaryGetValue(a4, @"DestinationAmendments");
  if (!v41 || (v42 = v41, v43 = CFGetTypeID(v41), v43 != CFArrayGetTypeID()))
  {
    v40 = 0;
    goto LABEL_83;
  }

  allocatora = *v9;
  v40 = CFArrayCreateMutable(*v9, 0, MEMORY[0x1E695E9C0]);
  if (!v40)
  {
    goto LABEL_92;
  }

  if (!a3 || (v44 = CFArrayGetCount(a3), v44 < 1))
  {
    a3 = v40;
LABEL_83:
    v63 = CFDictionaryGetValue(a4, @"SetGPUPriorityLow");
    v39 = v63;
    if (v63)
    {
      v64 = CFGetTypeID(v63);
      if (v64 == CFBooleanGetTypeID())
      {
        LODWORD(v39) = CFBooleanGetValue(v39);
      }

      else
      {
        LODWORD(v39) = 0;
      }
    }

LABEL_87:
    v65 = CMBaseObjectGetDerivedStorage();
    if (!*(v65 + 72) || (v66 = v65, !FigCFEqual()) || !FigCFEqual() || *(v66 + 2160) != v39 || *(v66 + 21))
    {
      v67 = objc_autoreleasePoolPush();
      v51 = vtMetalTransferSessionRebuild(a1, a2, a3, v39);
      objc_autoreleasePoolPop(v67);
      goto LABEL_94;
    }

LABEL_92:
    v51 = 0;
    goto LABEL_94;
  }

  v45 = v44;
  v71 = a4;
  v73 = a1;
  v69 = v17;
  v46 = 0;
  key = *MEMORY[0x1E6965D88];
  v70 = *MEMORY[0x1E6965F30];
  v76 = *MEMORY[0x1E6965EC8];
  v75 = *MEMORY[0x1E6965F98];
  while (1)
  {
    v47 = OUTLINED_FUNCTION_81();
    ValueAtIndex = CFArrayGetValueAtIndex(v42, v46);
    if (v47)
    {
      v49 = ValueAtIndex;
      v50 = CFGetTypeID(v47);
      if (v50 == CFDictionaryGetTypeID())
      {
        break;
      }
    }

LABEL_79:
    if (v45 == ++v46)
    {
      a3 = v40;
      v17 = v69;
      a4 = v71;
      a1 = v73;
      goto LABEL_83;
    }
  }

  v51 = CFDictionaryCreateMutableCopy(allocatora, 0, v47);
  if (v51)
  {
    if (v49)
    {
      v52 = CFGetTypeID(v49);
      if (v52 == CFDictionaryGetTypeID())
      {
        OUTLINED_FUNCTION_22_2();
        CFDictionaryApplyFunction(v49, v53, v51);
      }
    }

    if (CFDictionaryGetValue(v51, key) || CFDictionaryGetValue(v51, v70))
    {
      goto LABEL_64;
    }

    v54 = *(DerivedStorage + 1880);
    v55 = *(DerivedStorage + 1888);
    if (v54)
    {
      v56 = a2;
      v57 = CFGetTypeID(*(DerivedStorage + 1880));
      if (v57 != CFArrayGetTypeID())
      {
LABEL_60:
        a2 = v56;
        goto LABEL_61;
      }

      a2 = v56;
      if (v46 < CFArrayGetCount(v54) && v55)
      {
        v58 = CFGetTypeID(v55);
        if (v58 == CFArrayGetTypeID())
        {
          a2 = v56;
          if (v46 < CFArrayGetCount(v55))
          {
            CFArrayGetValueAtIndex(v54, v46);
            CFArrayGetValueAtIndex(v55, v46);
          }

          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

LABEL_61:
    if (!FigCFEqual() && !FigCFEqual())
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
    }

LABEL_64:
    if (!CFDictionaryGetValue(v51, v76))
    {
      v59 = *(DerivedStorage + 1896);
      if (v59)
      {
        v60 = CFGetTypeID(*(DerivedStorage + 1896));
        if (v60 == CFArrayGetTypeID() && v46 < CFArrayGetCount(v59))
        {
          CFArrayGetValueAtIndex(v59, v46);
        }
      }

      if (!FigCFEqual())
      {
        FigCFDictionarySetValue();
      }
    }

    if (!CFDictionaryGetValue(v51, v75))
    {
      v61 = *(DerivedStorage + 1904);
      if (v61)
      {
        v62 = CFGetTypeID(*(DerivedStorage + 1904));
        if (v62 == CFArrayGetTypeID() && v46 < CFArrayGetCount(v61))
        {
          CFArrayGetValueAtIndex(v61, v46);
        }
      }

      if (!FigCFEqual())
      {
        FigCFDictionarySetValue();
      }
    }

    CFArrayAppendValue(v40, v51);
    CFRelease(v51);
    goto LABEL_79;
  }

  v17 = v69;
LABEL_94:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return v51;
}

uint64_t VTMetalTransferSessionGenerateColorBars(void *a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  cf = 0;
  values[0] = a1;
  if (!a1 || (v3 = CFGetTypeID(a1), TypeID = CVPixelBufferGetTypeID(), v3 != TypeID))
  {
LABEL_12:
    v5 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  v5 = VTMetalTransferSessionCreate(TypeID, 0, &cf);
  if (!v5)
  {
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == VTPixelTransferNodeGetTypeID())
      {
        v7 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
        *(CMBaseObjectGetDerivedStorage() + 24) = 1;
        v8 = vtMetalTransferSessionTransferImageCommonSync(cf, 0, v7, 0);
        goto LABEL_7;
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  v8 = v5;
  v7 = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t VTMetalTransferSessionCanTransferWithSession(uint64_t a1, int a2, int a3, unsigned __int8 a4, const __CFDictionary *a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = objc_autoreleasePoolPush();
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 1793);
  if (a5)
  {
    VTPixelTransferChainNodeSessionSetProperties(a1, a5);
  }

  getKernelTypeCapabilities((DerivedStorage + 2161), a2, a3, &v16 + 1, &v16);
  if (a4 | v12 || VTMetalTransferSessionCanDoHighQualityScaling(a1, a2))
  {
    OUTLINED_FUNCTION_43_0();
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v10);
  return v14;
}

uint64_t processBooleanProperty(uint64_t a1, char a2, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a1 || FigCFEqual())
  {
    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    a2 = 1;
LABEL_8:
    result = 0;
    *a3 = a2;
    return result;
  }

  if (FigCFEqual())
  {
    a2 = 0;
    goto LABEL_8;
  }

  return 4294954392;
}

uint64_t vtMetalTransferSessionRebuild(uint64_t a1, const __CFArray *a2, const __CFArray *a3, int a4)
{
  v596 = *MEMORY[0x1E69E9840];
  bzero(v583, 0x638uLL);
  cf = 0;
  if (a2 && CFArrayGetCount(a2) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    ValueAtIndex = 0;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  if (CFArrayGetCount(a3) >= 1)
  {
    v8 = CFArrayGetValueAtIndex(a3, 0);
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:
  LODWORD(__dst[0]) = 0;
  FigCFDictionaryGetInt32IfPresent();
  v577 = __dst[0];
  OUTLINED_FUNCTION_58_0();
  FigCFDictionaryGetInt32IfPresent();
  v572 = __dst[0];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1936) = 0;
  v10 = *MEMORY[0x1E695E480];
  if (a2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  allocator = v10;
  theArray = CFArrayCreateCopy(v10, a3);
  v12 = CFArrayGetValueAtIndex(theArray, 0);
  if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), v14 != CFDictionaryGetTypeID()))
  {
LABEL_722:
    OUTLINED_FUNCTION_12_6();
    v41 = FigSignalErrorAtGM();
    goto LABEL_723;
  }

  IntermediateScalingFormat = 0;
  *(DerivedStorage + 72) = 0;
  v574 = Copy;
  if (!*(DerivedStorage + 2136))
  {
    __dst[0] = 0;
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = v16;
    if ((*(v16 + 2000) || (vtmtsCreateDefaultDevice((v16 + 2000), (v16 + 2008)), *(v17 + 2000))) && (v18 = OUTLINED_FUNCTION_17(), CVMetalTextureCacheCreate(v18, v19, v20, 0, v21), *(v17 + 48)))
    {
      OUTLINED_FUNCTION_17();
      CVMetalBufferCacheCreate();
      v22 = objc_alloc_init(MEMORY[0x1E6974170]);
      v23 = v22;
      if (v22)
      {
        *(v17 + 152) = 0;
        [v22 setMagFilter:1];
        [v23 setMinFilter:1];
        [v23 setNormalizedCoordinates:0];
        v24 = OUTLINED_FUNCTION_85();
        *(v17 + 168) = v24;
        if (v24)
        {
          [v23 setNormalizedCoordinates:1];
          v25 = OUTLINED_FUNCTION_85();
          *(v17 + 184) = v25;
          if (v25)
          {
            [v23 setMagFilter:0];
            [v23 setMinFilter:0];
            [v23 setNormalizedCoordinates:0];
            v26 = OUTLINED_FUNCTION_85();
            *(v17 + 160) = v26;
            if (v26)
            {
              [v23 setNormalizedCoordinates:1];
              v27 = OUTLINED_FUNCTION_85();
              *(v17 + 176) = v27;
              if (v27)
              {
                *(v17 + 2128) = 0;
                v28 = MEMORY[0x1E696AAE8];
                v29 = objc_opt_class();
                v30 = v28;
                Copy = v574;
                v31 = [*(v17 + 2000) newDefaultLibraryWithBundle:objc_msgSend(v30 error:{"bundleForClass:", v29), __dst}];
                *(v17 + 2136) = v31;
                if (*(v17 + 1784))
                {
                  v32 = *(v17 + 1784);
                }

                else
                {
                  v32 = @"com.apple.VideoToolbox.VTMetalTransferSession";
                }

                [v31 setLabel:v32];
                IntermediateScalingFormat = 0;
                goto LABEL_27;
              }
            }
          }
        }
      }
    }

    else
    {
      v23 = 0;
    }

    IntermediateScalingFormat = 4294954392;
LABEL_27:
  }

  v33 = [*(DerivedStorage + 2000) newCommandQueue];
  *(DerivedStorage + 2016) = v33;
  if (IntermediateScalingFormat)
  {
    goto LABEL_711;
  }

  if (!v33)
  {
    goto LABEL_722;
  }

  v576 = (DerivedStorage + 1784);
  if (*(DerivedStorage + 1784))
  {
    v34 = *(DerivedStorage + 1784);
  }

  else
  {
    v34 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v33 setLabel:v34];
  getpid();
  if (proc_can_use_foreground_hw())
  {
    v35 = theArray;
    if (a4)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    [*(DerivedStorage + 2016) setGPUPriority:v36];
  }

  else
  {
    [*(DerivedStorage + 2016) setGPUPriority:2];
    v35 = theArray;
  }

  *(DerivedStorage + 2160) = a4;
  if (*(DerivedStorage + 1912))
  {
    [*(DerivedStorage + 2016) setSubmissionQueue:?];
  }

  if (*(DerivedStorage + 1920))
  {
    [*(DerivedStorage + 2016) setCompletionQueue:?];
  }

  v580 = DerivedStorage;
  if (Copy && CFArrayGetCount(Copy) >= 1)
  {
    v37 = 0;
    v38 = 1;
    while (1)
    {
      v39 = *(v580 + 2000);
      v40 = CFArrayGetCount(Copy) <= v37 ? 0 : CFArrayGetValueAtIndex(Copy, v37);
      v41 = vtCheckTextureLimits(v39, v40);
      if (v41)
      {
        break;
      }

      v37 = v38;
      v42 = CFArrayGetCount(Copy) <= v38++;
      v35 = theArray;
      if (v42)
      {
        goto LABEL_52;
      }
    }

LABEL_723:
    IntermediateScalingFormat = v41;
    goto LABEL_711;
  }

LABEL_52:
  if (v35 && CFArrayGetCount(v35) >= 1)
  {
    v43 = 0;
    v44 = 1;
    do
    {
      v45 = *(v580 + 2000);
      v46 = CFArrayGetCount(v35) <= v43 ? 0 : CFArrayGetValueAtIndex(v35, v43);
      v41 = vtCheckTextureLimits(v45, v46);
      if (v41)
      {
        goto LABEL_723;
      }

      v43 = v44;
      v35 = theArray;
      v42 = CFArrayGetCount(theArray) <= v44++;
    }

    while (!v42);
  }

  v47 = v580;
  v532 = (v580 + 1936);
  if (Copy)
  {
    if (*(v580 + 56))
    {
      Count = CFArrayGetCount(Copy);
      if (v35)
      {
        if (Count == 1 && CFArrayGetCount(v35) == 1)
        {
          v49 = v577 == 1651798066 || v577 == 1650946098;
          if (v49 && (v572 == 1651798066 || v572 == 1650946098))
          {
            LODWORD(__dst[0]) = 1065353216;
            *v585 = 1065353216;
            IsCropped = vtmtsGetIsCropped(ValueAtIndex);
            v52 = vtmtsGetIsCropped(v8);
            v53 = OUTLINED_FUNCTION_61_0();
            vtmtsGetRotationAndScale(v53, v54, v55, v56);
            IntermediateScalingFormat = 4294954391;
            if (!IsCropped && !v52 && *__dst == 1.0 && *v585 == 1.0)
            {
              IntermediateScalingFormat = vtmtsSetupMetalDirectBlitter(*(v580 + 2000), *(v580 + 1784), *(v580 + 2136), ValueAtIndex, v8, &cf);
              if (IntermediateScalingFormat)
              {
                goto LABEL_711;
              }
            }

            Mutable = cf;
            v59 = __src;
            if (cf)
            {
              goto LABEL_614;
            }

            goto LABEL_605;
          }
        }
      }
    }
  }

  v60 = *(v580 + 2000);
  LODWORD(v539) = *(v580 + 24);
  v573 = *(v580 + 88);
  v61 = *(v580 + 2008);
  bzero(__src, 0xA8uLL);
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  __src[12] = v60;
  __src[13] = v576;
  LOBYTE(__src[18]) = v61 == 0;
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_41_1();
  FigCFDictionaryGetInt32IfPresent();
  LODWORD(__src[0]) = __dst[0];
  __src[1] = v13;
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  HIDWORD(__src[16]) = getNativeTextureTypeForPixelFormat(__src[0]);
  v537 = DescriptionWithPixelFormatType;
  getSubsamplingFromPixelDescription(DescriptionWithPixelFormatType, &__src[17], &__src[17] + 1);
  v59 = __src;
  *(&__src[18] + 4) = xmmword_18FED05D0;
  v63 = FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() || *(v580 + 1794) != 0;
  HIDWORD(v539) = v63;
  vtmtsGetDstCropDimensions(v13, &__src[10], &__src[10] + 1, &__src[9], &__src[9] + 1, &__src[11], &__src[11] + 1);
  v568 = Mutable;
  if (v539 != 2)
  {
    if (v539 != 1)
    {
      OUTLINED_FUNCTION_12_6();
      IntermediateScalingFormat = FigSignalErrorAtGM();
      cf = Mutable;
      if (IntermediateScalingFormat)
      {
        Copy = v574;
        goto LABEL_711;
      }

      Copy = v574;
      if (Mutable)
      {
        goto LABEL_614;
      }

      goto LABEL_605;
    }

    v64 = v574;
    if (!v574)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  v64 = v574;
  if (!v574)
  {
LABEL_158:
    v104 = 0;
    v105 = 1;
    goto LABEL_164;
  }

  if (CFArrayGetCount(v574) <= 1)
  {
LABEL_159:
    if (CFArrayGetCount(v64) < 1)
    {
      v105 = 0;
      v104 = 0;
    }

    else
    {
      v106 = OUTLINED_FUNCTION_27();
      v104 = CFArrayGetValueAtIndex(v106, v107);
      v105 = 0;
    }

LABEL_164:
    bzero(v585, 0xD8uLL);
    *&v585[204] = 1065353216;
    *&v585[152] = v60;
    *&v585[160] = v576;
    v585[72] = 1;
    if (__src[9] || __src[10] != __src[11])
    {
      v585[72] = 0;
    }

    if (v104)
    {
      LOBYTE(v594[0]) = 1;
      OUTLINED_FUNCTION_58_0();
      FigCFDictionaryGetInt32IfPresent();
      *v585 = __dst[0];
      v117 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetIntIfPresent();
      BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
      if (BooleanIfPresent && LOBYTE(v594[0]))
      {
        v585[72] = 0;
      }

      if (v117)
      {
        FigCFDictionaryGetBooleanIfPresent();
        CFDictionaryGetValue(v117, *MEMORY[0x1E6965CB8]);
        BooleanIfPresent = FigCFEqual();
        if (BooleanIfPresent)
        {
          v585[192] = 0;
        }
      }
    }

    else
    {
      v117 = 0;
    }

    v118 = v537;
    if (v537)
    {
      BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
      v118 = v537;
    }

    if (v105)
    {
      v119 = 0;
    }

    else
    {
      if (OUTLINED_FUNCTION_82(BooleanIfPresent, v110, v111, v112, v113, v114, v115, v116, v478, v480, v482, v484, v486, v487, v488, v489, v490, v491, v492, v493, v496, v497, v499, v501, v503, v505, v506, v507, v509, v511, v514, v517, v520, v523, v524, v525, v526[0], v526[1], v527, v528, v530[0], v530[1], v531, v532, v533, v534, v535, v536, v537, v539, v540, v543, v544, v547, v548, theDict, v554, v558, v562, v566, v567, Mutable, v570) < 1)
      {
        v119 = 0;
      }

      else
      {
        v120 = OUTLINED_FUNCTION_17();
        v119 = CFArrayGetValueAtIndex(v120, v121);
      }

      v118 = v537;
    }

    vtmtsLoadColorFunctionConstantValues(v119, v13, v117, v118, &v585[180], &v585[176], &v585[168], &v585[184], &__src[15] + 1, &__src[15], &__src[14], &__src[16]);
    *&v585[188] = getNativeTextureTypeForPixelFormat(*v585);
    SubsamplingFromPixelDescription = getSubsamplingFromPixelDescription(v117, &v585[196], &v585[200]);
    if ((v105 & 1) != 0 || OUTLINED_FUNCTION_82(SubsamplingFromPixelDescription, v123, v124, v125, v126, v127, v128, v129, v479, v481, v483, v485, v486, v487, v488, v489, v490, v491, v492, v493, v496, v497, v499, v501, v503, v505, v506, v507, v509, v511, v514, v517, v520, v523, v524, v525, v526[0], v526[1], v527, v528, v530[0], v530[1], v531, v532, v533, v534, v535, v536, v537, v539, v540, v543, v544, v547, v548, theDict, v554, v558, v562, v566, v567, v568, v570) < 1)
    {
      v132 = 0;
    }

    else
    {
      v130 = OUTLINED_FUNCTION_17();
      v132 = CFArrayGetValueAtIndex(v130, v131);
    }

    SrcCropDimensions = vtmtsGetSrcCropDimensions(v132, &v585[136], &v585[140], &v585[128], &v585[132], &v585[144], &v585[148], &v585[80], &v585[74]);
    if (*&v585[128] != 0.0 || *&v585[132] != 0.0 || *&v585[136] != *&v585[144])
    {
      v585[208] = 1;
    }

    if ((v105 & 1) != 0 || OUTLINED_FUNCTION_82(SrcCropDimensions, v134, v135, v136, v137, v138, v139, v140, v478, v481, v483, v485, v486, v487, v488, v489, v490, v491, v492, v493, v496, v497, v499, v501, v503, v505, v506, v507, v509, v511, v514, v517, v520, v523, v524, v525, v526[0], v526[1], v527, v528, v530[0], v530[1], v531, v532, v533, v534, v535, v536, v537, v539, v540, v543, v544, v547, v548, theDict, v554, v558, v562, v566, v567, v568, v570) < 1)
    {
      v143 = 0;
    }

    else
    {
      v141 = OUTLINED_FUNCTION_17();
      v143 = CFArrayGetValueAtIndex(v141, v142);
    }

    theDicta = v117;
    *&v585[8] = v143;
    FigCFDictionaryGetFloatIfPresent();
    v144 = *v585 == 1647392369 || *v585 == 1651521076;
    v145 = MEMORY[0x1E6966218];
    if (!v144)
    {
      v571 = 0;
      v529 = *MEMORY[0x1E6966218];
      v149 = allocator;
LABEL_206:
      v515 = &__dst[21];
      v518 = &__dst[22];
      v512 = &v585[172];
      v498 = *MEMORY[0x1E69662D8];
      v500 = *MEMORY[0x1E6966290];
      v508 = &v585[73];
      v510 = &v594[14] + 1;
      v502 = &v594[4];
      v549 = &__dst[5];
      *v504 = xmmword_18FED05F0;
      *v521 = xmmword_18FED05E0;
      v150 = 1;
      while (1)
      {
        v151 = 0;
        LODWORD(v536) = v150;
        LOBYTE(__dst[0]) = 0;
        LOBYTE(v594[0]) = 0;
        if (!*&v585[212])
        {
          v151 = *(v47 + 1848) != 0;
        }

        v152 = __src[0];
        getKernelTypeCapabilities((v47 + 2161), *v585, __src[0], __dst, v594);
        if (LOBYTE(__dst[0]))
        {
          v153 = *(v47 + 1792) == 0;
        }

        else
        {
          v153 = 1;
        }

        v154 = v153;
        if (v585[74])
        {
          v155 = 0;
        }

        else
        {
          v155 = v154;
        }

        if (LOBYTE(v594[0]))
        {
          v156 = v155;
        }

        else
        {
          v156 = 0;
        }

        v157 = v156 & v151;
        if (__src[10] != __src[11] && *(v47 + 1794))
        {
          v157 = 0;
        }

        if (v152 == 846624102 || v152 == 846624121 || v152 == 1983000886 || v152 == 2037741171 || v152 == 2037741158)
        {
          v157 = 0;
        }

        v564 = v157;
        v162 = [(__CFDictionary *)v60 newBufferWithLength:16 options:0, v478];
        v163 = v162;
        if (v162)
        {
          v164 = [v162 contents];
          if (v164)
          {
            *v164 = *v521;
          }
        }

        if (*v576)
        {
          v165 = *v576;
        }

        else
        {
          v165 = @"com.apple.VideoToolbox.VTMetalTransferSession";
        }

        [v163 setLabel:v165];
        v166 = [(__CFDictionary *)v60 newBufferWithLength:212 options:0];
        if (*v576)
        {
          v167 = *v576;
        }

        else
        {
          v167 = @"com.apple.VideoToolbox.VTMetalTransferSession";
        }

        v556 = v166;
        [v166 setLabel:v167];
        memcpy(v594, __src, sizeof(v594));
        memcpy(__dst, v585, sizeof(__dst));
        if (*&v585[212])
        {
          v169 = *&v585[212] == 180;
        }

        else
        {
          v169 = 1;
        }

        *&v168 = *&v585[136];
        *v545 = v168;
        if (v169)
        {
          v170 = *&v585[136];
        }

        else
        {
          v170 = *&v585[140];
        }

        if (v169)
        {
          v171 = *&v585[140];
        }

        else
        {
          v171 = *&v585[136];
        }

        v172 = 1;
        v173 = *&v585[212] | v585[209];
        v174 = v173 == 0;
        if (v173)
        {
          v175 = v564;
          if (!v170)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v175 = v564;
          if (!v585[210])
          {
            v172 = *(v47 + 1793) != 0;
          }

          if (!v170)
          {
            goto LABEL_265;
          }
        }

        if (v170 != LODWORD(__src[10]) && !v172)
        {
          v176 = v585[74] == 0;
          if (!v171)
          {
            goto LABEL_267;
          }

          goto LABEL_266;
        }

LABEL_265:
        v176 = 0;
        if (!v171)
        {
          goto LABEL_267;
        }

LABEL_266:
        if (v171 == HIDWORD(__src[10]) || v172)
        {
LABEL_267:
          v177 = 0;
          if (v174)
          {
            goto LABEL_268;
          }

          goto LABEL_270;
        }

        v177 = v585[74] == 0;
        if (v174)
        {
LABEL_268:
          v178 = (v585[210] | v175) == 0;
          goto LABEL_271;
        }

LABEL_270:
        v178 = 0;
LABEL_271:
        LODWORD(v531) = v172;
        v560 = v163;
        v585[72] = v178;
        LOBYTE(v587) = 0;
        if ((v175 & (v176 && v177)) == 1)
        {
          LOBYTE(v594[18]) = 0;
        }

        *&v168 = v59[10];
        *v541 = v168;
        v179 = v170 > v168 && v176;
        HIDWORD(v535) = v179;
        v180 = v177;
        v181 = v171 > DWORD1(v168) && v177;
        LODWORD(v534) = v181;
        OUTLINED_FUNCTION_1_21();
        MEMORY[0x193AE3010](&_MergedGlobals_1);
        v182 = OUTLINED_FUNCTION_86();
        *&v183 = LODWORD(v545[0]);
        *(&v183 + 1) = HIDWORD(v545[0]);
        v184 = v183;
        *&v183 = LODWORD(v541[0]);
        *(&v183 + 1) = HIDWORD(v541[0]);
        *(v182 + 40) = v183;
        *(v182 + 24) = v184;
        *(v182 + 64) = 0;
        *(v182 + 66) = *(v47 + 1794);
        *(v182 + 1684) = 1;
        v185 = [(__CFDictionary *)v60 newBufferWithLength:1000 options:0];
        *(v182 + 104) = v185;
        if (*(v47 + 1784))
        {
          v186 = *(v47 + 1784);
        }

        else
        {
          v186 = @"com.apple.VideoToolbox.VTMetalTransferSession";
        }

        [v185 setLabel:v186];
        v545[0] = [*(v182 + 104) contents];
        if (v539 == 2 && (v585[192] || *&v585[204] < 1.0))
        {
          *(v182 + 1694) = 1;
          v585[72] = 0;
        }

        v187 = CFArrayCreateMutable(v149, 0, MEMORY[0x1E695E9C0]);
        v188 = v176 && v180;
        if (v564 && v188)
        {
          OUTLINED_FUNCTION_31_1();
          v189 = OUTLINED_FUNCTION_26_2();
          getKernelTypeCapabilities(v189, v190, v191, v192, v193);
          OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_30_1();
          if (!v49)
          {
            v194 = v196;
          }

          if (v195)
          {
            OUTLINED_FUNCTION_49_0();
            if (!v49)
            {
              v194 = v197;
            }
          }

          v198 = 0;
          v199 = 0;
          *&v585[68] = v194;
          *(v182 + 16) = v194;
          *(v182 + 401) = 257;
          *(v182 + 64) = 1;
          v585[75] = 1;
          LODWORD(v594[3]) = v194;
          v59[50] = v59[10];
          goto LABEL_294;
        }

        if (v188)
        {
          v201 = *v585;
          LODWORD(v594[10]) = *&v585[136];
          v594[11] = __PAIR64__(HIDWORD(v594[10]), *&v585[136]);
          __dst[18] = __PAIR64__(HIDWORD(v594[10]), *&v585[136]);
          HIDWORD(__dst[17]) = HIDWORD(v594[10]);
          __dst[16] = 0;
          v594[9] = 0;
          v594[17] = *&v585[196];
          v591[0] = 0;
          v590[0] = 0;
          getKernelTypeCapabilities_source((v47 + 2161), *v585, v591, v590);
          v202 = 2 * (v591[0] != 0);
          if (v590[0])
          {
            v202 = 3;
          }

          if (*(v47 + 1945))
          {
            v202 = 2;
          }

          *&v585[68] = v202;
          v585[75] = 0;
          *(v182 + 16) = v202;
          v542 = v202;
          LODWORD(v594[3]) = v202;
          IntermediateScalingFormat = vtmtsGetIntermediateScalingFormat((v47 + 2161), v201, __dst, &__dst[4], 1, &__dst[8]);
          OUTLINED_FUNCTION_45_0();
          if (v203)
          {
            v204 = 2;
            LODWORD(__dst[8]) = 2;
          }

          else
          {
            v204 = __dst[8];
          }

          LODWORD(v594[0]) = __dst[0];
          LODWORD(v594[8]) = v204;
          if (IntermediateScalingFormat)
          {
            goto LABEL_447;
          }

          v214 = CVPixelFormatDescriptionCreateWithPixelFormatType(allocator, __dst[0]);
          if (v214)
          {
            v215 = v214;
            LOBYTE(v595[0]) = 0;
            FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(v595[0]))
            {
              Value = FigCFDictionaryGetValue();
              if (Value)
              {
                v217 = Value;
                v218 = CFGetTypeID(Value);
                if (v218 == CFArrayGetTypeID())
                {
                  LODWORD(Value) = CFArrayGetCount(v217);
                }

                else
                {
                  LODWORD(Value) = 0;
                }
              }

              if (Value)
              {
                v227 = (Value - 1);
              }

              else
              {
                v227 = 0;
              }
            }

            else
            {
              v227 = 0xFFFFFFFFLL;
            }

            CFRelease(v215);
          }

          else
          {
            OUTLINED_FUNCTION_12_6();
            FigSignalErrorAtGM();
            v227 = 0xFFFFFFFFLL;
          }

          v241 = 0;
          v242 = __dst[4];
          v243 = v502;
          v244 = 32;
          while (1)
          {
            v245 = v594[10];
            v246 = HIDWORD(v594[10]);
            *v243 = v242;
            if (v241)
            {
              if (LODWORD(v594[17]) == 2 && v227 != v241)
              {
                v245 = (v245 + 1) / 2;
                if (HIDWORD(v594[17]) == 2)
                {
                  v246 = (v246 + 1) / 2;
                }
              }
            }

            MetalTextureForList = vtAllocateMetalTextureForList(v60, v245, v246, v242, v241, v573);
            if (MetalTextureForList)
            {
              IntermediateScalingFormat = MetalTextureForList;
              goto LABEL_398;
            }

            if (v241 == 3)
            {
              break;
            }

            v242 = v549[v241];
            v244 -= 8;
            ++v243;
            ++v241;
            if (!v242)
            {
              if ((v241 - 1) <= 2)
              {
                bzero(v243, v244);
              }

              break;
            }
          }

          v199 = 0;
          v198 = 1;
          *(v182 + 402) = 1;
          *(v182 + 66) = 0;
          v59 = __src;
          v200 = v542;
          if (!*(v182 + 16))
          {
            goto LABEL_310;
          }
        }

        else
        {
          if (!v176)
          {
            if (v180)
            {
              OUTLINED_FUNCTION_31_1();
              v219 = v594[0];
              v220 = OUTLINED_FUNCTION_26_2();
              getKernelTypeCapabilities(v220, v221, v219, v222, v223);
              OUTLINED_FUNCTION_7_9();
              OUTLINED_FUNCTION_30_1();
              if (!v49)
              {
                v194 = v225;
              }

              if (v224)
              {
                OUTLINED_FUNCTION_49_0();
                if (!v49)
                {
                  v194 = v226;
                }
              }

              v198 = 0;
              v199 = 0;
              *&v585[68] = v194;
              v585[75] = 0;
              *(v182 + 16) = v194;
              *(v182 + 402) = 1;
              HIDWORD(__dst[18]) = HIDWORD(v594[10]);
              LODWORD(v594[3]) = v194;
              HIDWORD(v594[11]) = HIDWORD(__src[11]);
              HIDWORD(__dst[17]) = HIDWORD(v594[10]);
              LODWORD(__dst[0]) = v219;
            }

            else
            {
              OUTLINED_FUNCTION_31_1();
              v228 = OUTLINED_FUNCTION_26_2();
              getKernelTypeCapabilities(v228, v229, v230, v231, v232);
              OUTLINED_FUNCTION_7_9();
              OUTLINED_FUNCTION_30_1();
              if (!v49)
              {
                v194 = v234;
              }

              if (v233)
              {
                OUTLINED_FUNCTION_49_0();
                if (!v49)
                {
                  v194 = v235;
                }
              }

              *&v585[68] = v194;
              v236 = v585[74];
              v585[75] = v585[74] == 0;
              *(v182 + 16) = v194;
              LODWORD(v594[3]) = v194;
              v237 = __src[10];
              v238 = HIDWORD(__src[10]);
              v240 = v170 == LODWORD(__src[10]) && v171 == HIDWORD(__src[10]) && (*(v47 + 1958) | v236) == 0;
              v198 = 0;
              v199 = 0;
              *(v182 + 400) = v240;
              *(v182 + 404) = *(v47 + 1959);
              __dst[17] = __PAIR64__(v238, v237);
            }

LABEL_294:
            v200 = v194;
            if (!v194)
            {
              goto LABEL_310;
            }

            goto LABEL_355;
          }

          OUTLINED_FUNCTION_31_1();
          v205 = v594[0];
          v206 = OUTLINED_FUNCTION_26_2();
          getKernelTypeCapabilities(v206, v207, v205, v208, v209);
          OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_30_1();
          if (!v49)
          {
            v210 = v212;
          }

          if (v211)
          {
            OUTLINED_FUNCTION_49_0();
            if (!v49)
            {
              v210 = v213;
            }
          }

          v198 = 0;
          *&v585[68] = v210;
          *(v182 + 16) = v210;
          *(v182 + 401) = 1;
          v585[75] = 0;
          LODWORD(__dst[18]) = v594[10];
          LODWORD(v594[3]) = v210;
          LODWORD(v594[11]) = __src[11];
          LODWORD(__dst[17]) = v594[10];
          LODWORD(__dst[0]) = v205;
          v200 = v210;
          v199 = v180;
          if (!v210)
          {
LABEL_310:
            IntermediateScalingFormat = 4294954391;
LABEL_447:
            CFRelease(v182);
            goto LABEL_448;
          }
        }

LABEL_355:
        LODWORD(v541[0]) = v200;
        v250 = v200 == 2 && (LODWORD(v594[11]) != LODWORD(v594[10]) || HIDWORD(v594[11]) != HIDWORD(v594[10]));
        *(v182 + 65) = v250;
        if (((v198 | v199) & 1) == 0)
        {
          v251 = v199;
          v252 = v198;
          OUTLINED_FUNCTION_51_0();
          OUTLINED_FUNCTION_25_2();
          v258 = OUTLINED_FUNCTION_77(v253, v254, v255, v256, v257, v518, v478, v481, v483, v485, v486, v487, v182 + 280, v512, v510, v560, (v182 + 2200), v508, &v587, v498, v500, v502, v504[0], v504[1], v506, v508, v510, v512, v515, v518, v521[0], v521[1], v524, v525, v526[0], v526[1], v527, v529, v530[0], v530[1], v531, v532, v533, v534, v535, v536, v537, v539, v541[0], v541[1], v545[0], v545[1], v549, theDicta);
          v198 = v252;
          v199 = v251;
          if (v258)
          {
LABEL_468:
            IntermediateScalingFormat = v258;
            goto LABEL_447;
          }
        }

        LODWORD(v526[0]) = v199;
        LODWORD(v525) = v198;
        if (*&v585[32])
        {
          v259 = 0;
          *(v182 + 280) = *v585;
          while (1)
          {
            v260 = *&v585[8 * v259 + 32];
            if (!v260)
            {
LABEL_370:
              LODWORD(v530[0]) = v259 + v571;
              v47 = v580;
              goto LABEL_375;
            }

            LODWORD(v478) = v259;
            TexDescGlobalSample = vtCreateTexDescGlobalSample(v60, v187, v182 + 280, *v585, v260, *&v585[64]);
            if (TexDescGlobalSample)
            {
              break;
            }

            if (++v259 == 4)
            {
              goto LABEL_370;
            }
          }

          IntermediateScalingFormat = TexDescGlobalSample;
          v47 = v580;
        }

        else
        {
          OUTLINED_FUNCTION_45_0();
          v263 = (v262 & 1) != 0 || v587 != 0;
          v258 = vtmtsBuildSource(v60, v585, v263, v182 + 280, v545[0], v187);
          LODWORD(v530[0]) = v571;
          if (v258)
          {
            goto LABEL_468;
          }

LABEL_375:
          if (v594[4])
          {
            v59 = 0;
            v47 = 0;
            while (1)
            {
              v264 = v594[v59 + 4];
              if (!v264)
              {
LABEL_382:
                OUTLINED_FUNCTION_55_0();
                goto LABEL_383;
              }

              v265 = *v585;
              v266 = v594[0];
              v267 = v594[8];
              if (v187)
              {
                CFArrayGetCount(v187);
              }

              OUTLINED_FUNCTION_60_0();
              v270 = vtCreateTexDescGlobalWrite(v60, v265, v187, v182 + 1564, v266, v264, v267, v269, v59, v268, v481, SHIDWORD(v481));
              if (v270)
              {
                break;
              }

              v59 = (v59 + 1);
              if (v59 == 4)
              {
                goto LABEL_382;
              }
            }

            IntermediateScalingFormat = v270;
            v47 = v580;
LABEL_398:
            v59 = __src;
          }

          else
          {
            if (v187)
            {
              v304 = CFArrayGetCount(v187);
            }

            else
            {
              v304 = 0;
            }

            HIDWORD(v594[0]) = v304;
            OUTLINED_FUNCTION_45_0();
            v306 = (v305 & 1) != 0 || v587 != 0;
            v307 = vtmtsBuildDestination(v60, v594, v306, v182 + 280, v187);
            if (!v307)
            {
LABEL_383:
              if (*(v182 + 64))
              {
                *(v182 + 404) = 0;
              }

              else if (*(v182 + 401) || *(v182 + 402))
              {
                *(v182 + 396) = 0;
              }

              if (v187)
              {
                v271 = CFRetain(v187);
              }

              else
              {
                v271 = 0;
              }

              *(v182 + 272) = v271;
              vtmtsFixUpProcessingShortcuts(v182 + 280, v587);
              *(v182 + 428) = *&v585[176];
              v272 = *&v585[184];
              *(v182 + 420) = *&v585[168];
              *(v182 + 436) = v272;
              *(v182 + 1672) = v594[15];
              v273 = v594[16];
              *(v182 + 1664) = v594[14];
              *(v182 + 1680) = v273;
              if (v585[74])
              {
                v595[0] = *&v585[80];
                OUTLINED_FUNCTION_75();
                *(v274 + 184) = v275;
                *(v274 + 200) = *(v276 + 112);
                setupAffine(0, v277, v595, v278, v279, v280, v281, v282, v283, v545[0]);
                *(v182 + 400) = 0;
                *(v182 + 396) = 0;
              }

              else
              {
                v284 = *(v182 + 396);
                if (v284)
                {
                  *(v182 + 404) = 0;
                }

                if (*(v182 + 66))
                {
                  v285 = *(v182 + 65) != 0;
                }

                else
                {
                  v285 = 1;
                }

                v286 = (v531 & 1) != 0 || *(v47 + 1958) != 0;
                *&v494 = v182 + 2184;
                *(&v494 + 1) = v182 + 2192;
                setupRenderRotationAndCrop(v60, v284 != 0, v594, (v47 + 2161), v576, 0, *v585, v285, *(v182 + 64), LODWORD(v541[0]) == 2, *(v182 + 400), v286, (*(v182 + 404) != 0) & (v525 & LOBYTE(v526[0]) ^ 1), v585[209], v585[210], *&v585[212], *&v585[128], *&v585[132], *&v585[136], *&v585[140], *&v585[144], *&v585[148], v594[9], SHIDWORD(v594[9]), v594[10], SHIDWORD(v594[10]), v594[11], SHIDWORD(v594[11]), (v182 + 80), (v182 + 88), v545[0], v494);
              }

              if (HIDWORD(v539) && (v539 == 2 || *(v182 + 66)))
              {
                LODWORD(v595[0]) = 0;
                if (v594[2])
                {
                  FigCFDictionaryGetInt32IfPresent();
                }

                v288 = OUTLINED_FUNCTION_33_1();
                setupBackgroundColor(v288, v294, v295, v296, v289, v290, v291, v292, v293, *(v182 + 104));
                *(v182 + 1695) = 1;
                *(v545[0] + 104) = *&v585[204];
                if (!v187)
                {
                  goto LABEL_414;
                }

LABEL_410:
                v287 = CFArrayGetCount(v187);
              }

              else
              {
                if (v187)
                {
                  goto LABEL_410;
                }

LABEL_414:
                v287 = 0;
              }

              if (*(v182 + 2184))
              {
                *(v182 + 380) = v287++;
              }

              if (*(v182 + 2192))
              {
                *(v182 + 384) = v287++;
              }

              if (*(v182 + 2200))
              {
                *(v182 + 388) = v287;
              }

              if (v564 && *(v182 + 64))
              {
                v297 = 0;
                goto LABEL_428;
              }

              if (!*(v182 + 400))
              {
                v297 = 1;
                goto LABEL_428;
              }

              v298 = v541[0];
              if (*(v182 + 405))
              {
                v297 = 1;
                goto LABEL_429;
              }

              v297 = 1;
              if (!*(v182 + 1644) && *&v585[196] == 1)
              {
                if (*&v585[200] == 1 && LODWORD(v594[17]) == 1)
                {
                  v297 = HIDWORD(v594[17]) != 1;
                }

LABEL_428:
                v298 = v541[0];
              }

LABEL_429:
              if (v298 == 2)
              {
                VTMTSRenderPassDescriptorSetFunctionName(v182, @"VTMTSFragmentFunction");
                goto LABEL_434;
              }

              if (v298 == 3)
              {
                if (v297)
                {
                  VTMTSRenderPassDescriptorSetFunctionName(v182, @"VTMTSComputeFunction");
                  goto LABEL_435;
                }

                VTMTSRenderPassDescriptorSetFunctionName(v182, @"VTMTSComputeFunction1x1");
LABEL_445:
                v299 = vdupq_n_s64(1uLL);
              }

              else
              {
LABEL_434:
                if (!v297)
                {
                  goto LABEL_445;
                }

LABEL_435:
                v299 = *v504;
              }

              *(v182 + 176) = v299;
              *(v182 + 192) = 1;
              v301 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(v182 + 66) == 0), 0x1FuLL)), v594[10], v594[11]);
              *&v302 = v301.i32[0];
              *(&v302 + 1) = v301.i32[1];
              *(v182 + 152) = v302;
              *(v182 + 168) = 1;
              HIDWORD(__dst[25]) = 1065353216;
              memcpy(v585, __dst, sizeof(v585));
              CFArrayAppendValue(v568, v182);
              IntermediateScalingFormat = 0;
              *(v182 + 120) = v560;
              *(v182 + 128) = v556;
              v571 = v530[0];
              v556 = 0;
              v560 = 0;
              goto LABEL_447;
            }

            IntermediateScalingFormat = v307;
          }
        }

        if (v182)
        {
          goto LABEL_447;
        }

LABEL_448:
        if (v187)
        {
          CFRelease(v187);
        }

        Mutable = v568;
        if (IntermediateScalingFormat)
        {
          goto LABEL_720;
        }

        v149 = allocator;
        if (*&v585[136] != __src[10])
        {
          OUTLINED_FUNCTION_9_8();
          MEMORY[0x193AE3010](&unk_1ED6D3CE8);
          Instance = _CFRuntimeCreateInstance();
          CFArrayAppendValue(v568, Instance);
          if (Instance)
          {
            CFRelease(Instance);
          }

          v150 = 0;
          if (v536)
          {
            continue;
          }
        }

        goto LABEL_603;
      }
    }

    v584 = 0;
    memset(v595, 0, sizeof(v595));
    FigCFDictionaryGetBooleanIfPresent();
    if (*v585 == 1647392369)
    {
      *&v595[0] = 0x300000002;
      v146 = 2;
      if (!v584)
      {
        v148 = 2;
        goto LABEL_473;
      }

      v147 = v595 + 8;
      v148 = 3;
    }

    else
    {
      v146 = 4;
      LODWORD(v595[0]) = 4;
      if (!v584)
      {
        v148 = 1;
        goto LABEL_473;
      }

      v147 = v595 + 4;
      v148 = 2;
    }

    *v147 = 5;
LABEL_473:
    v149 = allocator;
    v308 = 0;
    v571 = 0;
    HIDWORD(v535) = 0;
    v531 = v148 - 1;
    v525 = &__dst[21];
    v522 = &__dst[22];
    v534 = *MEMORY[0x1E69661F8];
    v516 = &v594[14] + 1;
    v519 = &v585[172];
    v513 = &v585[73];
    v529 = *v145;
    v536 = v148;
    *v530 = xmmword_18FED05F0;
    *v526 = xmmword_18FED05E0;
    while (1)
    {
      v309 = [(__CFDictionary *)v60 newBufferWithLength:16 options:0, v478];
      v310 = v309;
      if (v309)
      {
        v311 = [v309 contents];
        if (v311)
        {
          *v311 = *v526;
        }
      }

      v312 = *v576 ? *v576 : @"com.apple.VideoToolbox.VTMetalTransferSession";
      v561 = v310;
      [v310 setLabel:v312];
      v313 = [(__CFDictionary *)v60 newBufferWithLength:212 options:0];
      v314 = *v576 ? *v576 : @"com.apple.VideoToolbox.VTMetalTransferSession";
      v550 = v313;
      [v313 setLabel:v314];
      memcpy(v594, __src, sizeof(v594));
      memcpy(__dst, v585, sizeof(__dst));
      v592 = 0;
      *&v315 = *&v585[136];
      *(&v315 + 1) = *&v585[140];
      OUTLINED_FUNCTION_1_21();
      MEMORY[0x193AE3010](&_MergedGlobals_1);
      v316 = v149;
      v317 = OUTLINED_FUNCTION_86();
      *(v317 + 24) = v315;
      *&v318 = OUTLINED_FUNCTION_64_0(v317);
      *(v319 + 1694) = 0;
      v320 = [(__CFDictionary *)v60 newBufferWithLength:1000 options:0, v318];
      *(v317 + 104) = v320;
      v321 = *v576 ? *v576 : @"com.apple.VideoToolbox.VTMetalTransferSession";
      [v320 setLabel:v321];
      v565 = [*(v317 + 104) contents];
      v322 = CFArrayCreateMutable(v316, 0, MEMORY[0x1E695E9C0]);
      if (!*&v585[212] && !v585[209] && !v585[210])
      {
        v323 = v308 == v531 && *&v585[136] == LODWORD(__src[10]);
        v324 = v323 && *&v585[140] == HIDWORD(__src[10]);
        if (v324 && !v585[74])
        {
          break;
        }
      }

      v326 = VTGetBitsPerComponentFromPixelFormatType(__src[0]) > 12 && LODWORD(__src[0]) != 1380411457;
      v327 = *(v47 + 2185);
      if (*(v47 + 2185))
      {
        v327 = *(v47 + 2201) != 0;
      }

      v328 = (v326 & v327) == 0;
      if ((v326 & v327) != 0)
      {
        v329 = 1380410945;
      }

      else
      {
        v329 = 1380411457;
      }

      v59[69] = vcvt_s32_f32(v59[49]);
      *&v330 = *&v585[136];
      v59[51] = *&v585[136];
      *(&v330 + 1) = v330;
      *(v59 + 35) = v330;
      v331 = 65;
      if (!v328)
      {
        v331 = 105;
      }

      v332 = 115;
      if (!v328)
      {
        v332 = 125;
      }

      if (v146 == 2)
      {
        v333 = v331;
      }

      else
      {
        v333 = v332;
      }

      v59[37] = v333;
      v59[38] = 0;
      LODWORD(__dst[8]) = 2;
      LODWORD(v594[0]) = v329;
      LODWORD(v594[8]) = 2;
      v59[64] = v333;
      v59[65] = 0;
      LODWORD(v594[14]) = __dst[21];
      LODWORD(v594[15]) = __dst[22];
      LODWORD(v594[16]) = __dst[23];
      if (!vtAllocateMetalTextureForList(v60, v330, SDWORD1(v330), v333, 0, v573))
      {
        goto LABEL_518;
      }

LABEL_520:
      v546 = v308;
      v334 = v59[64];
      LODWORD(v540) = v334 == 0;
      v557 = v594[3];
      if (!v334)
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_25_2();
        v340 = OUTLINED_FUNCTION_77(v335, v336, v337, v338, v339, v522, v478, v481, v483, v485, v486, v487, v317 + 280, v519, v516, v561, (v317 + 2200), v513, &v592, v497, v499, v501, v503, v505, v506, v507, v509, v513, v516, v519, v522, v523, v524, v525, v526[0], v526[1], v527, v529, v530[0], v530[1], v531, v532, v533, v534, v535, v536, v537, v539, v540, v543, v308, v547, v550, theDicta);
        if (v340)
        {
          goto LABEL_596;
        }
      }

      if (*&v585[32])
      {
        v341 = 0;
        *(v317 + 280) = *v585;
        while (1)
        {
          v342 = *&v585[8 * v341 + 32];
          if (!v342)
          {
LABEL_527:
            v344 = v341 + v571;
            v47 = v580;
            goto LABEL_529;
          }

          LODWORD(v478) = v341;
          v343 = vtCreateTexDescGlobalSample(v60, v322, v317 + 280, *v585, v342, *&v585[64]);
          if (v343)
          {
            break;
          }

          if (++v341 == 4)
          {
            goto LABEL_527;
          }
        }

        IntermediateScalingFormat = v343;
      }

      else
      {
        v340 = vtmtsBuildSource(v60, v585, 0, v317 + 280, v565, v322);
        v344 = v571;
        if (v340)
        {
          goto LABEL_596;
        }

LABEL_529:
        theDictb = v344;
        if (!v59[64])
        {
          if (v322)
          {
            v387 = CFArrayGetCount(v322);
          }

          else
          {
            v387 = 0;
          }

          HIDWORD(v594[0]) = v387;
          v340 = vtmtsBuildDestination(v60, v594, *(v317 + 392), v317 + 280, v322);
          if (v340)
          {
LABEL_596:
            IntermediateScalingFormat = v340;
            theDictb = v571;
            v385 = v561;
            v384 = v550;
            v383 = HIDWORD(v535);
            goto LABEL_581;
          }

LABEL_537:
          if (v322)
          {
            v351 = CFRetain(v322);
          }

          else
          {
            v351 = 0;
          }

          *(v317 + 272) = v351;
          vtmtsFixUpProcessingShortcuts(v317 + 280, v592);
          *(v317 + 428) = *&v585[176];
          v352 = *&v585[184];
          *(v317 + 420) = *&v585[168];
          *(v317 + 436) = v352;
          *(v317 + 1672) = v59[75];
          v353 = v594[16];
          *(v317 + 1664) = v594[14];
          *(v317 + 1680) = v353;
          if (v334)
          {
            v354 = 0;
            v355 = 0;
            v356 = 0;
            v59[29] = 0;
            v59[30] = 0;
            v59[27] = 0;
            v59[28] = 0;
          }

          else
          {
            *(v59 + 29) = *&v585[88];
            *(v59 + 27) = *&v585[112];
            v354 = v585[209];
            v355 = v585[210];
            v356 = *&v585[212];
          }

          v357 = v561;
          if (v585[74])
          {
            OUTLINED_FUNCTION_75();
            v59[21] = v358;
            v588 = *(v59 + 29);
            v59[24] = v359;
            v589 = *(v59 + 27);
            setupAffine(0, v360, &v587, v361, v362, v363, v364, v365, v366, v565);
            *(v317 + 400) = 0;
          }

          else
          {
            v367 = *(v47 + 1794) == 0;
            v368 = *(v47 + 1793);
            *&v495 = v317 + 2184;
            *(&v495 + 1) = v317 + 2192;
            v357 = v561;
            v47 = v580;
            setupRenderRotationAndCrop(v60, 0, 0, (v580 + 2161), v576, 0, *v585, v367, v557 == 2, *(v317 + 64), *(v317 + 400), v368, *(v317 + 404), v354, v355, v356, *&v585[128], *&v585[132], *&v585[136], *&v585[140], *&v585[144], *&v585[148], v594[9], SHIDWORD(v594[9]), v594[10], SHIDWORD(v594[10]), v594[11], SHIDWORD(v594[11]), (v317 + 80), (v317 + 88), v565, v495);
          }

          if (HIDWORD(v539))
          {
            v587 = 0;
            if (v594[2])
            {
              FigCFDictionaryGetInt32IfPresent();
            }

            v369 = OUTLINED_FUNCTION_33_1();
            setupBackgroundColor(v369, v375, v376, v377, v370, v371, v372, v373, v374, *(v317 + 104));
            *(v317 + 1695) = 1;
            v565[13].i32[0] = *&v585[204];
          }

          if (v322)
          {
            v378 = CFArrayGetCount(v322);
          }

          else
          {
            v378 = 0;
          }

          if (*(v317 + 2184))
          {
            *(v317 + 380) = v378++;
          }

          if (*(v317 + 2192))
          {
            *(v317 + 384) = v378++;
          }

          if (*(v317 + 2200))
          {
            *(v317 + 388) = v378;
          }

          if (*(v317 + 400) && !*(v317 + 405))
          {
            v379 = 0;
            if (!*(v317 + 1644) && *&v585[196] == 1)
            {
              if (*&v585[200] != 1 || LODWORD(v594[17]) != 1)
              {
                goto LABEL_561;
              }

              v379 = HIDWORD(v594[17]) == 1;
            }
          }

          else
          {
LABEL_561:
            v379 = 0;
          }

          if (v557 == 3)
          {
            if (!v379)
            {
              VTMTSRenderPassDescriptorSetFunctionName(v317, @"VTMTSComputeFunction");
              goto LABEL_579;
            }

            VTMTSRenderPassDescriptorSetFunctionName(v317, @"VTMTSComputeFunction1x1");
          }

          else
          {
            if (v557 == 2)
            {
              VTMTSRenderPassDescriptorSetFunctionName(v317, @"VTMTSFragmentFunction");
            }

            if (!v379)
            {
LABEL_579:
              v380 = *v530;
              goto LABEL_580;
            }
          }

          v380 = vdupq_n_s64(1uLL);
LABEL_580:
          *(v317 + 176) = v380;
          *(v317 + 192) = 1;
          *&v382 = SLODWORD(v594[10]);
          *(&v382 + 1) = SHIDWORD(v594[10]);
          *(v317 + 152) = v382;
          *(v317 + 168) = 1;
          HIDWORD(__dst[25]) = 1065353216;
          LODWORD(__dst[0]) = v594[0];
          memcpy(v585, __dst, sizeof(v585));
          CFArrayAppendValue(Mutable, v317);
          IntermediateScalingFormat = 0;
          *(v317 + 120) = v357;
          *(v317 + 128) = v550;
          v383 = v540;
          v384 = 0;
          v385 = 0;
LABEL_581:
          CFRelease(v317);
          v571 = theDictb;
          goto LABEL_582;
        }

        v59 = 0;
        v47 = 0;
        while (1)
        {
          v345 = v594[v59 + 4];
          if (!v345)
          {
LABEL_536:
            OUTLINED_FUNCTION_55_0();
            Mutable = v568;
            goto LABEL_537;
          }

          v346 = LODWORD(v594[0]);
          v347 = v594[8];
          if (v322)
          {
            CFArrayGetCount(v322);
          }

          OUTLINED_FUNCTION_60_0();
          v350 = vtCreateTexDescGlobalWrite(v60, v346, v322, v317 + 1564, v346, v345, v347, v349, v59, v348, v481, SHIDWORD(v481));
          if (v350)
          {
            break;
          }

          v59 = (v59 + 1);
          if (v59 == 4)
          {
            goto LABEL_536;
          }
        }

        IntermediateScalingFormat = v350;
        v59 = __src;
        Mutable = v568;
      }

      v384 = v550;
      theDictb = v571;
      v47 = v580;
      v385 = v561;
      v383 = HIDWORD(v535);
      if (v317)
      {
        goto LABEL_581;
      }

LABEL_582:
      if (v322)
      {
        CFRelease(v322);
      }

      v149 = allocator;
      if (IntermediateScalingFormat)
      {
LABEL_720:
        Copy = v574;
        if (!Mutable)
        {
          goto LABEL_711;
        }

LABEL_156:
        CFRelease(Mutable);
        goto LABEL_711;
      }

      theDicta = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      if (v383)
      {
        v308 = v546 + 1;
        if (v546 + 1 == v536)
        {
LABEL_603:
          Copy = v574;
          goto LABEL_604;
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_8();
        MEMORY[0x193AE3010](&unk_1ED6D3CE8);
        v386 = _CFRuntimeCreateInstance();
        CFArrayAppendValue(Mutable, v386);
        if (v386)
        {
          CFRelease(v386);
        }

        v308 = v546 + 1;
        if (v546 + 1 == v536)
        {
          goto LABEL_206;
        }
      }

      HIDWORD(v535) = v383;
      v146 = *(v595 + v308);
    }

    __dst[17] = __PAIR64__(*&v585[140], __src[10]);
LABEL_518:
    LOBYTE(v587) = 0;
    getKernelTypeCapabilities_source((v47 + 2161), *v585, 0, &v587);
    if (v587)
    {
      *&v585[68] = 3;
      LODWORD(v594[3]) = 3;
      *(v317 + 16) = 3;
      FigCFDictionaryGetIntIfPresent();
      *(v317 + 2168) = v146;
      *(v317 + 400) = 1;
      *(v317 + 404) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_12_6();
      FigSignalErrorAtGM();
    }

    goto LABEL_520;
  }

  v65 = CFArrayGetCount(v574);
  v585[0] = 0;
  LOBYTE(v594[0]) = 0;
  if (CFArrayGetCount(v574) >= 1)
  {
    v66 = OUTLINED_FUNCTION_27();
    CFArrayGetValueAtIndex(v66, v67);
  }

  OUTLINED_FUNCTION_58_0();
  FigCFDictionaryGetInt32IfPresent();
  v68 = __dst[0];
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_41_1();
  FigCFDictionaryGetInt32IfPresent();
  KernelTypeCapabilities = getKernelTypeCapabilities((v580 + 2161), v68, __dst[0], v585, v594);
  if (LOBYTE(v594[0]))
  {
    v77 = 3;
  }

  else
  {
    v77 = 2 * (v585[0] != 0);
  }

  if (*(v580 + 1945))
  {
    v78 = 2;
  }

  else
  {
    v78 = v77;
  }

  if (v585[0])
  {
    OUTLINED_FUNCTION_49_0();
    if (!v49)
    {
      v78 = v79;
    }
  }

  if (v65 <= 8)
  {
    v108 = v60;
    Copy = v574;
    IntermediateScalingFormat = vtmtsAppendCompositePass(v108, (v580 + 2161), v574, 0, 0, __src, v537, v78, v573, v576, Mutable);
    if (IntermediateScalingFormat)
    {
      goto LABEL_155;
    }
  }

  else
  {
    v80 = OUTLINED_FUNCTION_82(KernelTypeCapabilities, v70, v71, v72, v73, v74, v75, v76, v478, v480, v482, v484, v486, v487, v488, v489, v490, v491, v492, v493, v496, v497, v499, v501, v503, v505, v506, v507, v509, v511, v514, v517, v520, v523, v524, v525, v526[0], v526[1], v527, v528, v530[0], v530[1], v531, v532, v533, v534, v535, v536, v537, v539, v540, v543, v544, v547, v548, theDict, &__src[18] + 4, v558, v562, v566, v567, Mutable, v570);
    bzero(__dst, 0xA8uLL);
    v578 = v80;
    MutableCopy = CFArrayCreateMutableCopy(allocator, v80, v65);
    v82 = vtAllocateMetalTextureForList(v60, SLODWORD(__src[11]), SHIDWORD(__src[11]), 115, 0, v573);
    if (v82)
    {
      IntermediateScalingFormat = v82;
      v103 = 0;
      v87 = 0;
      v90 = 0;
      v91 = 0;
    }

    else
    {
      v83 = OUTLINED_FUNCTION_27();
      v87 = CFDictionaryCreateMutable(v83, v84, v85, v86);
      if (v87)
      {
        FigCFDictionarySetFloat();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetFloat();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
        FigCFDictionarySetFloat();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v88 = CFDictionaryCreateMutableCopy(allocator, 0, __src[1]);
      if (v88)
      {
        FigCFDictionarySetInt32();
      }

      v563 = v88;
      v89 = v578;
      if (v578 >= 1)
      {
        v559 = v78;
        v90 = 0;
        v92 = 0;
        while (1)
        {
          v93 = v89;
          if (v90)
          {
            CFRelease(v90);
          }

          if (v89 == v578)
          {
            v94 = 8;
          }

          else
          {
            v94 = 7;
          }

          if (v94 < v89)
          {
            v89 = v94;
          }

          v95 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v90 = v95;
          if (v93 != v578)
          {
            CFArrayAppendValue(v95, v87);
          }

          do
          {
            v96 = CFArrayGetValueAtIndex(MutableCopy, 0);
            CFArrayAppendValue(v90, v96);
            CFArrayRemoveValueAtIndex(MutableCopy, 0);
            --v89;
          }

          while (v89);
          if (v93 <= v94)
          {
            v97 = __src;
            v99 = v538;
            v100 = v555;
          }

          else
          {
            v97 = __dst;
            memcpy(__dst, __src, 0xA8uLL);
            LODWORD(__dst[0]) = 1380411457;
            __dst[1] = v563;
            v98 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
            __dst[2] = v98;
            __dst[4] = 115;
            LODWORD(__dst[8]) = 2;
            HIDWORD(__dst[16]) = getNativeTextureTypeForPixelFormat(__dst[0]);
            getSubsamplingFromPixelDescription(v98, &__dst[17], &__dst[17] + 1);
            v99 = __dst[2];
            v100 = (&__dst[18] + 4);
          }

          v91 = CFRetain(v99);
          if (v93 != v578)
          {
            *v100 = 0;
            v100[1] = 0;
          }

          v47 = v580;
          appended = vtmtsAppendCompositePass(v60, (v580 + 2161), v90, v93 != v578, v92, v97, v91, v559, v573, v576, v569);
          if (appended)
          {
            break;
          }

          if (MutableCopy)
          {
            v89 = CFArrayGetCount(MutableCopy);
          }

          else
          {
            v89 = 0;
          }

          if (v93 > v94)
          {
            OUTLINED_FUNCTION_9_8();
            MEMORY[0x193AE3010](&unk_1ED6D3CE8);
            v102 = _CFRuntimeCreateInstance();
            CFArrayAppendValue(v569, v102);
            if (v102)
            {
              CFRelease(v102);
            }
          }

          v92 = v578 + ~v89;
          v59 = __src;
          if (v89 <= 0)
          {
            goto LABEL_142;
          }
        }

        IntermediateScalingFormat = appended;
        v59 = __src;
      }

      else
      {
        v90 = 0;
        v91 = 0;
LABEL_142:
        IntermediateScalingFormat = 0;
      }

      v103 = v563;
    }

    Copy = v574;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v90)
    {
      CFRelease(v90);
    }

    if (v91)
    {
      CFRelease(v91);
    }

    if (v87)
    {
      CFRelease(v87);
    }

    if (v103)
    {
      CFRelease(v103);
    }

    Mutable = v569;
    if (IntermediateScalingFormat)
    {
LABEL_155:
      if (!Mutable)
      {
        goto LABEL_711;
      }

      goto LABEL_156;
    }
  }

LABEL_604:
  IntermediateScalingFormat = 0;
  cf = Mutable;
  if (!Mutable)
  {
LABEL_605:
    v388 = *(v47 + 2096);
    *(v47 + 2096) = 0;

    v389 = *(v47 + 2104);
    *(v47 + 2104) = 0;

    v390 = *(v47 + 2112);
    *(v47 + 2112) = 0;

    v391 = *(v47 + 2120);
    *(v47 + 2120) = 0;

    v392 = *(v47 + 2040);
    *(v47 + 2040) = 0;

    v393 = *(v47 + 2024);
    *(v47 + 2024) = 0;

    v394 = *(v47 + 2032);
    *(v47 + 2032) = 0;

    v395 = *(v47 + 32);
    *(v47 + 32) = Copy;
    if (Copy)
    {
      CFRetain(Copy);
    }

    if (v395)
    {
      CFRelease(v395);
    }

    v396 = *(v47 + 40);
    *(v47 + 40) = theArray;
    if (theArray)
    {
      CFRetain(theArray);
    }

    if (v396)
    {
      CFRelease(v396);
    }

    memcpy((v47 + 192), v583, 0x638uLL);
    Mutable = cf;
    if (!cf)
    {
      goto LABEL_710;
    }
  }

LABEL_614:
  v397 = 0;
  v398 = &_MergedGlobals_1;
  while (1)
  {
    v399 = CFArrayGetCount(Mutable);
    v400 = cf;
    if (v399 <= v397)
    {
      break;
    }

    v401 = CFArrayGetValueAtIndex(cf, v397);
    if (v401)
    {
      v402 = v401;
      v403 = CFGetTypeID(v401);
      OUTLINED_FUNCTION_1_21();
      MEMORY[0x193AE3010](v398);
      if (v403 == _MergedGlobals_393)
      {
        v404 = *(v402 + 34);
        if (v404)
        {
          v405 = CFArrayGetCount(v404);
          if (v405)
          {
            v406 = v405;

            v407 = [*(v47 + 2000) newBufferWithLength:16 * v406 options:0];
            *(v402 + 14) = v407;
            if (*(v47 + 1784))
            {
              v408 = *(v47 + 1784);
            }

            else
            {
              v408 = @"com.apple.VideoToolbox.VTMetalTransferSession";
            }

            [v407 setLabel:{v408, v478}];
          }
        }

        v409 = *(v47 + 2000);
        v410 = *(v47 + 1784);
        v411 = *(v47 + 2136);
        v402[1692] = 0;
        v402[1693] = *(v47 + 1973);
        v412 = *(v402 + 4);
        if (v412 == 3)
        {

          OUTLINED_FUNCTION_65_0();
          if (v423 != 3)
          {
            OUTLINED_FUNCTION_12_6();
            IntermediateScalingFormat = FigSignalErrorAtGM();
            v425 = 0;
            v426 = 0;
            v431 = 0;
            goto LABEL_691;
          }

          loadMTLFunctionConstants(v402 + 70, __dst);
          Current = CFAbsoluteTimeGetCurrent();
          v425 = __dst[0];
          v426 = [v411 newFunctionWithName:*(v402 + 7) constantValues:__dst[0] error:v585];
          v427 = CFAbsoluteTimeGetCurrent();
          if (v426)
          {
            v428 = v427;
            if (v410)
            {
              v429 = v410;
            }

            else
            {
              v429 = @"com.apple.VideoToolbox.VTMetalTransferSession";
            }

            [v426 setLabel:{v429, v478}];
            v430 = [v409 newComputePipelineStateWithFunction:v426 error:v585];
            v431 = v430;
            if (!*v585)
            {
              v432 = v398;
              v433 = [v430 threadExecutionWidth];
              v434 = [v431 maxTotalThreadsPerThreadgroup];
              v435 = v434;
              v436 = *(v402 + 23);
              if (v402[64])
              {
                v437 = *(v402 + 13);
                if (v437 && [v437 contents])
                {
                  OUTLINED_FUNCTION_48_0();
                  if (v435 < v440)
                  {
                    goto LABEL_644;
                  }

                  v458 = *(v402 + 3);
                  v459 = *(v402 + 5);
                  v441.i32[0] = *(v438 + 40);
                  v460 = *(v438 + 56);
                  v461 = *v441.i32 * v435;
                  v462 = fabsf(v461);
                  *v442.i32 = (v435 - v440);
                  v463 = v435;
                  if ((v462 + v440) > v435)
                  {
                    v464.i64[0] = 0x8000000080000000;
                    v464.i64[1] = 0x8000000080000000;
                    v463 = vcvtms_u32_f32(fabsf(*vbslq_s8(v464, v442, v441).i32 / *v441.i32));
                    if (v463)
                    {
                      v461 = *v441.i32 * v463;
                      v462 = fabsf(v461);
                      goto LABEL_678;
                    }

LABEL_644:
                    IntermediateScalingFormat = 4294954394;
LABEL_690:
                    v398 = v432;
LABEL_691:

LABEL_692:
                    Copy = v574;
                    if (IntermediateScalingFormat)
                    {
                      goto LABEL_711;
                    }

                    v59 = __src;
                    goto LABEL_694;
                  }

LABEL_678:
                  v465 = v460 - *v442.i32;
                  v466 = v435 - 1;
                  v467 = v440 + vcvtps_u32_f32(v462);
                  if (v435 - 1 < v467)
                  {
                    v467 = v435 - 1;
                  }

                  v468 = vcvtms_u32_f32(v458 / v462);
                  if (*v441.i32 >= 0.0)
                  {
                    v466 = v467;
                  }

                  v469 = vcvtms_u32_f32(v462 * v468);
                  if (*v441.i32 < 0.0)
                  {
                    v460 = v465;
                  }

                  *(v438 + 136) = v461;
                  *(v438 + 140) = v460;
                  *(v438 + 144) = v466;
                  *(v438 + 148) = v440 + v458 + v435 * v468 - v469 - 1;
                  v470 = v458 / v462;
                  v471 = vcvtps_u32_f32(v470);
                  *(v438 + 152) = v463;
                  *(v438 + 156) = v459 - 1;
                  *(v402 + 28) = v435;
                  *(v402 + 232) = vdupq_n_s64(1uLL);
                  if (v435)
                  {
                    v472 = (v435 + v435 * v471 - 1) / v435;
                  }

                  else
                  {
                    v472 = 0;
                  }

                  *(v402 + 31) = v472;
                  *(v402 + 32) = v439;
                  *(v402 + 33) = 1;
                  OUTLINED_FUNCTION_48_0();
                  *(v402 + 25) = v473;
LABEL_688:
                  *(v402 + 26) = v454;
                  *(v402 + 27) = v457;
                }

                IntermediateScalingFormat = 0;
                *(v402 + 12) = v431;
                *v532 = v428 - Current;
                v431 = 0;
                goto LABEL_690;
              }

              v451 = *(v402 + 22);
              v452 = *(v402 + 19);
              v453 = v452;
              if (v451)
              {
                v453 = (v451 + v452 - 1) / v451;
              }

              v454 = *(v402 + 20);
              v455 = v454;
              if (v436)
              {
                v455 = (v436 + v454 - 1) / v436;
              }

              v456 = v434 / v433;
              if (v433 <= v434)
              {
                v455 = (v456 + v455 - 1) / v456;
              }

              *(v402 + 28) = v433;
              *(v402 + 29) = v456;
              v457 = 1;
              *(v402 + 30) = 1;
              *(v402 + 31) = (v433 + v453 - 1) / v433;
              *(v402 + 32) = v455;
              *(v402 + 33) = 1;
              if (v451)
              {
                v452 = (v451 + v452 - 1) / v451;
              }

              if (v436)
              {
                v454 = (v436 + v454 - 1) / v436;
              }

              *(v402 + 25) = v452;
              goto LABEL_688;
            }
          }

          else
          {
            v431 = 0;
          }

          IntermediateScalingFormat = 4294954394;
          goto LABEL_691;
        }

        if (v412 == 2)
        {

          OUTLINED_FUNCTION_65_0();
          if (v413 == 2)
          {
            loadMTLFunctionConstants(v402 + 70, __dst);
            v414 = CFAbsoluteTimeGetCurrent();
            v415 = v59[33];
            v416 = [v411 newFunctionWithName:@"VTMTSVertexFunction" constantValues:v415 error:v585];
            v417 = CFAbsoluteTimeGetCurrent();
            v581 = v415;
            if (!v416)
            {
              goto LABEL_659;
            }

            v418 = v417;
            if (v410)
            {
              v419 = v410;
            }

            else
            {
              v419 = @"com.apple.VideoToolbox.VTMetalTransferSession";
            }

            [v416 setLabel:{v419, v478}];
            v420 = CFAbsoluteTimeGetCurrent();
            v421 = *(v402 + 410);
            if (v421 == 1)
            {
              v422 = @"VTMTSFragmentFunction";
LABEL_649:
              v443 = [v411 newFunctionWithName:v422 constantValues:v415 error:v585];
              v444 = CFAbsoluteTimeGetCurrent();
              if (!v443)
              {
                goto LABEL_660;
              }

              v445 = v444;
              [v443 setLabel:v419];
              v446 = objc_alloc_init(MEMORY[0x1E6974148]);
              [v446 setVertexFunction:v416];
              [v446 setFragmentFunction:v443];
              v447 = *(v402 + 34);
              if (v447)
              {
                v448 = 0;
                do
                {
                  if (CFArrayGetCount(v447) <= v448)
                  {
                    break;
                  }

                  v449 = CFArrayGetValueAtIndex(*(v402 + 34), v448);
                  if (*(v449 + 16) == 1)
                  {
                    [objc_msgSend(objc_msgSend(v446 "colorAttachments")];
                  }

                  ++v448;
                  v447 = *(v402 + 34);
                }

                while (v447);
              }

              v450 = [v409 newRenderPipelineStateWithDescriptor:v446 error:v585];
              if (*v585)
              {
                IntermediateScalingFormat = 4294954394;
              }

              else
              {
                IntermediateScalingFormat = 0;
                *(v402 + 9) = v450;
                *v532 = v418 - v414 + v445 - v420;
                v450 = 0;
              }

              v398 = &_MergedGlobals_1;
            }

            else
            {
              if (v421 == 2)
              {
                v422 = @"VTMTSFragmentFunctionf";
                goto LABEL_649;
              }

              CFAbsoluteTimeGetCurrent();
LABEL_659:
              v443 = 0;
LABEL_660:
              v446 = 0;
              v450 = 0;
              IntermediateScalingFormat = 4294954394;
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_6();
            IntermediateScalingFormat = FigSignalErrorAtGM();
            v581 = 0;
            v416 = 0;
            v443 = 0;
            v446 = 0;
            v450 = 0;
          }

          goto LABEL_692;
        }

        IntermediateScalingFormat = 0;
        Copy = v574;
      }
    }

LABEL_694:
    ++v397;
    Mutable = cf;
    if (!cf)
    {
      v474 = *(v47 + 2152);
      *(v47 + 2152) = 0;
      goto LABEL_700;
    }
  }

  v474 = *(v47 + 2152);
  *(v47 + 2152) = cf;
  if (v400)
  {
    CFRetain(v400);
  }

LABEL_700:
  if (v474)
  {
    CFRelease(v474);
  }

  v475 = *(v47 + 32);
  *(v47 + 32) = Copy;
  if (Copy)
  {
    CFRetain(Copy);
  }

  if (v475)
  {
    CFRelease(v475);
  }

  v476 = *(v47 + 40);
  *(v47 + 40) = theArray;
  if (theArray)
  {
    CFRetain(theArray);
  }

  if (v476)
  {
    CFRelease(v476);
  }

LABEL_710:
  *(v47 + 72) = 1;
  *(v47 + 21) = 0;
LABEL_711:
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return IntermediateScalingFormat;
}