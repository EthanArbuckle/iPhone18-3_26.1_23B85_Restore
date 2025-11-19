uint64_t vtmtsSetupMetalDirectBlitter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v10 = 0;
  v11 = 0;
  v34 = 0;
  v35 = 0;
  if (!a1 || !a3 || !a4 || !a5 || !a6)
  {
    OUTLINED_FUNCTION_70();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_70();
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v13;
  v32 = v14;
  v33 = v15;
  v31 = v16;
  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  v18 = OUTLINED_FUNCTION_17();
  Mutable = CFArrayCreateMutable(v18, v19, v20);
  if (!Mutable)
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_1_21();
  MEMORY[0x193AE3010]();
  v8 = OUTLINED_FUNCTION_86();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 64) = 0;
  *(v8 + 66) = 0;
  loadMTLFunctionConstants((v8 + 280), &v34);
  v11 = v34;
  if (!v34 || (*(v8 + 56) = @"VTMTSComputeDirect_btp2_to_btp2", *(v8 + 16) = 4, v21 = [v17 newBufferWithLength:20 options:0], (*(v8 + 144) = v21) == 0) || (v22 = objc_msgSend(v21, "contents")) == 0)
  {
    v10 = 0;
LABEL_29:
    v9 = 0;
    v6 = 0;
    goto LABEL_21;
  }

  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *(v22 + 4) = 0;
  *(v22 + 8) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = [v33 newFunctionWithName:*(v8 + 56) constantValues:v11 error:&v35];
  v24 = CFAbsoluteTimeGetCurrent();
  if (v9)
  {
    v25 = v24;
    if (v32)
    {
      v26 = v32;
    }

    else
    {
      v26 = @"com.apple.VideoToolbox.VTMetalTransferSession";
    }

    [v9 setLabel:v26];
    v27 = [v17 newComputePipelineStateWithFunction:v9 error:&v35];
    v6 = v27;
    if (!v35)
    {
      *(v8 + 232) = [v27 maxTotalThreadsPerThreadgroup] >> 6;
      *(v8 + 240) = 1;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = xmmword_18FED0600;
      *(v8 + 96) = v6;
      v28 = OUTLINED_FUNCTION_61_0();
      CFArrayAppendValue(v28, v29);
      v10 = 0;
      *a6 = Mutable;
      *v31 = v25 - Current;
      Mutable = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = 4294954394;
LABEL_21:

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

const __CFDictionary *getCharacteristicsFromPixelDescription(const __CFDictionary *theDict, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (theDict)
  {
    v14 = theDict;
    if (a3)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a2)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a4)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a5)
    {
      CFDictionaryGetValue(v14, *MEMORY[0x1E6966248]);
      theDict = FigCFEqual();
      if (theDict)
      {
        v15 = 1;
      }

      else
      {
        theDict = FigCFEqual();
        if (theDict)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }
      }

      *a5 = v15;
    }

    if (a6)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a7)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a8)
    {

      return FigCFDictionaryGetInt32IfPresent();
    }
  }

  return theDict;
}

void vtmtsLoadColorFunctionConstantValues(const __CFDictionary *a1, const __CFDictionary *a2, CFDictionaryRef theDict, const __CFDictionary *a4, int *a5, int *a6, int *a7, int *a8, int *a9, int *a10, int *a11, int *a12)
{
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  yCbCrMatrixString = 0;
  getCharacteristicsFromPixelDescription(theDict, &v56 + 1, &v55 + 1, &v54 + 1, a8, 0, 0, 0);
  getCharacteristicsFromPixelDescription(a4, &v56, &v55, &v54, a12, 0, 0, 0);
  Value = 0;
  v18 = *MEMORY[0x1E6965F98];
  if (a1 && v18)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6965F98]);
  }

  OUTLINED_FUNCTION_43_0();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  if (a2 && v18)
  {
    CFDictionaryGetValue(a2, v18);
  }

  OUTLINED_FUNCTION_43_0();
  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  VTCreateYCbCrCFStringsAndProvideDefaults(Value, v20, v21, v22, &v53, &yCbCrMatrixString);
  v23 = 0;
  v24 = *MEMORY[0x1E6965CE8];
  if (a1 && v24)
  {
    v23 = CFDictionaryGetValue(a1, *MEMORY[0x1E6965CE8]);
  }

  v25 = 0;
  v26 = *MEMORY[0x1E6965EC8];
  v50 = a6;
  if (a1 && v26)
  {
    v25 = CFDictionaryGetValue(a1, v26);
  }

  v27 = 0;
  v28 = *MEMORY[0x1E6965D88];
  v51 = a7;
  if (a1 && v28)
  {
    v27 = CFDictionaryGetValue(a1, v28);
  }

  v29 = 0;
  v30 = *MEMORY[0x1E6965F30];
  v48 = v25;
  if (a1 && v30)
  {
    v29 = CFDictionaryGetValue(a1, v30);
  }

  v46 = v29;
  v31 = 0;
  v32 = *MEMORY[0x1E6965ED0];
  v47 = v27;
  if (a1 && v32)
  {
    v31 = CFDictionaryGetValue(a1, v32);
  }

  v33 = 0;
  v45 = v53;
  if (a2 && v24)
  {
    v33 = CFDictionaryGetValue(a2, v24);
  }

  v34 = 0;
  if (a2 && v26)
  {
    v34 = CFDictionaryGetValue(a2, v26);
  }

  v35 = 0;
  v36 = v23;
  if (a2 && v28)
  {
    v35 = CFDictionaryGetValue(a2, v28);
  }

  v37 = 0;
  if (a2 && v30)
  {
    v37 = CFDictionaryGetValue(a2, v30);
  }

  v38 = 0;
  if (a2 && v32)
  {
    v38 = CFDictionaryGetValue(a2, v32);
  }

  VTCreateColorAttachments(v36, v48, v47, v46, v31, v45, 0, v33, v34, v35, v37, v38, 0, 0, 0, &v58, &v57);
  v39 = 0;
  v40 = v58;
  if (v28 && v58)
  {
    v39 = CFDictionaryGetValue(v58, v28);
    v40 = v58;
  }

  v41 = 0;
  if (v30 && v40)
  {
    v41 = CFDictionaryGetValue(v40, v30);
  }

  v42 = 0;
  v43 = v57;
  if (v28 && v57)
  {
    v42 = CFDictionaryGetValue(v57, v28);
    v43 = v57;
  }

  v44 = 0;
  if (v30 && v43)
  {
    v44 = CFDictionaryGetValue(v43, v30);
  }

  if (a5)
  {
    *a5 = CVColorPrimariesGetIntegerCodePointForString(v39);
  }

  if (v50)
  {
    *v50 = CVTransferFunctionGetIntegerCodePointForString(v41);
  }

  if (v51)
  {
    *v51 = CVYCbCrMatrixGetIntegerCodePointForString(v53);
  }

  if (a9)
  {
    *a9 = CVColorPrimariesGetIntegerCodePointForString(v42);
  }

  if (a10)
  {
    *a10 = CVTransferFunctionGetIntegerCodePointForString(v44);
  }

  if (a11)
  {
    *a11 = CVYCbCrMatrixGetIntegerCodePointForString(yCbCrMatrixString);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (yCbCrMatrixString)
  {
    CFRelease(yCbCrMatrixString);
  }
}

uint64_t vtmtsAppendCompositePass(void *a1, unsigned __int8 *a2, const __CFArray *a3, int a4, int a5, unsigned int *a6, const __CFDictionary *a7, int a8, uint64_t a9, uint64_t a10, __CFArray *a11)
{
  HIDWORD(v121) = a8;
  HIDWORD(v113) = a5;
  HIDWORD(v115) = a4;
  v14 = a1;
  v15 = [a1 newBufferWithLength:16 options:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 contents];
    if (v17)
    {
      *v17 = xmmword_18FED05E0;
    }
  }

  if (*a10)
  {
    v18 = *a10;
  }

  else
  {
    v18 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v16 setLabel:v18];
  v146 = 0;
  v19 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_1_21();
  MEMORY[0x193AE3010]();
  v20 = OUTLINED_FUNCTION_86();
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  OUTLINED_FUNCTION_64_0(v20);
  *(v21 + 16) = HIDWORD(v121);
  if (HIDWORD(v121) == 3)
  {
    VTMTSRenderPassDescriptorSetFunctionName(v20, @"VTMTSComputeComposite");
  }

  v22 = [v14 newBufferWithLength:1000 options:0];
  *(v20 + 104) = v22;
  if (*a10)
  {
    v23 = *a10;
  }

  else
  {
    v23 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v22 setLabel:v23];
  v118 = [*(v20 + 104) contents];
  Mutable = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
  v122 = v20 + 280;
  *(v20 + 404) = *(a10 + 175);
  cf = Mutable;
  v117 = v16;
  if (!a3)
  {
    *(v20 + 1684) = 0;
    goto LABEL_50;
  }

  Count = CFArrayGetCount(a3);
  *(v20 + 1684) = Count;
  if (Count > 8)
  {
    v51 = FigSignalErrorAtGM();
    goto LABEL_71;
  }

  v91 = v11;
  if (!Count)
  {
LABEL_50:
    a6[1] = 8;
    v50 = *(a6 + 4);
    if (v50)
    {
      v51 = vtCreateTexDescGlobalWrite(v14, *a6, Mutable, v20 + 1564, *a6, v50, a6[16], 0, 0, 8, a6[34], a6[35]);
    }

    else
    {
      v73 = OUTLINED_FUNCTION_41_1();
      v51 = vtmtsBuildDestination(v73, v74, v75, v122, Mutable);
    }

    v16 = v117;
    if (!v51)
    {
      if ((*(v20 + 1640) - 3) <= 2)
      {
        *(v20 + 1660) = 1;
      }

      v59 = cf;
      if (cf)
      {
        v60 = CFRetain(cf);
        *(v20 + 272) = v60;
        OUTLINED_FUNCTION_79(v60, v61, v62, v63, v64, v65, v66, v67, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v89, v90, v91, v92, v93, v94, v95, v96, v97, a2, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, a7, v117, v118, cf, v121, v122);
        v68 = CFArrayGetCount(v59);
      }

      else
      {
        *(v20 + 272) = 0;
        OUTLINED_FUNCTION_79(v51, v52, v53, v54, v55, v56, v57, v58, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v89, v90, v91, v92, v93, v94, v95, v96, v97, a2, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, a7, v117, v118, 0, v121, v122);
        v68 = 0;
      }

      if (*(v20 + 2200))
      {
        *(v20 + 388) = v68;
      }

      *(v20 + 184) = xmmword_18FED0610;
      v70 = *(a6 + 10);
      *&v71 = v70;
      *(&v71 + 1) = SHIDWORD(v70);
      *(v20 + 152) = v71;
      *(v20 + 168) = xmmword_18FED0620;
      CFArrayAppendValue(a11, v20);
      v69 = 0;
      *(v20 + 120) = v16;
      v16 = 0;
      Mutable = cfa;
      goto LABEL_62;
    }

LABEL_71:
    v69 = v51;
    goto LABEL_62;
  }

  v26 = 0;
  v112 = &v128 + 1;
  v114 = *MEMORY[0x1E6966130];
  v110 = &v141;
  v111 = v129;
  v107 = (a6 + 31);
  v108 = &v139;
  v105 = (a6 + 28);
  v106 = (a6 + 30);
  v103 = (v20 + 428);
  v104 = (a6 + 32);
  v101 = (a6 + 29);
  v102 = &v140;
  v100 = (v20 + 2200);
  HIDWORD(v97) = HIDWORD(v121) == 2;
  v95 = (v20 + 88);
  v96 = (v20 + 80);
  v93 = v20 + 2192;
  v94 = v20 + 2184;
  v92 = *MEMORY[0x1E6966218];
  v27 = v118 + 13;
  v99 = a3;
  v109 = v14;
  while (1)
  {
    bzero(&v124, 0xD8uLL);
    v145 = 1065353216;
    v28 = OUTLINED_FUNCTION_61_0();
    ValueAtIndex = CFArrayGetValueAtIndex(v28, v29);
    v125 = ValueAtIndex;
    v128 = 256;
    v137 = v14;
    v138 = a10;
    v127 = HIDWORD(v121);
    v126 = v26;
    LODWORD(v123[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    v124 = v123[0];
    FigCFDictionaryGetFloatIfPresent();
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (v124 != 1111970369 && v124 != 1380410945 && v124 != 1380411457 && v124 != 1815162994)
    {
      v69 = FigSignalErrorAtGM();
      Mutable = cf;
      goto LABEL_57;
    }

    v35 = DescriptionWithPixelFormatType;
    v142[1] = 2;
    getSubsamplingFromPixelDescription(DescriptionWithPixelFormatType, &v143, &v144);
    vtmtsGetSrcCropDimensions(ValueAtIndex, &v133, &v134, &v131, &v132, &v135, &v136, v130, v129);
    if (CFArrayGetCount(a3) <= v26)
    {
      v38 = 0;
    }

    else
    {
      v36 = OUTLINED_FUNCTION_61_0();
      v38 = CFArrayGetValueAtIndex(v36, v37);
    }

    Mutable = cf;
    vtmtsLoadColorFunctionConstantValues(v38, *(a6 + 1), v35, a7, &v141 + 1, &v141, &v139, v142, v107, v106, v105, v104);
    *v103 = v141;
    v39 = v124;
    *(v20 + 420) = v139;
    v40 = v142[0];
    *(v20 + 436) = v142[0];
    v41 = a6[31];
    *(v20 + 1676) = v41;
    v42 = a6[30];
    *(v20 + 1672) = v42;
    v43 = a6[28];
    *(v20 + 1664) = v43;
    v44 = a6[32];
    *(v20 + 1680) = v44;
    v14 = v109;
    v45 = vtmtsSetUpProcessingNeeds(v109, v39, *a6, &v125, *(a6 + 1), v35, a7, &v141 + 1, &v141, &v139, v40, v41, v42, v43, v44, a10, v122, &v140, v101, v117, v100, &v128 + 1, &v146);
    if (v45)
    {
      break;
    }

    if (!HIDWORD(v115) || v26)
    {
      v45 = vtmtsBuildSource(v109, &v124, 1, v122, v118, cf);
      a3 = v99;
      if (v45)
      {
        break;
      }

      if (HIDWORD(v113))
      {
        if (!cf || (v46 = CFArrayGetCount(cf), v46 < 2))
        {
          v45 = FigSignalErrorAtGM();
          break;
        }

        v47 = CFArrayGetValueAtIndex(cf, v46 - 1);
        v47[5] += HIDWORD(v113);
      }
    }

    else
    {
      vtCreateTexDescGlobalSample(v109, cf, v122, v124, 115, 2);
      a3 = v99;
    }

    if (v129[0])
    {
      v48 = *(v20 + 404);
      v123[0] = v130[0];
      v123[1] = v130[1];
      v123[2] = v130[2];
      setupAffine(v26, v48, v123, v131, v132, v133, v134, v135, v136, v118);
    }

    else
    {
      *&v88 = v20 + 2184;
      *(&v88 + 1) = v20 + 2192;
      setupRenderRotationAndCrop(v109, 0, a6, a2, a10, v26, v124, *(a10 + 10) == 0, SBYTE4(v97), *(v20 + 64), *(v20 + 400), *(a10 + 9), *(v20 + 404), 0, 0, 0, v131, v132, v133, v134, v135, v136, *(a6 + 18), HIDWORD(*(a6 + 9)), *(a6 + 10), HIDWORD(*(a6 + 18)), a6[22], a6[23], v96, v95, v118, v88);
    }

    *(v20 + 400) = 0;
    if (!v26)
    {
      LODWORD(v123[0]) = 0;
      if (*(a6 + 2))
      {
        FigCFDictionaryGetInt32IfPresent();
        v49 = v123[0];
      }

      else
      {
        v49 = 0;
      }

      setupBackgroundColor(*(a6 + 37), *(a6 + 38), *(a6 + 39), *(a6 + 40), v124, *(v20 + 392), v139, v142[0], v49, *(v20 + 104));
      *(v20 + 1695) = 1;
    }

    v27->i32[0] = v145;
    v27 += 15;
    if (++v26 >= *(v20 + 1684))
    {
      goto LABEL_50;
    }
  }

  v69 = v45;
LABEL_57:
  v16 = v117;
LABEL_62:
  CFRelease(v20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v69;
}

uint64_t vtmtsBuildDestination(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, __CFArray *a5)
{
  v8 = *a2;
  getEquivalentUncompressedPixelFormat(*a2);
  v9 = *a2;
  if (a4)
  {
    *(a4 + 1284) = v9;
  }

  if (v9 == 32)
  {
    goto LABEL_286;
  }

  if (v9 == 40)
  {
    goto LABEL_178;
  }

  v10 = v9 == 590898736 || v9 == 590902832;
  if (v10)
  {
    goto LABEL_183;
  }

  if (v9 == 640955504)
  {
    goto LABEL_264;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_183;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
LABEL_226:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    if (v8 == v86)
    {
      v88 = 53;
    }

    else
    {
      v88 = 0;
    }

    if (v8 == v86)
    {
      v89 = 70;
    }

    else
    {
      v89 = 0;
    }

    v90 = 13;
    if (v8 != v86)
    {
      v90 = 0;
    }

    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    *&v157 = v87;
    *(&v156[0] + 1) = 10;
    v156[1] = 0x1EuLL;
    *(&v155 + 1) = 0x100000001;
    *&v154[16] = 0;
    *&v155 = v87;
    LODWORD(v153) = 0;
    v151 = v87;
    v148 = 0x46uLL;
    *(&v141 + 1) = 0x200000004;
    *&v138[16] = 0;
    *&v141 = v87;
    v137 = 3;
    *v154 = v90;
    *&v154[8] = 23;
    v146 = v89;
    *v138 = v88;
    *&v138[8] = 53;
    v91 = OUTLINED_FUNCTION_3_16();
    v96 = 502;
    v97 = 541;
LABEL_246:
    if (!appendDstTextureDescriptions(v91, v92, v93, v94, v95, v96, 3, v97, v137, *v138, *&v138[8], *&v138[16], v141, *(&v141 + 1), 0, 0, v146, v148, *(&v148 + 1), v151, 0x200000004, v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), 0, 0, *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158)))
    {
      if (a2[6] == 2 && !*(a4 + 1365))
      {
        v107 = OUTLINED_FUNCTION_57_0();

        return vtAllocateMetalTextureForList(v107, v108, v109, v110, v111, v112);
      }

      return 0;
    }

    return 4294954391;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_236;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
LABEL_183:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    if (v8 == v44)
    {
      v46 = 53;
    }

    else
    {
      v46 = 0;
    }

    if (v8 == v44)
    {
      v47 = 70;
    }

    else
    {
      v47 = 0;
    }

    v48 = 13;
    if (v8 != v44)
    {
      v48 = 0;
    }

    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    *&v157 = v45;
    *(&v156[0] + 1) = 10;
    v156[1] = 0x1EuLL;
    *(&v155 + 1) = 0x100000001;
    *&v156[0] = 0;
    *&v154[16] = 0;
    *&v155 = v45;
    LODWORD(v153) = 0;
    v150 = v45;
    v147 = 0x46uLL;
    *(&v140 + 1) = 0x200000004;
    v144 = 0;
    *&v138[16] = 0;
    *&v140 = v45;
    v137 = 3;
    *v154 = v48;
    *&v154[8] = 23;
    v145 = v47;
    *v138 = v46;
    *&v138[8] = 53;
    v49 = OUTLINED_FUNCTION_3_16();
    v54 = 500;
    v55 = 3;
    v56 = 540;
LABEL_193:
    if (!appendDstTextureDescriptions(v49, v50, v51, v52, v53, v54, v55, v56, v137, *v138, *&v138[8], *&v138[16], v140, *(&v140 + 1), v144, SHIDWORD(v144), v145, v147, *(&v147 + 1), v150, 0x200000004, v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), v156[0], SDWORD1(v156[0]), *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158)))
    {
      if (a2[6] == 2 && !*(a4 + 1365))
      {
        v57 = OUTLINED_FUNCTION_57_0();
        result = vtAllocateMetalTextureForList(v57, v58, v59, v60, v61, v62);
        if (result)
        {
          return 4294954391;
        }

        return result;
      }

      return 0;
    }

    return 4294954391;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_226;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_236;
  }

  if (v11 == 641877825)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
    goto LABEL_178;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
    goto LABEL_276;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
    goto LABEL_266;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
LABEL_256:
    if (!a4)
    {
      return 0;
    }

    *&v120 = OUTLINED_FUNCTION_4_16();
    v121 = 20;
    goto LABEL_313;
  }

  switch(v12)
  {
    case 642934849:
      goto LABEL_268;
    case 643969848:
      goto LABEL_205;
    case 644232304:
      goto LABEL_258;
    case 644624754:
    case 645346162:
LABEL_205:
      if (a4)
      {
        if (v12 == 644624754 || v12 == 645346162 || v12 == 1999843442 || v12 == 1815162994)
        {
          OUTLINED_FUNCTION_15_6();
          v149 = 0uLL;
          *(&v157 + 1) = v77;
          v158 = 0x100000000;
          OUTLINED_FUNCTION_6_13();
          *&v156[0] = v78;
          *(&v156[0] + 1) = 90;
          OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_23_2();
          *(&v139 + 1) = v79;
          *v143 = v80;
          OUTLINED_FUNCTION_54_0();
LABEL_282:
          v65 = a2;
LABEL_315:
          v67 = a4;
          v68 = a5;
          v69 = 0;
          goto LABEL_316;
        }

        OUTLINED_FUNCTION_15_6();
        *(&v157 + 1) = 0x100000001;
        v158 = 0x100000000;
        *&v157 = v136;
        v156[1] = 0xAuLL;
        *&v156[0] = 0;
        *(&v156[0] + 1) = 90;
        v41 = 0uLL;
        goto LABEL_279;
      }

      return 0;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_200;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_238;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_220;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
LABEL_283:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v125 = OUTLINED_FUNCTION_2_19();
    v139 = v125;
    *v143 = v125;
    v65 = OUTLINED_FUNCTION_0_21();
    v70 = 510;
    v71 = 3;
    goto LABEL_285;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_200;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
LABEL_238:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v101 = OUTLINED_FUNCTION_2_19();
    v139 = v101;
    *v143 = v101;
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_46_0();
LABEL_285:
    v83 = 548;
    goto LABEL_319;
  }

  if (v14 == 758670896 || v14 == 758674992)
  {
    goto LABEL_183;
  }

  if (v14 == 759318337)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
    goto LABEL_200;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
LABEL_220:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v84 = OUTLINED_FUNCTION_2_19();
    v139 = v84;
    *v143 = v84;
    v65 = OUTLINED_FUNCTION_0_21();
    v70 = 509;
    v71 = 3;
    goto LABEL_222;
  }

  if (v16 == 792225328 || v16 == 792229424)
  {
    goto LABEL_183;
  }

  if (v16 == 792872769)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
LABEL_200:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v72 = OUTLINED_FUNCTION_2_19();
    v139 = v72;
    *v143 = v72;
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_46_0();
LABEL_222:
    v83 = 547;
    goto LABEL_319;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
    goto LABEL_220;
  }

  switch(v18)
  {
    case 846624102:
    case 846624121:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      v149 = 0uLL;
      OUTLINED_FUNCTION_4_16();
      *&v156[0] = 0;
      *(&v156[0] + 1) = 70;
      OUTLINED_FUNCTION_20_2();
      *v143 = v123;
      *&v143[16] = v123;
      OUTLINED_FUNCTION_72();
      v65 = OUTLINED_FUNCTION_3_16();
      v70 = 562;
      goto LABEL_317;
    case 875704422:
    case 875704438:
      goto LABEL_183;
    case 875704934:
    case 875704950:
      goto LABEL_226;
    case 875836518:
    case 875836534:
LABEL_236:
      if (a4)
      {
        OUTLINED_FUNCTION_15_6();
        *(&v157 + 1) = 0x100000001;
        v158 = 0;
        *&v157 = v98;
        *(&v156[0] + 1) = 10;
        v156[1] = 0x1EuLL;
        *(&v155 + 1) = 0x100000001;
        *&v156[0] = 0;
        *&v154[16] = 0;
        *&v155 = v98;
        LODWORD(v153) = 0;
        *&v143[16] = 0u;
        v149 = 0u;
        OUTLINED_FUNCTION_11_7();
        v137 = 3;
        *v154 = v100;
        *&v154[8] = v99;
        v65 = OUTLINED_FUNCTION_3_16();
        v70 = 503;
        v71 = 3;
        v83 = 542;
        goto LABEL_319;
      }

      return 0;
    case 1111970369:
      goto LABEL_218;
  }

  OUTLINED_FUNCTION_66_0();
  if (v10)
  {
    goto LABEL_220;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
    if (!a4)
    {
      return 0;
    }

    *&v120 = OUTLINED_FUNCTION_4_16();
    v121 = 55;
    goto LABEL_313;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
LABEL_276:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      *&v41 = OUTLINED_FUNCTION_4_16();
      v42 = 25;
      goto LABEL_278;
    }

    return 0;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
LABEL_266:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      *&v41 = OUTLINED_FUNCTION_4_16();
      v42 = 20;
      goto LABEL_278;
    }

    return 0;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
    goto LABEL_256;
  }

  switch(v12)
  {
    case 1378955371:
      goto LABEL_260;
    case 1380410945:
      if (!a4)
      {
        return 0;
      }

      *&v120 = OUTLINED_FUNCTION_4_16();
      v121 = 125;
      goto LABEL_313;
    case 1380411457:
LABEL_268:
      if (a4)
      {
        OUTLINED_FUNCTION_15_6();
        *&v41 = OUTLINED_FUNCTION_4_16();
        v42 = 115;
        goto LABEL_278;
      }

      return 0;
    case 1647534392:
      goto LABEL_205;
    case 1647719521:
      if (!a4)
      {
        return 0;
      }

      v158 = 0;
      v157 = 0u;
      memset(v156, 0, sizeof(v156));
      OUTLINED_FUNCTION_35_1();
      *v154 = 103;
LABEL_314:
      LODWORD(v153) = 0;
      *&v143[16] = v120;
      v149 = v120;
      OUTLINED_FUNCTION_11_7();
      v137 = 0;
      v65 = a2;
      v66 = 2;
      goto LABEL_315;
    case 1751527984:
    case 1751527986:
    case 1751528500:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_29_1();
      *&v156[1] = 65;
      *&v156[0] = 0;
      *(&v156[0] + 1) = 25;
      *&v102 = OUTLINED_FUNCTION_10_8();
      LODWORD(v153) = 0;
      goto LABEL_272;
    case 1815162994:
      goto LABEL_205;
    case 1815491698:
      if (!a4)
      {
        return 0;
      }

      v158 = 0;
LABEL_312:
      *&v157 = 0;
      *(&v157 + 1) = 1;
      v120 = 0uLL;
      v156[1] = 0u;
      v121 = 110;
LABEL_313:
      *&v156[0] = 0;
      *(&v156[0] + 1) = v121;
      v155 = v120;
      *&v154[16] = 0;
      *v154 = v120;
      goto LABEL_314;
    case 1882468912:
LABEL_223:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      *&v85 = OUTLINED_FUNCTION_2_19();
      v139 = v85;
      *v143 = v85;
      v65 = OUTLINED_FUNCTION_0_21();
      v70 = 508;
      v71 = 3;
      goto LABEL_225;
    case 1882468914:
      goto LABEL_220;
    case 1882469428:
      goto LABEL_283;
    case 1885745712:
      goto LABEL_198;
    case 1885745714:
      goto LABEL_200;
    case 1885746228:
      goto LABEL_238;
    case 1886859824:
      goto LABEL_198;
    case 1886859826:
      goto LABEL_200;
    case 1886860340:
      goto LABEL_238;
    case 1915892016:
LABEL_260:
      if (a4)
      {
        OUTLINED_FUNCTION_15_6();
        v158 = 0;
        v41 = 0uLL;
        v157 = 0u;
        memset(v156 + 8, 0, 24);
        *(&v155 + 1) = v122;
        *&v156[0] = 0x100000000;
        *&v155 = 0;
        *&v154[8] = 0u;
        *v154 = 53;
LABEL_280:
        LODWORD(v153) = 0;
        *&v143[16] = v41;
        v149 = v41;
        OUTLINED_FUNCTION_11_7();
LABEL_281:
        v137 = 0;
        goto LABEL_282;
      }

      return 0;
    case 1932681587:
    case 1932812659:
      goto LABEL_202;
    case 1936077360:
    case 1936077362:
    case 1936077876:
    case 1937125936:
    case 1937125938:
    case 1937126452:
      goto LABEL_180;
    case 1949458803:
    case 1949589875:
      goto LABEL_202;
  }

  v32 = v12 == 1952854576 || v12 == 1952854578;
  v33 = v32 || v12 == 1952855092;
  v34 = v33 || v12 == 1953903152;
  v35 = v34 || v12 == 1953903154;
  if (v35 || v12 == 1953903668)
  {
LABEL_180:
    if (!a4)
    {
      return 0;
    }

    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    *&v157 = 1;
    v156[1] = 0x3CuLL;
    *&v156[0] = 0;
    *(&v156[0] + 1) = 20;
    *&v43 = OUTLINED_FUNCTION_10_8();
    goto LABEL_182;
  }

  switch(v12)
  {
    case 1982882104:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      if (v8 == v131)
      {
        v133 = 53;
      }

      else
      {
        v133 = 0;
      }

      if (v8 == v131)
      {
        v134 = 70;
      }

      else
      {
        v134 = 0;
      }

      if (v8 == v131)
      {
        v135 = 13;
      }

      else
      {
        v135 = 0;
      }

      *(&v157 + 1) = 0x100000001;
      v158 = v132;
      *(&v156[1] + 1) = 10;
      *&v157 = 0x200000001;
      *(&v156[0] + 1) = 10;
      *&v156[1] = 30;
      *(&v155 + 1) = 0x100000001;
      *&v156[0] = v132;
      *&v154[16] = 13;
      *&v155 = 0x200000001;
      LODWORD(v153) = 4;
      v150 = 0x200000001;
      *&v147 = 70;
      *(&v147 + 1) = 70;
      *(&v140 + 1) = 0x200000004;
      v144 = 4;
      *&v138[16] = 53;
      *&v140 = 0x200000001;
      v137 = 0;
      *v154 = v135;
      *&v154[8] = 23;
      v145 = v134;
      *v138 = v133;
      *&v138[8] = 53;
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_46_0();
      v56 = 0;
      goto LABEL_193;
    case 1983000886:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_4_16();
      *&v156[0] = 0;
      *(&v156[0] + 1) = 110;
      OUTLINED_FUNCTION_35_1();
      *v154 = 103;
LABEL_182:
      LODWORD(v153) = 0;
      *&v143[16] = v43;
      v149 = v43;
      *v143 = v43;
LABEL_204:
      v139 = v43;
      *&v138[16] = 0;
      *v138 = v43;
      v137 = 0;
      v65 = a2;
      v66 = 2;
LABEL_273:
      v67 = a4;
      v68 = a5;
      v69 = 1;
LABEL_316:
      v70 = 0;
      goto LABEL_317;
    case 1983013176:
    case 1983144248:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      *(&v157 + 1) = 0x100000001;
      v158 = v124;
      *(&v156[1] + 1) = 10;
      *&v157 = 0x200000001;
      *(&v156[0] + 1) = 10;
      *&v156[1] = 30;
      *(&v155 + 1) = 0x100000001;
      *&v156[0] = v124;
      *&v154[16] = 13;
      *&v155 = 0x200000001;
      *v154 = 13;
      *&v154[8] = 23;
      LODWORD(v153) = 0;
      v102 = 0uLL;
LABEL_272:
      *&v143[16] = v102;
      v149 = v102;
      OUTLINED_FUNCTION_11_7();
      v137 = 0;
      v65 = a2;
      goto LABEL_273;
    case 1999843442:
      goto LABEL_205;
    case 2016567667:
LABEL_202:
      if (!a4)
      {
        return 0;
      }

      v158 = 1;
      *&v157 = 0x200000001;
      *(&v157 + 1) = 0x100000001;
      *&v156[1] = 60;
      *(&v156[1] + 1) = 20;
      *&v156[0] = 0;
      *(&v156[0] + 1) = 20;
      *&v43 = OUTLINED_FUNCTION_10_8();
      LODWORD(v153) = 4;
      *&v149 = v73;
      *(&v149 + 1) = 0x200000004;
      *&v143[16] = 110;
      *&v143[24] = 110;
      *v143 = 0;
      *&v143[8] = 110;
      goto LABEL_204;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
LABEL_244:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_29_1();
    *&v156[1] = 60;
    *(&v156[0] + 1) = 20;
    *&v105 = OUTLINED_FUNCTION_10_8();
    LODWORD(v153) = 0;
    v151 = v106;
    v148 = 0x6EuLL;
    v146 = 110;
    v141 = v105;
    v91 = OUTLINED_FUNCTION_0_21();
    v96 = 505;
    v97 = 543;
    goto LABEL_246;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
LABEL_242:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_29_1();
    *&v156[1] = 60;
    *&v156[0] = 0;
    *(&v156[0] + 1) = 20;
    *&v103 = OUTLINED_FUNCTION_10_8();
    LODWORD(v153) = 0;
    v150 = v104;
    v147 = 0x6EuLL;
    v144 = 0;
    v145 = 110;
    v140 = v103;
    v49 = OUTLINED_FUNCTION_0_21();
    v54 = 506;
    v55 = 3;
    v56 = 544;
    goto LABEL_193;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
    goto LABEL_252;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
LABEL_264:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    v149 = 0uLL;
    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_17_5();
    goto LABEL_292;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
    goto LABEL_202;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
    goto LABEL_244;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
    goto LABEL_242;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
    goto LABEL_252;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
LABEL_258:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    v149 = 0uLL;
    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_17_5();
    v65 = OUTLINED_FUNCTION_5_14();
    v69 = 0;
    v70 = 504;
    goto LABEL_317;
  }

  OUTLINED_FUNCTION_62_0();
  if (v10)
  {
    goto LABEL_244;
  }

  OUTLINED_FUNCTION_62_0();
  if (v10)
  {
    goto LABEL_242;
  }

  OUTLINED_FUNCTION_62_0();
  if (v10)
  {
LABEL_252:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_29_1();
      *&v113 = OUTLINED_FUNCTION_10_8();
      LODWORD(v153) = 0;
      v152 = v114;
      v142 = v113;
      v115 = OUTLINED_FUNCTION_0_21();
      if (appendDstTextureDescriptions(v115, v116, v117, v118, v119, 507, 3, 545, v137, *v138, *&v138[8], *&v138[16], v142, *(&v142 + 1), 0, 0, 110, 110, 0, v152, 0x200000004, v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), 0, 0, 20, 60, *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158)))
      {
        return 4294954391;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_62_0();
  if (!v10)
  {
    if (v38 != 2033463352)
    {
      if (v38 != 2033463606)
      {
        if (v38 != 2037741158 && v38 != 2037741171)
        {
          if (v38 != 2084070960 && v38 != 2084075056)
          {
            if (v38 != 2084718401)
            {
              OUTLINED_FUNCTION_66_0();
              if (!v10)
              {
                OUTLINED_FUNCTION_66_0();
                if (!v10)
                {
                  OUTLINED_FUNCTION_66_0();
                  if (!v10)
                  {
                    OUTLINED_FUNCTION_52_0();
                    if (!v10)
                    {
                      return 4294954391;
                    }

LABEL_178:
                    if (a4)
                    {
                      OUTLINED_FUNCTION_15_6();
                      *&v41 = OUTLINED_FUNCTION_4_16();
                      v42 = 10;
LABEL_278:
                      *&v156[0] = 0;
                      *(&v156[0] + 1) = v42;
LABEL_279:
                      v155 = v41;
                      *&v154[16] = 0;
                      *v154 = v41;
                      goto LABEL_280;
                    }

                    return 0;
                  }

                  goto LABEL_223;
                }

                goto LABEL_200;
              }

LABEL_198:
              if (!a4)
              {
                return 0;
              }

              OUTLINED_FUNCTION_15_6();
              *&v64 = OUTLINED_FUNCTION_2_19();
              v139 = v64;
              *v143 = v64;
              OUTLINED_FUNCTION_0_21();
              OUTLINED_FUNCTION_46_0();
LABEL_225:
              v83 = 546;
              goto LABEL_319;
            }

LABEL_218:
            if (a4)
            {
              OUTLINED_FUNCTION_15_6();
              v149 = 0uLL;
              OUTLINED_FUNCTION_4_16();
              *&v156[0] = 0x100000000;
              *(&v156[0] + 1) = 80;
              OUTLINED_FUNCTION_35_1();
              OUTLINED_FUNCTION_23_2();
              *(&v139 + 1) = v81;
              *v143 = v82;
              OUTLINED_FUNCTION_54_0();
              OUTLINED_FUNCTION_5_14();
              OUTLINED_FUNCTION_46_0();
              v83 = 80;
              goto LABEL_319;
            }

            return 0;
          }

          goto LABEL_183;
        }

        if (!a4)
        {
          return 0;
        }

        OUTLINED_FUNCTION_15_6();
        v149 = 0uLL;
        *(&v157 + 1) = 2;
        v158 = 0;
        OUTLINED_FUNCTION_6_13();
        OUTLINED_FUNCTION_18_4();
        OUTLINED_FUNCTION_17_5();
        v65 = OUTLINED_FUNCTION_3_16();
        v70 = 501;
LABEL_317:
        v71 = 0;
        goto LABEL_318;
      }

      if (!a4)
      {
        return 0;
      }

      v158 = 0x200000000;
      goto LABEL_312;
    }

LABEL_286:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      v149 = 0uLL;
      *(&v157 + 1) = v126;
      v158 = 0x200000000;
      OUTLINED_FUNCTION_6_13();
      *&v156[0] = v127;
      *(&v156[0] + 1) = 70;
      OUTLINED_FUNCTION_20_2();
      *&v143[24] = 0;
      *&v143[8] = v128;
      *(&v139 + 1) = 4;
      *v143 = v129;
      *&v139 = 0;
      *&v138[8] = v128;
      *v138 = 123;
      goto LABEL_281;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_6();
  v149 = 0uLL;
  OUTLINED_FUNCTION_4_16();
  *&v156[0] = 0;
  *(&v156[0] + 1) = 90;
  OUTLINED_FUNCTION_20_2();
  *v143 = v130;
  *&v143[16] = v130;
  OUTLINED_FUNCTION_72();
LABEL_292:
  v65 = OUTLINED_FUNCTION_5_14();
  v69 = 0;
  v70 = 504;
  v71 = 3;
LABEL_318:
  v83 = 0;
LABEL_319:
  result = appendDstTextureDescriptions(v65, v66, v67, v68, v69, v70, v71, v83, v137, *v138, *&v138[8], *&v138[16], v139, *(&v139 + 1), *v143, *&v143[4], *&v143[8], *&v143[16], *&v143[24], v149, *(&v149 + 1), v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), v156[0], SDWORD1(v156[0]), *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158));
  if (result)
  {
    return 4294954391;
  }

  return result;
}

