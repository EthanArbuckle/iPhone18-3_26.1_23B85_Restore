uint64_t bvc_createPixelBufferAttributesDictionary(const __CFAllocator *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  valuePtr = *"v024f024ARGB ";
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v10 = 4;
      do
      {
        v11 = CFNumberCreate(v8, kCFNumberSInt32Type, p_valuePtr);
        if (!v11)
        {
          bvc_createPixelBufferAttributesDictionary_cold_1(v5, v7, &v15);
          return v15;
        }

        v12 = v11;
        CFArrayAppendValue(v7, v11);
        CFRelease(v12);
        p_valuePtr = (p_valuePtr + 4);
        --v10;
      }

      while (v10);
      CFDictionaryAddValue(v5, *MEMORY[0x1E6966130], v7);
      CFRelease(v7);
      FigGetAlignmentForIOSurfaceOutput();
      PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        *a2 = 0;
      }
    }

    else
    {
      bvc_createPixelBufferAttributesDictionary_cold_2(&v15);
      PixelBufferAttributesWithIOSurfaceSupport = v15;
    }

    CFRelease(v5);
  }

  else
  {
    bvc_createPixelBufferAttributesDictionary_cold_3(&v15);
    return v15;
  }

  return PixelBufferAttributesWithIOSurfaceSupport;
}

uint64_t bvc_CFDictionarySetInt(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
    v6 = 0;
  }

  else
  {
    bvc_CFDictionarySetInt_cold_1(&v9);
    v6 = v9;
  }

  CFRelease(v5);
  return v6;
}

uint64_t basicVideoCompositor_updateDispatchQueuesClientPidAndWorkerThreadPriority()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[32])
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  if (DerivedStorage[33])
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  if (DerivedStorage[34])
  {
    FigDispatchQueueSetPriorityAndClientPID();
  }

  result = DerivedStorage[35];
  if (result)
  {

    return FigDispatchQueueSetPriorityAndClientPID();
  }

  return result;
}

uint64_t basicVideoCompositor_RenderFrame(const void *a1, int a2, uint64_t a3, CVBufferRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9, uint64_t a10)
{
  v348 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  v15 = *MEMORY[0x1E695EFD0];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v336.a = *MEMORY[0x1E695EFD0];
  *&v336.c = v16;
  v17 = *(MEMORY[0x1E695EFD0] + 32);
  *&v336.tx = v17;
  v332 = 0;
  v333 = &v332;
  v334 = 0x2000000000;
  v335 = 0;
  v328 = 0;
  v329 = &v328;
  v330 = 0x2000000000;
  v331 = 0;
  if (!DerivedStorage)
  {
    basicVideoCompositor_RenderFrame_cold_11(&v345);
LABEL_372:
    v239 = 0;
    v256 = 0;
    v240 = 0;
    v257 = 0;
    v258 = 0;
    v30 = 0;
LABEL_379:
    a_low = LODWORD(v345.a);
    goto LABEL_348;
  }

  if (!*(DerivedStorage + 296))
  {
    basicVideoCompositor_RenderFrame_cold_10(&v345);
    goto LABEL_372;
  }

  if (*DerivedStorage == 0.0 || *(DerivedStorage + 8) == 0.0)
  {
    fig_log_get_emitter();
    a_low = FigSignalErrorAtGM();
    goto LABEL_361;
  }

  *v295 = v17;
  v299 = v16;
  v302 = v15;
  if (*(DerivedStorage + 96))
  {
    v18 = CMBaseObjectGetDerivedStorage();
    v20 = (v18 + 160);
    v19 = *(v18 + 160);
    if (v19)
    {
      CFRelease(v19);
      *v20 = 0;
    }

    v345.a = 0.0;
    t1.a = 0.0;
    v21 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(*(v18 + 32), *(v18 + 40), &v345, &t1, v18 + 112, v20, *v18, *(v18 + 8), *(v18 + 80));
    if (v21)
    {
      a_low = v21;
      v239 = 0;
      v256 = 0;
      v240 = 0;
      v257 = 0;
      v258 = 0;
      v30 = 0;
      goto LABEL_348;
    }

    a = t1.a;
    *(v18 + 16) = v345.a;
    *(v18 + 24) = a;
    *(v18 + 168) = 875704438;
    *(v14 + 96) = 0;
  }

  v23 = 0.0;
  cf = *MEMORY[0x1E695E4D0];
  Value = CFDictionaryGetValue(a8, @"ContainsTweening");
  if (cf == Value)
  {
    *&v345.a = *a9;
    v345.c = *(a9 + 16);
    FigVideoCompositionInstructionGetNormalizedTime(a8, &v345);
    v23 = v24;
  }

  v25 = CFDictionaryGetValue(a8, @"LayerStack");
  v309 = a1;
  v288 = a8;
  if (v25 && (v26 = v25, v27 = CFArrayGetTypeID(), v27 == CFGetTypeID(v26)))
  {
    v28 = CFArrayGetCount(v26);
    v29 = malloc_type_calloc(v28, 0x160uLL, 0x1020040E645271BuLL);
    v30 = v29;
    if (!v29)
    {
      v239 = 0;
      v256 = 0;
      v240 = 0;
      v257 = 0;
      v258 = 0;
      a_low = 4294954510;
      goto LABEL_348;
    }

    if (v28 >= 1)
    {
      v291 = v28;
      v31 = 0;
      count = 0;
      v32 = v29;
      v321 = v29;
      while (1)
      {
        LODWORD(valuePtr.a) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v26, v31);
        if (!ValueAtIndex || (v34 = ValueAtIndex, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v34)))
        {
          basicVideoCompositor_RenderFrame_cold_1(&v345);
          goto LABEL_345;
        }

        v36 = CFDictionaryGetValue(v34, @"SourceVideoTrackID");
        if (!v36 || (v37 = v36, v38 = CFNumberGetTypeID(), v38 != CFGetTypeID(v37)))
        {
          basicVideoCompositor_RenderFrame_cold_2(&v345);
          goto LABEL_345;
        }

        CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr);
        if (a2 < 1)
        {
LABEL_344:
          basicVideoCompositor_RenderFrame_cold_3(&v345);
          goto LABEL_345;
        }

        v39 = 0;
        while (*(a3 + 4 * v39) != LODWORD(valuePtr.a))
        {
          if (a2 == ++v39)
          {
            goto LABEL_344;
          }
        }

        v40 = a4[v39];
        *v32 = v40;
        *(v32 + 8) = v39;
        if (!v40)
        {
          v30 = v321;
          goto LABEL_63;
        }

        *(v32 + 32) = v302;
        *(v32 + 48) = v299;
        *(v32 + 64) = *v295;
        *(v32 + 24) = 1065353216;
        v41 = *(MEMORY[0x1E695F040] + 16);
        *(v32 + 128) = *MEMORY[0x1E695F040];
        *(v32 + 144) = v41;
        *(v32 + 16) = v31;
        if (cf != Value || (v42 = CFDictionaryGetValue(v34, @"TweenedAffineMatrix")) == 0)
        {
LABEL_73:
          v101 = 0;
          goto LABEL_74;
        }

        v43 = v42;
        v44 = CFArrayGetCount(v42);
        if (v44 < 4 || (v45 = v44, (v44 & 1) != 0))
        {
          fig_log_get_emitter();
          v46 = FigSignalErrorAtGM();
          if (!v46)
          {
            goto LABEL_32;
          }

          a_low = v46;
          goto LABEL_346;
        }

        v97 = 0.0;
        v98 = 1;
        v99 = 0.0;
        while (1)
        {
          t2.a = 0.0;
          v342.a = 0.0;
          memset(&v345, 0, sizeof(v345));
          v100 = CFArrayGetValueAtIndex(v43, v98);
          FigGetCGAffineTransformFrom3x2MatrixArray(v100, &v345.a);
          t1 = v345;
          FigVideoCompositionInstructionCGAffineTransformDecompose(&t1, 1, 0, 0, &t2.a, &v342.a, 0);
          if (v99 == 0.0)
          {
            v99 = t2.a;
          }

          else if (vabdd_f64(v99, t2.a) > 0.001)
          {
            goto LABEL_75;
          }

          if (v97 != 0.0)
          {
            break;
          }

          v97 = v342.a;
LABEL_72:
          v98 += 2;
          if (v98 >= v45)
          {
            goto LABEL_73;
          }
        }

        if (vabdd_f64(v97, v342.a) <= 0.001)
        {
          goto LABEL_72;
        }

LABEL_75:
        v101 = 1;
LABEL_74:
        *(v32 + 329) = v101;
LABEL_32:
        v47 = CFDictionaryGetValue(v34, @"ConstantAffineMatrix");
        if (v47)
        {
          v48 = v47;
          v49 = CFArrayGetTypeID();
          if (v49 == CFGetTypeID(v48))
          {
            FigGetCGAffineTransformFrom3x2MatrixArray(v48, &v345.a);
            v51 = *&v345.c;
            v50 = *&v345.tx;
            *(v32 + 32) = *&v345.a;
            *(v32 + 48) = v51;
            *(v32 + 64) = v50;
            goto LABEL_35;
          }

          basicVideoCompositor_RenderFrame_cold_4(&v345);
LABEL_345:
          a_low = LODWORD(v345.a);
LABEL_346:
          v30 = v321;
LABEL_347:
          v239 = 0;
          v256 = 0;
          v240 = 0;
          v257 = 0;
          v258 = 0;
          goto LABEL_348;
        }

LABEL_35:
        v52 = CFDictionaryGetValue(v34, @"ConstantOpacity");
        if (v52)
        {
          v53 = v52;
          v54 = CFNumberGetTypeID();
          if (v54 == CFGetTypeID(v53))
          {
            LODWORD(v345.a) = 0;
            CFNumberGetValue(v53, kCFNumberFloat32Type, &v345);
            *(v32 + 24) = LODWORD(v345.a);
          }
        }

        v55 = CFDictionaryGetValue(v34, @"ConstantCropRectangle");
        if (v55)
        {
          v56 = v55;
          v57 = CFDictionaryGetTypeID();
          if (v57 == CFGetTypeID(v56) && !CGRectMakeWithDictionaryRepresentation(v56, (v32 + 128)))
          {
            basicVideoCompositor_RenderFrame_cold_5(&v345);
            goto LABEL_345;
          }
        }

        if (cf == Value)
        {
          v58 = CFDictionaryGetValue(v34, @"TweenedAffineMatrix");
          if (v58 && (v59 = v58, v60 = CFArrayGetTypeID(), v60 == CFGetTypeID(v59)))
          {
            FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(v59, &v345, v23);
            v62 = *&v345.c;
            v61 = *&v345.tx;
            *(v32 + 32) = *&v345.a;
            *(v32 + 48) = v62;
            *(v32 + 64) = v61;
            v63 = 1;
          }

          else
          {
            v63 = 0;
          }

          v65 = CFDictionaryGetValue(v34, @"TweenedOpacity");
          if (v65)
          {
            v66 = v65;
            v67 = CFArrayGetTypeID();
            if (v67 == CFGetTypeID(v66))
            {
              *(v32 + 24) = FigVideoCompositionInstructionEvaluateTweenedOpacity(v66, v23);
            }
          }

          v68 = CFDictionaryGetValue(v34, @"TweenedCropRectangle");
          if (v68)
          {
            v70 = v68;
            v71 = CFArrayGetTypeID();
            v30 = v321;
            if (v71 == CFGetTypeID(v70))
            {
              FigVideoCompositionInstructionEvaluateTweenedCropRectangle(v70, v23);
              *(v32 + 128) = v72;
              *(v32 + 136) = v73;
              *(v32 + 144) = v74;
              *(v32 + 152) = v75;
              v69 = 1;
            }

            else
            {
              v69 = 0;
            }
          }

          else
          {
            v69 = 0;
            v30 = v321;
          }

          v64 = v63 | v69;
        }

        else
        {
          v64 = 0;
          v30 = v321;
        }

        *(v32 + 328) = v64;
        updated = bvc_updateSourcebufferCharacteristics(v32);
        if (updated)
        {
          goto LABEL_373;
        }

        v77 = *(v32 + 184);
        v78 = *(v32 + 192);
        v79 = *(v32 + 48);
        *&t1.a = *(v32 + 32);
        *&t1.c = v79;
        *&t1.tx = *(v32 + 64);
        CGAffineTransformScale(&v345, &t1, v77 / v78, 1.0);
        v81 = *&v345.c;
        v80 = *&v345.tx;
        *(v32 + 32) = *&v345.a;
        *(v32 + 48) = v81;
        *(v32 + 64) = v80;
        *&v80 = -*(v32 + 232);
        v82 = -*(v32 + 240);
        v83 = *(v32 + 48);
        *&t1.a = *(v32 + 32);
        *&t1.c = v83;
        *&t1.tx = *(v32 + 64);
        CGAffineTransformTranslate(&v345, &t1, *&v80, v82);
        v85 = *&v345.c;
        v84 = *&v345.tx;
        *(v32 + 32) = *&v345.a;
        *(v32 + 48) = v85;
        *(v32 + 64) = v84;
        CGAffineTransformMakeScale(&v336, *(v14 + 80), *(v14 + 80));
        v86 = *(v32 + 32);
        v87 = *(v32 + 64);
        *&t1.c = *(v32 + 48);
        *&t1.tx = v87;
        t2 = v336;
        *&t1.a = v86;
        CGAffineTransformConcat(&v345, &t1, &t2);
        v89 = *&v345.c;
        v88 = *&v345.tx;
        *(v32 + 32) = *&v345.a;
        *(v32 + 48) = v89;
        *(v32 + 64) = v88;
        v90 = *(v32 + 32);
        v91 = *(v32 + 64);
        *&t1.c = *(v32 + 48);
        *&t1.tx = v91;
        v92 = *(v14 + 128);
        *&t2.a = *(v14 + 112);
        *&t2.c = v92;
        *&t2.tx = *(v14 + 144);
        *&t1.a = v90;
        CGAffineTransformConcat(&v345, &t1, &t2);
        v94 = *&v345.c;
        v93 = *&v345.tx;
        *(v32 + 32) = *&v345.a;
        *(v32 + 48) = v94;
        *(v32 + 64) = v93;
        v95 = *(v32 + 24);
        v96 = 0.0;
        if (v95 <= 0.0 || (v96 = 1.0, v95 >= 1.0))
        {
          *(v32 + 24) = v96;
        }

        updated = bvc_computeScaledTransformAndTransformedRect(*(v14 + 16), *(v14 + 24), *(v14 + 160), v32);
        if (updated)
        {
LABEL_373:
          a_low = updated;
          goto LABEL_347;
        }

        ++count;
        v32 += 352;
LABEL_63:
        if (++v31 == v291)
        {
          v283 = count;
          v28 = v291;
          goto LABEL_78;
        }
      }
    }

    v283 = 0;
  }

  else
  {
    v28 = 0;
    v283 = 0;
    v30 = 0;
  }

LABEL_78:
  if (*(v14 + 176) != v28)
  {
    bvc_releaseLayerArrays();
    v103 = CMBaseObjectGetDerivedStorage();
    v103[22] = v28;
    v104 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL);
    v103[23] = v104;
    if (!v104 || (v105 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v103[24] = v105) == 0) || (v106 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v103[25] = v106) == 0) || (v107 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v103[26] = v107) == 0) || (v108 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL), (v103[27] = v108) == 0) || (v109 = malloc_type_calloc(v28, 0x20uLL, 0x1000040E0EAB150uLL), (v103[28] = v109) == 0) || (v110 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v103[29] = v110) == 0) || (v111 = malloc_type_calloc(v28, 8uLL, 0x2004093837F09uLL), (v103[30] = v111) == 0))
    {
      if (!basicVideoCompositor_RenderFrame_cold_6())
      {
        goto LABEL_378;
      }
    }
  }

  counta = v283;
  v322 = v30;
  if (v283 >= 1)
  {
    v112 = 0;
    v290 = *MEMORY[0x1E6965EF8];
    v286 = *(MEMORY[0x1E695F058] + 8);
    v287 = *MEMORY[0x1E695F058];
    v284 = *(MEMORY[0x1E695F058] + 24);
    v285 = *(MEMORY[0x1E695F058] + 16);
    v113 = v283;
    while (1)
    {
      v114 = &v30[v112];
      v115 = *&v30[v112];
      if (!v115)
      {
        goto LABEL_90;
      }

      theArray = *(v114 + 329);
      v116 = *(v114 + 328);
      v289 = *(v14 + 80);
      v307 = *(v14 + 160);
      valuePtr = *(v114 + 32);
      v118 = *(v114 + 264);
      v117 = *(v114 + 272);
      v120 = *(v114 + 280);
      v119 = *(v114 + 288);
      v121 = *(v114 + 200);
      v122 = *(v114 + 208);
      v123 = *(v114 + 216);
      v124 = *(v114 + 224);
      v303 = *(v14 + 16);
      v300 = *(v14 + 24);
      v345 = valuePtr;
      v341 = 0;
      memset(&r2, 0, sizeof(r2));
      v339 = 0.0;
      v338 = 0.0;
      v337 = 0.0;
      Width = CVPixelBufferGetWidth(v115);
      Height = CVPixelBufferGetHeight(v115);
      cfa = CVBufferCopyAttachment(v115, v290, 0);
      FigVideoCompositorUtilityGetPixelAspectRatio(cfa, &v341 + 1, &v341);
      v127 = SHIDWORD(v341);
      v296 = v341;
      if (v116)
      {
        v135 = Width;
        v136 = Height;
        v292 = 0.0;
        key = 0.0;
        v140 = v341;
        v139 = SHIDWORD(v341);
      }

      else
      {
        t2 = v345;
        CGAffineTransformInvert(&t1, &t2);
        v349.origin.x = v121;
        v349.origin.y = v122;
        v349.size.width = v123;
        v349.size.height = v124;
        v350 = CGRectApplyAffineTransform(v349, &t1);
        v363.origin.x = v118;
        v363.origin.y = v117;
        v363.size.width = v120;
        v363.size.height = v119;
        v351 = CGRectIntersection(v350, v363);
        v352 = CGRectStandardize(v351);
        x = v352.origin.x;
        y = v352.origin.y;
        v130 = v352.size.width;
        v131 = v352.size.height;
        v132 = (CVPixelBufferGetPixelFormatType(v115) - 875704422) & 0xFFFFFFEF;
        v353.origin.x = x;
        v353.origin.y = y;
        v353.size.width = v130;
        v353.size.height = v131;
        v354 = CGRectIntegral(v353);
        v133 = v354.origin.x;
        v134 = v354.origin.y;
        v135 = v354.size.width;
        v136 = v354.size.height;
        if (!v132)
        {
          if (v354.origin.x)
          {
            v133 = v354.origin.x + -1.0;
            v137 = v354.size.width + 1.0;
          }

          else
          {
            v137 = v354.size.width;
          }

          if (v354.origin.y)
          {
            v134 = v354.origin.y + -1.0;
            v138 = v354.size.height + 1.0;
          }

          else
          {
            v138 = v354.size.height;
          }

          if (v137)
          {
            v135 = v137 + 1.0;
          }

          else
          {
            v135 = v137;
          }

          if (v138)
          {
            v136 = v138 + 1.0;
          }

          else
          {
            v136 = v138;
          }
        }

        v139 = v127;
        v355.origin.x = v118;
        v355.origin.y = v117;
        v355.size.width = v120;
        v355.size.height = v119;
        v364.origin.x = v133;
        v364.origin.y = v134;
        v364.size.width = v135;
        v364.size.height = v136;
        v356 = CGRectIntersection(v355, v364);
        v120 = v356.size.width;
        v119 = v356.size.height;
        v118 = v356.origin.x - v133;
        v117 = v356.origin.y - v134;
        t2 = v345;
        v292 = v133;
        key = v134;
        CGAffineTransformTranslate(&t1, &t2, v133, v134);
        v345 = t1;
        Width = v135;
        Height = v136;
        v140 = v296;
      }

      if (theArray)
      {
        t2 = v345;
        CGAffineTransformScale(&t1, &t2, (1.0 / v289), (1.0 / v289));
        v345 = t1;
        v146 = v289;
        v339 = v289;
        v338 = v289;
        v145 = v289;
      }

      else
      {
        t1 = v345;
        FigVideoCompositionInstructionCGAffineTransformDecompose(&t1, 0, 0, &v345, &v339, &v338, 0);
        b = 0.0;
        v142 = 0.0;
        if (fabs(v345.a) >= 0.000001)
        {
          v142 = 1.0;
          if (fabs(v345.a + -1.0) >= 0.000001)
          {
            v142 = v345.a;
            if (fabs(v345.a + 1.0) < 0.000001)
            {
              v142 = -1.0;
            }
          }
        }

        v345.a = v142;
        if (fabs(v345.b) >= 0.000001)
        {
          b = 1.0;
          if (fabs(v345.b + -1.0) >= 0.000001)
          {
            b = v345.b;
            if (fabs(v345.b + 1.0) < 0.000001)
            {
              b = -1.0;
            }
          }
        }

        v345.b = b;
        d = 0.0;
        c = 0.0;
        if (fabs(v345.c) >= 0.000001)
        {
          c = 1.0;
          if (fabs(v345.c + -1.0) >= 0.000001)
          {
            c = v345.c;
            if (fabs(v345.c + 1.0) < 0.000001)
            {
              c = -1.0;
            }
          }
        }

        v345.c = c;
        if (fabs(v345.d) >= 0.000001)
        {
          d = 1.0;
          if (fabs(v345.d + -1.0) >= 0.000001)
          {
            d = v345.d;
            if (fabs(v345.d + 1.0) < 0.000001)
            {
              d = -1.0;
            }
          }
        }

        v345.d = d;
        v145 = v339;
        v146 = v338;
      }

      if (fabs(v145 + -1.0) > 0.00001 || fabs(v146 + -1.0) > 0.00001)
      {
        v147 = v145;
        Width = (v147 * v135 + 1.0) & 0xFFFFFFFFFFFFFFFELL;
        v148 = v146;
        Height = (v148 * v136 + 1.0) & 0xFFFFFFFFFFFFFFFELL;
        CGAffineTransformMakeScale(&t1, Width / v135, Height / v136);
        t2 = t1;
        v357.origin.x = v118;
        v357.origin.y = v117;
        v357.size.width = v120;
        v357.size.height = v119;
        v358 = CGRectApplyAffineTransform(v357, &t2);
        v118 = v358.origin.x;
        v117 = v358.origin.y;
        v120 = v358.size.width;
        v119 = v358.size.height;
        v139 = (v135 * Height * v139);
        v140 = (v136 * Width * v140);
      }

      if (!theArray)
      {
        break;
      }

      v155 = v140;
LABEL_180:
      bvc_getCleanApertureRect(v307, v303, v300, &r2.origin.x);
      v165 = v164;
      if (!v164)
      {
        t1 = v345;
        v359.origin.x = v118;
        v359.origin.y = v117;
        v359.size.width = v120;
        v359.size.height = v119;
        v360 = CGRectApplyAffineTransform(v359, &t1);
        v361 = CGRectIntersection(v360, r2);
        v362 = CGRectStandardize(v361);
        v167 = *&v345.c;
        v166 = *&v345.tx;
        *(v114 + 80) = *&v345.a;
        *(v114 + 96) = v167;
        *(v114 + 160) = Width;
        v168 = &v322[v112];
        *(v168 + 21) = Height;
        *(v114 + 296) = v292;
        *(v168 + 38) = key;
        *(v168 + 39) = v135;
        *(v168 + 40) = v136;
        v169 = v337;
        *(v114 + 112) = v166;
        *(v114 + 176) = v169;
        *(v114 + 184) = v139;
        *(v168 + 24) = v155;
        *(v114 + 264) = v118;
        *(v114 + 272) = v117;
        *(v114 + 280) = v120;
        *(v114 + 288) = v119;
        *(v114 + 200) = v362;
      }

      if (cfa)
      {
        CFRelease(cfa);
      }

      v30 = v322;
      if (v165)
      {
        v170 = *(v14 + 160);
        v171 = *(v14 + 16);
        v172 = *(v14 + 24);
        v173 = bvc_updateSourcebufferCharacteristics(v114);
        if (v173)
        {
          a_low = v173;
          v239 = 0;
          v256 = 0;
          v240 = 0;
          v257 = 0;
          v258 = 0;
          v30 = v322;
          goto LABEL_348;
        }

        updated = bvc_computeScaledTransformAndTransformedRect(v171, v172, v170, v114);
        v30 = v322;
        if (updated)
        {
          goto LABEL_373;
        }
      }

LABEL_90:
      v112 += 352;
      if (!--v113)
      {
        goto LABEL_190;
      }
    }

    t2 = v345;
    memset(&t1, 0, sizeof(t1));
    FigVideoCompositionInstructionCGAffineTransformDecompose(&t2, 0, 1, &t1, 0, 0, &v337);
    v149 = fmod(v337 * 57.2957795 + 360.0, 360.0);
    v150 = 0.0;
    if (fabs(v149) < 0.001)
    {
LABEL_132:
      v337 = v150;
      v151 = v150 == 90.0;
      v152 = v150 == 270.0;
      if (v150 != 270.0 && v150 != 90.0 && v150 != 180.0)
      {
        v337 = 0.0;
        v153 = v119;
        v119 = v120;
        v154 = v117;
        v117 = v118;
        v155 = v140;
        v156 = Height;
        Height = Width;
LABEL_179:
        Width = Height;
        v118 = v117;
        v120 = v119;
        v119 = v153;
        v117 = v154;
        Height = v156;
        goto LABEL_180;
      }

LABEL_143:
      v157 = 0.0;
      v158 = 0.0;
      if (fabs(t1.a) >= 0.000001)
      {
        v158 = 1.0;
        if (fabs(t1.a + -1.0) >= 0.000001)
        {
          v158 = t1.a;
          if (fabs(t1.a + 1.0) < 0.000001)
          {
            v158 = -1.0;
          }
        }
      }

      v345.a = v158;
      if (fabs(t1.b) >= 0.000001)
      {
        v157 = 1.0;
        if (fabs(t1.b + -1.0) >= 0.000001)
        {
          v157 = t1.b;
          if (fabs(t1.b + 1.0) < 0.000001)
          {
            v157 = -1.0;
          }
        }
      }

      v345.b = v157;
      v159 = 0.0;
      v160 = 0.0;
      if (fabs(t1.c) >= 0.000001)
      {
        v160 = 1.0;
        if (fabs(t1.c + -1.0) >= 0.000001)
        {
          v160 = t1.c;
          if (fabs(t1.c + 1.0) < 0.000001)
          {
            v160 = -1.0;
          }
        }
      }

      v345.c = v160;
      if (fabs(t1.d) >= 0.000001)
      {
        v159 = 1.0;
        if (fabs(t1.d + -1.0) >= 0.000001)
        {
          v159 = t1.d;
          if (fabs(t1.d + 1.0) < 0.000001)
          {
            v159 = -1.0;
          }
        }
      }

      v345.d = v159;
      v161 = v150;
      if (v150 > 179)
      {
        if (v161 != 180)
        {
          if (v161 == 270)
          {
            v154 = Width - v120 - v118;
            v153 = v120;
            goto LABEL_169;
          }

          goto LABEL_166;
        }

        v154 = Height - v119 - v117;
        v117 = Width - v120 - v118;
        v153 = v119;
        v119 = v120;
      }

      else
      {
        if (v161)
        {
          if (v161 == 90)
          {
            v117 = Height - v119 - v117;
            v153 = v120;
            v154 = v118;
            goto LABEL_169;
          }

LABEL_166:
          v153 = *&v284;
          v119 = v285;
          v154 = *&v286;
          v117 = *&v287;
          goto LABEL_169;
        }

        v153 = v119;
        v119 = v120;
        v154 = v117;
        v117 = v118;
      }

LABEL_169:
      if (v152 || v151)
      {
        v155 = v139;
        v139 = v140;
        v156 = Width;
      }

      else
      {
        v155 = v140;
        v156 = Height;
        Height = Width;
      }

      switch(v161)
      {
        case 270:
          v163 = -v156;
          v342 = v345;
          v162 = 0.0;
          break;
        case 180:
          v162 = -Height;
          v163 = -v156;
          v342 = v345;
          break;
        case 90:
          v162 = -Height;
          v342 = v345;
          v163 = 0.0;
          break;
        default:
          goto LABEL_179;
      }

      CGAffineTransformTranslate(&t2, &v342, v162, v163);
      v345 = t2;
      goto LABEL_179;
    }

    v150 = 90.0;
    if (fabs(v149 + -90.0) >= 0.001)
    {
      if (fabs(v149 + -180.0) >= 0.001)
      {
        if (fabs(v149 + -270.0) >= 0.001)
        {
          v150 = v149;
          if (fabs(v149 + -360.0) < 0.001)
          {
            v150 = 0.0;
          }

          goto LABEL_132;
        }

        v150 = 270.0;
      }

      else
      {
        v150 = 180.0;
      }
    }

    v337 = v150;
    v151 = v150 == 90.0;
    v152 = v150 == 270.0;
    goto LABEL_143;
  }

