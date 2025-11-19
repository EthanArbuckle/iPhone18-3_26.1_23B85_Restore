uint64_t VTVideoEncoderSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t VTCompressionSessionCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!a1)
  {
    VTCompressionSessionCopyProperty_cold_2(&v28);
    return v28;
  }

  if (*(a1 + 16) == 2)
  {
    VTCompressionSessionCopyProperty_cold_1(&v28);
    return v28;
  }

  v8 = *(a1 + 24);
  if (v8)
  {

    return VTCompressionSessionRemote_CopyProperty(v8);
  }

  if (*(a1 + 850) && vtCompressionSessionIsPropertyHandledByRateControl(a1, a2))
  {
    v10 = *(a1 + 856);

    return VTRateControlSessionCopyProperty(v10, a2, a3, a4);
  }

  if (!vtCompressionSessionIsPropertyHandledByVideoToolbox(a2))
  {
    if (!vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, a2))
    {
      return 4294954396;
    }

    v11 = *(a1 + 472);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v12)
    {
      return 4294954514;
    }

    return v12(v11, a2, a3, a4);
  }

  if (CFEqual(@"NumberOfPendingFrames", a2))
  {
    FigSimpleMutexLock();
    *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a1 + 120));
LABEL_24:
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(@"PixelBufferPoolIsShared", a2))
  {
    FigSimpleMutexLock();
    v14 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, 0, 0);
    FigSimpleMutexUnlock();
    if (v14)
    {
      return v14;
    }

    if (*(a1 + 528) == *(a1 + 536))
    {
      v16 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    v17 = CFRetain(*v16);
LABEL_60:
    *a4 = v17;
    return v14;
  }

  if (CFEqual(@"VideoEncoderPixelBufferAttributes", a2))
  {
    FigSimpleMutexLock();
    v13 = *(a1 + 512);
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a4 = CFRetain(v13);
    goto LABEL_24;
  }

  if (CFEqual(@"PoolPixelBufferAttributesSeed", a2))
  {
    FigSimpleMutexLock();
    v14 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, 0, 0);
    if (!v14)
    {
      PixelBufferAttributes = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 524));
LABEL_54:
      *a4 = PixelBufferAttributes;
    }