uint64_t appendSrcTextureDescriptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFArrayRef theArray, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, int a31)
{
  HIDWORD(v242) = a2;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v37 = *(a1 + 160);
  if (v37[178] || !*(a1 + 72))
  {
    a9 = 0;
    a10 = 0;
  }

  if (v37[179] || !*(a1 + 72))
  {
    a14 = 0;
  }

  v243 = theArray;
  if (v37[176])
  {
    a19 = 0;
    a20 = 0;
  }

  v38 = *(a1 + 24);
  v39 = *(a1 + 16);
  v245 = a3;
  v40 = a3 + 160 * v38;
  v41 = *(a1 + 172);
  v247 = 0;
  v246 = 0;
  OUTLINED_FUNCTION_78(v39, a2, &v246 + 1, a4, &v247, &v246);
  v42 = 0;
  if (v37[166])
  {
    v68 = OUTLINED_FUNCTION_38_1();
    if (!selectFunctionConstantForMetalDevice(v68, a6, SHIDWORD(v242), v69, v70, v71, v72))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_34_1();
    v42 = 0;
    if (!vtAppendTexDescSample(v73, v74, v75, v76, v77, v78, v79, v38, v225, SHIDWORD(v225), v233, HIDWORD(v233)))
    {
      *(v40 + 135) = 0;
      *(v245 + 52 * v41 + 1416) = -1;
      *(v40 + 134) = 0;
      *(v40 + 128) = 0;
      v42 = 1;
    }
  }

  if (v37[167] || a7 && !(v37[164] | v42))
  {
    v56 = OUTLINED_FUNCTION_38_1();
    if (selectFunctionConstantForMetalDevice(v56, a7, SHIDWORD(v242), v57, v58, v59, v60))
    {
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_34_1();
      if (!vtAppendTexDescSample(v61, v62, v63, v64, v65, v66, v67, v38, v225, SHIDWORD(v225), v233, HIDWORD(v233)))
      {
        *(v40 + 128) = a8;
        v42 = 1;
      }
    }
  }

  if (v42)
  {
    v43 = *(a1 + 24);
    *(v245 + 160 * v43 + 132) = 0;
    if (!*(a1 + 75))
    {
      result = 0;
      v55 = (v245 + 160 * v43);
      v55[124] = 1;
      v55[126] = 1;
      v55[120] = 0;
      return result;
    }

    v44 = *(a1 + 144);
    v45.i64[0] = v44;
    v45.i64[1] = SHIDWORD(v44);
    v46 = vcvtq_f64_s64(v45);
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V2.2D, #1.0
    }

    *(a4 + 120 * v43 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q2, v46)), vdivq_f64(_Q1, v46));
    v52 = v245 + 160 * v43;
    v53 = *(v52 + 112);
    if (v53 == 1 || v53 == 2)
    {
      result = 0;
      *(v52 + 116) = v53;
      return result;
    }

    return 0;
  }

LABEL_28:
  v81 = a27;
  v80 = a28;
  v83 = a25;
  v82 = a26;
  ensureReadableFormatPair(*(a1 + 152), &a9, &a10);
  ensureReadableFormatPair(*(a1 + 152), &a14, &a15);
  ensureReadableFormatPair(*(a1 + 152), &a19, &a20);
  if (*(a1 + 152))
  {
    if (v83)
    {
      OUTLINED_FUNCTION_42_0();
      MTLPixelFormatGetInfoForDevice();
      if ((v249 & 4) != 0)
      {
        v91 = v83;
      }

      else
      {
        v91 = 0;
      }
    }

    else
    {
      v91 = 0;
    }

    v92 = v245;
    if (v82)
    {
      OUTLINED_FUNCTION_42_0();
      MTLPixelFormatGetInfoForDevice();
      if ((v249 & 4) != 0)
      {
        v93 = v82;
      }

      else
      {
        v93 = 0;
      }
    }

    else
    {
      v93 = 0;
    }

    if (v93)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v82 == 0;
    }

    if (_ZF)
    {
      v95 = v91;
    }

    else
    {
      v95 = 0;
    }

    if (v95)
    {
      v96 = 1;
    }

    else
    {
      v96 = v83 == 0;
    }

    if (v96)
    {
      v82 = v93;
    }

    else
    {
      v82 = 0;
    }

    v83 = v95;
  }

  else
  {
    v92 = v245;
  }

  v97 = a14;
  v98 = a9;
  if (*(a1 + 68) == 3)
  {
    if (!(a9 | a14))
    {
LABEL_61:
      v103 = 0;
LABEL_62:
      v104 = Count;
      if (a9)
      {
        if (!*(a1 + 73))
        {
          v126 = *(a1 + 24);
          v127 = v92 + 160 * v126;
          if (*(v127 + 125))
          {
            if (!*(v127 + 132))
            {
              v128 = a10;
              result = vtAppendTexDescRead(*(a1 + 152), v243, (v127 + 4), a9, 0, 4, v126, Count, 1, 1);
              if (result)
              {
                return result;
              }

              v129 = a13;
              v130 = *(a1 + 24);
              v131 = v92 + 160 * v130;
              *(v131 + 112) = *(a1 + 188);
              *(v131 + 128) = v129;
              if (v128)
              {
                v132 = OUTLINED_FUNCTION_56_0();
                result = vtAppendTexDescRead(v132, v243, (v133 + 8), v128, v134, v135, v136, Count + 1, v227, SHIDWORD(v227));
                if (result)
                {
                  return result;
                }

                v130 = *(a1 + 24);
              }

              v137 = v92 + 160 * v130;
              if (!*(v137 + 120))
              {
                result = 0;
                *(v137 + 112) = HIDWORD(v242);
                return result;
              }

              return 0;
            }
          }
        }
      }

      v105 = a19;
      v248 = 0;
      if (v83)
      {
        v106 = *(a1 + 24);
        if (!a19 || (v107 = v92 + 160 * v106, *(v107 + 132)) || *(a1 + 68) == 2 || !*(v107 + 120) || *(a1 + 73))
        {
          v138 = v103;
          if (selectFunctionConstantForMetalDevice(*(a1 + 152), v83, SHIDWORD(v242), v92 + 160 * v106 + 52, v92 + 160 * v106 + 84, &v248, (v92 + 160 * v106 + 112)))
          {
            OUTLINED_FUNCTION_36_1();
            OUTLINED_FUNCTION_34_1();
            result = vtAppendTexDescSample(v140, v141, v142, v143, v144, v145, v146, v147, Count, v138, 1, 1u);
            if (result)
            {
              return result;
            }

            if (!v82)
            {
LABEL_99:
              v148 = a29;
              v149 = *(a1 + 24);
              v150 = v92 + 160 * v149;
              *(v150 + 132) = 0;
              *(v150 + 128) = v148;
              *(v150 + 125) = 0;
              if (*(a1 + 75))
              {
                v151 = v92 + 160 * v149;
                v152 = *(v151 + 112);
                if (v152 == 1)
                {
                  v153 = a30;
                  goto LABEL_112;
                }

                if (v152 == 2)
                {
                  v153 = a31;
LABEL_112:
                  *(v151 + 116) = v153;
                }
              }

              result = 0;
              v160 = a4 + 120 * v149;
              *(v160 + 64) = xmmword_18FED0640;
              __asm { FMOV            V1.2S, #1.0 }

              *(v160 + 80) = vdiv_f32(_D1, vcvt_f32_s32(*(a1 + 196)));
              *(v160 + 88) = 0x3F0000003F000000;
              return result;
            }

            v104 = Count + 1;
            v185 = v138 + 1;
            OUTLINED_FUNCTION_13_7();
            OUTLINED_FUNCTION_40_1();
            if (selectFunctionConstantForMetalDevice(v186, v187, v188, v189, v190, v191, v192))
            {
              OUTLINED_FUNCTION_36_1();
              v235 = *(a1 + 196);
              v238 = *(a1 + 200);
              OUTLINED_FUNCTION_44_0();
              result = vtAppendTexDescSample(v193, v194, v195, v196, v197, v81, v80, v198, v104, v185, v235, v238);
              if (result)
              {
                return result;
              }

              goto LABEL_99;
            }
          }
        }

        v105 = a19;
      }

      v108 = a20;
      v248 = 0;
      if (!v105)
      {
        return 4294954391;
      }

      LODWORD(Count) = v81;
      result = vtAppendTexDescRead(*(a1 + 152), v243, (v92 + 160 * *(a1 + 24) + 20), v105, 0, 1, *(a1 + 24), v104, 1, 1);
      if (result)
      {
        return result;
      }

      v113 = a23;
      v114 = v104 + 1;
      v115 = *(a1 + 24);
      v116 = v92 + 160 * v115;
      *(v116 + 112) = *(a1 + 188);
      *(v116 + 128) = v113;
      *(v116 + 125) = 0;
      if (v108)
      {
        v117 = OUTLINED_FUNCTION_56_0();
        result = vtAppendTexDescRead(v117, v243, (v118 + 24), v108, v119, v120, v121, v104 + 1, v226, SHIDWORD(v226));
        if (result)
        {
          return result;
        }

        v114 = v104 + 2;
        v115 = *(a1 + 24);
      }

      if (v82)
      {
        if (!OUTLINED_FUNCTION_37_1(*(a1 + 152), v109, v110, v92 + 160 * v115 + 52, v92 + 160 * v115 + 84, v111, v115, v112, v226, SHIDWORD(v226), v233, Count, v242, v243))
        {
          return 4294954391;
        }

        OUTLINED_FUNCTION_36_1();
        v230 = v162;
        OUTLINED_FUNCTION_34_1();
        result = vtAppendTexDescSample(v163, v164, v165, v166, v167, v168, v169, v170, v114, v230, 1, 1u);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_40_1();
        if (!selectFunctionConstantForMetalDevice(v171, v172, v173, v174, v175, v176, 0))
        {
          return 4294954391;
        }

        OUTLINED_FUNCTION_36_1();
        v234 = *(a1 + 196);
        v237 = *(a1 + 200);
        v229 = v177;
        v231 = v178;
        OUTLINED_FUNCTION_44_0();
        result = vtAppendTexDescSample(v179, v180, v181, v182, v183, v241, v80, v184, v229, v231, v234, v237);
        if (result)
        {
          return result;
        }

        LODWORD(v115) = *(a1 + 24);
      }

      v122 = a24;
      v123 = v92 + 160 * v115;
      if (!*(v123 + 120))
      {
        *(v123 + 112) = HIDWORD(v242);
      }

      if (v122 && *(a1 + 75))
      {
        result = 0;
        v124 = a4 + 120 * v115;
        v125.i32[1] = 1065353216;
        *(v124 + 64) = xmmword_18FED0640;
        *v125.i32 = 1.0 / *(a1 + 196);
        *(v124 + 80) = vdup_lane_s32(v125, 0);
        *(v124 + 88) = 0x3F0000003F000000;
        *(v92 + 160 * v115 + 116) = v122;
        return result;
      }

      return 0;
    }

    v99 = *(a1 + 24);
    if (!*(a1 + 208))
    {
      v100 = *(v92 + 160 * v99 + 120);
      if (!v100)
      {
        goto LABEL_56;
      }

      v89.i32[0] = *(a1 + 128);
      *v90.i32 = *v89.i32 + (truncf(*v89.i32 * 0.25) * -4.0);
      v139.i64[0] = 0x8000000080000000;
      v139.i64[1] = 0x8000000080000000;
      v89.i32[0] = vbslq_s8(v139, v90, v89).i32[0];
      if (*v89.i32 < 0.001 || *v89.i32 > 3.99)
      {
        v100 = (*(a1 + 136) & 3) == 0;
        goto LABEL_56;
      }
    }

    v100 = 0;
LABEL_56:
    *(v92 + 160 * v99 + 125) = v100;
  }

  v101 = a15;
  v248 = 0;
  if (!v97)
  {
    goto LABEL_61;
  }

  v102 = v92 + 160 * *(a1 + 24);
  if (!*(v102 + 125) || v98 && !*(v102 + 132))
  {
    goto LABEL_61;
  }

  if (!OUTLINED_FUNCTION_37_1(*(a1 + 152), v84, v85, v102 + 36, v102 + 68, v86, v87, v88, v225, SHIDWORD(v225), v233, Count, v242, v243))
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_24_2();
  result = vtAppendTexDescRead(v154, v243, v155, v97, 0, v156, v157, Count, v228, SHIDWORD(v228));
  if (result)
  {
    return result;
  }

  v158 = v92 + 160 * *(a1 + 24);
  *(v158 + 132) = 0;
  *(v158 + 128) = 0;
  if (v101 && !*(a1 + 73))
  {
    OUTLINED_FUNCTION_40_1();
    if (!selectFunctionConstantForMetalDevice(v199, v200, v201, v202, v203, v204, v205))
    {
      v103 = 1;
      Count = (Count + 1);
LABEL_133:
      v92 = v245;
      goto LABEL_62;
    }

    v206 = OUTLINED_FUNCTION_36_1();
    result = vtAppendTexDescRead(v206, v243, v207, v101, v208, v209, *(a1 + 24), Count + 1, *(a1 + 196), *(a1 + 200));
    if (result)
    {
      return result;
    }

    v159 = (Count + 2);
    if (!v82)
    {
      return 0;
    }
  }

  else
  {
    v159 = (Count + 1);
    if (!v82)
    {
      return 0;
    }
  }

  if (!*(a1 + 73))
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_40_1();
  v217 = selectFunctionConstantForMetalDevice(v210, v211, v212, v213, v214, v215, v216);
  v103 = 1;
  if (!v217)
  {
    Count = v159;
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_36_1();
  v236 = *(a1 + 196);
  v239 = *(a1 + 200);
  v232 = v218;
  OUTLINED_FUNCTION_44_0();
  result = vtAppendTexDescSample(v219, v220, v221, v222, v223, v81, v80, v224, v159, v232, v236, v239);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t appendSrcTextureDescriptions_3PlaneSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFArrayRef theArray, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37[3] = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v16 = 0;
  v34 = 0;
  v37[0] = a6;
  v37[1] = a7;
  v37[2] = a8;
  v17 = a4 + 40;
  v18 = a3 + 84;
  v19 = a4 + 64;
  v35 = 0x100000001;
  v36 = 1;
  v20 = Count;
  while (1)
  {
    v21 = v37[v16];
    v22 = *(a1 + 24);
    if (!v21)
    {
      goto LABEL_20;
    }

    v23 = *(&v35 + v16);
    result = selectFunctionConstantForMetalDevice(*(a1 + 152), v21, a2, v18 + 160 * v22 - 32, v18 + 160 * v22, &v34, (a3 + 160 * v22 + 112));
    if (!result)
    {
      return result;
    }

    if (vtAppendTexDescSample(*(a1 + 152), theArray, v34, v21, 2, v16, v23, *(a1 + 24), v20 + v16, v16, 1, 1u))
    {
      return 4294954391;
    }

    if (*(a1 + 75))
    {
      v25 = *(a1 + 24);
      v26 = a3 + 160 * v25;
      v27 = *(v26 + 112);
      if (v27 == 1)
      {
        v28 = 54;
LABEL_13:
        *(v26 + 116) = v28;
      }

      else if (v27 == 2)
      {
        v28 = 56;
        goto LABEL_13;
      }

      if (v16 == 1)
      {
        *(v17 + 120 * v25 + 40) = 1.0 / *(a1 + 196);
        v29 = 1.0 / *(a1 + 200);
        v30 = 1;
      }

      else
      {
        *(v19 + 120 * v25) = 1065353216;
        v29 = 1.0;
        v30 = v16;
      }

      v31 = v17 + 120 * v25 + 16 * v30;
      *(v31 + 28) = v29;
      *(v31 + 32) = 0;
    }

    ++v16;
    v18 += 4;
    v19 += 16;
    if (v16 == 3)
    {
      v22 = *(a1 + 24);
LABEL_20:
      result = 0;
      v32 = a3 + 160 * v22;
      *(v32 + 132) = 0;
      *(v32 + 128) = 0;
      *(v32 + 125) = 0;
      return result;
    }
  }
}

uint64_t appendSrcTextureDescriptions_4PlaneSample(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v19 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v7 = 0;
  v16 = 0;
  v18[0] = vdupq_n_s64(0x14uLL);
  v18[1] = v18[0];
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  v17 = v8;
  v9 = a2 + 84;
  v10 = Count;
  while (1)
  {
    v11 = *(v18 + v7);
    if (!v11)
    {
LABEL_9:
      result = 0;
      v15 = a2 + 160 * *(a1 + 24);
      *(v15 + 132) = 0;
      *(v15 + 128) = 0;
      *(v15 + 125) = 0;
      return result;
    }

    v12 = *(&v18[-1] + v7);
    v13 = v9 + 160 * *(a1 + 24);
    result = selectFunctionConstantForMetalDevice(*(a1 + 152), *(v18 + v7), 2, v13 - 32, v13, &v16, (a2 + 160 * *(a1 + 24) + 112));
    if (!result)
    {
      return result;
    }

    if (vtAppendTexDescSample(*(a1 + 152), theArray, v16, v11, 2, v7, v12, *(a1 + 24), v10 + v7, v7, 1, 1u))
    {
      return 4294954391;
    }

    ++v7;
    v9 += 4;
    if (v7 == 4)
    {
      goto LABEL_9;
    }
  }
}

uint64_t ensureReadableFormatPair(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (!result || !a2 || !a3)
  {
    return result;
  }

  v5 = *a2;
  v6 = *a3;
  if (*a2)
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_41_1();
    result = MTLPixelFormatGetInfoForDevice();
    if (v12)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      goto LABEL_9;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  OUTLINED_FUNCTION_8_9();
  result = MTLPixelFormatGetInfoForDevice();
  if (v12)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5 == 0;
  }

  if (!v11)
  {
    v8 = 0;
  }

  *a2 = v10;
  *a3 = v8;
  return result;
}