LABEL_190:
  v174 = v333;
  v175 = CMBaseObjectGetDerivedStorage();
  v176 = counta;
  v177 = malloc_type_calloc(counta, 8uLL, 0x100004000313F17uLL);
  v308 = v177;
  if (!v177)
  {
    if (basicVideoCompositor_RenderFrame_cold_7())
    {
      v182 = 0;
      v301 = 1;
      goto LABEL_254;
    }

LABEL_378:
    v239 = 0;
    v256 = 0;
    v240 = 0;
    v257 = 0;
    v258 = 0;
    goto LABEL_379;
  }

  if (counta < 1)
  {
    v182 = 0;
    v183 = 3;
    v301 = 1;
    goto LABEL_253;
  }

  v178 = v177;
  v304 = counta - 1;
  v179 = 0;
  v180 = v30 + 160;
  while (1)
  {
    v181 = *(v180 - 34);
    if (v181 != 0.0)
    {
      break;
    }

    ++v179;
    v180 += 352;
    if (counta == v179)
    {
      goto LABEL_207;
    }
  }

  if (v181 == 1.0)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(v180 - 20));
    v185 = PixelFormatType == 846624121 || PixelFormatType == 875704438;
    if (v185 || PixelFormatType == 875704422)
    {
      v187 = *(v180 - 5);
      v188 = *(v180 - 3);
      *&v345.c = *(v180 - 4);
      *&v345.tx = v188;
      *&v345.a = v187;
      if (CGAffineTransformIsIdentity(&v345) && bvc_doesPixelBufferFillCanvasExactly(*v180, *(v180 + 1), *(v175 + 16), *(v175 + 24), *(v175 + 160), *(v180 + 13), *(v180 + 14), *(v180 + 15), *(v180 + 16)))
      {
        v301 = 0;
        *v178 = v179;
        v182 = 1;
        v183 = 1;
        goto LABEL_253;
      }
    }
  }

LABEL_207:
  v297 = v174;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v192 = v30;
  while (1)
  {
    v193 = *(v192 + 6);
    if (v193 != 0.0)
    {
      break;
    }

    v194 = v191;
    v195 = v190;
LABEL_211:
    ++v189;
    v192 += 352;
    v190 = v195;
    v191 = v194;
    if (counta == v189)
    {
      goto LABEL_212;
    }
  }

  v194 = v189;
  v195 = v192;
  if (!v190)
  {
    goto LABEL_211;
  }

  if (v193 == 1.0)
  {
    v273 = CVPixelBufferGetPixelFormatType(*v192);
    v274 = v273 == 846624121 || v273 == 875704438;
    if (v274 || v273 == 875704422)
    {
      v276 = *(v190 + 6);
      *&v345.a = *(v190 + 5);
      *&v345.c = v276;
      *&v345.tx = *(v190 + 7);
      if (CGAffineTransformIsIdentity(&v345))
      {
        v277 = *(v192 + 6);
        *&v345.a = *(v192 + 5);
        *&v345.c = v277;
        *&v345.tx = *(v192 + 7);
        if (CGAffineTransformIsIdentity(&v345))
        {
          v278 = CVPixelBufferGetWidth(*v190);
          v365.size.height = CVPixelBufferGetHeight(*v190);
          v365.origin.x = 0.0;
          v365.origin.y = 0.0;
          v365.size.width = v278;
          if (CGRectContainsRect(*(v190 + 296), v365))
          {
            v279 = CVPixelBufferGetWidth(*v192);
            v366.size.height = CVPixelBufferGetHeight(*v192);
            v366.origin.x = 0.0;
            v366.origin.y = 0.0;
            v366.size.width = v279;
            if (CGRectContainsRect(*(v192 + 296), v366) && bvc_doesPixelBufferFillCanvasExactly(*(v190 + 20), *(v190 + 21), *(v175 + 16), *(v175 + 24), *(v175 + 160), *(v190 + 33), *(v190 + 34), *(v190 + 35), *(v190 + 36)) && bvc_doesPixelBufferFillCanvasExactly(*(v192 + 20), *(v192 + 21), *(v175 + 16), *(v175 + 24), *(v175 + 160), *(v192 + 33), *(v192 + 34), *(v192 + 35), *(v192 + 36)))
            {
              v301 = 0;
              *v178 = v191;
              v178[1] = v189;
              v182 = 2;
              v183 = 2;
              goto LABEL_252;
            }
          }
        }
      }
    }
  }

LABEL_212:
  v196 = &v30[352 * counta];
  v301 = 1;
  cfb = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v197 = counta - 1;
  do
  {
    v198 = v196;
    v196 -= 44;
    if (((CVPixelBufferGetPixelFormatType(*v196) - 875704422) & 0xFFFFFFEF) == 0)
    {
      *(v198 - 12) = vandq_s8(*(v198 - 12), cfb);
    }

    if (*(v198 - 82) == 1.0)
    {
      v199 = CVPixelBufferGetPixelFormatType(*v196);
      v200 = v199 == 846624121 || v199 == 875704438;
      if (v200 || v199 == 875704422)
      {
        v202 = *(v175 + 160);
        v203 = *(v198 - 11);
        v204 = *(v198 - 10);
        v205 = *(v198 - 9);
        v206 = *(v198 - 8);
        v207 = *(v175 + 16);
        v208 = *(v175 + 24);
        v209 = *(v198 - 17);
        v210 = *(v198 - 15);
        *&v342.c = *(v198 - 16);
        *&v342.tx = v210;
        *&v342.a = v209;
        memset(&valuePtr, 0, 32);
        v211 = *(v198 - 17);
        v212 = *(v198 - 15);
        *&t1.c = *(v198 - 16);
        *&t1.tx = v212;
        *&t1.a = v211;
        if (BVCUtilityIsAffineTransformInvertible(&t1.a))
        {
          bvc_getCleanApertureRect(v202, v207, v208, &valuePtr.a);
          if (!v213)
          {
            t1 = v342;
            if (BVCUtilityIsAffineTransformInvertible(&t1.a))
            {
              t2 = v342;
              CGAffineTransformInvert(&t1, &t2);
              v214 = 0;
              v345.a = t1.tx + t1.c * valuePtr.b + t1.a * valuePtr.a;
              v345.b = t1.ty + t1.d * valuePtr.b + t1.b * valuePtr.a;
              v215 = t1.c * (valuePtr.b + valuePtr.d);
              v216 = t1.d * (valuePtr.b + valuePtr.d);
              v345.c = t1.tx + v215 + t1.a * valuePtr.a;
              v345.d = t1.ty + v216 + t1.b * valuePtr.a;
              v345.tx = t1.tx + v215 + t1.a * (valuePtr.a + valuePtr.c);
              v345.ty = t1.ty + v216 + t1.b * (valuePtr.a + valuePtr.c);
              v346 = t1.tx + t1.c * valuePtr.b + t1.a * (valuePtr.a + valuePtr.c);
              v347 = t1.ty + t1.d * valuePtr.b + t1.b * (valuePtr.a + valuePtr.c);
              while (1)
              {
                v217 = *(&v345.a + v214);
                v218 = v217 >= v203 && v217 <= v203 + v205;
                if (!v218)
                {
                  break;
                }

                v219 = *(&v345.b + v214);
                if (v219 < v204 || v219 > v204 + v206)
                {
                  break;
                }

                v214 += 16;
                if (v214 == 64)
                {
                  v301 = 0;
                  ++*(v175 + 372);
                  v304 = v197;
                  break;
                }
              }
            }
          }
        }
      }
    }

    v218 = v197-- <= 0;
  }

  while (!v218);
  if (v304 < 0)
  {
    v182 = 0;
    v183 = 3;
    v30 = v322;
    v176 = counta;
  }

  else
  {
    v182 = 0;
    v221 = 0;
    v30 = v322;
    v222 = v322 + 224;
    v176 = counta;
    do
    {
      if (*(v222 - 50) != 0.0)
      {
        v223 = *(v222 - 9);
        v224 = *(v222 - 7);
        *&v345.c = *(v222 - 8);
        *&v345.tx = v224;
        *&v345.a = v223;
        if (BVCUtilityIsAffineTransformInvertible(&v345.a) && !CGRectIsEmpty(*(v222 - 24)))
        {
          v308[v182++] = v221;
        }
      }

      ++v221;
      v222 += 352;
    }

    while (v304 + 1 != v221);
    v183 = 3;
  }

LABEL_252:
  v174 = v297;
LABEL_253:
  *(v174 + 6) = v183;
LABEL_254:
  if (v176 >= 1)
  {
    v225 = &v30[352 * v176 - 352];
    goto LABEL_257;
  }

  v225 = a4;
  if (a2 < 1)
  {
LABEL_261:
    v228 = 0;
    v226 = 0;
    v227 = *(v14 + 56);
    goto LABEL_262;
  }

LABEL_257:
  if (!*v225)
  {
    goto LABEL_261;
  }

  v226 = CVBufferCopyAttachments(*v225, kCVAttachmentMode_ShouldPropagate);
  v227 = *(v14 + 56);
  v228 = v226 != 0;
  if (!v227 && v226)
  {
    v227 = CFDictionaryGetValue(v226, *MEMORY[0x1E6965F98]);
    v228 = 1;
  }

LABEL_262:
  if (v227)
  {
    v229 = v227;
  }

  else
  {
    v229 = *MEMORY[0x1E6965FD0];
  }

  if (v229)
  {
    CFRetain(v229);
  }

  v230 = *(v14 + 64);
  if (v230 == 0 && v228)
  {
    v230 = CFDictionaryGetValue(v226, *MEMORY[0x1E6965D88]);
  }

  if (v230)
  {
    v231 = v230;
  }

  else
  {
    v231 = *MEMORY[0x1E6965DB8];
  }

  if (v231)
  {
    CFRetain(v231);
  }

  v232 = *(v14 + 72);
  if (v232 == 0 && v228)
  {
    v232 = CFDictionaryGetValue(v226, *MEMORY[0x1E6965F30]);
  }

  v313 = v231;
  countb = v229;
  cfc = v182;
  v305 = v226;
  if (v232)
  {
    v233 = v232;
  }

  else
  {
    v233 = *MEMORY[0x1E6965F50];
  }

  if (v233)
  {
    CFRetain(v233);
  }

  if (v182)
  {
    v234 = MEMORY[0x1E69E9820];
    v235 = v308;
    do
    {
      v236 = *v235++;
      v238 = *(v14 + 280);
      v237 = *(v14 + 288);
      block[0] = v234;
      block[1] = 0x40000000;
      block[2] = __basicVideoCompositor_RenderFrame_block_invoke;
      block[3] = &unk_1E7490E40;
      block[6] = &v322[352 * v236];
      block[7] = v309;
      block[8] = v14;
      block[9] = countb;
      block[10] = v313;
      block[11] = v233;
      block[4] = &v332;
      block[5] = &v328;
      dispatch_group_async(v237, v238, block);
      --v182;
    }

    while (v182);
  }

  v311 = v233;
  dispatch_group_wait(*(v14 + 288), 0xFFFFFFFFFFFFFFFFLL);
  if (*(v329 + 24))
  {
    *(v333 + 6) = 3;
  }

  v30 = v322;
  v239 = v308;
  v240 = countb;
  v241 = cfc;
  if (!cfc)
  {
    if (*(v333 + 6) != 1)
    {
      goto LABEL_305;
    }

    goto LABEL_300;
  }

  v243 = *(v14 + 392);
  v242 = *(v14 + 400);
  v244 = v308;
  v245 = cfc;
  v246 = *(v14 + 384);
  do
  {
    v247 = *v244++;
    v248 = (*&v322[352 * v247 + 344] - *&v322[352 * v247 + 336]) / 1000;
    v242 += v248;
    if (v246 >= v248)
    {
      v246 = v248;
    }

    if (v243 <= v248)
    {
      v243 = v248;
    }

    --v245;
  }

  while (v245);
  *(v14 + 408) += cfc;
  *(v14 + 392) = v243;
  *(v14 + 400) = v242;
  *(v14 + 384) = v246;
  if (*(v333 + 6) == 1)
  {
LABEL_300:
    ++*(v14 + 360);
    v253 = CFRetain(*&v322[352 * *v308]);
    if (*(v14 + 172))
    {
      v254 = *(v14 + 104);
      if (v254)
      {
        CFRelease(v254);
        *(v14 + 104) = 0;
      }
    }

    dispatch_sync(*(v14 + 272), &__block_literal_global_28);
    v255 = *(v14 + 272);
    v325[0] = MEMORY[0x1E69E9820];
    v325[1] = 0x40000000;
    v325[2] = __basicVideoCompositor_RenderFrame_block_invoke_3;
    v325[3] = &__block_descriptor_tmp_29_0;
    v325[4] = v14;
    v325[5] = a10;
    v325[6] = v253;
    dispatch_async(v255, v325);
    a_low = 0;
    v256 = v226;
LABEL_304:
    v258 = v311;
    v257 = v313;
    goto LABEL_348;
  }

  v249 = v308;
  v250 = cfc;
  do
  {
    v251 = *v249++;
    v252 = *&v322[352 * v251];
    if (v252)
    {
      CFRetain(v252);
    }

    --v250;
  }

  while (v250);
LABEL_305:
  v259 = *(v14 + 104);
  v256 = v226;
  if (v259)
  {
LABEL_325:
    v271 = CFRetain(v259);
    goto LABEL_326;
  }

  v260 = CMBaseObjectGetDerivedStorage();
  v345.a = 0.0;
  t1.a = 0.0;
  LODWORD(v339) = 0;
  LODWORD(v338) = 0;
  LOBYTE(v337) = 0;
  v261 = CFGetAllocator(v309);
  Mutable = CFDictionaryCreateMutable(v261, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LODWORD(valuePtr.a) = *(v260 + 16);
  v263 = *MEMORY[0x1E695E480];
  v264 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966208], v264);
  CFRelease(v264);
  LODWORD(r2.origin.x) = *(v260 + 24);
  v265 = CFNumberCreate(v263, kCFNumberSInt32Type, &r2);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660B8], v265);
  CFRelease(v265);
  v266 = CFArrayCreateMutable(v263, 0, MEMORY[0x1E695E9C0]);
  v298 = v266;
  if (!v266)
  {
    basicVideoCompositor_RenderFrame_cold_9(&t2);
LABEL_383:
    a_low = LODWORD(t2.a);
    goto LABEL_315;
  }

  v267 = v266;
  LODWORD(v342.a) = *(v260 + 168);
  v268 = CFNumberCreate(v263, kCFNumberSInt32Type, &v342);
  if (!v268)
  {
    if (basicVideoCompositor_RenderFrame_cold_8())
    {
      goto LABEL_309;
    }

    goto LABEL_383;
  }

  v269 = v268;
  CFArrayAppendValue(v267, v268);
  CFRelease(v269);
LABEL_309:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v267);
  FigGetAlignmentForIOSurfaceOutput();
  PixelBufferAttributesWithIOSurfaceSupport = bvc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966140], SLODWORD(v339));
  if (!PixelBufferAttributesWithIOSurfaceSupport)
  {
    PixelBufferAttributesWithIOSurfaceSupport = bvc_CFDictionarySetInt(Mutable, *MEMORY[0x1E6966020], SLODWORD(v338));
    if (!PixelBufferAttributesWithIOSurfaceSupport)
    {
      PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      if (!PixelBufferAttributesWithIOSurfaceSupport)
      {
        PixelBufferAttributesWithIOSurfaceSupport = VTCreatePixelBufferPoolAttributesWithName();
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          CFGetAllocator(v309);
          PixelBufferAttributesWithIOSurfaceSupport = VTBuildPixelBufferPools2();
        }
      }
    }
  }

  a_low = PixelBufferAttributesWithIOSurfaceSupport;
LABEL_315:
  v30 = v322;
  v239 = v308;
  v241 = cfc;
  if (*&v345.a)
  {
    CFRelease(*&v345.a);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*&t1.a)
  {
    CFRelease(*&t1.a);
  }

  if (v298)
  {
    CFRelease(v298);
  }

  if (a_low)
  {
    goto LABEL_304;
  }

  v259 = *(v14 + 104);
  if (v259)
  {
    goto LABEL_325;
  }

  v271 = 0;
LABEL_326:
  dispatch_sync(*(v14 + 264), &__block_literal_global_32);
  v272 = *(v14 + 264);
  v323[0] = MEMORY[0x1E69E9820];
  v323[1] = 0x40000000;
  v323[2] = __basicVideoCompositor_RenderFrame_block_invoke_5;
  v323[3] = &unk_1E7490F08;
  v323[6] = v271;
  v323[7] = v305;
  v323[8] = v14;
  v323[9] = countb;
  v323[10] = v313;
  v323[11] = v311;
  v323[4] = &v332;
  v323[5] = v309;
  v323[12] = v239;
  v323[13] = v30;
  v324 = v301;
  v323[14] = v241;
  v323[15] = v288;
  v323[16] = a10;
  dispatch_async(v272, v323);
  v239 = 0;
  v256 = 0;
  v240 = 0;
  v257 = 0;
  v258 = 0;
  v30 = 0;
  a_low = 0;
LABEL_348:
  if (*(v14 + 176))
  {
    v280 = 0;
    do
    {
      CVPixelBufferPoolFlush(*(*(v14 + 184) + 8 * v280), 0);
      CVPixelBufferPoolFlush(*(*(v14 + 192) + 8 * v280++), 0);
    }

    while (v280 < *(v14 + 176));
  }

  v281 = *(v14 + 104);
  if (v281)
  {
    CVPixelBufferPoolFlush(v281, 0);
  }

  free(v30);
  free(v239);
  if (v256)
  {
    CFRelease(v256);
  }

  if (v240)
  {
    CFRelease(v240);
  }

  if (v257)
  {
    CFRelease(v257);
  }

  if (v258)
  {
    CFRelease(v258);
  }

LABEL_361:
  _Block_object_dispose(&v328, 8);
  _Block_object_dispose(&v332, 8);
  return a_low;
}