LABEL_55:
    FigSimpleMutexUnlock();
    return v14;
  }

  if (CFEqual(@"PoolPixelBufferAttributes", a2))
  {
    FigSimpleMutexLock();
    v14 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, 0, 0);
    if (!v14)
    {
      v19 = *(a1 + 536);
      if (!v19)
      {
        v19 = *(a1 + 528);
      }

      PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v19);
      if (PixelBufferAttributes)
      {
        PixelBufferAttributes = CFRetain(PixelBufferAttributes);
      }

      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (CFEqual(@"PixelTransferProperties", a2))
  {
    FigSimpleMutexLock();
    v13 = *(a1 + 560);
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (CFEqual(@"MaximizePowerEfficiency", a2))
  {
    v15 = MEMORY[0x1E695E4D0];
    if (*(a1 + 569) != 1)
    {
      v15 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_57;
  }

  if (CFEqual(@"AllowCompressedPixelFormats", a2))
  {
    if (*(a1 + 848) == 1 || !*(a1 + 849))
    {
      v15 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v15 = MEMORY[0x1E695E4D0];
    }

LABEL_57:
    v17 = *v15;
LABEL_58:
    v17 = CFRetain(v17);
LABEL_59:
    v14 = 0;
    goto LABEL_60;
  }

  if (!CFEqual(@"PixelAspectRatio", a2) && !CFEqual(@"CleanAperture", a2) && !CFEqual(@"FieldCount", a2) && !CFEqual(@"FieldDetail", a2) && !CFEqual(@"ComponentRange", a2) && !CFEqual(@"ColorPrimaries", a2) && !CFEqual(@"TransferFunction", a2) && !CFEqual(@"YCbCrMatrix", a2) && !CFEqual(@"ICCProfile", a2) && !CFEqual(@"MasteringDisplayColorVolume", a2) && !CFEqual(@"ContentLightLevelInfo", a2) && !CFEqual(@"MultiPassStorage", a2) && !CFEqual(@"AuxiliaryTypeInfo", a2) && !CFEqual(@"ChromaLocationTopField", a2) && !CFEqual(@"ChromaLocationBottomField", a2) && !CFEqual(@"HasLeftStereoEyeView", a2) && !CFEqual(@"HasRightStereoEyeView", a2) && !CFEqual(@"HasEyeViewsReversed", a2) && !CFEqual(@"HasAdditionalViews", a2) && !CFEqual(@"HeroEye", a2) && !CFEqual(@"ProjectionKind", a2) && !CFEqual(@"ViewPackingKind", a2) && !CFEqual(@"TransportIdentifier", a2) && !CFEqual(@"WarpKind", a2) && !CFEqual(@"StereoCameraBaseline", a2) && !CFEqual(@"HorizontalDisparityAdjustment", a2) && !CFEqual(@"CameraCalibrationDataLensCollection", a2) && !CFEqual(@"HorizontalFieldOfView", a2) && !CFEqual(@"PowerLogSessionID", a2) && !CFEqual(@"AmbientViewingEnvironment", a2) && !CFEqual(@"CurrentHDRMetadataGenerationState", a2))
  {
    if (CFEqual(@"RealTime", a2))
    {
      v17 = *(a1 + 584);
      if (!v17)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (CFEqual(@"AllowPixelTransfer", a2))
    {
      if (*(a1 + 568))
      {
        v26 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v26 = MEMORY[0x1E695E4C0];
      }

      v17 = *v26;
      if (!*v26)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (CFEqual(@"EncoderID", a2))
    {
      v17 = *(a1 + 496);
      if (!v17)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (!CFEqual(@"LowMemory", a2))
    {
      return 0;
    }

    v14 = 0;
    if (*(a1 + 592))
    {
      v27 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v27 = MEMORY[0x1E695E4C0];
    }

    v22 = *v27;
LABEL_149:
    *a4 = v22;
    return v14;
  }

  if (!*(a1 + 96) && FigVideoCodecTypeIsHEVCFlavor(*(a1 + 48)) && (CFEqual(@"ColorPrimaries", a2) || CFEqual(@"TransferFunction", a2) || CFEqual(@"YCbCrMatrix", a2)))
  {
    if (!vtCompressionSessionIsIPT(a1))
    {
      if ((!CFEqual(@"ColorPrimaries", a2) || (v17 = *(a1 + 176)) == 0) && (!CFEqual(@"TransferFunction", a2) || (v17 = *(a1 + 184)) == 0))
      {
        if (!CFEqual(@"YCbCrMatrix", a2))
        {
          return 0;
        }

        v17 = *(a1 + 200);
        if (!v17)
        {
          return 0;
        }
      }

      goto LABEL_58;
    }

    goto LABEL_105;
  }

  if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, a2))
  {
    v20 = *(a1 + 472);

    return VTVideoEncoderCopyProperty(v20, a2, a3, a4);
  }

  if (CFEqual(@"PixelAspectRatio", a2))
  {
    v17 = *(a1 + 136);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"CleanAperture", a2))
  {
    v17 = *(a1 + 144);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"FieldCount", a2))
  {
    v17 = *(a1 + 152);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"FieldDetail", a2))
  {
    v17 = *(a1 + 160);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"ComponentRange", a2))
  {
    v17 = *(a1 + 168);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"ColorPrimaries", a2))
  {
    if (!*(a1 + 176))
    {
      return 0;
    }

    if (!vtCompressionSessionIsIPT(a1))
    {
      v17 = *(a1 + 176);
      goto LABEL_58;
    }

LABEL_105:
    v14 = 0;
    *a4 = 0;
    return v14;
  }

  if (CFEqual(@"TransferFunction", a2))
  {
    if (!*(a1 + 184))
    {
      return 0;
    }

    if (!vtCompressionSessionIsIPT(a1))
    {
      v17 = *(a1 + 184);
      goto LABEL_58;
    }

    goto LABEL_105;
  }

  if (CFEqual(@"GammaLevel", a2))
  {
    v17 = *(a1 + 192);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"YCbCrMatrix", a2))
  {
    if (!*(a1 + 200))
    {
      return 0;
    }

    if (!vtCompressionSessionIsIPT(a1))
    {
      v17 = *(a1 + 200);
      goto LABEL_58;
    }

    goto LABEL_105;
  }

  if (CFEqual(@"AmbientViewingEnvironment", a2))
  {
    v17 = *(a1 + 704);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"CurrentHDRMetadataGenerationState", a2))
  {
    v21 = *(a1 + 656);
    if (!v21)
    {
      return 0;
    }

    v28 = 0;
    VTHDRMetadataGenerationSessionCopySessionState(v21, &v28);
    v14 = 0;
    v22 = v28;
    goto LABEL_149;
  }

  if (CFEqual(@"ICCProfile", a2))
  {
    v17 = *(a1 + 208);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"MasteringDisplayColorVolume", a2))
  {
    v17 = *(a1 + 216);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (CFEqual(@"ContentLightLevelInfo", a2))
  {
    v17 = *(a1 + 224);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (!CFEqual(@"MultiPassStorage", a2))
  {
    if (CFEqual(@"AuxiliaryTypeInfo", a2))
    {
      v17 = *(a1 + 232);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_58;
    }

    if (CFEqual(@"ChromaLocationTopField", a2))
    {
      v17 = *(a1 + 240);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_58;
    }

    if (CFEqual(@"ChromaLocationBottomField", a2))
    {
      v17 = *(a1 + 248);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_58;
    }

    if (CFEqual(@"HasLeftStereoEyeView", a2))
    {
      v15 = MEMORY[0x1E695E4D0];
      v23 = *(a1 + 736);
    }

    else if (CFEqual(@"HasRightStereoEyeView", a2))
    {
      v15 = MEMORY[0x1E695E4D0];
      v23 = *(a1 + 737);
    }

    else if (CFEqual(@"HasEyeViewsReversed", a2))
    {
      v15 = MEMORY[0x1E695E4D0];
      v23 = *(a1 + 738);
    }

    else
    {
      if (!CFEqual(@"HasAdditionalViews", a2))
      {
        if (CFEqual(@"HeroEye", a2))
        {
          v17 = *(a1 + 744);
          if (!v17)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        if (CFEqual(@"ProjectionKind", a2))
        {
          v17 = *(a1 + 752);
          if (!v17)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        if (CFEqual(@"ViewPackingKind", a2))
        {
          v17 = *(a1 + 760);
          if (!v17)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        if (CFEqual(@"TransportIdentifier", a2))
        {
          if (!*(a1 + 768))
          {
            return 0;
          }

          v24 = *MEMORY[0x1E695E480];
          v25 = (a1 + 772);
        }

        else
        {
          if (CFEqual(@"WarpKind", a2))
          {
            v17 = *(a1 + 776);
            if (!v17)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          if (CFEqual(@"StereoCameraBaseline", a2))
          {
            if (!*(a1 + 784))
            {
              return 0;
            }

            v24 = *MEMORY[0x1E695E480];
            v25 = (a1 + 788);
          }

          else
          {
            if (!CFEqual(@"HorizontalDisparityAdjustment", a2))
            {
              if (CFEqual(@"CameraCalibrationDataLensCollection", a2))
              {
                v17 = *(a1 + 800);
                if (!v17)
                {
                  goto LABEL_59;
                }
              }

              else if (CFEqual(@"HorizontalFieldOfView", a2))
              {
                v17 = *(a1 + 264);
                if (!v17)
                {
                  return 0;
                }
              }

              else
              {
                if (!CFEqual(@"PowerLogSessionID", a2))
                {
                  return 0;
                }

                v17 = *(a1 + 872);
                if (!v17)
                {
                  goto LABEL_59;
                }
              }

              goto LABEL_58;
            }

            if (!*(a1 + 792))
            {
              return 0;
            }

            v24 = *MEMORY[0x1E695E480];
            v25 = (a1 + 796);
          }
        }

        v17 = CFNumberCreate(v24, kCFNumberSInt32Type, v25);
        goto LABEL_59;
      }

      v15 = MEMORY[0x1E695E4D0];
      v23 = *(a1 + 739);
    }

    if (!v23)
    {
      v15 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_57;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void vtRateControlReactionObserverCallback(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      vtRateControlReactionObserverCallback_cold_1();
    }

    else
    {
      v2 = MEMORY[0x1E695E4D0];
      if (!a2)
      {
        v2 = MEMORY[0x1E695E4C0];
      }

      v3 = *v2;

      VTCompressionSessionSetProperty(a1, @"AVCaptureDeviceReactionEffectsInProgress", v3);
    }
  }

  else
  {
    vtRateControlReactionObserverCallback_cold_2();
  }
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  cf = 0;
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  *a2 = 0;
  if (!a1)
  {
    VTCompressionSessionCopySupportedPropertyDictionary_cold_3(&v18);
LABEL_36:
    v14 = v18;
    goto LABEL_27;
  }

  if (*(a1 + 16) == 2)
  {
    VTCompressionSessionCopySupportedPropertyDictionary_cold_2(&v18);
    goto LABEL_36;
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    return VTCompressionSessionRemote_CopySupportedPropertyDictionary(v4);
  }

  v6 = *(a1 + 472);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7 || ((v8 = v7(v6, &v17), v8 != -12782) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    if (!*(a1 + 850))
    {
      goto LABEL_18;
    }

    v10 = VTRateControlSessionCopySupportedPropertyDictionary(*(a1 + 856), &cf);
    if (v10)
    {
      v14 = v10;
      fig_log_get_emitter();
      goto LABEL_26;
    }

    if (cf)
    {
      v11 = v20;
      v19 = cf;
      v12 = 1;
    }

    else
    {
LABEL_18:
      v12 = 0;
      v11 = &v19;
    }

    v13 = vtCompressionSessionCopyPropertiesHandledByVideoToolbox(&v16);
    if (v13)
    {
      goto LABEL_37;
    }

    if (v17)
    {
      ++v12;
      *v11 = v17;
    }

    if (v16)
    {
      v20[v12 - 1] = v16;
    }

    v13 = FigCFCreateCombinedDictionary();
    if (v13)
    {
LABEL_37:
      v14 = v13;
    }

    else
    {
      v14 = 0;
      *a2 = 0;
    }

    goto LABEL_27;
  }

  v14 = v8;
  fig_log_get_emitter();
LABEL_26:
  FigSignalErrorAtGM();
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t vtCompressionSessionCopyPropertiesHandledByVideoToolbox(CFTypeRef *a1)
{
  MEMORY[0x193AE3010](&sCreatePropertiesHandledByVideoToolboxOnce, vtCompressionSessionCreatePropertiesHandledByVideoToolbox);
  if (a1 && sVTCompressionSessionPropertiesHandledByVideoToolbox)
  {
    *a1 = CFRetain(sVTCompressionSessionPropertiesHandledByVideoToolbox);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtCompressionSessionIsPropertySupported(uint64_t a1, const void *a2)
{
  theDict = 0;
  VTCompressionSessionCopySupportedPropertyDictionary(a1, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v3 = CFDictionaryContainsKey(theDict, a2);
  CFRelease(theDict);
  return v3;
}

uint64_t vtCoreAnalyticsSaveUserConfiguredCompressionProperty(void *value, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 920);
  if (result)
  {
    result = CFSetContainsValue(result, value);
    if (result)
    {

      return FigCFDictionarySetValue();
    }
  }

  return result;
}

BOOL vtCompressionSessionIsPropertyHandledByRateControl(uint64_t a1, const void *a2)
{
  theDict = 0;
  VTRateControlSessionCopySupportedPropertyDictionary(*(a1 + 856), &theDict);
  if (!theDict)
  {
    return 0;
  }

  v3 = CFDictionaryContainsKey(theDict, a2) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v3;
}

BOOL vtCompressionSessionIsPropertyHandledByVideoToolbox(const void *a1)
{
  theDict = 0;
  vtCompressionSessionCopyPropertiesHandledByVideoToolbox(&theDict);
  if (!theDict)
  {
    return 0;
  }

  v2 = CFDictionaryContainsKey(theDict, a1) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v2;
}

uint64_t vtCompressionSessionValidatePixelAspectRatio(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      Value = CFDictionaryGetValue(v1, *MEMORY[0x1E6965EF0]);
      v4 = CFDictionaryGetValue(v1, *MEMORY[0x1E6965F00]);
      valuePtr = 0;
      if (Value && (v5 = v4, v6 = CFNumberGetTypeID(), v6 == CFGetTypeID(Value)))
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
        if (SHIDWORD(valuePtr) > 0 && v5 && (v7 = CFNumberGetTypeID(), v7 == CFGetTypeID(v5)))
        {
          CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
          if (valuePtr > 0)
          {
            return 0;
          }

          fig_log_get_emitter();
        }

        else
        {
          fig_log_get_emitter();
        }
      }

      else
      {
        fig_log_get_emitter();
      }

      return FigSignalErrorAtGM();
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t vtCompressionSessionValidateCleanAperture(uint64_t a1, const __CFDictionary *a2)
{
  if (!a2)
  {
    return 0;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    v12 = 0;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    vtReadRationalOrIntegerFromDictionary(a2, *MEMORY[0x1E6960110], *MEMORY[0x1E6965D80], &v13 + 4, &v13);
    vtReadRationalOrIntegerFromDictionary(a2, *MEMORY[0x1E69600F8], *MEMORY[0x1E6965D60], &v12 + 4, &v12);
    vtReadRationalOrIntegerFromDictionary(a2, *MEMORY[0x1E6960100], *MEMORY[0x1E6965D68], &v11 + 4, &v11);
    vtReadRationalOrIntegerFromDictionary(a2, *MEMORY[0x1E6960108], *MEMORY[0x1E6965D78], &v10 + 4, &v10);
    if (SHIDWORD(v13) >= 1 && SHIDWORD(v12) >= 1)
    {
      if (v13)
      {
        if (v12)
        {
          if (v11)
          {
            if (v10)
            {
              v5 = *(a1 + 40) * v13 - HIDWORD(v13);
              v6 = SHIDWORD(v11) * (2 * v13);
              if (v6 <= (v11 * v5) && v6 >= -(v11 * v5))
              {
                v7 = *(a1 + 44) * v12 - HIDWORD(v12);
                v8 = SHIDWORD(v10) * (2 * v12);
                if (v8 <= (v10 * v7) && v8 >= -(v10 * v7))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }

    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtCompressionSessionValidateFieldCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      if ((valuePtr - 3) > 0xFFFFFFFD)
      {
        return 0;
      }

      else
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t vtCompressionSessionValidateFieldDetail(const void *a1)
{
  if (!a1 || CFEqual(a1, *MEMORY[0x1E6965E78]) || CFEqual(a1, *MEMORY[0x1E6965E70]) || CFEqual(a1, *MEMORY[0x1E6965E60]) || CFEqual(a1, *MEMORY[0x1E6965E68]))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidatePixelFormatComponentRange(const void *a1)
{
  if (!a1 || CFEqual(a1, @"FullRange") || CFEqual(a1, @"VideoRange") || CFEqual(a1, @"WideRange"))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateColorPrimaries(const void *a1)
{
  if (!a1 || CFEqual(a1, *MEMORY[0x1E6965DB8]) || CFEqual(a1, *MEMORY[0x1E6965DA0]) || CFEqual(a1, *MEMORY[0x1E6965DD8]) || CFEqual(a1, *MEMORY[0x1E695FFC8]) || CFEqual(a1, *MEMORY[0x1E695FFC0]) || CFEqual(a1, *MEMORY[0x1E695FFB8]) || CFEqual(a1, *MEMORY[0x1E695FFD0]))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateTransferFunction(const void *a1)
{
  if (!a1 || CFEqual(a1, *MEMORY[0x1E6965F50]) || CFEqual(a1, *MEMORY[0x1E6965F68]) || CFEqual(a1, *MEMORY[0x1E6965F80]) || CFEqual(a1, *MEMORY[0x1E6960140]) || CFEqual(a1, *MEMORY[0x1E6960160]) || CFEqual(a1, *MEMORY[0x1E6960158]) || CFEqual(a1, *MEMORY[0x1E6960148]) || CFEqual(a1, *MEMORY[0x1E6960150]) || CFEqual(a1, *MEMORY[0x1E6960168]))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateGammaLevel(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      valuePtr = 0.0;
      CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
      if (valuePtr <= 0.0)
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      else
      {
        return 0;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t vtCompressionSessionValidateYCbCrMatrix(const void *a1)
{
  if (!a1 || CFEqual(a1, *MEMORY[0x1E6965FD0]) || CFEqual(a1, *MEMORY[0x1E6965FC8]) || CFEqual(a1, *MEMORY[0x1E6965FF0]) || CFEqual(a1, *MEMORY[0x1E6960188]) || CFEqual(a1, *MEMORY[0x1E6965FA8]))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateICCProfile(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateMasteringDisplayColorVolume(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a1) && CFDataGetLength(a1) == 24)
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateContentLightLevelInfo(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a1) && CFDataGetLength(a1) == 4)
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateAmbientViewingEnvironment(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(a1) && CFDataGetLength(a1) == 8)
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateMultiPassStorage(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = VTMultiPassStorageGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateAuxiliaryTypeInfo(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateChromaLocation(const void *a1)
{
  if (!a1 || CFEqual(a1, *MEMORY[0x1E6965D30]) || CFEqual(a1, *MEMORY[0x1E6965D20]) || CFEqual(a1, *MEMORY[0x1E6965D40]) || CFEqual(a1, *MEMORY[0x1E6965D38]) || CFEqual(a1, *MEMORY[0x1E6965D10]) || CFEqual(a1, *MEMORY[0x1E6965D08]) || CFEqual(a1, *MEMORY[0x1E6965D28]))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidatePrepareEncodedSampleBuffersForPaddedWrites(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateHasLeftStereoEyeView(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFBooleanGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateHasRightStereoEyeView(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFBooleanGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateHasEyeViewsReversed(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFBooleanGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateHasAdditionalViews(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFBooleanGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateHeroEye(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFStringGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateProjectionKind(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFStringGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateViewPackingKind(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFStringGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateTransportIdentifier(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFNumberGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateWarpKind(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFStringGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateBaselineValue(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFNumberGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateDisparityAdjustment(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFNumberGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateCameraCalibrationDataLensCollection(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(a1) >= 1)
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
        if (!ValueAtIndex)
        {
          break;
        }

        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 != CFDictionaryGetTypeID() || !CFDictionaryContainsKey(v5, @"LensAlgorithmKind") || !CFDictionaryContainsKey(v5, @"LensRole") || !CFDictionaryContainsKey(v5, @"LensIdentifier") || !CFDictionaryContainsKey(v5, @"LensDomain") || !CFDictionaryContainsKey(v5, @"IntrinsicMatrix") || !CFDictionaryContainsKey(v5, @"IntrinsicMatrixReferenceDimensions"))
        {
          break;
        }

        if (++v3 >= CFArrayGetCount(a1))
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

    return 0;
  }

LABEL_15:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateHorizontalFieldOfView(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFNumberGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidatePowerLogSessionID(const void *a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFStringGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateInputQueueMaxCount(const void *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294954394;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (valuePtr > -2)
    {
      return 0;
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigVideoCodecTypeIsHEVCFlavor(int a1)
{
  result = 1;
  if (a1 > 1836415072)
  {
    if (a1 <= 1902667125)
    {
      if (a1 == 1836415073)
      {
        return result;
      }

      v3 = 1869117027;
      goto LABEL_14;
    }

    if (a1 != 1902667126 && a1 != 1902671459)
    {
      v3 = 1902998904;
LABEL_14:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 <= 1718908527)
    {
      if (a1 == 1667790435)
      {
        return result;
      }

      v3 = 1718908520;
      goto LABEL_14;
    }

    if (a1 != 1718908528 && a1 != 1751479857)
    {
      v3 = 1752589105;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t vtCompressionSessionValidateHDRMetadata(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2) || !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 48);
  if (v5 > 1685481520)
  {
    if (v5 > 1869117026)
    {
      if (v5 <= 1902407031)
      {
        if (v5 == 1869117027 || v5 == 1902405681)
        {
          return 0;
        }

        v8 = 1902405733;
        goto LABEL_45;
      }

      if (v5 > 1902671458)
      {
        if (v5 != 1902671459)
        {
          v8 = 1902998904;
          goto LABEL_45;
        }
      }

      else if (v5 != 1902407032)
      {
        v8 = 1902667126;
        goto LABEL_45;
      }
    }

    else
    {
      if (v5 <= 1718908527)
      {
        if (v5 == 1685481521 || v5 == 1685481573)
        {
          return 0;
        }

        v8 = 1718908520;
        goto LABEL_45;
      }

      if (v5 > 1752589104)
      {
        if (v5 != 1752589105)
        {
          v8 = 1836415073;
          goto LABEL_45;
        }
      }

      else if (v5 != 1718908528)
      {
        v8 = 1751479857;
        goto LABEL_45;
      }
    }

    return 0;
  }

  if (v5 > 1634759271)
  {
    if (v5 <= 1667524656)
    {
      v9 = v5 - 1634759272;
      if (v9 <= 6 && ((1 << v9) & 0x51) != 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    if (v5 == 1667524657 || v5 == 1667790435)
    {
      return 0;
    }

    v8 = 1684895096;
  }

  else
  {
    if (v5 > 1634743415)
    {
      if ((v5 - 1634755432) <= 0xB && ((1 << (v5 - 104)) & 0x8C1) != 0)
      {
        return 0;
      }

      v6 = 13432;
    }

    else
    {
      if (v5 == 1634742376 || v5 == 1634742888)
      {
        return 0;
      }

      v6 = 13416;
    }

    v8 = v6 | 0x61700000;
  }

LABEL_45:
  if (v5 == v8)
  {
    return 0;
  }

LABEL_12:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionValidateInitialHDRMetadataState(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 == CFDictionaryGetTypeID())
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionUpdateAmbientViewingEnvironment(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDataGetTypeID())
    {
      v5 = *(a1 + 704);
      *(a1 + 704) = cf;
      CFRetain(cf);
      if (v5)
      {
        CFRelease(v5);
      }

      Length = CFDataGetLength(cf);
      CFDataGetBytePtr(cf);
      if (Length == 8 || vtCompressionSessionUpdateAmbientViewingEnvironment_cold_1(&v11))
      {
        v7 = *(a1 + 712);
        if (v7)
        {
          CFRelease(v7);
        }

        result = FigHEVCBridge_CreateAmbientViewingEnvironmentSEINAL();
        if (!result)
        {
          *(a1 + 688) = 1;
        }
      }

      else
      {
        return v11;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    v9 = *(a1 + 704);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 704) = 0;
    }

    v10 = *(a1 + 712);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 712) = 0;
    }

    result = 0;
    *(a1 + 688) = 0;
  }

  return result;
}

uint64_t VTVideoEncoderCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t vtCompressionSessionValidateOneProperty(const void *a1, uint64_t a2, uint64_t *a3)
{
  result = vtCompressionSessionIsPropertyHandledByRateControl(*a3, a1);
  if (result)
  {
    v5 = *(*a3 + 856);

    return VTRateControlSessionSetProperty(v5);
  }

  return result;
}

uint64_t VTCompressionSessionCopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (a1)
  {
    if (*(a1 + 16) == 2)
    {
      VTCompressionSessionCopySerializableProperties_cold_1(&v9);
      return v9;
    }

    else if (*(a1 + 24))
    {
      v5 = *(a1 + 24);

      return VTCompressionSessionRemote_CopySerializableProperties(v5);
    }

    else
    {
      v7 = *(a1 + 472);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v8)
      {
        return 0;
      }

      result = v8(v7, a2, a3);
      if (result == -12782)
      {
        return 0;
      }
    }
  }

  else
  {
    VTCompressionSessionCopySerializableProperties_cold_2(&v10);
    return v10;
  }

  return result;
}

CVPixelBufferPoolRef VTCompressionSessionGetPixelBufferPool(VTCompressionSessionRef session)
{
  if (!session)
  {
    VTCompressionSessionGetPixelBufferPool_cold_3(&v7);
    v4 = v7;
    goto LABEL_8;
  }

  if (*(session + 4) == 2)
  {
    VTCompressionSessionGetPixelBufferPool_cold_2(&v6);
    v4 = v6;
LABEL_8:
    if (v4)
    {
      return 0;
    }

    else
    {
      return *(session + 67);
    }
  }

  v2 = *(session + 3);
  if (!v2)
  {
    VTCompressionSessionGetPixelBufferPool_cold_1(session, &v5);
    v4 = v5;
    goto LABEL_8;
  }

  return VTCompressionSessionRemote_GetPixelBufferPool(v2);
}

OSStatus VTCompressionSessionPrepareToEncodeFrames(VTCompressionSessionRef session)
{
  if (session)
  {
    if (*(session + 3))
    {
      v3 = *(session + 3);

      return VTCompressionSessionRemote_PrepareToEncodeFrames(v3);
    }

    else
    {

      return vtCompressionSessionPrepareToEncodeFramesInternal(session);
    }
  }

  else
  {
    v6 = v1;
    v7 = v2;
    VTCompressionSessionPrepareToEncodeFrames_cold_1(&v5);
    return v5;
  }
}

uint64_t vtCompressionSessionPrepareToEncodeFramesInternal(uint64_t a1)
{
  v1 = 0;
  propertyValueOut = 0;
  valuePtr = 0.0;
  if (*(a1 + 96))
  {
    return v1;
  }

  if (!*(a1 + 616))
  {
    v3 = *(a1 + 48);
    if (v3 <= 1752589104)
    {
      if (v3 > 1685481572)
      {
        if (v3 > 1718908527)
        {
          if (v3 == 1718908528)
          {
            goto LABEL_29;
          }

          v4 = 1751479857;
        }

        else
        {
          if (v3 == 1685481573)
          {
            goto LABEL_29;
          }

          v4 = 1718908520;
        }
      }

      else if (v3 > 1684895095)
      {
        if (v3 == 1684895096)
        {
          goto LABEL_29;
        }

        v4 = 1685481521;
      }

      else
      {
        if (v3 == 1667524657)
        {
          goto LABEL_29;
        }

        v4 = 1667790435;
      }

      goto LABEL_28;
    }

    if (v3 <= 1902405732)
    {
      if (v3 <= 1869117026)
      {
        if (v3 == 1752589105)
        {
          goto LABEL_29;
        }

        v4 = 1836415073;
        goto LABEL_28;
      }

      if (v3 == 1869117027)
      {
        goto LABEL_29;
      }

      v5 = 26673;
    }

    else
    {
      if (v3 > 1902667125)
      {
        if (v3 == 1902667126 || v3 == 1902998904)
        {
          goto LABEL_29;
        }

        v4 = 1902671459;
LABEL_28:
        if (v3 != v4)
        {
LABEL_30:
          *(a1 + 616) = *MEMORY[0x1E695E4C0];
          goto LABEL_31;
        }

LABEL_29:
        if (vtCompressionSessionIsHEVC10BitCompatible(a1))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v3 == 1902405733)
      {
        goto LABEL_29;
      }

      v5 = 28024;
    }

    v4 = v5 | 0x71640000;
    goto LABEL_28;
  }

LABEL_31:
  if (!vtCompressionSessionIsIPT(a1))
  {
    if (*(a1 + 176))
    {
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ColorPrimaries"))
      {
        v9 = *(a1 + 472);
        v10 = *(a1 + 176);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v9, @"ColorPrimaries", v10);
        }
      }
    }

    if (*(a1 + 184))
    {
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"TransferFunction"))
      {
        v12 = *(a1 + 472);
        v13 = *(a1 + 184);
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v14)
        {
          v14(v12, @"TransferFunction", v13);
        }
      }
    }

    if (*(a1 + 192))
    {
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"GammaLevel"))
      {
        v15 = *(a1 + 472);
        v16 = *(a1 + 192);
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v17)
        {
          v17(v15, @"GammaLevel", v16);
        }
      }
    }

    if (*(a1 + 200))
    {
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"YCbCrMatrix"))
      {
        v18 = *(a1 + 472);
        v19 = *(a1 + 200);
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20)
        {
          v20(v18, @"YCbCrMatrix", v19);
        }
      }
    }

    if (*(a1 + 208))
    {
      if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"ICCProfile"))
      {
        v21 = *(a1 + 472);
        v22 = *(a1 + 208);
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v23)
        {
          v23(v21, @"ICCProfile", v22);
        }
      }
    }
  }

  v6 = *(a1 + 48);
  v7 = MEMORY[0x1E695E480];
  if (v6 > 1836415072)
  {
    if (v6 <= 1902667125)
    {
      if (v6 == 1836415073)
      {
        goto LABEL_66;
      }

      v8 = 1869117027;
    }

    else
    {
      if (v6 == 1902667126 || v6 == 1902998904)
      {
        goto LABEL_66;
      }

      v8 = 1902671459;
    }
  }

  else
  {
    if (v6 > 1718908527)
    {
      if (v6 != 1718908528 && v6 != 1751479857)
      {
        v8 = 1752589105;
        goto LABEL_65;
      }

LABEL_66:
      theArray[0] = 0;
      v24 = *(a1 + 472);
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25 && (v25(v24, @"MVHEVCVideoLayerIDs", *v7, theArray), theArray[0]))
      {
        Count = CFArrayGetCount(theArray[0]);
        v27 = theArray[0];
        *(a1 + 808) = Count > 1;
        if (v27)
        {
          CFRelease(v27);
        }
      }

      else
      {
        *(a1 + 808) = 0;
      }

      goto LABEL_71;
    }

    if (v6 == 1667790435)
    {
      goto LABEL_66;
    }

    v8 = 1718908520;
  }

LABEL_65:
  if (v6 == v8)
  {
    goto LABEL_66;
  }

LABEL_71:
  if (*(a1 + 850) || *(a1 + 851))
  {
    v28 = VTRateControlSessionBeforePrepareToEncodeFrames(*(a1 + 856));
    if (v28)
    {
      return v28;
    }
  }

  v29 = *(a1 + 472);
  v30 = *(CMBaseObjectGetVTable() + 16);
  if (*v30 < 2uLL || (v31 = v30[7]) == 0 || (v1 = v31(v29), v1 == -12782))
  {
    v1 = 0;
  }

  VTSessionCopyProperty(a1, @"AverageBitRate", *v7, &propertyValueOut);
  if (propertyValueOut && CFNumberGetValue(propertyValueOut, kCFNumberSInt32Type, &valuePtr))
  {
    *(a1 + 732) = valuePtr;
  }

  v32 = *(a1 + 904);
  if (!v32 || !CFStringHasPrefix(v32, @"VTEncoderXPCServ") && !CFStringHasPrefix(*(a1 + 904), @"simpleVTCompress") && !CFStringHasPrefix(*(a1 + 904), @"remakeMovie") && !CFStringHasPrefix(*(a1 + 904), @"avexporttest"))
  {
    CFRetain(a1);
    theArray[0] = MEMORY[0x1E69E9820];
    theArray[1] = 0x40000000;
    theArray[2] = __vtCompressionSessionSendConfigToCoreAnalytics_block_invoke;
    theArray[3] = &__block_descriptor_tmp_99;
    theArray[4] = a1;
    if ((analytics_send_event_lazy() & 1) == 0)
    {
      CFRelease(a1);
    }
  }

  *(a1 + 96) = 1;
  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v1;
}

uint64_t vtCompressionSessionEncodeFrameCommon(uint64_t a1, __CVBuffer *a2, OpaqueCMTaggedBufferGroup *a3, uint64_t a4, __int128 *a5, const void *a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  *&v126 = a8;
  v144 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    vtCompressionSessionEncodeFrameCommon_cold_12(&value);
    goto LABEL_215;
  }

  if (*(a1 + 16))
  {
    vtCompressionSessionEncodeFrameCommon_cold_1(&value);
LABEL_215:
    version_low = value;
    if (!value)
    {
      return version_low;
    }

    goto LABEL_107;
  }

  if (a9)
  {
    *a9 = 0;
  }

  ++*(a1 + 880);
  v16 = vtCompressionSessionPrepareToEncodeFramesInternal(a1);
  if (v16)
  {
    version_low = v16;
LABEL_107:
    v74 = *(a1 + 80);
    if (v74)
    {
      v74(*(a1 + 88), v126, version_low, 0, 0);
    }

    else if (a7)
    {
      (*(a7 + 16))(a7, version_low, 0, 0);
    }

    ++*(a1 + 884);
    return version_low;
  }

  if (a9)
  {
    *a9 |= 1u;
  }

  v133 = *a4;
  v134 = *(a4 + 16);
  v131 = *a5;
  v132 = *(a5 + 2);
  context = 0;
  FigSimpleMutexLock();
  if (!*(a1 + 296))
  {
    v17 = FigDispatchQueueCreateWithPriorityAndClientPID();
    *(a1 + 296) = v17;
    if (!v17)
    {
      vtCompressionSessionEncodeFrameCommon_cold_10(&value);
      goto LABEL_37;
    }
  }

  if (*(a1 + 256))
  {
    vtCompressionSessionConfirmSpatialAndColorProperties(a1);
  }

  v125 = a7;
  v123 = a6;
  if (a3)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
    {
      vtCompressionSessionEncodeFrameCommon_cold_11(&value);
      goto LABEL_37;
    }

    v18 = *(a1 + 512);
    if (!a2)
    {
      Count = CMTaggedBufferGroupGetCount(a3);
      if (Count >= 1)
      {
        v20 = Count;
        v21 = 0;
        while (1)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (CVPixelBufferAtIndex)
          {
            if (!vtIsPixelBufferCompatibleWithAttributes(a1, CVPixelBufferAtIndex, v18))
            {
              break;
            }
          }

          if (v20 == ++v21)
          {
            goto LABEL_28;
          }
        }

        v24 = 1;
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (!a2)
    {
LABEL_28:
      v23 = 1;
      goto LABEL_29;
    }

    v18 = *(a1 + 512);
  }

  v23 = 0;
  v24 = 0;
  if (!vtIsPixelBufferCompatibleWithAttributes(a1, a2, v18))
  {
LABEL_24:
    v121 = a2;
    if (*(a1 + 568) == 1)
    {
      v25 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, a2, a3);
      a7 = v125;
      if (v25)
      {
        goto LABEL_225;
      }

      if (*(a1 + 544))
      {
LABEL_27:
        v128 = 0;
        v124 = 0;
LABEL_207:
        v27 = *(a1 + 176);
        v28 = *(a1 + 184);
        v29 = *(a1 + 200);
        v130 = *(a1 + 336);
        v119 = *(a1 + 328);
        v30 = *(a1 + 208);
        v31 = (a1 + 416);
        v32 = *(a1 + 168);
        v127 = (a1 + 200);
        v117 = (a1 + 208);
        v118 = (a1 + 184);
        v116 = (a1 + 176);
        if ((v24 & 1) == 0)
        {
          HaveDesiredColorRange = vtIsPixelBufferCompatibleWithColorPropertiesAndDoesPixelBufferHaveDesiredColorRange(v121, v27, v28, v29, v30, (a1 + 416), v32);
          v37 = 0;
          if (HaveDesiredColorRange)
          {
            v36 = v128;
            v34 = v121;
            goto LABEL_50;
          }

          v38 = 1;
          v36 = v128;
          v34 = v121;
          goto LABEL_145;
        }

        v115 = 1;
        if (!a3)
        {
LABEL_49:
          v37 = 1;
          a7 = v125;
          v34 = v121;
          v36 = v128;
          if (v115)
          {
LABEL_50:
            v129 = v36;
            v50 = a7;
            v40 = 0;
            v51 = (a1 + 336);
            goto LABEL_53;
          }

LABEL_51:
          v129 = v36;
          v50 = a7;
          v40 = 0;
          if (!vtDoesFrameRequireIOSurfaceSynchronization(v34, a3))
          {
            v52 = (a1 + 296);
            v51 = (a1 + 304);
            goto LABEL_55;
          }

          v51 = (a1 + 344);
LABEL_53:
          v52 = (a1 + 328);
LABEL_55:
          v130 = *v51;
          v53 = *v52;
          goto LABEL_56;
        }

        goto LABEL_44;
      }

      *(a1 + 336) = vtCompressionSessionPixelTransferSessionWork;
      if (*(a1 + 328) || (v93 = FigDispatchQueueCreateWithPriorityAndClientPID(), (*(a1 + 328) = v93) != 0))
      {
        v94 = CFGetAllocator(a1);
        v25 = VTPixelTransferSessionCreate(v94, (a1 + 544));
        if (v25)
        {
          goto LABEL_225;
        }

        LODWORD(value) = 0;
        PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(*(a1 + 528));
        v96 = v24 ^ 1;
        if (!a3)
        {
          v96 = 1;
        }

        v97 = a2;
        if ((v96 & 1) == 0)
        {
          if (CMTaggedBufferGroupGetCount(a3) < 1)
          {
            v97 = 0;
          }

          else
          {
            v97 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          }
        }

        if (PixelBufferAttributes)
        {
          v98 = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E6966130]);
          if (!v98)
          {
LABEL_192:
            *(a1 + 552) = v98;
            v103 = *(a1 + 544);
            if (!v103)
            {
              goto LABEL_27;
            }

            v104 = *(a1 + 560);
            if (!v104 || (v25 = VTSessionSetProperties(v103, v104), !v25))
            {
              v105 = CFGetAllocator(a1);
              Mutable = CFDictionaryCreateMutable(v105, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigCFDictionarySetInt32();
              v106 = *(a1 + 584);
              if (v106)
              {
                CFDictionarySetValue(Mutable, @"RealTime", v106);
              }

              v107 = *(a1 + 136);
              if (v107)
              {
                v41 = 0;
              }

              else
              {
                v136 = 1;
                valuePtr = 1;
                v108 = *MEMORY[0x1E6965F00];
                *&value = *MEMORY[0x1E6965EF0];
                *(&value + 1) = v108;
                v109 = *MEMORY[0x1E695E480];
                valueCallBacks.version = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
                valueCallBacks.retain = CFNumberCreate(v109, kCFNumberIntType, &v136);
                v41 = CFDictionaryCreate(v109, &value, &valueCallBacks, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFRelease(valueCallBacks.version);
                CFRelease(valueCallBacks.retain);
                v107 = *(a1 + 136);
              }

              if (v107)
              {
                v110 = v107;
              }

              else
              {
                v110 = v41;
              }

              CFDictionarySetValue(Mutable, @"DestinationPixelAspectRatio", v110);
              v111 = *(a1 + 144);
              if (v111)
              {
                CFDictionarySetValue(Mutable, @"DestinationCleanAperture", v111);
              }

              v112 = VTSessionSetProperties(*(a1 + 544), Mutable);
              if (v112)
              {
                version_low = v112;
                v40 = 0;
                goto LABEL_38;
              }

              v124 = v41;
              v128 = Mutable;
              goto LABEL_207;
            }

LABEL_225:
            version_low = v25;
            Mutable = 0;
            v40 = 0;
            v41 = 0;
            goto LABEL_38;
          }

          v99 = v98;
          v100 = CFGetTypeID(v98);
          if (v100 == CFArrayGetTypeID() && CFArrayGetCount(v99) >= 1)
          {
            LODWORD(v98) = FigCFArrayGetInt32AtIndex();
            if (!v98)
            {
              goto LABEL_192;
            }

            goto LABEL_190;
          }

          v101 = CFGetTypeID(v99);
          if (v101 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v99, kCFNumberSInt32Type, &value);
LABEL_190:
            PixelFormatType = CVPixelBufferGetPixelFormatType(v97);
            LOBYTE(v98) = VTPixelTransferSessionCanTransfer(PixelFormatType, value, 0);
            goto LABEL_192;
          }
        }

        LOBYTE(v98) = 0;
        goto LABEL_192;
      }

      vtCompressionSessionEncodeFrameCommon_cold_3(&value);
LABEL_37:
      Mutable = 0;
      v40 = 0;
      v41 = 0;
      version_low = value;
      goto LABEL_38;
    }

    vtCompressionSessionEncodeFrameCommon_cold_2(&value);
LABEL_224:
    Mutable = 0;
    v40 = 0;
    v41 = 0;
    version_low = value;
    a7 = v125;
    goto LABEL_38;
  }

LABEL_29:
  v26 = a2;
  if (!vtDoesFrameRequireIOSurfaceSynchronization(a2, a3))
  {
    v27 = *(a1 + 176);
    v28 = *(a1 + 184);
    v29 = *(a1 + 200);
    v119 = *(a1 + 296);
    v30 = *(a1 + 208);
    v31 = (a1 + 416);
    v32 = *(a1 + 168);
    v130 = *(a1 + 304);
    v127 = (a1 + 200);
    v117 = (a1 + 208);
    v118 = (a1 + 184);
    v116 = (a1 + 176);
    if (v23)
    {
      goto LABEL_43;
    }

LABEL_33:
    v33 = v28;
    v34 = v26;
    v35 = vtIsPixelBufferCompatibleWithColorPropertiesAndDoesPixelBufferHaveDesiredColorRange(v26, v27, v33, v29, v30, v31, v32);
    v124 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    a7 = v125;
    if (v35)
    {
      goto LABEL_51;
    }

    goto LABEL_145;
  }

  *(a1 + 344) = vtCompressionSessionIOSurfaceSynchronizationWork;
  if (*(a1 + 328))
  {
    v130 = vtCompressionSessionIOSurfaceSynchronizationWork;
    v119 = *(a1 + 328);
  }

  else
  {
    v45 = FigDispatchQueueCreateWithPriorityAndClientPID();
    *(a1 + 328) = v45;
    if (!v45)
    {
      vtCompressionSessionEncodeFrameCommon_cold_4(&value);
      goto LABEL_224;
    }

    v119 = v45;
    v130 = *(a1 + 344);
  }

  v27 = *(a1 + 176);
  v28 = *(a1 + 184);
  v29 = *(a1 + 200);
  v30 = *(a1 + 208);
  v31 = (a1 + 416);
  v32 = *(a1 + 168);
  v127 = (a1 + 200);
  v117 = (a1 + 208);
  v118 = (a1 + 184);
  v116 = (a1 + 176);
  if ((v23 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_43:
  v121 = v26;
  v124 = 0;
  v128 = 0;
  v115 = 0;
  if (!a3)
  {
    goto LABEL_49;
  }

LABEL_44:
  v46 = CMTaggedBufferGroupGetCount(a3);
  if (v46 < 1)
  {
    goto LABEL_49;
  }

  v47 = v46;
  v48 = 0;
  while (1)
  {
    v49 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
    if (v49)
    {
      if (!vtIsPixelBufferCompatibleWithColorPropertiesAndDoesPixelBufferHaveDesiredColorRange(v49, v27, v28, v29, v30, v31, v32))
      {
        break;
      }
    }

    if (v47 == ++v48)
    {
      goto LABEL_49;
    }
  }

  v37 = 1;
  a7 = v125;
  v34 = v121;
  v36 = v128;
  v38 = v115;
LABEL_145:
  v129 = v36;
  v50 = a7;
  if (*(a1 + 568) != 1)
  {
    vtCompressionSessionEncodeFrameCommon_cold_5(&value);
    v40 = 0;
    version_low = value;
LABEL_230:
    Mutable = v129;
    v41 = v124;
    goto LABEL_38;
  }

  v84 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, v34, a3);
  if (v84)
  {
    version_low = v84;
    v40 = 0;
    goto LABEL_230;
  }

  if (*(a1 + 408))
  {
    v40 = 0;
    goto LABEL_170;
  }

  *&value = 0;
  v85 = v38 ^ 1;
  if (!*(a1 + 552))
  {
    v85 = 1;
  }

  v53 = v119;
  if ((v85 & 1) == 0)
  {
    v86 = *(a1 + 544);
    *&value = v86;
LABEL_158:
    if (!v86)
    {
      v40 = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_56;
    }

    v90 = CFGetAllocator(a1);
    v40 = CFDictionaryCreateMutable(v90, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    v91 = *(a1 + 584);
    if (v91)
    {
      CFDictionarySetValue(v40, @"RealTime", v91);
    }

    if (*v116)
    {
      CFDictionarySetValue(v40, @"DestinationColorPrimaries", *v116);
    }

    if (*v118)
    {
      CFDictionarySetValue(v40, @"DestinationTransferFunction", *v118);
    }

    if (*v127)
    {
      CFDictionarySetValue(v40, @"DestinationYCbCrMatrix", *v127);
    }

    if (*v117)
    {
      CFDictionarySetValue(v40, @"DestinationICCProfile", *v117);
    }

    v92 = VTSessionSetProperties(value, v40);
    if (!v92)
    {
LABEL_170:
      v53 = v119;
      if ((v38 & 1) == 0)
      {
LABEL_171:
        v51 = (a1 + 376);
        v52 = (a1 + 368);
        goto LABEL_55;
      }

LABEL_56:
      FigSimpleMutexUnlock();
      if (*MEMORY[0x1E695E4D0] != *(a1 + 616))
      {
        *(&v126 + 1) = 0;
        v44 = 0;
        goto LABEL_58;
      }

      v58 = v37 ^ 1;
      if (!a3)
      {
        v58 = 1;
      }

      v59 = v34;
      if ((v58 & 1) == 0)
      {
        if (CMTaggedBufferGroupGetCount(a3) < 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
        }
      }

      v76 = *(a1 + 720);
      if (!v76)
      {
        vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration(a1, 1);
        v76 = *(a1 + 720);
      }

      if ((v76 - 1) > 1)
      {
        if (v76 == 3 && *(a1 + 652) == 1 && *(a1 + 694))
        {
          v44 = CVBufferCopyAttachment(v59, *MEMORY[0x1E6965E88], 0);
          *(&v126 + 1) = 0;
          goto LABEL_130;
        }
      }

      else if (!*(a1 + 594) && *(a1 + 652) == 1)
      {
        IOSurface = CVPixelBufferGetIOSurface(v59);
        *(&v126 + 1) = IOSurfaceCopyValue(IOSurface, @"DolbyVisionRPUData");
LABEL_129:
        v44 = 0;
LABEL_130:
        v54 = v130;
        if (!*(a1 + 689) || *(a1 + 720) != 1)
        {
LABEL_59:
          v55 = *(a1 + 48);
          v56 = v40;
          if (v55 <= 1634743415)
          {
            if (v55 == 1634742376 || v55 == 1634742888)
            {
              goto LABEL_75;
            }

            v57 = 13416;
          }

          else
          {
            if ((v55 - 1634755432) <= 0xB && ((1 << (v55 - 104)) & 0x8C1) != 0 || (v55 - 1634759272) <= 6 && ((1 << (v55 - 104)) & 0x51) != 0)
            {
              goto LABEL_75;
            }

            v57 = 13432;
          }

          if (v55 != (v57 | 0x61700000))
          {
LABEL_84:
            v142 = 0;
            v143 = 0;
            FigSimpleMutexLock();
            v67 = *(a1 + 128);
            if (v67 || (valueCallBacks.version = 0, valueCallBacks.retain = vtCloneCompressionFrameTrackingInfo, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = vtFreeCompressionFrameTrackingInfo, v68 = CFGetAllocator(a1), v67 = CFDictionaryCreateMutable(v68, 0, 0, &valueCallBacks), (*(a1 + 128) = v67) != 0))
            {
              v69 = *(a1 + 112);
              *(a1 + 112) = v69 + 1;
              LOWORD(v143) = 0;
              value = v126;
              v140 = v44;
              v141 = v50;
              CFDictionaryAddValue(v67, v69, &value);
              ++*(a1 + 120);
              FigSimpleMutexUnlock();
              v70 = *(a1 + 544);
              v71 = *(a1 + 408);
              v72 = *(a1 + 528);
              value = v133;
              v140 = v134;
              *&valueCallBacks.version = v131;
              valueCallBacks.release = v132;
              vtCompressionSessionPipelineCreateContext(a1, v34, a3, v70, v71, v72, &value, &valueCallBacks.version, v123, v69, &context);
              if (*(a1 + 288) != v54)
              {
                dispatch_group_wait(*(a1 + 280), 0xFFFFFFFFFFFFFFFFLL);
              }

              dispatch_group_enter(*(a1 + 280));
              v40 = v56;
              v41 = v124;
              if (*(a1 + 16))
              {
                vtCompressionSessionEncodeFrameCommon_cold_7(&value);
              }

              else if (v53)
              {
                if (v54 == vtCompressionSessionCompressionWork)
                {
                  v73 = context;
                  *(context + 116) = 0;
                  dispatch_sync_f(v53, v73, vtCompressionSessionCompressionWork);
                  goto LABEL_94;
                }

                if (v54)
                {
                  FigSemaphoreWaitRelative();
                  dispatch_group_async_f(*(a1 + 280), v53, context, v54);
LABEL_94:
                  a7 = v50;
                  version_low = 0;
                  *(a1 + 288) = v54;
                  goto LABEL_95;
                }

                vtCompressionSessionEncodeFrameCommon_cold_8(&value);
              }

              else
              {
                vtCompressionSessionEncodeFrameCommon_cold_9(&value);
              }

              version_low = value;
              a7 = v50;
LABEL_95:
              Mutable = v129;
              dispatch_group_leave(*(a1 + 280));
              v43 = *(&v126 + 1);
              if (!version_low)
              {
                goto LABEL_96;
              }

              goto LABEL_115;
            }

            FigSimpleMutexUnlock();
            version_low = 4294954392;
            v40 = v56;
LABEL_114:
            a7 = v50;
            v43 = *(&v126 + 1);
            Mutable = v129;
            v41 = v124;
            goto LABEL_115;
          }

LABEL_75:
          if (v34)
          {
            if (!*(a1 + 691))
            {
              v60 = CVBufferCopyAttachment(v34, *MEMORY[0x1E6965CD8], 0);
              if (v60)
              {
                v61 = v60;
                v120 = v53;
                *v122 = v34;
                v62 = v50;
                *(a1 + 691) = 1;
                *(a1 + 688) = 1;
                v63 = *(a1 + 704);
                *(a1 + 704) = v60;
                CFRetain(v60);
                if (v63)
                {
                  CFRelease(v63);
                }

                if (*(a1 + 690))
                {
                  v64 = *(a1 + 472);
                  v65 = *(a1 + 704);
                  v66 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v66)
                  {
                    v66(v64, @"AmbientViewingEnvironment", v65);
                  }
                }

                CFRelease(v61);
                v50 = v62;
                v53 = v120;
                v34 = *v122;
              }
            }
          }

          goto LABEL_84;
        }

        v78 = v53;
        *(a1 + 688) = 1;
        if (!*(a1 + 704))
        {
          *&value = 0x4240133DA0E92F00;
          *(a1 + 704) = CFDataCreate(*MEMORY[0x1E695E480], &value, 8);
        }

        if (!*(a1 + 712))
        {
          AmbientViewingEnvironmentSEINAL = FigHEVCBridge_CreateAmbientViewingEnvironmentSEINAL();
          if (AmbientViewingEnvironmentSEINAL)
          {
            version_low = AmbientViewingEnvironmentSEINAL;
            goto LABEL_114;
          }
        }

        if (*(a1 + 690) && !*(a1 + 691))
        {
          v80 = v40;
          *(a1 + 691) = 1;
          v81 = *(a1 + 472);
          v82 = *(a1 + 704);
          v83 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v83)
          {
            v83(v81, @"AmbientViewingEnvironment", v82);
          }

          v53 = v78;
          v40 = v80;
        }

LABEL_58:
        v54 = v130;
        goto LABEL_59;
      }

      *(&v126 + 1) = 0;
      goto LABEL_129;
    }

    version_low = v92;
    v41 = v124;
    v114 = v129;
    goto LABEL_235;
  }

  *(a1 + 376) = vtCompressionSessionColorSyncWork;
  v87 = FigDispatchQueueCreateWithPriorityAndClientPID();
  *(a1 + 368) = v87;
  if (v87)
  {
    v88 = CFGetAllocator(a1);
    v89 = VTPixelTransferSessionCreate(v88, &value);
    if (!v89)
    {
      v86 = value;
      *(a1 + 408) = value;
      v53 = v119;
      goto LABEL_158;
    }

    version_low = v89;
    v41 = v124;
    v114 = v36;
    v40 = 0;
  }

  else
  {
    v41 = v124;
    v114 = v36;
    vtCompressionSessionEncodeFrameCommon_cold_6(&valueCallBacks);
    v40 = 0;
    version_low = LODWORD(valueCallBacks.version);
  }

LABEL_235:
  Mutable = v114;
LABEL_38:
  FigSimpleMutexUnlock();
  v43 = 0;
  v44 = 0;
  if (!version_low)
  {
LABEL_96:
    if (!v43)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_115:
  vtCompressionSessionPipelineContextInvalidate(&context);
  if (v43)
  {
LABEL_97:
    CFRelease(v43);
  }

LABEL_98:
  if (v44)
  {
    CFRelease(v44);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (version_low)
  {
    goto LABEL_107;
  }

  return version_low;
}

OSStatus VTCompressionSessionEncodeFrameWithOutputHandler(VTCompressionSessionRef session, CVImageBufferRef imageBuffer, CMTime *presentationTimeStamp, CMTime *duration, CFDictionaryRef frameProperties, VTEncodeInfoFlags *infoFlagsOut, VTCompressionOutputHandler outputHandler)
{
  if (!outputHandler)
  {
    VTCompressionSessionEncodeFrameWithOutputHandler_cold_5(&v18);
    return v18;
  }

  if (!session)
  {
    VTCompressionSessionEncodeFrameWithOutputHandler_cold_4(&v18);
    return v18;
  }

  if (!imageBuffer)
  {
    VTCompressionSessionEncodeFrameWithOutputHandler_cold_3(&v18);
    return v18;
  }

  if (*(session + 4))
  {
    VTCompressionSessionEncodeFrameWithOutputHandler_cold_1(&v18);
    return v18;
  }

  if (!*(session + 569))
  {
    FigPowerReduceUtilitySFI();
  }

  v14 = *(session + 3);
  if (v14)
  {
    v18 = *&presentationTimeStamp->value;
    epoch = presentationTimeStamp->epoch;
    v16 = *&duration->value;
    v17 = duration->epoch;
    return VTCompressionSessionRemote_EncodeFrameWithOutputHandler(v14, imageBuffer, 0, &v18, &v16, frameProperties, infoFlagsOut, outputHandler);
  }

  if (*(session + 10))
  {
    VTCompressionSessionEncodeFrameWithOutputHandler_cold_2(&v18);
    return v18;
  }

  v18 = *&presentationTimeStamp->value;
  epoch = presentationTimeStamp->epoch;
  v16 = *&duration->value;
  v17 = duration->epoch;
  return vtCompressionSessionEncodeFrameCommon(session, imageBuffer, 0, &v18, &v16, frameProperties, outputHandler, 0, infoFlagsOut);
}

OSStatus VTCompressionSessionEncodeMultiImageFrame(VTCompressionSessionRef session, CMTaggedBufferGroupRef taggedBufferGroup, CMTime *presentationTimeStamp, CMTime *duration, CFDictionaryRef frameProperties, void *sourceFrameRefcon, VTEncodeInfoFlags *infoFlagsOut)
{
  if (!session)
  {
    VTCompressionSessionEncodeMultiImageFrame_cold_5(&v18);
    return v18;
  }

  if (!taggedBufferGroup)
  {
    VTCompressionSessionEncodeMultiImageFrame_cold_4(&v18);
    return v18;
  }

  if (!CMTaggedBufferGroupGetCount(taggedBufferGroup))
  {
    VTCompressionSessionEncodeMultiImageFrame_cold_3(&v18);
    return v18;
  }

  if (*(session + 4))
  {
    VTCompressionSessionEncodeMultiImageFrame_cold_1(&v18);
    return v18;
  }

  if (!*(session + 569))
  {
    FigPowerReduceUtilitySFI();
  }

  v14 = *(session + 3);
  if (v14)
  {
    v18 = *&presentationTimeStamp->value;
    epoch = presentationTimeStamp->epoch;
    v16 = *&duration->value;
    v17 = duration->epoch;
    return VTCompressionSessionRemote_EncodeFrame(v14, 0, taggedBufferGroup, &v18, &v16, frameProperties, sourceFrameRefcon, infoFlagsOut);
  }

  if (!*(session + 10))
  {
    VTCompressionSessionEncodeMultiImageFrame_cold_2(&v18);
    return v18;
  }

  v18 = *&presentationTimeStamp->value;
  epoch = presentationTimeStamp->epoch;
  v16 = *&duration->value;
  v17 = duration->epoch;
  return vtCompressionSessionEncodeFrameCommon(session, 0, taggedBufferGroup, &v18, &v16, frameProperties, 0, sourceFrameRefcon, infoFlagsOut);
}

OSStatus VTCompressionSessionEncodeMultiImageFrameWithOutputHandler(VTCompressionSessionRef session, CMTaggedBufferGroupRef taggedBufferGroup, CMTime *presentationTimeStamp, CMTime *duration, CFDictionaryRef frameProperties, VTEncodeInfoFlags *infoFlagsOut, VTCompressionOutputHandler outputHandler)
{
  if (!outputHandler)
  {
    VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_6(&v18);
    return v18;
  }

  if (!session)
  {
    VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_5(&v18);
    return v18;
  }

  if (!taggedBufferGroup)
  {
    VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_4(&v18);
    return v18;
  }

  if (!CMTaggedBufferGroupGetCount(taggedBufferGroup))
  {
    VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_3(&v18);
    return v18;
  }

  if (*(session + 4))
  {
    VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_1(&v18);
    return v18;
  }

  if (!*(session + 569))
  {
    FigPowerReduceUtilitySFI();
  }

  v14 = *(session + 3);
  if (v14)
  {
    v18 = *&presentationTimeStamp->value;
    epoch = presentationTimeStamp->epoch;
    v16 = *&duration->value;
    v17 = duration->epoch;
    return VTCompressionSessionRemote_EncodeFrameWithOutputHandler(v14, 0, taggedBufferGroup, &v18, &v16, frameProperties, infoFlagsOut, outputHandler);
  }

  if (*(session + 10))
  {
    VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_2(&v18);
    return v18;
  }

  v18 = *&presentationTimeStamp->value;
  epoch = presentationTimeStamp->epoch;
  v16 = *&duration->value;
  v17 = duration->epoch;
  return vtCompressionSessionEncodeFrameCommon(session, 0, taggedBufferGroup, &v18, &v16, frameProperties, outputHandler, 0, infoFlagsOut);
}

uint64_t vtCompressionSessionPipelineCreateContext(_BYTE *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, __int128 *a7, __int128 *a8, const void *a9, uint64_t a10, void *a11)
{
  v19 = malloc_type_calloc(1uLL, 0x78uLL, 0x10600404BA76C06uLL);
  if (v19)
  {
    if (a1)
    {
      v20 = CFRetain(a1);
    }

    else
    {
      v20 = 0;
    }

    *v19 = v20;
    if (a2)
    {
      v21 = CFRetain(a2);
    }

    else
    {
      v21 = 0;
    }

    *(v19 + 4) = v21;
    if (a3)
    {
      v22 = CFRetain(a3);
    }

    else
    {
      v22 = 0;
    }

    *(v19 + 5) = v22;
    if (a4)
    {
      v23 = CFRetain(a4);
    }

    else
    {
      v23 = 0;
    }

    *(v19 + 1) = v23;
    if (a5)
    {
      v24 = CFRetain(a5);
    }

    else
    {
      v24 = 0;
    }

    *(v19 + 2) = v24;
    if (a6)
    {
      v25 = CFRetain(a6);
    }

    else
    {
      v25 = 0;
    }

    *(v19 + 3) = v25;
    v26 = *a7;
    *(v19 + 9) = *(a7 + 2);
    *(v19 + 56) = v26;
    v27 = *a8;
    *(v19 + 12) = *(a8 + 2);
    *(v19 + 5) = v27;
    if (a9)
    {
      result = CFRetain(a9);
    }

    else
    {
      result = 0;
    }

    *(v19 + 6) = result;
    *(v19 + 13) = a10;
    *(v19 + 28) = 0;
    v19[116] = 1;
    v19[117] = a1[592];
  }

  else
  {
    result = vtCompressionSessionPipelineCreateContext_cold_1();
  }

  *a11 = v19;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesWork(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(v2 + 16) != 2)
      {
        v3 = *(v2 + 472);
        v6 = *(a1 + 7);
        v7 = a1[9];
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v4)
        {
          v8 = v6;
          v9 = v7;
          result = v4(v3, &v8);
        }

        else
        {
          result = 4294954514;
        }

        goto LABEL_7;
      }

      vtCompressionSessionCompleteFramesWork_cold_1(&v8);
    }

    else
    {
      vtCompressionSessionCompleteFramesWork_cold_2(&v8);
    }

    result = v8;
LABEL_7:
    *(a1 + 28) = result;
    return result;
  }

  return vtCompressionSessionCompleteFramesWork_cold_3();
}

void vtCompressionSessionPipelineContextInvalidate(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      v3 = *(v2 + 32);
      if (v3)
      {
        CFRelease(v3);
        *(v2 + 32) = 0;
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 40) = 0;
      }

      v5 = *(v2 + 8);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 8) = 0;
      }

      v6 = *(v2 + 16);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 16) = 0;
      }

      v7 = *(v2 + 24);
      if (v7)
      {
        CFRelease(v7);
        *(v2 + 24) = 0;
      }

      v8 = MEMORY[0x1E6960C70];
      v9 = *MEMORY[0x1E6960C70];
      *(v2 + 56) = *MEMORY[0x1E6960C70];
      v10 = *(v8 + 16);
      *(v2 + 72) = v10;
      *(v2 + 80) = v9;
      *(v2 + 96) = v10;
      v11 = *(v2 + 48);
      if (v11)
      {
        CFRelease(v11);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t VTVideoEncoderGetTypeID()
{
  MEMORY[0x193AE3010](&VTVideoEncoderGetClassID_sRegisterVTVideoEncoderTypeOnce, RegisterVTVideoEncoderType);

  return CMBaseClassGetCFTypeID();
}

void vtCompressionSessionCopyFallbackVideoFormatDescriptionExtensions(uint64_t cf, const __CFDictionary *a2, __CFDictionary **a3)
{
  if (*(cf + 256))
  {
    vtCompressionSessionConfirmSpatialAndColorProperties(cf);
  }

  if (*(cf + 136) || *(cf + 144) || *(cf + 152) || *(cf + 160) || *(cf + 176) || *(cf + 184) || *(cf + 192) || *(cf + 200) || *(cf + 208) || *(cf + 216) || *(cf + 224) || *(cf + 232) || *(cf + 704) || *(cf + 736) || *(cf + 737) || *(cf + 738) || *(cf + 739) || *(cf + 744) || *(cf + 752) || *(cf + 760) || *(cf + 768) || *(cf + 776) || *(cf + 784) || *(cf + 792) || *(cf + 800) || *(cf + 264) || *(cf + 936))
  {
    v6 = CFGetAllocator(cf);
    if (a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v8 = MutableCopy;
    if (*(cf + 136))
    {
      v9 = *MEMORY[0x1E6965EF8];
      if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x1E6965EF8]))
      {
        CFDictionarySetValue(v8, v9, *(cf + 136));
      }
    }

    if (*(cf + 144))
    {
      v10 = *MEMORY[0x1E6965D70];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965D70]))
      {
        CFDictionarySetValue(v8, v10, *(cf + 144));
      }
    }

    if (*(cf + 152))
    {
      v11 = *MEMORY[0x1E6965E50];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965E50]))
      {
        CFDictionarySetValue(v8, v11, *(cf + 152));
      }
    }

    if (*(cf + 160))
    {
      v12 = *MEMORY[0x1E6965E58];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965E58]))
      {
        CFDictionarySetValue(v8, v12, *(cf + 160));
      }
    }

    if (!vtCompressionSessionIsIPT(cf))
    {
      if (*(cf + 176))
      {
        v32 = *MEMORY[0x1E6965D88];
        if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965D88]))
        {
          CFDictionarySetValue(v8, v32, *(cf + 176));
        }
      }

      if (*(cf + 184))
      {
        v33 = *MEMORY[0x1E6965F30];
        if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965F30]))
        {
          CFDictionarySetValue(v8, v33, *(cf + 184));
        }
      }

      if (*(cf + 192))
      {
        v34 = *MEMORY[0x1E6965E80];
        if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965E80]))
        {
          CFDictionarySetValue(v8, v34, *(cf + 192));
        }
      }

      if (*(cf + 200))
      {
        v35 = *MEMORY[0x1E6965F98];
        if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6965F98]))
        {
          CFDictionarySetValue(v8, v35, *(cf + 200));
        }
      }

      if (*(cf + 208))
      {
        v36 = *MEMORY[0x1E6960070];
        if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6960070]))
        {
          CFDictionarySetValue(v8, v36, *(cf + 208));
        }
      }
    }

    if (*(cf + 216))
    {
      v13 = *MEMORY[0x1E6960080];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6960080]))
      {
        CFDictionarySetValue(v8, v13, *(cf + 216));
      }
    }

    if (*(cf + 224))
    {
      v14 = *MEMORY[0x1E6960020];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6960020]))
      {
        CFDictionarySetValue(v8, v14, *(cf + 224));
      }
    }

    if (*(cf + 232))
    {
      v15 = *MEMORY[0x1E695FFF8];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E695FFF8]))
      {
        CFDictionarySetValue(v8, v15, *(cf + 232));
      }
    }

    if (*(cf + 704))
    {
      v16 = *MEMORY[0x1E695FFF0];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E695FFF0]))
      {
        CFDictionarySetValue(v8, v16, *(cf + 704));
      }
    }

    if (*(cf + 736))
    {
      v17 = *MEMORY[0x1E6962788];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6962788]))
      {
        v18 = MEMORY[0x1E695E4D0];
        if (!*(cf + 736))
        {
          v18 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v8, v17, *v18);
      }
    }

    if (*(cf + 737))
    {
      v19 = *MEMORY[0x1E6962790];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6962790]))
      {
        v20 = MEMORY[0x1E695E4D0];
        if (!*(cf + 737))
        {
          v20 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v8, v19, *v20);
      }
    }

    if (*(cf + 738))
    {
      v21 = *MEMORY[0x1E6962780];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6962780]))
      {
        v22 = MEMORY[0x1E695E4D0];
        if (!*(cf + 738))
        {
          v22 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v8, v21, *v22);
      }
    }

    if (*(cf + 739))
    {
      v23 = *MEMORY[0x1E6962778];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6962778]))
      {
        v24 = MEMORY[0x1E695E4D0];
        if (!*(cf + 739))
        {
          v24 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v8, v23, *v24);
      }
    }

    if (*(cf + 744))
    {
      v25 = *MEMORY[0x1E6962798];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6962798]))
      {
        CFDictionarySetValue(v8, v25, *(cf + 744));
      }
    }

    if (*(cf + 752))
    {
      v26 = *MEMORY[0x1E69627B0];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E69627B0]))
      {
        CFDictionarySetValue(v8, v26, *(cf + 752));
      }
    }

    if (*(cf + 760))
    {
      v27 = *MEMORY[0x1E69627D0];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E69627D0]))
      {
        CFDictionarySetValue(v8, v27, *(cf + 760));
      }
    }

    if (*(cf + 768) && !CFDictionaryContainsKey(v8, *MEMORY[0x1E69627C0]))
    {
      FigCFDictionarySetInt32();
    }

    if (*(cf + 776))
    {
      v28 = *MEMORY[0x1E69627D8];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E69627D8]))
      {
        CFDictionarySetValue(v8, v28, *(cf + 776));
      }
    }

    if (*(cf + 784) && !CFDictionaryContainsKey(v8, *MEMORY[0x1E6962740]))
    {
      FigCFDictionarySetInt32();
    }

    if (*(cf + 792) && !CFDictionaryContainsKey(v8, *MEMORY[0x1E69627A0]))
    {
      FigCFDictionarySetInt32();
    }

    if (*(cf + 800))
    {
      v29 = *MEMORY[0x1E6962750];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6962750]))
      {
        CFDictionarySetValue(v8, v29, *(cf + 800));
      }
    }

    if (*(cf + 264))
    {
      v30 = *MEMORY[0x1E6960068];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6960068]))
      {
        CFDictionarySetValue(v8, v30, *(cf + 264));
      }
    }

    if (*(cf + 936))
    {
      v31 = *MEMORY[0x1E6960078];
      if (!CFDictionaryContainsKey(v8, *MEMORY[0x1E6960078]))
      {
        CFDictionarySetValue(v8, v31, *(cf + 936));
      }
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

CFDataRef vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions(uint64_t a1, unsigned int a2, int a3, const __CFDictionary *a4)
{
  *(&v32[1] + 3) = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions_cold_1(bytes);
    return *bytes;
  }

  v4 = *(a1 + 724);
  if (v4 != 8 && v4 != 5)
  {
    return 0;
  }

  v32[0] = 0;
  v31 = 0;
  *(v32 + 7) = 0;
  if (v4 == 5)
  {
    v7 = 0;
  }

  else
  {
    if (v4 != 8)
    {
      return 0;
    }

    v7 = 64;
  }

  v8 = *(a1 + 728);
  v9 = *(a1 + 600);
  if (v8 != 0.0)
  {
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v9)
    {
      goto LABEL_13;
    }

LABEL_52:
    v16 = 13;
    goto LABEL_55;
  }

  *(a1 + 728) = 1106247680;
  v8 = 30.0;
  if (!v9)
  {
    goto LABEL_52;
  }