uint64_t selectFunctionConstantForMetalDevice(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, int *a7)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  MTLPixelFormatGetInfoForDevice();
  if ((*v15 & 0x20000) != 0)
  {
    result = 1;
    v14 = 1;
    if (a3 == 1 || (v15[2] & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v15[2])
  {
LABEL_8:
    v14 = 2;
    result = 1;
    a4 = a5;
    goto LABEL_9;
  }

  result = 0;
  a4 = 0;
  v14 = 0;
LABEL_9:
  if (a6)
  {
    *a6 = a4;
  }

  if (a7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t appendDstTextureDescriptions(unsigned int *a1, uint64_t a2, uint64_t a3, __CFArray *a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, int a36, int a37, int a38)
{
  v41 = a5;
  v44 = a2;
  v46 = a1[1];
  v47 = *(a1 + 13);
  if (v47[182] || *(a1 + 68))
  {
    a10 = 0;
    a11 = 0;
    a12 = 0;
  }

  if (v47[183] || *(a1 + 68))
  {
    a17 = 0;
    a18 = 0;
    a19 = 0;
  }

  if (v47[180])
  {
    a23 = 0;
    a24 = 0;
    a25 = 0;
  }

  if (v47[181])
  {
    a30 = 0;
    a31 = 0;
    a32 = 0;
  }

  v48 = a1[6];
  v179 = a2;
  if (v48 == 2)
  {
    v176 = v46;
    v49 = *(a1 + 2);
    v50 = *(a1 + 12);
    v51 = a1[29];
    v181 = 0;
    v180 = 0;
    OUTLINED_FUNCTION_78(v49, a2, &v180 + 1, a4, &v181, &v180);
    if (v47[172])
    {
      if (!selectFunctionConstantForMetalDevice(v50, a6, v44, 0, 0, 0, (a3 + 1360)))
      {
LABEL_31:
        v48 = a1[6];
        v46 = v176;
        v41 = a5;
        v44 = v179;
        goto LABEL_32;
      }

      v52 = 1;
      OUTLINED_FUNCTION_34_1();
      if (!vtAppendTexDescRender(v63, v64, v65, v66, v67, v68, v69, 1))
      {
        v52 = 0;
        *(a3 + 1369) = 0;
        *(a3 + 52 * v51 + 1416) = -1;
        *(a3 + 1376) = a7;
      }
    }

    else
    {
      v52 = 1;
    }

    if (v47[173] || (!v47[170] ? (v53 = a8 == 0) : (v53 = 1), !v53 ? (v54 = v52) : (v54 = 0), v54 == 1))
    {
      if (selectFunctionConstantForMetalDevice(v50, a8, v179, 0, 0, 0, (a3 + 1360)))
      {
        OUTLINED_FUNCTION_34_1();
        if (!vtAppendTexDescRender(v56, v57, v58, v59, v60, v61, v62, 1))
        {
          *(a3 + 1376) = a9;
          goto LABEL_23;
        }
      }
    }

    if ((v52 & 1) == 0)
    {
LABEL_23:
      result = 0;
      *(a3 + 1365) = 1;
LABEL_24:
      *(a3 + 1380) = 0;
      return result;
    }

    goto LABEL_31;
  }

LABEL_32:
  v70 = *(a1 + 12);
  if (v48 == 3)
  {
    ensureWritableFormatTriple(v70, *a1, &a10, &a11, &a12);
    v71 = OUTLINED_FUNCTION_16_6();
    ensureWritableFormatTriple(v71, v72, &a17, &a18, &a19);
    v73 = OUTLINED_FUNCTION_16_6();
    ensureWritableFormatTriple(v73, v74, &a23, &a24, &a25);
    v75 = OUTLINED_FUNCTION_16_6();
    ensureWritableFormatTriple(v75, v76, &a30, &a31, &a32);
  }

  else
  {
    ensureRenderableFormatTriple(v70, &a10, &a11, &a12);
    ensureRenderableFormatTriple(*(a1 + 12), &a17, &a18, &a19);
    ensureRenderableFormatTriple(*(a1 + 12), &a23, &a24, &a25);
    ensureRenderableFormatTriple(*(a1 + 12), &a30, &a31, &a32);
  }

  v77 = a1[6];
  v78 = a17;
  v79 = a10;
  if (v77 == 3)
  {
    if (!(a10 | a17))
    {
      goto LABEL_47;
    }

    if (*(a1 + 144))
    {
      v80 = (a1[18] & 3) == 0 && (a1[20] & 3) == 0;
      *(a3 + 1364) = v80;
    }
  }

  v82 = a18;
  v81 = a19;
  v182 = 0;
  if (v77 == 2 || !v78 || !*(a3 + 1364) || v79 && !*(a3 + 1380))
  {
    goto LABEL_47;
  }

  *(a3 + 1380) = 0;
  *(a3 + 1376) = 0;
  if (!selectFunctionConstantForMetalDevice(*(a1 + 12), v78, v44, a3 + 1312, a3 + 1336, &v182, (a3 + 1360)))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_24_2();
  result = vtAppendTexDescWrite(v123, v124, a4, v125, v78, 0, v126, v46, v170, SHIDWORD(v170));
  if (result)
  {
    return result;
  }

  if (!v82)
  {
LABEL_75:
    result = 0;
    goto LABEL_24;
  }

  if (!selectFunctionConstantForMetalDevice(*(a1 + 12), v82, v44, a3 + 1316, a3 + 1340, &v182, (a3 + 1360)))
  {
    ++v46;
    goto LABEL_47;
  }

  v136 = OUTLINED_FUNCTION_16_6();
  v140 = v182;
  if (v41 == 1)
  {
    v141 = a1[34];
    v142 = a1[35];
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  result = vtAppendTexDescWrite(v136, v137, a4, v140, v82, v138, v139, v46 + 1, v141, v142);
  if (result)
  {
    return result;
  }

  if (!v81)
  {
    goto LABEL_75;
  }

  v46 += 2;
  if (!selectFunctionConstantForMetalDevice(*(a1 + 12), v81, v44, a3 + 1320, a3 + 1344, &v182, (a3 + 1360)))
  {
LABEL_47:
    if (a10 && a1[6] != 2 && *(a3 + 1364))
    {
      v83 = a16;
      v84 = a11;
      v85 = a12;
      *(a3 + 1360) = a1[33];
      *(a3 + 1376) = v83;
      v86 = OUTLINED_FUNCTION_14_6();
      result = vtAppendTexDescWrite(v86, v87, a4, (a3 + 1288), v88, 0, v89, v46, v170, SHIDWORD(v170));
      if (!result)
      {
        if (!v84)
        {
          return 0;
        }

        v90 = OUTLINED_FUNCTION_16_6();
        if (v41 == 1)
        {
          v94 = a1[34];
          v95 = a1[35];
        }

        else
        {
          OUTLINED_FUNCTION_73();
        }

        result = vtAppendTexDescWrite(v90, v91, a4, (a3 + 1292), v84, v92, v93, v46 + 1, v94, v95);
        if (!result)
        {
          if (!v85)
          {
            return 0;
          }

          v119 = OUTLINED_FUNCTION_14_6();
          result = vtAppendTexDescWrite(v119, v120, a4, (a3 + 1296), v85, v121, v122, v46 + 2, v171, SHIDWORD(v171));
          if (!result)
          {
            return 0;
          }
        }
      }

      return result;
    }

    v96 = a30;
    v183[0] = 0;
    if (a30)
    {
      v97 = a36;
      v98 = a33;
      v100 = a37;
      v99 = a38;
      if (!a23 || *(a3 + 1380))
      {
        *(a3 + 1360) = v179;
        v104 = (a3 + 1380);
        v105 = OUTLINED_FUNCTION_67(v99);
        v177 = v100;
        if (v111 == 2)
        {
          v101 = v110;
          v102 = v109;
          v103 = v108;
          goto LABEL_61;
        }

        v127 = v107;
        v174 = v109;
        v175 = v110;
        v173 = v108;
        if (selectFunctionConstantForMetalDevice(v105, v96, v106, a3 + 1324, a3 + 1348, v183, (a3 + 1360)))
        {
          OUTLINED_FUNCTION_16_6();
          OUTLINED_FUNCTION_24_2();
          result = vtAppendTexDescWrite(v128, v129, a4, v130, v96, 0, v127, v46, v170, SHIDWORD(v170));
          if (result)
          {
            return result;
          }

          if (!v175)
          {
            goto LABEL_66;
          }

          if (selectFunctionConstantForMetalDevice(*(a1 + 12), v175, v179, a3 + 1328, a3 + 1352, v183, (a3 + 1360)))
          {
            v131 = OUTLINED_FUNCTION_16_6();
            v133 = v183[0];
            if (a5 == 1)
            {
              v134 = a1[34];
              v135 = a1[35];
            }

            else
            {
              OUTLINED_FUNCTION_73();
            }

            result = vtAppendTexDescWrite(v131, v132, a4, v133, v175, v98, v97, v46 + 1, v134, v135);
            if (result)
            {
              return result;
            }

            if (!v174)
            {
LABEL_66:
              result = 0;
              *v104 = 0;
              return result;
            }

            v46 += 2;
            if (selectFunctionConstantForMetalDevice(*(a1 + 12), v174, v179, a3 + 1332, a3 + 1356, v183, (a3 + 1360)))
            {
              OUTLINED_FUNCTION_16_6();
              OUTLINED_FUNCTION_24_2();
              result = vtAppendTexDescWrite(v148, v149, a4, v150, v174, v173, v100, v46, v170, SHIDWORD(v170));
              if (result)
              {
                return result;
              }

              goto LABEL_66;
            }
          }

          else
          {
            ++v46;
          }
        }
      }

      else if (a1[6] == 2)
      {
        v101 = a31;
        v102 = a32;
        v177 = a37;
        v103 = a34;
        v104 = (a3 + 1380);
        *(a3 + 1360) = v179;
        OUTLINED_FUNCTION_67(v99);
LABEL_61:
        OUTLINED_FUNCTION_34_1();
        result = vtAppendTexDescRender(v112, v113, v114, v115, v116, v117, v118, 1);
        if (result)
        {
          return result;
        }

        if (v101)
        {
          result = vtAppendTexDescRender(*(a1 + 12), a4, v101, v98, v97, 1, a1[34], a1[35]);
          if (result)
          {
            return result;
          }

          if (v102)
          {
            result = vtAppendTexDescRender(*(a1 + 12), a4, v102, v103, v177, 2, a1[34], a1[35]);
            if (result)
            {
              return result;
            }
          }
        }

        goto LABEL_66;
      }
    }

    if (a23 && a1[6] != 2)
    {
      v152 = a29;
      v153 = a24;
      v154 = a25;
      *(a3 + 1360) = a1[33];
      *(a3 + 1376) = v152;
      *(a3 + 1364) = 0;
      v155 = OUTLINED_FUNCTION_14_6();
      LODWORD(result) = vtAppendTexDescWrite(v155, v156, a4, (a3 + 1300), v157, 0, v158, v46, v170, SHIDWORD(v170));
      if (result)
      {
        goto LABEL_117;
      }

      if (!v153)
      {
        goto LABEL_110;
      }

      v159 = OUTLINED_FUNCTION_16_6();
      if (v163 == 1)
      {
        v164 = a1[34];
        v165 = a1[35];
      }

      else
      {
        OUTLINED_FUNCTION_73();
      }

      LODWORD(result) = vtAppendTexDescWrite(v159, v160, a4, (a3 + 1304), v153, v161, v162, v46 + 1, v164, v165);
      if (result || v154 && (v166 = OUTLINED_FUNCTION_14_6(), LODWORD(result) = vtAppendTexDescWrite(v166, v167, a4, (a3 + 1308), v154, v168, v169, v46 + 2, v172, SHIDWORD(v172)), result))
      {
LABEL_117:
        v151 = 0;
      }

      else
      {
LABEL_110:
        LODWORD(result) = 0;
        v151 = 1;
      }
    }

    else
    {
      v151 = 0;
      LODWORD(result) = 0;
    }

    if (result)
    {
      v151 = 1;
    }

    if (v151)
    {
      return result;
    }

    else
    {
      return 4294954391;
    }
  }

  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_24_2();
  result = vtAppendTexDescWrite(v143, v144, a4, v145, v81, v146, v147, v46, v170, SHIDWORD(v170));
  if (!result)
  {
    goto LABEL_75;
  }

  return result;
}

uint64_t ensureWritableFormatTriple(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (result && a3 && a4 && a5)
  {
    v9 = result;
    v10 = *a3;
    v11 = *a4;
    v12 = *a5;
    v13 = returnMetalFormatIfWritable(result, a2, *a3);
    v14 = returnMetalFormatIfWritable(v9, a2, v11);
    result = returnMetalFormatIfWritable(v9, a2, v12);
    if (v10)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    if (v11)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
    if ((v19 & v16) != 0)
    {
      v20 = result;
    }

    else
    {
      v20 = 0;
    }

    if (v12)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 0;
    }

    v22 = !v21;
    if ((v22 & v19) != 0)
    {
      v23 = v13;
    }

    else
    {
      v23 = 0;
    }

    *a3 = v23;
    if (!v22)
    {
      v17 = 0;
    }

    *a4 = v17;
    *a5 = v20;
  }

  return result;
}

uint64_t ensureRenderableFormatTriple(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!result || !a2 || !a3 || !a4)
  {
    return result;
  }

  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*a2)
  {
    OUTLINED_FUNCTION_8_9();
    result = MTLPixelFormatGetInfoForDevice();
    if ((v22 & 0x10) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
LABEL_10:
      OUTLINED_FUNCTION_8_9();
      result = MTLPixelFormatGetInfoForDevice();
      if ((v22 & 0x10) != 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      if (v9)
      {
        goto LABEL_14;
      }

LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v11 = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_14:
  OUTLINED_FUNCTION_8_9();
  result = MTLPixelFormatGetInfoForDevice();
  if ((v22 & 0x10) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_20:
  if (v7)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  if (v8)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if ((v14 & v17) == 0)
  {
    v12 = 0;
  }

  if (v9)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = !v18;
  if ((v19 & v17) != 0)
  {
    v20 = v10;
  }

  else
  {
    v20 = 0;
  }

  *a2 = v20;
  if (v19)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  *a3 = v21;
  *a4 = v12;
  return result;
}

void vtmtsBuildScalingTable(void *a1, int a2, float *a3, void *a4, _DWORD *a5, _DWORD *a6, float a7, float a8)
{
  v8 = 0;
  if (a7 >= -1.0)
  {
    v9 = a7;
  }

  else
  {
    v9 = -1.0;
  }

  if (a7 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (a3 && a1 && a4 && a5 && a6)
  {
    if (fabsf(a7) <= 0.001)
    {
      v8 = 0;
    }

    else
    {
      v11 = (fabsf(3.0 / v10) * 2.0 + 0.5);
      if (v11 <= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = v11;
      }

      v13 = (v12 + 3);
      v14 = v13 & 0x7FFFFFFC;
      v15 = malloc_type_calloc(1uLL, 4 * (v14 << 6), 0x100004052888210uLL);
      v16 = v15;
      v17 = 0;
      v18 = 1.0;
      v19 = 4 * v12;
      if (v14 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      else
      {
        v20 = v13 & 0x7FFFFFFC;
      }

      v46 = 4 * (v20 - v12);
      v36 = v12 + 3;
      v21 = (4 * v13) & 0x3FFFFFFF0;
      v22 = v15;
      v39 = v15;
      do
      {
        v23 = ((v12 * -0.5) + 1.0) + (v17 * -0.015625);
        v24 = 0.0;
        v25 = v22;
        v26 = v12;
        v27 = v16;
        do
        {
          v28 = v10 * v23;
          v29 = fabsf(v10 * v23);
          v30 = 0.0;
          if (v29 < 3.0)
          {
            v30 = 1.0;
            if (v29 >= 0.000000059605)
            {
              v31 = sinf(v28 * 3.1416);
              v18 = 1.0;
              v30 = (v31 * sinf((v28 * 3.1416) / 3.0)) / ((v28 * ((v28 * 3.1416) * 3.1416)) / 3.0);
            }
          }

          *v25++ = v30;
          v24 = v24 + v30;
          v23 = v23 + v18;
          v27 += 4;
          --v26;
        }

        while (v26);
        if (v12 < v14)
        {
          bzero(v27, v46);
        }

        v32 = 0;
        do
        {
          v22[v32 / 4] = (v18 / v24) * v22[v32 / 4];
          v32 += 4;
        }

        while (v19 != v32);
        ++v17;
        v16 += (v19 + 12) & 0x3FFFFFFF0;
        v22 = (v22 + v21);
      }

      while (v17 != 64);
      v33 = [a1 newTextureWithDescriptor:{objc_msgSend(MEMORY[0x1E69741C0], "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", 125, v36 >> 2, 64, 0)}];
      memset(v47, 0, 24);
      v47[3] = v36 >> 2;
      v48 = xmmword_18FED0650;
      v8 = v39;
      [v33 replaceRegion:v47 mipmapLevel:0 withBytes:v39 bytesPerRow:4 * v14];
      v34 = (0.5 / a7) - v12 * 0.5 + 0.5;
      if (!a2)
      {
        v34 = 0.5 - v12 * 0.5;
      }

      v35 = v34;
      *a3 = v35 * a8;
      *a5 = v12;
      *a6 = 64;
      *a4 = v33;
    }
  }

  free(v8);
}

uint64_t VTMetalTransferSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyDefaultProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyDefaultProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtMetalTransferSessionCreatePixelBufferDescriptionWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

double vtMetalTransferSessionTransferImageCommonSync_cold_4(const __CFData *a1, uint64_t a2)
{
  if (CFDataGetLength(a1) >= 0x24)
  {
    v4 = OUTLINED_FUNCTION_27();
    v9.length = 36;
    CFDataGetBytes(v4, v9, v5);
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_5(__CVBuffer *a1, _DWORD *a2)
{
  CVPixelBufferGetPixelFormatType(a1);
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

BOOL vtMetalTransferSessionTransferImageCommonSync_cold_6(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtmtsSetUpProcessingNeeds_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtmtsSetUpProcessingNeeds_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalSample_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalSample_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalSample_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalWrite_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalWrite_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalWrite_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtAllocateMetalTextureForList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtAllocateMetalTextureForList_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtAllocateMetalTextureForList_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteServer_EnableMIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v10, cf))
  {
    OUTLINED_FUNCTION_4_17(cfa[3], v8, cfa);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return 0;
}

uint64_t vtdss_findAndRetainClientFromCommandPort(uint64_t a1, uint64_t a2)
{
  result = FigRPCLookupClientConnection();
  if (!result)
  {
    result = FigRPCGetConnectionInfo();
    if (!result)
    {
      if (a2)
      {
        result = 4294954393;
        if (*a2)
        {
          if (*(*a2 + 185))
          {
            return 4294954393;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        return 4294954393;
      }
    }
  }

  return result;
}

uint64_t vtdss_createTimeoutDebugContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v10, cf);
  if (!cfa)
  {
    return 0;
  }

  v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFRelease(cfa);
  return v8;
}

uint64_t VTDecompressionSessionRemoteServer_Destroy(uint64_t a1)
{
  v7 = 0;
  vtdss_findAndRetainClientFromCommandPort(a1, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 184) = 1;
    if (*(v1 + 160) && *(v1 + 168))
    {
      FigSemaphoreSignal();
      dispatch_group_wait(*(v7 + 168), 0xFFFFFFFFFFFFFFFFLL);
    }

    FigRPCDisposeClientConnection();
    v2 = v7;
    *(v7 + 16) = 0;
    if (*(v2 + 24))
    {
      VTDecompressionSessionInvalidate(*(v2 + 24));
      v2 = v7;
    }

    if (*(v2 + 32))
    {
      VTTileDecompressionSessionInvalidate(*(v2 + 32));
      v2 = v7;
    }

    if (*(v2 + 144))
    {
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_10_9();
      v6[2] = __VTDecompressionSessionRemoteServer_Destroy_block_invoke;
      v6[3] = &__block_descriptor_tmp_25;
      v6[4] = v3;
      dispatch_sync(v4, v6);
      v2 = v7;
    }

    CFRelease(v2);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_Create(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, const char *a11, _DWORD *a12, void *a13, uint64_t *a14, int *a15)
{
  v19 = a3[1];
  *token.val = *a3;
  *&token.val[4] = v19;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  theArray = 0;
  decompressionSessionOut = 0;
  outputCallback = xmmword_1F0390B98;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  v21 = *MEMORY[0x1E695E480];
  if (a11)
  {
    v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a11, 0x8000100u);
  }

  else
  {
    v22 = 0;
  }

  cf = v22;
  FigProcessInfoCreateWithDetails();
  v42 = a6;
  FormatDescriptionArrayFromSerializedAtomData = FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData();
  v43 = a7;
  if (FormatDescriptionArrayFromSerializedAtomData)
  {
    goto LABEL_35;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    v26 = 0;
    MutableCopy = 0;
    v37 = -12902;
LABEL_40:
    v34 = v42;
    goto LABEL_24;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  FormatDescriptionArrayFromSerializedAtomData = FigCreateCFPropertyListFromData();
  if (FormatDescriptionArrayFromSerializedAtomData || (FormatDescriptionArrayFromSerializedAtomData = FigCreateCFPropertyListFromData()) != 0)
  {
LABEL_35:
    v37 = FormatDescriptionArrayFromSerializedAtomData;
    v26 = 0;
LABEL_39:
    MutableCopy = 0;
    goto LABEL_40;
  }

  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_3_17(&_MergedGlobals_16);
  }

  Instance = _CFRuntimeCreateInstance();
  v26 = Instance;
  if (!Instance)
  {
    fig_log_get_emitter();
    v28 = FigSignalErrorAtGM();
    goto LABEL_38;
  }

  outputCallback.decompressionOutputRefCon = Instance;
  v27 = a3[1];
  *token.val = *a3;
  *&token.val[4] = v27;
  v28 = VTFigAudioSessionCreate(&token, ClientPIDFromAuditToken, @"VTDecompressionSessionClient", Instance + 13);
  if (v28)
  {
LABEL_38:
    v37 = v28;
    goto LABEL_39;
  }

  v29 = a3[1];
  *token.val = *a3;
  *&token.val[4] = v29;
  v30 = SecTaskCreateWithAuditToken(v21, &token);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!VTIsSecTaskEntitledForSpecifyingVP9Decode(v30))
  {
    if (VTIsSecTaskEntitledForVP9Decode(v30))
    {
      CFDictionarySetValue(MutableCopy, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
    }

    else if (CFDictionaryContainsKey(MutableCopy, @"AllowAlternateDecoderSelection"))
    {
      CFDictionaryRemoveValue(MutableCopy, @"AllowAlternateDecoderSelection");
    }
  }

  v32 = VTDecompressionSessionCreate(v21, ValueAtIndex, MutableCopy, 0, &outputCallback, &decompressionSessionOut);
  if (v32)
  {
    v37 = v32;
LABEL_43:
    v34 = v42;
    goto LABEL_22;
  }

  v33 = vtdss_initializeClient(v26, decompressionSessionOut, 0, a2, a4, ClientPIDFromAuditToken, 0, a12, a13);
  if (v33)
  {
    v37 = v33;
    goto LABEL_43;
  }

  v34 = v42;
  if (v26[13] && (CMNotificationCenterGetDefaultLocalCenter(), (v35 = FigNotificationCenterAddWeakListener()) != 0))
  {
    v37 = v35;
  }

  else
  {
    token.val[0] = ClientPIDFromAuditToken;
    v36 = CFNumberCreate(v21, kCFNumberSInt32Type, &token);
    VTSessionSetProperty(decompressionSessionOut, @"ClientPID", v36);
    CFRelease(v36);
    v37 = 0;
    *a14 = FigRemote_GetServerTimeoutToken();
  }

LABEL_22:
  if (v30)
  {
    CFRelease(v30);
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (decompressionSessionOut)
  {
    CFRelease(decompressionSessionOut);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  OUTLINED_FUNCTION_2_20();
  v38 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a5, v34);
  MEMORY[0x193AE4440](*v38, v43, a8);
  MEMORY[0x193AE4440](*v38, a9, a10);
  *a15 = v37;
  return 0;
}

uint64_t vtdss_initializeClient(uint64_t a1, const void *a2, const void *a3, int a4, uint64_t a5, int a6, CFTypeRef cf, int a8, void *a9)
{
  *(a1 + 88) = a6;
  if (cf)
  {
    v14 = CFRetain(cf);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 96) = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 24) = v15;
  if (a3)
  {
    v16 = CFRetain(a3);
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 32) = v16;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 128) = a1 + 120;
  *(a1 + 144) = dispatch_queue_create("DecompressionSessionQueuedFrames", 0);
  *(a1 + 152) = 1;
  *(a1 + 168) = dispatch_group_create();
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v18 = dispatch_queue_create("DecompressionSessionMessageQueue", initially_inactive);
  *(a1 + 176) = v18;
  dispatch_set_qos_class_floor(v18, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(*(a1 + 176));
  *(a1 + 160) = FigSemaphoreCreate();
  if (*(a1 + 256) || (v19 = FigOSTransactionCreate(), (*(a1 + 256) = v19) != 0))
  {
    v20 = FigRPCCreateClientConnection();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = FigRPCGetConnectionInfo();
      if (!v21)
      {
        *a9 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v21 = FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_2_20();
  return v21;
}

uint64_t VTDecompressionSessionRemoteServer_Invalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v10, cf))
  {
    v8 = cfa;
    *(cfa + 186) = 1;
    if (cfa[20] && cfa[21])
    {
      FigSemaphoreSignal();
      dispatch_group_wait(cfa[21], 0xFFFFFFFFFFFFFFFFLL);
      v8 = cfa;
    }

    if (v8[3])
    {
      VTDecompressionSessionInvalidate(v8[3]);
      v8 = cfa;
    }

    if (!v8[4])
    {
      goto LABEL_10;
    }

    VTTileDecompressionSessionInvalidate(v8[4]);
  }

  v8 = cfa;
  if (cfa)
  {
LABEL_10:
    CFRelease(v8);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_DecodeFrame(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8, int a9)
{
  v36 = 0;
  v37 = 0;
  cf = 0;
  v16 = vtdss_findAndRetainClientFromCommandPort(a1, &v37);
  if (v16)
  {
    v25 = v16;
  }

  else
  {
    SampleBufferFromSerializedAtomData = FigRemote_CreateSampleBufferFromSerializedAtomData();
    if (!SampleBufferFromSerializedAtomData && (!a7 || (SampleBufferFromSerializedAtomData = FigCreateCFPropertyListFromData()) == 0))
    {
      v19 = v37;
      if (a9)
      {
        v20 = v37[3];
        if (!*(v20 + 14))
        {
          OUTLINED_FUNCTION_4_17(v20, v18, v37);
          v19 = v37;
        }
      }

      CFRetain(v19);
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_10_9();
      v31[2] = __VTDecompressionSessionRemoteServer_DecodeFrame_block_invoke;
      v31[3] = &__block_descriptor_tmp_8_1;
      v31[4] = v21;
      v31[5] = v36;
      v31[6] = a8;
      v31[7] = cf;
      v32 = a5;
      v33 = a2;
      v34 = a7;
      v31[8] = a6;
      dispatch_group_async(v22, v23, v31);
      goto LABEL_9;
    }

    v25 = SampleBufferFromSerializedAtomData;
    a4 = 0;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_20();
  }

  v26 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a7)
  {
    MEMORY[0x193AE4440](*v26, a6, a7);
  }

  if (v37)
  {
    v27 = OUTLINED_FUNCTION_16_7(v37);
    VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(v27, v28, v29, v30, v25);
LABEL_9:
    if (v37)
    {
      CFRelease(v37);
    }
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_DequeueNextPendingFrame(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7, _DWORD *a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, void *a22, void *a23, _DWORD *a24, _DWORD *a25)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v32 = v26;
  v33 = 0;
  v35 = a24;
  v34 = a25;
  v109 = *MEMORY[0x1E69E9840];
  cf = 0;
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v105 = a9;
  v106 = a10;
  v107[0] = a11;
  v107[1] = a12;
  v107[2] = a13;
  v107[3] = a14;
  v107[4] = a15;
  v107[5] = a16;
  v107[6] = a17;
  v107[7] = a18;
  v107[8] = a19;
  v107[9] = a20;
  v108 = a21;
  v91 = a2;
  *a2 = 0;
  v89 = a3;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  do
  {
    v36 = *(&v105 + v33 + 8);
    **(&v105 + v33) = 0;
    *v36 = 0;
    v37 = *(&v106 + v33 + 8);
    **(&v105 + v33 + 16) = 0;
    *v37 = 0;
    **(v107 + v33) = 0;
    v33 += 40;
  }

  while (v33 != 200);
  *a22 = 0;
  a22[1] = 0;
  a22[2] = 0;
  *a23 = 0;
  a23[1] = 0;
  v88 = a23;
  a23[2] = 0;
  *a24 = 0;
  v38 = vtdss_findAndRetainClientFromCommandPort(a1, &cf);
  v39 = v38 != -12903 || cf == 0;
  if (!v39 || (v25 = v38) == 0)
  {
    v87 = a4;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2000000000;
    v104 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x2000000000;
    v100 = 0;
    v40 = *(cf + 18);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtdss_dequeueFrame_block_invoke;
    block[3] = &unk_1E72C93C8;
    block[5] = &v97;
    block[6] = cf;
    block[4] = &v101;
    dispatch_sync(v40, block);
    HIDWORD(v90) = *(v98 + 24);
    v41 = v102[3];
    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v101, 8);
    if (v41)
    {
      v86 = a5;
      if (*(v41 + 24))
      {
        SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
        if (SerializedAtomDataForPixelBuffer)
        {
          OUTLINED_FUNCTION_14_7(SerializedAtomDataForPixelBuffer, v43, v44, v45, v46, v47, v48, v49, v74, v76, v78, v80, v82, v84, a5, v87, a23, v89, v90, v91, 0, 0, v94, cf);
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_9_9(0, v74, v76, v78, v80, v82, v84, a5, v87, a23, v89, v90, v91, 0, 0, v94, cf);
      }

      v75 = v26;
      v77 = a24;
      v79 = a25;
      v81 = v29;
      v83 = v28;
      v85 = v27;
      v51 = *(v41 + 32);
      if (v51)
      {
        Count = CMTaggedBufferGroupGetCount(v51);
        if (Count > 5)
        {
LABEL_40:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v25 = FigSignalErrorAtGM();
          v32 = 0;
LABEL_37:
          v28 = v83;
          v27 = v85;
          v34 = v79;
          v29 = v81;
          goto LABEL_29;
        }

        v53 = Count;
        if (Count >= 1)
        {
          v54 = 0;
          v55 = *MEMORY[0x1E695E480];
          v56 = &v106;
          while (1)
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(*(v41 + 32), v54);
            v58 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v55);
            v32 = v58;
            if (!v58)
            {
              break;
            }

            Length = CFDataGetLength(v58);
            v60 = *(v56 + 1);
            v61 = vm_allocate(*MEMORY[0x1E69E9A60], v60, Length, 1543503873);
            if (v61)
            {
              goto LABEL_39;
            }

            v110.location = 0;
            v110.length = Length;
            CFDataGetBytes(v32, v110, *v60);
            **(v56 + 2) = Length;
            CFRelease(v32);
            if (!FigTaggedBufferGroupGetCVPixelBufferAtIndex())
            {
              goto LABEL_40;
            }

            block[0] = 0;
            v62 = FigRemote_CreateSerializedAtomDataForPixelBuffer();
            v70 = block[0];
            **v56 = block[0];
            if (v62)
            {
              OUTLINED_FUNCTION_14_7(v62, v63, v64, v65, v66, v67, v68, v69, v75, v77, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, cf);
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_9_9(v70, v75, v77, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, cf);
            ++v54;
            v56 = (v56 + 40);
            if (v53 == v54)
            {
              goto LABEL_24;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v61 = FigSignalErrorAtGM();
LABEL_39:
          v25 = v61;
          goto LABEL_37;
        }
      }

LABEL_24:
      *v91 = 1;
      *v89 = *(v41 + 8);
      *v87 = *(v41 + 16);
      *v86 = *(v41 + 20);
      if (a22)
      {
        v71 = *(v41 + 40);
        a22[2] = *(v41 + 56);
        *a22 = v71;
      }

      v28 = v83;
      v27 = v85;
      v34 = v79;
      v29 = v81;
      v35 = v77;
      v50 = HIDWORD(v90);
      if (v88)
      {
        v72 = *(v41 + 64);
        *(v88 + 16) = *(v41 + 80);
        *v88 = v72;
      }
    }

    else
    {
      *v91 = 0;
      v50 = HIDWORD(v90);
    }

    v32 = 0;
    v25 = 0;
    *v35 = v50;
    goto LABEL_29;
  }

  v32 = 0;
  v41 = 0;
LABEL_29:
  vtdss_freeQueuedFrame(v41);
  *v29 = HIDWORD(v94);
  *v28 = v93;
  *v27 = v92;
  if (v34)
  {
    *v34 = v25;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopySupportedPropertyDictionary(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4, a5, a6, a7, a8, v33, theData, cf, v38);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_20;
  }

  v17 = *(v38 + 3);
  if (v17)
  {
    v18 = VTDecompressionSessionCopySupportedPropertyDictionary(v17, &cf);
  }

  else
  {
    v19 = *(v38 + 4);
    if (v19)
    {
      v18 = VTTileDecompressionSessionCopySupportedPropertyDictionary(v19, &cf);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v18 = FigSignalErrorAtGM();
    }
  }

  v20 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v29 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v22, v23, v24, v25, v26, v27, v28, v34);
      if (v29)
      {
        v20 = v29;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v34, BytePtr, Length);
        v20 = 0;
      }

      goto LABEL_11;
    }

LABEL_20:
    v20 = CFDataFromCFPropertyList;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v31, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v8)
  {
    *v8 = v20;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopySerializableProperties(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4, a5, a6, a7, a8, v33, theData, cf, v38);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_20;
  }

  v17 = *(v38 + 3);
  if (v17)
  {
    v18 = VTDecompressionSessionCopySerializableProperties(v17, *MEMORY[0x1E695E480], &cf);
  }

  else
  {
    v19 = *(v38 + 4);
    if (v19)
    {
      v18 = VTTileDecompressionSessionCopySerializableProperties(v19, *MEMORY[0x1E695E480], &cf);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v18 = FigSignalErrorAtGM();
    }
  }

  v20 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v29 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v22, v23, v24, v25, v26, v27, v28, v34);
      if (v29)
      {
        v20 = v29;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v34, BytePtr, Length);
        v20 = 0;
      }

      goto LABEL_11;
    }

LABEL_20:
    v20 = CFDataFromCFPropertyList;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v31, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v8)
  {
    *v8 = v20;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopyProperty()
{
  OUTLINED_FUNCTION_13_8();
  v38 = 0;
  v37 = 0;
  *v2 = 0;
  *v3 = 0;
  v5 = vtdss_findAndRetainClientFromCommandPort(v4, &v38);
  if (v5)
  {
    goto LABEL_19;
  }

  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0);
  if (!v13)
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
LABEL_19:
    v24 = v5;
    goto LABEL_13;
  }

  v14 = v13;
  if (*(v38 + 3))
  {
    OUTLINED_FUNCTION_15_7();
    v19 = VTDecompressionSessionCopyProperty(v15, v16, v17, v18);
  }

  else if (*(v38 + 4))
  {
    OUTLINED_FUNCTION_15_7();
    v19 = VTTileDecompressionSessionCopyProperty(v20, v21, v22, v23);
  }

  else
  {
    fig_log_get_emitter();
    v19 = FigSignalErrorAtGM();
  }

  v24 = v19;
  if (!v19)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v24 = CFDataFromCFPropertyList;
    }

    else
    {
      Length = CFDataGetLength(0);
      v34 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v27, v28, v29, v30, v31, v32, v33, 0);
      if (v34)
      {
        v24 = v34;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(0);
        memcpy(v37, BytePtr, Length);
        v24 = 0;
      }
    }
  }

  CFRelease(v14);
LABEL_13:
  OUTLINED_FUNCTION_16_1(0, v6, v7, v8, v9, v10, v11, v12, v37);
  if (v0)
  {
    *v0 = v24;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_SetProperty(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v19 = 0;
  v9 = vtdss_findAndRetainClientFromCommandPort(a1, &v19);
  if (!v9)
  {
    v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
    if (!v10)
    {
      goto LABEL_11;
    }

    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
      goto LABEL_12;
    }

    v12 = FigCFEqual();
    v13 = v19;
    if (v12)
    {
      v14 = *(v19 + 24);
      if (v14)
      {
        CFRelease(v14);
        v13 = v19;
        *(v19 + 24) = 0;
      }
    }

    v15 = v13[3];
    if (v15)
    {
      CFPropertyListFromData = VTDecompressionSessionSetProperty(v15, v10, 0);
      goto LABEL_12;
    }

    v16 = v13[4];
    if (v16)
    {
      CFPropertyListFromData = VTTileDecompressionSessionSetProperty(v16, v10, 0);
    }

    else
    {
LABEL_11:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      CFPropertyListFromData = FigSignalErrorAtGM();
    }

LABEL_12:
    v17 = CFPropertyListFromData;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = v9;
  v10 = 0;
  if (a4)
  {
LABEL_13:
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

LABEL_14:
  if (v10)
  {
    CFRelease(v10);
  }

  if (a5)
  {
    *a5 = v17;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_SetProperties(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v13 = 0;
  CFPropertyListFromData = vtdss_findAndRetainClientFromCommandPort(a1, &v13);
  if (!CFPropertyListFromData)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (!CFPropertyListFromData)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(0))
      {
        goto LABEL_8;
      }

      v9 = *(v13 + 3);
      if (v9)
      {
        CFPropertyListFromData = VTDecompressionSessionSetProperties(v9, 0);
        goto LABEL_9;
      }

      v10 = *(v13 + 4);
      if (v10)
      {
        CFPropertyListFromData = VTTileDecompressionSessionSetProperties(v10, 0);
      }

      else
      {
LABEL_8:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        CFPropertyListFromData = FigSignalErrorAtGM();
      }
    }
  }

LABEL_9:
  v11 = CFPropertyListFromData;
  if (a3)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a2, a3);
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_FinishDelayedFrames(uint64_t a1)
{
  v7 = 0;
  v1 = vtdss_findAndRetainClientFromCommandPort(a1, &v7);
  if (v1)
  {
    if (!v7)
    {
      return 0;
    }

    VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(*(v7 + 14), *(v7 + 8), v1);
  }

  else
  {
    CFRetain(v7);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_10_9();
    v6[2] = __VTDecompressionSessionRemoteServer_FinishDelayedFrames_block_invoke;
    v6[3] = &__block_descriptor_tmp_9_1;
    v6[4] = v2;
    dispatch_group_async(v3, v4, v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CanAcceptFormatDescription(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  cf = 0;
  *a4 = 0;
  if (vtdss_findAndRetainClientFromCommandPort(a1, &cf))
  {
    *a4 = 0;
  }

  else
  {
    if (FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData() || CFArrayGetCount(0) < 1)
    {
      CanAcceptFormatDescription = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(0, 0);
      CanAcceptFormatDescription = VTDecompressionSessionCanAcceptFormatDescription(*(cf + 3), ValueAtIndex);
    }

    *a4 = CanAcceptFormatDescription;
  }

  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopyBlackPixelBuffer()
{
  OUTLINED_FUNCTION_13_8();
  pixelBufferOut = 0;
  cf = 0;
  *v4 = 0;
  *v5 = 0;
  *v6 = 0;
  SerializedAtomDataForPixelBuffer = vtdss_findAndRetainClientFromCommandPort(v7, &cf);
  if (!SerializedAtomDataForPixelBuffer)
  {
    SerializedAtomDataForPixelBuffer = VTDecompressionSessionCopyBlackPixelBuffer(*(cf + 3), &pixelBufferOut);
    if (!SerializedAtomDataForPixelBuffer)
    {
      SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
      if (SerializedAtomDataForPixelBuffer)
      {
        *(cf + 10) = 0;
      }

      else
      {
        *(cf + 10) = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }
    }
  }

  *v3 = 0;
  *v2 = 0;
  *v1 = 0;
  if (v0)
  {
    *v0 = SerializedAtomDataForPixelBuffer;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_FlushPixelBufferPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v9, cf))
  {
    VTDecompressionSessionFlushPixelBufferPool(cfa[3]);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, void *a2)
{
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = *"";
  v14 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (!vtdss_findAndRetainClientFromCommandPort(a1, &v16))
  {
    VTDecompressionSessionGetMinOutputPresentationTimeStampOfFramesBeingDecoded(v16[3], &v9);
    v3 = v12;
    *(v12 + 3) = v9;
    v3[5] = v10;
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_10_9();
    v8[2] = __VTDecompressionSessionRemoteServer_GetMinOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
    v8[3] = &unk_1E72C92D0;
    v8[4] = &v11;
    v8[5] = v4;
    dispatch_sync(v5, v8);
  }

  if (a2)
  {
    v6 = v12[5];
    *a2 = *(v12 + 3);
    a2[2] = v6;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  _Block_object_dispose(&v11, 8);
  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = *"";
  v22 = *MEMORY[0x1E6960C70];
  v23 = *(MEMORY[0x1E6960C70] + 16);
  v14 = 0;
  v15 = &v14;
  v16 = *"";
  v17 = v22;
  v18 = v23;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = vtdss_findAndRetainClientFromCommandPort(a1, &v24);
  if (!MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded)
  {
    MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(v24[3], v20 + 1, v15 + 1);
    if (!MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded)
    {
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_10_9();
      v13[2] = __VTDecompressionSessionRemoteServer_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
      v13[3] = &unk_1E72C92F8;
      v13[4] = &v19;
      v13[5] = &v14;
      v13[6] = v8;
      dispatch_sync(v9, v13);
      if (a2)
      {
        epoch = v20[1].epoch;
        *a2 = *&v20[1].value;
        a2[2] = epoch;
      }

      MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = 0;
      if (a3)
      {
        v11 = v15[1].epoch;
        *a3 = *&v15[1].value;
        a3[2] = v11;
      }
    }
  }

  if (a4)
  {
    *a4 = MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v19, 8);
  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_TileCreate(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, const char *a9, _DWORD *a10, void *a11, uint64_t *a12, int *a13)
{
  v16 = a3[1];
  *session = *a3;
  v39 = v16;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  theArray = 0;
  session[0] = 0;
  v35 = 0;
  cf = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  v18 = *MEMORY[0x1E695E480];
  if (a9)
  {
    v19 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a9, 0x8000100u);
  }

  else
  {
    v19 = 0;
  }

  FigProcessInfoCreateWithDetails();
  v30 = a6;
  FormatDescriptionArrayFromSerializedAtomData = FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData();
  v31 = a7;
  if (FormatDescriptionArrayFromSerializedAtomData)
  {
    goto LABEL_27;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    Instance = 0;
    v25 = -12902;
    goto LABEL_14;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  FormatDescriptionArrayFromSerializedAtomData = FigCreateCFPropertyListFromData();
  if (FormatDescriptionArrayFromSerializedAtomData)
  {
LABEL_27:
    v25 = FormatDescriptionArrayFromSerializedAtomData;
    Instance = 0;
    goto LABEL_14;
  }

  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_3_17(&_MergedGlobals_16);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance || (v23 = FigOSTransactionCreate(), (Instance[32] = v23) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    v24 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  v24 = VTTileDecompressionSessionCreate(v18, ValueAtIndex, cf, TileDecompressionOutputCallback, Instance, session);
  if (v24)
  {
LABEL_30:
    v25 = v24;
    goto LABEL_14;
  }

  v25 = vtdss_initializeClient(Instance, 0, session[0], a2, a4, ClientPIDFromAuditToken, v35, a10, a11);
  if (!v25)
  {
    valuePtr = ClientPIDFromAuditToken;
    v26 = CFNumberCreate(v18, kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(session[0], @"ClientPID", v26);
    CFRelease(v26);
    *a12 = FigRemote_GetServerTimeoutToken();
  }

LABEL_14:
  if (session[0])
  {
    CFRelease(session[0]);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  OUTLINED_FUNCTION_2_20();
  v27 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a5, v30);
  MEMORY[0x193AE4440](*v27, v31, a8);
  *a13 = v25;
  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_DecodeTile(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11, uint64_t a12)
{
  v39 = 0;
  v40[0] = 0;
  v38 = 0;
  v18 = vtdss_findAndRetainClientFromCommandPort(a1, v40);
  if (v18)
  {
    v28 = v18;
    goto LABEL_25;
  }

  SampleBufferFromSerializedAtomData = FigRemote_CreateSampleBufferFromSerializedAtomData();
  if (!SampleBufferFromSerializedAtomData)
  {
    if (!(a9 | a7))
    {
      v21 = *(v40[0] + 24);
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      v38 = v21;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_15_7();
    SampleBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!SampleBufferFromSerializedAtomData)
    {
      v20 = v40[0];
      if (FigDebugIsInternalBuild())
      {
        *(v20 + 220) = 0;
      }

      v22 = *(v40[0] + 24);
      v23 = v38;
      *(v40[0] + 24) = v38;
      if (v23)
      {
        CFRetain(v23);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v21 = v38;
LABEL_15:
      if (v21)
      {
        v24 = v40[0];
        if (*(v40[0] + 220))
        {
          ++*(v40[0] + 50);
        }

        CFRetain(v24);
        v25 = *(v40[0] + 21);
        v26 = *(v40[0] + 22);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __VTDecompressionSessionRemoteServer_DecodeTile_block_invoke;
        block[3] = &__block_descriptor_tmp_13_3;
        block[4] = v40[0];
        block[5] = v39;
        block[8] = a5;
        block[9] = a6;
        block[10] = a10;
        block[6] = v38;
        block[7] = a12;
        v35 = a11;
        v36 = a2;
        v37 = a7;
        dispatch_group_async(v25, v26, block);
        goto LABEL_19;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      SampleBufferFromSerializedAtomData = FigSignalErrorAtGM();
    }
  }

  v28 = SampleBufferFromSerializedAtomData;
  a4 = 0;
LABEL_25:
  v29 = MEMORY[0x1E69E9A60];
  if (a9)
  {
    OUTLINED_FUNCTION_15_7();
    MEMORY[0x193AE4440]();
  }

  if (!v28)
  {
    goto LABEL_19;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_20();
  }

  if (a7)
  {
    OUTLINED_FUNCTION_2_20();
  }

  if (a4)
  {
    MEMORY[0x193AE4440](*v29, a3, a4);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v40[0])
  {
    v30 = OUTLINED_FUNCTION_16_7(v40[0]);
    VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(v30, v31, v32, v33, v28);
LABEL_19:
    if (v40[0])
    {
      CFRelease(v40[0]);
    }
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_FinishDelayedTiles(uint64_t a1)
{
  v7 = 0;
  v1 = vtdss_findAndRetainClientFromCommandPort(a1, &v7);
  if (v1)
  {
    if (!v7)
    {
      return 0;
    }

    VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(*(v7 + 14), *(v7 + 8), v1);
  }

  else
  {
    CFRetain(v7);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_10_9();
    v6[2] = __VTDecompressionSessionRemoteServer_FinishDelayedTiles_block_invoke;
    v6[3] = &__block_descriptor_tmp_14_4;
    v6[4] = v2;
    dispatch_group_async(v3, v4, v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_GetNextPendingNotification(uint64_t a1, _DWORD *a2, void *a3, char *a4, vm_address_t *a5, unsigned int *a6)
{
  v16 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  vtdss_findAndRetainClientFromCommandPort(a1, &v16);
  if (!v16)
  {
    return 0;
  }

  v19 = 0;
  cf = 0;
  v17 = 0;
  theData = 0;
  PendingNotification = FigRPCFetchNextPendingNotification();
  if (PendingNotification)
  {
    v12 = PendingNotification;
  }

  else
  {
    FigCreateCFDataFromCFPropertyList();
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      strlcpy(a4, CStringPtrAndBufferToFree, 0x200uLL);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (theData)
    {
      Length = CFDataGetLength(theData);
      *a6 = Length;
      v12 = vm_allocate(*MEMORY[0x1E69E9A60], a5, Length, 1560281089);
      if (!v12)
      {
        v13 = *a5;
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v13, BytePtr, *a6);
      }
    }

    else
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
    }
  }

  free(v17);
  if (theData)
  {
    CFRelease(theData);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t vtdss_enqueueTaggedBufferGroup_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t DecompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t TileDecompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTileDecompressionSessionFinishDelayedTiles(uint64_t a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (*(a1 + 168) == 1)
  {
    return 4294954393;
  }

  if (*(a1 + 152))
  {
    v1 = *(a1 + 152);

    return VTDecompressionSessionRemoteBridge_FinishDelayedTiles(v1);
  }

  else
  {
    v3 = *(a1 + 80);
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (*v4 >= 3uLL && (v5 = v4[10]) != 0)
    {

      return v5(v3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t VTTileDecompressionSessionCreate(uint64_t a1, CMVideoFormatDescriptionRef videoDesc, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  if (Dimensions.width * Dimensions.height <= 1073741820.0)
  {
    v13 = 4294954394;
    if (!a4 || !videoDesc || !a6)
    {
      return v13;
    }

    *a6 = 0;
    MEMORY[0x193AE3010](&VTTileDecompressionSessionGetTypeID_sRegisterVTTileDecompressionSessionOnce, RegisterVTTileDecompressionSession);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v15 = Instance;
      if (VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode())
      {
        if (FigServer_IsVideocodecd())
        {
          goto LABEL_14;
        }
      }

      else if (FigServer_IsServerProcess())
      {
        goto LABEL_14;
      }

      if (!VTShouldRunVideoDecodersInProcess())
      {
        v45 = VTTileDecompressionSessionRemoteBridge_Create(v15, a1, videoDesc, a3, a4, a5, (v15 + 152));
        if (!v45)
        {
LABEL_44:
          v13 = 0;
          *(v15 + 176) = MEMORY[0x193AE2670]();
          *a6 = v15;
          return v13;
        }

        v13 = v45;
LABEL_41:
        CFRelease(v15);
        return v13;
      }

LABEL_14:
      *(v15 + 32) = CFRetain(videoDesc);
      if (a3)
      {
        v17 = CFRetain(a3);
      }

      else
      {
        v17 = 0;
      }

      *(v15 + 40) = v17;
      *(v15 + 48) = a4;
      *(v15 + 56) = a5;
      *(v15 + 16) = CMFormatDescriptionGetMediaSubType(videoDesc);
      *(v15 + 128) = FigReadWriteLockCreate();
      *(v15 + 136) = 0;
      *(v15 + 112) = FigReadWriteLockCreate();
      v18 = *MEMORY[0x1E695E480];
      v19 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v19)
      {
        v20 = v19;
        Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v22 = Mutable;
        if (Mutable)
        {
          OUTLINED_FUNCTION_1_22(Mutable, @"CanvasPixelBufferAttributes");
          OUTLINED_FUNCTION_1_22(v23, @"ForgetCachedIOSurfaces");
          OUTLINED_FUNCTION_1_22(v24, @"TileDecoderRequirements");
          OUTLINED_FUNCTION_1_22(v25, @"ClientPID");
        }

        CFRelease(v20);
      }

      else
      {
        v22 = 0;
      }

      *(v15 + 144) = v22;
      v46 = 0;
      v26 = *(v15 + 16);
      v27 = CFGetAllocator(v15);
      v13 = VTSelectAndCreateVideoDecoderInstanceInternal(v26, v27, 0, *(v15 + 40), 0, (v15 + 80), &v46, (v15 + 88));
      if (!v13)
      {
        do
        {
          *(v15 + 64) = v15;
          v28 = *(v15 + 40);
          if (v28)
          {
            Value = CFDictionaryGetValue(v28, @"DecoderUsage");
            if (Value)
            {
              v30 = Value;
              CMBaseObject = VTVideoDecoderGetCMBaseObject(*(v15 + 80));
              v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v32)
              {
                v32(CMBaseObject, @"DecoderUsage", v30);
              }
            }
          }

          v33 = *(v15 + 80);
          v34 = *(v15 + 32);
          v35 = *(CMBaseObjectGetVTable() + 16);
          if (*v35 >= 3uLL && (v36 = v35[8]) != 0)
          {
            v37 = v36(v33, v15 + 64, v34);
            if (!v37)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v37 = -12782;
          }

          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = v37;
          }

          v38 = *(v15 + 88);
          v39 = VTVideoDecoderGetCMBaseObject(*(v15 + 80));
          if (v39)
          {
            v40 = v39;
            v41 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v41)
            {
              v41(v40);
            }
          }

          v42 = *(v15 + 80);
          if (v42)
          {
            CFRelease(v42);
            *(v15 + 80) = 0;
          }

          v46 = 0;
          v43 = *(v15 + 16);
          v44 = CFGetAllocator(v15);
        }

        while (!VTSelectAndCreateVideoDecoderInstanceInternal(v43, v44, 0, *(v15 + 40), v38 + 1, (v15 + 80), &v46, (v15 + 88)));
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      FigSignalErrorAtGM();
      goto LABEL_41;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTileDecoderSessionSetTileDecodeRequirements(uint64_t *a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (a1[1])
  {
    v5 = a1[1];

    return VTParavirtualizationHostDecoderSessionSetTileDecodeRequirements(v5, a2);
  }

  v7 = *a1;
  if (!*a1)
  {
    return 4294954394;
  }

  if (*(v7 + 168) == 1)
  {
    return 4294954393;
  }

  FigReadWriteLockLockForWrite();
  v8 = *(v7 + 96);
  *(v7 + 96) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v7 + 104);
  *(v7 + 104) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  FigReadWriteLockUnlockForWrite();
  return 0;
}

void VTTileDecompressionSessionInvalidate_cold_1(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 80);
  if (v4 && *(a1 + 136))
  {
    VTTileDecompressionSessionFinishDelayedTiles(a1);
    v4 = *(a1 + 80);
  }

  CMBaseObject = VTVideoDecoderGetCMBaseObject(v4);
  if (CMBaseObject)
  {
    v6 = CMBaseObject;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {
      v7(v6);
    }
  }

  *a2 = 1;
  if (*(a1 + 192))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      CMFormatDescriptionGetMediaSubType(*(a1 + 32));
      FigVideoFormatDescriptionContainsHDR();
      CMVideoFormatDescriptionGetDimensions(*(a1 + 32));
      MEMORY[0x193AE2670]();
      FigHostTimeToNanoseconds();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetBoolean();
      FigLogPowerEvent();
      CFRelease(v9);
    }
  }
}

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void applejpegCreateSuggestedQualityOfServiceTiers()
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = xmmword_18FED0C40;
  v10 = xmmword_18FED0C50;
  v11 = 0x3FB999999999999ALL;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  gJPEGVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (gJPEGVideoDecoderSuggestedQualityOfServiceTiers)
  {
    v0 = 0;
    v1 = MEMORY[0x1E695E9D8];
    v2 = MEMORY[0x1E695E9E8];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v1, v2);
      *(v7 + v0) = Mutable;
      if (!Mutable)
      {
        break;
      }

      v4 = Mutable;
      if (!FigCFDictionarySetDouble())
      {
        CFArrayAppendValue(gJPEGVideoDecoderSuggestedQualityOfServiceTiers, v4);
        CFRelease(v4);
        *(v7 + v0) = 0;
        v0 += 8;
        if (v0 != 40)
        {
          continue;
        }
      }

      goto LABEL_6;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM();
LABEL_6:
  for (i = 0; i != 40; i += 8)
  {
    v6 = *(v7 + i);
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void AppleJPEGVideoDecoder_CreateInstance_cold_1(uint64_t a1, CFTypeRef *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t AppleJPEGVideoDecoder_CopyProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t AppleJPEGVideoDecoder_CopyProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

void AppleJPEGVideoDecoder_StartSession_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t AppleJPEGVideoDecoder_StartSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AppleJPEGVideoDecoder_DecodeFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t AppleJPEGVideoDecoder_DecodeFrame_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

void VTPixelTransferSessionSetCrashReporterMethod(char *a1, size_t a2, CVPixelBufferRef pixelBuffer, uint64_t *a4, __CVBuffer *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v61 = *MEMORY[0x1E69E9840];
  if (pixelBuffer && a4 && a5 && a6 && a8)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v15 = CVPixelBufferGetPixelFormatType(a5);
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      ID = IOSurfaceGetID(IOSurface);
    }

    else
    {
      ID = 0;
    }

    v18 = CVPixelBufferGetIOSurface(a5);
    if (v18)
    {
      v50 = IOSurfaceGetID(v18);
    }

    else
    {
      v50 = 0;
    }

    copyBytesPerRowString(v60, pixelBuffer);
    copyBytesPerRowString(v59, a5);
    v19 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965CE8], 0);
    __str = a1;
    v58 = a8;
    v55 = ID;
    v56 = a2;
    cf = v19;
    if (v19 && (Name = CGColorSpaceGetName(v19)) != 0)
    {
      v46 = OUTLINED_FUNCTION_0_23(Name);
    }

    else
    {
      v46 = 0;
    }

    v21 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965EC8], 0);
    v22 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965D88], 0);
    v53 = v15;
    v48 = v22;
    if (v22)
    {
      v44 = OUTLINED_FUNCTION_0_23(v22);
    }

    else
    {
      v44 = 0;
    }

    v23 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
    v49 = v21;
    v47 = v23;
    if (v23)
    {
      v43 = OUTLINED_FUNCTION_0_23(v23);
    }

    else
    {
      v43 = 0;
    }

    v24 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F98], 0);
    v45 = v24;
    if (v24)
    {
      v42 = OUTLINED_FUNCTION_0_23(v24);
    }

    else
    {
      v42 = 0;
    }

    Value = FigCFDictionaryGetValue();
    v26 = FigCFDictionaryGetValue();
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_0_23(v26);
    }

    else
    {
      v27 = 0;
    }

    v28 = FigCFDictionaryGetValue();
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_0_23(v28);
    }

    else
    {
      v29 = 0;
    }

    v30 = FigCFDictionaryGetValue();
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_0_23(v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = printable4CC(PixelFormatType);
    v52 = HIBYTE(v32);
    v33 = BYTE2(v32);
    v34 = BYTE1(v32);
    v35 = v32;
    v41 = *(a4 + 2);
    v36 = *(a4 + 2);
    v37 = *(a4 + 3);
    v38 = *a4;
    v39 = a4[1];
    v40 = printable4CC(v53);
    snprintf(__str, v56, "VTPixelTransferSession  %c%c%c%c sid %zu (%.2f x %.2f) [%.2f %.2f %ld %ld] %s Color( %s, %p, %s, %s, %s) => %c%c%c%c sid %zu (%.2f x %.2f) [%.2f %.2f %ld %ld] %s Color( %p, %s, %s, %s)", v52, v33, v34, v35, v55, *&v41, *(&v41 + 1), v36, v37, v38, v39, v60, v46, v49, v44, v43, v42, HIBYTE(v40), BYTE2(v40), BYTE1(v40), v40, v50, *(a6 + 32), *(a6 + 40), *(a6 + 16), *(a6 + 24), *a6, *(a6 + 8), v59, Value, v27, v29, v31);
    qword_1ED6D3DA0 = __str;
    *v58 = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v45)
    {
      CFRelease(v45);
    }
  }
}

uint64_t VTPixelTransferChainDoTransfer(uint64_t a1, void *a2, __int128 *a3, const void *a4, __int128 *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  bzero(v39, 0x200uLL);
  v37 = 0;
  v9 = *(a1 + 16);
  if (!v9 || (Count = CFArrayGetCount(v9), Count < 1))
  {
LABEL_34:
    v28 = 0;
    goto LABEL_37;
  }

  v11 = Count;
  if (a2)
  {
    a2 = CFRetain(a2);
  }

  v12 = a3[1];
  v34 = *a3;
  v35 = v12;
  v36 = a3[2];
  v13 = a5[1];
  v31 = *a5;
  v32 = v13;
  v14 = (v11 - 1);
  v33 = a5[2];
  if (v11 >= 2)
  {
    while (!CFArrayGetValueAtIndex(*(a1 + 16), v14) || *(CMBaseObjectGetDerivedStorage() + 16))
    {
      if (v14-- <= 1)
      {
        LODWORD(v14) = 0;
        break;
      }
    }
  }

  v16 = 0;
  v17 = *MEMORY[0x1E695E480];
  v18 = v14;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v16);
    v20 = ValueAtIndex;
    if (v16)
    {
      a2 = pixelBufferOut;
      v34 = v31;
      v35 = v32;
      v36 = v33;
    }

    pixelBufferOut = 0;
    if (v18 == v16)
    {
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      pixelBufferOut = v23;
      v26 = a5[1];
      v31 = *a5;
      v32 = v26;
      v27 = a5[2];
      goto LABEL_33;
    }

    if (ValueAtIndex && *(CMBaseObjectGetDerivedStorage() + 16))
    {
      if (a2)
      {
        v23 = CFRetain(a2);
      }

      else
      {
        v23 = 0;
      }

      pixelBufferOut = v23;
      v31 = v34;
      v32 = v35;
      v27 = v36;
LABEL_33:
      v33 = v27;
      goto LABEL_19;
    }

    pixelBufferOut = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v22 = CVPixelBufferPoolCreatePixelBuffer(v17, *(DerivedStorage + 8), &pixelBufferOut);
    if (v22)
    {
      break;
    }

    *&v31 = CVPixelBufferGetWidth(pixelBufferOut);
    *(&v31 + 1) = CVPixelBufferGetHeight(pixelBufferOut);
    v32 = 0uLL;
    *&v33 = v31;
    *(&v33 + 1) = *(&v31 + 1);
    v23 = pixelBufferOut;
LABEL_19:
    VTPixelTransferSessionSetCrashReporterMethod(v39, 0x200uLL, a2, &v34, v23, &v31, *(a1 + 24), &v37);
    v24 = pixelBufferOut;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v25)
    {
      qword_1ED6D3DA0 = v37;
      v28 = 4294954514;
      if (!a2)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v22 = v25(v20, a2, &v34, v24, &v31);
    qword_1ED6D3DA0 = v37;
    if (v22)
    {
      break;
    }

    if (a2)
    {
      CFRelease(a2);
    }

    a2 = 0;
    if (v11 == ++v16)
    {
      goto LABEL_34;
    }
  }

  v28 = v22;
  if (a2)
  {
LABEL_36:
    CFRelease(a2);
  }

LABEL_37:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v28;
}

uint64_t VTPixelTransferChainFlush(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v9)
        {
          result = v9(ValueAtIndex, a2);
        }

        else
        {
          result = 4294954514;
        }
      }
    }
  }

  return result;
}

uint64_t VTPixelTransferChainAppendNode(uint64_t a1, const void *a2)
{
  Count = CFArrayGetCount(*(a1 + 16));
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (!Count)
    {
      goto LABEL_9;
    }

    v6 = result;
    if (!CFArrayGetValueAtIndex(*(a1 + 16), Count - 1))
    {
      goto LABEL_9;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 16) || *(v6 + 16))
    {
      goto LABEL_9;
    }

    v8 = DerivedStorage;
    v10 = (DerivedStorage + 8);
    v9 = *(DerivedStorage + 8);
    if (v9)
    {
      CFRelease(v9);
      *v10 = 0;
    }

    result = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, *v8, v10);
    if (!result)
    {
LABEL_9:
      CFArrayAppendValue(*(a1 + 16), a2);
      return 0;
    }
  }

  return result;
}