uint64_t basicVideoCompositor_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 272);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __basicVideoCompositor_SetOutputCallback_block_invoke;
  v9[3] = &unk_1E7490F80;
  v9[6] = a2;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t bvc_mixBuffers(NSObject *a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, __CVBuffer *a4, int a5, int a6, int a7, int a8, float a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v101 = *MEMORY[0x1E69E9840];
  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v82 = CVPixelBufferGetPixelFormatType(a3);
  v84 = CVPixelBufferGetPixelFormatType(a4);
  v28 = CVBufferCopyAttachment(a4, *MEMORY[0x1E6965F98], 0);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v31 = CVPixelBufferGetWidth(a3);
  v32 = CVPixelBufferGetHeight(a3);
  v33 = CVPixelBufferGetWidth(a4);
  v34 = CVPixelBufferGetHeight(a4);
  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  memset(v97, 0, sizeof(v97));
  memset(v96, 0, sizeof(v96));
  memset(v95, 0, sizeof(v95));
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v108.size.width = Width;
  v35 = v28;
  v108.size.height = Height;
  v108.origin.x = 0.0;
  v108.origin.y = 0.0;
  v102.origin.x = a10;
  v102.origin.y = a11;
  v102.size.width = a12;
  v102.size.height = a13;
  v103 = CGRectIntersection(v102, v108);
  PixelRectangle = bvc_getPixelRectangle(v103.origin.x, v103.origin.y, v103.size.width, v103.size.height);
  v79 = v37;
  v80 = PixelRectangle;
  v39 = v38;
  v41 = v40;
  v109.size.width = v31;
  v109.size.height = v32;
  v109.origin.x = 0.0;
  v109.origin.y = 0.0;
  *&v104.origin.x = a14;
  *&v104.origin.y = a15;
  *&v104.size.width = a16;
  *&v104.size.height = a17;
  v105 = CGRectIntersection(v104, v109);
  v42 = bvc_getPixelRectangle(v105.origin.x, v105.origin.y, v105.size.width, v105.size.height);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v110.size.width = v33;
  v110.size.height = v34;
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  *&v106.origin.y = a19;
  *&v106.origin.x = a18;
  *&v106.size.height = a21;
  *&v106.size.width = a20;
  v107 = CGRectIntersection(v106, v110);
  v52 = bvc_getPixelRectangle(v107.origin.x, v107.origin.y, v107.size.width, v107.size.height);
  if (v39 < 1.0 || v41 < 1.0 || v46 < 1.0 || v48 < 1.0 || v50 < 1.0 || v51 < 1.0)
  {
    goto LABEL_37;
  }

  if (v39 >= v46)
  {
    v53 = v46;
  }

  else
  {
    v53 = v39;
  }

  if (v50 >= v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = v50;
  }

  if (v41 >= v48)
  {
    v55 = v48;
  }

  else
  {
    v55 = v41;
  }

  if (v51 >= v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = v51;
  }

  if (v84 != 875704438)
  {
    v61 = v92;
    v62 = -12503;
LABEL_36:
    *(v61 + 6) = v62;
    goto LABEL_37;
  }

  v57 = v49;
  if (PixelFormatType == 32)
  {
    if (v82 == 875704438)
    {
      if (v28 && CFEqual(v28, *MEMORY[0x1E6965FD0]))
      {
        v58 = a9 == 1.0;
        v59 = bvc_SimpleMixing_32ARGB_420v709_420v709;
        v60 = bvc_SimpleMixingOpaque_32ARGB_420v709_420v709;
      }

      else
      {
        v58 = a9 == 1.0;
        v59 = bvc_SimpleMixing_32ARGB_420v601_420v601;
        v60 = bvc_SimpleMixingOpaque_32ARGB_420v601_420v601;
      }

      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (PixelFormatType == 1111970369)
  {
    if (v82 == 875704438)
    {
      if (!v28 || (v63 = CFEqual(v28, *MEMORY[0x1E6965FD0]), v64 = bvc_SimpleMixing_32BGRA_420v709_420v709_vec, !v63))
      {
        v64 = bvc_SimpleMixing_32BGRA_420v601_420v601_vec;
      }

      v65 = v64;
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  if (PixelFormatType != 875704438 || v82 != 875704438)
  {
LABEL_35:
    v61 = v92;
    v62 = -12502;
    goto LABEL_36;
  }

  v58 = a9 == 1.0;
  v59 = bvc_SimpleMixing_420v_420v_420v_vec;
  v60 = bvc_SimpleMixingOpaque_420v_420v_420v_vec;
LABEL_41:
  if (v58)
  {
    v65 = v60;
  }

  else
  {
    v65 = v59;
  }

LABEL_44:
  CVPixelBufferLockBaseAddress(a4, 0);
  if (pixelBuffer != a4)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  }

  if (a3 != a4)
  {
    CVPixelBufferLockBaseAddress(a3, 1uLL);
  }

  BufferCharacteristics = bvc_getBufferCharacteristics(pixelBuffer, &v90, v100, v97, v80, v79);
  *(v92 + 6) = BufferCharacteristics;
  if (!BufferCharacteristics)
  {
    v69 = bvc_getBufferCharacteristics(a3, &v89, v99, v96, v42, v44);
    *(v92 + 6) = v69;
    if (!v69)
    {
      v70 = bvc_getBufferCharacteristics(a4, &v88, v98, v95, v52, v57);
      *(v92 + 6) = v70;
      if (!v70)
      {
        v71 = v54;
        v72 = v56;
        if (FigThreadGetMaxLogicalCoreCount() < 2)
        {
          v77 = (v65)(v54, v56, v100, v97, v99, v96, v98, v95, a9);
          *(v92 + 6) = v77;
        }

        else
        {
          if ((v71 * v72) >> 9 <= 0x4A)
          {
            v73 = 1;
          }

          else
          {
            v73 = v71 * v72 / 0x4B00;
          }

          v74 = v72 / v73;
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = (v74 & 1) + v74;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __bvc_mixBuffers_block_invoke;
          block[3] = &unk_1E7490F30;
          if (v72 / v75 <= 1)
          {
            v76 = 1;
          }

          else
          {
            v76 = v72 / v75;
          }

          block[6] = v76;
          block[7] = v56;
          block[8] = v90;
          block[9] = v97;
          v86 = PixelFormatType;
          qmemcpy(v87, "v024v024", 8);
          block[10] = v100;
          block[11] = v89;
          block[12] = v96;
          block[13] = v99;
          block[14] = v88;
          block[15] = v95;
          block[16] = v98;
          block[17] = v65;
          block[18] = v54;
          *&v87[2] = a9;
          block[4] = &v91;
          block[5] = v75;
          dispatch_apply(v76, a1, block);
        }
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
  if (pixelBuffer != a4)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  if (a3 != a4)
  {
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }

LABEL_37:
  if (v35)
  {
    CFRelease(v35);
  }

  v66 = *(v92 + 6);
  _Block_object_dispose(&v91, 8);
  return v66;
}

__CVBuffer *bvc_copyCVBufferProperties(__CVBuffer *pixelBuffer, __CVBuffer **a2, __CVBuffer **a3, __CVBuffer **a4, __CVBuffer **a5)
{
  v8 = pixelBuffer;
  if (a2)
  {
    pixelBuffer = CVPixelBufferGetWidth(pixelBuffer);
    *a2 = pixelBuffer;
  }

  if (a3)
  {
    pixelBuffer = CVPixelBufferGetHeight(v8);
    *a3 = pixelBuffer;
  }

  if (a4)
  {
    pixelBuffer = CVBufferCopyAttachment(v8, *MEMORY[0x1E6965EF8], 0);
    *a4 = pixelBuffer;
  }

  if (a5)
  {
    pixelBuffer = CVBufferCopyAttachment(v8, *MEMORY[0x1E6965D70], 0);
    *a5 = pixelBuffer;
  }

  return pixelBuffer;
}

__CVPixelBufferPool *bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat(__CVPixelBufferPool *result, uint64_t a2, uint64_t a3, int a4)
{
  if (result)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(result);
    if (PixelBufferAttributes)
    {
      v8 = PixelBufferAttributes;
      Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E6966208]);
      if (Value)
      {
        valuePtr = 0;
        v12 = 0;
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
        v10 = CFDictionaryGetValue(v8, *MEMORY[0x1E69660B8]);
        if (v10)
        {
          CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
          v11 = CFDictionaryGetValue(v8, *MEMORY[0x1E6966130]);
          if (v11)
          {
            CFNumberGetValue(v11, kCFNumberSInt32Type, &v12);
            if (SHIDWORD(valuePtr) == a2 && valuePtr == a3 && v12 == a4)
            {
              return 1;
            }
          }

          else
          {
            bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_1();
          }
        }

        else
        {
          bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_2();
        }
      }

      else
      {
        bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_3();
      }
    }

    else
    {
      bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_4();
    }

    return 0;
  }

  return result;
}

uint64_t bvc_SimpleMixingOpaque_32ARGB_420v709_420v709(unint64_t a1, unint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t *a8)
{
  if (a2 >= 2)
  {
    v8 = 0;
    v47 = a1 >> 1;
    v53 = a2 >> 1;
    v9 = *a3;
    v52 = a5[1];
    v11 = *a8;
    v10 = a8[1];
    v13 = *a6;
    v12 = a6[1];
    v57 = v9;
    v50 = 2 * v9;
    v51 = a7[1];
    v49 = 2 * *a5;
    v48 = 2 * *a7;
    v14 = *a7 + *a8 + 1;
    v15 = *a5 + *a6 + 1;
    v56 = *a4 + 3;
    do
    {
      v55 = v8;
      if (a1 >= 2)
      {
        v16 = 0;
        v17 = v56;
        v18 = v47;
        do
        {
          v19 = *(v17 - 3);
          v20 = *(v17 - 2);
          v21 = *(v17 - 1);
          v22 = *v17;
          if (*(v17 - 3))
          {
            v23 = (((16776959 * v19 + 0x10000) * *(v13 + v16)) >> 16) + ((2120 * v19 + 5983 * v20 + 20127 * v21 + 2032 * v22) >> 15);
          }

          else
          {
            LOBYTE(v23) = *(v13 + v16);
          }

          v24 = v17[1];
          v25 = v17[v57 - 3];
          v26 = v17[v57 + 1];
          v27 = v17[2];
          v28 = v17[v57 - 2];
          v29 = v17[v57 + 2];
          v30 = v17[3];
          v31 = v17[v57 - 1];
          v32 = v17[v57 + 3];
          v33 = v17[4];
          v34 = v17[v57];
          v35 = v17[v57 + 4];
          *(v11 + v16) = v23;
          if (v24)
          {
            v36 = (((16776959 * v24 + 0x10000) * *(v13 + v16 + 1)) >> 16) + ((2120 * v24 + 5983 * v27 + 20127 * v30 + 2032 * v33) >> 15);
          }

          else
          {
            LOBYTE(v36) = *(v13 + v16 + 1);
          }

          v37 = v15 + v16;
          *(v11 + v16 + 1) = v36;
          if (v25)
          {
            LODWORD(v37) = (((16776959 * v25 + 0x10000) * *(v37 - 1)) >> 16) + ((2120 * v25 + 5983 * v28 + 20127 * v31 + 2032 * v34) >> 15);
          }

          else
          {
            LOBYTE(v37) = *(v37 - 1);
          }

          *(v14 + v16 - 1) = v37;
          if (v26)
          {
            v38 = (((16776959 * v26 + 0x10000) * *(v15 + v16)) >> 16) + ((2120 * v26 + 5983 * v29 + 20127 * v32 + 2032 * v35) >> 15);
          }

          else
          {
            LOBYTE(v38) = *(v15 + v16);
          }

          *(v14 + v16) = v38;
          v39 = v24 + v19 + v25 + v26;
          if (v39 > 3)
          {
            v41 = 257 * (v39 >> 2);
            v42 = (v27 + v20 + v28 + v29) >> 2;
            v43 = (v30 + v21 + v31 + v32) >> 2;
            v44 = (v33 + v22 + v34 + v35) >> 2;
            v45 = 129 * (v39 >> 2);
            *(v10 + v16) = (((0x10000 - v41) * *(v12 + v16)) >> 16) + ((2147480350 * v42 + (v45 << 7) + 8377515 * v43 + 14392 * v44) >> 15);
            v40 = (((0x10000 - v41) * *(v12 + v16 + 1)) >> 16) + ((14392 * v42 + (v45 << 7) + 8375535 * v43 + 8387291 * v44) >> 15);
          }

          else
          {
            *(v10 + v16) = *(v12 + v16);
            LOBYTE(v40) = *(v12 + v16 + 1);
          }

          v17 += 8;
          *(v10 + v16 + 1) = v40;
          v16 += 2;
          --v18;
        }

        while (v18);
      }

      v13 += v49;
      v11 += v48;
      v12 += v52;
      v10 += v51;
      v8 = v55 + 1;
      v14 += v48;
      v15 += v49;
      v56 += v50;
    }

    while (v55 + 1 != v53);
  }

  return 0;
}

uint64_t bvc_SimpleMixing_32ARGB_420v709_420v709(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t *a8, float a9)
{
  if (a2 >= 2)
  {
    v9 = 0;
    v10 = vcvts_n_s32_f32(a9, 8uLL);
    v49 = a1 >> 1;
    v11 = *a5;
    v54 = a5[1];
    v55 = a2 >> 1;
    v53 = a7[1];
    v12 = a8[1];
    v13 = *a6;
    v61 = a6[1];
    v14 = (0x10101020000 * (v10 << 8)) >> 48;
    v52 = 2 * *a3;
    v51 = 2 * *a5;
    v50 = 2 * *a7;
    v15 = *a8;
    v16 = *a7 + *a8 + 1;
    v17 = *a4;
    v18 = v11 + v13 + 1;
    v58 = (v17 + 3);
    v59 = *a3;
    do
    {
      v57 = v9;
      if (a1 >= 2)
      {
        v19 = 0;
        v20 = v58;
        v21 = v49;
        v60 = v13;
        do
        {
          v22 = *(v20 - 3);
          v23 = *(v20 - 2);
          v24 = *(v20 - 1);
          v25 = *v20;
          if (v14 * v22)
          {
            v26 = (((2120 * v22 + 5983 * v23 + 20127 * v24 + 2032 * v25) >> 15) * v10 + (((0x10000 - v14 * v22) * *(v13 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v26) = *(v13 + v19);
          }

          v27 = v20[1];
          v28 = v20[v59 - 3];
          v29 = v20[v59 + 1];
          v30 = v20[2];
          v31 = v20[v59 - 2];
          v32 = v20[v59 + 2];
          v33 = v20[3];
          v34 = v20[v59 - 1];
          v35 = v20[v59 + 3];
          v36 = v20[4];
          v37 = v20[v59];
          v38 = v20[v59 + 4];
          *(v15 + v19) = v26;
          if (v14 * v27)
          {
            v39 = (((2120 * v27 + 5983 * v30 + 20127 * v33 + 2032 * v36) >> 15) * v10 + (((0x10000 - v14 * v27) * *(v13 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v39) = *(v13 + v19 + 1);
          }

          v40 = v18 + v19;
          *(v15 + v19 + 1) = v39;
          if (v14 * v28)
          {
            LODWORD(v40) = (((2120 * v28 + 5983 * v31 + 20127 * v34 + 2032 * v37) >> 15) * v10 + (((0x10000 - v14 * v28) * *(v40 - 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v40) = *(v40 - 1);
          }

          *(v16 + v19 - 1) = v40;
          if (v14 * v29)
          {
            v41 = (((2120 * v29 + 5983 * v32 + 20127 * v35 + 2032 * v38) >> 15) * v10 + (((0x10000 - v14 * v29) * *(v18 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v41) = *(v18 + v19);
          }

          v13 = v60;
          *(v16 + v19) = v41;
          v42 = (v27 + v22 + v28 + v29) >> 2;
          v43 = v42 * v14;
          if (v42 * v14)
          {
            v44 = (v30 + v23 + v31 + v32) >> 2;
            v45 = (v33 + v24 + v34 + v35) >> 2;
            v46 = (v36 + v25 + v37 + v38) >> 2;
            *(v12 + v19) = (((2147480350 * v44 + 16512 * v42 + 2147472555 * v45 + 14392 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19)) >> 8)) >> 8;
            v47 = (((14392 * v44 + 16512 * v42 + 2147470575 * v45 + 2147482331 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            *(v12 + v19) = *(v61 + v19);
            LOBYTE(v47) = *(v61 + v19 + 1);
          }

          v20 += 8;
          *(v12 + v19 + 1) = v47;
          v19 += 2;
          --v21;
        }

        while (v21);
      }

      v13 += v51;
      v15 += v50;
      v61 += v54;
      v12 += v53;
      v9 = v57 + 1;
      v16 += v50;
      v18 += v51;
      v58 += v52;
    }

    while (v57 + 1 != v55);
  }

  return 0;
}

uint64_t bvc_SimpleMixingOpaque_32ARGB_420v601_420v601(unint64_t a1, unint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t *a8)
{
  if (a2 >= 2)
  {
    v8 = 0;
    v47 = a1 >> 1;
    v53 = a2 >> 1;
    v9 = *a3;
    v52 = a5[1];
    v11 = *a8;
    v10 = a8[1];
    v13 = *a6;
    v12 = a6[1];
    v57 = v9;
    v50 = 2 * v9;
    v51 = a7[1];
    v49 = 2 * *a5;
    v48 = 2 * *a7;
    v14 = *a7 + *a8 + 1;
    v15 = *a5 + *a6 + 1;
    v56 = *a4 + 3;
    do
    {
      v55 = v8;
      if (a1 >= 2)
      {
        v16 = 0;
        v17 = v56;
        v18 = v47;
        do
        {
          v19 = *(v17 - 3);
          v20 = *(v17 - 2);
          v21 = *(v17 - 1);
          v22 = *v17;
          if (*(v17 - 3))
          {
            v23 = (((16776959 * v19 + 0x10000) * *(v13 + v16)) >> 16) + ((2120 * v19 + 8412 * v20 + 16508 * v21 + 3219 * v22) >> 15);
          }

          else
          {
            LOBYTE(v23) = *(v13 + v16);
          }

          v24 = v17[1];
          v25 = v17[v57 - 3];
          v26 = v17[v57 + 1];
          v27 = v17[2];
          v28 = v17[v57 - 2];
          v29 = v17[v57 + 2];
          v30 = v17[3];
          v31 = v17[v57 - 1];
          v32 = v17[v57 + 3];
          v33 = v17[4];
          v34 = v17[v57];
          v35 = v17[v57 + 4];
          *(v11 + v16) = v23;
          if (v24)
          {
            v36 = (((16776959 * v24 + 0x10000) * *(v13 + v16 + 1)) >> 16) + ((2120 * v24 + 8412 * v27 + 16508 * v30 + 3219 * v33) >> 15);
          }

          else
          {
            LOBYTE(v36) = *(v13 + v16 + 1);
          }

          v37 = v15 + v16;
          *(v11 + v16 + 1) = v36;
          if (v25)
          {
            LODWORD(v37) = (((16776959 * v25 + 0x10000) * *(v37 - 1)) >> 16) + ((2120 * v25 + 8412 * v28 + 16508 * v31 + 3219 * v34) >> 15);
          }

          else
          {
            LOBYTE(v37) = *(v37 - 1);
          }

          *(v14 + v16 - 1) = v37;
          if (v26)
          {
            v38 = (((16776959 * v26 + 0x10000) * *(v15 + v16)) >> 16) + ((2120 * v26 + 8412 * v29 + 16508 * v32 + 3219 * v35) >> 15);
          }

          else
          {
            LOBYTE(v38) = *(v15 + v16);
          }

          *(v14 + v16) = v38;
          v39 = v24 + v19 + v25 + v26;
          if (v39 > 3)
          {
            v41 = 257 * (v39 >> 2);
            v42 = (v27 + v20 + v28 + v29) >> 2;
            v43 = (v30 + v21 + v31 + v32) >> 2;
            v44 = (v33 + v22 + v34 + v35) >> 2;
            v45 = 129 * (v39 >> 2);
            *(v10 + v16) = (((0x10000 - v41) * *(v12 + v16)) >> 16) + ((2147478790 * v42 + (v45 << 7) + 8379076 * v43 + 14392 * v44) >> 15);
            v40 = (((0x10000 - v41) * *(v12 + v16 + 1)) >> 16) + ((14392 * v42 + (v45 << 7) + 8376568 * v43 + 8386260 * v44) >> 15);
          }

          else
          {
            *(v10 + v16) = *(v12 + v16);
            LOBYTE(v40) = *(v12 + v16 + 1);
          }

          v17 += 8;
          *(v10 + v16 + 1) = v40;
          v16 += 2;
          --v18;
        }

        while (v18);
      }

      v13 += v49;
      v11 += v48;
      v12 += v52;
      v10 += v51;
      v8 = v55 + 1;
      v14 += v48;
      v15 += v49;
      v56 += v50;
    }

    while (v55 + 1 != v53);
  }

  return 0;
}

uint64_t bvc_SimpleMixing_32ARGB_420v601_420v601(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t *a8, float a9)
{
  if (a2 >= 2)
  {
    v9 = 0;
    v10 = vcvts_n_s32_f32(a9, 8uLL);
    v49 = a1 >> 1;
    v11 = *a5;
    v54 = a5[1];
    v55 = a2 >> 1;
    v53 = a7[1];
    v12 = a8[1];
    v13 = *a6;
    v61 = a6[1];
    v14 = (0x10101020000 * (v10 << 8)) >> 48;
    v52 = 2 * *a3;
    v51 = 2 * *a5;
    v50 = 2 * *a7;
    v15 = *a8;
    v16 = *a7 + *a8 + 1;
    v17 = *a4;
    v18 = v11 + v13 + 1;
    v58 = (v17 + 3);
    v59 = *a3;
    do
    {
      v57 = v9;
      if (a1 >= 2)
      {
        v19 = 0;
        v20 = v58;
        v21 = v49;
        v60 = v13;
        do
        {
          v22 = *(v20 - 3);
          v23 = *(v20 - 2);
          v24 = *(v20 - 1);
          v25 = *v20;
          if (v14 * v22)
          {
            v26 = (((2120 * v22 + 8412 * v23 + 16508 * v24 + 3219 * v25) >> 15) * v10 + (((0x10000 - v14 * v22) * *(v13 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v26) = *(v13 + v19);
          }

          v27 = v20[1];
          v28 = v20[v59 - 3];
          v29 = v20[v59 + 1];
          v30 = v20[2];
          v31 = v20[v59 - 2];
          v32 = v20[v59 + 2];
          v33 = v20[3];
          v34 = v20[v59 - 1];
          v35 = v20[v59 + 3];
          v36 = v20[4];
          v37 = v20[v59];
          v38 = v20[v59 + 4];
          *(v15 + v19) = v26;
          if (v14 * v27)
          {
            v39 = (((2120 * v27 + 8412 * v30 + 16508 * v33 + 3219 * v36) >> 15) * v10 + (((0x10000 - v14 * v27) * *(v13 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v39) = *(v13 + v19 + 1);
          }

          v40 = v18 + v19;
          *(v15 + v19 + 1) = v39;
          if (v14 * v28)
          {
            LODWORD(v40) = (((2120 * v28 + 8412 * v31 + 16508 * v34 + 3219 * v37) >> 15) * v10 + (((0x10000 - v14 * v28) * *(v40 - 1)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v40) = *(v40 - 1);
          }

          *(v16 + v19 - 1) = v40;
          if (v14 * v29)
          {
            v41 = (((2120 * v29 + 8412 * v32 + 16508 * v35 + 3219 * v38) >> 15) * v10 + (((0x10000 - v14 * v29) * *(v18 + v19)) >> 8)) >> 8;
          }

          else
          {
            LOBYTE(v41) = *(v18 + v19);
          }

          v13 = v60;
          *(v16 + v19) = v41;
          v42 = (v27 + v22 + v28 + v29) >> 2;
          v43 = v42 * v14;
          if (v42 * v14)
          {
            v44 = (v30 + v23 + v31 + v32) >> 2;
            v45 = (v33 + v24 + v34 + v35) >> 2;
            v46 = (v36 + v25 + v37 + v38) >> 2;
            *(v12 + v19) = (((2147478790 * v44 + 16512 * v42 + 2147474116 * v45 + 14392 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19)) >> 8)) >> 8;
            v47 = (((14392 * v44 + 16512 * v42 + 2147471608 * v45 + 2147481300 * v46) >> 15) * v10 + (((0x10000 - v43) * *(v61 + v19 + 1)) >> 8)) >> 8;
          }

          else
          {
            *(v12 + v19) = *(v61 + v19);
            LOBYTE(v47) = *(v61 + v19 + 1);
          }

          v20 += 8;
          *(v12 + v19 + 1) = v47;
          v19 += 2;
          --v21;
        }

        while (v21);
      }

      v13 += v51;
      v15 += v50;
      v61 += v54;
      v12 += v53;
      v9 = v57 + 1;
      v16 += v50;
      v18 += v51;
      v58 += v52;
    }

    while (v57 + 1 != v55);
  }

  return 0;
}

uint64_t bvc_getBufferCharacteristics(__CVBuffer *a1, uint64_t *a2, size_t *a3, void *a4, double a5, double a6)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
        if (!CVPixelBufferIsPlanar(a1))
        {
          v14 = 1;
          if (CVPixelBufferIsPlanar(a1))
          {
LABEL_10:
            v15 = 0;
            while (1)
            {
              a3[v15] = CVPixelBufferGetBytesPerRowOfPlane(a1, v15);
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v15);
              if (PixelFormatType <= 875704421)
              {
                v17 = 1.0;
                if (PixelFormatType != 32 && PixelFormatType != 846624121)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (PixelFormatType != 875704422)
                {
                  v17 = 1.0;
                  if (PixelFormatType == 1111970369)
                  {
                    goto LABEL_24;
                  }

                  if (PixelFormatType != 875704438)
                  {
LABEL_23:
                    v17 = -1.0;
                    goto LABEL_24;
                  }
                }

                if (v15 == 1)
                {
                  v17 = 0.5;
                }

                else
                {
                  v17 = -1.0;
                }

                if (!v15)
                {
                  v17 = 1.0;
                }
              }

LABEL_24:
              v18 = 1.0;
              if (PixelFormatType <= 875704421)
              {
                if (PixelFormatType == 32)
                {
                  goto LABEL_38;
                }

                if (PixelFormatType == 846624121)
                {
                  v19 = a5 * 0.5 + 0.5;
                  goto LABEL_48;
                }

LABEL_37:
                v18 = -1.0;
                goto LABEL_38;
              }

              if (PixelFormatType != 875704422)
              {
                if (PixelFormatType == 1111970369)
                {
                  goto LABEL_38;
                }

                if (PixelFormatType != 875704438)
                {
                  goto LABEL_37;
                }
              }

              if (v15 == 1)
              {
                v18 = 0.5;
              }

              else
              {
                v18 = -1.0;
              }

              if (!v15)
              {
                v18 = 1.0;
              }

LABEL_38:
              v19 = a5 * v18 + 0.5;
              if (PixelFormatType <= 875704421)
              {
                if (PixelFormatType != 32)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (PixelFormatType == 875704422)
                {
                  goto LABEL_42;
                }

                if (PixelFormatType != 1111970369)
                {
                  if (PixelFormatType == 875704438)
                  {
LABEL_42:
                    v20 = 2;
                    if (v15 != 1)
                    {
                      v20 = -1;
                    }

                    if (!v15)
                    {
                      v20 = 1;
                    }

                    goto LABEL_49;
                  }

LABEL_51:
                  v20 = -1;
                  goto LABEL_49;
                }
              }

LABEL_48:
              v20 = 4;
LABEL_49:
              a4[v15] = &BaseAddressOfPlane[a3[v15] * (a6 * v17 + 0.5) + v20 * v19];
              if (v14 == ++v15)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_52:
          *a3 = CVPixelBufferGetBytesPerRow(a1);
          BaseAddress = CVPixelBufferGetBaseAddress(a1);
          v22 = 1.0;
          if (PixelFormatType <= 875704421)
          {
            if (PixelFormatType == 32)
            {
              goto LABEL_60;
            }

            v23 = 846624121;
          }

          else
          {
            if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
            {
              goto LABEL_60;
            }

            v23 = 1111970369;
          }

          if (PixelFormatType != v23)
          {
            v22 = -1.0;
          }

LABEL_60:
          v24 = &BaseAddress[*a3 * (a6 * v22 + 0.5)];
          v25 = 1.0;
          if (PixelFormatType <= 875704421)
          {
            if (PixelFormatType == 32)
            {
LABEL_69:
              v26 = a5 * v25 + 0.5;
              v27 = 4;
              if (PixelFormatType <= 875704421)
              {
                if (PixelFormatType == 32)
                {
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

              if (PixelFormatType == 875704422)
              {
LABEL_73:
                v27 = 1;
                goto LABEL_76;
              }

              if (PixelFormatType != 1111970369)
              {
                if (PixelFormatType == 875704438)
                {
                  goto LABEL_73;
                }

LABEL_75:
                v27 = -1;
              }

LABEL_76:
              *a4 = &v24[v27 * v26];
LABEL_77:
              result = 0;
              *a2 = v14;
              return result;
            }

            if (PixelFormatType == 846624121)
            {
              v26 = a5 * 0.5 + 0.5;
              v27 = 4;
              goto LABEL_76;
            }
          }

          else if (PixelFormatType == 875704422 || PixelFormatType == 875704438 || PixelFormatType == 1111970369)
          {
            goto LABEL_69;
          }

          v25 = -1.0;
          goto LABEL_69;
        }

        PlaneCount = CVPixelBufferGetPlaneCount(a1);
        if (PlaneCount < 5)
        {
          v14 = PlaneCount;
          if (CVPixelBufferIsPlanar(a1))
          {
            if (!v14)
            {
              goto LABEL_77;
            }

            goto LABEL_10;
          }

          goto LABEL_52;
        }

        bvc_getBufferCharacteristics_cold_1(&v29);
      }

      else
      {
        bvc_getBufferCharacteristics_cold_2(&v29);
      }
    }

    else
    {
      bvc_getBufferCharacteristics_cold_3(&v29);
    }
  }

  else
  {
    bvc_getBufferCharacteristics_cold_4(&v29);
  }

  return v29;
}

uint64_t __bvc_mixBuffers_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v4 = *(a1 + 40);
  v5 = v4 * a2;
  if (*(a1 + 48) - 1 == a2)
  {
    v4 = *(a1 + 56) - v5;
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  if (v6)
  {
    v8 = 0;
    v9 = *(a1 + 152);
    v10 = *(a1 + 72);
    while (v9 > 875704421)
    {
      if (v9 == 875704422)
      {
        goto LABEL_9;
      }

      v11 = 1.0;
      if (v9 != 1111970369)
      {
        if (v9 == 875704438)
        {
LABEL_9:
          if (v8 == 1)
          {
            v11 = 0.5;
          }

          else
          {
            v11 = -1.0;
          }

          if (!v8)
          {
            v11 = 1.0;
          }

          goto LABEL_18;
        }

LABEL_17:
        v11 = -1.0;
      }

LABEL_18:
      *(v27 + v8) = *(v10 + 8 * v8) + *(v7 + 8 * v8) * (v11 * v5);
      if (v6 == ++v8)
      {
        goto LABEL_19;
      }
    }

    v11 = 1.0;
    if (v9 == 32 || v9 == 846624121)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  v12 = *(a1 + 88);
  v13 = *(a1 + 104);
  if (v12)
  {
    v14 = 0;
    v15 = *(a1 + 156);
    v16 = *(a1 + 96);
    while (v15 > 875704421)
    {
      if (v15 == 875704422)
      {
        goto LABEL_25;
      }

      v17 = 1.0;
      if (v15 != 1111970369)
      {
        if (v15 == 875704438)
        {
LABEL_25:
          if (v14 == 1)
          {
            v17 = 0.5;
          }

          else
          {
            v17 = -1.0;
          }

          if (!v14)
          {
            v17 = 1.0;
          }

          goto LABEL_34;
        }

LABEL_33:
        v17 = -1.0;
      }

LABEL_34:
      *(v26 + v14) = *(v16 + 8 * v14) + *(v13 + 8 * v14) * (v17 * v5);
      if (v12 == ++v14)
      {
        goto LABEL_35;
      }
    }

    v17 = 1.0;
    if (v15 == 32 || v15 == 846624121)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  v18 = *(a1 + 112);
  v19 = *(a1 + 128);
  if (v18)
  {
    v20 = 0;
    v21 = *(a1 + 160);
    v22 = *(a1 + 120);
    while (v21 > 875704421)
    {
      if (v21 == 875704422)
      {
        goto LABEL_41;
      }

      v23 = 1.0;
      if (v21 != 1111970369)
      {
        if (v21 == 875704438)
        {
LABEL_41:
          if (v20 == 1)
          {
            v23 = 0.5;
          }

          else
          {
            v23 = -1.0;
          }

          if (!v20)
          {
            v23 = 1.0;
          }

          goto LABEL_50;
        }

LABEL_49:
        v23 = -1.0;
      }

LABEL_50:
      *(v25 + v20) = *(v22 + 8 * v20) + *(v19 + 8 * v20) * (v23 * v5);
      if (v18 == ++v20)
      {
        goto LABEL_51;
      }
    }

    v23 = 1.0;
    if (v21 == 32 || v21 == 846624121)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_51:
  result = (*(a1 + 136))(*(a1 + 144), v4, v7, v27, v13, v26, v19, v25, *(a1 + 164));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = -12506;
  }

  return result;
}

uint64_t bvc_Fill_32ARGB_420v709(size_t __len, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, char **a5)
{
  v8 = *a4;
  v7 = a4[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a3[2];
  v12 = a3[3];
  v22 = a3[1];
  v13 = 20127 * v11 + 5983 * v22 + 2032 * v12 + 540672;
  if (*a4 == __len)
  {
    memset(v10, v13 >> 15, __len * a2);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v16 = v13 >> 15;
    v17 = a2;
    do
    {
      memset(v10, v16, __len);
      v10 += v8;
      --v17;
    }

    while (v17);
  }

  if (a2 >= 2)
  {
    v18 = a2 >> 1;
    v14.i32[0] = v22;
    v15.i32[0] = v12;
    v19 = __len + 1;
    v20 = vshrn_n_s32(vaddq_s32(vmlaq_lane_s32(vmlaq_lane_s32(vmulq_n_s32(xmmword_196E78BA0, v11), xmmword_196E78B90, v14, 0), xmmword_196E78BB0, v15, 0), vdupq_n_s32(0x404000u)), 0xFuLL);
    v23 = vuzp1_s8(v20, v20).u32[0];
    do
    {
      __pattern4 = v23;
      memset_pattern4(v9, &__pattern4, v19 & 0xFFFFFFFFFFFFFFFELL);
      v9 += v7;
      --v18;
    }

    while (v18);
  }

  return 0;
}

uint64_t bvc_Fill_32ARGB_420v601(size_t __len, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, char **a5)
{
  v8 = *a4;
  v7 = a4[1];
  v10 = *a5;
  v9 = a5[1];
  v11 = a3[2];
  v12 = a3[3];
  v22 = a3[1];
  v13 = 16508 * v11 + 8412 * v22 + 3219 * v12 + 540672;
  if (*a4 == __len)
  {
    memset(v10, v13 >> 15, __len * a2);
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v16 = v13 >> 15;
    v17 = a2;
    do
    {
      memset(v10, v16, __len);
      v10 += v8;
      --v17;
    }

    while (v17);
  }

  if (a2 >= 2)
  {
    v18 = a2 >> 1;
    v14.i32[0] = v22;
    v15.i32[0] = v12;
    v19 = __len + 1;
    v20 = vshrn_n_s32(vaddq_s32(vmlaq_lane_s32(vmlaq_lane_s32(vmulq_n_s32(xmmword_196E78BD0, v11), xmmword_196E78BC0, v14, 0), xmmword_196E78BE0, v15, 0), vdupq_n_s32(0x404000u)), 0xFuLL);
    v23 = vuzp1_s8(v20, v20).u32[0];
    do
    {
      __pattern4 = v23;
      memset_pattern4(v9, &__pattern4, v19 & 0xFFFFFFFFFFFFFFFELL);
      v9 += v7;
      --v18;
    }

    while (v18);
  }

  return 0;
}

uint64_t bvc_FullCompositionOpaque_420v_420v(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v71 = *a3;
  v72 = *a2;
  v73 = a3[1];
  v74 = a2[1];
  v88 = 0;
  v89 = 0;
  v20 = *a4;
  v75 = a4[1];
  v86 = 0;
  v87 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v28 = *(a1 + 1);
    *&v77.a = *a1;
    *&v77.c = v28;
    *&v77.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v77.a))
    {
      memset(&v76, 0, sizeof(v76));
      v29 = *(a1 + 1);
      *&v77.a = *a1;
      *&v77.c = v29;
      *&v77.tx = *(a1 + 2);
      CGAffineTransformInvert(&v76, &v77);
      v64 = a1[3];
      v65 = *a1;
      v62 = a1[4];
      v63 = a1[2];
      v66 = a1[5];
      v68 = a1[1];
      v30 = *(a1 + 1);
      *&v77.a = *a1;
      *&v77.c = v30;
      *&v77.tx = *(a1 + 2);
      VectorsFromTransform = BVCUtilityGetVectorsFromTransform(&v77.a, &v85, &v84);
      if (VectorsFromTransform)
      {
        v36 = VectorsFromTransform;
        v37 = 0;
      }

      else
      {
        v32 = v85.i32[0];
        if (v85.i32[0] < 0)
        {
          v32 = -v85.i32[0];
        }

        v33 = v84.i32[0];
        if (v84.i32[0] < 0)
        {
          v33 = -v84.i32[0];
        }

        if (v32 <= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v32;
        }

        v77 = v76;
        BVCUtilityGetVectorsFromTransform(&v77.a, &v83, &v82);
        v35 = *(a1 + 1);
        *&v77.a = *a1;
        *&v77.c = v35;
        *&v77.tx = *(a1 + 2);
        v36 = BVCUtilityCreateEdgeLists(&v77, &v87, &v86, a6, a7, a8, a9, a10, a11, a12, a13);
        v37 = v87;
        if (!v36)
        {
          if (v87)
          {
            v38 = v86;
            if (v86)
            {
              v39 = vcvts_n_s32_f32(a14, 8uLL);
              v40 = vcvtd_n_s64_f64(v62 + v63 * 0.0 + v65 * 0.0, 0x10uLL);
              v41 = vcvtd_n_s64_f64(v66 + v64 * 0.0 + v68 * 0.0, 0x10uLL);
              LODWORD(v77.a) = 0;
              v79 = 0;
              v78 = 0;
              v42 = *v87;
              if (*v87 <= *v86)
              {
                v42 = *v86;
              }

              v43 = v42 + 0x8000;
              v44 = (v42 + 0x8000) >> 16;
              v67 = v41;
              v45 = ((v42 + 0x8000) & 0xFFFF0000) - v41 + 0x8000;
              v69 = v40;
              LODWORD(v81) = ((v82.i32[0] * v45) >> 16) + ((v83.i32[0] * (0x8000 - v40)) >> 16) - (v82.i32[0] > 0);
              HIDWORD(v81) = ((v83.i32[1] * (0x8000 - v40)) >> 16) + ((v82.i32[1] * v45) >> 16) - (v82.i32[1] > 0);
              bvc_extractEdgeParameters(v87, 0, v44, v34, 1, &v80 + 1, &v77, &v79);
              bvc_extractEdgeParameters(v38, 1, v43 >> 16, v34, 1, &v80, &v79 + 1, &v78);
              v70 = a5;
              v89 = *a5 + v20 * (v43 >> 16);
              do
              {
                v47 = v78;
                v48 = v79;
                if (v79 >= v78)
                {
                  v49 = v78;
                }

                else
                {
                  v49 = v79;
                }

                if (v49 > v44)
                {
                  bvc_FullCompositionOpaqueYInner_420v_420v_arm((v49 - v44), v39, &v89, v20, v71, v72, &v80 + 1, &v80, v46, SLODWORD(v77.a), SHIDWORD(v79), &v81, &v81 + 1, v83.u32[0], v83.u32[1], v82.i32[0], v82.i32[1]);
                  v44 = v49;
                }

                if (v44 >= v48)
                {
                  v37 = *(v37 + 5);
                  if (v37)
                  {
                    bvc_extractEdgeParameters(v37, 0, v44, v34, 1, &v80 + 1, &v77, &v79);
                  }
                }

                if (v44 >= v47)
                {
                  v38 = *(v38 + 5);
                  if (!v38)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v38, 1, v44, v34, 1, &v80, &v79 + 1, &v78);
                }
              }

              while (v37);
              v50 = v86;
              v51 = v87;
              v52 = *v87 / 2;
              if (v52 <= *v86 / 2)
              {
                v52 = *v86 / 2;
              }

              v53 = v52 + 0x8000;
              v54 = (v52 + 0x8000) >> 16;
              v55 = ((v52 + 0x8000) & 0xFFFF0000) - v67 / 2 + 0x8000;
              v56 = 0x8000 - v69 / 2;
              LODWORD(v81) = ((v82.i32[0] * v55) >> 16) + ((v83.i32[0] * v56) >> 16) - (v82.i32[0] > 0);
              HIDWORD(v81) = ((v83.i32[1] * v56) >> 16) + ((v82.i32[1] * v55) >> 16) - (v82.i32[1] > 0);
              bvc_extractEdgeParameters(v87, 0, v54, v34, 2, &v80 + 1, &v77, &v79);
              bvc_extractEdgeParameters(v50, 1, v53 >> 16, v34, 2, &v80, &v79 + 1, &v78);
              v88 = v70[1] + v75 * (v53 >> 16);
              do
              {
                v58 = v78;
                v59 = v79;
                if (v79 >= v78)
                {
                  v60 = v78;
                }

                else
                {
                  v60 = v79;
                }

                if (v60 > v54)
                {
                  bvc_FullCompositionOpaqueCbCrInner_420v_420v_arm((v60 - v54), v39, &v88, v75, v73, v74, &v80 + 1, &v80, v57, SLODWORD(v77.a), SHIDWORD(v79), &v81, &v81 + 1, v83.u32[0], v83.u32[1], v82.i32[0], v82.i32[1]);
                  v54 = v60;
                }

                if (v54 >= v59)
                {
                  v51 = *(v51 + 5);
                  if (v51)
                  {
                    bvc_extractEdgeParameters(v51, 0, v54, v34, 2, &v80 + 1, &v77, &v79);
                  }
                }

                if (v54 >= v58)
                {
                  v50 = *(v50 + 5);
                  if (!v50)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v50, 1, v54, v34, 2, &v80, &v79 + 1, &v78);
                }
              }

              while (v51);
              v36 = 0;
              v37 = v87;
            }
          }
        }
      }
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    BVCUtilityDestroyEdgeList(v37);
    BVCUtilityDestroyEdgeList(v86);
    return v36;
  }
}

uint64_t bvc_FullComposition_420v_420v(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v71 = *a3;
  v72 = *a2;
  v73 = a3[1];
  v74 = a2[1];
  v88 = 0;
  v89 = 0;
  v20 = *a4;
  v75 = a4[1];
  v86 = 0;
  v87 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v28 = *(a1 + 1);
    *&v77.a = *a1;
    *&v77.c = v28;
    *&v77.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v77.a))
    {
      memset(&v76, 0, sizeof(v76));
      v29 = *(a1 + 1);
      *&v77.a = *a1;
      *&v77.c = v29;
      *&v77.tx = *(a1 + 2);
      CGAffineTransformInvert(&v76, &v77);
      v64 = a1[3];
      v65 = *a1;
      v62 = a1[4];
      v63 = a1[2];
      v66 = a1[5];
      v68 = a1[1];
      v30 = *(a1 + 1);
      *&v77.a = *a1;
      *&v77.c = v30;
      *&v77.tx = *(a1 + 2);
      VectorsFromTransform = BVCUtilityGetVectorsFromTransform(&v77.a, &v85, &v84);
      if (VectorsFromTransform)
      {
        v36 = VectorsFromTransform;
        v37 = 0;
      }

      else
      {
        v32 = v85.i32[0];
        if (v85.i32[0] < 0)
        {
          v32 = -v85.i32[0];
        }

        v33 = v84.i32[0];
        if (v84.i32[0] < 0)
        {
          v33 = -v84.i32[0];
        }

        if (v32 <= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v32;
        }

        v77 = v76;
        BVCUtilityGetVectorsFromTransform(&v77.a, &v83, &v82);
        v35 = *(a1 + 1);
        *&v77.a = *a1;
        *&v77.c = v35;
        *&v77.tx = *(a1 + 2);
        v36 = BVCUtilityCreateEdgeLists(&v77, &v87, &v86, a6, a7, a8, a9, a10, a11, a12, a13);
        v37 = v87;
        if (!v36)
        {
          if (v87)
          {
            v38 = v86;
            if (v86)
            {
              v39 = vcvts_n_s32_f32(a14, 8uLL);
              v40 = vcvtd_n_s64_f64(v62 + v63 * 0.0 + v65 * 0.0, 0x10uLL);
              v41 = vcvtd_n_s64_f64(v66 + v64 * 0.0 + v68 * 0.0, 0x10uLL);
              LODWORD(v77.a) = 0;
              v79 = 0;
              v78 = 0;
              v42 = *v87;
              if (*v87 <= *v86)
              {
                v42 = *v86;
              }

              v43 = v42 + 0x8000;
              v44 = (v42 + 0x8000) >> 16;
              v67 = v41;
              v45 = ((v42 + 0x8000) & 0xFFFF0000) - v41 + 0x8000;
              v69 = v40;
              LODWORD(v81) = ((v82.i32[0] * v45) >> 16) + ((v83.i32[0] * (0x8000 - v40)) >> 16) - (v82.i32[0] > 0);
              HIDWORD(v81) = ((v83.i32[1] * (0x8000 - v40)) >> 16) + ((v82.i32[1] * v45) >> 16) - (v82.i32[1] > 0);
              bvc_extractEdgeParameters(v87, 0, v44, v34, 1, &v80 + 1, &v77, &v79);
              bvc_extractEdgeParameters(v38, 1, v43 >> 16, v34, 1, &v80, &v79 + 1, &v78);
              v70 = a5;
              v89 = *a5 + v20 * (v43 >> 16);
              do
              {
                v47 = v78;
                v48 = v79;
                if (v79 >= v78)
                {
                  v49 = v78;
                }

                else
                {
                  v49 = v79;
                }

                if (v49 > v44)
                {
                  bvc_FullCompositionYInner_420v_420v_arm((v49 - v44), v39, &v89, v20, v71, v72, &v80 + 1, &v80, v46, SLODWORD(v77.a), SHIDWORD(v79), &v81, &v81 + 1, v83.u32[0], v83.u32[1], v82.i32[0], v82.i32[1]);
                  v44 = v49;
                }

                if (v44 >= v48)
                {
                  v37 = *(v37 + 5);
                  if (v37)
                  {
                    bvc_extractEdgeParameters(v37, 0, v44, v34, 1, &v80 + 1, &v77, &v79);
                  }
                }

                if (v44 >= v47)
                {
                  v38 = *(v38 + 5);
                  if (!v38)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v38, 1, v44, v34, 1, &v80, &v79 + 1, &v78);
                }
              }

              while (v37);
              v50 = v86;
              v51 = v87;
              v52 = *v87 / 2;
              if (v52 <= *v86 / 2)
              {
                v52 = *v86 / 2;
              }

              v53 = v52 + 0x8000;
              v54 = (v52 + 0x8000) >> 16;
              v55 = ((v52 + 0x8000) & 0xFFFF0000) - v67 / 2 + 0x8000;
              v56 = 0x8000 - v69 / 2;
              LODWORD(v81) = ((v82.i32[0] * v55) >> 16) + ((v83.i32[0] * v56) >> 16) - (v82.i32[0] > 0);
              HIDWORD(v81) = ((v83.i32[1] * v56) >> 16) + ((v82.i32[1] * v55) >> 16) - (v82.i32[1] > 0);
              bvc_extractEdgeParameters(v87, 0, v54, v34, 2, &v80 + 1, &v77, &v79);
              bvc_extractEdgeParameters(v50, 1, v53 >> 16, v34, 2, &v80, &v79 + 1, &v78);
              v88 = v70[1] + v75 * (v53 >> 16);
              do
              {
                v58 = v78;
                v59 = v79;
                if (v79 >= v78)
                {
                  v60 = v78;
                }

                else
                {
                  v60 = v79;
                }

                if (v60 > v54)
                {
                  bvc_FullCompositionCbCrInner_420v_420v_arm((v60 - v54), v39, &v88, v75, v73, v74, &v80 + 1, &v80, v57, SLODWORD(v77.a), SHIDWORD(v79), &v81, &v81 + 1, v83.u32[0], v83.u32[1], v82.i32[0], v82.i32[1]);
                  v54 = v60;
                }

                if (v54 >= v59)
                {
                  v51 = *(v51 + 5);
                  if (v51)
                  {
                    bvc_extractEdgeParameters(v51, 0, v54, v34, 2, &v80 + 1, &v77, &v79);
                  }
                }

                if (v54 >= v58)
                {
                  v50 = *(v50 + 5);
                  if (!v50)
                  {
                    break;
                  }

                  bvc_extractEdgeParameters(v50, 1, v54, v34, 2, &v80, &v79 + 1, &v78);
                }
              }

              while (v51);
              v36 = 0;
              v37 = v87;
            }
          }
        }
      }
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    BVCUtilityDestroyEdgeList(v37);
    BVCUtilityDestroyEdgeList(v86);
    return v36;
  }
}

uint64_t bvc_FullCompositionOpaque_ARGB_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15 = *a2;
  v16 = *a3;
  v18 = *a4;
  v17 = a4[1];
  v152 = 0;
  v153 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v149 = 0;
    v148 = 0;
    v27 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v27;
    *&v144.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v144.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v143, 0, sizeof(v143));
      v29 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v29;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v133 = *a1;
      v138 = a1[1];
      v128 = a1[3];
      v115 = a1[4];
      v119 = a1[2];
      v122 = a1[5];
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v144.a, &v151, &v150);
      if (!IsAffineTransformInvertible)
      {
        v31 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v31 = -v151.i32[0];
        }

        v32 = v150.i32[0];
        if (v150.i32[0] < 0)
        {
          v32 = -v150.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v118 = v31;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v149, &v148);
        v33 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v33;
        *&v144.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v144, &v153, &v152, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v34 = v153;
          if (v153)
          {
            v35 = v152;
            if (v152)
            {
              v113 = v17;
              v36 = vcvtd_n_s64_f64(v115 + v119 * 0.0 + v133 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v122 + v128 * 0.0 + v138 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v146 = 0;
              v147 = 0;
              v145 = 0;
              v38 = *v153;
              if (*v153 <= *v152)
              {
                v38 = *v152;
              }

              v111 = v36;
              v112 = v37;
              v39 = 0x8000 - v36;
              v139 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v149.i32[0] * v39) >> 16) - (v148.i32[0] > 0) + ((v148.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v149.i32[1] * v39) >> 16) - (v148.i32[1] > 0) + ((v148.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v153, 0, v43, v118, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v35, 1, v43, v118, 1, &v147 + 1, &v146 + 1, &v145);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v116 = v42;
              v48 = *v42 + v18 * (v139 >> 16);
              do
              {
                v49 = v145;
                v50 = v146;
                if (v146 < v145)
                {
                  v49 = v146;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v129 = v47;
                  v134 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v146);
                  v54 = v147;
                  v55 = v149.i32[0];
                  v56 = v149.i32[1];
                  v57 = v148.i32[0];
                  v58 = v148.i32[1];
                  a_low = LODWORD(v144.a);
                  v120 = HIDWORD(v147);
                  v60 = HIDWORD(v147);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v16 + ((v63 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v62 >> 16) * v15));
                        v65 = *v64;
                        if (*v64)
                        {
                          v66 = (2120 * v65 + 2032 * v64[3] + 20127 * v64[2] + 5983 * v64[1]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v18;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v144.a) = a_low;
                  HIDWORD(v147) = v120 + v53 * v51;
                  v50 = v146;
                  v45 = v49;
                  v47 = v129;
                  v46 = v134;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v130 = v47;
                    v135 = v46;
                    v123 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v118, 1, &v144, &v147, &v146);
                    v45 = v123;
                    v47 = v130;
                    v46 = v135;
                  }
                }

                if (v45 >= v145)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v131 = v47;
                  v136 = v67;
                  v124 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v118, 1, &v147 + 1, &v146 + 1, &v145);
                  v45 = v124;
                  v47 = v131;
                  v46 = v136;
                }
              }

              while (v47 && v46);
              v68 = v148.i32[0] > 0;
              v69 = 2 * v148.i32[0];
              v70 = vadd_s32(v149, v149);
              v149 = v70;
              v71 = v148.i32[1] > 0;
              v72 = 2 * v148.i32[1];
              v148.i32[0] *= 2;
              v148.i32[1] *= 2;
              v73 = v152;
              v74 = v153;
              v75 = *v153 / 2;
              if (v75 <= *v152 / 2)
              {
                v75 = *v152 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v78 = 0x8000 - v111 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v153, 0, (v75 + 0x8000) >> 16, v118, 2, &v144, &v147, &v146);
              v121 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v118, 2, &v147 + 1, &v146 + 1, &v145);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v116[1] + v113 * (v76 >> 16);
              v132 = v113;
              do
              {
                v84 = v145;
                v85 = v146;
                if (v146 < v145)
                {
                  v84 = v146;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v117 = v84;
                  v125 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v146);
                  v140 = v147;
                  v89 = v149.i32[0];
                  v90 = v149.i32[1];
                  v91 = v148.i32[1];
                  v137 = v148.i32[0];
                  v92 = LODWORD(v144.a);
                  v114 = HIDWORD(v147);
                  v93 = HIDWORD(v147);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v16 + ((v98 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v97 >> 16) * v15));
                        v100 = *v99;
                        if (*v99)
                        {
                          v101 = v99[3];
                          v102 = v99[2];
                          v103 = v99[1];
                          v104 = (14392 * v101 + 16512 * v100 - 11093 * v102 - 3298 * v103) >> 15;
                          v105 = (-1317 * v101 + 16512 * v100 - 13073 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v140;
                    v93 += v88;
                    v79 += v137;
                    v80 += v91;
                    v83 += v132;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v144.a) = v92;
                  HIDWORD(v147) = v114 + v88 * v86;
                  v85 = v146;
                  v81 = v117;
                  v82 = v125;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v141 = v81;
                    v126 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v118, 2, &v144, &v147, &v146);
                    v81 = v141;
                    v82 = v126;
                  }
                }

                if (v81 >= v145)
                {
                  IsAffineTransformInvertible = *(v121 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v121 = *(v121 + 5);
                  v127 = v82;
                  v142 = v81;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v81, v118, 2, &v147 + 1, &v146 + 1, &v145);
                  v81 = v142;
                  v82 = v127;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v82 && v121);
            }
          }
        }
      }
    }

    v109 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v153);
    BVCUtilityDestroyEdgeList(v152);
    return v109;
  }
}

uint64_t bvc_FullComposition_ARGB_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v20 = *a2;
  v21 = *a3;
  v23 = *a4;
  v22 = a4[1];
  v155 = 0;
  v156 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v151 = 0;
    v152 = 0;
    v31 = *(a1 + 1);
    *&v146.a = *a1;
    *&v146.c = v31;
    *&v146.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v146.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v145, 0, sizeof(v145));
      v33 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v33;
      *&v146.tx = *(a1 + 2);
      CGAffineTransformInvert(&v145, &v146);
      v132 = *a1;
      v136 = a1[1];
      v127 = a1[3];
      v117 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v34 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v34;
      *&v146.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v146.a, &v154, &v153);
      if (!IsAffineTransformInvertible)
      {
        v35 = v154.i32[0];
        if (v154.i32[0] < 0)
        {
          v35 = -v154.i32[0];
        }

        v36 = v153.i32[0];
        if (v153.i32[0] < 0)
        {
          v36 = -v153.i32[0];
        }

        if (v35 <= v36)
        {
          v35 = v36;
        }

        v119 = v35;
        v146 = v145;
        BVCUtilityGetVectorsFromTransform(&v146.a, &v152, &v151);
        v37 = *(a1 + 1);
        *&v146.a = *a1;
        *&v146.c = v37;
        *&v146.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v146, &v156, &v155, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v38 = v156;
          if (v156)
          {
            v39 = v155;
            if (v155)
            {
              v115 = v22;
              v112 = v23;
              v40 = vcvts_n_s32_f32(a14, 8uLL);
              v41 = vcvtd_n_s64_f64(v117 + v120 * 0.0 + v132 * 0.0, 0x10uLL);
              v42 = vcvtd_n_s64_f64(v123 + v127 * 0.0 + v136 * 0.0, 0x10uLL);
              LODWORD(v146.a) = 0;
              v150 = 0;
              v149 = 0;
              v148 = 0;
              v147 = 0;
              v43 = *v156;
              if (*v156 <= *v155)
              {
                v43 = *v155;
              }

              v113 = v41;
              v114 = v42;
              v44 = 0x8000 - v41;
              v138 = v43 + 0x8000;
              v45 = ((v43 + 0x8000) & 0xFFFF0000) - v42 + 0x8000;
              v46 = ((v152.i32[0] * v44) >> 16) - (v151.i32[0] > 0) + ((v151.i32[0] * v45) >> 16);
              v47 = ((v152.i32[1] * v44) >> 16) - (v151.i32[1] > 0) + ((v151.i32[1] * v45) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v43 + 0x8000) >> 16, v119, 1, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v39, 1, v138 >> 16, v119, 1, &v150, &v148 + 1, &v147);
              v48 = v138 >> 16;
              v49 = v39;
              v50 = v38;
              v51 = *a5 + v112 * (v138 >> 16);
              v52 = (0x10101020000 * (v40 << 8)) >> 48;
              do
              {
                v53 = v147;
                v54 = v148;
                if (v148 < v147)
                {
                  v53 = v148;
                }

                v55 = v53 - v48;
                if (v53 > v48)
                {
                  v128 = v50;
                  v56 = 0;
                  v57 = HIDWORD(v148);
                  v139 = v149;
                  v58 = v152.i32[0];
                  v59 = v152.i32[1];
                  v60 = v151.i32[0];
                  v61 = v151.i32[1];
                  a_low = LODWORD(v146.a);
                  v121 = v150;
                  v63 = v150;
                  do
                  {
                    LODWORD(v64) = a_low >> 16;
                    if (a_low >> 16 < (v63 >> 16))
                    {
                      v64 = v64;
                      v65 = v47 + ((v59 * (a_low & 0xFFFF0000)) >> 16);
                      v66 = v46 + ((v58 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v67 = (v21 + ((v66 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v65 >> 16) * v20));
                        v68 = *v67;
                        if (v52 * v68)
                        {
                          *(v51 + v64) = (((2120 * v68 + 2032 * v67[3] + 20127 * v67[2] + 5983 * v67[1]) >> 15) * v40 + (((0x10000 - v52 * v68) * *(v51 + v64)) >> 8)) >> 8;
                        }

                        v66 += v58;
                        v65 += v59;
                        ++v64;
                      }

                      while (v64 < v63 >> 16);
                    }

                    a_low += v139;
                    v63 += v57;
                    v46 += v60;
                    v47 += v61;
                    v51 += v112;
                    ++v56;
                  }

                  while (v56 != v55);
                  LODWORD(v146.a) = a_low;
                  v150 = v121 + v57 * v55;
                  v54 = v148;
                  v48 = v53;
                  v50 = v128;
                }

                if (v48 >= v54)
                {
                  v50 = *(v50 + 5);
                  if (v50)
                  {
                    v129 = v50;
                    v133 = v49;
                    v140 = v48;
                    bvc_extractEdgeParameters(v50, 0, v48, v119, 1, &v146, &v149, &v148);
                    v48 = v140;
                    v50 = v129;
                    v49 = v133;
                  }
                }

                if (v48 >= v147)
                {
                  v69 = *(v49 + 5);
                  if (!v69)
                  {
                    break;
                  }

                  v130 = v50;
                  v134 = v69;
                  v141 = v48;
                  bvc_extractEdgeParameters(v69, 1, v48, v119, 1, &v150, &v148 + 1, &v147);
                  v48 = v141;
                  v50 = v130;
                  v49 = v134;
                }
              }

              while (v50 && v49);
              v70 = v151.i32[0] > 0;
              v71 = 2 * v151.i32[0];
              v72 = vadd_s32(v152, v152);
              v152 = v72;
              v73 = v151.i32[1] > 0;
              v74 = 2 * v151.i32[1];
              v151.i32[0] *= 2;
              v151.i32[1] *= 2;
              v75 = v156;
              v122 = v155;
              v76 = *v156 / 2;
              if (v76 <= *v155 / 2)
              {
                v76 = *v155 / 2;
              }

              v77 = v76 + 0x8000;
              v78 = (((v76 + 0x8000) & 0xFFFF0000) - v114 / 2 + 0x8000);
              v79 = 0x8000 - v113 / 2;
              v80 = ((v72.i32[0] * v79) >> 16) - v70 + ((v78 * v71) >> 16);
              v81 = ((v72.i32[1] * v79) >> 16) - v73 + ((v78 * v74) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v76 + 0x8000) >> 16, v119, 2, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v122, 1, v77 >> 16, v119, 2, &v150, &v148 + 1, &v147);
              v82 = v77 >> 16;
              v83 = v75;
              v84 = a5[1] + v115 * (v77 >> 16);
              v131 = v115;
              do
              {
                v85 = v147;
                v86 = v148;
                if (v148 < v147)
                {
                  v85 = v148;
                }

                v142 = v85 - v82;
                if (v85 > v82)
                {
                  v118 = v85;
                  v124 = v83;
                  v87 = 0;
                  v88 = HIDWORD(v148);
                  v137 = v149;
                  v89 = v152.i32[0];
                  v90 = v152.i32[1];
                  v91 = v151.i32[1];
                  v135 = v151.i32[0];
                  v92 = LODWORD(v146.a);
                  v116 = v150;
                  v93 = v150;
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v81 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v80 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v21 + ((v98 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v97 >> 16) * v20));
                        v100 = *v99;
                        v101 = v52 * v100;
                        if (v52 * v100)
                        {
                          v102 = v99[3];
                          v103 = v99[2];
                          v104 = v99[1];
                          v105 = 129 * v100;
                          v106 = (14392 * v102 + (v105 << 7) - 11093 * v103 - 3298 * v104) >> 15;
                          v107 = (-1317 * v102 + (v105 << 7) - 13073 * v103 + 14392 * v104) >> 15;
                          v108 = (v84 + v96);
                          v109 = 0x10000 - v101;
                          *v108 = (v106 * v40 + ((v109 * *(v84 + v96)) >> 8)) >> 8;
                          v108[1] = (v107 * v40 + ((v109 * *(v84 + v96 + 1)) >> 8)) >> 8;
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v137;
                    v93 += v88;
                    v80 += v135;
                    v81 += v91;
                    v84 += v131;
                    ++v87;
                  }

                  while (v87 != v142);
                  LODWORD(v146.a) = v92;
                  v150 = v116 + v88 * v142;
                  v86 = v148;
                  v82 = v118;
                  v83 = v124;
                }

                if (v82 >= v86)
                {
                  v83 = *(v83 + 5);
                  if (v83)
                  {
                    v143 = v82;
                    v125 = v83;
                    bvc_extractEdgeParameters(v83, 0, v82, v119, 2, &v146, &v149, &v148);
                    v82 = v143;
                    v83 = v125;
                  }
                }

                if (v82 >= v147)
                {
                  IsAffineTransformInvertible = *(v122 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v126 = v83;
                  v144 = v82;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v82, v119, 2, &v150, &v148 + 1, &v147);
                  v82 = v144;
                  v83 = v126;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v83 && v122);
            }
          }
        }
      }
    }

    v110 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v156);
    BVCUtilityDestroyEdgeList(v155);
    return v110;
  }
}