LABEL_13:
  v28 = v7;
  v10 = 0;
  v11 = vcvtps_u32_f32(v8 * (a3 * a2));
  v12 = *(a1 + 732);
  v13 = a2;
  v14 = &qword_18FECDB80;
  while (1)
  {
    if (*(v14 - 1) < v13 || *(v14 - 2) < v11)
    {
      goto LABEL_33;
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      v15 = *v14;
    }

    else
    {
      if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
        goto LABEL_33;
      }

      v15 = v14[1];
    }

    if (v12 <= v15)
    {
      break;
    }

LABEL_33:
    ++v10;
    v14 += 4;
    if (v10 == 13)
    {
      v16 = 13;
      goto LABEL_54;
    }
  }

  v16 = v10 + 1;
LABEL_54:
  v7 = v28;
LABEL_55:
  *bytes = 1;
  bytes[2] = (v16 >> 5) | (2 * v4);
  bytes[3] = (8 * v16) | 5;
  v30 = v7;
  v17 = *MEMORY[0x1E695E480];
  result = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
  if (v4 >= 8)
  {
    v19 = @"dvvC";
  }

  else
  {
    v19 = @"dvcC";
  }

  if (result)
  {
    v20 = result;
    v21 = *MEMORY[0x1E69600A0];
    Value = CFDictionaryGetValue(a4, *MEMORY[0x1E69600A0]);
    if (Value)
    {
      v23 = Value;
      Count = CFDictionaryGetCount(Value);
      MutableCopy = CFDictionaryCreateMutableCopy(v17, Count, v23);
      if (MutableCopy)
      {
        goto LABEL_61;
      }

LABEL_66:
      v27 = v20;
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!MutableCopy)
      {
        goto LABEL_66;
      }

LABEL_61:
      v26 = MutableCopy;
      CFDictionarySetValue(MutableCopy, v19, v20);
      CFDictionarySetValue(a4, v21, v26);
      CFRelease(v20);
      v27 = v26;
    }

    CFRelease(v27);
    return 0;
  }

  return result;
}