uint64_t VTPixelTransferChainCreate(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x193AE3010](&VTPixelTransferChainGetTypeID_sRegisterVTPixelTransferChainOnce, RegisterVTPixelTransferChain);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      v7 = *MEMORY[0x1E695E480];
      *(Instance + 16) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (a2)
      {
        *(v6 + 24) = CFDictionaryCreateCopy(v7, a2);
      }

      result = 0;
      *a3 = v6;
    }

    else
    {
      return 4294954392;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t VTPixelTransferChainCreatePixelBufferPoolAttributes(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v9 = Mutable;
  v10 = FigCFDictionarySetInt32();
  if (v10 || (v10 = FigCFDictionarySetInt64(), v10) || (v10 = FigCFDictionarySetInt64(), v10))
  {
    v13 = v10;
LABEL_11:
    CFRelease(v9);
    return v13;
  }

  if (!a2)
  {
    v13 = 0;
    *a5 = v9;
    return v13;
  }

  v11 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v11)
  {
    v13 = 4294954392;
    goto LABEL_11;
  }

  v12 = v11;
  FigCFDictionarySetValue();
  *a5 = v9;
  CFRelease(v12);
  return 0;
}

uint64_t VTPixelTransferChainCopyFirstNodeProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a4)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v10 = 0;
      v4 = 0;
      v11 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v10);
        if (ValueAtIndex)
        {
          v13 = ValueAtIndex;
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v14)
          {
            return 4294954514;
          }

          v15 = v14(v13, a2, a3, a4);
          v4 = 4294954396;
          if (v15 != -12900)
          {
            break;
          }
        }

        if (v11 == ++v10)
        {
          return v4;
        }
      }

      return v15;
    }
  }

  return v4;
}

__CFString *vtPixelTransferChainCopyDebugDesc(CFArrayRef *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v3 = CFGetTypeID(v2);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  CFArrayGetCount(a1[2]);
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTPixelTransferChain %p [%p]>{", a1, v6);
  CFStringAppendFormat(Mutable, 0, @"\n}");
  return Mutable;
}

uint64_t VTTestMotionEstimationProcessor_CreateInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  VTMotionEstimationProcessorGetClassID();
  v3 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return v3;
}

uint64_t VTTestMotionEstimationProcessor_Invalidate(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 != VTMotionEstimationProcessorGetTypeID())
  {
    return 4294954394;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  *DerivedStorage = 1;
  return result;
}

void VTTestMotionEstimationProcessor_Finalize(const void *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (v1 == VTMotionEstimationProcessorGetTypeID())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 16) = 0;
      v3 = *(DerivedStorage + 8);
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

__CFString *VTTestMotionEstimationProcessor_CopyDebugDescription(const void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == VTMotionEstimationProcessorGetTypeID())
    {
      CFStringAppendFormat(Mutable, 0, @"<VTTestMotionEstimationProcessor %p>", a1);
    }
  }

  return Mutable;
}

uint64_t VTTestMotionEstimationProcessor_CopyProperty(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294954394;
  }

  v5 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  result = 4294954394;
  if (a4 && v5 == TypeID)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      result = 0;
      if (*(DerivedStorage + 29))
      {
        v9 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      *a4 = *v9;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t VTTestMotionEstimationProcessor_SetProperty(const void *a1, const void *a2)
{
  if (!a1)
  {
    return 4294954394;
  }

  v3 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  if (!a2)
  {
    return 4294954394;
  }

  if (v3 != TypeID)
  {
    return 4294954394;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != CFStringGetTypeID())
  {
    return 4294954394;
  }

  CMBaseObjectGetDerivedStorage();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTTestMotionEstimationProcessor_StartSession(const void *a1, unint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  v5 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  v7 = 4294954394;
  if (a3 && v5 == TypeID && HIDWORD(a2) && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = FigCFDictionarySetInt32();
    if (v11 || (v11 = FigCFDictionarySetInt32(), v11) || (v11 = FigCFDictionarySetInt32(), v11) || (v11 = VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(a3, Mutable), v11))
    {
      v7 = v11;
      v12 = 0;
    }

    else
    {
      v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = FigCFDictionarySetInt32();
      if (v13 || (v13 = FigCFDictionarySetInt32(), v13) || (v13 = FigCFDictionarySetInt32(), v13))
      {
        v7 = v13;
      }

      else
      {
        v7 = VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(a3, v12);
        if (!v7)
        {
          *(DerivedStorage + 16) = a3;
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v7;
}

uint64_t VTTestMotionEstimationProcessor_ProcessFrame(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, const void *a6)
{
  cf = 0;
  if (!a1)
  {
    return 4294954394;
  }

  v10 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  v12 = 4294954394;
  if (!a3)
  {
    return v12;
  }

  if (v10 != TypeID)
  {
    return v12;
  }

  v13 = CFGetTypeID(a3);
  v14 = CVPixelBufferGetTypeID();
  if (!a4 || v13 != v14)
  {
    return v12;
  }

  v15 = CFGetTypeID(a4);
  if (v15 != CVPixelBufferGetTypeID())
  {
    return 4294954394;
  }

  if (a6)
  {
    v16 = CFGetTypeID(a6);
    if (v16 != CFDictionaryGetTypeID())
    {
      return 4294954394;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = VTMotionEstimationProcessorSessionCreateMotionVectorPixelBuffer(*(DerivedStorage + 16), &cf);
  v19 = cf;
  if (v18)
  {
    if (cf)
    {
      CFRelease(cf);
      v19 = 0;
      cf = 0;
    }

    v20 = 4294954392;
  }

  else
  {
    v20 = 0;
  }

  v12 = VTMotionEstimationProcessorSessionEmitMotionVectors(*(DerivedStorage + 16), a2, v20, 0, 0, v19);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t VTTestMotionEstimationProcessor_CopySupportedPropertyDictionary(const void *a1, void *a2)
{
  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_3, vtTestMotionEstimationProcessor_createSupportedPropertyDictionary);
  if (!a1)
  {
    return 4294954394;
  }

  v4 = CFGetTypeID(a1);
  TypeID = VTMotionEstimationProcessorGetTypeID();
  result = 4294954394;
  if (a2 && v4 == TypeID)
  {
    if (sVTTestMotionEstimationProcessorSupportedPropertyDictionary)
    {
      v7 = CFRetain(sVTTestMotionEstimationProcessorSupportedPropertyDictionary);
      result = 0;
      *a2 = v7;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t DolbyVisionDecoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    v8 = *(DerivedStorage + 48);
    if (!v8)
    {
      v9 = 0;
LABEL_9:
      result = 0;
      *a4 = v9;
      return result;
    }

LABEL_8:
    v9 = CFRetain(v8);
    goto LABEL_9;
  }

  if (CFEqual(a2, @"PropagatePerFrameHDRDisplayMetadata"))
  {
    v10 = MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 56))
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    v8 = *v10;
    goto LABEL_8;
  }

  v12 = *(DerivedStorage + 40);
  if (!v12)
  {
    return 4294954393;
  }

  return VTSessionCopyProperty(v12, a2, a3, a4);
}

uint64_t DolbyVisionDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFDictionaryGetTypeID())
      {
        v7 = *(DerivedStorage + 48);
        *(DerivedStorage + 48) = a3;
LABEL_5:
        CFRetain(a3);
        if (v7)
        {
          CFRelease(v7);
        }

        return 0;
      }
    }

    goto LABEL_20;
  }

  if (CFEqual(a2, @"PropagatePerFrameHDRDisplayMetadata"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 56) = Value;
        return result;
      }
    }

LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"DecompressionSessionOptions"))
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFDictionaryGetTypeID())
      {
        v7 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = a3;
        goto LABEL_5;
      }
    }

    goto LABEL_20;
  }

  v12 = *(DerivedStorage + 40);
  if (!v12)
  {
    return 4294954393;
  }

  return VTSessionSetProperty(v12, a2, a3);
}

uint64_t DolbyVisionDecoder_StartSession(uint64_t a1, void *a2, const void *a3)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTVideoDecoderGetCMBaseObject(a1);
  v7 = CMBaseObjectGetDerivedStorage();
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v8 = CFPreferencesCopyAppValue(@"dovi_bsd_output_pixel_format", @"com.apple.coremedia");
  if (v8)
  {
    v9 = v8;
    v10 = 2016686640;
    if (CFStringCompare(v8, @"x420", 0))
    {
      if (CFStringCompare(v9, @"xf20", 0) == kCFCompareEqualTo)
      {
LABEL_6:
        v10 += 3276800;
        goto LABEL_7;
      }

      v10 = 1882468912;
      if (CFStringCompare(v9, @"p420", 0))
      {
        if (CFStringCompare(v9, @"pf20", 0))
        {
LABEL_8:
          CFRelease(v9);
          goto LABEL_9;
        }

        goto LABEL_6;
      }
    }

LABEL_7:
    *(v7 + 96) = v10;
    goto LABEL_8;
  }

LABEL_9:
  v11 = *(DerivedStorage + 16);
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  VTVideoDecoderGetCMBaseObject(a1);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *MEMORY[0x1E69600A0];
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69600A0]);
  if (Extension)
  {
    v15 = Extension;
    v16 = CFGetTypeID(Extension);
    if (v16 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v15, @"dvcC");
      v18 = MEMORY[0x1E6960158];
      if (Value)
      {
        v19 = Value;
        *(v12 + 100) = 1;
        *(v12 + 113) = 1;
        *(v12 + 108) = 1;
      }

      else
      {
        v20 = CFDictionaryGetValue(v15, @"dvvC");
        if (!v20)
        {
          goto LABEL_50;
        }

        v19 = v20;
        *(v12 + 112) = 1;
      }

      v21 = CFGetTypeID(v19);
      if (v21 != CFDataGetTypeID())
      {
        goto LABEL_50;
      }

      if (CFDataGetLength(v19) <= 8)
      {
        goto LABEL_127;
      }

      BytePtr = CFDataGetBytePtr(v19);
      v23 = *BytePtr;
      v24 = BytePtr[2];
      v25 = BytePtr[4];
      v26 = BytePtr[3];
      HIDWORD(v28) = v24;
      LODWORD(v28) = v26 << 24;
      v27 = v28 >> 27;
      if (v24 >= 2)
      {
        v29 = v24 >> 1;
      }

      else
      {
        v29 = v27;
      }

      if (v29 == 20)
      {
        if (v23 != 3)
        {
          goto LABEL_127;
        }
      }

      else if (v23 != 1)
      {
        goto LABEL_127;
      }

      if (!BytePtr[1] && (v26 & 1) != 0 && (v26 & 2) == 0 && (v25 & 0xC) == 0)
      {
        *(v12 + 24) = v29;
        *(v12 + 26) = (v26 & 4) != 0;
        if (v29 == 5)
        {
          OUTLINED_FUNCTION_2_21();
          goto LABEL_44;
        }

        v30 = v25 >> 4;
        v31 = MEMORY[0x1E6965F50];
        if (v29 != 10)
        {
          if (v29 == 8)
          {
            if (v30 != 4)
            {
              if (v30 != 2)
              {
                if (v30 != 1)
                {
                  goto LABEL_51;
                }

                *(v12 + 100) = 5;
                *(v12 + 104) = 256;
                goto LABEL_45;
              }

              v70 = 3;
LABEL_115:
              *(v12 + 100) = v70;
              v33 = *v31;
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_2_21();
            v72 = 4;
LABEL_117:
            *(v12 + 100) = v72;
            v33 = *v71;
            goto LABEL_46;
          }

          if (v29 != 20)
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_2_21();
          v32 = 10;
LABEL_44:
          *(v12 + 100) = v32;
LABEL_45:
          v33 = *v18;
LABEL_46:
          *(v12 + 120) = v33;
          goto LABEL_51;
        }

        if (v25 <= 0xF)
        {
          OUTLINED_FUNCTION_2_21();
          v32 = 6;
          goto LABEL_44;
        }

        if (v30 == 4)
        {
          OUTLINED_FUNCTION_2_21();
          v72 = 9;
          goto LABEL_117;
        }

        if (v30 == 2)
        {
          v70 = 8;
          goto LABEL_115;
        }

        if (v30 != 1)
        {
LABEL_51:
          if (*(v12 + 100))
          {
            goto LABEL_52;
          }

          goto LABEL_127;
        }

LABEL_50:
        *(v12 + 100) = 5;
        *(v12 + 120) = *v18;
        *(v12 + 105) = 1;
        goto LABEL_51;
      }
    }
  }

LABEL_127:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_19_1();
  v40 = FigSignalErrorAtGM();
  if (v40)
  {
    return v40;
  }

LABEL_52:
  VTVideoDecoderGetCMBaseObject(a1);
  v34 = CMBaseObjectGetDerivedStorage();
  v35 = *(v34 + 4);
  switch(v35)
  {
    case 1667524657:
      v38 = 1667790435;
      goto LABEL_74;
    case 1684108849:
      v38 = 1635135537;
      break;
    case 2053400625:
      v38 = 2053666403;
      goto LABEL_76;
    case 1685481521:
      v38 = 1752589105;
      goto LABEL_74;
    case 1685481573:
      v38 = 1751479857;
      goto LABEL_74;
    default:
      OUTLINED_FUNCTION_3_18();
      if (!v36)
      {
        OUTLINED_FUNCTION_3_18();
        if (v36)
        {
          v39 = 30307;
        }

        else
        {
          OUTLINED_FUNCTION_3_18();
          if (!v36)
          {
            OUTLINED_FUNCTION_3_18();
            if (v36)
            {
              v38 = 1902998904;
            }

            else
            {
              if (v37 != 1684895096)
              {
                return 4294954394;
              }

              v38 = 1836415073;
            }

            goto LABEL_74;
          }

          v39 = 25974;
        }

        v38 = v39 | 0x71680000;
LABEL_74:
        v41 = 1;
        goto LABEL_75;
      }

      v38 = 1902212657;
      break;
  }

  v41 = 2;
LABEL_75:
  *(v34 + 108) = v41;
LABEL_76:
  Dimensions = CMVideoFormatDescriptionGetDimensions(*(v34 + 16));
  Extensions = CMFormatDescriptionGetExtensions(*(v34 + 16));
  v44 = MEMORY[0x1E695E480];
  if (!Extensions || (v45 = Extensions, (v46 = CFDictionaryGetValue(Extensions, v13)) == 0) || (v47 = v46, v48 = *v44, (v49 = CFDictionaryCreateMutableCopy(*v44, 0, v45)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_1();
    v40 = FigSignalErrorAtGM();
    if (v40)
    {
      return v40;
    }

LABEL_92:
    VTVideoDecoderGetCMBaseObject(a1);
    v57 = CMBaseObjectGetDerivedStorage();
    VTDecoderSessionGetDestinationPixelBufferAttributes(a2);
    v58 = *v44;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_1();
      return FigSignalErrorAtGM();
    }

    v60 = MutableCopy;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_1();
      v40 = FigSignalErrorAtGM();
      v67 = v60;
LABEL_101:
      CFRelease(v67);
      return v40;
    }

    v62 = Mutable;
    if (*(v57 + 96))
    {
      FigCFArrayAppendInt32();
      v63 = *MEMORY[0x1E6966130];
      v64 = v60;
    }

    else
    {
      v65 = *MEMORY[0x1E6966130];
      if (CFDictionaryGetValue(v60, *MEMORY[0x1E6966130]))
      {
        goto LABEL_98;
      }

      LOBYTE(v73) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA())
      {
        v69 = *MEMORY[0x1E695E4D0];
        if (v69 == CFDictionaryGetValue(v60, *MEMORY[0x1E69660C8]))
        {
          FigCFArrayAppendInt32();
          FigCFArrayAppendInt32();
        }
      }

      if (dovi_shouldAllowInterchangeCompressedPixelFormatForHDRPlaybackToCA())
      {
        FigCFArrayAppendInt32();
      }

      if (dovi_shouldAllowInterchangeCompressedPixelFormatForHDRPlaybackToCA())
      {
        FigCFArrayAppendInt32();
      }

      CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      FigCFArrayAppendInt32();
      CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      FigCFArrayAppendInt32();
      v64 = v60;
      v63 = v65;
    }

    CFDictionarySetValue(v64, v63, v62);
LABEL_98:
    v73 = xmmword_1F0390F28;
    v66 = VTDecompressionSessionCreateWithOptions(v58, *(v57 + 32), *(v57 + 48), v60, &v73, *(v57 + 64), (v57 + 40));
    if (!v66)
    {
      v66 = VTDecompressionSessionSetMultiImageCallback(*(v57 + 40), dovi_multiImageDecompressionOutput, 0);
    }

    v40 = v66;
    CFRelease(v60);
    v67 = v62;
    goto LABEL_101;
  }

  v50 = v49;
  v51 = a2;
  v52 = CFDictionaryCreateMutableCopy(v48, 0, v47);
  if (!v52)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_1();
    v40 = FigSignalErrorAtGM();
    v56 = v50;
    goto LABEL_91;
  }

  v53 = v52;
  if (*(v34 + 113))
  {
    v54 = @"dvcC";
LABEL_87:
    CFDictionaryRemoveValue(v52, v54);
    goto LABEL_88;
  }

  if (*(v34 + 112))
  {
    CFDictionaryRemoveValue(v52, @"dvvC");
    if (*(v34 + 100) != 2)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  if (*(v34 + 100) == 5)
  {
LABEL_86:
    CFDictionaryRemoveValue(v50, *MEMORY[0x1E6960080]);
    v54 = *MEMORY[0x1E6960020];
    v52 = v50;
    goto LABEL_87;
  }

LABEL_88:
  CFDictionarySetValue(v50, v13, v53);
  CFDictionaryRemoveValue(v50, *MEMORY[0x1E69600D0]);
  CFDictionaryRemoveValue(v50, *MEMORY[0x1E69600C8]);
  v55 = *(v34 + 120);
  if (v55)
  {
    CFDictionarySetValue(v50, *MEMORY[0x1E6965F30], v55);
  }

  v40 = CMVideoFormatDescriptionCreate(v48, v38, Dimensions.width, Dimensions.height, v50, (v34 + 32));
  CFRelease(v50);
  v56 = v53;
LABEL_91:
  CFRelease(v56);
  a2 = v51;
  v44 = MEMORY[0x1E695E480];
  if (!v40)
  {
    goto LABEL_92;
  }

  return v40;
}

uint64_t DolbyVisionDecoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  v12 = 0;
  v13 = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
LABEL_13:
    Mutable = 0;
    goto LABEL_5;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    v8 = VTSessionCopySupportedPropertyDictionary(v7, &cf);
    if (!v8)
    {
      Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"SublayerDecoderSpecification", v5);
      CFDictionarySetValue(Mutable, @"PropagatePerFrameHDRDisplayMetadata", v5);
      CFDictionarySetValue(Mutable, @"PixelTransferProperties", v5);
      v12 = cf;
      v13 = Mutable;
      FigCFCreateCombinedDictionary();
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  Mutable = 0;
  v8 = 4294954393;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_16(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyVisionDecoder_DecodeFrame_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dovi_createDerivedSampleBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCompleteTiles(uint64_t a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v2)
  {
    return 4294954393;
  }

  if (*(v1 + 168))
  {
    v3 = *(v1 + 168);

    return VTTileCompressionSessionRemote_CompleteTiles(v3);
  }

  else
  {
    v5 = *(v1 + 80);
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (*v6 >= 3uLL && (v7 = v6[20]) != 0)
    {

      return v7(v5);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t VTTileCompressionSessionCreate(uint64_t a1, unint64_t a2, uint64_t a3, const __CFDictionary *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = HIDWORD(a2);
  if (a9)
  {
    v11 = a2 < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || SHIDWORD(a2) < 1)
  {
    return 4294954394;
  }

  *a9 = 0;
  MEMORY[0x193AE3010](&VTTileCompressionSessionGetTypeID_sRegisterVTTileCompressionSessionOnce, RegisterVTTileCompressionSession);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v20 = Instance;
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      if (FigServer_IsVideocodecd())
      {
        goto LABEL_17;
      }
    }

    else if (FigServer_IsServerProcess())
    {
      goto LABEL_17;
    }

    if (!VTShouldRunVideoEncodersInProcess())
    {
      v72 = VTTileCompressionSessionRemote_Create(v20, a1, a2, a3, a4, a5, a6, a7, a8, (v20 + 168));
      if (!v72)
      {
LABEL_49:
        VideoEncoderInstanceInternal = 0;
        *(v20 + 184) = MEMORY[0x193AE2670]();
        *a9 = v20;
        return VideoEncoderInstanceInternal;
      }

      VideoEncoderInstanceInternal = v72;
LABEL_46:
      CFRelease(v20);
      return VideoEncoderInstanceInternal;
    }

LABEL_17:
    *(v20 + 20) = a2;
    *(v20 + 24) = v10;
    *(v20 + 16) = a3;
    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    *(v20 + 32) = v22;
    if (a5)
    {
      v23 = CFRetain(a5);
    }

    else
    {
      v23 = 0;
    }

    *(v20 + 40) = v23;
    *(v20 + 48) = a7;
    *(v20 + 56) = a8;
    label = 0;
    asprintf(&label, "vttile-encoder-pending-tile-queue-%p", v20);
    *(v20 + 136) = dispatch_queue_create(label, 0);
    free(label);
    *(v20 + 144) = 0;
    asprintf(&label, "vttile-encoder-callback-access-queue-%p", v20);
    *(v20 + 152) = dispatch_queue_create(label, 0);
    free(label);
    v24 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable && (v26 = CFDictionaryCreate(v24, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      v27 = v26;
      v28 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_4_18();
      CFDictionaryAddValue(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_4_18();
      CFDictionarySetValue(v40, v41, v42);
      CFRelease(v27);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_7();
      FigSignalErrorAtGM();
    }

    *(v20 + 160) = Mutable;
    CFGetAllocator(v20);
    v43 = OUTLINED_FUNCTION_7_11();
    VideoEncoderInstanceInternal = VTSelectAndCreateVideoEncoderInstanceInternal(v43, v44, v45, v46, 0, v47, 0, v48, 0);
    if (!VideoEncoderInstanceInternal)
    {
      do
      {
        *(v20 + 64) = v20;
        v50 = *(v20 + 32);
        if (v50)
        {
          Value = CFDictionaryGetValue(v50, @"EncoderUsage");
          if (Value)
          {
            v52 = Value;
            CMBaseObject = VTVideoEncoderGetCMBaseObject(*(v20 + 80));
            v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v54)
            {
              v54(CMBaseObject, @"EncoderUsage", v52);
            }
          }
        }

        v55 = *(v20 + 80);
        v56 = *(v20 + 32);
        v57 = *(v20 + 20);
        v58 = *(CMBaseObjectGetVTable() + 16);
        if (*v58 >= 3uLL && (v59 = v58[17]) != 0)
        {
          v60 = v59(v55, v20 + 64, v56, v57, a6);
          if (!v60)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v60 = -12782;
        }

        if (VideoEncoderInstanceInternal)
        {
          VideoEncoderInstanceInternal = VideoEncoderInstanceInternal;
        }

        else
        {
          VideoEncoderInstanceInternal = v60;
        }

        v61 = VTVideoEncoderGetCMBaseObject(*(v20 + 80));
        if (v61)
        {
          v62 = v61;
          v63 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v63)
          {
            v63(v62);
          }
        }

        v64 = *(v20 + 80);
        if (v64)
        {
          CFRelease(v64);
          *(v20 + 80) = 0;
        }

        CFGetAllocator(v20);
        v65 = OUTLINED_FUNCTION_7_11();
      }

      while (!VTSelectAndCreateVideoEncoderInstanceInternal(v65, v66, v67, v68, v69, v70, 0, v71, 0));
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_7();
    FigSignalErrorAtGM();
    goto LABEL_46;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_7();

  return FigSignalErrorAtGM();
}

uint64_t VTTileCompressionSessionPrepareToEncodeTiles(void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v4)
  {
    return 4294954393;
  }

  v5 = v3;
  v6 = v2;
  v7 = a1[21];
  if (v7)
  {

    return VTTileCompressionSessionRemote_PrepareToEncodeTiles(v7, v2, v3);
  }

  else
  {
    v9 = a1[10];
    v10 = *(CMBaseObjectGetVTable() + 16);
    if (*v10 >= 3uLL && (v11 = v10[18]) != 0)
    {
      result = v11(v9, v6);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      result = 4294954514;
      if (!v5)
      {
        return result;
      }
    }

    *v5 = a1[13];
  }

  return result;
}

uint64_t VTTileCompressionSessionEncodeTile(uint64_t a1)
{
  v26 = 0;
  if (!a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    return 4294954393;
  }

  v9 = v7;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = *(a1 + 168);
  if (!v14)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2000000000;
    v40 = 0;
    v16 = OUTLINED_FUNCTION_2_22();
    v28 = 0x40000000;
    v29 = __vtTileCompressionSessionTrackTileEnteringEncoder_block_invoke;
    v30 = &unk_1E72C9498;
    v35 = v12;
    v36 = v11;
    v33 = a1;
    v34 = &v26;
    v31 = v18;
    v32 = v17;
    dispatch_sync(v16, block);
    v19 = *(v38 + 6);
    _Block_object_dispose(&v37, 8);
    if (!v19)
    {
      v20 = *(a1 + 80);
      v21 = v26;
      v22 = *(CMBaseObjectGetVTable() + 16);
      if (*v22 >= 3uLL && (v23 = v22[19]) != 0)
      {
        v19 = v23(v20, v21, v13, v12, v11, v10, v9);
        ++*(a1 + 196);
        if (!v19)
        {
          return v19;
        }
      }

      else
      {
        ++*(a1 + 196);
        v19 = 4294954514;
      }

      v37 = 0;
      v24 = OUTLINED_FUNCTION_2_22();
      v28 = 0x40000000;
      v29 = __vtTileCompressionSessionTrackTileLeavingEncoder_block_invoke;
      v30 = &__block_descriptor_tmp_17_4;
      v31 = a1;
      v32 = v25;
      v33 = &v37;
      dispatch_sync(v24, block);
      free(v37);
    }

    return v19;
  }

  return VTTileCompressionSessionRemote_EncodeTile(v14, v2, v3, v4, v5, v6, v7);
}

uint64_t VTTileEncoderSessionSetTileAttributes(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (!a1[1])
  {
    v7 = *a1;
    if (*a1)
    {
      if (*(v7 + 176) == 1)
      {
        return 4294954393;
      }

      v19 = v3;
      v20 = v4;
      v8 = OUTLINED_FUNCTION_3_19(v7);
      v13 = 0x40000000;
      v14 = __VTTileEncoderSessionSetTileAttributes_block_invoke;
      v15 = &__block_descriptor_tmp_9_2;
      v16 = v10;
      v17 = v9;
      v18 = v11;
      dispatch_sync(v8, block);
      return 0;
    }

    return 4294954394;
  }

  v5 = a1[1];

  return VTParavirtualizationHostEncoderSessionSetTileAttributes(v5, a2, a3);
}

uint64_t VTTileEncoderSessionCreateVideoFormatDescription(void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (a1[1])
  {
    OUTLINED_FUNCTION_5_15();

    return VTParavirtualizationHostEncoderSessionCreateTileVideoFormatDescription(v1, v2, v3, v4, v5, v6);
  }

  if (!*a1)
  {
    return 4294954394;
  }

  OUTLINED_FUNCTION_6_14();
  if (v9)
  {
    return 4294954393;
  }

  CFGetAllocator(v8);
  OUTLINED_FUNCTION_5_15();

  return CMVideoFormatDescriptionCreate(v10, v11, v12, v13, v14, v15);
}

uint64_t VTTileEncoderSessionSetTileEncodeRequirements(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (!a1[1])
  {
    v7 = *a1;
    if (*a1)
    {
      if (*(v7 + 176) == 1)
      {
        return 4294954393;
      }

      v19 = v3;
      v20 = v4;
      v8 = OUTLINED_FUNCTION_3_19(v7);
      v13 = 0x40000000;
      v14 = __VTTileEncoderSessionSetTileEncodeRequirements_block_invoke;
      v15 = &__block_descriptor_tmp_10_7;
      v16 = v10;
      v17 = v9;
      v18 = v11;
      dispatch_sync(v8, block);
      return 0;
    }

    return 4294954394;
  }

  v5 = a1[1];

  return VTParavirtualizationHostEncoderSessionSetTileEncodeRequirements(v5, a2, a3);
}

void VTTileCompressionSessionInvalidate_cold_1(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 80);
  if (v4 && *(a1 + 144))
  {
    VTTileCompressionSessionCompleteTiles(a1);
    v4 = *(a1 + 80);
  }

  CMBaseObject = VTVideoEncoderGetCMBaseObject(v4);
  if (CMBaseObject)
  {
    v6 = CMBaseObject;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {
      v7(v6);
    }
  }

  *a2 = 1;
  if (*(a1 + 180))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      MEMORY[0x193AE2670]();
      FigHostTimeToNanoseconds();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetBoolean();
      FigLogPowerEvent();
      CFRelease(v9);
    }
  }
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_CreateInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a3)
  {
    return 4294954394;
  }

  VTVideoEncoderGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    return 4294954392;
  }

  return v3;
}