uint64_t bvc_FullCompositionOpaque_ARGB_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15 = *a2;
  v16 = *a3;
  v18 = *a4;
  v17 = a4[1];
  v152 = 0;
  v153 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v149 = 0;
    v148 = 0;
    v27 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v27;
    *&v144.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v144.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v143, 0, sizeof(v143));
      v29 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v29;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v133 = *a1;
      v138 = a1[1];
      v128 = a1[3];
      v115 = a1[4];
      v119 = a1[2];
      v122 = a1[5];
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v144.a, &v151, &v150);
      if (!IsAffineTransformInvertible)
      {
        v31 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v31 = -v151.i32[0];
        }

        v32 = v150.i32[0];
        if (v150.i32[0] < 0)
        {
          v32 = -v150.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v118 = v31;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v149, &v148);
        v33 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v33;
        *&v144.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v144, &v153, &v152, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v34 = v153;
          if (v153)
          {
            v35 = v152;
            if (v152)
            {
              v113 = v17;
              v36 = vcvtd_n_s64_f64(v115 + v119 * 0.0 + v133 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v122 + v128 * 0.0 + v138 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v146 = 0;
              v147 = 0;
              v145 = 0;
              v38 = *v153;
              if (*v153 <= *v152)
              {
                v38 = *v152;
              }

              v111 = v36;
              v112 = v37;
              v39 = 0x8000 - v36;
              v139 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v149.i32[0] * v39) >> 16) - (v148.i32[0] > 0) + ((v148.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v149.i32[1] * v39) >> 16) - (v148.i32[1] > 0) + ((v148.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v153, 0, v43, v118, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v35, 1, v43, v118, 1, &v147 + 1, &v146 + 1, &v145);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v116 = v42;
              v48 = *v42 + v18 * (v139 >> 16);
              do
              {
                v49 = v145;
                v50 = v146;
                if (v146 < v145)
                {
                  v49 = v146;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v129 = v47;
                  v134 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v146);
                  v54 = v147;
                  v55 = v149.i32[0];
                  v56 = v149.i32[1];
                  v57 = v148.i32[0];
                  v58 = v148.i32[1];
                  a_low = LODWORD(v144.a);
                  v120 = HIDWORD(v147);
                  v60 = HIDWORD(v147);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v16 + ((v63 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v62 >> 16) * v15));
                        v65 = *v64;
                        if (*v64)
                        {
                          v66 = (2120 * v65 + 3219 * v64[3] + 16508 * v64[2] + 8412 * v64[1]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v18;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v144.a) = a_low;
                  HIDWORD(v147) = v120 + v53 * v51;
                  v50 = v146;
                  v45 = v49;
                  v47 = v129;
                  v46 = v134;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v130 = v47;
                    v135 = v46;
                    v123 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v118, 1, &v144, &v147, &v146);
                    v45 = v123;
                    v47 = v130;
                    v46 = v135;
                  }
                }

                if (v45 >= v145)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v131 = v47;
                  v136 = v67;
                  v124 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v118, 1, &v147 + 1, &v146 + 1, &v145);
                  v45 = v124;
                  v47 = v131;
                  v46 = v136;
                }
              }

              while (v47 && v46);
              v68 = v148.i32[0] > 0;
              v69 = 2 * v148.i32[0];
              v70 = vadd_s32(v149, v149);
              v149 = v70;
              v71 = v148.i32[1] > 0;
              v72 = 2 * v148.i32[1];
              v148.i32[0] *= 2;
              v148.i32[1] *= 2;
              v73 = v152;
              v74 = v153;
              v75 = *v153 / 2;
              if (v75 <= *v152 / 2)
              {
                v75 = *v152 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v78 = 0x8000 - v111 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v153, 0, (v75 + 0x8000) >> 16, v118, 2, &v144, &v147, &v146);
              v121 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v118, 2, &v147 + 1, &v146 + 1, &v145);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v116[1] + v113 * (v76 >> 16);
              v132 = v113;
              do
              {
                v84 = v145;
                v85 = v146;
                if (v146 < v145)
                {
                  v84 = v146;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v117 = v84;
                  v125 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v146);
                  v140 = v147;
                  v89 = v149.i32[0];
                  v90 = v149.i32[1];
                  v91 = v148.i32[1];
                  v137 = v148.i32[0];
                  v92 = LODWORD(v144.a);
                  v114 = HIDWORD(v147);
                  v93 = HIDWORD(v147);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v16 + ((v98 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v97 >> 16) * v15));
                        v100 = *v99;
                        if (*v99)
                        {
                          v101 = v99[3];
                          v102 = v99[2];
                          v103 = v99[1];
                          v104 = (14392 * v101 + 16512 * v100 - 9532 * v102 - 4858 * v103) >> 15;
                          v105 = (-2348 * v101 + 16512 * v100 - 12040 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v140;
                    v93 += v88;
                    v79 += v137;
                    v80 += v91;
                    v83 += v132;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v144.a) = v92;
                  HIDWORD(v147) = v114 + v88 * v86;
                  v85 = v146;
                  v81 = v117;
                  v82 = v125;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v141 = v81;
                    v126 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v118, 2, &v144, &v147, &v146);
                    v81 = v141;
                    v82 = v126;
                  }
                }

                if (v81 >= v145)
                {
                  IsAffineTransformInvertible = *(v121 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v121 = *(v121 + 5);
                  v127 = v82;
                  v142 = v81;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v81, v118, 2, &v147 + 1, &v146 + 1, &v145);
                  v81 = v142;
                  v82 = v127;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v82 && v121);
            }
          }
        }
      }
    }

    v109 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v153);
    BVCUtilityDestroyEdgeList(v152);
    return v109;
  }
}