uint64_t VTEncoderSessionCreateVideoSecurityInfoExtension(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    VTEncoderSessionCreateVideoSecurityInfoExtension_cold_2(&v21);
    return v21;
  }

  v8 = *a1;
  if (!*a1)
  {
    VTEncoderSessionCreateVideoSecurityInfoExtension_cold_1(&v20);
    return v20;
  }

  vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration(*a1, 0);
  v16 = 1635135537;
  if (a2 == 1635135537)
  {
    v17 = *(v8 + 724) == 5;
    v18 = 1684108849;
  }

  else
  {
    v16 = 1752589105;
    if (a2 != 1752589105)
    {
      goto LABEL_10;
    }

    v17 = *(v8 + 724) == 5;
    v18 = 1685481521;
  }

  if (v17)
  {
    a2 = v18;
  }

  else
  {
    a2 = v16;
  }

LABEL_10:

  return MEMORY[0x1EEDBE388](a2, a3, a4, a5, a6, a7, a8);
}

void vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!vtCompressionSessionIsHEVC10BitCompatible(a1))
  {
    v8 = *(a1 + 48);
    if (v8 <= 1634743415)
    {
      if (v8 != 1634742376 && v8 != 1634742888 && v8 != 1634743400)
      {
        return;
      }
    }

    else
    {
      v9 = (v8 - 1634755432) > 0xB || ((1 << (v8 - 104)) & 0x8C1) == 0;
      if (v9 && ((v8 - 1634759272) > 6 || ((1 << (v8 - 104)) & 0x51) == 0) && v8 != 1634743416)
      {
        return;
      }
    }

    if (vtCompressionSessionIsPQ())
    {
      v15 = 3;
    }

    else
    {
      if (!vtCompressionSessionIsHLG())
      {
        return;
      }

      v15 = 4;
    }

    *(a1 + 720) = v15;
    return;
  }

  IsHLG = vtCompressionSessionIsHLG();
  v5 = MEMORY[0x1E695E4D0];
  if (IsHLG)
  {
    v6 = 8;
    v7 = 1;
LABEL_16:
    *(a1 + 720) = v7;
    *(a1 + 724) = v6;
    if (a2 && *v5 == *(a1 + 616))
    {
      v10 = (a1 + 616);
      *(a1 + 616) = *MEMORY[0x1E695E4C0];
      v11 = *MEMORY[0x1E695E480];
      if (*(a1 + 664))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"InitialSessionState", *(a1 + 664));
      }

      else
      {
        Mutable = 0;
      }

      if (VTHDRMetadataGenerationSessionCreate(v11, 4, Mutable, (a1 + 656)))
      {
LABEL_52:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

LABEL_35:
      cf = 0;
      if (!VTHDRMetadataGenerationSessionCreatePaddingNALUForEncoder(*(a1 + 656), &cf))
      {
        if (!cf)
        {
          goto LABEL_67;
        }

        if (vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"InsertTrailingBytes"))
        {
          v16 = *(a1 + 472);
          v17 = cf;
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v18 && !v18(v16, @"InsertTrailingBytes", v17))
          {
            *(a1 + 680) = CFRetain(cf);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        if (!*(a1 + 689) || *(a1 + 720) != 1)
        {
          goto LABEL_67;
        }

        *(a1 + 688) = 1;
        *(a1 + 690) = vtCompressionSessionIsPropertyHandledByVideoEncoder(a1, @"AmbientViewingEnvironment");
        if (!*(a1 + 704))
        {
          *bytes = 0x4240133DA0E92F00;
          *(a1 + 704) = CFDataCreate(v11, bytes, 8);
        }

        if (*(a1 + 712) || !FigHEVCBridge_CreateAmbientViewingEnvironmentSEINAL())
        {
LABEL_67:
          if ((*(a1 + 720) - 1) > 1 || !VTHDRImageStatisticsGenerationSessionCreate(0, 0, (a1 + 672)))
          {
            *v10 = *v5;
          }
        }
      }

      goto LABEL_52;
    }

    return;
  }

  if (vtCompressionSessionIsIPT(a1))
  {
    v6 = 5;
    v7 = 2;
    goto LABEL_16;
  }

  if (vtCompressionSessionIsPQ())
  {
    *(a1 + 720) = 3;
    if ((*(a1 + 624) || *(a1 + 616) == *v5) && a2 && *(a1 + 693))
    {
      *(a1 + 616) = *MEMORY[0x1E695E4C0];
      if (!*(a1 + 693))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        return;
      }

      v19 = vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration_cold_1((a1 + 624), a1, &v21, bytes);
      Mutable = *bytes;
      if (!v19)
      {
        goto LABEL_52;
      }

      v10 = (a1 + 616);
      v11 = v21;
      goto LABEL_35;
    }
  }
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets(uint64_t *a1, size_t a2, const void *a3, const void *a4, int a5, const __CFDictionary *a6, CMFormatDescriptionRef *a7)
{
  desc = 0;
  v28 = 0;
  if (a1)
  {
    v7 = *a1;
    if (*a1)
    {
      if (*(v7 + 16) != 2)
      {
        vtCompressionSessionCopyFallbackVideoFormatDescriptionExtensions(*a1, a6, &v28);
        Mutable = v28;
        if (v28)
        {
          v15 = v28;
        }

        else
        {
          v15 = a6;
        }

        v16 = vtCreateVideoFomatDescriptionFromHEVCParameterSets(v7, a2, a3, a4, a5, v15, &desc);
        if (v16)
        {
LABEL_27:
          v24 = v16;
LABEL_34:
          v25 = desc;
          goto LABEL_35;
        }

        if (!*(v7 + 724))
        {
          goto LABEL_17;
        }

        v17 = *MEMORY[0x1E69600A0];
        Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
        if (!Extension || (v19 = Extension, v20 = CFGetTypeID(Extension), v20 != CFDictionaryGetTypeID()))
        {
          v24 = 4294954384;
          goto LABEL_34;
        }

        if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v28 = Mutable) != 0))
        {
          CFDictionarySetValue(Mutable, v17, v19);
          Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
          v16 = vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions(v7, Dimensions.width, Dimensions.height, Mutable);
          if (!v16)
          {
            if (desc)
            {
              CFRelease(desc);
              desc = 0;
            }

            v16 = vtCreateVideoFomatDescriptionFromHEVCParameterSets(v7, a2, a3, a4, a5, Mutable, &desc);
            if (!v16)
            {
LABEL_17:
              v22 = *(v7 + 32);
              v23 = desc;
              *(v7 + 32) = desc;
              if (v23)
              {
                CFRetain(v23);
              }

              if (v22)
              {
                CFRelease(v22);
              }

              v24 = 0;
              v25 = desc;
              if (a7 && desc)
              {
                v24 = 0;
                *a7 = desc;
                desc = 0;
LABEL_37:
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                return v24;
              }

LABEL_35:
              if (v25)
              {
                CFRelease(v25);
              }

              goto LABEL_37;
            }
          }

          goto LABEL_27;
        }

        VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_1(&v29);
LABEL_33:
        v24 = v29;
        goto LABEL_34;
      }

      VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_2(&v29);
    }

    else
    {
      VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_3(&v29);
    }

    Mutable = 0;
    goto LABEL_33;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtCreateVideoFomatDescriptionFromHEVCParameterSets(CFDataRef *cf, size_t a2, const void *a3, const void *a4, int a5, const __CFDictionary *a6, CMFormatDescriptionRef *a7)
{
  v12 = a2;
  if (*(cf + 689) && *(cf + 688) && !*(cf + 690) && cf[89])
  {
    if (a2 >> 61 || 8 * a2 == -8 || (v19 = malloc_type_malloc(8 * a2 + 8, 0x10040436913F5uLL)) == 0)
    {
      vtCreateVideoFomatDescriptionFromHEVCParameterSets_cold_2(&v21);
      v14 = 0;
      v15 = 0;
      v17 = v21;
      goto LABEL_6;
    }

    v14 = v19;
    v15 = malloc_type_malloc(8 * v12 + 8, 0x100004000313F17uLL);
    if (!v15)
    {
      vtCreateVideoFomatDescriptionFromHEVCParameterSets_cold_1(&v20);
      v17 = v20;
      goto LABEL_6;
    }

    memcpy(v14, a3, 8 * v12);
    memcpy(v15, a4, 8 * v12);
    *(v14 + v12) = CFDataGetBytePtr(cf[89]);
    *(v15 + v12++) = CFDataGetLength(cf[89]);
    a4 = v15;
    a3 = v14;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = CFGetAllocator(cf);
  v17 = CMVideoFormatDescriptionCreateFromHEVCParameterSets(v16, v12, a3, a4, a5, a6, a7);
LABEL_6:
  free(v15);
  free(v14);
  return v17;
}

uint64_t VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = FigHEVCBridge_AllocThreeDimensionalReferenceDisplaysInfo();
  v7 = v6;
  if (!v6)
  {
    VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults_cold_1(&v10);
    ThreeDimensionalReferenceDisplaysInfoSEI = v10;
    goto LABEL_4;
  }

  if (a1)
  {
    *v6 = 31;
    *(v6 + 8) = a2;
    *(v6 + 10) = a3;
    ThreeDimensionalReferenceDisplaysInfoSEI = FigHEVCBridge_CreateThreeDimensionalReferenceDisplaysInfoSEI();
LABEL_4:
    free(v7);
    return ThreeDimensionalReferenceDisplaysInfoSEI;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void *vtTimeStampRetain(uint64_t a1, __int128 *a2)
{
  v3 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
  v4 = v3;
  if (v3)
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v4;
}

CFStringRef vtTimeStampCopyDescription(CMTime *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v3 = *a1;
  return CMTimeCopyDescription(v1, &v3);
}

uint64_t VTEncoderSessionTeardown(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  FigSimpleMutexDestroy();
  *(a1 + 24) = 0;

  return MEMORY[0x1EEDBCAA8](a1 + 8);
}

uint64_t VTEncoderSessionEnqueuePresentationTimeStamp(uint64_t a1, _DWORD *a2)
{
  if (a1 && (a2[3] & 0x1D) == 1)
  {
    FigSimpleMutexLock();
    CFArrayAppendValue(*(a1 + 16), a2);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VTEncoderSessionCreateCMBlockBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (*(a1 + 8) || (v5 = FigCopyCommonMemoryPool(), (*(a1 + 8) = v5) != 0))
    {
      result = MEMORY[0x193AE28D0]();
      if (result)
      {
        if (!a3)
        {
          return result;
        }

        goto LABEL_7;
      }

      VTEncoderSessionCreateCMBlockBuffer_cold_1(&v7);
    }

    else
    {
      VTEncoderSessionCreateCMBlockBuffer_cold_2(&v7);
    }

    result = v7;
    if (!a3)
    {
      return result;
    }

LABEL_7:
    *a3 = 0;
    return result;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTEncoderSessionDequeueDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  if (a1)
  {
    FigSimpleMutexLock();
    if (CFArrayGetCount(*(a1 + 16)) < 1)
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      FigSimpleMutexUnlock();
      return v7;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), 0);
      if (ValueAtIndex)
      {
        v5 = 0;
        v8 = *ValueAtIndex;
        v9 = ValueAtIndex[2];
      }

      else
      {
        fig_log_get_emitter();
        v5 = FigSignalErrorAtGM();
      }

      CFArrayRemoveValueAtIndex(*(a1 + 16), 0);
      FigSimpleMutexUnlock();
      if (a2)
      {
        *a2 = v8;
        *(a2 + 16) = v9;
      }

      return v5;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

OSStatus VTCompressionSessionBeginPass(VTCompressionSessionRef session, VTCompressionSessionOptionFlags beginPassFlags, uint32_t *reserved)
{
  if (!session)
  {
    VTCompressionSessionBeginPass_cold_4(&v10);
    return v10;
  }

  if (*(session + 4) == 2)
  {
    VTCompressionSessionBeginPass_cold_3(&v10);
    return v10;
  }

  v4 = *&beginPassFlags;
  if (*(session + 3))
  {
    v5 = *(session + 3);

    return VTCompressionSessionRemote_BeginPass(v5, beginPassFlags, reserved);
  }

  if (!*(session + 102))
  {
    VTCompressionSessionBeginPass_cold_2(&v10);
    return v10;
  }

  if (*(session + 206))
  {
    VTCompressionSessionBeginPass_cold_1(&v10);
    return v10;
  }

  *(session + 206) = 1;
  v7 = *(session + 59);
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (*v8 < 2uLL)
  {
    return -12782;
  }

  v9 = v8[8];
  if (!v9)
  {
    return -12782;
  }

  return v9(v7, v4, reserved);
}

OSStatus VTCompressionSessionEndPass(VTCompressionSessionRef session, Boolean *furtherPassesRequestedOut, uint32_t *reserved)
{
  if (!session)
  {
    VTCompressionSessionEndPass_cold_4(&v10);
    return v10;
  }

  if (*(session + 4) == 2)
  {
    VTCompressionSessionEndPass_cold_3(&v10);
    return v10;
  }

  if (*(session + 3))
  {
    v5 = *(session + 3);

    return VTCompressionSessionRemote_EndPass(v5, furtherPassesRequestedOut, reserved);
  }

  if (!*(session + 102))
  {
    VTCompressionSessionEndPass_cold_2(&v10);
    return v10;
  }

  if (*(session + 206) != 1)
  {
    VTCompressionSessionEndPass_cold_1(&v10);
    return v10;
  }

  *(session + 206) = 2;
  v7 = *(session + 59);
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (*v8 < 2uLL)
  {
    return -12782;
  }

  v9 = v8[9];
  if (!v9)
  {
    return -12782;
  }

  return v9(v7, furtherPassesRequestedOut, reserved);
}

OSStatus VTCompressionSessionGetTimeRangesForNextPass(VTCompressionSessionRef session, CMItemCount *timeRangeCountOut, const CMTimeRange **timeRangeArrayOut)
{
  if (!session)
  {
    VTCompressionSessionGetTimeRangesForNextPass_cold_8(&v8);
    return v8;
  }

  if (*(session + 4) == 2)
  {
    VTCompressionSessionGetTimeRangesForNextPass_cold_7(&v8);
    return v8;
  }

  v4 = *(session + 3);
  if (!v4)
  {
    if (*(session + 102))
    {
      v6 = *(session + 105);
      if (v6)
      {
        v7 = *(session + 104);
        if (v7 <= 0)
        {
          VTCompressionSessionGetTimeRangesForNextPass_cold_4(&v8);
        }

        else if (timeRangeCountOut)
        {
          if (timeRangeArrayOut)
          {
            if (*(session + 206) == 2)
            {
              result = 0;
              *(session + 206) = 0;
              *timeRangeCountOut = v7;
              *timeRangeArrayOut = v6;
              return result;
            }

            VTCompressionSessionGetTimeRangesForNextPass_cold_1(&v8);
          }

          else
          {
            VTCompressionSessionGetTimeRangesForNextPass_cold_2(&v8);
          }
        }

        else
        {
          VTCompressionSessionGetTimeRangesForNextPass_cold_3(&v8);
        }
      }

      else
      {
        VTCompressionSessionGetTimeRangesForNextPass_cold_5(&v8);
      }
    }

    else
    {
      VTCompressionSessionGetTimeRangesForNextPass_cold_6(&v8);
    }

    return v8;
  }

  return VTCompressionSessionRemote_GetTimeRangesForNextPass(v4, timeRangeCountOut, timeRangeArrayOut);
}

uint64_t VTDistributedCompressionGetSegmentRanges(const void *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (a4 <= 0)
  {
    VTDistributedCompressionGetSegmentRanges_cold_3(v21);
    return LODWORD(v21[0]);
  }

  if (!a5)
  {
    VTDistributedCompressionGetSegmentRanges_cold_2(v21);
    return LODWORD(v21[0]);
  }

  if (!a6)
  {
    VTDistributedCompressionGetSegmentRanges_cold_1(v21);
    return LODWORD(v21[0]);
  }

  v11 = VTCreateVideoEncoderInstanceFromEncoderID(a1, *MEMORY[0x1E695E480], &cf);
  v12 = cf;
  if (v11)
  {
    v15 = v11;
    if (!cf)
    {
      return v15;
    }

    goto LABEL_10;
  }

  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v13 = *(CMBaseObjectGetVTable() + 16);
  if (*v13 >= 2uLL && (v14 = v13[15]) != 0)
  {
    v21[0] = v17;
    v21[1] = v18;
    v21[2] = v19;
    v15 = v14(v12, a2, v21, a4, a5, a6);
  }

  else
  {
    v15 = 4294954514;
  }

  v12 = cf;
  if (cf)
  {
LABEL_10:
    CFRelease(v12);
  }

  return v15;
}

CFDictionaryRef VTCreateDictionaryRepresentationForMovedRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v24 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v9 = a6;
  v10 = a5;
  *keys = xmmword_1E72C5E48;
  v22 = *&off_1E72C5E58;
  v23 = xmmword_1E72C5E68;
  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  cf = CFNumberCreate(v6, kCFNumberCGFloatType, &v12);
  v17 = CFNumberCreate(v6, kCFNumberCGFloatType, &v13);
  v18 = CFNumberCreate(v6, kCFNumberCGFloatType, &v14);
  v19 = CFNumberCreate(v6, kCFNumberCGFloatType, &v10);
  v20 = CFNumberCreate(v6, kCFNumberCGFloatType, &v9);
  v7 = CFDictionaryCreate(v6, keys, &values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  CFRelease(cf);
  CFRelease(v17);
  CFRelease(v18);
  CFRelease(v19);
  CFRelease(v20);
  return v7;
}

double VTMakeMovedRectWithDictionaryRepresentation(const __CFDictionary *a1, void *a2, void *a3)
{
  v20 = 0u;
  v21 = 0u;
  Value = CFDictionaryGetValue(a1, @"X");
  v7 = CFDictionaryGetValue(a1, @"Y");
  v8 = CFDictionaryGetValue(a1, @"Width");
  v9 = CFDictionaryGetValue(a1, @"Height");
  v10 = CFDictionaryGetValue(a1, @"DX");
  v11 = CFDictionaryGetValue(a1, @"DY");
  if (Value)
  {
    v12 = v11;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      if (v7)
      {
        v14 = CFNumberGetTypeID();
        if (v14 == CFGetTypeID(v7))
        {
          if (v8)
          {
            v15 = CFNumberGetTypeID();
            if (v15 == CFGetTypeID(v8))
            {
              if (v9)
              {
                v16 = CFNumberGetTypeID();
                if (v16 == CFGetTypeID(v9))
                {
                  if (v10)
                  {
                    v17 = CFNumberGetTypeID();
                    if (v17 == CFGetTypeID(v10))
                    {
                      if (v12)
                      {
                        v18 = CFNumberGetTypeID();
                        if (v18 == CFGetTypeID(v12))
                        {
                          CFNumberGetValue(Value, kCFNumberCGFloatType, &v20);
                          CFNumberGetValue(v7, kCFNumberCGFloatType, &v20 + 8);
                          CFNumberGetValue(v8, kCFNumberCGFloatType, &v21);
                          CFNumberGetValue(v9, kCFNumberCGFloatType, &v21 + 8);
                          if (a2)
                          {
                            CFNumberGetValue(v10, kCFNumberCGFloatType, a2);
                          }

                          if (a3)
                          {
                            CFNumberGetValue(v12, kCFNumberCGFloatType, a3);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *&v20;
}

__CFString *vtCompressionSessionCopyDebugDesc(uint64_t a1)
{
  v1 = *(a1 + 48);
  v8 = v1;
  if (*(a1 + 24))
  {

    return CFRetain(@"[VTCompressionSession]");
  }

  else
  {
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    if (v1 > 0xA)
    {
      if (v1 > 0x28)
      {
        v8 = bswap32(v1);
      }

      else
      {
        v6 = *(a1 + 48);
        LOBYTE(v8) = v6 / 0xA + 48;
        *(&v8 + 1) = (v6 % 0xA) | 0x30;
      }
    }

    else
    {
      LOWORD(v8) = (*(a1 + 48) + 48);
    }

    v7 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, 0, @"<VTCompressionSession %p [%p]>{%d x %d '%.4s', videoEncoder:%p, sourcePixelBufferAttributes:%p, encoderPixelBufferAttributes:%p, sourcePixelBufferPool:%p, pixelTransferBufferPool:%p, outputCallback:%p, outputCallbackRefCon:%p, pendingFrameCount:%d}", a1, v7, *(a1 + 40), *(a1 + 44), &v8, *(a1 + 472), *(a1 + 64), *(a1 + 512), *(a1 + 536), *(a1 + 528), *(a1 + 80), *(a1 + 88), *(a1 + 120));
    return Mutable;
  }
}

uint64_t __vtCompressionSessionStoreHDRDefaultWrites_block_invoke()
{
  vtCompressionSessionStoreHDRDefaultWrites_hdrEnabled = FigGetCFPreferenceNumberWithDefault();
  vtCompressionSessionStoreHDRDefaultWrites_hdrAlwaysGenerateStats = FigGetCFPreferenceNumberWithDefault();
  vtCompressionSessionStoreHDRDefaultWrites_enableAmbientViewingEnvironment = FigGetCFPreferenceNumberWithDefault();
  vtCompressionSessionStoreHDRDefaultWrites_generateDM4 = FigGetCFPreferenceNumberWithDefault();
  vtCompressionSessionStoreHDRDefaultWrites_sdrPreservationEnabled = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceNumberWithDefault();
  vtCompressionSessionStoreHDRDefaultWrites_hdr10PlusExtractionEnabled = result;
  return result;
}

uint64_t vtCoreAnalyticsSaveTrackedVideoEncoderSpecificationProperty(void *value, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 912);
  if (result)
  {
    result = CFSetContainsValue(result, value);
    if (result)
    {

      return FigCFDictionarySetValue();
    }
  }

  return result;
}

void vtCompressionSessionCreatePropertiesHandledByVideoToolbox()
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v19 = 0;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    keys[0] = @"PixelBufferPoolIsShared";
    keys[1] = @"VideoEncoderPixelBufferAttributes";
    values[0] = v1;
    values[1] = v1;
    keys[2] = @"PoolPixelBufferAttributesSeed";
    keys[3] = @"PoolPixelBufferAttributes";
    values[2] = v1;
    values[3] = v1;
    keys[4] = @"NumberOfPendingFrames";
    keys[5] = @"PixelTransferProperties";
    values[4] = v1;
    values[5] = v1;
    keys[6] = @"PixelAspectRatio";
    keys[7] = @"CleanAperture";
    values[6] = v1;
    values[7] = v1;
    keys[8] = @"FieldCount";
    keys[9] = @"FieldDetail";
    values[8] = v1;
    values[9] = v1;
    keys[10] = @"ComponentRange";
    keys[11] = @"ColorPrimaries";
    values[10] = v1;
    values[11] = v1;
    keys[12] = @"TransferFunction";
    keys[13] = @"GammaLevel";
    values[12] = v1;
    values[13] = v1;
    keys[14] = @"YCbCrMatrix";
    keys[15] = @"ICCProfile";
    values[14] = v1;
    values[15] = v1;
    keys[16] = @"MasteringDisplayColorVolume";
    keys[17] = @"ContentLightLevelInfo";
    values[16] = v1;
    values[17] = v1;
    keys[18] = @"FigThreadPriority";
    keys[19] = @"ClientPID";
    values[18] = v1;
    values[19] = v1;
    keys[20] = @"MultiPassStorage";
    keys[21] = @"RealTime";
    values[20] = v1;
    values[21] = v1;
    keys[22] = @"AllowPixelTransfer";
    keys[23] = @"EncoderID";
    values[22] = v1;
    values[23] = v1;
    keys[24] = @"MaximizePowerEfficiency";
    keys[25] = @"AuxiliaryTypeInfo";
    values[24] = v1;
    values[25] = v1;
    keys[26] = @"ChromaLocationTopField";
    keys[27] = @"ChromaLocationBottomField";
    values[26] = v1;
    values[27] = v1;
    keys[28] = @"HDRMetadataInsertionMode";
    keys[29] = @"PreserveDynamicHDRMetadata";
    values[28] = v1;
    values[29] = v1;
    keys[30] = @"AmbientViewingEnvironment";
    keys[31] = @"PrepareEncodedSampleBuffersForPaddedWrites";
    values[30] = v1;
    values[31] = v1;
    keys[32] = @"AllowCompressedPixelFormats";
    keys[33] = @"HasLeftStereoEyeView";
    values[32] = v1;
    values[33] = v1;
    keys[34] = @"HasRightStereoEyeView";
    *&v11 = @"HasEyeViewsReversed";
    values[34] = v1;
    values[35] = v1;
    *(&v11 + 1) = @"HasAdditionalViews";
    *&v12 = @"HeroEye";
    values[36] = v1;
    values[37] = v1;
    *(&v12 + 1) = @"ProjectionKind";
    *&v13 = @"ViewPackingKind";
    values[38] = v1;
    values[39] = v1;
    *(&v13 + 1) = @"TransportIdentifier";
    *&v14 = @"WarpKind";
    *&v4 = v1;
    *(&v4 + 1) = v1;
    *(&v14 + 1) = @"StereoCameraBaseline";
    *&v15 = @"HorizontalDisparityAdjustment";
    *&v5 = v1;
    *(&v5 + 1) = v1;
    *(&v15 + 1) = @"CameraCalibrationDataLensCollection";
    *&v16 = @"HorizontalFieldOfView";
    *&v6 = v1;
    *(&v6 + 1) = v1;
    *(&v16 + 1) = @"PowerLogSessionID";
    *&v17 = @"LowMemory";
    *&v7 = v1;
    *(&v7 + 1) = v1;
    *(&v17 + 1) = @"InputQueueMaxCount";
    *&v18 = @"CurrentHDRMetadataGenerationState";
    *&v8 = v1;
    *(&v8 + 1) = v1;
    *(&v18 + 1) = @"InitialHDRMetadataGenerationState";
    *&v9 = v1;
    sVTCompressionSessionPropertiesHandledByVideoToolbox = CFDictionaryCreate(v0, keys, values, 51, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!sVTCompressionSessionPropertiesHandledByVideoToolbox)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    CFRelease(v2);
  }

  else
  {
    fig_log_get_emitter();

    FigSignalErrorAtGM();
  }
}

CFTypeID vtReadRationalOrIntegerFromDictionary(const __CFDictionary *a1, const void *a2, const void *a3, void *a4, _DWORD *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v10 = Value, v11 = CFArrayGetTypeID(), v11 == CFGetTypeID(v10)) && CFArrayGetCount(v10) == 2 && (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), v13 = CFArrayGetValueAtIndex(v10, 1), ValueAtIndex) && (v14 = v13, v15 = CFNumberGetTypeID(), v15 == CFGetTypeID(ValueAtIndex)) && v14 && (v16 = CFNumberGetTypeID(), v16 == CFGetTypeID(v14)))
  {
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a4);

    return CFNumberGetValue(v14, kCFNumberSInt32Type, a5);
  }

  else
  {
    result = CFDictionaryGetValue(a1, a3);
    if (result)
    {
      v18 = result;
      TypeID = CFNumberGetTypeID();
      result = CFGetTypeID(v18);
      if (TypeID == result)
      {
        result = CFNumberGetValue(v18, kCFNumberSInt32Type, a4);
        *a5 = 1;
      }
    }
  }

  return result;
}

void vtCompressionSessionAddPropertyToPartition(void *key, const void *a2, CFDictionaryRef *a3)
{
  v6 = a3[4];
  if (v6 && CFDictionaryContainsKey(v6, key))
  {
    v9 = a3[5];
    v8 = a3 + 5;
    Mutable = v9;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (CFDictionaryContainsKey(*a3, key))
    {
      v10 = a3[2];
      v8 = a3 + 2;
      Mutable = v10;
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v11 = a3[1];
    if (!v11 || !CFDictionaryContainsKey(v11, key))
    {
      return;
    }

    v12 = a3[3];
    v8 = a3 + 3;
    Mutable = v12;
    if (!v12)
    {
LABEL_4:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v8 = Mutable;
    }
  }

LABEL_5:

  CFDictionarySetValue(Mutable, key, a2);
}

uint64_t vtCompressionSessionIsHEVC10BitCompatible(uint64_t a1)
{
  v1 = *(a1 + 608);
  if (v1 != 10 && v1 != 0)
  {
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    return *(a1 + 808) == 0;
  }

  return result;
}

void vtCompressionSessionPipelineContextHandleError(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 16) == 2)
    {
      vtCompressionSessionPipelineContextHandleError_cold_1();
    }

    else
    {
      v4 = a1[13];

      VTEncoderSessionEmitEncodedFrame((v2 + 424), v4, a2, 0, 0);
    }
  }

  else
  {
    vtCompressionSessionPipelineContextHandleError_cold_2();
  }
}

uint64_t vtEncoderSetOneProperty(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    result = v7(v6, a1, a2);
  }

  else
  {
    result = 4294954514;
  }

  if (!*(a3 + 2))
  {
    *(a3 + 2) = result;
  }

  return result;
}

void *__vtCompressionSessionSendConfigToCoreAnalytics_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  v5 = *(v2 + 44);
  v6 = *(v2 + 40);
  v7 = *(v2 + 816);
  v27 = 0;
  propertyValueOut = 0;
  empty = xpc_dictionary_create_empty();
  v9 = empty;
  if (empty)
  {
    xpc_dictionary_set_uint64(empty, "CodecType", v4);
    xpc_dictionary_set_uint64(v9, "Width", v6);
    xpc_dictionary_set_uint64(v9, "Height", v5);
    if (v3)
    {
      if (FigCFDictionaryGetBooleanIfPresent())
      {
        xpc_dictionary_set_BOOL(v9, "EnableHardware", HIBYTE(v27) != 0);
      }

      if (FigCFDictionaryGetBooleanIfPresent())
      {
        xpc_dictionary_set_BOOL(v9, "RequireHardware", v27 != 0);
      }

      if (FigCFDictionaryGetValue())
      {
        xpc_dictionary_set_BOOL(v9, "RequireEncoderID", 1);
      }
    }

    if (FigCFDictionaryGetValue())
    {
      FigXPCMessageSetCFString();
    }

    if (FigCFDictionaryGetValue())
    {
      FigXPCMessageSetCFString();
    }

    if (FigCFDictionaryGetValue())
    {
      FigXPCMessageSetCFString();
    }

    propertyValueOut = FigCFDictionaryGetValue();
    if (propertyValueOut)
    {
      FigXPCMessageSetCFString();
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      xpc_dictionary_set_uint64(v9, "AverageBitRate", 0);
    }

    if (FigCFDictionaryGetFloat32IfPresent())
    {
      xpc_dictionary_set_double(v9, "ExpectedFrameRate", 0.0);
    }

    if (FigCFDictionaryGetFloat32IfPresent())
    {
      xpc_dictionary_set_double(v9, "Quality", 0.0);
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      xpc_dictionary_set_BOOL(v9, "RealTime", 0);
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      xpc_dictionary_set_BOOL(v9, "MaximizePowerEfficiency", 0);
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      xpc_dictionary_set_BOOL(v9, "PrioritizeEncodingSpeedOverQuality", 0);
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      xpc_dictionary_set_uint64(v9, "ConstantBitRate", 0);
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      xpc_dictionary_set_BOOL(v9, "AllowFrameReordering", 0);
    }

    if (FigCFDictionaryGetFloat32IfPresent())
    {
      xpc_dictionary_set_double(v9, "MaxKeyFrameIntervalDuration", 0.0);
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      xpc_dictionary_set_BOOL(v9, "AllowTemporalCompression", 0);
    }

    if (FigCFDictionaryGetFloat32IfPresent())
    {
      xpc_dictionary_set_double(v9, "BaseLayerFrameRate", 0.0);
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      xpc_dictionary_set_uint64(v9, "OutputBitDepth", 0);
    }

    v25 = v7;
    v10 = *MEMORY[0x1E695E480];
    if (VTSessionCopyProperty(*(a1 + 32), @"EncoderID", *MEMORY[0x1E695E480], &propertyValueOut) || !propertyValueOut)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    else
    {
      FigXPCMessageSetCFString();
      if (propertyValueOut)
      {
        CFRelease(propertyValueOut);
      }
    }

    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v12);
        if (Count >= 2)
        {
          v15 = 0;
          v16 = Count / 2;
          v17 = 1;
          do
          {
            memset(&__str, 0, 64);
            snprintf(&__str, 0x40uLL, "DataRateLimitsSize%d", v15);
            CFArrayGetValueAtIndex(v12, v17 - 1);
            FigCFNumberGetFloat32();
            xpc_dictionary_set_double(v9, &__str, v18);
            snprintf(&__str, 0x40uLL, "DataRateLimitsSeconds%d", v15);
            CFArrayGetValueAtIndex(v12, v17);
            FigCFNumberGetFloat32();
            xpc_dictionary_set_double(v9, &__str, v19);
            ++v15;
            v17 += 2;
          }

          while (v16 != v15);
        }
      }
    }

    propertyValueOut = FigCFDictionaryGetValue();
    if (propertyValueOut)
    {
      FigXPCMessageSetCFString();
    }

    if (v25)
    {
      xpc_dictionary_set_BOOL(v9, "Multipass", 1);
    }

    v20 = *(a1 + 32);
    if (!v20[113])
    {
      goto LABEL_68;
    }

    if (CFStringGetLength(v20[113]))
    {
      if (vtCompressionSessionGetDeviceSerialNumber_sGetDeviceSerialNumberOnce != -1)
      {
        __vtCompressionSessionSendConfigToCoreAnalytics_block_invoke_cold_1();
      }

      if (vtCompressionSessionGetDeviceSerialNumber_sDeviceSerialNumber)
      {
        *len = 0;
        BytesFromCFString = FigCreateBytesFromCFString();
        if (*len)
        {
          v30.tv_sec = 0;
          *&v30.tv_usec = 0;
          memset(&v29, 0, sizeof(v29));
          gettimeofday(&v30, 0);
          localtime_r(&v30.tv_sec, &v29);
          data = v29.tm_yday + 366 * v29.tm_year;
          memset(&__str, 0, sizeof(__str));
          CC_SHA256_Init(&__str);
          CC_SHA256_Update(&__str, BytesFromCFString, len[0]);
          CC_SHA256_Update(&__str, &data, 4u);
          v22 = FigCreateBytesFromCFString();
          if (v22)
          {
            v23 = v22;
            CC_SHA256_Update(&__str, v22, len[0]);
            CFAllocatorDeallocate(v10, v23);
            CC_SHA256_Final(md, &__str);
            vtCompressionSessionCoreAnalyticsShouldReportBundleID_shouldReport = *md < 0x290u;
          }
        }

        if (BytesFromCFString)
        {
          CFAllocatorDeallocate(v10, BytesFromCFString);
        }
      }
    }

    if (vtCompressionSessionCoreAnalyticsShouldReportBundleID_shouldReport)
    {
      FigXPCMessageSetCFString();
    }
  }

  v20 = *(a1 + 32);
  if (v20)
  {
LABEL_68:
    CFRelease(v20);
  }

  return v9;
}