uint64_t TestIPBVideoEncoder_StartSession(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *DerivedStorage = a2;
  *(DerivedStorage + 76) = 0xF000000140;
  Mutable = CFDictionaryCreateMutable(v4, 4, v5, v6);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  v9 = VTEncoderSessionSetPixelBufferAttributes(a2, Mutable);
  if (!v9)
  {
    v9 = CMVideoFormatDescriptionCreate(v4, 0x69706220u, *(DerivedStorage + 76), *(DerivedStorage + 80), 0, (DerivedStorage + 104));
  }

  v10 = v9;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t TestIPBVideoEncoder_encodeFrameCommon(uint64_t a1, CMTimeValue a2, __int128 *a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = a4 && (v7 = CFDictionaryGetValue(a4, @"EncoderForceKeyframe")) != 0 && CFEqual(v7, *MEMORY[0x1E695E4D0]) != 0;
  if (*(DerivedStorage + 24) && !v8 && *(DerivedStorage + 112) != 1)
  {
    --*(DerivedStorage + 112);
    v13 = 120;
    v17 = 80;
    if (*(DerivedStorage + 25))
    {
      Count = CFArrayGetCount(*(DerivedStorage + 120));
      v12 = 0;
      v19 = *(DerivedStorage + 36);
      v9 = Count < v19;
      v16 = Count >= v19;
      if (Count >= v19)
      {
        v17 = 80;
      }

      else
      {
        v17 = 88;
      }

      if (Count >= v19)
      {
        v13 = 66;
      }

      else
      {
        v13 = 120;
      }

      v15 = 1;
      v10 = Count < v19;
      v14 = Count >= v19;
      goto LABEL_25;
    }

    v9 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 1;
    v10 = 1;
    goto LABEL_24;
  }

  *(DerivedStorage + 112) = *(DerivedStorage + 28);
  if (*(DerivedStorage + 40))
  {
    if (*(DerivedStorage + 32))
    {
      v9 = 0;
      v10 = 0;
      v11 = *(DerivedStorage + 88);
      v12 = v11 != 1;
      if (v11 == 1)
      {
        v13 = 98;
      }

      else
      {
        v13 = 66;
      }
    }

    else
    {
      v9 = 0;
      v12 = 0;
      v10 = 0;
      v13 = 80;
    }

    v16 = 1;
    v17 = 73;
    v14 = 1;
LABEL_24:
    v15 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 80;
  v16 = 1;
  v17 = 73;
  v10 = 1;
LABEL_25:
  OUTLINED_FUNCTION_2_23();
  result = VTEncoderSessionEnqueuePresentationTimeStamp(v20, &value);
  if (!result)
  {
    v22 = v12;
    v23 = v10;
    v24 = v9;
    v29 = v14;
    v25 = v22;
    v26 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = v26 + 1;
    if (!v16)
    {
      v32 = *a3;
      v33 = *(a3 + 2);
      v27 = CMBaseObjectGetDerivedStorage();
      value.value = a2;
      *&value.timescale = v32;
      v35 = v33;
      v36 = v26;
      CFArrayInsertValueAtIndex(*(v27 + 120), 0, &value);
    }

    if ((v15 & 1) != 0 || (result = TestIPBVideoEncoder_dequeueAndEmitAllQueuedFrames(a1, v13), !result))
    {
      if (v24)
      {
        if (v23)
        {
          return 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_23();
        result = TestIPBVideoEncoder_emitFrame(a1, v17, v25, a2, &value, v26);
        v28 = v29;
        if (result)
        {
          v28 = 0;
        }

        if (!v28)
        {
          return result;
        }
      }

      return TestIPBVideoEncoder_dequeueAndEmitAllQueuedFrames(a1, v13);
    }
  }

  return result;
}

uint64_t TestIPBVideoEncoder_dequeueAndEmitAllQueuedFrames(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  while (CFArrayGetCount(*(DerivedStorage + 120)) >= 1)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = *(v5 + 120);
    Count = CFArrayGetCount(v6);
    ValueAtIndex = CFArrayGetValueAtIndex(v6, Count - 1);
    v9 = *ValueAtIndex;
    v14 = *(ValueAtIndex + 8);
    v10 = *(ValueAtIndex + 8);
    v11 = *(v5 + 120);
    v12 = CFArrayGetCount(v11);
    CFArrayRemoveValueAtIndex(v11, v12 - 1);
    result = TestIPBVideoEncoder_emitFrame(a1, a2, 0, v9, &v14, v10);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t TestIPBVideoEncoder_emitFrame(uint64_t a1, int a2, int a3, uint64_t a4, CMTime *a5, int a6)
{
  *&v48[255] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(v48, 0xFFuLL);
  bzero(v45, 0x101uLL);
  bzero(v44, 0x101uLL);
  bzero(v43, 0x101uLL);
  dataBuffer = 0;
  dataLength = 0;
  sbuf = 0;
  v35 = *MEMORY[0x1E6960C70];
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  sampleTimingArray.duration.epoch = v10;
  memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
  LODWORD(v11) = 1;
  __src = 1;
  v47 = a2;
  v12 = *(DerivedStorage + 84);
  *(DerivedStorage + 84) = v12 + 1;
  if (v12 >= 10)
  {
    v13 = v12;
    do
    {
      LODWORD(v11) = v11 + 1;
      v14 = v13 > 0x63;
      v13 /= 0xAu;
    }

    while (v14);
  }

  v45[0] = v11;
  v15 = v11 + 1;
  v11 = v11;
  do
  {
    v45[v11--] = v12 % 10 + 48;
    --v15;
    v12 /= 10;
  }

  while (v15 > 1);
  v16 = 1;
  if (a6 >= 10)
  {
    v17 = a6;
    do
    {
      ++v16;
      v14 = v17 > 0x63;
      v17 /= 0xAu;
    }

    while (v14);
  }

  v44[0] = v16;
  v18 = v16;
  v19 = v16 + 1;
  do
  {
    v44[v18--] = a6 % 10 + 48;
    --v19;
    a6 /= 10;
  }

  while (v19 > 1);
  IPB_ClearStr(v43);
  DataFromFrameStrings = IPB_SimulatePrediction((DerivedStorage + 128), (DerivedStorage + 385), (DerivedStorage + 642), &__src, v45, v43);
  if (DataFromFrameStrings || (DataFromFrameStrings = IPB_MakeDataFromFrameStrings(sourceBytes, &dataLength, &__src, v45, v44, v43), DataFromFrameStrings) || (a2 == 73 ? (v21 = a3 == 0) : (v21 = 0), v21 ? (v22 = 0) : (v22 = 1), (v23 = *MEMORY[0x1E695E480], DataFromFrameStrings = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, dataLength, *MEMORY[0x1E695E480], 0, 0, dataLength, 1u, &dataBuffer), DataFromFrameStrings) || (DataFromFrameStrings = CMBlockBufferReplaceDataBytes(sourceBytes, dataBuffer, 0, dataLength), DataFromFrameStrings) || (sampleTimingArray.presentationTimeStamp = *a5, *&sampleTimingArray.duration.value = v35, sampleTimingArray.duration.epoch = v10, DataFromFrameStrings = VTEncoderSessionDequeueDecodeTimeStamp(*DerivedStorage, &sampleTimingArray.decodeTimeStamp), DataFromFrameStrings)))
  {
    v33 = DataFromFrameStrings;
    v25 = 0;
    v26 = a4;
  }

  else
  {
    v24 = CMSampleBufferCreate(v23, dataBuffer, 1u, 0, 0, *(DerivedStorage + 104), 1, 1, &sampleTimingArray, 1, &dataLength, &sbuf);
    v25 = sbuf;
    v26 = a4;
    if (!v24)
    {
      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
      if (!SampleAttachmentsArray)
      {
        goto LABEL_34;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      CFDictionaryRemoveAllValues(ValueAtIndex);
      if (!ValueAtIndex)
      {
        goto LABEL_34;
      }

      if (v22)
      {
        v29 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960400], v29);
        if (a3)
        {
          v30 = *MEMORY[0x1E6960460];
          v31 = ValueAtIndex;
          v32 = v29;
LABEL_33:
          CFDictionarySetValue(v31, v30, v32);
LABEL_34:
          v33 = 0;
          v48[__src - 1] = 0;
          v45[v45[0] + 1] = 0;
          v44[v44[0] + 1] = 0;
          v43[v43[0] + 1] = 0;
          v25 = sbuf;
          goto LABEL_35;
        }

        v30 = *MEMORY[0x1E6960450];
        if ((a2 & 0xFFFFFFDF) == 0x42)
        {
          v32 = *MEMORY[0x1E695E4C0];
        }

        else
        {
          v32 = v29;
        }
      }

      else
      {
        v30 = *MEMORY[0x1E6960400];
        v32 = *MEMORY[0x1E695E4C0];
      }

      v31 = ValueAtIndex;
      goto LABEL_33;
    }

    v33 = v24;
  }

LABEL_35:
  VTEncoderSessionEmitEncodedFrame(*DerivedStorage, v26, v33, 0, v25);
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return v33;
}

void TestIPBVideoEncoder_CreateSupportedPropertyDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    Mutable = CFDictionaryCreateMutable(v0, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"AllowTemporalCompression", v2);
    OUTLINED_FUNCTION_1_23(v4, @"AllowFrameReordering");
    OUTLINED_FUNCTION_1_23(v5, @"MaxKeyFrameInterval");
    OUTLINED_FUNCTION_1_23(v6, @"AllowOpenGOP");
    OUTLINED_FUNCTION_1_23(v7, @"Quality");
    OUTLINED_FUNCTION_1_23(v8, @"MaxConsecutiveBFrames");
    OUTLINED_FUNCTION_1_23(v9, @"AllowDelayedIFrames");
    OUTLINED_FUNCTION_1_23(v10, @"MVHEVCVideoLayerIDs");
    OUTLINED_FUNCTION_1_23(v11, @"MVHEVCViewIDs");
    OUTLINED_FUNCTION_1_23(v12, @"MVHEVCLeftAndRightViewIDs");
    OUTLINED_FUNCTION_1_23(v13, @"ExpectedFrameRate");
    sTestIPBVideoEncoder_SupportedPropertyDictionary = Mutable;

    CFRelease(v2);
  }
}

uint64_t TestIPBVideoEncoder_EncodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CGColorSpaceRef createAppleP3ColorSpace()
{
  __dst[14] = *MEMORY[0x1E69E9840];
  v26 = xmmword_18FED0CA0;
  v27 = unk_18FED0CB0;
  v28 = xmmword_18FED0CC0;
  v29 = unk_18FED0CD0;
  v25 = 0x3FFF604189374BC7;
  memcpy(__dst, off_1E72C94D8, 0x70uLL);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  *values = 0u;
  v31 = 0u;
  if (!MEMORY[0x1EEE76CE8])
  {
    v20 = 0;
    v11 = 0;
LABEL_27:
    v13 = 0;
LABEL_29:
    v15 = 0;
    goto LABEL_31;
  }

  values[0] = CFRetain(@"displayRGB");
  values[1] = CFRetain(@"Apple P3");
  *&v31 = OUTLINED_FUNCTION_1_24(values[1], v0, &v25);
  *(&v31 + 1) = OUTLINED_FUNCTION_1_24(v31, v1, &v25);
  *&v32 = OUTLINED_FUNCTION_1_24(*(&v31 + 1), v2, &v25);
  *(&v32 + 1) = OUTLINED_FUNCTION_1_24(v32, v3, &v28);
  *&v33 = OUTLINED_FUNCTION_1_24(*(&v32 + 1), v4, &v28 + 8);
  *(&v33 + 1) = OUTLINED_FUNCTION_1_24(v33, v5, &v26);
  *&v34 = OUTLINED_FUNCTION_1_24(*(&v33 + 1), v6, &v26 + 8);
  *(&v34 + 1) = OUTLINED_FUNCTION_1_24(v34, v7, &v27);
  *&v35 = OUTLINED_FUNCTION_1_24(*(&v34 + 1), v8, &v27 + 8);
  *(&v35 + 1) = OUTLINED_FUNCTION_1_24(v35, v9, &v29);
  *&v36 = OUTLINED_FUNCTION_1_24(*(&v35 + 1), v10, &v29 + 8);
  *(&v36 + 1) = CFStringCreateWithCString(0, "Copyright 2007 Apple Inc.", 0);
  v11 = CFDictionaryCreate(0, __dst, values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v11)
  {
    v20 = 0;
    goto LABEL_27;
  }

  Profile = ColorSyncMakeProfile();
  v13 = Profile;
  if (!Profile)
  {
    v20 = 0;
    goto LABEL_29;
  }

  MutableCopy = ColorSyncProfileCreateMutableCopy(Profile);
  v15 = MutableCopy;
  if (MutableCopy)
  {
    v16 = ColorSyncProfileCopyHeader(MutableCopy);
    if (v16)
    {
      v17 = CFDataCreateMutableCopy(0, 128, v16);
      v18 = v17;
      if (v17 && (CFDataSetLength(v17, 128), (MutableBytePtr = CFDataGetMutableBytePtr(v18)) != 0))
      {
        *(MutableBytePtr + 3) = 0x10001000407D5;
        *(MutableBytePtr + 8) = 65537;
        ColorSyncProfileSetHeader(v15, v18);
        v20 = CGColorSpaceCreateWithPlatformColorSpace(v15);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      v18 = 0;
    }

    goto LABEL_9;
  }

  v20 = 0;
LABEL_31:
  v18 = 0;
  v16 = 0;
LABEL_9:
  v21 = 13;
  do
  {
    v22 = values[v21];
    if (v22)
    {
      CFRelease(v22);
    }

    v23 = v21-- + 1;
  }

  while (v23 > 1);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v20;
}

uint64_t vtcg_createCGCompatiblePixelBuffer(__CVBuffer *a1, unint64_t a2, CVPixelBufferRef *a3)
{
  pixelBufferAttributes = 0;
  pixelBufferOut = 0;
  Width = CVPixelBufferGetWidth(a1);
  if (!Width || (v7 = Width, (Height = CVPixelBufferGetHeight(a1)) == 0) || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    goto LABEL_22;
  }

  v9 = Height;
  CGCompatiblePixelFormat = vtcg_getCGCompatiblePixelFormat(a1);
  v11 = CGCompatiblePixelFormat;
  if (!a2)
  {
    a2 = calculateBytesPerRow(CGCompatiblePixelFormat, v7);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v13 = Mutable;
    v14 = FigCFDictionarySetInt32();
    if (!v14)
    {
      v14 = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v13, 2, &pixelBufferAttributes);
    }

    v15 = v14;
    CFRelease(v13);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v15 = FigSignalErrorAtGM();
    if (!v15)
    {
LABEL_10:
      v16 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v7, v9, v11, pixelBufferAttributes, &pixelBufferOut);
      if (v16)
      {
LABEL_23:
        v15 = v16;
        goto LABEL_13;
      }

      if (CVPixelBufferGetBytesPerRow(pixelBufferOut) == a2)
      {
        v15 = 0;
        *a3 = pixelBufferOut;
        pixelBufferOut = 0;
        goto LABEL_13;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
LABEL_22:
      v16 = FigSignalErrorAtGM();
      goto LABEL_23;
    }
  }

LABEL_13:
  if (pixelBufferAttributes)
  {
    CFRelease(pixelBufferAttributes);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v15;
}

uint64_t VTCreateCGImageFromIOSurfaceAndAttributes(__IOSurface *a1, const __CFDictionary *a2, int a3, uint64_t a4, void *a5)
{
  v37[0] = 0;
  v35 = 0;
  v36 = 0;
  pixelBufferOut = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  if (a1 && a5)
  {
    IOSurface = a1;
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(IOSurface);
    v12 = MEMORY[0x1E695E480];
    v28 = Width;
    v29 = Height;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6965CE8]);
      if (Value)
      {
        ColorSpaceFromAttachments = Value;
LABEL_6:
        v15 = 0;
LABEL_12:
        PixelFormat = IOSurfaceGetPixelFormat(IOSurface);
        v18 = PixelFormat;
        if (a4 || !vtcg_bufferContainsAlpha(PixelFormat))
        {
          v19 = 0;
          if (a3)
          {
            goto LABEL_28;
          }
        }

        else
        {
          bzero(v30, 0x84uLL);
          IOSurfaceGetBulkAttachments();
          if (v30[100] == 1)
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          if (a3)
          {
            goto LABEL_28;
          }
        }

        if (v18 != 32 && v18 != 1111970369 && v18 != 1380411457)
        {
          v27 = CVPixelBufferCreateWithIOSurface(*v12, IOSurface, a2, &v32);
          if (!v27)
          {
            vtcg_createCGCompatiblePixelBuffer(v32, 0, &v31);
            if (v31)
            {
              v27 = vtcg_convertPixelBuffer(v32, v31);
              if (!v27)
              {
                IOSurface = CVPixelBufferGetIOSurface(v31);
                v22 = vtcg_createDeferredImageProviderWithPixelBuffer(v31, v37, &v36, &v35);
LABEL_29:
                v23 = v22;
                if (!v22)
                {
                  v23 = vtcg_createCGImageWithProvider(v35, v37[0], v28, v29, v36, v19, a4, IOSurface, ColorSpaceFromAttachments, &v34);
                  v24 = v34;
                  if (v23)
                  {
                    goto LABEL_33;
                  }

                  *a5 = v34;
                  v34 = 0;
                }

                goto LABEL_32;
              }
            }

            else
            {
              fig_log_get_emitter();
              v27 = FigSignalErrorAtGM();
            }
          }

          v23 = v27;
LABEL_32:
          v24 = 0;
          goto LABEL_33;
        }

LABEL_28:
        v22 = vtcg_createDeferredImageProviderWithIOSurface(IOSurface, a2, v37, &v36, &v35);
        goto LABEL_29;
      }

      CFDictionaryGetValue(a2, *MEMORY[0x1E6965D88]);
      if (FigCFEqual())
      {
        AppleP3ColorSpace = createAppleP3ColorSpace();
        if (AppleP3ColorSpace)
        {
          goto LABEL_10;
        }
      }

      AppleP3ColorSpace = CVImageBufferCreateColorSpaceFromAttachments(a2);
      if (AppleP3ColorSpace)
      {
        goto LABEL_10;
      }
    }

    AppleP3ColorSpace = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696CEE0]);
    if (AppleP3ColorSpace)
    {
LABEL_10:
      ColorSpaceFromAttachments = AppleP3ColorSpace;
    }

    else
    {
      CVPixelBufferCreateWithIOSurface(*v12, IOSurface, 0, &pixelBufferOut);
      if (!pixelBufferOut)
      {
        ColorSpaceFromAttachments = 0;
        goto LABEL_6;
      }

      v26 = CVBufferCopyAttachments(pixelBufferOut, kCVAttachmentMode_ShouldPropagate);
      v15 = v26;
      if (!v26)
      {
        ColorSpaceFromAttachments = 0;
        goto LABEL_12;
      }

      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v26);
      CFRelease(v15);
    }

    v15 = ColorSpaceFromAttachments;
    goto LABEL_12;
  }

  fig_log_get_emitter();
  v23 = FigSignalErrorAtGM();
  v24 = 0;
  v15 = 0;
LABEL_33:
  CGImageRelease(v24);
  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  CGDataProviderRelease(v35);
  if (v15)
  {
    CFRelease(v15);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v23;
}

uint64_t vtcg_getCGCompatiblePixelFormat(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = PixelFormatType;
  if (PixelFormatType != 32 && PixelFormatType != 1111970369 && PixelFormatType != 1380411457)
  {
    v5 = 1111970369;
    v6 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], PixelFormatType);
    if (v6)
    {
      v7 = v6;
      if (CFDictionaryGetValue(v6, *MEMORY[0x1E6966218]))
      {
        if (FigCFNumberGetUInt64() <= 9)
        {
          v5 = 1111970369;
        }

        else
        {
          v5 = 1380411457;
        }
      }

      CFRelease(v7);
      return v5;
    }

    else
    {
      return 1111970369;
    }
  }

  return v2;
}

__IOSurface *_getImageBytePointerFromIOSurface(uint64_t a1)
{
  v10 = 0;
  cf = 0;
  if (!a1)
  {
    goto LABEL_32;
  }

  BaseAddress = *a1;
  if (!*a1)
  {
    goto LABEL_31;
  }

  v3 = *(a1 + 24);
  if (!v3 || (v4 = *(a1 + 8), v5 = *(a1 + 16), !IOSurfaceGetWidth(*a1)) || !IOSurfaceGetHeight(BaseAddress))
  {
LABEL_32:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM();
    goto LABEL_33;
  }

  PixelFormat = IOSurfaceGetPixelFormat(BaseAddress);
  if (PixelFormat == 32 || PixelFormat == 1111970369 || PixelFormat == 1380411457)
  {
    if (IOSurfaceLock(BaseAddress, 1u, 0))
    {
      goto LABEL_33;
    }

    BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
    if (BaseAddress)
    {
      goto LABEL_16;
    }

LABEL_31:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
LABEL_36:
    FigSignalErrorAtGM();
    goto LABEL_16;
  }

  if (!v4)
  {
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], BaseAddress, v5, &cf) || vtcg_createCGCompatiblePixelBuffer(cf, v3, &v10) || vtcg_convertPixelBuffer(cf, v10))
    {
      goto LABEL_33;
    }

    v4 = v10;
  }

  if (CVPixelBufferLockBaseAddress(v4, 1uLL))
  {
LABEL_33:
    BaseAddress = 0;
    goto LABEL_16;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v4);
  if (!BaseAddress)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    goto LABEL_36;
  }

  if (v10)
  {
    *(a1 + 8) = v10;
    v10 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return BaseAddress;
}

uint64_t VTCreateCGImageFromCVPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreateCGImageFromCVPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreateCGImageFromCVPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vtcg_createDeferredImageProviderWithPixelBuffer_cold_1(const void **a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();
  _releaseInfoFromPixelBuffer(a1);
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_convertPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_convertPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createCGImageWithProvider_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vtcg_createDeferredImageProviderWithIOSurface_cold_1(CFTypeRef *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();
  _releaseInfoFromIOSurface(a1);
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t _getImageBytePointerFromPixelBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterSessionCompleteFrames(uint64_t a1)
{
  if (!a1 || *(a1 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = *(a1 + 256);
    if (!v2)
    {
      v4 = *(a1 + 24);
      if (v4)
      {
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v5)
        {
          return 4294954514;
        }

        v6 = *MEMORY[0x1E6960C88];
        v7 = *(MEMORY[0x1E6960C88] + 16);
        result = v5(v4, &v6);
        if (result)
        {
          return result;
        }

        if (!*(a1 + 240))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          return FigSignalErrorAtGM();
        }

        dispatch_group_wait(*(a1 + 248), 0xFFFFFFFFFFFFFFFFLL);
      }

      return 0;
    }

    return VTTemporalFilterSessionRemote_CompleteFrames(v2);
  }
}

uint64_t VTTemporalFilterSessionSessionSetProperty(uint64_t a1, CFTypeRef cf2, const void *a3)
{
  if (*(a1 + 16))
  {
LABEL_4:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();

    return FigSignalErrorAtGM();
  }

  if (!*(a1 + 256))
  {
    if (vtTemporalFilterSessionIsPropertyHandledByVideoToolbox(cf2))
    {
      if (CFEqual(@"FilterSourcePixelBufferAttributes", cf2) || CFEqual(@"FilterDestinationPixelBufferAttributes", cf2) || CFEqual(@"MaxLookBehind", cf2) || CFEqual(@"MaxLookAhead", cf2))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_1();
        v7 = FigSignalErrorAtGM();
      }

      else if (CFEqual(@"RealTime", cf2) || CFEqual(@"AllowPixelTransfer", cf2))
      {
        v7 = vtTemporalFilterSessionValidateBooleanProperty(a3);
        if (v7)
        {
          return v7;
        }
      }

      else
      {
        v7 = 0;
      }

      if (CFEqual(@"AllowPixelTransfer", cf2))
      {
        *(a1 + 89) = *MEMORY[0x1E695E4C0] == a3;
        return v7;
      }

      if (CFEqual(@"OutputPixelBufferPool", cf2))
      {
        if (*(a1 + 40))
        {
          return 4294954396;
        }

        if (!a3 || (v11 = CFGetTypeID(a3), v11 != CVPixelBufferPoolGetTypeID()))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_1();
          v14 = FigSignalErrorAtGM();
          if (v14)
          {
            return v14;
          }
        }

        v12 = *(a1 + 208);
        if (v12)
        {
          CFRelease(v12);
        }

        if (a3)
        {
          v13 = CFRetain(a3);
        }

        else
        {
          v13 = 0;
        }

        v7 = 0;
        *(a1 + 208) = v13;
        return v7;
      }

      if (!vtTemporalFilterSessionIsPropertyHandledByTemporalFilter(a1, cf2))
      {
        if (CFEqual(@"RealTime", cf2))
        {
          *(a1 + 88) = *MEMORY[0x1E695E4D0] == a3;
        }

        return v7;
      }
    }

    else if (!vtTemporalFilterSessionIsPropertyHandledByTemporalFilter(a1, cf2))
    {
      goto LABEL_4;
    }

    v9 = *(a1 + 24);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {

      return v10(v9, cf2, a3);
    }

    return 4294954514;
  }

  if (CFEqual(@"OutputPixelBufferPool", cf2))
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 256);

  return VTCompressionSessionRemote_SetProperty(v8, cf2, a3);
}

uint64_t VTTemporalFilterSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL vtTemporalFilterSessionProcessFrameCommon_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  FigSimpleMutexUnlock();
  return v3 == 0;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionProcessFrameCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetInputPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetInputPixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetInputPixelBufferAttributes_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionSetOutputPixelBufferAttributes_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionCreateOutputPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionGetOutputPixelBufferPool_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetOutputPixelBufferPool_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetOutputPixelBufferPool_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionEmitOutputFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionConcludeInputFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionConcludeInputFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionConcludeInputFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionTrackFrameExitingPlugin_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionTrackFrameExitingPlugin_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionTrackFrameExitingPlugin_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterPluginSessionGetClientInputPixelBufferAttributesHint_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetClientInputPixelBufferAttributesHint_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetClientInputPixelBufferAttributesHint_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetClientOutputPixelBufferAttributes_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetClientOutputPixelBufferAttributes_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterPluginSessionGetClientOutputPixelBufferAttributes_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTemporalFilterSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtTemporalFilterSessionCreatePropertiesHandledByVideoToolbox_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtTemporalFilterSessionCreatePropertiesHandledByVideoToolbox_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtTemporalFilterSessionValidateBooleanProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCelesteRotationNodeCreate(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  VTPixelTransferNodeGetClassID();
  v1 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return v1;
}

uint64_t VTPixelTransferChainAppendCelesteRotationNode(uint64_t a1, int a2, char a3, char a4, const void *a5)
{
  cf = 0;
  VTCelesteRotationNodeCreate(&cf);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v11 = CFRetain(a5);
  }

  else
  {
    v11 = 0;
  }

  *DerivedStorage = v11;
  *(DerivedStorage + 112) = a2;
  *(DerivedStorage + 116) = a3;
  *(DerivedStorage + 117) = a4;
  appended = VTPixelTransferChainAppendNode(a1, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

uint64_t vtDuplicateOddPixels(__CVBuffer *a1)
{
  CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (result)
  {
    v3 = result;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v5 = IntIfPresent | FigCFDictionaryGetIntIfPresent();
    v6 = *MEMORY[0x1E69662D8];
    if (!v5)
    {
      Value = CFDictionaryGetValue(v3, *MEMORY[0x1E69662D8]);
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFArrayGetTypeID() && CFArrayGetCount(v8) >= 1)
        {
          v10 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
            if (ValueAtIndex)
            {
              v12 = CFGetTypeID(ValueAtIndex);
              if (v12 == CFDictionaryGetTypeID())
              {
                FigCFDictionaryGetIntIfPresent();
                FigCFDictionaryGetIntIfPresent();
                FigCFDictionaryGetInt32IfPresent();
              }
            }

            ++v10;
          }

          while (CFArrayGetCount(v8) > v10);
        }
      }
    }

    CFDictionaryGetValue(v3, v6);
    CVPixelBufferLockBaseAddress(a1, 0);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        v14 = OUTLINED_FUNCTION_0_24();
        CVPixelBufferGetWidthOfPlane(v14, v15);
        v16 = OUTLINED_FUNCTION_0_24();
        CVPixelBufferGetHeightOfPlane(v16, v17);
        v18 = OUTLINED_FUNCTION_0_24();
        CVPixelBufferGetBytesPerRowOfPlane(v18, v19);
        v20 = OUTLINED_FUNCTION_0_24();
        if (!CVPixelBufferGetBaseAddressOfPlane(v20, v21))
        {
          break;
        }
      }
    }

    return CVPixelBufferUnlockBaseAddress(a1, 0);
  }

  return result;
}

void VTPixelTransferNodeCelesteRotationCopySupportedPropertyDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t VTPixelTransferNodeCelesteRotationCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDeghostingSessionCreate(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_20();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_20();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    OUTLINED_FUNCTION_2_24();
    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      return 4294954392;
    }

    v10 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 20) = a2;
    *(Instance + 32) = a3;
    *(Instance + 36) = a4;
    *(Instance + 40) = FigSimpleMutexCreate();
    v11 = CFGetAllocator(v10);
    v10[6] = CFArrayCreateMutable(v11, 0, 0);
    v10[7] = dispatch_group_create();
    MEMORY[0x193AE3010](&unk_1ED6D3D78, vtCreateDeghostingProcessorRegistry);
    if (!qword_1EAD32010 || (v12 = FigRegistryCopyItemList(), !v12))
    {
      OUTLINED_FUNCTION_0_25();
      v12 = FigSignalErrorAtGM();
    }

    v14 = v12;
    if (v12)
    {
      OUTLINED_FUNCTION_0_25();
      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_0_25();
      FigSignalErrorAtGM();
      v14 = 0;
    }

    CFRelease(v10);
    return v14;
  }

  else
  {
    OUTLINED_FUNCTION_0_25();

    return FigSignalErrorAtGM();
  }
}

void VTDeghostingSessionInvalidate(uint64_t a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), OUTLINED_FUNCTION_2_24(), v2 == _MergedGlobals_18))
  {
    if (!*(a1 + 16))
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v4)
        {
          v4(v3);
        }

        v5 = *(a1 + 56);
        if (v5)
        {
          dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
        }

        v6 = *(a1 + 24);
        if (v6)
        {
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v7)
          {
            v7(v6);
          }
        }
      }

      *(a1 + 16) = 1;
    }
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

uint64_t VTDeghostingFrameBufferCreate(const void *a1, const void *a2)
{
  Instance = 0;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_1_25();
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        *(Instance + 16) = CFRetain(a1);
        *(Instance + 24) = CFRetain(a2);
      }
    }
  }

  return Instance;
}