uint64_t bvc_FullComposition_ARGB_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v20 = *a2;
  v21 = *a3;
  v23 = *a4;
  v22 = a4[1];
  v155 = 0;
  v156 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v151 = 0;
    v152 = 0;
    v31 = *(a1 + 1);
    *&v146.a = *a1;
    *&v146.c = v31;
    *&v146.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v146.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v145, 0, sizeof(v145));
      v33 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v33;
      *&v146.tx = *(a1 + 2);
      CGAffineTransformInvert(&v145, &v146);
      v132 = *a1;
      v136 = a1[1];
      v127 = a1[3];
      v117 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v34 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v34;
      *&v146.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v146.a, &v154, &v153);
      if (!IsAffineTransformInvertible)
      {
        v35 = v154.i32[0];
        if (v154.i32[0] < 0)
        {
          v35 = -v154.i32[0];
        }

        v36 = v153.i32[0];
        if (v153.i32[0] < 0)
        {
          v36 = -v153.i32[0];
        }

        if (v35 <= v36)
        {
          v35 = v36;
        }

        v119 = v35;
        v146 = v145;
        BVCUtilityGetVectorsFromTransform(&v146.a, &v152, &v151);
        v37 = *(a1 + 1);
        *&v146.a = *a1;
        *&v146.c = v37;
        *&v146.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v146, &v156, &v155, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v38 = v156;
          if (v156)
          {
            v39 = v155;
            if (v155)
            {
              v115 = v22;
              v112 = v23;
              v40 = vcvts_n_s32_f32(a14, 8uLL);
              v41 = vcvtd_n_s64_f64(v117 + v120 * 0.0 + v132 * 0.0, 0x10uLL);
              v42 = vcvtd_n_s64_f64(v123 + v127 * 0.0 + v136 * 0.0, 0x10uLL);
              LODWORD(v146.a) = 0;
              v150 = 0;
              v149 = 0;
              v148 = 0;
              v147 = 0;
              v43 = *v156;
              if (*v156 <= *v155)
              {
                v43 = *v155;
              }

              v113 = v41;
              v114 = v42;
              v44 = 0x8000 - v41;
              v138 = v43 + 0x8000;
              v45 = ((v43 + 0x8000) & 0xFFFF0000) - v42 + 0x8000;
              v46 = ((v152.i32[0] * v44) >> 16) - (v151.i32[0] > 0) + ((v151.i32[0] * v45) >> 16);
              v47 = ((v152.i32[1] * v44) >> 16) - (v151.i32[1] > 0) + ((v151.i32[1] * v45) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v43 + 0x8000) >> 16, v119, 1, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v39, 1, v138 >> 16, v119, 1, &v150, &v148 + 1, &v147);
              v48 = v138 >> 16;
              v49 = v39;
              v50 = v38;
              v51 = *a5 + v112 * (v138 >> 16);
              v52 = (0x10101020000 * (v40 << 8)) >> 48;
              do
              {
                v53 = v147;
                v54 = v148;
                if (v148 < v147)
                {
                  v53 = v148;
                }

                v55 = v53 - v48;
                if (v53 > v48)
                {
                  v128 = v50;
                  v56 = 0;
                  v57 = HIDWORD(v148);
                  v139 = v149;
                  v58 = v152.i32[0];
                  v59 = v152.i32[1];
                  v60 = v151.i32[0];
                  v61 = v151.i32[1];
                  a_low = LODWORD(v146.a);
                  v121 = v150;
                  v63 = v150;
                  do
                  {
                    LODWORD(v64) = a_low >> 16;
                    if (a_low >> 16 < (v63 >> 16))
                    {
                      v64 = v64;
                      v65 = v47 + ((v59 * (a_low & 0xFFFF0000)) >> 16);
                      v66 = v46 + ((v58 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v67 = (v21 + ((v66 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v65 >> 16) * v20));
                        v68 = *v67;
                        if (v52 * v68)
                        {
                          *(v51 + v64) = (((2120 * v68 + 3219 * v67[3] + 16508 * v67[2] + 8412 * v67[1]) >> 15) * v40 + (((0x10000 - v52 * v68) * *(v51 + v64)) >> 8)) >> 8;
                        }

                        v66 += v58;
                        v65 += v59;
                        ++v64;
                      }

                      while (v64 < v63 >> 16);
                    }

                    a_low += v139;
                    v63 += v57;
                    v46 += v60;
                    v47 += v61;
                    v51 += v112;
                    ++v56;
                  }

                  while (v56 != v55);
                  LODWORD(v146.a) = a_low;
                  v150 = v121 + v57 * v55;
                  v54 = v148;
                  v48 = v53;
                  v50 = v128;
                }

                if (v48 >= v54)
                {
                  v50 = *(v50 + 5);
                  if (v50)
                  {
                    v129 = v50;
                    v133 = v49;
                    v140 = v48;
                    bvc_extractEdgeParameters(v50, 0, v48, v119, 1, &v146, &v149, &v148);
                    v48 = v140;
                    v50 = v129;
                    v49 = v133;
                  }
                }

                if (v48 >= v147)
                {
                  v69 = *(v49 + 5);
                  if (!v69)
                  {
                    break;
                  }

                  v130 = v50;
                  v134 = v69;
                  v141 = v48;
                  bvc_extractEdgeParameters(v69, 1, v48, v119, 1, &v150, &v148 + 1, &v147);
                  v48 = v141;
                  v50 = v130;
                  v49 = v134;
                }
              }

              while (v50 && v49);
              v70 = v151.i32[0] > 0;
              v71 = 2 * v151.i32[0];
              v72 = vadd_s32(v152, v152);
              v152 = v72;
              v73 = v151.i32[1] > 0;
              v74 = 2 * v151.i32[1];
              v151.i32[0] *= 2;
              v151.i32[1] *= 2;
              v75 = v156;
              v122 = v155;
              v76 = *v156 / 2;
              if (v76 <= *v155 / 2)
              {
                v76 = *v155 / 2;
              }

              v77 = v76 + 0x8000;
              v78 = (((v76 + 0x8000) & 0xFFFF0000) - v114 / 2 + 0x8000);
              v79 = 0x8000 - v113 / 2;
              v80 = ((v72.i32[0] * v79) >> 16) - v70 + ((v78 * v71) >> 16);
              v81 = ((v72.i32[1] * v79) >> 16) - v73 + ((v78 * v74) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v76 + 0x8000) >> 16, v119, 2, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v122, 1, v77 >> 16, v119, 2, &v150, &v148 + 1, &v147);
              v82 = v77 >> 16;
              v83 = v75;
              v84 = a5[1] + v115 * (v77 >> 16);
              v131 = v115;
              do
              {
                v85 = v147;
                v86 = v148;
                if (v148 < v147)
                {
                  v85 = v148;
                }

                v142 = v85 - v82;
                if (v85 > v82)
                {
                  v118 = v85;
                  v124 = v83;
                  v87 = 0;
                  v88 = HIDWORD(v148);
                  v137 = v149;
                  v89 = v152.i32[0];
                  v90 = v152.i32[1];
                  v91 = v151.i32[1];
                  v135 = v151.i32[0];
                  v92 = LODWORD(v146.a);
                  v116 = v150;
                  v93 = v150;
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v81 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v80 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v21 + ((v98 >> 14) & 0xFFFFFFFFFFFFFFFCLL) + ((v97 >> 16) * v20));
                        v100 = *v99;
                        v101 = v52 * v100;
                        if (v52 * v100)
                        {
                          v102 = v99[3];
                          v103 = v99[2];
                          v104 = v99[1];
                          v105 = 129 * v100;
                          v106 = (14392 * v102 + (v105 << 7) - 9532 * v103 - 4858 * v104) >> 15;
                          v107 = (-2348 * v102 + (v105 << 7) - 12040 * v103 + 14392 * v104) >> 15;
                          v108 = (v84 + v96);
                          v109 = 0x10000 - v101;
                          *v108 = (v106 * v40 + ((v109 * *(v84 + v96)) >> 8)) >> 8;
                          v108[1] = (v107 * v40 + ((v109 * *(v84 + v96 + 1)) >> 8)) >> 8;
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v137;
                    v93 += v88;
                    v80 += v135;
                    v81 += v91;
                    v84 += v131;
                    ++v87;
                  }

                  while (v87 != v142);
                  LODWORD(v146.a) = v92;
                  v150 = v116 + v88 * v142;
                  v86 = v148;
                  v82 = v118;
                  v83 = v124;
                }

                if (v82 >= v86)
                {
                  v83 = *(v83 + 5);
                  if (v83)
                  {
                    v143 = v82;
                    v125 = v83;
                    bvc_extractEdgeParameters(v83, 0, v82, v119, 2, &v146, &v149, &v148);
                    v82 = v143;
                    v83 = v125;
                  }
                }

                if (v82 >= v147)
                {
                  IsAffineTransformInvertible = *(v122 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v126 = v83;
                  v144 = v82;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v82, v119, 2, &v150, &v148 + 1, &v147);
                  v82 = v144;
                  v83 = v126;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v83 && v122);
            }
          }
        }
      }
    }

    v110 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v156);
    BVCUtilityDestroyEdgeList(v155);
    return v110;
  }
}

uint64_t bvc_FullCompositionOpaque_BGRA_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15 = *a2;
  v16 = *a3;
  v18 = *a4;
  v17 = a4[1];
  v152 = 0;
  v153 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v149 = 0;
    v148 = 0;
    v27 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v27;
    *&v144.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v144.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v143, 0, sizeof(v143));
      v29 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v29;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v133 = *a1;
      v138 = a1[1];
      v128 = a1[3];
      v115 = a1[4];
      v119 = a1[2];
      v122 = a1[5];
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v144.a, &v151, &v150);
      if (!IsAffineTransformInvertible)
      {
        v31 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v31 = -v151.i32[0];
        }

        v32 = v150.i32[0];
        if (v150.i32[0] < 0)
        {
          v32 = -v150.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v118 = v31;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v149, &v148);
        v33 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v33;
        *&v144.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v144, &v153, &v152, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v34 = v153;
          if (v153)
          {
            v35 = v152;
            if (v152)
            {
              v113 = v17;
              v36 = vcvtd_n_s64_f64(v115 + v119 * 0.0 + v133 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v122 + v128 * 0.0 + v138 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v146 = 0;
              v147 = 0;
              v145 = 0;
              v38 = *v153;
              if (*v153 <= *v152)
              {
                v38 = *v152;
              }

              v111 = v36;
              v112 = v37;
              v39 = 0x8000 - v36;
              v139 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v149.i32[0] * v39) >> 16) - (v148.i32[0] > 0) + ((v148.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v149.i32[1] * v39) >> 16) - (v148.i32[1] > 0) + ((v148.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v153, 0, v43, v118, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v35, 1, v43, v118, 1, &v147 + 1, &v146 + 1, &v145);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v116 = v42;
              v48 = *v42 + v18 * (v139 >> 16);
              do
              {
                v49 = v145;
                v50 = v146;
                if (v146 < v145)
                {
                  v49 = v146;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v129 = v47;
                  v134 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v146);
                  v54 = v147;
                  v55 = v149.i32[0];
                  v56 = v149.i32[1];
                  v57 = v148.i32[0];
                  v58 = v148.i32[1];
                  a_low = LODWORD(v144.a);
                  v120 = HIDWORD(v147);
                  v60 = HIDWORD(v147);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v16 + ((v62 >> 16) * v15) + ((v63 >> 14) & 0xFFFFFFFC));
                        v65 = v64[3];
                        if (v64[3])
                        {
                          v66 = (2120 * v65 + 2032 * *v64 + 20127 * v64[1] + 5983 * v64[2]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v18;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v144.a) = a_low;
                  HIDWORD(v147) = v120 + v53 * v51;
                  v50 = v146;
                  v45 = v49;
                  v47 = v129;
                  v46 = v134;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v130 = v47;
                    v135 = v46;
                    v123 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v118, 1, &v144, &v147, &v146);
                    v45 = v123;
                    v47 = v130;
                    v46 = v135;
                  }
                }

                if (v45 >= v145)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v131 = v47;
                  v136 = v67;
                  v124 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v118, 1, &v147 + 1, &v146 + 1, &v145);
                  v45 = v124;
                  v47 = v131;
                  v46 = v136;
                }
              }

              while (v47 && v46);
              v68 = v148.i32[0] > 0;
              v69 = 2 * v148.i32[0];
              v70 = vadd_s32(v149, v149);
              v149 = v70;
              v71 = v148.i32[1] > 0;
              v72 = 2 * v148.i32[1];
              v148.i32[0] *= 2;
              v148.i32[1] *= 2;
              v73 = v152;
              v74 = v153;
              v75 = *v153 / 2;
              if (v75 <= *v152 / 2)
              {
                v75 = *v152 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v78 = 0x8000 - v111 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v153, 0, (v75 + 0x8000) >> 16, v118, 2, &v144, &v147, &v146);
              v121 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v118, 2, &v147 + 1, &v146 + 1, &v145);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v116[1] + v113 * (v76 >> 16);
              v132 = v113;
              do
              {
                v84 = v145;
                v85 = v146;
                if (v146 < v145)
                {
                  v84 = v146;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v117 = v84;
                  v125 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v146);
                  v140 = v147;
                  v89 = v149.i32[0];
                  v90 = v149.i32[1];
                  v91 = v148.i32[1];
                  v137 = v148.i32[0];
                  v92 = LODWORD(v144.a);
                  v114 = HIDWORD(v147);
                  v93 = HIDWORD(v147);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v16 + ((v97 >> 16) * v15) + ((v98 >> 14) & 0xFFFFFFFC));
                        v100 = v99[3];
                        if (v99[3])
                        {
                          v101 = *v99;
                          v102 = v99[1];
                          v103 = v99[2];
                          v104 = (14392 * v101 + 16512 * v100 - 11093 * v102 - 3298 * v103) >> 15;
                          v105 = (-1317 * v101 + 16512 * v100 - 13073 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v140;
                    v93 += v88;
                    v79 += v137;
                    v80 += v91;
                    v83 += v132;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v144.a) = v92;
                  HIDWORD(v147) = v114 + v88 * v86;
                  v85 = v146;
                  v81 = v117;
                  v82 = v125;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v141 = v81;
                    v126 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v118, 2, &v144, &v147, &v146);
                    v81 = v141;
                    v82 = v126;
                  }
                }

                if (v81 >= v145)
                {
                  IsAffineTransformInvertible = *(v121 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v121 = *(v121 + 5);
                  v127 = v82;
                  v142 = v81;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v81, v118, 2, &v147 + 1, &v146 + 1, &v145);
                  v81 = v142;
                  v82 = v127;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v82 && v121);
            }
          }
        }
      }
    }

    v109 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v153);
    BVCUtilityDestroyEdgeList(v152);
    return v109;
  }
}