uint64_t __vtCompressionSessionGetDeviceSerialNumber_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    vtCompressionSessionGetDeviceSerialNumber_sDeviceSerialNumber = IORegistryEntryCreateCFProperty(result, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);

    return IOObjectRelease(v3);
  }

  return result;
}

BOOL vtDoesFrameRequireIOSurfaceSynchronization(__CVBuffer *a1, CMTaggedBufferGroupRef group)
{
  if (a1)
  {

    return vtDoesPixelBufferRequireIOSurfaceSynchronization(a1);
  }

  else if (group && (Count = CMTaggedBufferGroupGetCount(group), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      if (CVPixelBufferAtIndex)
      {
        if (vtDoesPixelBufferRequireIOSurfaceSynchronization(CVPixelBufferAtIndex))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void vtCompressionSessionIOSurfaceSynchronizationWork(void *a1)
{
  v8 = a1;
  if (*a1)
  {
    if (*(*a1 + 16) == 2)
    {
      vtCompressionSessionIOSurfaceSynchronizationWork_cold_5(&v9);
      goto LABEL_21;
    }

    v2 = a1[4];
    if (*(a1 + 2) == 0)
    {
      vtCompressionSessionIOSurfaceSynchronizationWork_cold_4(&v9);
      goto LABEL_21;
    }

    if (v2)
    {
      if (CVPixelBufferGetIOSurface(v2))
      {
        if (*(a1 + 116) == 1)
        {
          v3 = IOSurfaceBindAccel();
          if (v3)
          {
LABEL_25:
            Work = v3;
            goto LABEL_9;
          }

LABEL_8:
          Work = vtCompressionSessionPipelineContextPerformNextWork(a1, 1);
          if (Work)
          {
LABEL_9:
            vtCompressionSessionPipelineContextHandleError(a1, Work);
            FigSemaphoreSignal();
LABEL_10:
            vtCompressionSessionPipelineContextInvalidate(&v8);
            return;
          }

          goto LABEL_22;
        }

        goto LABEL_30;
      }

      vtCompressionSessionIOSurfaceSynchronizationWork_cold_1(&v9);
    }

    else
    {
      if (*(a1 + 116) != 1)
      {
LABEL_30:
        vtCompressionSessionIOSurfaceSynchronizationWork_cold_2(&v9);
        goto LABEL_21;
      }

      if (!a1[5])
      {
        goto LABEL_8;
      }

      Count = CMTaggedBufferGroupGetCount(a1[5]);
      if (Count < 1)
      {
        goto LABEL_8;
      }

      v6 = Count;
      v7 = 0;
      while (FigTaggedBufferGroupGetCVPixelBufferAtIndex())
      {
        if (CVPixelBufferGetIOSurface(0))
        {
          v3 = IOSurfaceBindAccel();
          if (v3)
          {
            goto LABEL_25;
          }
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      vtCompressionSessionIOSurfaceSynchronizationWork_cold_3(&v9);
    }

LABEL_21:
    Work = v9;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_22:

    FigSemaphoreSignal();
    return;
  }

  if ((vtCompressionSessionIOSurfaceSynchronizationWork_cold_6(a1) & 1) == 0)
  {
    goto LABEL_10;
  }
}

void vtCompressionSessionPixelTransferSessionWork(uint64_t a1)
{
  pixelBufferOut = 0;
  v29 = a1;
  cf = 0;
  v1 = *a1;
  if (*a1)
  {
    if (v1[4] == 2)
    {
      vtCompressionSessionPixelTransferSessionWork_cold_8(&v30);
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      if (*(a1 + 32) == 0)
      {
        vtCompressionSessionPixelTransferSessionWork_cold_7(&v30);
      }

      else
      {
        v5 = *(a1 + 24);
        if (v5)
        {
          v6 = *(a1 + 8);
          if (v6)
          {
            if (*(a1 + 116) == 1)
            {
              FigSimpleMutexLock();
              if (v3)
              {
                v7 = CFGetAllocator(v1);
                v8 = CVPixelBufferPoolCreatePixelBuffer(v7, v5, &pixelBufferOut);
                if (v8)
                {
                  Work = v8;
                  Mutable = 0;
                  v11 = 0;
                }

                else
                {
                  v9 = VTPixelTransferSessionTransferImage(v6, v3, pixelBufferOut);
                  Mutable = 0;
                  if (!v9)
                  {
                    v11 = 0;
LABEL_29:
                    FigSimpleMutexUnlock();
                    vtCompressionSessionPipelineContextSetBuffer(a1, pixelBufferOut, cf);
                    Work = vtCompressionSessionPipelineContextPerformNextWork(a1, 1);
                    goto LABEL_30;
                  }

                  Work = v9;
                  v11 = 0;
                }

                goto LABEL_48;
              }

              if (!v4)
              {
                Mutable = 0;
                v11 = 0;
                goto LABEL_29;
              }

              Count = CMTaggedBufferGroupGetCount(v4);
              allocator = *MEMORY[0x1E695E480];
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
              if (Mutable)
              {
                if (Count < 1)
                {
                  v11 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
                  if (v11)
                  {
LABEL_28:
                    v23 = MEMORY[0x193AE2F70](allocator, Mutable, v11, &cf);
                    if (!v23)
                    {
                      goto LABEL_29;
                    }

                    Work = v23;
                    goto LABEL_48;
                  }
                }

                else
                {
                  for (i = 0; i != Count; ++i)
                  {
                    TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v4, i);
                    CFArrayAppendValue(Mutable, TagCollectionAtIndex);
                  }

                  v15 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
                  if (v15)
                  {
                    v11 = v15;
                    v25 = Mutable;
                    v16 = v1;
                    v17 = 0;
                    while (1)
                    {
                      v18 = v11;
                      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
                      if (!CVPixelBufferAtIndex)
                      {
                        break;
                      }

                      v20 = CVPixelBufferAtIndex;
                      v21 = CFGetAllocator(v16);
                      v22 = CVPixelBufferPoolCreatePixelBuffer(v21, v5, &pixelBufferOut);
                      if (v22 || (v22 = VTPixelTransferSessionTransferImage(v6, v20, pixelBufferOut), v22))
                      {
                        Work = v22;
                        goto LABEL_47;
                      }

                      v11 = v18;
                      CFArrayAppendValue(v18, pixelBufferOut);
                      if (pixelBufferOut)
                      {
                        CFRelease(pixelBufferOut);
                        pixelBufferOut = 0;
                      }

                      if (Count == ++v17)
                      {
                        v1 = v16;
                        Mutable = v25;
                        goto LABEL_28;
                      }
                    }

                    vtCompressionSessionPixelTransferSessionWork_cold_2(&v30);
                    Work = v30;
LABEL_47:
                    v1 = v16;
                    v11 = v18;
                    Mutable = v25;
                    goto LABEL_48;
                  }
                }

                vtCompressionSessionPixelTransferSessionWork_cold_3(&v30);
              }

              else
              {
                vtCompressionSessionPixelTransferSessionWork_cold_4(&v30);
              }

              v11 = 0;
              Work = v30;
LABEL_48:
              FigSimpleMutexUnlock();
              goto LABEL_30;
            }

            vtCompressionSessionPixelTransferSessionWork_cold_1(&v30);
          }

          else
          {
            vtCompressionSessionPixelTransferSessionWork_cold_5(&v30);
          }
        }

        else
        {
          vtCompressionSessionPixelTransferSessionWork_cold_6(&v30);
        }
      }
    }
  }

  else
  {
    vtCompressionSessionPixelTransferSessionWork_cold_9(&v30);
  }

  v11 = 0;
  Mutable = 0;
  Work = v30;
LABEL_30:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Work)
  {
    vtCompressionSessionPipelineContextHandleError(v29, Work);
    if (v1)
    {
      FigSemaphoreSignal();
    }

    vtCompressionSessionPipelineContextInvalidate(&v29);
  }

  else if (v1)
  {
    FigSemaphoreSignal();
  }
}

void vtCompressionSessionColorSyncWork(uint64_t a1)
{
  pixelBufferOut = 0;
  v29 = a1;
  cf = 0;
  v1 = *a1;
  if (*a1)
  {
    if (v1[4] == 2)
    {
      vtCompressionSessionColorSyncWork_cold_8(&v30);
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      if (*(a1 + 32) == 0)
      {
        vtCompressionSessionColorSyncWork_cold_7(&v30);
      }

      else
      {
        v5 = *(a1 + 24);
        if (v5)
        {
          v6 = *(a1 + 16);
          if (v6)
          {
            if (*(a1 + 116) == 1)
            {
              FigSimpleMutexLock();
              if (v3)
              {
                v7 = CFGetAllocator(v1);
                v8 = CVPixelBufferPoolCreatePixelBuffer(v7, v5, &pixelBufferOut);
                if (v8)
                {
                  Work = v8;
                  Mutable = 0;
                  v11 = 0;
                }

                else
                {
                  v9 = VTPixelTransferSessionTransferImage(v6, v3, pixelBufferOut);
                  Mutable = 0;
                  if (!v9)
                  {
                    v11 = 0;
LABEL_29:
                    FigSimpleMutexUnlock();
                    vtCompressionSessionPipelineContextSetBuffer(a1, pixelBufferOut, cf);
                    Work = vtCompressionSessionPipelineContextPerformNextWork(a1, 0);
                    goto LABEL_30;
                  }

                  Work = v9;
                  v11 = 0;
                }

                goto LABEL_48;
              }

              if (!v4)
              {
                Mutable = 0;
                v11 = 0;
                goto LABEL_29;
              }

              Count = CMTaggedBufferGroupGetCount(v4);
              allocator = *MEMORY[0x1E695E480];
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
              if (Mutable)
              {
                if (Count < 1)
                {
                  v11 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
                  if (v11)
                  {
LABEL_28:
                    v23 = MEMORY[0x193AE2F70](allocator, Mutable, v11, &cf);
                    if (!v23)
                    {
                      goto LABEL_29;
                    }

                    Work = v23;
                    goto LABEL_48;
                  }
                }

                else
                {
                  for (i = 0; i != Count; ++i)
                  {
                    TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v4, i);
                    CFArrayAppendValue(Mutable, TagCollectionAtIndex);
                  }

                  v15 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
                  if (v15)
                  {
                    v11 = v15;
                    v25 = Mutable;
                    v16 = v1;
                    v17 = 0;
                    while (1)
                    {
                      v18 = v11;
                      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
                      if (!CVPixelBufferAtIndex)
                      {
                        break;
                      }

                      v20 = CVPixelBufferAtIndex;
                      v21 = CFGetAllocator(v16);
                      v22 = CVPixelBufferPoolCreatePixelBuffer(v21, v5, &pixelBufferOut);
                      if (v22 || (v22 = VTPixelTransferSessionTransferImage(v6, v20, pixelBufferOut), v22))
                      {
                        Work = v22;
                        goto LABEL_47;
                      }

                      v11 = v18;
                      CFArrayAppendValue(v18, pixelBufferOut);
                      if (pixelBufferOut)
                      {
                        CFRelease(pixelBufferOut);
                        pixelBufferOut = 0;
                      }

                      if (Count == ++v17)
                      {
                        v1 = v16;
                        Mutable = v25;
                        goto LABEL_28;
                      }
                    }

                    vtCompressionSessionColorSyncWork_cold_2(&v30);
                    Work = v30;
LABEL_47:
                    v1 = v16;
                    v11 = v18;
                    Mutable = v25;
                    goto LABEL_48;
                  }
                }

                vtCompressionSessionColorSyncWork_cold_3(&v30);
              }

              else
              {
                vtCompressionSessionColorSyncWork_cold_4(&v30);
              }

              v11 = 0;
              Work = v30;
LABEL_48:
              FigSimpleMutexUnlock();
              goto LABEL_30;
            }

            vtCompressionSessionColorSyncWork_cold_1(&v30);
          }

          else
          {
            vtCompressionSessionColorSyncWork_cold_5(&v30);
          }
        }

        else
        {
          vtCompressionSessionColorSyncWork_cold_6(&v30);
        }
      }
    }
  }

  else
  {
    vtCompressionSessionColorSyncWork_cold_9(&v30);
  }

  v11 = 0;
  Mutable = 0;
  Work = v30;
LABEL_30:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Work)
  {
    vtCompressionSessionPipelineContextHandleError(v29, Work);
    if (v1)
    {
      FigSemaphoreSignal();
    }

    vtCompressionSessionPipelineContextInvalidate(&v29);
  }

  else if (v1)
  {
    FigSemaphoreSignal();
  }
}

uint64_t vtIsPixelBufferCompatibleWithAttributes(void *a1, __CVBuffer *a2, uint64_t a3)
{
  if (a3 && !CVPixelBufferIsCompatibleWithAttributes())
  {
    return 0;
  }

  v5 = a1[70];
  if (!v5)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(v5, @"ScalingMode");
  if (Value && !CFEqual(Value, @"Normal"))
  {
    v11 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EF8], 0);
    v7 = v11;
    v12 = a1[17];
    if (v11 != v12 && (!vtIsPixelAspectRatioSquare(v11) || !vtIsPixelAspectRatioSquare(v12)) && !FigCFEqual())
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_8;
    }

    v13 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D70], 0);
    v8 = v13;
    v14 = a1[18];
    if (v13 != v14)
    {
      v15 = !v13 || v14 == 0;
      if (v15 || !CFEqual(v13, v14))
      {
        v9 = 0;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = 1;
LABEL_8:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t vtIsPixelAspectRatioSquare(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 1;
  }

  CFDictionaryGetValue(a1, *MEMORY[0x1E6965EF0]);
  CFDictionaryGetValue(a1, *MEMORY[0x1E6965F00]);

  return FigCFEqual();
}

uint64_t vtCompressionSessionPipelineContextPerformNextWork(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 + 296);
    v4 = *(v2 + 304);
    if (a2)
    {
      if (*(v2 + 368))
      {
        v4 = *(v2 + 376);
        v5 = *(v2 + 368);
      }
    }

    FigSemaphoreWaitRelative();
    dispatch_group_async_f(*(v2 + 280), v5, a1, v4);
    return 0;
  }

  else
  {
    vtCompressionSessionPipelineContextPerformNextWork_cold_1(&v7);
    return v7;
  }
}