void *VTDeghostingFrameBufferGetFrame(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    OUTLINED_FUNCTION_1_25();
    if (v2 == sVTDeghostingFrameBufferID)
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *VTDeghostingFrameBufferGetParameters(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    OUTLINED_FUNCTION_1_25();
    if (v2 == sVTDeghostingFrameBufferID)
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double vtDeghostingSessionFinalize(uint64_t a1)
{
  VTDeghostingSessionInvalidate(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 56) = 0;
  }

  FigSimpleMutexDestroy();
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void vtCreateDeghostingProcessorRegistry()
{
  v0 = *MEMORY[0x1E695E480];
  if (!FigRegistryCreate() && access("/System/Library/Video/Plug-Ins/", 4) != -1)
  {
    v1 = CFURLCreateWithFileSystemPath(v0, @"/System/Library/Video/Plug-Ins/", kCFURLPOSIXPathStyle, 1u);
    if (v1)
    {
      v2 = v1;
      FigRegistryAddSearchPath();

      CFRelease(v2);
    }
  }
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionRequestStatistics2_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDeghostingSessionProcessCommon2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDeghostingSessionProcessCommon2_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingProcessorSessionEmitStatistics_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingProcessorSessionEmitRepair_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionSetProperties_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDeghostingSessionCopySerializableProperties_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL VTDecompressionSessionRemoteBridge_Create_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t VTDecompressionSessionRemoteBridge_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void VTParavirtualizedHostJPEGSupportHandleMessage_cold_1(CFTypeRef *a1, uint64_t (*a2)(void, CFTypeRef *), void *a3, _DWORD *a4)
{
  v7 = a2(0, a1);
  if (v7)
  {
    appended = v7;
  }

  else
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(*a3, 745169761, *a1);
    if (*a1)
    {
      CFRelease(*a1);
    }
  }

  *a4 = appended;
}

uint64_t VTFillBufferPixelsWithBlack(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *&v54 = a3;
  *(&v54 + 1) = a2;
  if (CVPixelBufferIsPlanar(a1))
  {
    result = CVPixelBufferGetPlaneCount(a1);
    if (result)
    {
      v10 = result;
      v11 = 0;
      v55 = *MEMORY[0x1E69662D8];
      v52 = a6;
      v53 = a5;
      while (1)
      {
        v12 = &a6[14 * v11];
        v13 = *(v12 + 105);
        if ((v13 - 3) < 2)
        {
          if (!a1 || (CVPixelBufferGetPixelFormatType(a1), (DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType()) == 0) || !a4 || !a5 || (v21 = DescriptionWithPixelFormatType, Width = CVPixelBufferGetWidth(a1), Height = CVPixelBufferGetHeight(a1), !Width) || !Height || (Value = CFDictionaryGetValue(v21, v55)) == 0 || (v25 = CFGetTypeID(Value), v25 != CFArrayGetTypeID()))
          {
LABEL_24:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            result = FigSignalErrorAtGM();
            if (result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v26 = OUTLINED_FUNCTION_1_26();
          CFArrayGetValueAtIndex(v26, v27);
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          v28 = 0;
          v29 = 16;
          do
          {
            ++v28;
            v30 = v29 > 3;
            v29 >>= 1;
          }

          while (v30);
          v31 = 0;
          v32 = 16;
          do
          {
            ++v31;
            v30 = v32 > 3;
            v32 >>= 1;
          }

          while (v30);
          if (!CVPixelBufferGetIOSurface(a1) || IOSurfaceGetProtectionOptions())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            result = FigSignalErrorAtGM();
          }

          else
          {
            OUTLINED_FUNCTION_1_26();
            IOSurfaceGetWidthInCompressedTilesOfPlane();
            OUTLINED_FUNCTION_1_26();
            IOSurfaceGetHeightInCompressedTilesOfPlane();
            OUTLINED_FUNCTION_1_26();
            IOSurfaceGetBytesPerRowOfTileDataOfPlane();
            v33 = OUTLINED_FUNCTION_1_26();
            IOSurfaceGetBytesPerElementOfPlane(v33, v34);
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            result = FigSignalErrorAtGM();
            a6 = v52;
          }

          a5 = v53;
          if (result)
          {
            return result;
          }
        }

        else if (v13 == 1)
        {
          if (v54 != 0 || !CVPixelBufferGetIOSurface(a1))
          {
            goto LABEL_24;
          }

          BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
          if (BaseAddressOfCompressedTileHeaderRegionOfPlane)
          {
            v36 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
            OUTLINED_FUNCTION_1_26();
            BytesPerRowOfCompressedTileHeaderGroupsOfPlane = IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
            OUTLINED_FUNCTION_1_26();
            HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
            OUTLINED_FUNCTION_1_26();
            v39 = (HeightInCompressedTilesOfPlane >> IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane()) * BytesPerRowOfCompressedTileHeaderGroupsOfPlane;
            if (v39 >= IOSurfaceGetSizeOfPlane())
            {
              goto LABEL_24;
            }

            bzero(v36, v39);
          }

          OUTLINED_FUNCTION_1_26();
          BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
          if (BaseAddressOfCompressedTileDataRegionOfPlane)
          {
            v41 = BaseAddressOfCompressedTileDataRegionOfPlane;
            OUTLINED_FUNCTION_1_26();
            CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
            OUTLINED_FUNCTION_1_26();
            v43 = IOSurfaceGetCompressedTileHeightOfPlane() * CompressedTileWidthOfPlane * v12[2];
            if (v43 >= 8)
            {
              v44 = 0;
              v45 = v43 >> 3;
              do
              {
                *(v41 + v44) = *(v12 + v44 % *(v12 + 104) + 40);
                ++v44;
              }

              while (v45 != v44);
            }
          }
        }

        else
        {
          if (*(v12 + 105))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_26();
            return FigSignalErrorAtGM();
          }

          if (!CVPixelBufferGetBaseAddressOfPlane(a1, v11))
          {
            return 4294954394;
          }

          CVPixelBufferGetBytesPerRowOfPlane(a1, v11);
          v14 = OUTLINED_FUNCTION_2_25();
          vtFillPlanePixelsWithBlack(v14, v15, v16, v17, v18, v19, 1, &a6[14 * v11]);
        }

LABEL_46:
        if (++v11 == v10)
        {
          return 0;
        }
      }
    }
  }

  else if (CVPixelBufferGetBaseAddress(a1))
  {
    CVPixelBufferGetBytesPerRow(a1);
    v46 = OUTLINED_FUNCTION_2_25();
    vtFillPlanePixelsWithBlack(v46, v47, v48, v49, v50, v51, 0, a6);
    return 0;
  }

  else
  {
    return 4294954394;
  }

  return result;
}

uint64_t VTBlackFillGetPixelFormatPixelBlockInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCopyTemporalFilterList(uint64_t a1, const __CFArray **a2)
{
  if (qword_1ED6D4508 != -1)
  {
    dispatch_once(&qword_1ED6D4508, &__block_literal_global_21);
  }

  if (vtTemporalFilterShouldUseSeparateProcess_featureEnabled)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      if (FigServer_IsVideocodecd())
      {
        goto LABEL_9;
      }
    }

    else if (FigServer_IsServerProcess())
    {
      goto LABEL_9;
    }

    if (!VTShouldRunVideoEncodersInProcess())
    {
      return VTTemporalFilterRemote_CopyList(a1, a2);
    }
  }

LABEL_9:
  vtPopulateTemporalFilterRegistry();
  if (!_MergedGlobals_17)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (a1)
  {
    v4 = OUTLINED_FUNCTION_1_27();
    if (CFDictionaryContainsKey(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_1_27();
      CFDictionaryGetValue(v6, v7);
    }

    v8 = OUTLINED_FUNCTION_1_27();
    if (CFDictionaryContainsKey(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_1_27();
      CFDictionaryGetValue(v10, v11);
    }
  }

  v12 = FigRegistryCopyFilteredItemList();
  if (v12)
  {
    return v12;
  }

  v30 = a2;
  Count = CFArrayGetCount(0);
  v14 = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Count < 1)
  {
LABEL_40:
    v32.length = CFArrayGetCount(theArray);
    v32.location = 0;
    CFArraySortValues(theArray, v32, vtCompareClassNameThenTemporalFilterName, 0);
    v28 = 0;
    *v30 = theArray;
    return v28;
  }

  v15 = 0;
  v16 = MEMORY[0x1E695E9D8];
  v17 = MEMORY[0x1E695E9E8];
  while (1)
  {
    CFArrayGetValueAtIndex(0, v15);
    v18 = FigRegistryItemCopyDescription();
    if (v18)
    {
      break;
    }

    v18 = FigRegistryItemCopyMatchingInfo();
    if (v18)
    {
      break;
    }

    v18 = FigRegistryItemCopyBundle();
    if (v18)
    {
      break;
    }

    Mutable = CFDictionaryCreateMutable(v14, 0, v16, v17);
    Value = CFDictionaryGetValue(0, @"VTTemporalFilterClass");
    if (!Value)
    {
      goto LABEL_28;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      CFDictionarySetValue(Mutable, @"Class", Value);
      v22 = CFDictionaryGetValue(0, @"CMClassImplementationID");
      if (!v22)
      {
        goto LABEL_28;
      }

      v23 = CFStringGetTypeID();
      if (v23 == CFGetTypeID(v22))
      {
        CFDictionarySetValue(Mutable, @"TemporalFilterID", v22);
        v24 = CFDictionaryGetValue(0, @"VTTemporalFilterClassName");
        if (!v24)
        {
LABEL_28:
          if (!Mutable)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v25 = CFStringGetTypeID();
        if (v25 == CFGetTypeID(v24))
        {
          CFDictionarySetValue(Mutable, @"ClassName", v24);
          v26 = CFDictionaryGetValue(0, @"VTTemporalFilterName");
          if (v26)
          {
            v27 = CFStringGetTypeID();
            if (v27 == CFGetTypeID(v26))
            {
              CFDictionarySetValue(Mutable, @"TemporalFilterName", v26);
              CFDictionarySetValue(Mutable, @"DisplayName", v26);
              CFArrayAppendValue(theArray, Mutable);
              if (!Mutable)
              {
                goto LABEL_32;
              }

LABEL_31:
              CFRelease(Mutable);
              goto LABEL_32;
            }
          }
        }
      }
    }

    if (Mutable)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (++v15 == Count)
    {
      goto LABEL_40;
    }
  }

  v28 = v18;
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v28;
}

uint64_t vtFilterRegistryItemByFilterClassAndFilterSpecification(uint64_t a1)
{
  theDict = 0;
  v31 = 0;
  v28 = *(a1 + 8);
  v29 = 1;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyDescription())
  {
    goto LABEL_30;
  }

  v2 = *(a1 + 8);
  if (v2 && (CFDictionaryGetValue(v2, @"TemporalFilterID") || CFDictionaryGetValue(*(a1 + 8), @"HostTemporalFilterID")))
  {
    CFDictionaryGetValue(theDict, @"CMClassImplementationID");
    v3 = 0;
    if (!FigCFEqual())
    {
      goto LABEL_30;
    }
  }

  else
  {
    v3 = 1;
  }

  Value = CFDictionaryGetValue(v31, @"VTTemporalFilterClass");
  if (!Value)
  {
    goto LABEL_30;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID() || !FigCFEqual())
  {
    goto LABEL_30;
  }

  v6 = CFDictionaryGetValue(theDict, @"CMDependencies");
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 != CFDictionaryGetTypeID())
  {
    goto LABEL_36;
  }

  v9 = CFDictionaryGetValue(v7, @"IORegistryRequiredKey");
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 != CFStringGetTypeID())
  {
    goto LABEL_30;
  }

  v12 = CFDictionaryGetValue(v7, @"IORegistryServiceName");
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFStringGetTypeID())
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFArrayGetTypeID())
    {
      goto LABEL_30;
    }
  }

  v16 = CFGetTypeID(v13);
  if (v16 != CFStringGetTypeID())
  {
    Count = CFArrayGetCount(v13);
    if (Count < 1)
    {
LABEL_30:
      v18 = 0;
      goto LABEL_31;
    }

    v21 = Count;
    v22 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v22);
      if (VTDoesIOServiceSupportRegistryKey(ValueAtIndex, v10))
      {
        break;
      }

      v18 = 0;
      if (v21 == ++v22)
      {
        goto LABEL_31;
      }
    }

LABEL_36:
    if (!v3)
    {
LABEL_40:
      v18 = 1;
      goto LABEL_31;
    }

LABEL_37:
    v25 = CFDictionaryGetValue(v31, @"VTRequiredSpecificationEntries");
    if (v25)
    {
      v26 = v25;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v26))
      {
        CFDictionaryApplyFunction(v26, vtCheckRequiredTemporalFilterSpecificationKey, &v28);
        v18 = v29;
        goto LABEL_31;
      }
    }

    goto LABEL_40;
  }

  v17 = VTDoesIOServiceSupportRegistryKey(v13, v10);
  v18 = v17;
  if (v17)
  {
    v19 = v3;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    goto LABEL_37;
  }

LABEL_31:
  if (v31)
  {
    CFRelease(v31);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v18;
}

void vtLoadTemporalFilterPluginsFromPath(const char *a1)
{
  if (access(a1, 4) != -1)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a1, 0x8000100u);
    if (v3)
    {
      v4 = v3;
      v5 = CFURLCreateWithFileSystemPath(v2, v3, kCFURLPOSIXPathStyle, 1u);
      if (v5)
      {
        v6 = v5;
        FigRegistryAddSearchPathWithOptions();
        CFRelease(v6);
      }

      CFRelease(v4);
    }
  }
}

uint64_t VTSelectAndCreateTemporalFilterInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateTemporalFilterInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateTemporalFilterInstance_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferConformerSetColorProperties(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    result = FigCFEqual();
    if (!result)
    {
      v4 = *(v3 + 40);
      *(v3 + 40) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v3 + 40);
      if (v5)
      {
        Value = CFDictionaryGetValue(v5, *MEMORY[0x1E6965D88]);
        v7 = CFDictionaryGetValue(*(v3 + 40), *MEMORY[0x1E6965F30]);
        v8 = CFDictionaryGetValue(*(v3 + 40), *MEMORY[0x1E6965F98]);
        v9 = CFDictionaryGetValue(*(v3 + 40), *MEMORY[0x1E6965EC8]);
      }

      else
      {
        Value = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
      }

      VTSessionSetProperty(*(v3 + 24), @"DestinationColorPrimaries", Value);
      VTSessionSetProperty(*(v3 + 24), @"DestinationTransferFunction", v7);
      VTSessionSetProperty(*(v3 + 24), @"DestinationYCbCrMatrix", v8);
      v10 = *(v3 + 24);

      return VTSessionSetProperty(v10, @"DestinationICCProfile", v9);
    }
  }

  return result;
}