uint64_t bvc_FullComposition_BGRA_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v20 = *a2;
  v21 = *a3;
  v23 = *a4;
  v22 = a4[1];
  v155 = 0;
  v156 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v151 = 0;
    v152 = 0;
    v31 = *(a1 + 1);
    *&v146.a = *a1;
    *&v146.c = v31;
    *&v146.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v146.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v145, 0, sizeof(v145));
      v33 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v33;
      *&v146.tx = *(a1 + 2);
      CGAffineTransformInvert(&v145, &v146);
      v132 = *a1;
      v136 = a1[1];
      v127 = a1[3];
      v117 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v34 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v34;
      *&v146.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v146.a, &v154, &v153);
      if (!IsAffineTransformInvertible)
      {
        v35 = v154.i32[0];
        if (v154.i32[0] < 0)
        {
          v35 = -v154.i32[0];
        }

        v36 = v153.i32[0];
        if (v153.i32[0] < 0)
        {
          v36 = -v153.i32[0];
        }

        if (v35 <= v36)
        {
          v35 = v36;
        }

        v119 = v35;
        v146 = v145;
        BVCUtilityGetVectorsFromTransform(&v146.a, &v152, &v151);
        v37 = *(a1 + 1);
        *&v146.a = *a1;
        *&v146.c = v37;
        *&v146.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v146, &v156, &v155, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v38 = v156;
          if (v156)
          {
            v39 = v155;
            if (v155)
            {
              v115 = v22;
              v112 = v23;
              v40 = vcvts_n_s32_f32(a14, 8uLL);
              v41 = vcvtd_n_s64_f64(v117 + v120 * 0.0 + v132 * 0.0, 0x10uLL);
              v42 = vcvtd_n_s64_f64(v123 + v127 * 0.0 + v136 * 0.0, 0x10uLL);
              LODWORD(v146.a) = 0;
              v150 = 0;
              v149 = 0;
              v148 = 0;
              v147 = 0;
              v43 = *v156;
              if (*v156 <= *v155)
              {
                v43 = *v155;
              }

              v113 = v41;
              v114 = v42;
              v44 = 0x8000 - v41;
              v138 = v43 + 0x8000;
              v45 = ((v43 + 0x8000) & 0xFFFF0000) - v42 + 0x8000;
              v46 = ((v152.i32[0] * v44) >> 16) - (v151.i32[0] > 0) + ((v151.i32[0] * v45) >> 16);
              v47 = ((v152.i32[1] * v44) >> 16) - (v151.i32[1] > 0) + ((v151.i32[1] * v45) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v43 + 0x8000) >> 16, v119, 1, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v39, 1, v138 >> 16, v119, 1, &v150, &v148 + 1, &v147);
              v48 = v138 >> 16;
              v49 = v39;
              v50 = v38;
              v51 = *a5 + v112 * (v138 >> 16);
              v52 = (0x10101020000 * (v40 << 8)) >> 48;
              do
              {
                v53 = v147;
                v54 = v148;
                if (v148 < v147)
                {
                  v53 = v148;
                }

                v55 = v53 - v48;
                if (v53 > v48)
                {
                  v128 = v50;
                  v56 = 0;
                  v57 = HIDWORD(v148);
                  v139 = v149;
                  v58 = v152.i32[0];
                  v59 = v152.i32[1];
                  v60 = v151.i32[0];
                  v61 = v151.i32[1];
                  a_low = LODWORD(v146.a);
                  v121 = v150;
                  v63 = v150;
                  do
                  {
                    LODWORD(v64) = a_low >> 16;
                    if (a_low >> 16 < (v63 >> 16))
                    {
                      v64 = v64;
                      v65 = v47 + ((v59 * (a_low & 0xFFFF0000)) >> 16);
                      v66 = v46 + ((v58 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v67 = (v21 + ((v65 >> 16) * v20) + ((v66 >> 14) & 0xFFFFFFFC));
                        v68 = v67[3];
                        if (v52 * v68)
                        {
                          *(v51 + v64) = (((2120 * v68 + 2032 * *v67 + 20127 * v67[1] + 5983 * v67[2]) >> 15) * v40 + (((0x10000 - v52 * v68) * *(v51 + v64)) >> 8)) >> 8;
                        }

                        v66 += v58;
                        v65 += v59;
                        ++v64;
                      }

                      while (v64 < v63 >> 16);
                    }

                    a_low += v139;
                    v63 += v57;
                    v46 += v60;
                    v47 += v61;
                    v51 += v112;
                    ++v56;
                  }

                  while (v56 != v55);
                  LODWORD(v146.a) = a_low;
                  v150 = v121 + v57 * v55;
                  v54 = v148;
                  v48 = v53;
                  v50 = v128;
                }

                if (v48 >= v54)
                {
                  v50 = *(v50 + 5);
                  if (v50)
                  {
                    v129 = v50;
                    v133 = v49;
                    v140 = v48;
                    bvc_extractEdgeParameters(v50, 0, v48, v119, 1, &v146, &v149, &v148);
                    v48 = v140;
                    v50 = v129;
                    v49 = v133;
                  }
                }

                if (v48 >= v147)
                {
                  v69 = *(v49 + 5);
                  if (!v69)
                  {
                    break;
                  }

                  v130 = v50;
                  v134 = v69;
                  v141 = v48;
                  bvc_extractEdgeParameters(v69, 1, v48, v119, 1, &v150, &v148 + 1, &v147);
                  v48 = v141;
                  v50 = v130;
                  v49 = v134;
                }
              }

              while (v50 && v49);
              v70 = v151.i32[0] > 0;
              v71 = 2 * v151.i32[0];
              v72 = vadd_s32(v152, v152);
              v152 = v72;
              v73 = v151.i32[1] > 0;
              v74 = 2 * v151.i32[1];
              v151.i32[0] *= 2;
              v151.i32[1] *= 2;
              v75 = v156;
              v122 = v155;
              v76 = *v156 / 2;
              if (v76 <= *v155 / 2)
              {
                v76 = *v155 / 2;
              }

              v77 = v76 + 0x8000;
              v78 = (((v76 + 0x8000) & 0xFFFF0000) - v114 / 2 + 0x8000);
              v79 = 0x8000 - v113 / 2;
              v80 = ((v72.i32[0] * v79) >> 16) - v70 + ((v78 * v71) >> 16);
              v81 = ((v72.i32[1] * v79) >> 16) - v73 + ((v78 * v74) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v76 + 0x8000) >> 16, v119, 2, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v122, 1, v77 >> 16, v119, 2, &v150, &v148 + 1, &v147);
              v82 = v77 >> 16;
              v83 = v75;
              v84 = a5[1] + v115 * (v77 >> 16);
              v131 = v115;
              do
              {
                v85 = v147;
                v86 = v148;
                if (v148 < v147)
                {
                  v85 = v148;
                }

                v142 = v85 - v82;
                if (v85 > v82)
                {
                  v118 = v85;
                  v124 = v83;
                  v87 = 0;
                  v88 = HIDWORD(v148);
                  v137 = v149;
                  v89 = v152.i32[0];
                  v90 = v152.i32[1];
                  v91 = v151.i32[1];
                  v135 = v151.i32[0];
                  v92 = LODWORD(v146.a);
                  v116 = v150;
                  v93 = v150;
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v81 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v80 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v21 + ((v97 >> 16) * v20) + ((v98 >> 14) & 0xFFFFFFFC));
                        v100 = v99[3];
                        v101 = v52 * v100;
                        if (v52 * v100)
                        {
                          v102 = *v99;
                          v103 = v99[1];
                          v104 = v99[2];
                          v105 = 129 * v100;
                          v106 = (14392 * v102 + (v105 << 7) - 11093 * v103 - 3298 * v104) >> 15;
                          v107 = (-1317 * v102 + (v105 << 7) - 13073 * v103 + 14392 * v104) >> 15;
                          v108 = (v84 + v96);
                          v109 = 0x10000 - v101;
                          *v108 = (v106 * v40 + ((v109 * *(v84 + v96)) >> 8)) >> 8;
                          v108[1] = (v107 * v40 + ((v109 * *(v84 + v96 + 1)) >> 8)) >> 8;
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v137;
                    v93 += v88;
                    v80 += v135;
                    v81 += v91;
                    v84 += v131;
                    ++v87;
                  }

                  while (v87 != v142);
                  LODWORD(v146.a) = v92;
                  v150 = v116 + v88 * v142;
                  v86 = v148;
                  v82 = v118;
                  v83 = v124;
                }

                if (v82 >= v86)
                {
                  v83 = *(v83 + 5);
                  if (v83)
                  {
                    v143 = v82;
                    v125 = v83;
                    bvc_extractEdgeParameters(v83, 0, v82, v119, 2, &v146, &v149, &v148);
                    v82 = v143;
                    v83 = v125;
                  }
                }

                if (v82 >= v147)
                {
                  IsAffineTransformInvertible = *(v122 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v126 = v83;
                  v144 = v82;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v82, v119, 2, &v150, &v148 + 1, &v147);
                  v82 = v144;
                  v83 = v126;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v83 && v122);
            }
          }
        }
      }
    }

    v110 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v156);
    BVCUtilityDestroyEdgeList(v155);
    return v110;
  }
}

uint64_t bvc_FullCompositionOpaque_BGRA_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15 = *a2;
  v16 = *a3;
  v18 = *a4;
  v17 = a4[1];
  v152 = 0;
  v153 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v149 = 0;
    v148 = 0;
    v27 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v27;
    *&v144.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v144.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v143, 0, sizeof(v143));
      v29 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v29;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v133 = *a1;
      v138 = a1[1];
      v128 = a1[3];
      v115 = a1[4];
      v119 = a1[2];
      v122 = a1[5];
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v144.a, &v151, &v150);
      if (!IsAffineTransformInvertible)
      {
        v31 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v31 = -v151.i32[0];
        }

        v32 = v150.i32[0];
        if (v150.i32[0] < 0)
        {
          v32 = -v150.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v118 = v31;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v149, &v148);
        v33 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v33;
        *&v144.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v144, &v153, &v152, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v34 = v153;
          if (v153)
          {
            v35 = v152;
            if (v152)
            {
              v113 = v17;
              v36 = vcvtd_n_s64_f64(v115 + v119 * 0.0 + v133 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v122 + v128 * 0.0 + v138 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v146 = 0;
              v147 = 0;
              v145 = 0;
              v38 = *v153;
              if (*v153 <= *v152)
              {
                v38 = *v152;
              }

              v111 = v36;
              v112 = v37;
              v39 = 0x8000 - v36;
              v139 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v149.i32[0] * v39) >> 16) - (v148.i32[0] > 0) + ((v148.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v149.i32[1] * v39) >> 16) - (v148.i32[1] > 0) + ((v148.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v153, 0, v43, v118, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v35, 1, v43, v118, 1, &v147 + 1, &v146 + 1, &v145);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v116 = v42;
              v48 = *v42 + v18 * (v139 >> 16);
              do
              {
                v49 = v145;
                v50 = v146;
                if (v146 < v145)
                {
                  v49 = v146;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v129 = v47;
                  v134 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v146);
                  v54 = v147;
                  v55 = v149.i32[0];
                  v56 = v149.i32[1];
                  v57 = v148.i32[0];
                  v58 = v148.i32[1];
                  a_low = LODWORD(v144.a);
                  v120 = HIDWORD(v147);
                  v60 = HIDWORD(v147);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v16 + ((v62 >> 16) * v15) + ((v63 >> 14) & 0xFFFFFFFC));
                        v65 = v64[3];
                        if (v64[3])
                        {
                          v66 = (2120 * v65 + 3219 * *v64 + 16508 * v64[1] + 8412 * v64[2]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v18;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v144.a) = a_low;
                  HIDWORD(v147) = v120 + v53 * v51;
                  v50 = v146;
                  v45 = v49;
                  v47 = v129;
                  v46 = v134;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v130 = v47;
                    v135 = v46;
                    v123 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v118, 1, &v144, &v147, &v146);
                    v45 = v123;
                    v47 = v130;
                    v46 = v135;
                  }
                }

                if (v45 >= v145)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v131 = v47;
                  v136 = v67;
                  v124 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v118, 1, &v147 + 1, &v146 + 1, &v145);
                  v45 = v124;
                  v47 = v131;
                  v46 = v136;
                }
              }

              while (v47 && v46);
              v68 = v148.i32[0] > 0;
              v69 = 2 * v148.i32[0];
              v70 = vadd_s32(v149, v149);
              v149 = v70;
              v71 = v148.i32[1] > 0;
              v72 = 2 * v148.i32[1];
              v148.i32[0] *= 2;
              v148.i32[1] *= 2;
              v73 = v152;
              v74 = v153;
              v75 = *v153 / 2;
              if (v75 <= *v152 / 2)
              {
                v75 = *v152 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v78 = 0x8000 - v111 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v153, 0, (v75 + 0x8000) >> 16, v118, 2, &v144, &v147, &v146);
              v121 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v118, 2, &v147 + 1, &v146 + 1, &v145);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v116[1] + v113 * (v76 >> 16);
              v132 = v113;
              do
              {
                v84 = v145;
                v85 = v146;
                if (v146 < v145)
                {
                  v84 = v146;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v117 = v84;
                  v125 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v146);
                  v140 = v147;
                  v89 = v149.i32[0];
                  v90 = v149.i32[1];
                  v91 = v148.i32[1];
                  v137 = v148.i32[0];
                  v92 = LODWORD(v144.a);
                  v114 = HIDWORD(v147);
                  v93 = HIDWORD(v147);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v16 + ((v97 >> 16) * v15) + ((v98 >> 14) & 0xFFFFFFFC));
                        v100 = v99[3];
                        if (v99[3])
                        {
                          v101 = *v99;
                          v102 = v99[1];
                          v103 = v99[2];
                          v104 = (14392 * v101 + 16512 * v100 - 9532 * v102 - 4858 * v103) >> 15;
                          v105 = (-2348 * v101 + 16512 * v100 - 12040 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v140;
                    v93 += v88;
                    v79 += v137;
                    v80 += v91;
                    v83 += v132;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v144.a) = v92;
                  HIDWORD(v147) = v114 + v88 * v86;
                  v85 = v146;
                  v81 = v117;
                  v82 = v125;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v141 = v81;
                    v126 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v118, 2, &v144, &v147, &v146);
                    v81 = v141;
                    v82 = v126;
                  }
                }

                if (v81 >= v145)
                {
                  IsAffineTransformInvertible = *(v121 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v121 = *(v121 + 5);
                  v127 = v82;
                  v142 = v81;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v81, v118, 2, &v147 + 1, &v146 + 1, &v145);
                  v81 = v142;
                  v82 = v127;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v82 && v121);
            }
          }
        }
      }
    }

    v109 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v153);
    BVCUtilityDestroyEdgeList(v152);
    return v109;
  }
}

uint64_t bvc_FullComposition_BGRA_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v20 = *a2;
  v21 = *a3;
  v23 = *a4;
  v22 = a4[1];
  v155 = 0;
  v156 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v151 = 0;
    v152 = 0;
    v31 = *(a1 + 1);
    *&v146.a = *a1;
    *&v146.c = v31;
    *&v146.tx = *(a1 + 2);
    IsAffineTransformInvertible = BVCUtilityIsAffineTransformInvertible(&v146.a);
    if (IsAffineTransformInvertible)
    {
      memset(&v145, 0, sizeof(v145));
      v33 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v33;
      *&v146.tx = *(a1 + 2);
      CGAffineTransformInvert(&v145, &v146);
      v132 = *a1;
      v136 = a1[1];
      v127 = a1[3];
      v117 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v34 = *(a1 + 1);
      *&v146.a = *a1;
      *&v146.c = v34;
      *&v146.tx = *(a1 + 2);
      IsAffineTransformInvertible = BVCUtilityGetVectorsFromTransform(&v146.a, &v154, &v153);
      if (!IsAffineTransformInvertible)
      {
        v35 = v154.i32[0];
        if (v154.i32[0] < 0)
        {
          v35 = -v154.i32[0];
        }

        v36 = v153.i32[0];
        if (v153.i32[0] < 0)
        {
          v36 = -v153.i32[0];
        }

        if (v35 <= v36)
        {
          v35 = v36;
        }

        v119 = v35;
        v146 = v145;
        BVCUtilityGetVectorsFromTransform(&v146.a, &v152, &v151);
        v37 = *(a1 + 1);
        *&v146.a = *a1;
        *&v146.c = v37;
        *&v146.tx = *(a1 + 2);
        IsAffineTransformInvertible = BVCUtilityCreateEdgeLists(&v146, &v156, &v155, a6, a7, a8, a9, a10, a11, a12, a13);
        if (!IsAffineTransformInvertible)
        {
          v38 = v156;
          if (v156)
          {
            v39 = v155;
            if (v155)
            {
              v115 = v22;
              v112 = v23;
              v40 = vcvts_n_s32_f32(a14, 8uLL);
              v41 = vcvtd_n_s64_f64(v117 + v120 * 0.0 + v132 * 0.0, 0x10uLL);
              v42 = vcvtd_n_s64_f64(v123 + v127 * 0.0 + v136 * 0.0, 0x10uLL);
              LODWORD(v146.a) = 0;
              v150 = 0;
              v149 = 0;
              v148 = 0;
              v147 = 0;
              v43 = *v156;
              if (*v156 <= *v155)
              {
                v43 = *v155;
              }

              v113 = v41;
              v114 = v42;
              v44 = 0x8000 - v41;
              v138 = v43 + 0x8000;
              v45 = ((v43 + 0x8000) & 0xFFFF0000) - v42 + 0x8000;
              v46 = ((v152.i32[0] * v44) >> 16) - (v151.i32[0] > 0) + ((v151.i32[0] * v45) >> 16);
              v47 = ((v152.i32[1] * v44) >> 16) - (v151.i32[1] > 0) + ((v151.i32[1] * v45) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v43 + 0x8000) >> 16, v119, 1, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v39, 1, v138 >> 16, v119, 1, &v150, &v148 + 1, &v147);
              v48 = v138 >> 16;
              v49 = v39;
              v50 = v38;
              v51 = *a5 + v112 * (v138 >> 16);
              v52 = (0x10101020000 * (v40 << 8)) >> 48;
              do
              {
                v53 = v147;
                v54 = v148;
                if (v148 < v147)
                {
                  v53 = v148;
                }

                v55 = v53 - v48;
                if (v53 > v48)
                {
                  v128 = v50;
                  v56 = 0;
                  v57 = HIDWORD(v148);
                  v139 = v149;
                  v58 = v152.i32[0];
                  v59 = v152.i32[1];
                  v60 = v151.i32[0];
                  v61 = v151.i32[1];
                  a_low = LODWORD(v146.a);
                  v121 = v150;
                  v63 = v150;
                  do
                  {
                    LODWORD(v64) = a_low >> 16;
                    if (a_low >> 16 < (v63 >> 16))
                    {
                      v64 = v64;
                      v65 = v47 + ((v59 * (a_low & 0xFFFF0000)) >> 16);
                      v66 = v46 + ((v58 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v67 = (v21 + ((v65 >> 16) * v20) + ((v66 >> 14) & 0xFFFFFFFC));
                        v68 = v67[3];
                        if (v52 * v68)
                        {
                          *(v51 + v64) = (((2120 * v68 + 3219 * *v67 + 16508 * v67[1] + 8412 * v67[2]) >> 15) * v40 + (((0x10000 - v52 * v68) * *(v51 + v64)) >> 8)) >> 8;
                        }

                        v66 += v58;
                        v65 += v59;
                        ++v64;
                      }

                      while (v64 < v63 >> 16);
                    }

                    a_low += v139;
                    v63 += v57;
                    v46 += v60;
                    v47 += v61;
                    v51 += v112;
                    ++v56;
                  }

                  while (v56 != v55);
                  LODWORD(v146.a) = a_low;
                  v150 = v121 + v57 * v55;
                  v54 = v148;
                  v48 = v53;
                  v50 = v128;
                }

                if (v48 >= v54)
                {
                  v50 = *(v50 + 5);
                  if (v50)
                  {
                    v129 = v50;
                    v133 = v49;
                    v140 = v48;
                    bvc_extractEdgeParameters(v50, 0, v48, v119, 1, &v146, &v149, &v148);
                    v48 = v140;
                    v50 = v129;
                    v49 = v133;
                  }
                }

                if (v48 >= v147)
                {
                  v69 = *(v49 + 5);
                  if (!v69)
                  {
                    break;
                  }

                  v130 = v50;
                  v134 = v69;
                  v141 = v48;
                  bvc_extractEdgeParameters(v69, 1, v48, v119, 1, &v150, &v148 + 1, &v147);
                  v48 = v141;
                  v50 = v130;
                  v49 = v134;
                }
              }

              while (v50 && v49);
              v70 = v151.i32[0] > 0;
              v71 = 2 * v151.i32[0];
              v72 = vadd_s32(v152, v152);
              v152 = v72;
              v73 = v151.i32[1] > 0;
              v74 = 2 * v151.i32[1];
              v151.i32[0] *= 2;
              v151.i32[1] *= 2;
              v75 = v156;
              v122 = v155;
              v76 = *v156 / 2;
              if (v76 <= *v155 / 2)
              {
                v76 = *v155 / 2;
              }

              v77 = v76 + 0x8000;
              v78 = (((v76 + 0x8000) & 0xFFFF0000) - v114 / 2 + 0x8000);
              v79 = 0x8000 - v113 / 2;
              v80 = ((v72.i32[0] * v79) >> 16) - v70 + ((v78 * v71) >> 16);
              v81 = ((v72.i32[1] * v79) >> 16) - v73 + ((v78 * v74) >> 16);
              bvc_extractEdgeParameters(v156, 0, (v76 + 0x8000) >> 16, v119, 2, &v146, &v149, &v148);
              bvc_extractEdgeParameters(v122, 1, v77 >> 16, v119, 2, &v150, &v148 + 1, &v147);
              v82 = v77 >> 16;
              v83 = v75;
              v84 = a5[1] + v115 * (v77 >> 16);
              v131 = v115;
              do
              {
                v85 = v147;
                v86 = v148;
                if (v148 < v147)
                {
                  v85 = v148;
                }

                v142 = v85 - v82;
                if (v85 > v82)
                {
                  v118 = v85;
                  v124 = v83;
                  v87 = 0;
                  v88 = HIDWORD(v148);
                  v137 = v149;
                  v89 = v152.i32[0];
                  v90 = v152.i32[1];
                  v91 = v151.i32[1];
                  v135 = v151.i32[0];
                  v92 = LODWORD(v146.a);
                  v116 = v150;
                  v93 = v150;
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v81 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v80 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v21 + ((v97 >> 16) * v20) + ((v98 >> 14) & 0xFFFFFFFC));
                        v100 = v99[3];
                        v101 = v52 * v100;
                        if (v52 * v100)
                        {
                          v102 = *v99;
                          v103 = v99[1];
                          v104 = v99[2];
                          v105 = 129 * v100;
                          v106 = (14392 * v102 + (v105 << 7) - 9532 * v103 - 4858 * v104) >> 15;
                          v107 = (-2348 * v102 + (v105 << 7) - 12040 * v103 + 14392 * v104) >> 15;
                          v108 = (v84 + v96);
                          v109 = 0x10000 - v101;
                          *v108 = (v106 * v40 + ((v109 * *(v84 + v96)) >> 8)) >> 8;
                          v108[1] = (v107 * v40 + ((v109 * *(v84 + v96 + 1)) >> 8)) >> 8;
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v137;
                    v93 += v88;
                    v80 += v135;
                    v81 += v91;
                    v84 += v131;
                    ++v87;
                  }

                  while (v87 != v142);
                  LODWORD(v146.a) = v92;
                  v150 = v116 + v88 * v142;
                  v86 = v148;
                  v82 = v118;
                  v83 = v124;
                }

                if (v82 >= v86)
                {
                  v83 = *(v83 + 5);
                  if (v83)
                  {
                    v143 = v82;
                    v125 = v83;
                    bvc_extractEdgeParameters(v83, 0, v82, v119, 2, &v146, &v149, &v148);
                    v82 = v143;
                    v83 = v125;
                  }
                }

                if (v82 >= v147)
                {
                  IsAffineTransformInvertible = *(v122 + 5);
                  if (!IsAffineTransformInvertible)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v126 = v83;
                  v144 = v82;
                  bvc_extractEdgeParameters(IsAffineTransformInvertible, 1, v82, v119, 2, &v150, &v148 + 1, &v147);
                  v82 = v144;
                  v83 = v126;
                }

                IsAffineTransformInvertible = 0;
              }

              while (v83 && v122);
            }
          }
        }
      }
    }

    v110 = IsAffineTransformInvertible;
    BVCUtilityDestroyEdgeList(v156);
    BVCUtilityDestroyEdgeList(v155);
    return v110;
  }
}