void vtCompressionSessionPipelineContextSetBuffer(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t vtIsPixelBufferCompatibleWithColorPropertiesAndDoesPixelBufferHaveDesiredColorRange(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, CGColorSpaceRef *a6, uint64_t a7)
{
  result = VTIsPixelBufferCompatibleWithColorProperties(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    return vtCompressionSessionDoesPixelFormatHaveDesiredColorRange(PixelFormatType, a7) != 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v3 = *v1;

  return CFEqual(v3, v0);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  v3 = *v1;

  return CFEqual(v3, v0);
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return CFEqual(v1, v0);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  v3 = *v1;

  return CFEqual(v3, v0);
}

void OUTLINED_FUNCTION_18_0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t VTCompressionSessionServerStart()
{
  ShouldUseSeparateCodecProcessForEncode = VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode();
  v1 = ShouldUseSeparateCodecProcessForEncode != 0;
  if (ShouldUseSeparateCodecProcessForEncode)
  {
    v2 = "com.apple.coremedia.videocodecd.compressionsession";
  }

  else
  {
    v2 = "com.apple.coremedia.compressionsession";
  }

  return MEMORY[0x1EEDBDA60](v2, 1184, v1, &VTCompressionSessionServerStart_subsystems, 1, VTCompressionSessionRemoteServer_Destroy, 0, &gVTCompressionServerState);
}

uint64_t VTCompressionSessionRemoteServer_Destroy(uint64_t a1)
{
  v2 = 0;
  vtcss_findClientFromCommandPort(a1, &v2);
  vtcss_finalizeClient(v2);
  return 0;
}

uint64_t vtcss_compressionSessionClientRecordCreate()
{
  if (vtcss_cscr_GetTypeID_once != -1)
  {
    vtcss_compressionSessionClientRecordCreate_cold_1();
  }

  return _CFRuntimeCreateInstance();
}

void CompressionOutputCallback(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5)
{
  if (!*(a1 + 200))
  {
    v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E0040003D4157uLL);
    if (v10)
    {
      v11 = v10;
      v10[1] = a2;
      *(v10 + 4) = a3;
      *(v10 + 5) = a4;
      v10[3] = 0;
      if (a5)
      {
        v12 = CFRetain(a5);
      }

      else
      {
        v12 = 0;
      }

      *(v11 + 56) = v12;
      *(v11 + 64) = 0;

      vtcss_enqueueFrame(a1, v11);
    }

    else
    {
      CompressionOutputCallback_cold_1();
    }
  }
}

void vtcss_appStateChangeListener(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (vtcss_appStateChangeListener_dynamicBackgroundMemoryOnce != -1)
  {
    vtcss_appStateChangeListener_cold_1();
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69AFA58]);
  if (!Value)
  {
    goto LABEL_12;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v9 = valuePtr;
  if (valuePtr > 3)
  {
    if (valuePtr == 4)
    {
      if (!VTIsBackgroundRunningSupportedForClientPID(*(a2 + 88), v8))
      {
        goto LABEL_18;
      }

      *(a2 + 112) = 4;
      if (!vtcss_appStateChangeListener_allowDynamicMemoryUsage)
      {
        return;
      }

      v11 = *(a2 + 24);
      v12 = MEMORY[0x1E695E4D0];
LABEL_14:
      VTSessionSetProperty(v11, @"LowMemory", *v12);
      return;
    }

    if (valuePtr == 8)
    {
LABEL_12:
      *(a2 + 112) = 8;
      if (!vtcss_appStateChangeListener_allowDynamicMemoryUsage)
      {
        return;
      }

      v11 = *(a2 + 24);
      v12 = MEMORY[0x1E695E4C0];
      goto LABEL_14;
    }

LABEL_10:
    *(a2 + 112) = valuePtr;
    return;
  }

  if ((valuePtr - 1) >= 2)
  {
    if (!valuePtr)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a2)
  {
LABEL_18:
    CFRetain(a2);
    v10 = 0;
    v9 = valuePtr;
    goto LABEL_19;
  }

  v10 = 1;
LABEL_19:
  if (*(a2 + 24) || v9 == 1 && *(a2 + 32))
  {
    *(a2 + 112) = v9;
    *(a2 + 201) = 1;
    FigRPCExecuteByServerAsync();
  }

  else if ((v10 & 1) == 0)
  {
    CFRelease(a2);
  }
}

void vtcss_finalizeClient(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    v2 = *(a1 + 32);
    v4 = *(a1 + 120);
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    *(a1 + 200) = 1;
    if (*(a1 + 176) && *(a1 + 192))
    {
      FigSemaphoreSignal();
      FigSemaphoreSignal();
      dispatch_group_wait(*(a1 + 192), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (*(a1 + 104))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    FigRPCDisposeClientConnection();
    if (v3)
    {
      VTCompressionSessionInvalidate(v3);
    }

    if (v4)
    {
      VTMultiPassStorageClose(v4);
    }

    if (v2)
    {
      VTTileCompressionSessionInvalidate(v2);
    }

    if (v6)
    {
      VTMotionEstimationSessionInvalidate(v6);
    }

    if (v5)
    {
      VTTemporalFilterSessionInvalidate(v5);
    }

    v7 = *(a1 + 160);
    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __vtcss_finalizeClient_block_invoke;
      block[3] = &__block_descriptor_tmp_60;
      block[4] = a1;
      dispatch_sync(v7, block);
    }

    CFRelease(a1);
  }
}

void vtcss_freeQueuedFrame(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
      a1[3] = 0;
    }

    v3 = a1[7];
    if (v3)
    {
      CFRelease(v3);
      a1[7] = 0;
    }

    v4 = a1[8];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void TileCompressionOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, const void *a7)
{
  if (!*(a1 + 200))
  {
    v12 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E0040003D4157uLL);
    if (v12)
    {
      v13 = v12;
      v12[1] = a2;
      *(v12 + 4) = a5;
      *(v12 + 5) = a6;
      v12[3] = 0;
      if (a7)
      {
        v14 = CFRetain(a7);
      }

      else
      {
        v14 = 0;
      }

      *(v13 + 56) = v14;
      *(v13 + 64) = 0;

      vtcss_enqueueFrame(a1, v13);
    }

    else
    {
      TileCompressionOutputCallback_cold_1();
    }
  }
}

void vtcss_enqueueFrame(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v3 = *(a1 + 160);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcss_enqueueFrame_block_invoke;
  block[3] = &unk_1E72C7E10;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v5;
  dispatch_sync(v3, block);
  if (!*(a1 + 200))
  {
    if (*(v6 + 24))
    {
      VTCompressionSessionRemoteCallbackClient_FrameIsPending(*(a1 + 64), *(a1 + 72));
    }

      ;
    }
  }

  _Block_object_dispose(&v5, 8);
}

void temporalFilterSessionOutputCallback(uint64_t a1, int a2, int a3, __int128 *a4, const void *a5)
{
  if (!*(a1 + 200))
  {
    v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E0040003D4157uLL);
    if (v10)
    {
      v11 = v10;
      v10[1] = 0;
      *(v10 + 4) = a2;
      *(v10 + 5) = a3;
      if (a5)
      {
        v12 = CFRetain(a5);
      }

      else
      {
        v12 = 0;
      }

      *(v11 + 64) = v12;
      v13 = *a4;
      *(v11 + 48) = *(a4 + 2);
      *(v11 + 32) = v13;

      vtcss_enqueueFrame(a1, v11);
    }

    else
    {
      temporalFilterSessionOutputCallback_cold_1();
    }
  }
}

double vtcss_cscr_Init(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void vtcss_cscr_Finalize(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    CFRelease(v2);
    a1[13] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
    a1[15] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
    a1[6] = 0;
  }

  v8 = a1[20];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = a1[24];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = a1[23];
  if (v10)
  {
    dispatch_release(v10);
  }

  FigSemaphoreDestroy();
  v11 = a1[7];
  if (v11)
  {
    CFRelease(v11);
    a1[7] = 0;
  }

  v12 = a1[26];
  if (v12)
  {
    CFRelease(v12);
    a1[26] = 0;
  }

  v13 = a1[27];
  if (v13)
  {
    CFRelease(v13);
    a1[27] = 0;
  }

  FigServer_RememberProcessInfoForAFewSeconds();
  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
    a1[12] = 0;
  }

  v15 = a1[28];
  if (v15)
  {
    os_release(v15);
    a1[28] = 0;
  }
}

CFStringRef vtcss_cscr_CopyDebugDesc(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"subCompressionSession: %p", *(a1 + 24));
  }

  else if (*(a1 + 32))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"subTileCompressionSession: %p", *(a1 + 32));
  }

  else if (*(a1 + 40))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"subMotionEstimationSession: %p", *(a1 + 40));
  }

  else if (*(a1 + 48))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"temporalFilterSession: %p", *(a1 + 48));
  }

  else
  {
    v2 = *MEMORY[0x1E695E480];
    if (!*(a1 + 120))
    {
      v4 = @"no subSession object";
      v5 = CFStringCreateWithFormat(v2, 0, @"[ClientRecord %p] [%@, subSessionIsGone: %d]", a1, @"no subSession object", *(a1 + 201));
      goto LABEL_12;
    }

    v3 = CFStringCreateWithFormat(v2, 0, @"subMultiPassStorage: %p", *(a1 + 120));
  }

  v4 = v3;
  v5 = CFStringCreateWithFormat(v2, 0, @"[ClientRecord %p] [%@, subSessionIsGone: %d]", a1, v3, *(a1 + 201));
  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

  return v5;
}

uint64_t __vtcss_appStateChangeListener_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  vtcss_appStateChangeListener_allowDynamicMemoryUsage = result;
  return result;
}

void __vtcss_appStateChangeListener_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 184);
  v2 = *(v1 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcss_appStateChangeListener_block_invoke_3;
  block[3] = &__block_descriptor_tmp_58;
  block[4] = v1;
  dispatch_group_async(v2, v3, block);
}

void __vtcss_appStateChangeListener_block_invoke_3(uint64_t a1)
{
  VTCompressionSessionInvalidate(*(*(a1 + 32) + 24));
  VTTileCompressionSessionInvalidate(*(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __vtcss_finalizeClient_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 136);
  v2 = (v1 + 136);
  v3 = v4;
  if (v4)
  {
    do
    {
      v6 = *v3;
      *v2 = *v3;
      if (!v6)
      {
        *(*(a1 + 32) + 144) = *(a1 + 32) + 136;
      }

      FigSemaphoreSignal();
      vtcss_freeQueuedFrame(v3);
      v7 = *(a1 + 32);
      v8 = *(v7 + 136);
      v2 = (v7 + 136);
      v3 = v8;
    }

    while (v8);
  }
}

uint64_t __vtcss_dequeueFrame_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 48) + 136);
  v1 = *(*(*(result + 32) + 8) + 24);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 48);
    v4 = *(v3 + 136);
    if (v4 == v1)
    {
      v8 = *v4;
      *(v3 + 136) = *v4;
      if (v8)
      {
        goto LABEL_9;
      }

      v7 = *(result + 48);
      v5 = (v7 + 136);
    }

    else
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4 != v1);
      v6 = *v4;
      *v5 = *v4;
      if (v6)
      {
        goto LABEL_9;
      }

      v7 = *(result + 48);
    }

    *(v7 + 144) = v5;
LABEL_9:
    result = FigSemaphoreSignal();
    *(*(*(v2 + 40) + 8) + 24) = *(*(v2 + 48) + 136) != 0;
    if (!*(*(*(v2 + 40) + 8) + 24))
    {
      *(*(v2 + 48) + 152) = 0;
    }
  }

  return result;
}

uint64_t __vtcss_enqueueFrame_block_invoke(uint64_t result)
{
  **(result + 40) = 0;
  v1 = *(result + 40);
  **(*(result + 48) + 144) = v1;
  *(*(result + 48) + 144) = v1;
  if (!*(*(result + 48) + 152))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *(*(result + 48) + 152) = 1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;
  *a2 = 0;
  *a3 = 0;

  return vtcss_findClientFromCommandPort(a1, &a12);
}

uint64_t OUTLINED_FUNCTION_14_1(vm_map_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, vm_address_t a9)
{

  return vm_allocate(a1, &a9, v9, 1560281089);
}

uint64_t OUTLINED_FUNCTION_17_1(vm_map_t a1, vm_address_t *a2, vm_size_t a3)
{

  return vm_allocate(a1, a2, a3, 1560281089);
}