uint64_t VTPixelBufferConformerIsConformantPixelBuffer(uint64_t a1, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CVPixelBufferGetTypeID())
  {
    return 0;
  }

  if (!*(a1 + 32) || (result = CVPixelBufferIsCompatibleWithAttributes(), result))
  {
    if (*(a1 + 40))
    {
      result = VTIsBufferTaggedWithColorProperties(cf);
      if (result)
      {
        Value = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965D88]);
        v7 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965F30]);
        v8 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965F98]);
        v9 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6965EC8]);

        return VTIsPixelBufferCompatibleWithColorProperties(cf, Value, v7, v8, v9, 0);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t VTPixelBufferConformerCopyConformedTaggedBufferGroup(uint64_t a1, CMTaggedBufferGroupRef group, int a3, CFTypeRef *a4)
{
  v4 = 0;
  value = 0;
  cf = 0;
  if (group && a4)
  {
    Count = CMTaggedBufferGroupGetCount(group);
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v12 = Mutable;
      v13 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
      if (v13)
      {
        v14 = v13;
        v22 = a4;
        if (Count < 1)
        {
LABEL_13:
          v4 = MEMORY[0x193AE2F70](v10, v12, v14, &cf);
          if (!v4)
          {
            *v22 = cf;
            cf = 0;
          }
        }

        else
        {
          v15 = 0;
          while (1)
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(group, v15);
            if (!TagCollectionAtIndex)
            {
              break;
            }

            v17 = TagCollectionAtIndex;
            CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (!CVPixelBufferAtIndex)
            {
              break;
            }

            v19 = VTPixelBufferConformerCopyConformedPixelBuffer(a1, CVPixelBufferAtIndex, a3, &value);
            if (v19)
            {
              goto LABEL_23;
            }

            CFArrayAppendValue(v12, v17);
            CFArrayAppendValue(v14, value);
            if (value)
            {
              CFRelease(value);
              value = 0;
            }

            if (Count == ++v15)
            {
              goto LABEL_13;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v19 = FigSignalErrorAtGM();
LABEL_23:
          v4 = v19;
        }

        CFRelease(v12);
        v20 = v14;
      }

      else
      {
        fig_log_get_emitter();
        v4 = FigSignalErrorAtGM();
        v20 = v12;
      }

      CFRelease(v20);
    }

    else
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostSessionDeliverMessageFromGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v90 = 0;
  *&v89.byte0 = 0;
  *&v89.byte8 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v90, 0, &v89);
  if (MessageTypeAndFlagsAndGuestUUID)
  {
    v57 = MessageTypeAndFlagsAndGuestUUID;
    v4 = 0;
  }

  else
  {
    v4 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v89);
    switch(v90)
    {
      case 727999843:
        os_unfair_lock_lock((a1 + 40));
        if (!CFDictionaryContainsKey(*(a1 + 24), v4))
        {
          os_unfair_lock_unlock((a1 + 40));
          v39 = OUTLINED_FUNCTION_23_3();
          v14 = VTParavirtualizationHostDecoderSessionCreate(v39, v40, v41, v42, v43);
          if (v14)
          {
            goto LABEL_55;
          }

          os_unfair_lock_lock((a1 + 40));
          CFDictionarySetValue(*(a1 + 24), v4, 0);
          v23 = (a1 + 40);
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_19_3();
        v57 = FigSignalErrorAtGM();
        v88 = (a1 + 40);
        break;
      case 728067683:
        os_unfair_lock_lock((a1 + 44));
        if (!CFDictionaryContainsKey(*(a1 + 32), v4))
        {
          os_unfair_lock_unlock((a1 + 44));
          v18 = OUTLINED_FUNCTION_23_3();
          v14 = VTParavirtualizationHostEncoderSessionCreate(v18, v19, v20, v21, v22);
          if (v14)
          {
            goto LABEL_55;
          }

          os_unfair_lock_lock((a1 + 44));
          CFDictionarySetValue(*(a1 + 32), v4, 0);
          v23 = (a1 + 44);
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_19_3();
        v57 = FigSignalErrorAtGM();
        v88 = (a1 + 44);
        break;
      case 728589680:
        os_unfair_lock_lock((a1 + 56));
        v48 = OUTLINED_FUNCTION_27_3();
        if (CFDictionaryContainsKey(v48, v49))
        {
          goto LABEL_73;
        }

        os_unfair_lock_unlock((a1 + 56));
        v50 = OUTLINED_FUNCTION_23_3();
        v14 = VTParavirtualizationHostMotionEstimationProcessorCreate(v50, v51, v52, v53, v54);
        if (v14)
        {
          goto LABEL_55;
        }

        os_unfair_lock_lock((a1 + 56));
        CFDictionarySetValue(*(a1 + 48), v4, 0);
        v23 = (a1 + 56);
LABEL_52:
        os_unfair_lock_unlock(v23);
        goto LABEL_54;
      case 761359468:
        if (!os_variant_has_internal_content())
        {
          goto LABEL_58;
        }

        cf = 0;
        v92 = 0;
        OUTLINED_FUNCTION_22_3();
        if (VTParavirtualizationCreateMessageAndByteStream(v26, v27, v28, v29, v30, v31))
        {
          v32 = v92;
          if (!v92)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v32 = v92;
          (*(*(a1 + 16) + 16))();
          if (!v32)
          {
LABEL_37:
            if (cf)
            {
              CFRelease(cf);
            }

            CFDictionaryRemoveAllValues(*(a1 + 24));
            CFDictionaryRemoveAllValues(*(a1 + 32));
            goto LABEL_58;
          }
        }

        CFRelease(v32);
        goto LABEL_37;
      case 761554275:
        v24 = OUTLINED_FUNCTION_29_2();
        vtParavirtualizationInvalidateHostDecoderSessionAndRemoveItFromHostSession(v24, v25);
        goto LABEL_58;
      default:
        if (v90 != 761622115)
        {
          if (v90 == 762144112)
          {
            os_unfair_lock_lock((a1 + 56));
            v33 = OUTLINED_FUNCTION_27_3();
            Value = CFDictionaryGetValue(v33, v34);
            if (Value)
            {
              v36 = Value;
              CFRetain(Value);
              os_unfair_lock_unlock((a1 + 56));
              VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate(v36);
              VTParavirtualizationHostMotionEstimationProcessorSessionCompleteInvalidate(v36);
              os_unfair_lock_lock((a1 + 56));
              v37 = OUTLINED_FUNCTION_27_3();
              CFDictionaryRemoveValue(v37, v38);
              os_unfair_lock_unlock((a1 + 56));
              CFRelease(v36);
              goto LABEL_58;
            }

            v15 = (a1 + 56);
            goto LABEL_25;
          }

          if (v90 != 762672489)
          {
            switch(v90)
            {
              case 1684234608:
                v44 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyDecoderCapabilitiesReply(v44, v45);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              case 1835364467:
                v55 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyMotionEstimationProcessorListReply(v55, v56);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              case 1701733235:
                v46 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyEncoderListReply(v46, v47);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              case 1784897904:
              case 1784964451:
              case 1785032291:
                OUTLINED_FUNCTION_8_10();
                v14 = VTParavirtualizedHostJPEGSupportHandleMessage(v7, v8, v9, v10, v11, v12, v13);
                if (!v14)
                {
                  os_unfair_lock_lock((a1 + 64));
                  if (!*(a1 + 60))
                  {
                    (*(*(a1 + 16) + 16))();
                  }

                  v15 = (a1 + 64);
LABEL_25:
                  os_unfair_lock_unlock(v15);
LABEL_58:
                  v57 = 0;
                  goto LABEL_59;
                }

LABEL_55:
                v57 = v14;
                goto LABEL_59;
              case 1684366195:
                v16 = OUTLINED_FUNCTION_31_2();
                v14 = VTParavirtualizationHostCopyDecoderListReply(v16, v17);
                if (v14)
                {
                  goto LABEL_55;
                }

                break;
              default:
                v63 = (a1 + 40);
                os_unfair_lock_lock((a1 + 40));
                v64 = CFDictionaryGetValue(*(a1 + 24), v4);
                v65 = v64;
                if (v64)
                {
                  CFRetain(v64);
                }

                else
                {
                  os_unfair_lock_unlock((a1 + 40));
                  v63 = (a1 + 44);
                  os_unfair_lock_lock((a1 + 44));
                  v76 = CFDictionaryGetValue(*(a1 + 32), v4);
                  if (v76)
                  {
                    v69 = v76;
                    CFRetain(v76);
                    os_unfair_lock_unlock((a1 + 44));
                    OUTLINED_FUNCTION_8_10();
                    v75 = VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest(v77, v78, v79, v80, v81);
                    goto LABEL_69;
                  }
                }

                os_unfair_lock_unlock(v63);
                os_unfair_lock_lock((a1 + 56));
                v66 = OUTLINED_FUNCTION_27_3();
                v68 = CFDictionaryGetValue(v66, v67);
                if (v68)
                {
                  v69 = v68;
                  CFRetain(v68);
                  os_unfair_lock_unlock((a1 + 56));
                  if (!v65)
                  {
                    OUTLINED_FUNCTION_8_10();
                    v75 = VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest(v70, v71, v72, v73, v74);
LABEL_69:
                    v57 = v75;
                    v82 = v69;
LABEL_72:
                    CFRelease(v82);
                    goto LABEL_59;
                  }

LABEL_71:
                  OUTLINED_FUNCTION_8_10();
                  v57 = VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest(v83, v84, v85, v86, v87);
                  v82 = v65;
                  goto LABEL_72;
                }

                os_unfair_lock_unlock((a1 + 56));
                if (v65)
                {
                  goto LABEL_71;
                }

LABEL_73:
                OUTLINED_FUNCTION_19_3();
                v14 = FigSignalErrorAtGM();
                goto LABEL_55;
            }

LABEL_54:
            v14 = vtParavirtualizationHostSession_callMessageToGuestHandler(a1, 0);
            goto LABEL_55;
          }

          v58 = OUTLINED_FUNCTION_29_2();
          vtParavirtualizationInvalidateHostDecoderSessionAndRemoveItFromHostSession(v58, v59);
        }

        v60 = OUTLINED_FUNCTION_29_2();
        vtParavirtualizationInvalidateHostEncoderSessionAndRemoveItFromHostSession(v60, v61);
        goto LABEL_58;
    }

    os_unfair_lock_unlock(v88);
  }

LABEL_59:
  if (v4)
  {
    CFRelease(v4);
  }

  return v57;
}

uint64_t VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(OpaqueCMBlockBuffer *a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v8, v9, v10);
  if (!result)
  {
    if (a2)
    {
      result = OUTLINED_FUNCTION_18_5(0, 8uLL, v12, v13, v14, v15, v16, v17, v21, v22, 0);
      if (result)
      {
        return result;
      }

      OUTLINED_FUNCTION_19_4();
      *a2 = v18;
    }

    if (a3)
    {
      result = OUTLINED_FUNCTION_18_5(result, 0xCuLL, v12, v13, v14, v15, v16, v17, v21, v22, 0);
      if (result)
      {
        return result;
      }

      OUTLINED_FUNCTION_19_4();
      *a3 = v19;
    }

    if (a4)
    {
      OUTLINED_FUNCTION_17_7();
      return CMBlockBufferCopyDataBytes(a1, v20, 0x10uLL, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VTParavirtualizationGuestInstallHandlerForUUID(CFUUIDBytes *a1, const void *a2, const void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], *a1);
  if (a2)
  {
    if (qword_1ED6D4550 != -1)
    {
      dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
    }

    v6 = dword_1ED6D4524;
    if (!dword_1ED6D4524)
    {
      os_unfair_lock_lock(&_MergedGlobals_18);
      if (!CFDictionaryGetValue(qword_1ED6D4538, v5))
      {
        v7 = malloc_type_calloc(1uLL, 0x28uLL, 0xA0040987D6AD5uLL);
        if (v7 && (v8 = _Block_copy(a2), (*v7 = v8) != 0) && (!a3 ? (v9 = 0) : (v9 = CFRetain(a3)), (v7[1] = v9, v10 = FigDispatchQueueCreateWithPriority(), (v7[2] = v10) != 0) && (v11 = FigDispatchQueueCreateWithPriority(), (v7[3] = v11) != 0)))
        {
          v12 = VTParavirtualizationReplyClerkCreate("guest", v7 + 4);
          if (!v12)
          {
            v6 = VTParavirtualizationGuestSupportRegisterGuestUUID();
            if (v6)
            {
LABEL_17:
              os_unfair_lock_unlock(&_MergedGlobals_18);
              goto LABEL_18;
            }

            CFDictionarySetValue(qword_1ED6D4538, v5, v7);
LABEL_16:
            v7 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_10();
          v12 = FigSignalErrorAtGM();
        }

        v6 = v12;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_2_10();
      v6 = FigSignalErrorAtGM();
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_10();
    v6 = FigSignalErrorAtGM();
  }

  v7 = 0;
LABEL_18:
  vtParavirtualizationGuestFinalize(v7);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t VTParavirtualizationGuestRemoveHandlerForUUID(CFUUIDBytes *a1)
{
  v1 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], *a1);
  if (qword_1ED6D4550 != -1)
  {
    dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
  }

  v2 = dword_1ED6D4524;
  if (!dword_1ED6D4524)
  {
    os_unfair_lock_lock(&_MergedGlobals_18);
    Value = CFDictionaryGetValue(qword_1ED6D4538, v1);
    if (Value)
    {
      v4 = Value;
      CFDictionaryRemoveValue(qword_1ED6D4538, v1);
      v5 = *(v4 + 2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationGuestRemoveHandlerForUUID_block_invoke;
      block[3] = &__block_descriptor_tmp_20_1;
      block[4] = v4;
      dispatch_async(v5, block);
      v6 = VTParavirtualizationGuestSupportDeregisterGuestUUID();
    }

    else
    {
      OUTLINED_FUNCTION_2_10();
      v6 = FigSignalErrorAtGM();
    }

    v2 = v6;
    os_unfair_lock_unlock(&_MergedGlobals_18);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAsync(OpaqueCMBlockBuffer *a1)
{
  v7 = 0;
  if (a1)
  {
    if (qword_1ED6D4550 != -1)
    {
      dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
    }

    v2 = dword_1ED6D4524;
    if (dword_1ED6D4524)
    {
      return v2;
    }

    *&v6.byte0 = 0;
    *&v6.byte8 = 0;
    MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a1, &v7 + 1, &v7, &v6);
    if (!MessageTypeAndFlagsAndGuestUUID)
    {
      if ((v7 & 1) == 0 && (v7 & 2) == 0)
      {
        v4 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v6);
        os_unfair_lock_lock(&_MergedGlobals_18);
        if (CFDictionaryGetValue(qword_1ED6D4538, v4))
        {
          os_unfair_lock_unlock(&_MergedGlobals_18);
          v2 = vtParavirtualizationGuestSendRawMessageBlockBufferToHost(a1);
          if (!v4)
          {
            return v2;
          }
        }

        else
        {
          OUTLINED_FUNCTION_20_3();
          v2 = FigSignalErrorAtGM();
          os_unfair_lock_unlock(&_MergedGlobals_18);
          if (!v4)
          {
            return v2;
          }
        }

        CFRelease(v4);
        return v2;
      }

      OUTLINED_FUNCTION_20_3();
      return FigSignalErrorAtGM();
    }

    return MessageTypeAndFlagsAndGuestUUID;
  }

  OUTLINED_FUNCTION_20_3();

  return FigSignalErrorAtGM();
}

uint64_t vtParavirtualizationGuestSendRawMessageBlockBufferToHost(OpaqueCMBlockBuffer *a1)
{
  v17 = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &v17, 0);
  if (DataPointer)
  {
LABEL_16:
    v15 = DataPointer;
    v7 = 0;
    goto LABEL_14;
  }

  v3 = lengthAtOffsetOut;
  if (lengthAtOffsetOut < v17)
  {
    v4 = -1;
    v5 = 16;
    while (1)
    {
      DataPointer = CMBlockBufferGetDataPointer(a1, v3, &lengthAtOffsetOut, 0, 0);
      if (DataPointer)
      {
        goto LABEL_16;
      }

      v3 += lengthAtOffsetOut;
      v5 += 16;
      --v4;
      if (v3 >= v17)
      {
        OUTLINED_FUNCTION_28_2();
        v7 = malloc_type_malloc(v5, v6);
        if (v4)
        {
          v8 = -v4;
          goto LABEL_9;
        }

LABEL_12:
        v13 = VTParavirtualizationGuestSupportSendRawMessageToHost();
        goto LABEL_13;
      }
    }
  }

  OUTLINED_FUNCTION_28_2();
  v7 = malloc_type_malloc(0x10uLL, v9);
  v8 = 1;
LABEL_9:
  v10 = 0;
  v11 = v7;
  v12 = v8;
  while (1)
  {
    v13 = CMBlockBufferGetDataPointer(a1, v10, &lengthAtOffsetOut, 0, v11);
    if (v13)
    {
      break;
    }

    v14 = lengthAtOffsetOut;
    v11[1] = lengthAtOffsetOut;
    v10 += v14;
    v11 += 2;
    if (!--v12)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v15 = v13;
LABEL_14:
  free(v7);
  return v15;
}

uint64_t VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v21 = 0;
  v19 = 0;
  if (a1 && a5)
  {
    if (qword_1ED6D4550 != -1)
    {
      dispatch_once(&qword_1ED6D4550, &__block_literal_global_39);
    }

    v8 = dword_1ED6D4524;
    if (dword_1ED6D4524)
    {
      return v8;
    }

    *&v20.byte0 = 0;
    *&v20.byte8 = 0;
    MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a1, &v21 + 1, &v21, &v20);
    if (!MessageTypeAndFlagsAndGuestUUID)
    {
      if ((v21 & 1) != 0 && (v21 & 0x10) == 0 && (v21 & 2) == 0)
      {
        v10 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v20);
        os_unfair_lock_lock(&_MergedGlobals_18);
        Value = CFDictionaryGetValue(qword_1ED6D4538, v10);
        if (Value)
        {
          v12 = Value[4];
          if (v12)
          {
            v13 = CFRetain(v12);
          }

          else
          {
            v13 = 0;
          }

          os_unfair_lock_unlock(&_MergedGlobals_18);
          v14 = VTParavirtualizationReplyClerkPrepareForReply(v13, a1, &v19);
          if (!v14)
          {
            v14 = vtParavirtualizationGuestSendRawMessageBlockBufferToHost(a1);
            if (!v14)
            {
              v17 = *a4;
              v18 = *(a4 + 2);
              v14 = VTParavirtualizationReplyClerkWaitForReply(v13, HIDWORD(v21), v19, &v17, a5, 0, 0);
            }
          }

          v8 = v14;
          if (v13)
          {
            VTParavirtualizationReplyClerkCleanUpReply(v13, v19);
            if (v10)
            {
              CFRelease(v10);
            }

            v15 = v13;
            goto LABEL_29;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_3();
          v8 = FigSignalErrorAtGM();
          os_unfair_lock_unlock(&_MergedGlobals_18);
        }

        if (v10)
        {
          v15 = v10;
LABEL_29:
          CFRelease(v15);
        }

        return v8;
      }

      OUTLINED_FUNCTION_21_3();
      return FigSignalErrorAtGM();
    }

    return MessageTypeAndFlagsAndGuestUUID;
  }

  OUTLINED_FUNCTION_21_3();

  return FigSignalErrorAtGM();
}

uint64_t VTParavirtualizationReplyClerkPrepareForReply(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48))
  {
    os_unfair_lock_unlock((a1 + 24));
    return 4294948201;
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    *(a1 + 32) = v8 + 1;
    CFDictionarySetValue(v7, v8, 0);
    CFDictionaryGetValue(*(a1 + 40), v8);
    os_unfair_lock_unlock((a1 + 24));
    result = VTParavirtualizationMessageSetReplyIdentifier(a2, v8);
    if (!result)
    {
      *a3 = v8;
    }
  }

  return result;
}

uint64_t VTParavirtualizationCreateReplyAndByteStream(OpaqueCMBlockBuffer *a1, uint64_t a2, CMBlockBufferRef *a3, void *a4)
{
  v10[1] = 0;
  v11 = 0;
  v9 = 0;
  v10[0] = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a1, &v11 + 1, &v11, v10);
  if (!result)
  {
    result = VTParavirtualizationMessageGetReplyIdentifier(a1, &v9);
    if (!result)
    {
      return VTParavirtualizationCreateMessageAndByteStream(HIDWORD(v11), a2, v10, v9, a3, a4);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageGetReplyIdentifier(OpaqueCMBlockBuffer *a1, void *a2)
{
  v9 = 0;
  destination = 0;
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v4, v5, v6);
  if (!result)
  {
    result = CMBlockBufferCopyDataBytes(a1, v9 + 32, 8uLL, &destination);
    if (!result)
    {
      *a2 = bswap64(destination);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageChangeMessageFlags(OpaqueCMBlockBuffer *a1, int a2, int a3)
{
  v13 = 0;
  destination[0] = 0;
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v6, v7, v8);
  if (!result)
  {
    v10 = v13;
    result = CMBlockBufferCopyDataBytes(a1, v13 + 12, 4uLL, destination);
    if (!result)
    {
      OUTLINED_FUNCTION_19_4();
      destination[0] = bswap32(v11 & ~a3 | a3 & a2);
      return CMBlockBufferReplaceDataBytes(destination, a1, v10 + 12, 4uLL);
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageSetReplyIdentifier(OpaqueCMBlockBuffer *a1, unint64_t a2)
{
  v8 = 0;
  sourceBytes = bswap64(a2);
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  result = vtpvScanForTopLevelBoxWithType(a1, 0, v3, v4, v5);
  if (!result)
  {
    return CMBlockBufferReplaceDataBytes(&sourceBytes, a1, v8 + 32, 8uLL);
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFPropertyList()
{
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_7_12();
      if (!result)
      {
        result = OUTLINED_FUNCTION_14_8();
        if (!result)
        {
          result = FigCreateCFDataFromCFPropertyList();
          if (!result)
          {
            CFDataGetBytePtr(0);
            CFDataGetLength(0);
            result = FigAtomWriterAppendData();
            if (!result)
            {
              return FigAtomWriterEndAtom();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFData()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          CFDataGetBytePtr(v0);
          CFDataGetLength(v0);
          result = FigAtomWriterAppendData();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void vtParavirtualizationMessageGetMessageFlagsStartingAtOffset(OpaqueCMBlockBuffer *a1, uint64_t a2, _DWORD *a3)
{
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_13_9();
  if (!vtpvScanForTopLevelBoxWithType(a1, a2, v6, v7, v8) && !OUTLINED_FUNCTION_18_5(0, a2 + 12, v9, v10, v11, v12, v13, v14, v16, v17, 0))
  {
    OUTLINED_FUNCTION_19_4();
    *a3 = v15;
  }
}

uint64_t VTParavirtualizationMessageCFDataRequiresFragmentation(uint64_t a1, unint64_t a2, const __CFData *a3, BOOL *a4)
{
  v15 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(a1, 0, &v15);
  if (!result)
  {
    if (v15 + 17 <= a2)
    {
      Length = CFDataGetLength(a3);
      v12 = a2 - v15 - 16;
      if (v12 >= Length)
      {
        v13 = Length;
      }

      else
      {
        v13 = a2 - v15 - 16;
      }

      if (!v13)
      {
        return FigSignalErrorAtGM();
      }

      v14 = Length;
      result = 0;
      v10 = v14 > v12;
    }

    else
    {
      result = 0;
      v10 = 1;
    }

    *a4 = v10;
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFDataWithLimitFromOffset(uint64_t a1, uint64_t a2, unint64_t a3, const __CFData *a4, CFIndex *a5)
{
  OUTLINED_FUNCTION_1_28();
  v17 = 0;
  Length = CFDataGetLength(v9);
  v11 = Length - *a5;
  if (Length == *a5)
  {
    return 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    return 4294954514;
  }

  result = v12(a1, 0, &v17);
  if (!result)
  {
    if (v17 + 17 > a3)
    {
      return 0;
    }

    v14 = a3 - v17 - 16;
    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = a3 - v17 - 16;
    }

    if (v15)
    {
      result = FigAtomWriterInitWithByteStream();
      if (!result)
      {
        result = OUTLINED_FUNCTION_5_16();
        if (!result)
        {
          result = OUTLINED_FUNCTION_7_12();
          if (!result)
          {
            result = OUTLINED_FUNCTION_14_8();
            if (!result)
            {
              CFDataGetBytePtr(a4);
              result = FigAtomWriterAppendData();
              if (!result)
              {
                result = FigAtomWriterEndAtom();
                if (!result)
                {
                  if (v11 <= v14)
                  {
                    v16 = CFDataGetLength(a4);
                  }

                  else
                  {
                    v16 = *a5 + v15;
                  }

                  result = 0;
                  *a5 = v16;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_19_3();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFUUID()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_15_8();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_9_10();
    if (!result)
    {
      result = OUTLINED_FUNCTION_32_1();
      if (!result)
      {
        result = OUTLINED_FUNCTION_35_2();
        if (!result)
        {
          CFUUIDGetUUIDBytes(v0);
          result = OUTLINED_FUNCTION_33_2();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCFUUID()
{
  OUTLINED_FUNCTION_2_26();
  *&v12.byte0 = 0;
  *&v12.byte8 = 0;
  CMBlockBufferGetDataLength(v2);
  v3 = OUTLINED_FUNCTION_0_28();
  result = vtpvScanForParameterBoxWithType(v3, v4, v5, v6, 1031107945, v7, v8);
  if (!result)
  {
    if (v13 == 32)
    {
      OUTLINED_FUNCTION_17_7();
      result = CMBlockBufferCopyDataBytes(v1, v10, 0x10uLL, &v12);
      if (!result)
      {
        v11 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v12);
        result = 0;
        *v0 = v11;
      }
    }

    else if (v13)
    {
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM();
    }

    else
    {
      return OUTLINED_FUNCTION_25_3();
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCFUUIDArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  OUTLINED_FUNCTION_15_8();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_9_10();
    if (!result)
    {
      result = OUTLINED_FUNCTION_32_1();
      if (!result)
      {
        result = OUTLINED_FUNCTION_35_2();
        if (!result)
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return FigAtomWriterEndAtom();
          }

          else
          {
            v6 = Count;
            v7 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
              if (!ValueAtIndex)
              {
                break;
              }

              v9 = ValueAtIndex;
              v10 = CFGetTypeID(ValueAtIndex);
              if (v10 != CFUUIDGetTypeID())
              {
                break;
              }

              CFUUIDGetUUIDBytes(v9);
              result = OUTLINED_FUNCTION_33_2();
              if (result)
              {
                return result;
              }

              if (v6 == ++v7)
              {
                return FigAtomWriterEndAtom();
              }
            }

            OUTLINED_FUNCTION_20_3();
            return FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCFUUIDArray()
{
  OUTLINED_FUNCTION_2_26();
  *&v19.byte0 = 0;
  *&v19.byte8 = 0;
  CMBlockBufferGetDataLength(v2);
  v3 = OUTLINED_FUNCTION_0_28();
  v9 = vtpvScanForParameterBoxWithType(v3, v4, v5, v6, 1031104811, v7, v8);
  if (v9)
  {
    return v9;
  }

  if (!v20)
  {
    v17 = 0;
    *v0 = 0;
    return v17;
  }

  if (v20 > 0xF)
  {
    v10 = v20 - 16;
    if (v20 == ((v20 - 16) & 0xFFFFFFFFFFFFFFF0) + 16)
    {
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v10 >> 4, MEMORY[0x1E695E9C0]);
      if (v10 < 0x10)
      {
LABEL_14:
        v17 = 0;
        *v0 = Mutable;
      }

      else
      {
        if (v10 >> 4 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v10 >> 4;
        }

        v14 = v21 + 16;
        while (1)
        {
          v15 = CMBlockBufferCopyDataBytes(v1, v14, 0x10uLL, &v19);
          if (v15)
          {
            break;
          }

          v16 = CFUUIDCreateFromUUIDBytes(v11, v19);
          CFArrayAppendValue(Mutable, v16);
          if (v16)
          {
            CFRelease(v16);
          }

          v14 += 16;
          if (!--v13)
          {
            goto LABEL_14;
          }
        }

        v17 = v15;
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      return v17;
    }
  }

  OUTLINED_FUNCTION_2_10();

  return FigSignalErrorAtGM();
}

uint64_t VTParavirtualizationMessageAppendFigTagCollectionArray(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  appended = FigAtomWriterInitWithByteStream();
  if (!appended)
  {
    appended = OUTLINED_FUNCTION_9_10();
    if (!appended)
    {
      appended = FigAtomWriterAppendData();
      if (!appended)
      {
        appended = FigAtomWriterAppendData();
        if (!appended)
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return FigAtomWriterEndAtom();
          }

          else
          {
            v6 = Count;
            v7 = 0;
            v8 = *MEMORY[0x1E695E480];
            while (1)
            {
              appended = FigAtomWriterInitWithParent();
              if (appended)
              {
                break;
              }

              appended = FigAtomWriterBeginAtom();
              if (appended)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
              if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != FigTagCollectionGetTypeID()))
              {
                OUTLINED_FUNCTION_20_3();
                return FigSignalErrorAtGM();
              }

              v12 = MEMORY[0x193AE2F00](v10, v8);
              CFDataGetBytePtr(v12);
              CFDataGetLength(v12);
              v13 = FigAtomWriterAppendData();
              if (v13 || (v13 = FigAtomWriterEndAtom(), v13))
              {
                v14 = v13;
                if (v12)
                {
                  CFRelease(v12);
                }

                return v14;
              }

              if (v12)
              {
                CFRelease(v12);
              }

              if (v6 == ++v7)
              {
                return FigAtomWriterEndAtom();
              }
            }
          }
        }
      }
    }
  }

  return appended;
}

uint64_t VTParavirtualizationMessageAppendSInt32()
{
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          result = OUTLINED_FUNCTION_7_12();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetSInt32()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v1);
  v2 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v2, v3, v4, v5, 1030959922, v6, v7))
  {
    if (v19 == 20)
    {
      OUTLINED_FUNCTION_17_7();
      if (!OUTLINED_FUNCTION_18_5(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, 0))
      {
        OUTLINED_FUNCTION_19_4();
        *v0 = v16;
      }
    }

    else if (v19)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM();
    }

    else
    {
      *v0 = 0;
    }
  }
}

uint64_t VTParavirtualizationMessageAppendUInt32()
{
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          result = OUTLINED_FUNCTION_7_12();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetUInt32()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v1);
  v2 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v2, v3, v4, v5, 1031090994, v6, v7))
  {
    if (v19 == 20)
    {
      OUTLINED_FUNCTION_17_7();
      if (!OUTLINED_FUNCTION_18_5(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, 0))
      {
        OUTLINED_FUNCTION_19_4();
        *v0 = v16;
      }
    }

    else if (v19)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM();
    }

    else
    {
      *v0 = 0;
    }
  }
}

uint64_t VTParavirtualizationMessageAppendSInt64()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          result = FigAtomWriterAppendData();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageGetSInt64()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v1);
  v2 = OUTLINED_FUNCTION_0_28();
  result = vtpvScanForParameterBoxWithType(v2, v3, v4, v5, 1030960692, v6, v7);
  if (!result)
  {
    OUTLINED_FUNCTION_30_2();
    if (v18)
    {
      result = OUTLINED_FUNCTION_11_8(v9, v10, v11, v12, v13, v14, v15, v16, v19, 0, v21, v22);
      if (!result)
      {
        *v0 = bswap64(destination);
      }
    }

    else if (v17)
    {
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM();
    }

    else
    {
      return OUTLINED_FUNCTION_25_3();
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendCMFormatDescription()
{
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_7_12();
      if (!result)
      {
        result = OUTLINED_FUNCTION_14_8();
        if (!result)
        {
          CFStringGetSystemEncoding();
          v1 = OUTLINED_FUNCTION_29_2();
          result = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(v1, v2, v3, 0, v4);
          if (!result)
          {
            CMBlockBufferGetDataLength(0);
            result = OUTLINED_FUNCTION_34_2();
            if (!result)
            {
              return FigAtomWriterEndAtom();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCMFormatDescription()
{
  OUTLINED_FUNCTION_16_8();
  v3 = v2;
  v13 = 0;
  v14 = 0;
  cf = 0;
  blockBufferOut = 0;
  DataLength = CMBlockBufferGetDataLength(v2);
  v5 = vtpvScanForParameterBoxWithType(v3, 0, DataLength, v1, 1030120563, &v14, &v13);
  if (v5)
  {
    goto LABEL_14;
  }

  if (!v13)
  {
    v9 = 0;
    *v0 = 0;
    goto LABEL_7;
  }

  if (v13 <= 0x65)
  {
    v5 = FigSignalErrorAtGM();
    goto LABEL_14;
  }

  v6 = *MEMORY[0x1E695E480];
  v5 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v3, v14 + 16, v13 - 16, 0, &blockBufferOut);
  if (v5)
  {
LABEL_14:
    v9 = v5;
    goto LABEL_7;
  }

  v7 = blockBufferOut;
  SystemEncoding = CFStringGetSystemEncoding();
  v9 = CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(v6, v7, SystemEncoding, 0, &cf);
  if (!v9)
  {
    *v0 = cf;
    cf = 0;
  }

LABEL_7:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t VTParavirtualizationMessageAppendCMSampleBuffer(uint64_t a1, uint64_t a2, int a3, opaqueCMSampleBuffer *a4, CFTypeRef *a5)
{
  OUTLINED_FUNCTION_1_28();
  theBuffer = 0;
  v8 = FigAtomWriterInitWithByteStream();
  if (!v8)
  {
    v8 = OUTLINED_FUNCTION_5_16();
    if (!v8)
    {
      v8 = OUTLINED_FUNCTION_7_12();
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_14_8();
        if (!v8)
        {
          if (a3)
          {
            v8 = VTParavirtualizationCreateSerializedAtomDataBlockBufferForSampleBuffer(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480], a4, a5, &theBuffer);
            if (!v8)
            {
              CMBlockBufferGetDataLength(theBuffer);
              v8 = OUTLINED_FUNCTION_34_2();
              if (!v8)
              {
                v8 = FigAtomWriterEndAtom();
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_10();
            v8 = FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  v9 = v8;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v9;
}

uint64_t VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, CMBlockBufferRef *a5)
{
  OUTLINED_FUNCTION_1_28();
  v16 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(a1, 0, &v16);
  if (result)
  {
    return result;
  }

  if (v16 + 17 > a3)
  {
    v11 = CFRetain(a4);
    result = 0;
    *a5 = v11;
    return result;
  }

  DataLength = CMBlockBufferGetDataLength(a4);
  v13 = DataLength;
  v14 = a3 - v16 - 16;
  if (v14 >= DataLength)
  {
    v15 = DataLength;
  }

  else
  {
    v15 = a3 - v16 - 16;
  }

  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_7_12();
      if (!result)
      {
        result = OUTLINED_FUNCTION_14_8();
        if (!result)
        {
          result = FigAtomWriterAppendBlockBufferData();
          if (!result)
          {
            result = FigAtomWriterEndAtom();
            if (!result)
            {
              if (v13 <= v14)
              {
                *a5 = 0;
              }

              else
              {
                result = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], a4, v15, v13 - v15, 0, a5);
                if (result)
                {
                  return result;
                }
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCMSampleBuffer(OpaqueCMBlockBuffer *a1, int a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v12 = 0;
  v13 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  theBuffer = 0;
  blockBufferOut = 0;
  v14 = *MEMORY[0x1E695E480];
  do
  {
    vtParavirtualizationMessageGetMessageFlagsStartingAtOffset(a1, v12, &v29);
    if (appended)
    {
      goto LABEL_20;
    }

    DataLength = CMBlockBufferGetDataLength(a1);
    appended = vtpvScanForParameterBoxWithType(a1, v12, DataLength, a2, 1030972006, &v28, &v27);
    if (appended)
    {
      goto LABEL_20;
    }

    if (!v27)
    {
      SampleBufferFromSerializedAtomDataBlockBuffer = 0;
      *a6 = 0;
      goto LABEL_21;
    }

    if (v27 <= 0x10)
    {
      goto LABEL_19;
    }

    appended = CMBlockBufferCreateWithBufferReference(v14, a1, v12 + v28 + 16, v27 - 16, 0, &blockBufferOut);
    if (appended)
    {
      goto LABEL_20;
    }

    v17 = blockBufferOut;
    if (v13)
    {
      OUTLINED_FUNCTION_22_3();
      appended = CMBlockBufferAppendBufferReference(v18, v19, v20, v21, 0);
      if (appended)
      {
        goto LABEL_20;
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
        blockBufferOut = 0;
      }
    }

    else
    {
      blockBufferOut = 0;
      v13 = v17;
    }

    v12 += v28 + v27;
  }

  while ((v29 & 0x10) != 0);
  if (CMBlockBufferIsRangeContiguous(v13, 0, 0))
  {
    theBuffer = CFRetain(v13);
    goto LABEL_16;
  }

  appended = CMBlockBufferCreateContiguous(v14, v13, v14, 0, 0, 0, 0, &theBuffer);
  if (appended)
  {
LABEL_20:
    SampleBufferFromSerializedAtomDataBlockBuffer = appended;
    goto LABEL_21;
  }

LABEL_16:
  if (!a3)
  {
LABEL_19:
    appended = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  SampleBufferFromSerializedAtomDataBlockBuffer = VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer(v14, theBuffer, 0, a4, a5, &cf);
  if (!SampleBufferFromSerializedAtomDataBlockBuffer)
  {
    *a6 = cf;
    cf = 0;
  }

LABEL_21:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return SampleBufferFromSerializedAtomDataBlockBuffer;
}

uint64_t VTParavirtualizationMessageAppendCMVideoDimensions()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          result = OUTLINED_FUNCTION_12_7();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetCMVideoDimensions()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v0);
  v1 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v1, v2, v3, v4, 1031239784, v5, v6))
  {
    OUTLINED_FUNCTION_30_2();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_11_8(v7, v8, v9, v10, v11, v12, v13, v14, v26, 0, v28, v29);
      if (!v17)
      {
        OUTLINED_FUNCTION_24_3(v17, v18, v19, v20, v21, v22, v23, v24, v27, v25);
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_25_3();
    }
  }
}

uint64_t VTParavirtualizationMessageAppendCMTime()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_15_8();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_9_10();
    if (!result)
    {
      result = FigAtomWriterAppendData();
      if (!result)
      {
        result = FigAtomWriterAppendData();
        if (!result)
        {
          result = FigAtomWriterAppendData();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageGetCMTime(OpaqueCMBlockBuffer *a1, int a2, int8x8_t *a3)
{
  v13 = 0;
  v14 = 0;
  v10 = *MEMORY[0x1E6960C70];
  destination = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v12 = v6;
  DataLength = CMBlockBufferGetDataLength(a1);
  result = vtpvScanForParameterBoxWithType(a1, 0, DataLength, a2, 1031039341, &v14, &v13);
  if (!result)
  {
    if (v13 == 40)
    {
      result = CMBlockBufferCopyDataBytes(a1, v14 + 16, 0x18uLL, &destination);
      if (!result)
      {
        v9 = bswap64(v12);
        *a3 = bswap64(destination);
        a3[1] = vrev32_s8(*(&destination + 8));
        a3[2] = v9;
      }
    }

    else if (v13)
    {
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM();
    }

    else
    {
      result = 0;
      *a3->i8 = v10;
      a3[2] = v6;
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageAppendVTInt32Point()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          result = OUTLINED_FUNCTION_12_7();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetVTInt32Point()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v0);
  v1 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v1, v2, v3, v4, 1026765424, v5, v6))
  {
    OUTLINED_FUNCTION_30_2();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_11_8(v7, v8, v9, v10, v11, v12, v13, v14, v26, 0, v28, v29);
      if (!v17)
      {
        OUTLINED_FUNCTION_24_3(v17, v18, v19, v20, v21, v22, v23, v24, v27, v25);
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_25_3();
    }
  }
}

uint64_t VTParavirtualizationMessageAppendVTInt32Size()
{
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_1_28();
  result = FigAtomWriterInitWithByteStream();
  if (!result)
  {
    result = OUTLINED_FUNCTION_5_16();
    if (!result)
    {
      result = OUTLINED_FUNCTION_4_19();
      if (!result)
      {
        result = OUTLINED_FUNCTION_6_15();
        if (!result)
        {
          result = OUTLINED_FUNCTION_12_7();
          if (!result)
          {
            return FigAtomWriterEndAtom();
          }
        }
      }
    }
  }

  return result;
}

void VTParavirtualizationMessageGetVTInt32Size()
{
  OUTLINED_FUNCTION_2_26();
  CMBlockBufferGetDataLength(v0);
  v1 = OUTLINED_FUNCTION_0_28();
  if (!vtpvScanForParameterBoxWithType(v1, v2, v3, v4, 1026765427, v5, v6))
  {
    OUTLINED_FUNCTION_30_2();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_11_8(v7, v8, v9, v10, v11, v12, v13, v14, v26, 0, v28, v29);
      if (!v17)
      {
        OUTLINED_FUNCTION_24_3(v17, v18, v19, v20, v21, v22, v23, v24, v27, v25);
      }
    }

    else if (v15)
    {
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM();
    }

    else
    {
      OUTLINED_FUNCTION_25_3();
    }
  }
}

uint64_t VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(OpaqueCMBlockBuffer *a1, CVPixelBufferRef pixelBuffer)
{
  v19 = 0;
  CVPixelBufferGetIOSurface(pixelBuffer);
  bzero(buffer, 0x84uLL);
  theData = 0;
  v4 = VTParavirtualizationMessageCopyCFDictionary(a1, 745562484, &v19);
  v5 = v19;
  if (v4)
  {
    v6 = v4;
    goto LABEL_28;
  }

  if (v19)
  {
    CVBufferSetAttachments(pixelBuffer, v19, kCVAttachmentMode_ShouldPropagate);
  }

  v16[0] = 0;
  v6 = VTParavirtualizationMessageCopyCFData(a1, 744644980, v16);
  v7 = v16[0];
  if (!v6 && v16[0])
  {
    bzero(buffer, 0x84uLL);
    Length = CFDataGetLength(v7);
    if (Length >= 0x84)
    {
      v9.length = 132;
    }

    else
    {
      v9.length = Length;
    }

    v9.location = 0;
    CFDataGetBytes(v7, v9, buffer);
    goto LABEL_11;
  }

  if (v16[0])
  {
LABEL_11:
    CFRelease(v7);
  }

  if (v6)
  {
    goto LABEL_28;
  }

  memcpy(v16, buffer, 0x84uLL);
  if (LOBYTE(v16[0]))
  {
LABEL_14:
    if (IOSurfaceSetBulkAttachments2())
    {
LABEL_27:
      v6 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v10 = 1;
    while (v10 != 132)
    {
      if (*(v16 + v10++))
      {
        if ((v10 - 2) < 0x83)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = VTParavirtualizationMessageCopyCFData(a1, v12 + 744779824, &theData);
    v14 = theData;
    if (v13)
    {
      break;
    }

    if (theData)
    {
      if (CFDataGetLength(theData))
      {
        CFDataGetBytePtr(v14);
        if (IOSurfaceSetDataProperty())
        {
          v6 = 0;
LABEL_32:
          CFRelease(v14);
          goto LABEL_28;
        }
      }

      CFRelease(v14);
      theData = 0;
    }

    if (++v12 == 4)
    {
      goto LABEL_27;
    }
  }

  v6 = v13;
  if (theData)
  {
    goto LABEL_32;
  }

LABEL_28:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t VTParavirtualizationReplyClerkDeliverReply(uint64_t a1, OpaqueCMBlockBuffer *a2, NSObject *a3, NSObject *a4)
{
  v25 = 0;
  key = 0;
  result = VTParavirtualizationMessageGetReplyIdentifier(a2, &key);
  if (result)
  {
    return result;
  }

  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v25, &v25 + 1, 0);
  if (result)
  {
    return result;
  }

  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48) || (Value = CFDictionaryGetValue(*(a1 + 40), key)) == 0)
  {
    os_unfair_lock_unlock((a1 + 24));
    return FigSignalErrorAtGM();
  }

  v10 = Value;
  v11 = Value[2];
  if ((v25 & 0x1000000000) == 0)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_22_3();
      CMBlockBufferAppendBufferReference(v12, v13, v14, v15, 0);
      v17 = v10[1];
      v16 = v10[2];
      v10[1] = v16;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v17 = v10[1];
      v10[1] = a2;
      if (!a2)
      {
LABEL_15:
        if (v17)
        {
          CFRelease(v17);
        }

        v23 = v10[3];
        v10[3] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v10[4] = a4;
        v22 = *v10;
        dispatch_retain(*v10);
        goto LABEL_26;
      }

      v16 = a2;
    }

    CFRetain(v16);
    goto LABEL_15;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_22_3();
    CMBlockBufferAppendBufferReference(v18, v19, v20, v21, 0);
    v22 = 0;
  }

  else
  {
    if (a2)
    {
      v24 = CFRetain(a2);
    }

    else
    {
      v24 = 0;
    }

    v22 = 0;
    v10[2] = v24;
  }

LABEL_26:
  os_unfair_lock_unlock((a1 + 24));
  if ((v25 & 0x1000000000) == 0)
  {
    dispatch_semaphore_signal(v22);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  return 0;
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_2(int a1, size_t blockLength, CMBlockBufferRef *a3, void *a4)
{
  blockBufferOut = 0;
  result = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, blockLength, *MEMORY[0x1E695E480], 0, 0, blockLength, 1u, &blockBufferOut);
  if (!result)
  {
    OUTLINED_FUNCTION_22_3();
    result = CMBlockBufferGetDataPointer(v7, v8, v9, v10, v11);
    if (!result)
    {
      *a3 = blockBufferOut;
      *a4 = 0;
    }
  }

  return result;
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_3(int a1, OpaqueCMBlockBuffer *a2, size_t dataLength)
{
  blockBufferOut = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], a2, 0, dataLength, 0, &blockBufferOut);
  if (v4)
  {
    v18 = v4;
    goto LABEL_25;
  }

  v5 = blockBufferOut;
  v27 = 0;
  *&v26.byte0 = 0;
  *&v26.byte8 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(blockBufferOut, &v27 + 1, &v27, &v26);
  if (MessageTypeAndFlagsAndGuestUUID)
  {
    goto LABEL_32;
  }

  v7 = CFUUIDCreateFromUUIDBytes(v3, v26);
  if (!v7)
  {
    OUTLINED_FUNCTION_2_10();
    MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM();
LABEL_32:
    v18 = MessageTypeAndFlagsAndGuestUUID;
    _Block_release(0);
    goto LABEL_25;
  }

  v8 = v7;
  os_unfair_lock_lock(&_MergedGlobals_18);
  Value = CFDictionaryGetValue(qword_1ED6D4538, v8);
  v10 = Value;
  if (!Value)
  {
    OUTLINED_FUNCTION_2_10();
    v18 = FigSignalErrorAtGM();
    os_unfair_lock_unlock(&_MergedGlobals_18);
    v11 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  v11 = _Block_copy(*Value);
  v12 = v10[1];
  if (v12)
  {
    v13 = CFRetain(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v10[2];
  dispatch_retain(v14);
  v15 = v10[4];
  if (v15)
  {
    v10 = CFRetain(v15);
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_18);
  if (HIDWORD(v27) == 1115252001)
  {
    os_unfair_lock_lock(&_MergedGlobals_18);
    v16 = *(CFDictionaryGetValue(qword_1ED6D4538, v8) + 4);
    if (v16)
    {
      v17 = CFRetain(v16);
      os_unfair_lock_unlock(&_MergedGlobals_18);
      if (v17)
      {
        VTParavirtualizationReplyClerkInvalidate(v17);
        CFRelease(v17);
      }
    }

    else
    {
      os_unfair_lock_unlock(&_MergedGlobals_18);
    }

    v11[2](v11, v5, v13);
  }

  else
  {
    if ((v27 & 4) != 0)
    {
      OUTLINED_FUNCTION_22_3();
      v18 = VTParavirtualizationReplyClerkDeliverReply(v20, v21, v22, v23);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    CFRetain(v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtParavirtualizationGuestDispatchOneMessageFromHost_block_invoke;
    block[3] = &unk_1E72C9890;
    block[4] = v11;
    block[5] = v5;
    block[6] = v13;
    dispatch_async(v14, block);
    v11 = 0;
  }

  v18 = 0;
  if (v13)
  {
LABEL_20:
    CFRelease(v13);
  }

LABEL_21:
  CFRelease(v8);
  _Block_release(v11);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_25:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

void VTParavirtualizationHostSessionCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t VTParavirtualizationHostSessionCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostSessionCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationReplyClerkCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationReplyClerkWaitForReply_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtpvScanForTopLevelBoxWithType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFPropertyList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFData_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFData_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyCFDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments_cold_2(void *__src, uint64_t a2, _DWORD *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = CFDataCreate(*MEMORY[0x1E695E480], __dst, 132);
  appended = VTParavirtualizationMessageAppendCFData();
  *a3 = appended;
  if (v4)
  {
    CFRelease(v4);
  }

  return appended == 0;
}

uint64_t VTParavirtualizationCopyFilteredPixelBufferAttributes_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFigAudioSessionCreate(_OWORD *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v14 = 0;
  cf = 0;
  if (VTCMSessionIsSupported())
  {
    if (VTInAudioMXServerProcess())
    {
      UsingPrimaryAVAudioSessionSiblingForAuditToken = CMSessionCreate();
      if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
      {
        v7 = *MEMORY[0x1E695E480];
        UsingPrimaryAVAudioSessionSiblingForAuditToken = VTFigAudioSessionCreateWithCMSession();
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetInt32();
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_8;
        }
      }

LABEL_15:
      v11 = UsingPrimaryAVAudioSessionSiblingForAuditToken;
      goto LABEL_10;
    }

    v9 = *MEMORY[0x1E695E480];
    v10 = a1[1];
    v13[0] = *a1;
    v13[1] = v10;
    UsingPrimaryAVAudioSessionSiblingForAuditToken = VTFigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v9, v13);
    if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  v11 = 0;
  if (a4)
  {
    *a4 = v14;
    v14 = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t VTFigAudioSessionInitialize_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTFigAudioSessionInitialize_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t __VTFigAudioSessionInitialize_block_invoke_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTFigAudioSessionCreateWithCMSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTInAudioMXServerProcess_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

void VTCreateColorSpacesFromDictionaries(CFDictionaryRef theDict, CFDictionaryRef a2, void *a3, void *a4)
{
  v4 = theDict;
  if (!a3 || !a4)
  {
    goto LABEL_84;
  }

  v6 = MEMORY[0x1E6965CE8];
  v7 = MEMORY[0x1E6965EC8];
  v8 = MEMORY[0x1E6965D88];
  v9 = MEMORY[0x1E6965F30];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6965CE8]);
    if (Value)
    {
      v11 = CFRetain(Value);
    }

    else
    {
      v11 = 0;
    }

    v12 = CFDictionaryGetValue(v4, *v7);
    v41 = CFDictionaryGetValue(v4, *v8);
    v13 = CFDictionaryGetValue(v4, *v9);
    v14 = CFDictionaryGetValue(v4, *MEMORY[0x1E6965ED0]);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v41 = 0;
    v13 = 0;
    v14 = 0;
  }

  v38 = v14;
  if (a2)
  {
    v15 = CFDictionaryGetValue(a2, *v6);
    if (v15)
    {
      v16 = CFRetain(v15);
    }

    else
    {
      v16 = 0;
    }

    v20 = CFDictionaryGetValue(a2, *v7);
    v17 = CFDictionaryGetValue(a2, *v8);
    v40 = CFDictionaryGetValue(a2, *v9);
    v18 = CFDictionaryGetValue(a2, *MEMORY[0x1E6965ED0]);
    v19 = v11 != 0;
    v39 = v16 != 0;
    if (v11 && v16 && FigCFEqual())
    {
      v21 = 0;
      MutableCopy = 0;
LABEL_77:
      CFRelease(v11);
LABEL_78:
      if (v16)
      {
        CFRelease(v16);
      }

      if (!MutableCopy)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    if (v12 && v20 && FigCFEqual())
    {
      goto LABEL_40;
    }

    v35 = v16 != 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v40 = 0;
    v18 = 0;
    v35 = 0;
    v19 = v11 != 0;
    v39 = 1;
  }

  if (v41)
  {
    v23 = v17 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (!v23 && v13 && v40 && FigCFEqual() && FigCFEqual() || (v38 ? (v25 = v24) : (v25 = 0), v25 == 1 && v18 && FigCFEqual() && FigCFEqual()))
  {
LABEL_40:
    MutableCopy = 0;
    v21 = 0;
    goto LABEL_76;
  }

  if (v4)
  {
    v26 = v19;
  }

  else
  {
    v26 = 1;
  }

  v27 = MEMORY[0x1E6965F98];
  if (v26)
  {
    MutableCopy = 0;
    goto LABEL_60;
  }

  v28 = *MEMORY[0x1E6965F98];
  if (CFDictionaryGetValue(v4, *MEMORY[0x1E6965F98]))
  {
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionarySetValue(MutableCopy, v28, *MEMORY[0x1E695E738]);
    v4 = MutableCopy;
  }

  if (!FigCFEqual())
  {
    v30 = FigCFEqual();
    if (v30 == 0 && v35)
    {
      v31 = CFGetTypeID(v16);
      if (v31 != CGColorSpaceGetTypeID() || !CGColorSpaceUsesITUR_2100TF(v16))
      {
        goto LABEL_58;
      }
    }

    else if (!v30)
    {
LABEL_58:
      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v4);
      goto LABEL_59;
    }
  }

  if (!FigCFEqual() || !FigCFEqual())
  {
    goto LABEL_58;
  }

  ColorSpaceFromAttachments = CGColorSpaceCreateWithName(*MEMORY[0x1E695F180]);
LABEL_59:
  v11 = ColorSpaceFromAttachments;
LABEL_60:
  if (v39)
  {
    v21 = 0;
  }

  else
  {
    v32 = *v27;
    if (CFDictionaryGetValue(a2, *v27))
    {
      v21 = 0;
    }

    else
    {
      v21 = FigCFDictionaryCreateMutableCopy();
      CFDictionarySetValue(v21, v32, *MEMORY[0x1E695E738]);
      a2 = v21;
    }

    if ((FigCFEqual() || FigCFEqual() || v11 && (v34 = CFGetTypeID(v11), v34 == CGColorSpaceGetTypeID()) && CGColorSpaceUsesITUR_2100TF(v11)) && FigCFEqual() && FigCFEqual())
    {
      v33 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F180]);
    }

    else
    {
      v33 = CVImageBufferCreateColorSpaceFromAttachments(a2);
    }

    v16 = v33;
  }

  if (FigCFEqual())
  {
LABEL_76:
    if (!v11)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  *a3 = v11;
  *a4 = v16;
  if (MutableCopy)
  {
LABEL_81:
    CFRelease(MutableCopy);
  }

LABEL_82:
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_84:
  OUTLINED_FUNCTION_41();
}

uint64_t VTGetBitsPerComponentFromPixelFormatType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTCreateColorAttachments_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTCreateColorAttachments_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreateColorAttachments_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreateColorAttachments_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreateVImageConverter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

OSStatus VTFrameSiloAddSampleBuffer(VTFrameSiloRef silo, CMSampleBufferRef sampleBuffer)
{
  v170 = *MEMORY[0x1E69E9840];
  if (silo && !*(silo + 16) && sampleBuffer && CMSampleBufferIsValid(sampleBuffer))
  {
    v6 = OUTLINED_FUNCTION_15_9();
    CMSampleBufferGetDecodeTimeStamp(v7, v6);
    value = time1.duration.value;
    flags = time1.duration.flags;
    timescale = time1.duration.timescale;
    epoch = time1.duration.epoch;
    v10 = OUTLINED_FUNCTION_15_9();
    CMSampleBufferGetPresentationTimeStamp(v11, v10);
    v162 = time1.duration.value;
    v163 = time1.duration.timescale;
    if ((time1.duration.flags & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      return FigSignalErrorAtGM();
    }

    if (*(silo + 44))
    {
      OUTLINED_FUNCTION_17_8();
      *&time2.start.value = *(silo + 2);
      time2.start.epoch = *(silo + 6);
      if (CMTimeCompare(&time1.duration, &time2.start) <= 0)
      {
LABEL_111:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        return FigSignalErrorAtGM();
      }
    }

    else
    {
      OUTLINED_FUNCTION_16_9();
    }

    if (*(silo + 72))
    {
      v12 = *(silo + 8);
      if ((*(v12 + 12) & 1) == 0 || (*(v12 + 36) & 1) == 0 || *(v12 + 40) || (*(v12 + 24) & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }
    }

    if (*(silo + 7) < 1)
    {
      goto LABEL_22;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (*(silo + 8) + v13);
      *&time1.duration.value = *v15;
      *&time1.duration.epoch = v15[1];
      *&time1.presentationTimeStamp.timescale = v15[2];
      *&time2.start.value = *&time1.duration.value;
      *&time2.start.epoch = *&time1.duration.epoch;
      *&time2.duration.timescale = *&time1.presentationTimeStamp.timescale;
      time.value = value;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      if (CMTimeRangeContainsTime(&time2, &time))
      {
        goto LABEL_22;
      }

      v16 = *(silo + 7);
      ++v14;
      v13 += 48;
    }

    while (v14 < v16);
    if (v16 < 1)
    {
LABEL_22:
      FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
      v154 = v2;
      if (FormatDescription)
      {
        v18 = FormatDescription;
        v19 = OUTLINED_FUNCTION_15_9();
        CMSampleBufferGetDecodeTimeStamp(v20, v19);
        timingArrayEntriesNeededOut = time1.duration.value;
        v21 = time1.duration.flags;
        v169 = time1.duration.timescale;
        v22 = time1.duration.epoch;
        v23 = OUTLINED_FUNCTION_15_9();
        CMSampleBufferGetPresentationTimeStamp(v24, v23);
        error = time1.duration.value;
        v167 = time1.duration.timescale;
        v25 = OUTLINED_FUNCTION_15_9();
        CMSampleBufferGetOutputPresentationTimeStamp(v26, v25);
        CMSampleBufferGetPresentationTimeStamp(&time2.start, sampleBuffer);
        CMTimeCompare(&time1.duration, &time2.start);
        if (*(silo + 72))
        {
          if (CFArrayGetCount(*(silo + 10)) < 1 || (v27 = *(silo + 10), Count = CFArrayGetCount(v27), ValueAtIndex = CFArrayGetValueAtIndex(v27, Count - 1), !FigCFEqual()))
          {
            OUTLINED_FUNCTION_7_13();
            v31 = malloc_type_malloc(0x38uLL, v30);
            *v31 = timingArrayEntriesNeededOut;
            *(v31 + 2) = v169;
            *(v31 + 3) = v21;
            *(v31 + 2) = v22;
            *(v31 + 5) = v22;
            *(v31 + 24) = *v31;
            *(v31 + 6) = CFRetain(v18);
            v32 = OUTLINED_FUNCTION_19_5();
            CFArrayAppendValue(v32, v33);
            goto LABEL_75;
          }

          ValueAtIndex[3] = timingArrayEntriesNeededOut;
          *(ValueAtIndex + 8) = v169;
LABEL_42:
          *(ValueAtIndex + 9) = v21;
          ValueAtIndex[5] = v22;
          goto LABEL_75;
        }

        v34 = *(silo + 11);
        if (v34 >= CFArrayGetCount(*(silo + 10)))
        {
          v35 = CFArrayGetCount(*(silo + 10)) - 1;
          *(silo + 11) = v35;
        }

        else
        {
          v35 = *(silo + 11);
        }

        if (v35 >= CFArrayGetCount(*(silo + 10)))
        {
          ValueAtIndex = 0;
        }

        else
        {
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(silo + 10), *(silo + 11));
            OUTLINED_FUNCTION_2_27();
            if ((OUTLINED_FUNCTION_13_10(v36, v37, v38, v39, v40, v41, v42, v43, v147, cf, v151, v154, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v157.value, *&v157.timescale, v157.epoch, v158, time.value, *&time.timescale, time.epoch, v160, time1.duration.value) & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_2_27();
              if (OUTLINED_FUNCTION_12_8(v44, v45, v46, v47, v48, v49, v50, v51, v147, cf, v151, v154, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v157.value, *&v157.timescale, v157.epoch, v158, time.value, *&time.timescale, time.epoch, v160, time1.duration.value) < 1)
              {
                break;
              }
            }

            v52 = *(silo + 11) + 1;
            if (v52 >= CFArrayGetCount(*(silo + 10)))
            {
              break;
            }

            CFArrayGetValueAtIndex(*(silo + 10), *(silo + 11) + 1);
            OUTLINED_FUNCTION_2_27();
            if ((OUTLINED_FUNCTION_13_10(v53, v54, v55, v56, v57, v58, v59, v60, v147, cf, v151, v154, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v157.value, *&v157.timescale, v157.epoch, v158, time.value, *&time.timescale, time.epoch, v160, time1.duration.value) & 0x80000000) != 0)
            {
              break;
            }

            v61 = *(silo + 10);
            v62 = *(silo + 11) + 1;
            *(silo + 11) = v62;
          }

          while (v62 < CFArrayGetCount(v61));
        }

        if (FigCFEqual())
        {
          OUTLINED_FUNCTION_2_27();
          if (OUTLINED_FUNCTION_12_8(v63, v64, v65, v66, v67, v68, v69, v70, v147, cf, v151, v154, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, v157.value, *&v157.timescale, v157.epoch, v158, time.value, *&time.timescale, time.epoch, v160, time1.duration.value) < 1)
          {
            goto LABEL_75;
          }

          ValueAtIndex[3] = timingArrayEntriesNeededOut;
          *(ValueAtIndex + 8) = v169;
          goto LABEL_42;
        }

        cfa = v18;
        *&time1.duration.value = *MEMORY[0x1E6960C70];
        time1.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        *&time2.start.value = *&time1.duration.value;
        time2.start.epoch = time1.duration.epoch;
        OUTLINED_FUNCTION_8_11();
        TimeStamp = VTMultiPassStorageGetTimeStamp(v71, v72, v73, &time1);
        v152 = epoch;
        if (TimeStamp || (OUTLINED_FUNCTION_8_11(), (TimeStamp = VTMultiPassStorageGetTimeStamp(v75, v76, v77, &time2)) != 0))
        {
          Code = TimeStamp;
        }

        else
        {
          if (CFArrayGetCount(*(silo + 10)) >= 1)
          {
            v78 = 0;
            do
            {
              v79 = OUTLINED_FUNCTION_19_5();
              v81 = CFArrayGetValueAtIndex(v79, v80);
              v89 = v81;
              if ((time1.duration.flags & 0x1D) == 1)
              {
                v90 = OUTLINED_FUNCTION_14_9(v81, v82, v83, v84, v85, v86, v87, v88, v147, cfa, v152, v154, time2.start.value, *&time2.start.timescale, *&time2.start.epoch, *&time2.duration.timescale, time2.duration.epoch, *&v157.value, v157.epoch, v158, v81[3], v81[4], v81[5], v160, *&time1.duration.value, time1.duration.epoch);
                if (v90 < 1)
                {
                  OUTLINED_FUNCTION_10_10();
                  if (!v107)
                  {
                    goto LABEL_70;
                  }

                  v108 = 0;
                  v98 = 1;
                  goto LABEL_59;
                }

                v98 = OUTLINED_FUNCTION_14_9(v90, v91, v92, v93, v94, v95, v96, v97, v147, cfa, v152, v154, time2.start.value, *&time2.start.timescale, *&time2.start.epoch, *&time2.duration.timescale, time2.duration.epoch, *&v157.value, v157.epoch, v158, *v89, v89[1], v89[2], v160, *&time1.duration.value, time1.duration.epoch) > 0;
                OUTLINED_FUNCTION_10_10();
                if (!v107)
                {
                  if (v99 <= 0)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                OUTLINED_FUNCTION_10_10();
                if (!v107)
                {
                  goto LABEL_63;
                }

                v98 = 1;
              }

              v108 = 1;
LABEL_59:
              OUTLINED_FUNCTION_18_6(v99, v100, v101, v102, v103, v104, v105, v106, v147, cfa, v152, v154, *&time2.start.value);
              v109 = *v89;
              v157.epoch = v89[2];
              *&v157.value = v109;
              v110 = CMTimeCompare(&time, &v157);
              if (v110 < 1)
              {
                break;
              }

              OUTLINED_FUNCTION_18_6(v110, v111, v112, v113, v114, v115, v116, v117, v148, cfa, v153, v155, *&time2.start.value);
              v157 = *(v89 + 1);
              v118 = CMTimeCompare(&time, &v157);
              if ((v108 & 1) == 0)
              {
                if (v118 <= 0)
                {
                  break;
                }

                goto LABEL_70;
              }

              if (!v98)
              {
                if (v118 <= 0)
                {
                  OUTLINED_FUNCTION_7_13();
                  v145 = malloc_type_malloc(v143, v144);
                  *v145 = *&time2.start.value;
                  *(v145 + 2) = time2.start.epoch;
                  v146 = v89[5];
                  *(v145 + 24) = *(v89 + 3);
                  *(v145 + 5) = v146;
                  *(v145 + 6) = CFRetain(v89[6]);
                  CFArrayInsertValueAtIndex(*(silo + 10), v78 + 1, v145);
                  *(v89 + 3) = *&time1.duration.value;
                  v89[5] = time1.duration.epoch;
                  break;
                }

LABEL_69:
                *(v89 + 3) = *&time1.duration.value;
                v89[5] = time1.duration.epoch;
LABEL_70:
                ++v78;
                continue;
              }

              if (v118 <= 0)
              {
                v121 = *&time2.start.value;
                v89[2] = time2.start.epoch;
                *v89 = v121;
                break;
              }

LABEL_63:
              v119 = OUTLINED_FUNCTION_19_5();
              CFArrayRemoveValueAtIndex(v119, v120);
            }

            while (v78 < CFArrayGetCount(*(silo + 10)));
          }

          OUTLINED_FUNCTION_7_13();
          v124 = malloc_type_malloc(v122, v123);
          v125 = timingArrayEntriesNeededOut;
          *v124 = timingArrayEntriesNeededOut;
          v126 = v169;
          v124[2] = v169;
          v124[3] = v21;
          *(v124 + 2) = v22;
          *(v124 + 3) = v125;
          v124[8] = v126;
          v124[9] = v21;
          *(v124 + 5) = v22;
          *(v124 + 6) = CFRetain(cfa);
          v127 = OUTLINED_FUNCTION_19_5();
          CFArrayInsertValueAtIndex(v127, v128, v124);
          Code = 0;
        }

        if (!Code)
        {
LABEL_75:
          memset(&time1, 0, sizeof(time1));
          time2.start.value = 0;
          time.value = 0;
          v157.value = 0;
          timingArrayEntriesNeededOut = 0;
          HIDWORD(v160) = 0;
          error = 0;
          v130 = *MEMORY[0x1E695E480];
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
          SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sampleBuffer, 0, 0, &timingArrayEntriesNeededOut);
          if (!SampleTimingInfoArray)
          {
            if (timingArrayEntriesNeededOut == 1)
            {
              SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sampleBuffer, 1, &time1, 0);
              if (!SampleTimingInfoArray)
              {
                CFDataAppendBytes(Mutable, &time1, 72);
                SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBuffer, 1u);
                v134 = CFPropertyListCreateData(v130, SampleAttachmentsArray, kCFPropertyListBinaryFormat_v1_0, 0, &error);
                if (!v134)
                {
                  goto LABEL_113;
                }

                if (error)
                {
                  v135 = CFErrorCopyFailureReason(error);
                  Code = CFErrorGetCode(error);
                  if (!Mutable)
                  {
LABEL_89:
                    if (error)
                    {
                      CFRelease(error);
                    }

                    if (v134)
                    {
                      CFRelease(v134);
                    }

                    if (v135)
                    {
                      CFRelease(v135);
                    }

                    if (!Code)
                    {
                      OUTLINED_FUNCTION_17_8();
                      Code = VTMultiPassStorageSetDataAtTimeStamp(v142, &time1.duration.value, 0, Mutable);
                      if (!Code)
                      {
                        OUTLINED_FUNCTION_16_9();
                      }
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    return Code;
                  }

LABEL_81:
                  CFRelease(Mutable);
                  Mutable = 0;
                  goto LABEL_89;
                }

                Length = CFDataGetLength(v134);
                if (Length < 0x80000000 && (HIDWORD(v160) = Length, Length > 0) && (CFDataAppendBytes(Mutable, &v160 + 4, 4), BytePtr = CFDataGetBytePtr(v134), CFDataAppendBytes(Mutable, BytePtr, SHIDWORD(v160)), (DataBuffer = CMSampleBufferGetDataBuffer(sampleBuffer)) != 0))
                {
                  v139 = DataBuffer;
                  v140 = 0;
                  while (1)
                  {
                    DataPointer = CMBlockBufferGetDataPointer(v139, v140, &time, &time2, &v157);
                    if (DataPointer)
                    {
                      break;
                    }

                    CFDataAppendBytes(Mutable, v157.value, time.value);
                    v140 += time.value;
                    if (v140 >= time2.start.value)
                    {
                      v135 = 0;
                      Code = 0;
                      goto LABEL_89;
                    }
                  }
                }

                else
                {
LABEL_113:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_7();
                  DataPointer = FigSignalErrorAtGM();
                }

                Code = DataPointer;
LABEL_115:
                v135 = 0;
                if (!Mutable)
                {
                  goto LABEL_89;
                }

                goto LABEL_81;
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_7();
              SampleTimingInfoArray = FigSignalErrorAtGM();
            }
          }

          Code = SampleTimingInfoArray;
          v134 = 0;
          goto LABEL_115;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        Code = FigSignalErrorAtGM();
        if (!Code)
        {
          goto LABEL_75;
        }
      }

      return Code;
    }

    goto LABEL_111;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_16();

  return FigSignalErrorAtGM();
}

OSStatus VTFrameSiloSetTimeRangesForNextPass(VTFrameSiloRef silo, CMItemCount timeRangeCount, const CMTimeRange *timeRangeArray)
{
  v86 = *MEMORY[0x1E69E9840];
  v84 = *MEMORY[0x1E6960C98];
  v85 = *(MEMORY[0x1E6960C98] + 8);
  if (silo && !*(silo + 16) && timeRangeCount > 0 && timeRangeArray)
  {
    v66 = v3;
    flags = *(MEMORY[0x1E6960C98] + 12);
    epoch = *(MEMORY[0x1E6960C98] + 16);
    v10 = *(MEMORY[0x1E6960C98] + 24);
    v11 = *(MEMORY[0x1E6960C98] + 32);
    v12 = *(MEMORY[0x1E6960C98] + 36);
    v13 = *(MEMORY[0x1E6960C98] + 40);
    *(silo + 72) = 0;
    *(silo + 7) = 0;
    v14 = *(silo + 8);
    if (v14)
    {
      v15 = epoch;
      v16 = v11;
      free(v14);
      v11 = v16;
      epoch = v15;
      *(silo + 8) = 0;
    }

    v62 = *&timeRangeCount;
    v64 = silo;
    v17 = v13 == 0;
    p_duration = &timeRangeArray->duration;
    __src = timeRangeArray;
    v60 = 825;
    v19 = timeRangeCount;
    do
    {
      v20 = flags;
      v21 = epoch;
      value = p_duration[-1].value;
      flags = p_duration[-1].flags;
      timescale = p_duration[-1].timescale;
      if ((flags & 1) == 0 || (v22 = v12, v12 = p_duration->flags, (v12 & 1) == 0) || p_duration->epoch || (v23 = v10, v10 = p_duration->value, p_duration->value < 0) || (flags & 0x1D) != 1 || (p_duration->flags & 0x1D) != 1)
      {
LABEL_43:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_22();
        return FigSignalErrorAtGM();
      }

      v24 = v11;
      epoch = p_duration[-1].epoch;
      v11 = p_duration->timescale;
      if ((v20 & 1) != 0 && (v22 & v17 & 1) != 0 && (v23 & 0x8000000000000000) == 0)
      {
        memset(&v81, 0, sizeof(v81));
        v25 = p_duration[-1].value;
        otherRange.duration.epoch = 0;
        range.start.value = v25;
        range.start.timescale = p_duration[-1].timescale;
        range.start.flags = flags;
        v70 = *&epoch;
        range.start.epoch = epoch;
        range.duration.value = v10;
        HIDWORD(v68) = v11;
        range.duration.timescale = v11;
        range.duration.flags = v12;
        range.duration.epoch = 0;
        otherRange.start.value = v84;
        otherRange.start.timescale = v85;
        otherRange.start.flags = v20;
        otherRange.start.epoch = v21;
        otherRange.duration.value = v23;
        otherRange.duration.timescale = v24;
        otherRange.duration.flags = v22;
        CMTimeRangeGetIntersection(&v81, &range, &otherRange);
        memset(&otherRange, 0, 24);
        range.start.value = v84;
        range.start.timescale = v85;
        range.start.flags = v20;
        range.start.epoch = v21;
        range.duration.value = v23;
        range.duration.timescale = v24;
        range.duration.flags = v22;
        range.duration.epoch = 0;
        CMTimeRangeGetEnd(&otherRange.start, &range);
        if ((v81.start.flags & 1) == 0)
        {
          goto LABEL_43;
        }

        if ((v81.duration.flags & 1) == 0)
        {
          goto LABEL_43;
        }

        if (v81.duration.epoch)
        {
          goto LABEL_43;
        }

        if (v81.duration.value < 0)
        {
          goto LABEL_43;
        }

        range.start = v81.duration;
        OUTLINED_FUNCTION_11_9();
        if (CMTimeCompare(v26, v27))
        {
          goto LABEL_43;
        }

        *&range.start.value = *&otherRange.start.value;
        range.start.epoch = otherRange.start.epoch;
        OUTLINED_FUNCTION_11_9();
        if (CMTimeCompare(v28, v29) >= 1)
        {
          goto LABEL_43;
        }

        *&epoch = v70;
        v11 = HIDWORD(v68);
      }

      v84 = value;
      v85 = timescale;
      p_duration += 2;
      v17 = 1;
      --v19;
    }

    while (v19);
    v30 = v64;
    *(v64 + 7) = v62;
    if (*&v62 >= 0x555555555555556uLL)
    {
      *(v64 + 8) = 0;
      return -12904;
    }

    v31 = malloc_type_malloc(48 * *&v62, 0x1000040EED21634uLL);
    *(v64 + 8) = v31;
    if (!v31)
    {
      return -12904;
    }

    memcpy(v31, __src, 48 * *(v64 + 7));
    v32 = MEMORY[0x1E6960C70];
    if (*(v64 + 7) >= 1)
    {
      v33 = 0;
      do
      {
        v34 = (*(v30 + 8) + 48 * v33);
        v81 = *v34;
        *&otherRange.start.value = *&v34->start.value;
        otherRange.start.epoch = v34->start.epoch;
        range = v81;
        for (i = *&otherRange.start.value; ; i = *&otherRange.start.value)
        {
          OUTLINED_FUNCTION_11_9();
          if (!CMTimeRangeContainsTime(v35, v36))
          {
            break;
          }

          *&range.start.value = *v32;
          range.start.epoch = *(v32 + 16);
          OUTLINED_FUNCTION_9_11(*&range.start.value, v37, v38, v39, v40, v41, v42, v43, v56, *&__src, *&v60, v62, *&v64, v66, v68, v70, *&i, *(&i + 1), v75, v77, *&otherRange.start.value);
          result = VTMultiPassStorageSetDataAtTimeStamp(v44, v45, 0, 0);
          if (result)
          {
            return result;
          }

          OUTLINED_FUNCTION_9_11(v46, v47, v48, v49, v50, v51, v52, v53, v57, *&__srca, v61, v63, v65, v67, v69, v71, v73, v74, v76, v78, *&otherRange.start.value);
          result = VTMultiPassStorageGetTimeStamp(v54, v55, @"GetNextTimeStamp", &range);
          if (result)
          {
            return result;
          }

          if ((range.start.flags & 1) == 0)
          {
            break;
          }

          *&otherRange.start.value = *&range.start.value;
          otherRange.start.epoch = range.start.epoch;
          range = v81;
        }

        ++v33;
      }

      while (v33 < *(v30 + 7));
    }

    result = 0;
    *(v30 + 11) = 0;
    *(v30 + 2) = *v32;
    *(v30 + 6) = *(v32 + 16);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_3();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t VTFrameSiloCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloGetProgressOfCurrentPass_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t VTFrameSiloGetProgressOfCurrentPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloGetProgressOfCurrentPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTFrameSiloCallFunctionForEachSampleBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionPreprocessFrame(uint64_t a1, void *cf, __int128 *a3, __int128 *a4, const __CFDictionary *a5, uint64_t a6)
{
  pixelBufferOut = 0;
  if (!a1 || *(a1 + 16) || !cf || (*(a3 + 3) & 0x1D) != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v15 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  v12 = MEMORY[0x1E695E480];
  if (!*(a1 + 40) || CVPixelBufferIsCompatibleWithAttributes())
  {
    pixelBufferOut = CFRetain(cf);
    goto LABEL_15;
  }

  v13 = (a1 + 48);
  v14 = *v12;
  if (!*(a1 + 48))
  {
    v15 = CVPixelBufferPoolCreate(v14, 0, *(a1 + 40), (a1 + 48));
    if (v15)
    {
LABEL_25:
      v32 = v15;
      goto LABEL_27;
    }

    if (!*v13)
    {
      v16 = 0;
      goto LABEL_13;
    }
  }

  v15 = VTPixelTransferSessionCreate(v14, (a1 + 56));
  if (v15)
  {
    goto LABEL_25;
  }

  v16 = *v13;
LABEL_13:
  v15 = CVPixelBufferPoolCreatePixelBuffer(v14, v16, &pixelBufferOut);
  if (v15)
  {
    goto LABEL_25;
  }

  v15 = VTPixelTransferSessionTransferImage(*(a1 + 56), cf, pixelBufferOut);
  v12 = MEMORY[0x1E695E480];
  if (v15)
  {
    goto LABEL_25;
  }

LABEL_15:
  if (a5)
  {
    v17 = *MEMORY[0x1E695E4D0];
    v18 = v17 == CFDictionaryGetValue(a5, @"OnlyForLookBehind");
    v19 = v17 == CFDictionaryGetValue(a5, @"OnlyForLookAhead");
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v41 = *a3;
  v42 = *(a3 + 2);
  v39 = *a4;
  v40 = *(a4 + 2);
  if (*(a1 + 88) || (v20 = CFGetAllocator(a1), v21 = CFDictionaryCreateMutable(v20, 0, 0, 0), (*(a1 + 88) = v21) != 0))
  {
    v22 = *(a1 + 96);
    *(a1 + 96) = v22 + 1;
    if (!v19 && !v18)
    {
      v23 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00408211C625uLL);
      *v23 = v41;
      *(v23 + 2) = v42;
      *(v23 + 24) = v39;
      *(v23 + 5) = v40;
      *(v23 + 7) = a6;
      v24 = *v12;
      Count = CFArrayGetCount(*(a1 + 80));
      Mutable = CFArrayCreateMutable(v24, Count, 0);
      *(v23 + 6) = Mutable;
      v27 = *(a1 + 80);
      v43.length = CFArrayGetCount(v27);
      v43.location = 0;
      CFArrayAppendArray(Mutable, v27, v43);
      CFDictionaryAddValue(*(a1 + 88), v22, v23);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v15 = FigSignalErrorAtGM();
    if (v15)
    {
      goto LABEL_25;
    }

    v22 = 0;
  }

  v28 = *(a1 + 64);
  v29 = pixelBufferOut;
  v36 = *a3;
  v37 = *(a3 + 2);
  v34 = *a4;
  v35 = *(a4 + 2);
  v30 = *(CMBaseObjectGetVTable() + 16);
  if (*v30 >= 2uLL)
  {
    v31 = v30[12];
    if (v31)
    {
      v41 = v36;
      v42 = v37;
      v39 = v34;
      v40 = v35;
      v15 = v31(v28, v22, v29, &v41, &v39, a5);
      goto LABEL_25;
    }
  }

  v32 = 4294954514;
LABEL_27:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v32;
}

uint64_t VTPreprocessingSessionCompleteFrames(uint64_t a1)
{
  if (!a1 || *(a1 + 16))
  {
LABEL_8:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();

    return FigSignalErrorAtGM();
  }

  v2 = *(a1 + 64);
  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 < 2uLL)
  {
    return 4294954514;
  }

  v4 = v3[13];
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v2);
  if (!result)
  {
    result = *(a1 + 88);
    if (result)
    {
      if (CFDictionaryGetCount(result) < 1)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t VTEncoderPreprocessingSessionSetResolutionOutputPixelBufferAttributes(uint64_t a1, void *a2, const void *a3)
{
  IsPartOfSession = vtPreprocessingSessionEnsureResolutionIsPartOfSession(a1, a2);
  if (!IsPartOfSession)
  {
    v6 = a2[2];
    a2[2] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a2[3];
    if (v7)
    {
      CFRelease(v7);
      a2[3] = 0;
    }

    v8 = a2[5];
    if (v8)
    {
      CFRelease(v8);
      a2[5] = 0;
    }

    v9 = a2[6];
    if (v9)
    {
      CFRelease(v9);
      a2[6] = 0;
    }
  }

  return IsPartOfSession;
}

CVPixelBufferPoolRef VTEncoderPreprocessingSessionGetResolutionOutputPixelBufferPool(uint64_t a1, CVPixelBufferPoolRef *a2)
{
  if (vtPreprocessingSessionEnsureResolutionIsPartOfSession(a1, a2))
  {
    return 0;
  }

  if (!a2[3] && ((v3 = *MEMORY[0x1E695E480], VTBuildPixelBufferPools(*MEMORY[0x1E695E480], a2[2], a2[4], *a2, a2 + 3, a2 + 5)) || a2[5] && VTPixelTransferSessionCreate(v3, a2 + 6)))
  {
    return 0;
  }

  else
  {
    return a2[3];
  }
}

uint64_t VTEncoderPreprocessingSessionEmitPreprocessedFrame(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5)
{
  pixelBufferOut = 0;
  v31 = *MEMORY[0x1E6960C70];
  v32 = *(MEMORY[0x1E6960C70] + 16);
  v29 = v31;
  v30 = v32;
  IsPartOfSession = vtPreprocessingSessionEnsureResolutionIsPartOfSession(a1, a2);
  if (IsPartOfSession)
  {
    return IsPartOfSession;
  }

  v11 = *a1;
  Value = CFDictionaryGetValue(*(*a1 + 88), a3);
  if (!Value)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v17 = FigSignalErrorAtGM();
    v15 = 0;
    if (v17)
    {
      return v17;
    }

LABEL_11:
    if (a4)
    {
      v19 = 0;
      v17 = 0;
      goto LABEL_21;
    }

    if (a5)
    {
      v20 = *(a2 + 40);
      if (!v20)
      {
        v19 = CFRetain(a5);
        a4 = 0;
        v17 = 0;
        pixelBufferOut = v19;
LABEL_21:
        v23 = *(a2 + 56);
        v22 = *(a2 + 64);
        v27 = v31;
        v28 = v32;
        v25 = v29;
        v26 = v30;
        v23(v22, v15, a4, &v27, &v25, v19);
        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
        }

        return v17;
      }

      v21 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v20, &pixelBufferOut);
      if (pixelBufferOut)
      {
        v21 = VTPixelTransferSessionTransferImage(*(a2 + 48), a5, pixelBufferOut);
        a4 = v21;
        v19 = pixelBufferOut;
LABEL_19:
        v17 = v21;
        goto LABEL_21;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v21 = FigSignalErrorAtGM();
    }

    a4 = v21;
    v19 = 0;
    goto LABEL_19;
  }

  v13 = Value;
  v31 = *Value;
  v32 = *(Value + 2);
  v29 = *(Value + 24);
  v14 = *(Value + 6);
  v30 = *(Value + 5);
  v15 = *(Value + 7);
  v34.length = CFArrayGetCount(v14);
  v34.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v34, a2);
  if (FirstIndexOfValue == -1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v17 = FigSignalErrorAtGM();
  }

  else
  {
    CFArrayRemoveValueAtIndex(v13[6], FirstIndexOfValue);
    v17 = 0;
  }

  if (!CFArrayGetCount(v13[6]))
  {
    v18 = v13[6];
    if (v18)
    {
      CFRelease(v18);
    }

    free(v13);
    CFDictionaryRemoveValue(*(v11 + 88), a3);
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  return v17;
}

uint64_t VTDistributedPreprocessingGetOverlap(const void *a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  v5 = VTCreateVideoEncoderInstanceFromEncoderID(a1, *MEMORY[0x1E695E480], &cf);
  if (v5)
  {
LABEL_7:
    v9 = v5;
    goto LABEL_9;
  }

  v6 = cf;
  v7 = *(CMBaseObjectGetVTable() + 16);
  if (*v7 >= 2uLL)
  {
    v8 = v7[14];
    if (v8)
    {
      v5 = v8(v6, a2, a3);
      goto LABEL_7;
    }
  }

  v9 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t VTPreprocessingSessionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPreprocessingSessionAddResolution_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtPreprocessingSessionEnsureResolutionIsPartOfSession_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t vtPreprocessingSessionCreateProperties_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtPreprocessingSessionCreateProperties_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtMultiPassStorageCreateEmptyTable()
{
  FigSimpleMutexLock();
  v0 = FigFileForkWrite();
  if (!v0)
  {
    fig_log_get_emitter();
    v0 = FigSignalErrorAtGM();
  }

  v2 = v0;
  FigSimpleMutexUnlock();
  return v2;
}

OSStatus VTMultiPassStorageClose(VTMultiPassStorageRef multiPassStorage)
{
  if (multiPassStorage)
  {
    if (*(multiPassStorage + 32))
    {
      return -12214;
    }

    v2 = *(multiPassStorage + 9);
    if (*(multiPassStorage + 56))
    {
      FigFileForkClose();
      FigFileDeleteFile();
LABEL_47:
      *(multiPassStorage + 9) = 0;
      v20 = *(multiPassStorage + 8);
      if (v20)
      {
        CFRelease(v20);
        *(multiPassStorage + 8) = 0;
      }

      VTMultiPassStorageInvalidate(multiPassStorage);
      return 0;
    }

    if (!v2)
    {
LABEL_46:
      FigFileForkClose();
      goto LABEL_47;
    }

    FigSimpleMutexLock();
    if (*(multiPassStorage + 11) && FigFileForkWrite())
    {
      FigSimpleMutexUnlock();
      v3 = 0;
LABEL_45:
      free(v3);
      goto LABEL_46;
    }

    *(multiPassStorage + 11) = 0;
    if (*(multiPassStorage + 6))
    {
      v4 = CFGetAllocator(multiPassStorage);
      ExternalRepresentation = CFStringCreateExternalRepresentation(v4, *(multiPassStorage + 6), 0x8000100u, 0);
      Length = CFDataGetLength(ExternalRepresentation);
    }

    else
    {
      ExternalRepresentation = 0;
      Length = 0;
    }

    if (FigFileForkWrite())
    {
      goto LABEL_55;
    }

    v7 = *(multiPassStorage + 10);
    *(multiPassStorage + 13) = v7;
    *(multiPassStorage + 10) = v7 + 12;
    if (ExternalRepresentation)
    {
      CFDataGetBytePtr(ExternalRepresentation);
      if (FigFileForkWrite())
      {
        goto LABEL_55;
      }

      *(multiPassStorage + 10) += Length;
    }

    Count = CFArrayGetCount(*(multiPassStorage + 20));
    v9 = CFArrayGetCount(*(multiPassStorage + 21)) + Count;
    if (!FigFileForkWrite())
    {
      v22 = *(multiPassStorage + 10);
      *(multiPassStorage + 10) = v22 + 16;
      if (v9 >= 0x200)
      {
        v10 = 512;
      }

      else
      {
        v10 = v9;
      }

      v3 = malloc_type_malloc(36 * v10, 0x100004077774924uLL);
      if (v3)
      {
        v23 = ExternalRepresentation;
        if (v9 < 1)
        {
LABEL_39:
          if (!*(multiPassStorage + 12) || !FigFileForkWrite())
          {
            *(multiPassStorage + 12) = v22;
          }
        }

        else
        {
          v11 = 0;
          v12 = *(multiPassStorage + 20);
          while (1)
          {
            v13 = v9 - v11 >= v10 ? v10 : v9 - v11;
            if (v9 == v11)
            {
              v11 = v9;
            }

            else
            {
              v14 = v13 <= 1 ? 1 : v13;
              v15 = v14 + v11;
              v16 = v3;
              do
              {
                if (v11 >= CFArrayGetCount(*(multiPassStorage + 20)))
                {
                  v17 = CFArrayGetCount(*(multiPassStorage + 20));
                  v12 = *(multiPassStorage + 21);
                }

                else
                {
                  v17 = 0;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(v12, v11 - v17);
                *v16 = *ValueAtIndex;
                *(v16 + 2) = ValueAtIndex[2];
                *(v16 + 3) = ValueAtIndex[3];
                *(v16 + 4) = ValueAtIndex[6];
                *(v16 + 20) = *(ValueAtIndex + 4);
                *(v16 + 28) = *(ValueAtIndex + 5);
                ++v11;
                v16 += 36;
                --v14;
              }

              while (v14);
              v11 = v15;
            }

            v19 = 36 * v13;
            if (FigFileForkWrite())
            {
              break;
            }

            *(multiPassStorage + 10) += v19;
            if (v11 >= v9)
            {
              goto LABEL_39;
            }
          }
        }

        ExternalRepresentation = v23;
      }

      goto LABEL_43;
    }

LABEL_55:
    v3 = 0;
LABEL_43:
    FigSimpleMutexUnlock();
    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }

    goto LABEL_45;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtMultiPassStorageCopyStorageToMultiPassStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || *(a1 + 32) || *(a2 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_29();

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = VTMultiPassStorageCopyIdentifier(a1);
    v9 = VTMultiPassStorageSetIdentifier(a2, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    if (!v9)
    {
      range.start.value = *a3;
      v10 = *(a3 + 8);
      v11 = *(a3 + 12);
      v57 = *a3;
      v58 = *(a3 + 8);
      v12 = *(a3 + 16);
      memset(&v56, 0, sizeof(v56));
      range.start.timescale = v10;
      range.start.flags = v11;
      v13 = *(a3 + 24);
      v14 = *(a3 + 40);
      v45 = v12;
      range.start.epoch = v12;
      range.duration.epoch = v14;
      *&range.duration.value = v13;
      CMTimeRangeGetEnd(&v56, &range);
      v54 = **&MEMORY[0x1E6960C70];
      memset(&range.duration, 0, sizeof(range.duration));
      Count = CFArrayGetCount(*(a1 + 160));
      cf = 0;
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), 0);
      v59 = *ValueAtIndex;
      v18 = ValueAtIndex[3];
      v60 = ValueAtIndex[2];
      v19 = *(ValueAtIndex + 2);
      v20 = CFArrayGetValueAtIndex(*(a1 + 160), Count - 1);
      if ((v11 & 1) == 0)
      {
        v57 = v59;
        v58 = v60;
        v45 = v19;
        v11 = v18;
      }

      if ((v56.flags & 1) == 0)
      {
        v21 = *v20;
        v56.epoch = v20[2];
        *&v56.value = v21;
      }

      lhs = v56;
      rhs.value = v57;
      rhs.timescale = v58;
      rhs.flags = v11;
      rhs.epoch = v45;
      CMTimeSubtract(&v54, &lhs, &rhs);
      range.start.value = v57;
      range.start.timescale = v58;
      range.start.flags = v11;
      range.start.epoch = v45;
      v63.location = 0;
      v63.length = Count;
      v22 = CFArrayBSearchValues(*(a1 + 160), v63, &range, vtMultiPassLocationCompareTimeStampOnly, 0);
      v23 = CFArrayGetValueAtIndex(*(a1 + 160), v22);
      if (OUTLINED_FUNCTION_2_28(v23[1].n128_i64[0], *v23, v45, v47.value, *&v47.timescale, v47.epoch, v48.value, *&v48.timescale, v48.epoch, v49, *&rhs.value, rhs.epoch, v51, *&lhs.value, lhs.epoch) <= 0 && v22 < Count)
      {
        v25 = v22 + 1;
        do
        {
          memset(&lhs, 0, sizeof(lhs));
          v26 = *v23;
          lhs.epoch = v23[1].n128_i64[0];
          *&lhs.value = v26;
          v27 = v23[1].n128_u32[2];
          *&rhs.value = v26;
          rhs.epoch = lhs.epoch;
          if (VTMultiPassStorageCopyDataAtTimeStamp(a1, &rhs.value, v27, &cf))
          {
            break;
          }

          rhs = lhs;
          if (VTMultiPassStorageSetDataAtTimeStamp(a2, &rhs.value, v27, cf))
          {
            break;
          }

          if (v25 < Count)
          {
            v23 = CFArrayGetValueAtIndex(*(a1 + 160), v25);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (a4)
          {
            v28 = FigGetUpTimeNanoseconds();
            if ((v28 - UpTimeNanoseconds) >= 0x3B9ACA01)
            {
              v29 = v28;
              v48 = lhs;
              v47.value = v57;
              v47.timescale = v58;
              v47.flags = v11;
              v47.epoch = v46;
              CMTimeSubtract(&rhs, &v48, &v47);
              Seconds = CMTimeGetSeconds(&rhs);
              rhs = v54;
              v31 = (Seconds / CMTimeGetSeconds(&rhs) + *a4) / *(a4 + 8);
              UpTimeNanoseconds = v29;
              if ((*(a4 + 24))(*(a4 + 16), v31))
              {
                break;
              }
            }
          }
        }

        while (OUTLINED_FUNCTION_2_28(v23[1].n128_i64[0], *v23, v46, v47.value, *&v47.timescale, v47.epoch, v48.value, *&v48.timescale, v48.epoch, v49, *&rhs.value, rhs.epoch, v51, *&lhs.value, lhs.epoch) <= 0 && v25++ < Count);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v33 = CFArrayGetCount(*(a1 + 168));
      v56.value = 0;
      if (v33 >= 1)
      {
        v34 = v33;
        v35 = 0;
        while (1)
        {
          v36 = CFArrayGetValueAtIndex(*(a1 + 168), v35);
          v37 = *(v36 + 6);
          *&range.start.value = *v36;
          range.start.epoch = v36[2];
          v38 = VTMultiPassStorageCopyDataAtTimeStamp(a1, &range.start.value, v37, &v56);
          value = v56.value;
          if (v38)
          {
            break;
          }

          v40 = *(v36 + 6);
          *&range.start.value = *v36;
          range.start.epoch = v36[2];
          v41 = VTMultiPassStorageSetDataAtTimeStamp(a2, &range.start.value, v40, v56.value);
          value = v56.value;
          if (v41)
          {
            break;
          }

          if (v56.value)
          {
            CFRelease(v56.value);
            v56.value = 0;
          }

          if (v34 == ++v35)
          {
            goto LABEL_40;
          }
        }

        if (value)
        {
          CFRelease(value);
        }
      }

LABEL_40:
      if (a4)
      {
        v42 = *a4 + 1;
        *a4 = v42;
        v43 = v42 / *(a4 + 8);
        return (*(a4 + 24))(*(a4 + 16), v43);
      }

      else
      {
        return 0;
      }
    }

    return v9;
  }
}

uint64_t VTMultiPassStorageWriteMerged(const __CFArray *a1, const __CFURL *a2, uint64_t a3, uint64_t a4)
{
  multiPassStorageOut = 0;
  v19 = 0u;
  v20 = 0u;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"DoNotDelete", *MEMORY[0x1E695E4D0]);
    v11 = VTMultiPassStorageCreate(v9, a2, MEMORY[0x1E6960C98], Mutable, &multiPassStorageOut);
    if (!v11)
    {
      *&v19 = 0;
      *(&v19 + 1) = Count;
      *&v20 = a3;
      *(&v20 + 1) = a4;
      if (Count < 1)
      {
LABEL_13:
        VTMultiPassStorageClose(multiPassStorageOut);
        v16 = 0;
        goto LABEL_14;
      }

      v12 = 0;
      if (a4)
      {
        v13 = &v19;
      }

      else
      {
        v13 = 0;
      }

      v14 = MEMORY[0x1E6960C98];
      while (1)
      {
        multiPassStorage = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
        v11 = VTMultiPassStorageCreate(v9, ValueAtIndex, v14, Mutable, &multiPassStorage);
        if (v11)
        {
          break;
        }

        v16 = vtMultiPassStorageCopyStorageToMultiPassStorage(multiPassStorage, multiPassStorageOut, v14, v13);
        VTMultiPassStorageClose(multiPassStorage);
        if (multiPassStorage)
        {
          CFRelease(multiPassStorage);
        }

        if (v16)
        {
          goto LABEL_14;
        }

        if (Count == ++v12)
        {
          goto LABEL_13;
        }
      }
    }

    v16 = v11;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v16 = FigSignalErrorAtGM();
    Mutable = 0;
  }

LABEL_14:
  if (multiPassStorageOut)
  {
    CFRelease(multiPassStorageOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

void vtMultiPassStorageFinalize(OpaqueVTMultiPassStorage *a1)
{
  VTMultiPassStorageClose(a1);
  v2 = *(a1 + 2);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 2) = 0;
  }
}

uint64_t VTMultiPassStorageCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL VTMultiPassStorageCreate_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t VTMultiPassStorageCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyIdentifier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTMultiPassStorageCopyIdentifier_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageGetTimeStamp_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageWriteSegment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMultiPassStorageWriteSegment_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = MEMORY[0x1EEDBBB28](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

double gotLoadHelper_x8___DASContinuedProcessingTaskAssertionTag(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DuetActivityScheduler))
  {
    return dlopenHelper_DuetActivityScheduler(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_DuetActivityScheduler(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DuetActivityScheduler.framework/DuetActivityScheduler", 0);
  atomic_store(1u, &dlopenHelperFlag_DuetActivityScheduler);
  return a1;
}