uint64_t __bvc_blitLayer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 144);
  v14[0] = *(a1 + 128);
  v14[1] = v12;
  v14[2] = *(a1 + 160);
  result = v3(v14, v4, v5, v6, v7, v8, v9, v10, v11, v2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = -12506;
  }

  return result;
}

_DWORD *bvc_extractEdgeParameters(_DWORD *result, int a2, int a3, int a4, int a5, _DWORD *a6, _DWORD *a7, int *a8)
{
  v8 = result[3];
  v9 = result[1];
  v10 = result[2] / a5 + ((v8 * (((a3 << 16) | 0x8000) - *result / a5)) >> 16);
  v12 = v10 + 0x8000;
  v11 = v10 + 0x8000 < 0;
  v13 = -32768 - v10;
  if (!v11)
  {
    v13 = v12;
  }

  v14 = ((a3 + HIWORD(v13)) * a4 + 0xFFFF) >> 16;
  if (v8 >= 0)
  {
    v15 = result[3];
  }

  else
  {
    v15 = -v8;
  }

  if (a2)
  {
    LODWORD(v14) = -v14;
  }

  v16 = v14 + v12;
  if (a2)
  {
    v17 = -(((((v15 + 0xFFFF) >> 16) + 1) * a4 + 0xFFFF) >> 16);
  }

  else
  {
    v17 = ((((v15 + 0xFFFF) >> 16) + 1) * a4 + 0xFFFF) >> 16;
  }

  *a7 = v17 + v8;
  *a6 = v16;
  *a8 = (v9 / a5 + 0x8000) >> 16;
  return result;
}

uint64_t RegisterFigSecureStopManagerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSecureStopManagerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSecureStopManagerGetClassID_sRegisterFigSecureStopManagerTypeOnce, RegisterFigSecureStopManagerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSecureStopManagerCreate(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigSecureStopManagerCreate_cold_4(&v5);
    return v5;
  }

  *a2 = 0;
  MEMORY[0x19A8D3660](&FigSecureStopManagerGetClassID_sRegisterFigSecureStopManagerTypeOnce, RegisterFigSecureStopManagerType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    FigSecureStopManagerCreate_cold_3(&v5);
    return v5;
  }

  return v2;
}

uint64_t __FigSecureStopManagerCopyDefaultRuntimeInstance_block_invoke(void *a1)
{
  result = FigSecureStopManagerCreate(a1[6], (*(a1[5] + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void fssm_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  dispatch_release(*DerivedStorage);
  v3 = *(DerivedStorage + 8);

  dispatch_release(v3);
}

__CFString *fssm_copyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSecureStopManager %p retainCount: %ld allocator: %p>", a1, v4, v5);
  return Mutable;
}

uint64_t fssm_fbo_initialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fssm_fbo_initialize_cold_2();
LABEL_7:
    v8 = v15;
    goto LABEL_4;
  }

  if (!a3)
  {
    fssm_fbo_initialize_cold_1();
    goto LABEL_7;
  }

  v7 = *DerivedStorage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __fssm_fbo_initialize_block_invoke;
  v10[3] = &unk_1E7490FD8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a3;
  v10[7] = a1;
  v10[8] = a2;
  dispatch_sync(v7, v10);
  v8 = *(v12 + 6);
LABEL_4:
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t fssm_fbo_copyRecords(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *DerivedStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fssm_fbo_copyRecords_block_invoke;
    v7[3] = &unk_1E7491000;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    v7[6] = a2;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 6);
  }

  else
  {
    fssm_fbo_copyRecords_cold_1();
    v5 = v12;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fssm_fbo_removeRecords(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fssm_fbo_removeRecords_block_invoke;
    v7[3] = &unk_1E7491028;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    v7[6] = a2;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 6);
  }

  else
  {
    fssm_fbo_removeRecords_cold_1();
    v5 = v12;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fssm_fbo_updateRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a3 | a4))
  {
    fssm_fbo_updateRecord_cold_2();
LABEL_7:
    v17 = v24;
    goto LABEL_4;
  }

  if (!a8)
  {
    fssm_fbo_updateRecord_cold_1();
    goto LABEL_7;
  }

  v16 = *DerivedStorage;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __fssm_fbo_updateRecord_block_invoke;
  v19[3] = &unk_1E7491050;
  v19[4] = &v20;
  v19[5] = DerivedStorage;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = a6;
  v19[11] = a7;
  v19[12] = a8;
  dispatch_sync(v16, v19);
  v17 = *(v21 + 6);
LABEL_4:
  _Block_object_dispose(&v20, 8);
  return v17;
}

uint64_t fssm_fbo_finalizeRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a3 | a4))
  {
    fssm_fbo_finalizeRecord_cold_1();
LABEL_9:
    v16 = v23;
    goto LABEL_5;
  }

  if (!a6)
  {
    fssm_fbo_finalizeRecord_cold_3();
    goto LABEL_9;
  }

  if (!(a4 | a7))
  {
    fssm_fbo_finalizeRecord_cold_2();
    goto LABEL_9;
  }

  v15 = *DerivedStorage;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __fssm_fbo_finalizeRecord_block_invoke;
  v18[3] = &unk_1E7491078;
  v18[4] = &v19;
  v18[5] = DerivedStorage;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  v18[10] = a6;
  v18[11] = a7;
  v18[12] = a1;
  dispatch_sync(v15, v18);
  v16 = *(v20 + 6);
LABEL_5:
  _Block_object_dispose(&v19, 8);
  return v16;
}

void __fssm_fbo_initialize_block_invoke(uint64_t a1)
{
  cf = 0;
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = CFURLCreateFilePathURL(*MEMORY[0x1E695E480], *(a1 + 48), 0);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetAllocator(*(a1 + 56));
    v8 = FigSecureStopArchivistCopyInstance(v7, *(a1 + 64), v6, &cf);
    v9 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v8;
    v10 = *(v9 + 16);
    v11 = cf;
    *(v9 + 16) = cf;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    CFRelease(v6);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    __fssm_fbo_initialize_block_invoke_cold_1(a1);
  }
}

uint64_t OUTLINED_FUNCTION_1_144(uint64_t result)
{
  *v1 = result;
  *(*v2 + 24) = result;
  return result;
}

uint64_t FigServedTrackReaderStateCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a3)
  {
    if (a2)
    {
      if (qword_1ED4CB530 != -1)
      {
        FigServedTrackReaderStateCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v7 = Instance;
        *(Instance + 16) = CFRetain(a2);
        *(v7 + 32) = 1;
        v8 = FigPartialSampleTableOutOfBandObjectRegistryCreate(a1, (v7 + 24));
        if (v8)
        {
          CFRelease(v7);
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        FigServedTrackReaderStateCreate_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      FigServedTrackReaderStateCreate_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    FigServedTrackReaderStateCreate_cold_4(&v12);
    return v12;
  }

  return v8;
}

uint64_t FigServedSampleCursorStateCreate(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (!a3)
  {
    FigServedSampleCursorStateCreate_cold_6(&v15);
    return v15;
  }

  if (!a3[3])
  {
    FigServedSampleCursorStateCreate_cold_5(&v15);
    return v15;
  }

  if (!a4)
  {
    FigServedSampleCursorStateCreate_cold_4(&v15);
    return v15;
  }

  if (qword_1ED4CB550 != -1)
  {
    FigServedSampleCursorStateCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigServedSampleCursorStateCreate_cold_3(&v15);
    return v15;
  }

  v7 = Instance;
  *(Instance + 16) = CFRetain(a3);
  v8 = a3[3];
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v7 + 24) = v8;
  if (FigSampleCursorServer_copyMemoryPool_sOnceToken != -1)
  {
    FigServedSampleCursorStateCreate_cold_2();
  }

  FigSimpleMutexLock();
  if (!FigSampleCursorServer_copyMemoryPool_sSharedMemoryPoolWeakRef || (v9 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = CMMemoryPoolCreate(Mutable);
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v12 = v11;
    v13 = FigSampleCursorServer_copyMemoryPool_sSharedMemoryPoolWeakRef;
    FigSampleCursorServer_copyMemoryPool_sSharedMemoryPoolWeakRef = v11;
    if (v11)
    {
      CFRetain(v11);
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
  }

  FigSimpleMutexUnlock();
  *(v7 + 40) = v9;
  FigXPCServerCopyMemoryOrigin();
  FigXPCServerCopyMemoryRecipient();
  result = 0;
  *(v7 + 32) = 0;
  *a4 = v7;
  return result;
}

void FigSampleCursorServer_SetSampleCursorProperties(uint64_t a1, CFTypeRef cf, int a3, char a4, __int128 *a5, int a6, void *a7)
{
  v8 = a6;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  if (a6)
  {
    if (FigSampleCursorServer_maximumStepsForBuildingPartialSampleTable_maximumStepsForBuildingPartialSampleTableOnce != -1)
    {
      FigSampleCursorServer_SetSampleCursorProperties_cold_1();
    }

    v14 = FigSampleCursorServer_maximumStepsForBuildingPartialSampleTable_maximumStepsForBuildingPartialSampleTable;
    v15 = 20;
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  v16 = CFGetTypeID(cf);
  if (v16 != FigSampleCursorGetTypeID())
  {
    FigSampleCursorServer_SetSampleCursorProperties_cold_2();
    goto LABEL_76;
  }

  if (a3)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      v17 |= 4u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 144))
    {
      v17 |= 8u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      v17 |= 0x10u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 112))
    {
      v17 |= 0x20u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      v17 |= 0x40u;
    }

    xpc_dictionary_set_uint64(a7, "SampleCursorOptionalMethods", v17);
  }

  if (a4)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    bytes = 0u;
    v49 = 0u;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v18)
    {
      if (!v18(cf, &v49 + 8))
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v19)
        {
          if (!v19(cf, &v51))
          {
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v20)
            {
              if (!v20(cf, &bytes))
              {
                v44[0] = 0;
                if (!*(*(CMBaseObjectGetVTable() + 16) + 64) || (v21 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && ((v22 = v21(cf, v44 + 4, v44 + 5, v44, v44 + 6)) == 0 || v22 == -12840))
                {
                  xpc_dictionary_set_data(a7, "SampleCursorSampleTimingInfo", &bytes, 0x48uLL);
                  xpc_dictionary_set_data(a7, "SampleCursorSyncInfo", v44, 8uLL);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_76;
  }

  memset(capacity, 0, sizeof(capacity));
  value = 0;
  v45 = 0;
  if (v14 != 1 && FigSampleCursorServer_maximumStoragePagesForBuildingPartialSampleTable_maximumStoragePagesForBuildingPartialSampleTableOnce != -1)
  {
    FigSampleCursorServer_SetSampleCursorProperties_cold_3();
  }

  if (FigMemoryPoolCreateBlockBuffer() || (v44[0] = 0, v44[1] = FigSampleCursorServer_TranslateByteStream, v44[2] = FigSampleCursorServer_TranslateDataSource, v44[3] = FigSampleCursorServer_TranslateFormatDescription, FigPartialSampleTableRecommendSampleTableFlagsForCursor(1023, cf, &capacity[1])))
  {
LABEL_76:
    Mutable = 0;
    goto LABEL_77;
  }

  v43[0] = a1;
  v43[1] = a7;
  v23 = *(a1 + 16);
  if (!v23)
  {
    v24 = *&capacity[1];
    if ((a4 & 4) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v24 = *&capacity[1];
  if (!*(v23 + 33))
  {
    v24 = *&capacity[1] & 0xFFFFFFFFFFFFFDFFLL;
    *&capacity[1] &= ~0x200uLL;
  }

  if (!*(v23 + 32))
  {
    v24 &= ~1uLL;
    *&capacity[1] = v24;
  }

  if ((a4 & 4) == 0)
  {
LABEL_46:
    v24 &= ~0x200uLL;
    *&capacity[1] = v24;
  }

LABEL_47:
  v25 = *(*(v23 + 16) + 32);
  v26 = a5[1];
  bytes = *a5;
  v49 = v26;
  v50 = a5[2];
  if (FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer(cf, v55, v44, v43, v24, v25, &bytes, v8, v15, v14, &value, capacity, &v45))
  {
    goto LABEL_76;
  }

  if (FigXPCMessageSetBlockBuffer())
  {
    goto LABEL_76;
  }

  xpc_dictionary_set_int64(a7, "SampleCursorSampleIndex", value);
  if (!v45)
  {
    goto LABEL_76;
  }

  *&bytes = 0;
  v27 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity[0], MEMORY[0x1E695E9C0]);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v29 && !v29(cf, &v54))
  {
    v30 = v54;
    v31 = value;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v32)
    {
      v32(v30, -v31, &bytes);
    }

    v33 = bytes + value == 0;
    if (capacity[0] >= 1 && bytes == -value)
    {
      v34 = *MEMORY[0x1E695E738];
      v35 = 1;
      do
      {
        cfa = 0;
        FigBaseObject = FigSampleCursorGetFigBaseObject(v54);
        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v37)
        {
          v37(FigBaseObject, @"SampleDependencyAttributes", v27, &cfa);
        }

        v38 = cfa;
        if (!cfa)
        {
          v38 = v34;
        }

        CFArrayAppendValue(Mutable, v38);
        if (cfa)
        {
          CFRelease(cfa);
        }

        v39 = capacity[0];
        if (v35 >= capacity[0])
        {
          v33 = 1;
        }

        else
        {
          v40 = v54;
          v41 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (v41)
          {
            v41(v40, 1, &bytes);
          }

          v33 = bytes == 1;
          v39 = capacity[0];
        }

        if (v35 >= v39)
        {
          break;
        }

        ++v35;
      }

      while (v33);
    }

    if (v33 && !FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType())
    {
      FigXPCMessageSetBlockBuffer();
    }
  }

LABEL_77:
  if (v55)
  {
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v54)
  {
    CFRelease(v54);
  }
}

uint64_t CreateServedFormatReaderState(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1ED4CB540 != -1)
  {
    CreateServedFormatReaderState_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CreateServedFormatReaderState_cold_3(&v11);
    return v11;
  }

  v5 = Instance;
  v6 = FigSandboxAssertionCreateForPID();
  if (v6)
  {
    v8 = v6;
LABEL_11:
    CFRelease(v5);
    return v8;
  }

  v7 = FigOSTransactionCreate();
  v5[3] = v7;
  if (!v7)
  {
    CreateServedFormatReaderState_cold_2(&v10);
    v8 = v10;
    goto LABEL_11;
  }

  v8 = 0;
  *a3 = v5;
  return v8;
}

uint64_t FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(_xpc_connection_s *a1, uint64_t a2)
{
  v9 = 0;
  pid = xpc_connection_get_pid(a1);
  v4 = CreateServedFormatReaderState(*MEMORY[0x1E695E480], pid, &v9);
  if (v4)
  {
    v7 = v4;
    v6 = v9;
    if (!v9)
    {
      return v7;
    }

LABEL_5:
    CFRelease(v6);
    return v7;
  }

  v5 = mightFormatReaderBlockOnIOWhenStepping(a2);
  v6 = v9;
  v9[32] = v5;
  v7 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
  if (v7)
  {
    goto LABEL_5;
  }

  return v7;
}

BOOL mightFormatReaderBlockOnIOWhenStepping(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v3 = v2 && !v2(FigBaseObject, @"Identifier", *MEMORY[0x1E695E480], &cf) && (FigCFEqual() || FigCFEqual() || FigCFEqual());
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigXPCFormatReaderServerCopyFormatReaderForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == FigFormatReaderGetTypeID())
    {
      return 0;
    }

    FigXPCFormatReaderServerCopyFormatReaderForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigFormatReaderServerStart()
{
  if (!FigServer_IsMediaparserd())
  {
    FigServer_IsMediaplaybackd();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    v2 = FigXPCServerStart();
    CFRelease(v1);
  }

  else
  {
    FigFormatReaderServerStart_cold_1(&v4);
    return v4;
  }

  return v2;
}

uint64_t FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint()
{
  if (FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_sEndpointServer)
  {
    FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_1(&v1);
  }

  else
  {
    FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_2();
  }

  return v1;
}

uint64_t FigXPCFormatReaderServerCopyTrackReaderForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigTrackReaderGetTypeID())
      {
        return 0;
      }
    }

    FigXPCFormatReaderServerCopyTrackReaderForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigXPCFormatReaderServerCopySampleCursorForID(uint64_t a1, void *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    return v3;
  }

  v4 = 0;
  *a2 = 0;
  return v4;
}

uint64_t registerFigServedTrackReaderStateType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB538 = result;
  return result;
}

void *FigServedTrackReaderState_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void FigServedTrackReaderState_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *FigServedTrackReaderState_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigServedTrackReaderState %p>", a1);
  return Mutable;
}

uint64_t __FigServedFormatReaderStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB548 = result;
  return result;
}

void *servedFormatReaderState_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void servedFormatReaderState_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    os_release(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *servedFormatReaderState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigServedFormatReaderState %p", a1);
  return Mutable;
}

uint64_t registerFigServedSampleCursorStateType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB558 = result;
  return result;
}

double FigServedSampleCursorState_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigServedSampleCursorState_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }
}

__CFString *FigServedSampleCursorState_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigServedSampleCursorState %p>", a1);
  return Mutable;
}

uint64_t FigSampleCursorServer_TranslateByteStream(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (FigServer_IsMediaparserd())
  {
    result = FigByteStreamRemoteGetObjectID(a2, &v7);
    if (a3 && !result)
    {
      v6 = v7;
LABEL_7:
      result = 0;
      *a3 = v6;
    }
  }

  else
  {
    if (a3)
    {
      v6 = 0;
      goto LABEL_7;
    }

    return 0;
  }

  return result;
}

uint64_t HandleSampleCursorMessage(int a1, int a2, const void *a3, uint64_t a4, const void *a5, int a6, xpc_object_t xdict, _BYTE *a8)
{
  if (xpc_dictionary_get_uint64(xdict, "SampleCursorSecondSampleCursorID"))
  {
    xpc_dictionary_set_value(xdict, "SampleCursorSecondSampleCursorID", 0);
  }

  if (a1 > 1936159592)
  {
    if (a1 > 1936941670)
    {
      if (a1 > 1936944226)
      {
        if (a1 == 1936944227)
        {

          return HandleSampleCursorCopySampleLocationMessage(a3, a8);
        }

        else
        {
          if (a1 != 1936945268)
          {
            return 4294951138;
          }

          return HandleSampleCursorStepByPresentationTimeMessage(a3, a4, xdict, a8);
        }
      }

      else if (a1 == 1936941671)
      {

        return HandleSampleCursorGetBatchSampleTimingAndSizes(a3, a5, xdict, a8);
      }

      else
      {
        if (a1 != 1936942196)
        {
          return 4294951138;
        }

        return HandleSampleCursorStepByDecodeTimeMessage(a3, a4, xdict, a8);
      }
    }

    else if (a1 > 1936730999)
    {
      if (a1 == 1936731000)
      {

        return HandleSampleCursorStepInPresentationOrderAndReportStepsTakenMessage(a3, a4, xdict, a8);
      }

      else
      {
        if (a1 != 1936941670)
        {
          return 4294951138;
        }

        return HandleSampleCursorCreateSampleBufferMessage(a3, a5);
      }
    }

    else if (a1 == 1936159593)
    {

      return HandleSampleCursorGetSampleSyncInfoMessage(a3, a8);
    }

    else
    {
      if (a1 != 1936159849)
      {
        return 4294951138;
      }

      return HandleSampleCursorGetSampleTimingInfoMessage(a3, a8);
    }
  }

  else if (a1 > 1935896690)
  {
    if (a1 > 1935944567)
    {
      if (a1 == 1935944568)
      {

        return HandleSampleCursorStepInDecodeOrderAndReportStepsTakenMessage(a3, a4, xdict, a8);
      }

      else
      {
        if (a1 != 1935962979)
        {
          return 4294951138;
        }

        return HandleSampleCursorCopyFormatDescriptionMessage(a3);
      }
    }

    else if (a1 == 1935896691)
    {

      return HandleSampleCursorCopyMessage(a2, a3, a4, xdict, a8);
    }

    else
    {
      if (a1 != 1935896697)
      {
        return 4294951138;
      }

      return HandleSampleCursorCopyPropertyMessage(a3);
    }
  }

  else if (a1 > 1935894634)
  {
    if (a1 == 1935894635)
    {

      return HandleSampleCursorCopyChunkDetailsMessage(a3, a8);
    }

    else
    {
      if (a1 != 1935895920)
      {
        return 4294951138;
      }

      return HandleSampleCursorCompareInDecodeOrderMessage(a3, a5, a8);
    }
  }

  else
  {
    if (a1 != 1668492075)
    {
      if (a1 == 1935830628)
      {

        return HandleSampleCursorTestReorderingBoundaryMessage(a3, a5, xdict, a8);
      }

      return 4294951138;
    }

    return HandleSampleCursorMaybeCopyAndStepCursorsThenPerformOperationWithCopiesMessage(a2, a3, a4, a5, a6, xdict, a8);
  }
}

uint64_t HandleSampleCursorCopyPropertyMessage(const void *a1)
{
  v1 = CFGetTypeID(a1);
  if (v1 != FigSampleCursorGetTypeID() || (result = FigXPCMessageCopyCFString(), !result))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleSampleCursorCopyMessage(int a1, CFTypeRef cf, int a3, void *a4, void *a5)
{
  v8 = cf;
  cfa = 0;
  value[0] = 0;
  v18 = 0;
  v10 = CFGetTypeID(cf);
  if (v10 == FigSampleCursorGetTypeID())
  {
    CopySampleCursorAndReturnObjectID(a1, v8, a3, &v18, &cfa, value, v11, v12, v17, v18, cfa, value[0], value[1], value[2], value[3], value[4], value[5], value[6], value[7], value[8], value[9], value[10]);
    v14 = v13;
    if (!v13)
    {
      v15 = FigSampleCursorServer_obtainCacheOption(a4);
      FigSampleCursorServer_SetSampleCursorProperties(cfa, v18, 0, v15, MEMORY[0x1E6960C98], 0, a5);
      xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value[0]);
    }
  }

  else
  {
    fig_log_get_emitter();
    v14 = FigSignalErrorAtGM();
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

uint64_t HandleSampleCursorGetSampleTimingInfoMessage(const void *a1, void *a2)
{
  v4 = *(MEMORY[0x1E6960CF0] + 48);
  v12[1] = *(MEMORY[0x1E6960CF0] + 32);
  v13 = v4;
  v14 = *(MEMORY[0x1E6960CF0] + 64);
  v5 = *(MEMORY[0x1E6960CF0] + 16);
  v11 = *MEMORY[0x1E6960CF0];
  v12[0] = v5;
  v6 = CFGetTypeID(a1);
  if (v6 == FigSampleCursorGetTypeID())
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v7)
    {
      return 4294954514;
    }

    result = v7(a1, v12 + 8);
    if (result)
    {
      return result;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v9)
    {
      return 4294954514;
    }

    result = v9(a1, &v13);
    if (result)
    {
      return result;
    }

    v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v10)
    {
      result = v10(a1, &v11);
      if (!result)
      {
        xpc_dictionary_set_data(a2, "SampleCursorSampleTimingInfo", &v11, 0x48uLL);
        return 0;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleSampleCursorGetSampleSyncInfoMessage(const void *a1, void *a2)
{
  bytes = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v5)
    {
      return 4294954514;
    }

    v6 = v5(a1, &bytes + 4, &bytes + 5, &bytes, &bytes + 6);
    v7 = v6;
    if (v6)
    {
      v8 = v6 == -12840;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      xpc_dictionary_set_data(a2, "SampleCursorSyncInfo", &bytes, 8uLL);
    }

    return v7;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t HandleSampleCursorStepByDecodeTimeMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v8 = CFGetTypeID(a1);
  if (v8 == FigSampleCursorGetTypeID())
  {
    result = FigXPCMessageGetCMTime();
    if (!result)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v10)
      {
        v15 = v13;
        v16 = v14;
        result = v10(a1, &v15);
        if (result)
        {
          v11 = result == -12840;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          xpc_dictionary_set_BOOL(a4, "SampleCursorPositionWasPinned", result == -12840);
          v12 = FigSampleCursorServer_obtainCacheOption(a3);
          FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v12, MEMORY[0x1E6960C98], 0, a4);
          return 0;
        }
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleSampleCursorStepByPresentationTimeMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v8 = CFGetTypeID(a1);
  if (v8 == FigSampleCursorGetTypeID())
  {
    result = FigXPCMessageGetCMTime();
    if (!result)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v10)
      {
        v15 = v13;
        v16 = v14;
        result = v10(a1, &v15);
        if (result)
        {
          v11 = result == -12840;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          xpc_dictionary_set_BOOL(a4, "SampleCursorPositionWasPinned", result == -12840);
          v12 = FigSampleCursorServer_obtainCacheOption(a3);
          FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v12, MEMORY[0x1E6960C98], 0, a4);
          return 0;
        }
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleSampleCursorStepInDecodeOrderAndReportStepsTakenMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v20 = 0;
  v8 = *(MEMORY[0x1E6960C98] + 16);
  v17 = *MEMORY[0x1E6960C98];
  v18 = v8;
  v19 = *(MEMORY[0x1E6960C98] + 32);
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    int64 = xpc_dictionary_get_int64(a3, "SampleCursorStepCount");
    FigXPCMessageGetCMTimeRange();
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v11)
    {
      v12 = v11(a1, int64, &v20);
      if (!v12)
      {
        if (int64 > 0)
        {
          v13 = 1;
        }

        else
        {
          v13 = int64 >> 63;
        }

        v14 = FigSampleCursorServer_obtainCacheOption(a3);
        v16[0] = v17;
        v16[1] = v18;
        v16[2] = v19;
        FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v14, v16, v13, a4);
      }
    }

    else
    {
      v12 = 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
  }

  xpc_dictionary_set_int64(a4, "SampleCursorStepsTaken", v20);
  return v12;
}