CFStringRef OUTLINED_FUNCTION_21_0(const __CFAllocator *a1, const char *a2)
{

  return CFStringCreateWithCString(a1, a2, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  *(v3 - 128) = *a3;
  *(v3 - 112) = v5;

  return FigServer_GetClientPIDFromAuditToken();
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  *(v1 - 24) = 0;

  return vtcss_findClientFromCommandPort(a1, v1 - 24);
}

uint64_t vt_Copy_32ARGB_2vuyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 3;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 1);
          v15 = *v10;
          v16 = v10[2];
          v17 = v10[3];
          v18 = v10[4];
          v19 = (8414 * v13 + 540672 + 16519 * v14 + 3208 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 9534 * v14 + 16767682 * v17 + 16772360 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 12051 * v14 - 2340 * v15 + 16765165 * v17 + 16774876 * v18 + 14392 * v20) >> 16;
          v12[3] = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          v12 += 4;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_2vuyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          v19 = (8414 * v13 + 540672 + 16519 * v14 + 3208 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 9534 * v14 + 16767682 * v17 + 16772360 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 12051 * v14 - 2340 * v15 + 16765165 * v17 + 16774876 * v18 + 14392 * v20) >> 16;
          v12[3] = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_2vuyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a6;
    v9 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v10 = v22;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v17 = v11[4];
          v18 = v11[5];
          v19 = (8414 * v13 + 540672 + 16519 * v14 + 3208 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 9534 * v14 + 16767682 * v17 + 16772360 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 12051 * v14 - 2340 * v15 + 16765165 * v17 + 16774876 * v18 + 14392 * v20) >> 16;
          v12[3] = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          v11 += 6;
          v12 += 4;
          --v10;
        }

        while (v10);
      }

      v9 += v23;
      v8 += v7;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_2vuyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = (28141 * (*v12 ^ 0xFFu) + 540672) >> 15;
          v15 = 28141 * (v12[1] ^ 0xFF) + 540672;
          *v13 = 0x80;
          v13[1] = v14;
          v13[2] = 0x80;
          v13[3] = v15 >> 15;
          v12 += 2;
          v13 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_yuvsITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 3;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 1);
          v15 = *v10;
          v16 = v10[2];
          v17 = v10[3];
          v18 = v10[4];
          v19 = (8414 * v13 + 540672 + 16519 * v14 + 3208 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 9534 * v14 + 16767682 * v17 + 16772360 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[2] = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          v12[3] = (8421376 - 12051 * v14 - 2340 * v15 + 16765165 * v17 + 16774876 * v18 + 14392 * v20) >> 16;
          v12 += 4;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_yuvsITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          v19 = (8414 * v13 + 540672 + 16519 * v14 + 3208 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 9534 * v14 + 16767682 * v17 + 16772360 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[2] = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          v12[3] = (8421376 - 12051 * v14 - 2340 * v15 + 16765165 * v17 + 16774876 * v18 + 14392 * v20) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_yuvsITU601(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a6;
    v9 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v10 = v22;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v17 = v11[4];
          v18 = v11[5];
          v19 = (8414 * v13 + 540672 + 16519 * v14 + 3208 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 9534 * v14 + 16767682 * v17 + 16772360 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[2] = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          v12[3] = (8421376 - 12051 * v14 - 2340 * v15 + 16765165 * v17 + 16774876 * v18 + 14392 * v20) >> 16;
          v11 += 6;
          v12 += 4;
          --v10;
        }

        while (v10);
      }

      v9 += v23;
      v8 += v7;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_yuvsITU601(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = 28141 * (v12[1] ^ 0xFF) + 540672;
          *v13 = (28141 * (*v12 ^ 0xFFu) + 540672) >> 15;
          v13[1] = 0x80;
          v13[2] = v14 >> 15;
          v13[3] = 0x80;
          v12 += 2;
          v13 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_a2vyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v26 = *a3;
    v25 = *a5;
    v24 = a5[1];
    v7 = *a6;
    v8 = a6[1];
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v8;
        v13 = v10;
        v14 = v7;
        do
        {
          *v12 = *v13;
          v12[1] = v13[4];
          v15 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          v18 = v13[5];
          v19 = v13[6];
          v20 = v13[7];
          v21 = (8414 * v15 + 540672 + 16519 * v16 + 3208 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 9534 * v16 + 16767682 * v19 + 16772360 * v22 + 14392 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 12051 * v16 - 2340 * v17 + 16765165 * v19 + 16774876 * v20 + 14392 * v22) >> 16;
          v14[3] = (8414 * v18 + 540672 + 16519 * v19 + 3208 * v20) >> 15;
          v12 += 2;
          v13 += 8;
          v14 += 4;
          --v11;
        }

        while (v11);
      }

      v8 += v24;
      v10 += v26;
      v7 += v25;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_a2vyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v25 = *a5;
    v26 = *a3;
    v24 = a5[1];
    v7 = *a4 + 3;
    v9 = *a6;
    v8 = a6[1];
    do
    {
      if (a1 >= 2)
      {
        v11 = v7;
        v12 = a1 >> 1;
        v13 = v8;
        v14 = v9;
        do
        {
          *v13 = *v11;
          v13[1] = v11[4];
          v15 = *(v11 - 1);
          v16 = *(v11 - 2);
          v17 = *(v11 - 3);
          v18 = v11[3];
          v19 = v11[2];
          v20 = v11[1];
          v21 = (8414 * v15 + 540672 + 16519 * v16 + 3208 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 9534 * v16 + 16767682 * v19 + 16772360 * v22 + 14392 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 12051 * v16 - 2340 * v17 + 16765165 * v19 + 16774876 * v20 + 14392 * v22) >> 16;
          v14[3] = (8414 * v18 + 540672 + 16519 * v19 + 3208 * v20) >> 15;
          v14 += 4;
          v11 += 8;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v8 += v24;
      v9 += v25;
      ++v6;
      v7 += v26;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_a2vyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v26 = *a3;
    v25 = *a5;
    v24 = a5[1];
    v7 = *a6;
    v8 = a6[1];
    v10 = *a4;
    do
    {
      v27 = v6;
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v8;
        v13 = v10;
        v14 = v7;
        do
        {
          *v12++ = -1;
          v15 = *v13;
          v16 = v13[1];
          v17 = v13[2];
          v18 = v13[3];
          v19 = v13[4];
          v20 = v13[5];
          v21 = (8414 * v15 + 540672 + 16519 * v16 + 3208 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 9534 * v16 + 16767682 * v19 + 16772360 * v22 + 14392 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 12051 * v16 - 2340 * v17 + 16765165 * v19 + 16774876 * v20 + 14392 * v22) >> 16;
          v14[3] = (8414 * v18 + 540672 + 16519 * v19 + 3208 * v20) >> 15;
          v13 += 6;
          v14 += 4;
          --v11;
        }

        while (v11);
      }

      v8 = (v8 + v24);
      v10 += v26;
      v7 += v25;
      v6 = v27 + 1;
    }

    while (v27 + 1 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_a2vyITU601(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v11 = *a6;
    v10 = a6[1];
    v12 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v13 = 0;
        v14 = a1 >> 1;
        v15 = v11;
        do
        {
          *(v10 + v13) = -1;
          v16 = (28141 * (*(v12 + v13) ^ 0xFFu) + 540672) >> 15;
          v17 = (28141 * (*(v12 + v13 + 1) ^ 0xFFu) + 540672) >> 15;
          *v15 = 0x80;
          v15[1] = v16;
          v15[2] = 0x80;
          v15[3] = v17;
          v13 += 2;
          v15 += 4;
          --v14;
        }

        while (v14);
      }

      v10 += v9;
      v12 += v7;
      v11 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_yuvfITU601(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v20 = a1 >> 1;
    v21 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v20;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          *v12 = (19235 * v14 + 9798 * v13 + 3736 * v15 + 0x4000) >> 15;
          v12[1] = (8421376 - 10854 * v14 + 16766362 * v17 + 16771688 * (v16 + v13) + ((v18 + v15) << 14)) >> 16;
          v12[2] = (19235 * v17 + 9798 * v16 + 3736 * v18 + 0x4000) >> 15;
          v12[3] = ((v13 << 14) + 8421376 - 13719 * v14 - 2663 * v15 + (v16 << 14) + 16763497 * v17 + 16774553 * v18) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v21;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_2vuyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 3;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 1);
          v15 = *v10;
          v16 = v10[2];
          v17 = v10[3];
          v18 = v10[4];
          v19 = (5983 * v13 + 540672 + 20127 * v14 + 2032 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 11093 * v14 + 16766123 * v17 + 16773919 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 13072 * v14 - 1319 * v15 + 16764144 * v17 + 16775897 * v18 + 14392 * v20) >> 16;
          v12[3] = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          v12 += 4;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_2vuyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          v19 = (5983 * v13 + 540672 + 20127 * v14 + 2032 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 11093 * v14 + 16766123 * v17 + 16773919 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 13072 * v14 - 1319 * v15 + 16764144 * v17 + 16775897 * v18 + 14392 * v20) >> 16;
          v12[3] = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_2vuyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a6;
    v9 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v10 = v22;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v17 = v11[4];
          v18 = v11[5];
          v19 = (5983 * v13 + 540672 + 20127 * v14 + 2032 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 11093 * v14 + 16766123 * v17 + 16773919 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 13072 * v14 - 1319 * v15 + 16764144 * v17 + 16775897 * v18 + 14392 * v20) >> 16;
          v12[3] = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          v11 += 6;
          v12 += 4;
          --v10;
        }

        while (v10);
      }

      v9 += v23;
      v8 += v7;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_2vuyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = (28142 * (*v12 ^ 0xFFu) + 540672) >> 15;
          v15 = 28142 * (v12[1] ^ 0xFF) + 540672;
          *v13 = 0x80;
          v13[1] = v14;
          v13[2] = 0x80;
          v13[3] = v15 >> 15;
          v12 += 2;
          v13 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_yuvsITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 3;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 1);
          v15 = *v10;
          v16 = v10[2];
          v17 = v10[3];
          v18 = v10[4];
          v19 = (5983 * v13 + 540672 + 20127 * v14 + 2032 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 11093 * v14 + 16766123 * v17 + 16773919 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[2] = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          v12[3] = (8421376 - 13072 * v14 - 1319 * v15 + 16764144 * v17 + 16775897 * v18 + 14392 * v20) >> 16;
          v12 += 4;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_yuvsITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          v19 = (5983 * v13 + 540672 + 20127 * v14 + 2032 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 11093 * v14 + 16766123 * v17 + 16773919 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[2] = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          v12[3] = (8421376 - 13072 * v14 - 1319 * v15 + 16764144 * v17 + 16775897 * v18 + 14392 * v20) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_yuvsITU709(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a6;
    v9 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v10 = v22;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v17 = v11[4];
          v18 = v11[5];
          v19 = (5983 * v13 + 540672 + 20127 * v14 + 2032 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 11093 * v14 + 16766123 * v17 + 16773919 * v20 + 14392 * (v18 + v15)) >> 16;
          v12[2] = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          v12[3] = (8421376 - 13072 * v14 - 1319 * v15 + 16764144 * v17 + 16775897 * v18 + 14392 * v20) >> 16;
          v11 += 6;
          v12 += 4;
          --v10;
        }

        while (v10);
      }

      v9 += v23;
      v8 += v7;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_yuvsITU709(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = 28142 * (v12[1] ^ 0xFF) + 540672;
          *v13 = (28142 * (*v12 ^ 0xFFu) + 540672) >> 15;
          v13[1] = 0x80;
          v13[2] = v14 >> 15;
          v13[3] = 0x80;
          v12 += 2;
          v13 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_a2vyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v26 = *a3;
    v25 = *a5;
    v24 = a5[1];
    v7 = *a6;
    v8 = a6[1];
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v8;
        v13 = v10;
        v14 = v7;
        do
        {
          *v12 = *v13;
          v12[1] = v13[4];
          v15 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          v18 = v13[5];
          v19 = v13[6];
          v20 = v13[7];
          v21 = (5983 * v15 + 540672 + 20127 * v16 + 2032 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 11093 * v16 + 16766123 * v19 + 16773919 * v22 + 14392 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 13072 * v16 - 1319 * v17 + 16764144 * v19 + 16775897 * v20 + 14392 * v22) >> 16;
          v14[3] = (5983 * v18 + 540672 + 20127 * v19 + 2032 * v20) >> 15;
          v12 += 2;
          v13 += 8;
          v14 += 4;
          --v11;
        }

        while (v11);
      }

      v8 += v24;
      v10 += v26;
      v7 += v25;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_a2vyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v25 = *a5;
    v26 = *a3;
    v24 = a5[1];
    v7 = *a4 + 3;
    v9 = *a6;
    v8 = a6[1];
    do
    {
      if (a1 >= 2)
      {
        v11 = v7;
        v12 = a1 >> 1;
        v13 = v8;
        v14 = v9;
        do
        {
          *v13 = *v11;
          v13[1] = v11[4];
          v15 = *(v11 - 1);
          v16 = *(v11 - 2);
          v17 = *(v11 - 3);
          v18 = v11[3];
          v19 = v11[2];
          v20 = v11[1];
          v21 = (5983 * v15 + 540672 + 20127 * v16 + 2032 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 11093 * v16 + 16766123 * v19 + 16773919 * v22 + 14392 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 13072 * v16 - 1319 * v17 + 16764144 * v19 + 16775897 * v20 + 14392 * v22) >> 16;
          v14[3] = (5983 * v18 + 540672 + 20127 * v19 + 2032 * v20) >> 15;
          v14 += 4;
          v11 += 8;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v8 += v24;
      v9 += v25;
      ++v6;
      v7 += v26;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_a2vyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v26 = *a3;
    v25 = *a5;
    v24 = a5[1];
    v7 = *a6;
    v8 = a6[1];
    v10 = *a4;
    do
    {
      v27 = v6;
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v8;
        v13 = v10;
        v14 = v7;
        do
        {
          *v12++ = -1;
          v15 = *v13;
          v16 = v13[1];
          v17 = v13[2];
          v18 = v13[3];
          v19 = v13[4];
          v20 = v13[5];
          v21 = (5983 * v15 + 540672 + 20127 * v16 + 2032 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 11093 * v16 + 16766123 * v19 + 16773919 * v22 + 14392 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 13072 * v16 - 1319 * v17 + 16764144 * v19 + 16775897 * v20 + 14392 * v22) >> 16;
          v14[3] = (5983 * v18 + 540672 + 20127 * v19 + 2032 * v20) >> 15;
          v13 += 6;
          v14 += 4;
          --v11;
        }

        while (v11);
      }

      v8 = (v8 + v24);
      v10 += v26;
      v7 += v25;
      v6 = v27 + 1;
    }

    while (v27 + 1 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_a2vyITU709(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v11 = *a6;
    v10 = a6[1];
    v12 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v13 = 0;
        v14 = a1 >> 1;
        v15 = v11;
        do
        {
          *(v10 + v13) = -1;
          v16 = (28142 * (*(v12 + v13) ^ 0xFFu) + 540672) >> 15;
          v17 = (28142 * (*(v12 + v13 + 1) ^ 0xFFu) + 540672) >> 15;
          *v15 = 0x80;
          v15[1] = v16;
          v15[2] = 0x80;
          v15[3] = v17;
          v13 += 2;
          v15 += 4;
          --v14;
        }

        while (v14);
      }

      v10 += v9;
      v12 += v7;
      v11 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_yuvfITU709(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v20 = a1 >> 1;
    v21 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v20;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          *v12 = (23436 * v14 + 6966 * v13 + 2366 * v15 + 0x4000) >> 15;
          v12[1] = (8421376 - 12629 * v14 + 16764587 * v17 + 16773463 * (v16 + v13) + ((v18 + v15) << 14)) >> 16;
          v12[2] = (23436 * v17 + 6966 * v16 + 2366 * v18 + 0x4000) >> 15;
          v12[3] = ((v13 << 14) + 8421376 - 14881 * v14 - 1501 * v15 + (v16 << 14) + 16762335 * v17 + 16775715 * v18) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v21;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_2vuyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 3;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 1);
          v15 = *v10;
          v16 = v10[2];
          v17 = v10[3];
          v18 = v10[4];
          v19 = (7371 * v13 + 540672 + 19024 * v14 + 1664 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 10342 * v14 + 16766874 * v17 + 16773210 * v20 + 14350 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 13195 * v14 - 1153 * v15 + 16764021 * v17 + 16776063 * v18 + 14350 * v20) >> 16;
          v12[3] = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          v12 += 4;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_2vuyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          v19 = (7371 * v13 + 540672 + 19024 * v14 + 1664 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 10342 * v14 + 16766874 * v17 + 16773210 * v20 + 14350 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 13195 * v14 - 1153 * v15 + 16764021 * v17 + 16776063 * v18 + 14350 * v20) >> 16;
          v12[3] = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_2vuyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a6;
    v9 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v10 = v22;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v17 = v11[4];
          v18 = v11[5];
          v19 = (7371 * v13 + 540672 + 19024 * v14 + 1664 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = (8421376 - 10342 * v14 + 16766874 * v17 + 16773210 * v20 + 14350 * (v18 + v15)) >> 16;
          v12[1] = v19;
          v12[2] = (8421376 - 13195 * v14 - 1153 * v15 + 16764021 * v17 + 16776063 * v18 + 14350 * v20) >> 16;
          v12[3] = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          v11 += 6;
          v12 += 4;
          --v10;
        }

        while (v10);
      }

      v9 += v23;
      v8 += v7;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_2vuyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = (28059 * (*v12 ^ 0xFFu) + 540672) >> 15;
          v15 = 28059 * (v12[1] ^ 0xFF) + 540672;
          *v13 = 0x80;
          v13[1] = v14;
          v13[2] = 0x80;
          v13[3] = v15 >> 15;
          v12 += 2;
          v13 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_yuvsITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 3;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 1);
          v15 = *v10;
          v16 = v10[2];
          v17 = v10[3];
          v18 = v10[4];
          v19 = (7371 * v13 + 540672 + 19024 * v14 + 1664 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 10342 * v14 + 16766874 * v17 + 16773210 * v20 + 14350 * (v18 + v15)) >> 16;
          v12[2] = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          v12[3] = (8421376 - 13195 * v14 - 1153 * v15 + 16764021 * v17 + 16776063 * v18 + 14350 * v20) >> 16;
          v12 += 4;
          v10 += 8;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_yuvsITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v22;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          v19 = (7371 * v13 + 540672 + 19024 * v14 + 1664 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 10342 * v14 + 16766874 * v17 + 16773210 * v20 + 14350 * (v18 + v15)) >> 16;
          v12[2] = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          v12[3] = (8421376 - 13195 * v14 - 1153 * v15 + 16764021 * v17 + 16776063 * v18 + 14350 * v20) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v23;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_yuvsITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v22 = a1 >> 1;
    v23 = *a3;
    v7 = *a5;
    v8 = *a6;
    v9 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v10 = v22;
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *v11;
          v14 = v11[1];
          v15 = v11[2];
          v16 = v11[3];
          v17 = v11[4];
          v18 = v11[5];
          v19 = (7371 * v13 + 540672 + 19024 * v14 + 1664 * v15) >> 15;
          v20 = v16 + v13;
          *v12 = v19;
          v12[1] = (8421376 - 10342 * v14 + 16766874 * v17 + 16773210 * v20 + 14350 * (v18 + v15)) >> 16;
          v12[2] = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          v12[3] = (8421376 - 13195 * v14 - 1153 * v15 + 16764021 * v17 + 16776063 * v18 + 14350 * v20) >> 16;
          v11 += 6;
          v12 += 4;
          --v10;
        }

        while (v10);
      }

      v9 += v23;
      v8 += v7;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_yuvsITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = 28059 * (v12[1] ^ 0xFF) + 540672;
          *v13 = (28059 * (*v12 ^ 0xFFu) + 540672) >> 15;
          v13[1] = 0x80;
          v13[2] = v14 >> 15;
          v13[3] = 0x80;
          v12 += 2;
          v13 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_a2vyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v26 = *a3;
    v25 = *a5;
    v24 = a5[1];
    v7 = *a6;
    v8 = a6[1];
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v8;
        v13 = v10;
        v14 = v7;
        do
        {
          *v12 = *v13;
          v12[1] = v13[4];
          v15 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          v18 = v13[5];
          v19 = v13[6];
          v20 = v13[7];
          v21 = (7371 * v15 + 540672 + 19024 * v16 + 1664 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 10342 * v16 + 16766874 * v19 + 16773210 * v22 + 14350 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 13195 * v16 - 1153 * v17 + 16764021 * v19 + 16776063 * v20 + 14350 * v22) >> 16;
          v14[3] = (7371 * v18 + 540672 + 19024 * v19 + 1664 * v20) >> 15;
          v12 += 2;
          v13 += 8;
          v14 += 4;
          --v11;
        }

        while (v11);
      }

      v8 += v24;
      v10 += v26;
      v7 += v25;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_a2vyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v25 = *a5;
    v26 = *a3;
    v24 = a5[1];
    v7 = *a4 + 3;
    v9 = *a6;
    v8 = a6[1];
    do
    {
      if (a1 >= 2)
      {
        v11 = v7;
        v12 = a1 >> 1;
        v13 = v8;
        v14 = v9;
        do
        {
          *v13 = *v11;
          v13[1] = v11[4];
          v15 = *(v11 - 1);
          v16 = *(v11 - 2);
          v17 = *(v11 - 3);
          v18 = v11[3];
          v19 = v11[2];
          v20 = v11[1];
          v21 = (7371 * v15 + 540672 + 19024 * v16 + 1664 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 10342 * v16 + 16766874 * v19 + 16773210 * v22 + 14350 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 13195 * v16 - 1153 * v17 + 16764021 * v19 + 16776063 * v20 + 14350 * v22) >> 16;
          v14[3] = (7371 * v18 + 540672 + 19024 * v19 + 1664 * v20) >> 15;
          v14 += 4;
          v11 += 8;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v8 += v24;
      v9 += v25;
      ++v6;
      v7 += v26;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_a2vyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v26 = *a3;
    v25 = *a5;
    v24 = a5[1];
    v7 = *a6;
    v8 = a6[1];
    v10 = *a4;
    do
    {
      v27 = v6;
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v8;
        v13 = v10;
        v14 = v7;
        do
        {
          *v12++ = -1;
          v15 = *v13;
          v16 = v13[1];
          v17 = v13[2];
          v18 = v13[3];
          v19 = v13[4];
          v20 = v13[5];
          v21 = (7371 * v15 + 540672 + 19024 * v16 + 1664 * v17) >> 15;
          v22 = v18 + v15;
          *v14 = (8421376 - 10342 * v16 + 16766874 * v19 + 16773210 * v22 + 14350 * (v20 + v17)) >> 16;
          v14[1] = v21;
          v14[2] = (8421376 - 13195 * v16 - 1153 * v17 + 16764021 * v19 + 16776063 * v20 + 14350 * v22) >> 16;
          v14[3] = (7371 * v18 + 540672 + 19024 * v19 + 1664 * v20) >> 15;
          v13 += 6;
          v14 += 4;
          --v11;
        }

        while (v11);
      }

      v8 = (v8 + v24);
      v10 += v26;
      v7 += v25;
      v6 = v27 + 1;
    }

    while (v27 + 1 != a2);
  }

  return 0;
}

uint64_t vt_Copy_8GRAYSCALE_a2vyITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v11 = *a6;
    v10 = a6[1];
    v12 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v13 = 0;
        v14 = a1 >> 1;
        v15 = v11;
        do
        {
          *(v10 + v13) = -1;
          v16 = (28059 * (*(v12 + v13) ^ 0xFFu) + 540672) >> 15;
          v17 = (28059 * (*(v12 + v13 + 1) ^ 0xFFu) + 540672) >> 15;
          *v15 = 0x80;
          v15[1] = v16;
          v15[2] = 0x80;
          v15[3] = v17;
          v13 += 2;
          v15 += 4;
          --v14;
        }

        while (v14);
      }

      v10 += v9;
      v12 += v7;
      v11 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_yuvfITU2020(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v20 = a1 >> 1;
    v21 = *a3;
    v7 = *a5;
    v8 = *a4 + 4;
    v9 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v10 = v8;
        v11 = v20;
        v12 = v9;
        do
        {
          v13 = *(v10 - 2);
          v14 = *(v10 - 3);
          v15 = *(v10 - 4);
          v16 = v10[2];
          v17 = v10[1];
          v18 = *v10;
          v10 += 8;
          *v12 = (22217 * v14 + 8608 * v13 + 1943 * v15 + 0x4000) >> 15;
          v12[1] = (8421376 - 11808 * v14 + 16765408 * v17 + 16772642 * (v16 + v13) + ((v18 + v15) << 14)) >> 16;
          v12[2] = (22217 * v17 + 8608 * v16 + 1943 * v18 + 0x4000) >> 15;
          v12[3] = ((v13 << 14) + 8421376 - 15065 * v14 - 1317 * v15 + (v16 << 14) + 16762151 * v17 + 16775899 * v18) >> 16;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v9 += v7;
      ++v6;
      v8 += v21;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v68 = a2[2];
  v69 = v17;
  v18 = a6[1];
  v70 = *a6;
  v71 = v16;
  v66 = a6[2];
  v67 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_75:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v58 - v21);
    bzero(&v58 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v66, v67), v70), vceqq_s64(vaddq_s64(v68, v69), v71))));
  v25 = v67.i64[0];
  v26 = v69.i64[0];
  if (v66.i8[0])
  {
    v26 = v69.i64[0] - 1;
    v27 = v68.i64[0] + 1;
  }

  else
  {
    v27 = v68.i64[0];
  }

  if (v66.i8[0])
  {
    v25 = v67.i64[0] - 1;
    v28 = v66.i64[0] + 1;
  }

  else
  {
    v28 = v66.i64[0];
  }

  v29 = v70.i64[0];
  v30 = v71.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (v33 = v25 + 1 + v28, v33 > *a8) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v34 = a8[2], v33 > v34) && v34)
    {
      --v25;
      --v26;
    }

    else
    {
      v29 = v70.i64[0] + 1;
      v30 = v71.i64[0] + 1;
      ++v26;
      ++v25;
    }
  }

  v35 = v67.i64[1];
  v36 = v69.i64[1];
  if (v66.i8[8])
  {
    v36 = v69.i64[1] - 1;
    v37 = v68.i64[1] + 1;
  }

  else
  {
    v37 = v68.i64[1];
  }

  if (v66.i8[8])
  {
    v35 = v67.i64[1] - 1;
    v38 = v66.i64[1] + 1;
  }

  else
  {
    v38 = v66.i64[1];
  }

  v39 = v70.i64[1];
  v40 = v71.i64[1];
  v65 = a1;
  if (v35)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v41 = v36 + 1 + v37, *a4 * v41 > *a5) || a4[1] * (v41 / 2) > a5[1] || a4[2] * v41 > a5[2] || (v42 = v35 + 1 + v38, *a8 * v42 > *a9) || a8[1] * (v42 / 2) > a9[1] || a8[2] * v42 > a9[2])
    {
      --v35;
      --v36;
    }

    else
    {
      v39 = v70.i64[1] + 1;
      v40 = v71.i64[1] + 1;
      ++v36;
      ++v35;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v36 + v37 > v40)
  {
    v36 = v40 - v37;
  }

  if (v35 + v38 > v39)
  {
    v35 = v39 - v38;
  }

  if (v26 >= v25)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  if (v36 >= v35)
  {
    v44 = v35;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 + v37 - 1;
  v46 = v43 + v27;
  v47 = v43 + v27 + v45 * *a4 > *a5;
  v63 = a9;
  v64 = a3;
  v61 = v28;
  v62 = v29;
  v59 = v30;
  v60 = v27;
  v69.i64[0] = v38;
  v68.i64[0] = v37;
  v71.i64[0] = v39;
  v70.i64[0] = v40;
  if (v47)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v44 + v37 + 1) / 2 - 1) > a5[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a3 + 16) && v46 + a4[2] * v45 > a5[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  v51 = v44 + v38 - 1;
  v52 = v43 + v28;
  if (v43 + v28 + *a8 * v51 > *a9)
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 8) && ((v52 + 1 + ((v52 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v44 + v38 + 1) / 2 - 1) > a9[1])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
    goto LABEL_68;
  }

  if (*(a7 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v48 = a5;
    v49 = a8;
    v50 = v15;
LABEL_68:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v50;
    a8 = v49;
    a5 = v48;
    v23 = v63;
    a3 = v64;
    v28 = v61;
    v29 = v62;
    v30 = v59;
    v27 = v60;
    v38 = v69.i64[0];
    v37 = v68.i64[0];
    v39 = v71.i64[0];
    v40 = v70.i64[0];
    if (v20)
    {
      goto LABEL_74;
    }
  }

  *v19 = v15;
  *(v19 + 4) = v30;
  *(v19 + 12) = v40;
  *(v19 + 20) = v43;
  *(v19 + 28) = v44;
  *(v19 + 36) = v27;
  *(v19 + 44) = v37;
  v19[11] = v39;
  v19[12] = v43;
  v19[13] = v44;
  v19[14] = v28;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v38;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v23;
  v19[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v15)
  {
    return 0;
  }

  v54 = (v19 + 20);
  v55 = v15;
  while (1)
  {
    v56 = *v54++;
    v20 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v20 = 0;
      break;
    }
  }

LABEL_74:
  if (v15 == 255)
  {
    goto LABEL_75;
  }

  return v20;
}