uint64_t HandleSampleCursorStepInPresentationOrderAndReportStepsTakenMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v20 = 0;
  v8 = *(MEMORY[0x1E6960C98] + 16);
  v17 = *MEMORY[0x1E6960C98];
  v18 = v8;
  v19 = *(MEMORY[0x1E6960C98] + 32);
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    int64 = xpc_dictionary_get_int64(a3, "SampleCursorStepCount");
    FigXPCMessageGetCMTimeRange();
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v11)
    {
      v12 = v11(a1, int64, &v20);
      if (!v12)
      {
        if (int64 > 0)
        {
          v13 = 1;
        }

        else
        {
          v13 = int64 >> 63;
        }

        v14 = FigSampleCursorServer_obtainCacheOption(a3);
        v16[0] = v17;
        v16[1] = v18;
        v16[2] = v19;
        FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v14, v16, v13, a4);
      }
    }

    else
    {
      v12 = 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
  }

  xpc_dictionary_set_int64(a4, "SampleCursorStepsTaken", v20);
  return v12;
}

uint64_t HandleSampleCursorCompareInDecodeOrderMessage(const void *a1, const void *a2, void *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == FigSampleCursorGetTypeID() && a2 && (v8 = CFGetTypeID(a2), v8 == FigSampleCursorGetTypeID()))
  {
    v9 = *(CMBaseObjectGetVTable() + 16);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(CMBaseObjectGetVTable() + 16);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10 == v12 && *(v10 + 32))
    {
      v13 = (*(v12 + 32))(a1, a2);
    }

    else
    {
      v13 = 0;
    }

    xpc_dictionary_set_int64(a3, "SampleCursorComparisonResult", v13);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t HandleSampleCursorTestReorderingBoundaryMessage(const void *a1, const void *a2, void *a3, void *a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 == FigSampleCursorGetTypeID() && a2 && (v10 = CFGetTypeID(a2), v10 == FigSampleCursorGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a3, "SampleCursorReorderingBoundary");
    v12 = *(CMBaseObjectGetVTable() + 16);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 == *(CMBaseObjectGetVTable() + 16) && (v15 = *(v13 + 80)) != 0 && v15(a1, a2, int64) != 0;
    xpc_dictionary_set_BOOL(a4, "SampleCursorTestReorderingBoundaryResult", v14);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t HandleSampleCursorCopySampleLocationMessage(const void *a1, void *a2)
{
  cf = 0;
  v14 = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v11 = 0;
  v12 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v5)
  {
    v7 = 4294954514;
    goto LABEL_10;
  }

  v6 = v5(a1, &v11, &v12, &v14, &cf);
  if (v6)
  {
LABEL_19:
    v7 = v6;
    goto LABEL_10;
  }

  xpc_dictionary_set_data(a2, "SampleCursorSampleStorageRange", &v11, 0x10uLL);
  if (v14)
  {
    if (!cf)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf);
      }
    }
  }

  else if (!cf)
  {
    return 0;
  }

  FigXPCMessageSetCFURL();
  v7 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

uint64_t HandleSampleCursorCopyChunkDetailsMessage(const void *a1, void *a2)
{
  v16 = 0;
  v17 = 0;
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  bytes = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v5)
  {
    v7 = 4294954514;
    goto LABEL_10;
  }

  v6 = v5(a1, &v16, &cf, &bytes, &v14, &v11, &v17, &v12, &v12 + 1, &v12 + 2);
  if (v6)
  {
LABEL_19:
    v7 = v6;
    goto LABEL_10;
  }

  xpc_dictionary_set_data(a2, "SampleCursorSampleStorageRange", &bytes, 0x10uLL);
  xpc_dictionary_set_data(a2, "SampleCursorChunkInfo", &v11, 0x10uLL);
  xpc_dictionary_set_int64(a2, "SampleCursorSampleIndex", v17);
  if (v16)
  {
    if (!cf)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf);
      }
    }
  }

  else if (!cf)
  {
    return 0;
  }

  FigXPCMessageSetCFURL();
  v7 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v7;
}

uint64_t HandleSampleCursorCopyFormatDescriptionMessage(const void *a1)
{
  cf = 0;
  v2 = CFGetTypeID(a1);
  if (v2 == FigSampleCursorGetTypeID())
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (!v3)
    {
      return 4294954514;
    }

    v4 = v3(a1, &cf);
    v5 = cf;
    if (v4)
    {
      v6 = v4;
      if (!cf)
      {
        return v6;
      }
    }

    else
    {
      v6 = FigXPCMessageSetFormatDescription();
      v5 = cf;
      if (!cf)
      {
        return v6;
      }
    }

    CFRelease(v5);
    return v6;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t HandleSampleCursorCreateSampleBufferMessage(const void *a1, uint64_t a2)
{
  theBuffer = 0;
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    SerializedAtomDataBlockBufferForSampleBuffer = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v5)
  {
    SerializedAtomDataBlockBufferForSampleBuffer = v5(a1, a2, &cf);
    if (SerializedAtomDataBlockBufferForSampleBuffer)
    {
      goto LABEL_11;
    }

    v7 = *MEMORY[0x1E695E480];
    SerializedAtomDataBlockBufferForSampleBuffer = FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer();
    if (SerializedAtomDataBlockBufferForSampleBuffer)
    {
      goto LABEL_11;
    }

    if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
    {
      blockBufferOut = 0;
      SerializedAtomDataBlockBufferForSampleBuffer = CMBlockBufferCreateContiguous(v7, theBuffer, v7, 0, 0, 0, 0, &blockBufferOut);
      if (SerializedAtomDataBlockBufferForSampleBuffer)
      {
LABEL_11:
        v8 = SerializedAtomDataBlockBufferForSampleBuffer;
        goto LABEL_13;
      }

      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      theBuffer = blockBufferOut;
    }

    SerializedAtomDataBlockBufferForSampleBuffer = FigXPCMessageSetBlockBuffer();
    goto LABEL_11;
  }

  v8 = 4294954514;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v8;
}

uint64_t HandleSampleCursorGetBatchSampleTimingAndSizes(const void *a1, const void *a2, void *a3, void *a4)
{
  dataPointerOut = 0;
  v26 = 0;
  blockBufferOut = 0;
  theBuffer = 0;
  value = 0;
  v22 = 0;
  v20 = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != FigSampleCursorGetTypeID() || a2 && (v9 = CFGetTypeID(a2), v9 != FigSampleCursorGetTypeID()))
  {
    fig_log_get_emitter();
    goto LABEL_39;
  }

  int64 = xpc_dictionary_get_int64(a3, "SampleCursorBatchMaxSamplesToInclude");
  v11 = xpc_dictionary_get_BOOL(a3, "SampleCursorBatchRequiresSampleSizeEntries");
  if (xpc_dictionary_get_BOOL(a3, "SampleCursorBatchRequiresSampleTimingEntries"))
  {
    v12 = &v20;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    p_value = &value;
  }

  else
  {
    p_value = 0;
  }

  BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, int64, a2, 0, v12, 0, p_value, 0);
  if (BatchSampleTimingAndSizes)
  {
    goto LABEL_40;
  }

  v15 = v20;
  if (v20 > int64 || value > int64)
  {
    fig_log_get_emitter();
LABEL_39:
    BatchSampleTimingAndSizes = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  v16 = MEMORY[0x1E695E480];
  if (value)
  {
    BatchSampleTimingAndSizes = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8 * value, *MEMORY[0x1E695E480], 0, 0, 8 * value, 1u, &theBuffer);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_40;
    }

    BatchSampleTimingAndSizes = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_40;
    }

    v15 = v20;
  }

  if (v15)
  {
    BatchSampleTimingAndSizes = CMBlockBufferCreateWithMemoryBlock(*v16, 0, 72 * v15, *v16, 0, 0, 72 * v15, 1u, &blockBufferOut);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_40;
    }

    BatchSampleTimingAndSizes = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v26);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_40;
    }

    v17 = v26;
  }

  else
  {
    v17 = 0;
  }

  BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, int64, a2, &v22, v12, v17, p_value, dataPointerOut);
  if (!BatchSampleTimingAndSizes)
  {
    if (theBuffer)
    {
      BatchSampleTimingAndSizes = FigXPCMessageSetBlockBuffer();
      if (BatchSampleTimingAndSizes)
      {
        goto LABEL_40;
      }

      xpc_dictionary_set_int64(a4, "SampleCursorBatchNumSampleSizeEntries", value);
    }

    if (!blockBufferOut)
    {
LABEL_29:
      xpc_dictionary_set_int64(a4, "SampleCursorBatchNumSamplesIncluded", v22);
      v18 = 0;
      goto LABEL_30;
    }

    BatchSampleTimingAndSizes = FigXPCMessageSetBlockBuffer();
    if (!BatchSampleTimingAndSizes)
    {
      xpc_dictionary_set_int64(a4, "SampleCursorBatchNumSampleTimingEntries", v20);
      goto LABEL_29;
    }
  }

LABEL_40:
  v18 = BatchSampleTimingAndSizes;
LABEL_30:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v18;
}

uint64_t HandleSampleCursorMaybeCopyAndStepCursorsThenPerformOperationWithCopiesMessage(int a1, CFTypeRef cf, int a3, CFTypeRef a4, int a5, void *a6, _BYTE *a7)
{
  xdict = a7;
  v12 = cf;
  v37 = 0;
  cfa = 0;
  v35 = 0;
  value = 0;
  v14 = CFGetTypeID(cf);
  if (v14 != FigSampleCursorGetTypeID())
  {
    goto LABEL_31;
  }

  v15 = xpc_dictionary_get_BOOL(a6, "SampleCursorCursorMustCopy");
  int64 = xpc_dictionary_get_int64(a6, "SampleCursorMatchCacheSteps");
  v32 = v7;
  if (!a4)
  {
    v21 = 0;
    v22 = 1;
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v19 = CFGetTypeID(a4);
  if (v19 != FigSampleCursorGetTypeID())
  {
LABEL_31:
    fig_log_get_emitter();
LABEL_36:
    v24 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  v20 = xpc_dictionary_get_BOOL(a6, "SampleCursorSecondCursorMustCopy");
  v21 = xpc_dictionary_get_int64(a6, "SampleCursorSecondCursorMatchCacheSteps");
  v22 = !v20;
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_25:
  CopySampleCursorAndReturnObjectID(a1, v12, a3, &cfa, &v34, &value, v16, v17, v31, v7, xdict, 0, v35, value, v37, cfa, v39, v40, v41, v42, v43, v44);
  if (v24)
  {
    goto LABEL_37;
  }

  xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69615A0], value);
  v12 = cfa;
  a3 = v34;
  if (v34)
  {
    CFRelease(v34);
  }

LABEL_7:
  if ((v22 & 1) == 0)
  {
    CopySampleCursorAndReturnObjectID(a1, a4, a5, &v37, &v34, &v35, v16, v17, v31, v32, xdict, 0, v35, value, v37, cfa, v39, v40, v41, v42, v43, v44);
    if (v24)
    {
      goto LABEL_37;
    }

    xpc_dictionary_set_uint64(xdict, "SampleCursorSecondSampleCursorID", v35);
    a4 = v37;
    a5 = v34;
    if (v34)
    {
      CFRelease(v34);
    }
  }

  if (int64)
  {
    v34 = 0;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = v23(v12, int64, &v34);
    if (v24)
    {
LABEL_37:
      v27 = v24;
      goto LABEL_20;
    }

    if (int64 != v34)
    {
      goto LABEL_35;
    }
  }

  if (!v21)
  {
    goto LABEL_16;
  }

  v34 = 0;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v25)
  {
LABEL_19:
    v27 = 4294954514;
    goto LABEL_20;
  }

  v24 = v25(a4, v21, &v34);
  if (v24)
  {
    goto LABEL_37;
  }

  if (v21 != v34)
  {
LABEL_35:
    fig_log_get_emitter();
    goto LABEL_36;
  }

LABEL_16:
  v26 = xpc_dictionary_get_value(a6, "SampleCursorAdditionalOperation");
  v27 = v26;
  if (v26)
  {
    uint64 = xpc_dictionary_get_uint64(v26, *MEMORY[0x1E69615A8]);
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      HandleSampleCursorMessage(uint64, a1, v12, a3, a4, a5, v27);
      FigXPCMessageSetOSStatus();
      xpc_dictionary_set_value(xdict, "SampleCursorAdditionalReply", empty);
      v27 = 0;
    }

    else
    {
      fig_log_get_emitter();
      v27 = FigSignalErrorAtGM();
    }
  }

LABEL_20:
  FigXPCRelease();
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v27;
}

uint64_t FigSampleCursorServer_obtainCacheOption(void *a1)
{
  v1 = xpc_dictionary_get_BOOL(a1, "UseSimpleCache");
  if (FigSampleCursorServer_shouldCacheMinimumUpcomingPTSInPartialSampleTable_shouldCacheMinimumUpcomingPTSInPartialSampleTableOnce != -1)
  {
    FigSampleCursorServer_obtainCacheOption_cold_1();
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (FigSampleCursorServer_shouldCacheMinimumUpcomingPTSInPartialSampleTable_shouldCacheMinimumUpcomingPTSInPartialSampleTable)
  {
    return v2 | 4;
  }

  else
  {
    return v2;
  }
}

uint64_t HandleEditCursorStepMessage(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == FigEditCursorGetTypeID())
  {
    int64 = xpc_dictionary_get_int64(a2, "EditCursorStepCount");
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {

      return v6(a1, int64);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    HandleEditCursorStepMessage_cold_1(&v8);
    return v8;
  }
}

uint64_t HandleSampleCursorCopyPropertyFromEventLink(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  cf = 0;
  v6 = CFGetTypeID(a1);
  if (v6 != FigSampleCursorGetTypeID())
  {
    HandleSampleCursorCopyPropertyFromEventLink_cold_1(&v12);
    return v12;
  }

  v7 = *(a3 + 336);
  if (v7 > a4)
  {
    HandleSampleCursorCopyPropertyFromEventLink_cold_3(&v12);
    return v12;
  }

  if (!v7 || (v8 = FigInMemoryDeserializerCopyCFString(), !v8))
  {
    HandleSampleCursorCopyPropertyFromEventLink_cold_2(&v12);
    return v12;
  }

  return v8;
}

uint64_t HandleSampleCursorGetSampleSyncInfoFromEventLink(const void *a1, uint64_t a2)
{
  v8 = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v5)
    {
      result = v5(a1, &v8 + 4, &v8 + 5, &v8, &v8 + 6);
      if (result)
      {
        v7 = result == -12840;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        *(a2 + 336) = v8;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    HandleSampleCursorGetSampleSyncInfoFromEventLink_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t HandleSampleCursorCompareInDecodeOrderFromEventLink(const void *a1, const void *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == FigSampleCursorGetTypeID())
  {
    if (a2 && (v8 = CFGetTypeID(a2), v8 == FigSampleCursorGetTypeID()))
    {
      v9 = *(CMBaseObjectGetVTable() + 16);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(CMBaseObjectGetVTable() + 16);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v10 == v12 && *(v10 + 32))
      {
        v13 = (*(v12 + 32))(a1, a2);
      }

      else
      {
        v13 = 0;
      }

      result = 0;
      *(a3 + 336) = v13;
    }

    else
    {
      HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t HandleSampleCursorTestReorderingBoundaryFromEventLink(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 == FigSampleCursorGetTypeID())
  {
    if (a2 && (v10 = CFGetTypeID(a2), v10 == FigSampleCursorGetTypeID()))
    {
      v11 = *(a3 + 336);
      v12 = *(CMBaseObjectGetVTable() + 16);
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == *(CMBaseObjectGetVTable() + 16))
      {
        v14 = *(v13 + 80);
        if (v14)
        {
          LOBYTE(v14) = v14(a1, a2, v11);
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      result = 0;
      *(a4 + 336) = v14;
    }

    else
    {
      HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_1(&v15);
    return v15;
  }

  return result;
}

uint64_t FigSampleCursorServer_TranslateDataSourceFromEventLink(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v12 = 0;
  v13 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

  v11 = 0;
  result = FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(*(a1 + 24), @"DataSourceURL", a3, &v13, &v11);
  if (result)
  {
    return result;
  }

  if (!v13)
  {
    FigSampleCursorServer_TranslateDataSourceFromEventLink_cold_1(&v14);
    return v14;
  }

  if (v11)
  {
    result = FigInMemorySerializerAppendCFURL();
    if (result)
    {
      return result;
    }

LABEL_6:
    if (!a7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (a7)
  {
LABEL_7:
    *a7 = v13;
  }

LABEL_8:
  result = 0;
  if (a8)
  {
    *a8 = v12;
  }

  return result;
}

CFTypeID OUTLINED_FUNCTION_17_35(int a1, CFTypeRef cf, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return FigXPCServerAssociateObjectWithConnection();
}

CFTypeID OUTLINED_FUNCTION_27_24(int a1, CFTypeRef cf, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20)
{

  return CFGetTypeID(cf);
}

void OUTLINED_FUNCTION_28_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t value)
{
  *(v27 - 96) = 0;

  xpc_dictionary_set_uint64(v25, v26, value);
}

uint64_t OUTLINED_FUNCTION_30_22()
{

  return FigXPCServerAssociateObjectWithConnectionWithFlags();
}

void OUTLINED_FUNCTION_31_24(uint64_t a1, const void *a2, uint64_t a3, char a4, __int128 *a5)
{

  FigSampleCursorServer_SetSampleCursorProperties(a1, a2, 1, a4, a5, 0, v5);
}

void OUTLINED_FUNCTION_35_17(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  *(v7 + 336) = v9 == a1;

  FigSampleCursorServer_SetSampleCursorPropertiesFromEventLink(a6, v8, a7, v7);
}

uint64_t OUTLINED_FUNCTION_36_23()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_42_21()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_43_18()
{

  return FigXPCServerAssociateCopiedObjectWithConnection();
}

uint64_t OUTLINED_FUNCTION_56_15(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{

  return FigSampleCursorServer_TranslateDataSourceFromEventLink(v10, a2, a3, v9, 0, v8, a7, a8);
}

void OUTLINED_FUNCTION_57_12(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t value)
{

  xpc_dictionary_set_uint64(v10, a2, value);
}

uint64_t OUTLINED_FUNCTION_58_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return FigServedSampleCursorStateCreate(a1, v4, v5, a4);
}

void OUTLINED_FUNCTION_59_13()
{

  bzero((v0 + 24), 0x130uLL);
}

CFTypeID OUTLINED_FUNCTION_60_13(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t FigRemote_CreateEditArrayData(size_t a1, uint64_t a2, const __CFAllocator *a3, __CFData **a4)
{
  v7 = a1;
  v8 = malloc_type_calloc(a1, 8uLL, 0x6004044C4A2DFuLL);
  usedBufLen = 0;
  if (v8)
  {
    v9 = v8;
    if (v7 >= 1)
    {
      v33 = a4;
      v10 = 0;
      v11 = (a2 + 96);
      v12 = v8;
      v13 = v7;
      while (1)
      {
        if (*v11)
        {
          v14 = CFURLCopyAbsoluteURL(*v11);
          *v12 = v14;
          if (!v14)
          {
            FigRemote_CreateEditArrayData_cold_1(&v34);
            goto LABEL_25;
          }

          v15 = CFURLGetString(v14);
          v39.length = CFStringGetLength(v15);
          v39.location = 0;
          CFStringGetBytes(v15, v39, 0x8000100u, 0x2Au, 0, 0, 0, &usedBufLen);
          v10 += usedBufLen + (-usedBufLen & 3);
        }

        ++v12;
        v11 = (v11 + 108);
        if (!--v13)
        {
          Mutable = CFDataCreateMutable(a3, v10 + 104 * v7);
          CFDataSetLength(Mutable, v10 + 104 * v7);
          if (Mutable)
          {
            MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
            v18 = (a2 + 104);
            v19 = v9;
            v20 = v7;
            do
            {
              *v37 = *(v18 - 5);
              v36 = *(v18 - 14);
              *&v37[24] = *(v18 - 2);
              *&v37[8] = *(v18 - 2);
              v34 = *(v18 - 26);
              v21 = v34;
              *v35 = *(v18 - 11);
              *&v35[24] = *(v18 - 8);
              *&v35[8] = *(v18 - 5);
              v23 = *v37;
              v22 = *&v37[16];
              v24 = v36;
              *(MutableBytePtr + 2) = *&v35[16];
              *(MutableBytePtr + 3) = v24;
              *(MutableBytePtr + 4) = v23;
              *(MutableBytePtr + 5) = v22;
              v25 = *v35;
              *MutableBytePtr = v21;
              *(MutableBytePtr + 1) = v25;
              if (*(v18 - 1))
              {
                v26 = CFURLGetString(*v19);
                v40.length = CFStringGetLength(v26);
                v40.location = 0;
                CFStringGetBytes(v26, v40, 0x8000100u, 0x2Au, 0, 0, 0, &usedBufLen);
                *(MutableBytePtr + 24) = usedBufLen;
                v27 = MutableBytePtr + 100;
                v41.length = CFStringGetLength(v26);
                v41.location = 0;
                CFStringGetBytes(v26, v41, 0x8000100u, 0x2Au, 0, v27, usedBufLen, 0);
                v28 = &v27[usedBufLen + (-usedBufLen & 3)];
              }

              else
              {
                *(MutableBytePtr + 24) = 0;
                v28 = MutableBytePtr + 100;
              }

              v29 = *v18;
              v18 += 27;
              *v28 = v29;
              MutableBytePtr = v28 + 4;
              ++v19;
              --v20;
            }

            while (v20);
            a4 = v33;
            goto LABEL_16;
          }

          FigRemote_CreateEditArrayData_cold_2(&v34);
LABEL_25:
          v30 = v34;
          goto LABEL_17;
        }
      }
    }

    Mutable = 0;
LABEL_16:
    v30 = 0;
    *a4 = Mutable;
LABEL_17:
    if (v7 >= 1)
    {
      v31 = v9;
      do
      {
        if (*v31)
        {
          CFRelease(*v31);
        }

        ++v31;
        --v7;
      }

      while (v7);
    }

    free(v9);
  }

  else
  {
    FigRemote_CreateEditArrayData_cold_3(&v34);
    return v34;
  }

  return v30;
}

uint64_t FigMutableCompositionClientServer_CreateFlattenedFormatDescriptionReplacementTable(void *a1, __CFArray **a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        v6 = Count;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2 * Count, MEMORY[0x1E695E9C0]);
        if (v6 < 1)
        {
LABEL_11:
          v16 = 0;
          *a2 = Mutable;
        }

        else
        {
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
            if (!ValueAtIndex)
            {
              break;
            }

            v10 = ValueAtIndex;
            v11 = CFGetTypeID(ValueAtIndex);
            if (v11 != CFDictionaryGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription");
            if (!Value)
            {
              break;
            }

            v13 = Value;
            v14 = CFDictionaryGetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription");
            if (!v14)
            {
              break;
            }

            v15 = v14;
            CFArrayAppendValue(Mutable, v13);
            CFArrayAppendValue(Mutable, v15);
            if (v6 == ++v8)
            {
              goto LABEL_11;
            }
          }

          v16 = FigSignalErrorAtGM();
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }

      else
      {
        *a2 = a1;
        CFRetain(a1);
        return 0;
      }
    }

    else
    {
      FigMutableCompositionClientServer_CreateFlattenedFormatDescriptionReplacementTable_cold_1(&v18);
      return v18;
    }
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  return v16;
}

const __CFArray *FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable(const __CFArray *result, const __CFArray **a2)
{
  if (!result)
  {
    *a2 = 0;
    return result;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  if (v4 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(v3))
    {
      FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_2(&v15);
      return v15;
    }

    else
    {
      Count = CFArrayGetCount(v3);
      if ((Count + 1) <= 2)
      {
        *a2 = v3;
        CFRetain(v3);
        return 0;
      }

      v6 = Count;
      v7 = Count / 2;
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count / 2, MEMORY[0x1E695E9C0]);
      if (v6 > 1)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v11 - 1);
          v13 = CFArrayGetValueAtIndex(v3, v11);
          if (v10)
          {
            CFRelease(v10);
          }

          v10 = CFDictionaryCreateMutable(v8, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription", ValueAtIndex);
          CFDictionarySetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription", v13);
          CFArrayAppendValue(Mutable, v10);
          v11 += 2;
          --v7;
        }

        while (v7);
        *a2 = Mutable;
        if (v10)
        {
          CFRelease(v10);
        }

        return 0;
      }

      result = 0;
      *a2 = Mutable;
    }
  }

  else
  {
    FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_1(&v14);
    return v14;
  }

  return result;
}