float32x2_t *vt_Copy_420vf_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, double a4, double a5)
{
  v10 = 2 * result->u8[0];
  v289 = *(&result[5] + 4) + 2 * (*(&result[3] + 4) * a2 / v10);
  v290 = *(&result[4] + 4);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v295 = result;
  v14 = *&v12 * a2 / v10;
  v15 = *&result[15] + 2 * v14;
  v16 = 2 * ((*&v12 + *&v12 * a2) / v10 - v14);
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v288 = v18[2];
  v292 = v17[2];
  v293 = v20[2];
  v291 = v19[2];
  v21 = (v291 + v293 * v15 + *&v11);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v24 = *v18;
    v25 = v18[1];
    v26 = *v20;
    v27 = v20[1];
    v28 = v23[17].u16[2];
    v29 = v23[17].u16[3];
    v30.i32[0] = v23[3].i32[1];
    v31 = v23[18].u16[0];
    v32 = v23[18].u16[1];
    v33 = v23[18].u16[2];
    v34 = v23[18].u16[3];
    v35 = v23[19].u16[0];
    v36 = 8191.0 / v23[16].u32[0];
    v37 = v28;
    v38 = v29;
    _S29 = v36 * v23->f32[0];
    v307 = v31;
    v40 = v32;
    v342 = v33;
    *&a5 = v34;
    v348 = v34;
    v41 = v35;
    __asm { FCVT            H8, S29 }

    *&a5 = v28;
    v47 = vdupq_lane_s16(*&a5, 0);
    v30.i32[1] = v23[1].i32[0];
    _D2.i32[0] = v23[6].i32[0];
    v346 = v23[5].f32[1];
    _D3.i32[0] = v23[6].i32[1];
    _D5.i32[0] = v23[7].i32[0];
    v51 = v29;
    *v5.f32 = vmul_n_f32(v30, v36);
    result = (v23 + 16548);
    v52 = v13 & 0xFFFFFFFE;
    v53 = &v23[20] + 4;
    v54 = &v23[4116] + 4;
    v55 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    *v9.f32 = vmul_n_f32(v23[2], v36);
    v56 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    v57 = vmulq_n_f16(v55, -v51);
    v58 = vmulq_n_f16(v56, -v51);
    _D2.i32[1] = v23[7].i32[1];
    __asm { FMOV            V0.2S, #0.25 }

    *v8.f32 = vmul_f32(_D2, _D0);
    v60 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    _D3.i32[1] = v23[8].i32[0];
    *v7.f32 = vmul_f32(_D3, _D0);
    v338 = vdupq_lane_s32(vcvt_f16_f32(v7), 0);
    _D5.i32[1] = v23[8].i32[1];
    *v6.f32 = vmul_f32(_D5, _D0);
    v61 = vdupq_lane_s32(vcvt_f16_f32(v6), 0);
    v300 = v61;
    *v61.i16 = v31;
    v62 = vdupq_lane_s16(*v61.i8, 0);
    v345 = v62;
    *v62.i16 = v32;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v33;
    v64 = vdupq_lane_s16(*v62.i8, 0);
    v334 = v64;
    v335 = v63;
    *v64.i16 = v34;
    v65 = vdupq_lane_s16(*v64.i8, 0);
    *v64.i16 = v35;
    _Q0 = vdupq_lane_s16(*v64.i8, 0);
    v332 = _Q0;
    v333 = v65;
    v66 = *v19;
    v67 = (v19[1] + v27 * (v15 / 2) + *&v11);
    v68 = (v66 + v26 * v15 + *&v11);
    v69 = (v17[1] + v25 * (v289 / 2) + v290);
    v70 = (*v17 + v24 * v289 + v290);
    _D21.i32[0] = v23[10].i32[0];
    v344 = v23[4].f32[1];
    __asm { FCVT            H15, S4 }

    v318 = _H15;
    v343 = v23[5].f32[0];
    __asm { FCVT            H15, S6 }

    _S4 = v346;
    __asm { FCVT            H6, S4 }

    v321 = v23[13].f32[1];
    __asm { FCVT            H0, S0 }

    v317 = *_Q0.i16;
    v320 = v23[14].f32[0];
    __asm { FCVT            H0, S1 }

    v316 = *_Q0.i16;
    v319 = v23[14].f32[1];
    __asm { FCVT            H0, S2 }

    v315 = *_Q0.i16;
    v351 = v23[15].f32[0];
    __asm { FCVT            H0, S3 }

    v314 = *_Q0.i16;
    v331 = v23[9].f32[0];
    __asm { FCVT            H0, S5 }

    v313 = *_Q0.i16;
    v330 = v23[9].f32[1];
    __asm { FCVT            H2, S7 }

    v329 = *_D21.i32;
    __asm { FCVT            H3, S21 }

    v328 = v23[10].f32[1];
    __asm { FCVT            H5, S9 }

    v76 = _H6;
    v327 = v23[11].f32[0];
    __asm { FCVT            H7, S11 }

    _Q0.i32[0] = v23[12].i32[0];
    v325 = v23[11].f32[1];
    __asm { FCVT            H4, S12 }

    v299 = *&_S4;
    v78 = _S29;
    v308 = *_Q0.i32;
    __asm { FCVT            H11, S0 }

    v306 = v23[12].f32[1];
    __asm { FCVT            H0, S1 }

    v350 = _Q0;
    v323 = v23[13].f32[0];
    __asm { FCVT            H0, S14 }

    v80 = v57;
    v349 = *_Q0.i16;
    v81 = v9.i64[0];
    v82 = v345;
    v340 = v8.f32[0];
    v83 = v7.i64[0];
    v302 = v8.f32[1];
    _Q0.i32[0] = v6.i32[1];
    v301 = v6.f32[1];
    v337 = v6.f32[0];
    v85.i64[0] = 0x9000900090009000;
    v85.i64[1] = 0x9000900090009000;
    v347 = v38;
    v341 = _H8;
    v339 = v60;
    v336 = v56;
    v326 = v47;
    v324 = v58;
    v322 = v41;
    v311 = *_D3.i16;
    v312 = *_D2.i16;
    v309 = _H7;
    v310 = *_D5.i16;
    v304 = v55;
    v305 = _H15;
    v303 = _H11;
    v297 = v37;
    v298 = v32;
    v296 = v78;
    do
    {
      v86 = v70 + v24;
      v87 = v68 + v26;
      if (v13 < 8)
      {
        v147 = 0;
        v146 = v67;
        v90 = (v68 + v26);
        v145 = v69;
        v89 = (v70 + v24);
      }

      else
      {
        v88 = 0;
        v89 = (v70 + v24);
        v90 = (v68 + v26);
        do
        {
          v91 = *&v69[v88];
          *v92.i8 = vzip1_s8(v91, 0);
          v92.u64[1] = vzip2_s8(v91, 0);
          v93 = vcvtq_f16_u16(v92);
          v94 = vmlaq_f16(v80, v55, v93);
          v95 = vmlaq_f16(v58, v56, v93);
          v96 = vtrn2q_s16(v94, v94);
          v97 = vtrn1q_s16(v94, v94);
          v98 = vuzp1q_s16(v95, v93);
          *v98.i8 = vadd_f16(*v98.i8, *&vuzp2q_s16(v95, v98));
          v99 = vzip1q_s16(v98, v98);
          v100 = *v70++;
          *v94.i8 = vzip1_s8(v100, 0);
          v94.u64[1] = vzip2_s8(v100, 0);
          v101 = *v89++;
          *v95.i8 = vzip1_s8(v101, 0);
          v95.u64[1] = vzip2_s8(v101, 0);
          v102 = vsubq_f16(vcvtq_f16_u16(v94), v47);
          v103 = vsubq_f16(vcvtq_f16_u16(v95), v47);
          v104 = vmlaq_n_f16(v96, v102, _H8);
          v105 = vmlaq_n_f16(v96, v103, _H8);
          v106 = vmlaq_n_f16(v99, v102, _H8);
          v107 = vmlaq_n_f16(v99, v103, _H8);
          v108 = vmlaq_n_f16(v97, v102, _H8);
          v109 = vmlaq_n_f16(v97, v103, _H8);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v85));
          v104.i16[0] = *&v53[2 * v110.u16[0]];
          v104.i16[1] = *&v53[2 * v110.u16[1]];
          v104.i16[2] = *&v53[2 * v110.u16[2]];
          v104.i16[3] = *&v53[2 * v110.u16[3]];
          v104.i16[4] = *&v53[2 * v110.u16[4]];
          v104.i16[5] = *&v53[2 * v110.u16[5]];
          v104.i16[6] = *&v53[2 * v110.u16[6]];
          v104.i16[7] = *&v53[2 * v110.u16[7]];
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v106, 0), v85));
          v102.i16[0] = *&v53[2 * v111.u16[0]];
          v102.i16[1] = *&v53[2 * v111.u16[1]];
          v102.i16[2] = *&v53[2 * v111.u16[2]];
          v102.i16[3] = *&v53[2 * v111.u16[3]];
          v102.i16[4] = *&v53[2 * v111.u16[4]];
          v102.i16[5] = *&v53[2 * v111.u16[5]];
          v102.i16[6] = *&v53[2 * v111.u16[6]];
          v102.i16[7] = *&v53[2 * v111.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v85));
          v108.i16[0] = *&v53[2 * v112.u16[0]];
          v108.i16[1] = *&v53[2 * v112.u16[1]];
          v108.i16[2] = *&v53[2 * v112.u16[2]];
          v108.i16[3] = *&v53[2 * v112.u16[3]];
          v108.i16[4] = *&v53[2 * v112.u16[4]];
          v108.i16[5] = *&v53[2 * v112.u16[5]];
          v108.i16[6] = *&v53[2 * v112.u16[6]];
          v108.i16[7] = *&v53[2 * v112.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v85));
          v105.i16[0] = *&v53[2 * v113.u16[0]];
          v105.i16[1] = *&v53[2 * v113.u16[1]];
          v105.i16[2] = *&v53[2 * v113.u16[2]];
          v105.i16[3] = *&v53[2 * v113.u16[3]];
          v105.i16[4] = *&v53[2 * v113.u16[4]];
          v105.i16[5] = *&v53[2 * v113.u16[5]];
          v105.i16[6] = *&v53[2 * v113.u16[6]];
          v105.i16[7] = *&v53[2 * v113.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v107, 0), v85));
          v107.i16[0] = *&v53[2 * v114.u16[0]];
          v107.i16[1] = *&v53[2 * v114.u16[1]];
          v107.i16[2] = *&v53[2 * v114.u16[2]];
          v107.i16[3] = *&v53[2 * v114.u16[3]];
          v107.i16[4] = *&v53[2 * v114.u16[4]];
          v107.i16[5] = *&v53[2 * v114.u16[5]];
          v107.i16[6] = *&v53[2 * v114.u16[6]];
          v107.i16[7] = *&v53[2 * v114.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v85));
          v109.i16[0] = *&v53[2 * v115.u16[0]];
          v109.i16[1] = *&v53[2 * v115.u16[1]];
          v109.i16[2] = *&v53[2 * v115.u16[2]];
          v109.i16[3] = *&v53[2 * v115.u16[3]];
          v109.i16[4] = *&v53[2 * v115.u16[4]];
          v109.i16[5] = *&v53[2 * v115.u16[5]];
          v109.i16[6] = *&v53[2 * v115.u16[6]];
          v109.i16[7] = *&v53[2 * v115.u16[7]];
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v104, v317), v102, v316), v108, v315), vmaxq_f16(vmaxq_f16(v104, v102), v108), v314), 0), v85));
          v117.i16[0] = result->i16[v116.u16[0]];
          v117.i16[1] = result->i16[v116.u16[1]];
          v117.i16[2] = result->i16[v116.u16[2]];
          v117.i16[3] = result->i16[v116.u16[3]];
          v117.i16[4] = result->i16[v116.u16[4]];
          v117.i16[5] = result->i16[v116.u16[5]];
          v117.i16[6] = result->i16[v116.u16[6]];
          v117.i16[7] = result->i16[v116.u16[7]];
          v118 = vmulq_f16(v104, v117);
          v119 = vmulq_f16(v102, v117);
          v120 = vmulq_f16(v108, v117);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v105, v317), v107, v316), v109, v315), vmaxq_f16(vmaxq_f16(v105, v107), v109), v314), 0), v85));
          v108.i16[0] = result->i16[v121.u16[0]];
          v108.i16[1] = result->i16[v121.u16[1]];
          v108.i16[2] = result->i16[v121.u16[2]];
          v108.i16[3] = result->i16[v121.u16[3]];
          v108.i16[4] = result->i16[v121.u16[4]];
          v108.i16[5] = result->i16[v121.u16[5]];
          v108.i16[6] = result->i16[v121.u16[6]];
          v108.i16[7] = result->i16[v121.u16[7]];
          v122 = vmulq_f16(v105, v108);
          v123 = vmulq_f16(v107, v108);
          v117.i64[0] = 0x9000900090009000;
          v117.i64[1] = 0x9000900090009000;
          v124 = vmulq_f16(v109, v108);
          v125 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, v313), v119, v312), v120, v311);
          v126 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, v310), v119, v309), v120, v299);
          v109.i16[7] = v350.i16[7];
          v127 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v349), v119, *v350.i16), v118, v303);
          v128 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v313), v123, v312), v124, v311);
          v129 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v310), v123, v309), v124, v299);
          v130 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v125, 0), v117));
          v109.i16[0] = *&v54[2 * v130.u16[0]];
          v109.i16[1] = *&v54[2 * v130.u16[1]];
          v109.i16[2] = *&v54[2 * v130.u16[2]];
          v109.i16[3] = *&v54[2 * v130.u16[3]];
          v109.i16[4] = *&v54[2 * v130.u16[4]];
          v109.i16[5] = *&v54[2 * v130.u16[5]];
          v109.i16[6] = *&v54[2 * v130.u16[6]];
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v126, 0), v117));
          v117.i16[0] = *&v54[2 * v131.u16[0]];
          v117.i16[1] = *&v54[2 * v131.u16[1]];
          v117.i16[2] = *&v54[2 * v131.u16[2]];
          v117.i16[3] = *&v54[2 * v131.u16[3]];
          v117.i16[4] = *&v54[2 * v131.u16[4]];
          v117.i16[5] = *&v54[2 * v131.u16[5]];
          v117.i16[6] = *&v54[2 * v131.u16[6]];
          v132 = vuzp1q_s16(v109, v117);
          v109.i16[7] = *&v54[2 * v130.u16[7]];
          v117.i16[7] = *&v54[2 * v131.u16[7]];
          v102.i16[7] = v350.i16[7];
          v133 = vmulq_n_f16(v124, v349);
          v85.i64[0] = 0x9000900090009000;
          v85.i64[1] = 0x9000900090009000;
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v127, 0), v85));
          v135 = vmlaq_n_f16(v133, v123, *v350.i16);
          v102.i16[0] = *&v54[2 * v134.u16[0]];
          v102.i16[1] = *&v54[2 * v134.u16[1]];
          v102.i16[2] = *&v54[2 * v134.u16[2]];
          v102.i16[3] = *&v54[2 * v134.u16[3]];
          v102.i16[4] = *&v54[2 * v134.u16[4]];
          v102.i16[5] = *&v54[2 * v134.u16[5]];
          v102.i16[6] = *&v54[2 * v134.u16[6]];
          v136 = v102;
          v136.i16[7] = *&v54[2 * v134.u16[7]];
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v128, 0), v85));
          v128.i16[0] = *&v54[2 * v137.u16[0]];
          v128.i16[1] = *&v54[2 * v137.u16[1]];
          v128.i16[2] = *&v54[2 * v137.u16[2]];
          v128.i16[3] = *&v54[2 * v137.u16[3]];
          v128.i16[4] = *&v54[2 * v137.u16[4]];
          v128.i16[5] = *&v54[2 * v137.u16[5]];
          v128.i16[6] = *&v54[2 * v137.u16[6]];
          v138 = &v54[2 * v137.u16[7]];
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v129, 0), v85));
          v129.i16[0] = *&v54[2 * v139.u16[0]];
          v129.i16[1] = *&v54[2 * v139.u16[1]];
          v129.i16[2] = *&v54[2 * v139.u16[2]];
          v129.i16[3] = *&v54[2 * v139.u16[3]];
          v129.i16[4] = *&v54[2 * v139.u16[4]];
          v129.i16[5] = *&v54[2 * v139.u16[5]];
          v129.i16[6] = *&v54[2 * v139.u16[6]];
          v140 = vuzp1q_s16(v128, v129);
          v128.i16[7] = *v138;
          v129.i16[7] = *&v54[2 * v139.u16[7]];
          v141 = vmlaq_n_f16(v135, v122, v303);
          v142 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v141, 0), v85));
          v141.i16[0] = *&v54[2 * v142.u16[0]];
          v141.i16[1] = *&v54[2 * v142.u16[1]];
          v141.i16[2] = *&v54[2 * v142.u16[2]];
          v141.i16[3] = *&v54[2 * v142.u16[3]];
          v141.i16[4] = *&v54[2 * v142.u16[4]];
          v141.i16[5] = *&v54[2 * v142.u16[5]];
          v141.i16[6] = *&v54[2 * v142.u16[6]];
          v143 = &v54[2 * v142.u16[7]];
          _Q0 = v141;
          _Q0.i16[7] = *v143;
          *v68++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v82, v109, v318), v117, _H15), v136, v76), v82), v334)));
          _D21 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v82, v128, v318), v129, _H15), _Q0, v76), v82), v334)));
          *v90++ = _D21;
          v144 = vaddq_f16(vaddq_f16(vaddq_f16(v132, vuzp2q_s16(v109, v117)), v140), vuzp2q_s16(v128, v129));
          *_Q0.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v335, v60, vzip1q_s16(v144, v144)), v338, vzip2q_s16(v144, v144)), v300, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v102, v102), vtrn2q_s16(v136, v136)), vtrn1q_s16(v141, v141)), vtrn2q_s16(_Q0, _Q0))), v333), v332)));
          *&v67[v88] = _Q0.i64[0];
          v88 += 8;
        }

        while (v88 < v13 - 7);
        v145 = &v69[v88];
        v146 = &v67[v88];
        v147 = v13 & 0xFFFFFFF8;
        v37 = v297;
        v40 = v298;
        v38 = v347;
        v78 = v296;
      }

      for (; v147 < v52; v76 = _H6)
      {
        _Q0.i8[0] = v145[1];
        v148 = _Q0.u32[0] - v38;
        v149 = v5.u32[1];
        v150 = v5.f32[1] * v148;
        LOBYTE(v149) = v70->i8[0];
        v151 = v78 * (v149 - v37);
        v152 = (v5.f32[1] * v148) + v151;
        v153 = 8191.0;
        if (v152 <= 8191.0)
        {
          v153 = (v5.f32[1] * v148) + v151;
          if (v152 < 0.0)
          {
            v153 = 0.0;
          }
        }

        LOBYTE(v152) = *v145;
        v154 = LODWORD(v152) - v38;
        v155 = (*(&v81 + 1) * v148) + (v154 * *&v81);
        v156 = 8191.0;
        if ((v151 + v155) <= 8191.0)
        {
          v156 = v151 + v155;
          if ((v151 + v155) < 0.0)
          {
            v156 = 0.0;
          }
        }

        v157 = v5.f32[0] * v154;
        v158 = (v5.f32[0] * v154) + v151;
        v159 = 8191.0;
        if (v158 <= 8191.0)
        {
          v159 = v158;
          if (v158 < 0.0)
          {
            v159 = 0.0;
          }
        }

        LOBYTE(v158) = v70->i8[1];
        v160 = v78 * (LODWORD(v158) - v37);
        v161 = 8191.0;
        if ((v150 + v160) <= 8191.0)
        {
          v161 = v150 + v160;
          if ((v150 + v160) < 0.0)
          {
            v161 = 0.0;
          }
        }

        v162 = 8191.0;
        if ((v155 + v160) <= 8191.0)
        {
          v162 = v155 + v160;
          if ((v155 + v160) < 0.0)
          {
            v162 = 0.0;
          }
        }

        v163 = v157 + v160;
        v164 = 8191.0;
        if (v163 <= 8191.0)
        {
          v164 = v163;
          if (v163 < 0.0)
          {
            v164 = 0.0;
          }
        }

        LOBYTE(v163) = v89->i8[0];
        v165 = v78 * (LODWORD(v163) - v37);
        v166 = 8191.0;
        if ((v150 + v165) <= 8191.0)
        {
          v166 = v150 + v165;
          if ((v150 + v165) < 0.0)
          {
            v166 = 0.0;
          }
        }

        v167 = 8191.0;
        if ((v155 + v165) <= 8191.0)
        {
          v167 = v155 + v165;
          if ((v155 + v165) < 0.0)
          {
            v167 = 0.0;
          }
        }

        v168 = v157 + v165;
        v169 = 8191.0;
        if (v168 <= 8191.0)
        {
          v169 = v168;
          if (v168 < 0.0)
          {
            v169 = 0.0;
          }
        }

        _D21.i8[0] = v89->i8[1];
        v170 = v78 * (_D21.u32[0] - v37);
        v171 = v150 + v170;
        v172 = (v150 + v170) <= 8191.0;
        v173 = 8191.0;
        if (v172)
        {
          v173 = v171;
          if (v171 < 0.0)
          {
            v173 = 0.0;
          }
        }

        v174 = v155 + v170;
        v172 = (v155 + v170) <= 8191.0;
        v175 = 8191.0;
        if (v172)
        {
          v175 = v174;
          if (v174 < 0.0)
          {
            v175 = 0.0;
          }
        }

        v176 = v157 + v170;
        v177 = 8191.0;
        if (v176 <= 8191.0)
        {
          v177 = v176;
          if (v176 < 0.0)
          {
            v177 = 0.0;
          }
        }

        _H1 = *&v53[2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v53[2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H3 = *&v53[2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        _H21 = *&v53[2 * llroundf(fminf(fmaxf(v161, 0.0), 8191.0))];
        _H11 = *&v53[2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        _H22 = *&v53[2 * llroundf(fminf(fmaxf(v164, 0.0), 8191.0))];
        _H18 = *&v53[2 * llroundf(fminf(fmaxf(v166, 0.0), 8191.0))];
        _H20 = *&v53[2 * llroundf(fminf(fmaxf(v167, 0.0), 8191.0))];
        _H10 = *&v53[2 * llroundf(fminf(fmaxf(v169, 0.0), 8191.0))];
        _H5 = *&v53[2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
        _H7 = *&v53[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
        _H16 = *&v53[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
        v193 = (((v320 * _S2) + (v321 * _S1)) + (v319 * _S3)) + (v351 * fmaxf(_S1, fmaxf(_S2, _S3)));
        v194 = 8191.0;
        if (v193 <= 8191.0)
        {
          v194 = v193;
          if (v193 < 0.0)
          {
            v194 = 0.0;
          }
        }

        v195 = v40;
        v196 = v37;
        __asm
        {
          FCVT            S17, H21
          FCVT            S11, H11
          FCVT            S12, H22
        }

        _H0 = result->i16[llroundf(v194)];
        v201 = (((v320 * _S11) + (v321 * _S17)) + (v319 * _S12)) + (v351 * fmaxf(_S17, fmaxf(_S11, _S12)));
        v202 = 8191.0;
        if (v201 <= 8191.0)
        {
          v202 = v201;
          if (v201 < 0.0)
          {
            v202 = 0.0;
          }
        }

        __asm
        {
          FCVT            S23, H18
          FCVT            S24, H20
          FCVT            S28, H10
        }

        _H25 = result->i16[llroundf(v202)];
        v207 = fmaxf(_S23, fmaxf(_S24, _S28));
        v208 = (((v320 * _S24) + (v321 * _S23)) + (v319 * _S28)) + (v351 * v207);
        v209 = 8191.0;
        if (v208 <= 8191.0)
        {
          v209 = (((v320 * _S24) + (v321 * _S23)) + (v319 * _S28)) + (v351 * v207);
          if (v208 < 0.0)
          {
            v209 = 0.0;
          }
        }

        __asm
        {
          FCVT            S21, H5
          FCVT            S22, H7
          FCVT            S10, H16
          FCVT            S0, H0
        }

        v214 = _S1 * _S0;
        v215 = _S2 * _S0;
        v216 = _S3 * _S0;
        __asm { FCVT            S0, H25 }

        v218 = _S17 * _S0;
        v219 = _S11 * _S0;
        v220 = _S12 * _S0;
        LOWORD(_S0) = result->i16[llroundf(v209)];
        __asm { FCVT            S1, H0 }

        v222 = _S23 * _S1;
        v223 = _S24 * _S1;
        v224 = _S28 * _S1;
        v225 = (((v320 * _S22) + (v321 * _S21)) + (v319 * _S10)) + (v351 * fmaxf(_S21, fmaxf(_S22, _S10)));
        v226 = 8191.0;
        if (v225 <= 8191.0)
        {
          v226 = v225;
          if (v225 < 0.0)
          {
            v226 = 0.0;
          }
        }

        _H17 = result->i16[llroundf(v226)];
        __asm { FCVT            S17, H17 }

        v229 = _S21 * _S17;
        v230 = _S22 * _S17;
        _S17 = _S10 * _S17;
        v232 = ((v330 * v215) + (v214 * v331)) + (v216 * v329);
        v233 = ((v327 * v215) + (v214 * v328)) + (v216 * v325);
        _S16 = ((v306 * v215) + (v214 * v308)) + (v216 * v323);
        v235 = ((v330 * v219) + (v218 * v331)) + (v220 * v329);
        v236 = ((v327 * v219) + (v218 * v328)) + (v220 * v325);
        _S7 = ((v306 * v219) + (v218 * v308)) + (v220 * v323);
        v238 = ((v330 * v223) + (v222 * v331)) + (v224 * v329);
        v239 = ((v327 * v223) + (v222 * v328)) + (v224 * v325);
        _S0 = ((v306 * v223) + (v222 * v308)) + (v224 * v323);
        v241 = ((v330 * v230) + (v229 * v331)) + (_S17 * v329);
        v242 = ((v327 * v230) + (v229 * v328)) + (_S17 * v325);
        _S21 = ((v306 * v230) + (v229 * v308)) + (_S17 * v323);
        _H1 = *&v54[2 * llroundf(fminf(fmaxf(v232, 0.0), 8191.0))];
        __asm { FCVT            S3, H1 }

        _H1 = *&v54[2 * llroundf(fminf(fmaxf(v233, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v54[2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H5 = *&v54[2 * llroundf(fminf(fmaxf(v235, 0.0), 8191.0))];
        __asm { FCVT            S5, H5 }

        LOWORD(_S16) = *&v54[2 * llroundf(fminf(fmaxf(v236, 0.0), 8191.0))];
        LOWORD(_S7) = *&v54[2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0))];
        __asm
        {
          FCVT            S16, H16
          FCVT            S7, H7
        }

        LOWORD(_S17) = *&v54[2 * llroundf(fminf(fmaxf(v238, 0.0), 8191.0))];
        __asm { FCVT            S20, H17 }

        LOWORD(_S17) = *&v54[2 * llroundf(fminf(fmaxf(v239, 0.0), 8191.0))];
        __asm { FCVT            S18, H17 }

        LOWORD(_S0) = *&v54[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S17, H0 }

        LOWORD(_S0) = *&v54[2 * llroundf(fminf(fmaxf(v241, 0.0), 8191.0))];
        __asm { FCVT            S11, H0 }

        LOWORD(_S0) = *&v54[2 * llroundf(fminf(fmaxf(v242, 0.0), 8191.0))];
        LOWORD(_S21) = *&v54[2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0))];
        __asm
        {
          FCVT            S22, H0
          FCVT            S10, H21
        }

        v260 = (((v343 * _S1) + (v344 * _S3)) + (v346 * _S2)) + v307;
        if (v260 < v307)
        {
          v261 = v307;
        }

        else
        {
          v261 = (((v343 * _S1) + (v344 * _S3)) + (v346 * _S2)) + v307;
        }

        v172 = v260 <= v342;
        v262 = (((v343 * _S16) + (v344 * _S5)) + (v346 * _S7)) + v307;
        if (!v172)
        {
          v261 = v342;
        }

        v263 = llroundf(v261);
        if (v262 < v307)
        {
          v264 = v307;
        }

        else
        {
          v264 = (((v343 * _S16) + (v344 * _S5)) + (v346 * _S7)) + v307;
        }

        v172 = v262 <= v342;
        v265 = (((v343 * _S18) + (v344 * _S20)) + (v346 * _S17)) + v307;
        if (!v172)
        {
          v264 = v342;
        }

        v266 = llroundf(v264);
        if (v265 < v307)
        {
          v267 = v307;
        }

        else
        {
          v267 = (((v343 * _S18) + (v344 * _S20)) + (v346 * _S17)) + v307;
        }

        v172 = v265 <= v342;
        v268 = (((v343 * _S22) + (v344 * _S11)) + (v346 * _S10)) + v307;
        if (!v172)
        {
          v267 = v342;
        }

        v269 = llroundf(v267);
        if (v268 < v307)
        {
          *_D21.i32 = v307;
        }

        else
        {
          *_D21.i32 = (((v343 * _S22) + (v344 * _S11)) + (v346 * _S10)) + v307;
        }

        if (v268 <= v342)
        {
          v270 = *_D21.i32;
        }

        else
        {
          v270 = v342;
        }

        v271 = llroundf(v270);
        v272 = ((_S3 + _S5) + _S20) + _S11;
        v273 = ((_S1 + _S16) + _S18) + _S22;
        v68->i8[0] = v263;
        v68->i8[1] = v266;
        v90->i8[0] = v269;
        v90->i8[1] = v271;
        v40 = v195;
        v274 = ((_S2 + _S7) + _S17) + _S10;
        v275 = ((v195 + (v272 * v340)) + (v273 * *&v83)) + (v274 * v337);
        v276 = v322;
        if (v275 <= v322)
        {
          v276 = ((v195 + (v272 * v340)) + (v273 * *&v83)) + (v274 * v337);
          if (v275 < v348)
          {
            v276 = v348;
          }
        }

        *_Q0.i32 = ((v195 + (v272 * v302)) + (v273 * *(&v83 + 1))) + (v274 * v301);
        *v146 = llroundf(v276);
        v277 = v322;
        v37 = v196;
        v38 = v347;
        v55 = v304;
        _H15 = v305;
        v58 = v324;
        v60 = v339;
        v85.i64[0] = 0x9000900090009000;
        v85.i64[1] = 0x9000900090009000;
        if (*_Q0.i32 <= v322)
        {
          v277 = *_Q0.i32;
          if (*_Q0.i32 < v348)
          {
            v277 = v348;
          }
        }

        v147 += 2;
        v145 += 2;
        v70 = (v70 + 2);
        v89 = (v89 + 2);
        v146[1] = llroundf(v277);
        v68 = (v68 + 2);
        v90 = (v90 + 2);
        v146 += 2;
        v47 = v326;
        _H8 = v341;
        v80 = v57;
        v56 = v336;
        v82 = v345;
      }

      v70 = &v86[v24];
      v69 += v25;
      v68 = &v87[v26];
      v67 += v27;
      v22 += 2;
    }

    while (v22 < v16);
  }

  if (v292 && v291)
  {
    if (v16 >= 1)
    {
      v278 = 0;
      v279 = (v292 + v288 * v289 + v290);
      do
      {
        result = memcpy(v21, v279, v13);
        v279 += v288;
        v21 += v293;
        ++v278;
      }

      while (v16 > v278);
    }
  }

  else if (v291 && v16 >= 1)
  {
    v280 = 0;
    v281 = vdupq_n_s64(v13 - 1);
    do
    {
      if (v13 >= 1)
      {
        v282 = 0;
        do
        {
          v283 = vdupq_n_s64(v282);
          v284 = vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v284, *v281.i8), *v281.i8).u8[0])
          {
            v21[v282] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v284, *&v281), *&v281).i8[1])
          {
            v21[v282 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v281, vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDDA0)))), *&v281).i8[2])
          {
            v21[v282 + 2] = -1;
            v21[v282 + 3] = -1;
          }

          v285 = vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v281, vuzp1_s16(v285, *&v281)).i32[1])
          {
            v21[v282 + 4] = -1;
          }

          if (vuzp1_s8(*&v281, vuzp1_s16(v285, *&v281)).i8[5])
          {
            v21[v282 + 5] = -1;
          }

          if (vuzp1_s8(*&v281, vuzp1_s16(*&v281, vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDD80))))).i8[6])
          {
            v21[v282 + 6] = -1;
            v21[v282 + 7] = -1;
          }

          v286 = vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v286, *v281.i8), *v281.i8).u8[0])
          {
            v21[v282 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v286, *&v281), *&v281).i8[1])
          {
            v21[v282 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v281, vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDD60)))), *&v281).i8[2])
          {
            v21[v282 + 10] = -1;
            v21[v282 + 11] = -1;
          }

          v287 = vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v281, vuzp1_s16(v287, *&v281)).i32[1])
          {
            v21[v282 + 12] = -1;
          }

          if (vuzp1_s8(*&v281, vuzp1_s16(v287, *&v281)).i8[5])
          {
            v21[v282 + 13] = -1;
          }

          if (vuzp1_s8(*&v281, vuzp1_s16(*&v281, vmovn_s64(vcgeq_u64(v281, vorrq_s8(v283, xmmword_18FECDD40))))).i8[6])
          {
            v21[v282 + 14] = -1;
            v21[v282 + 15] = -1;
          }

          v282 += 16;
        }

        while (((v13 + 15) & 0xFFFFFFFFFFFFFFF0) != v282);
      }

      v21 += v293;
      ++v280;
    }

    while (v16 > v280);
  }

  v295[20].i32[a2] = 0;
  return result;
}