void dworch_updateAlternateInfoForReporting_cold_2(const void *a1)
{
  FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t dworch_changeStageOnQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMetadata_gotAccessToDestinationURLCallback_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_interstitialDownloadSuccessCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dworch_interstitialDidFinishLoadingMetadata_cold_1(const void *a1)
{
  v2 = dworch_downloadMetadata_stageComplete(a1);
  if (v2)
  {
    dworch_transitionToTerminalStateWithOSStatus(a1, v2);
  }
}

uint64_t dworch_setupDownloadItemsForContentConfig_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_setupDownloadItemsForContentConfig_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_persistMetadata_gotAccessToDestinationURLCallback_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_3(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    do
    {
      v4 = v3;
      v5 = a2[1];
      v4[1] = v5;
      *v5 = v4;
      dworch_freeAlternateAndRenditionItem(a2);
      v3 = *v4;
      a2 = v4;
    }

    while (*v4);
  }

  else
  {
    v4 = a2;
  }

  v6 = v4[1];
  *(a1 + 360) = v6;
  *v6 = 0;
  dworch_freeAlternateAndRenditionItem(v4);
}

BOOL dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_4(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_copyPropertyDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_copyPropertyDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_setPropertyDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_setPropertyDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_setPropertyDispatch_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_pause_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dworch_stop_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_copyCursorSampleLocationAndDataSource(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, char *a6, void *a7, void *a8, CFTypeRef *a9, CFTypeRef *a10, CFTypeRef *a11)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  cf = 0;
  if (a3 && *(*(CMBaseObjectGetVTable() + 16) + 184) && *(*(CMBaseObjectGetVTable() + 16) + 192))
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 184);
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19(a2, &v34, &v32, &v33, &v31, &cf, &v30);
    if (v20 || !v31)
    {
      goto LABEL_17;
    }

    if (v33 >= v34 && v33 + v31 <= (v32 + v34))
    {
      v23 = 1;
      goto LABEL_19;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v30)
    {
      CFRelease(v30);
      v30 = 0;
    }

    fig_log_get_emitter();
    v21 = FigSignalErrorAtGM();
  }

  else
  {
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (!v22)
    {
      goto LABEL_25;
    }

    v21 = v22(a2, &v34, &v32, &cf, &v30);
  }

  v20 = v21;
LABEL_17:
  if (v20)
  {
    goto LABEL_26;
  }

  v23 = 0;
LABEL_19:
  if (!(cf | v30))
  {
    fig_log_get_emitter();
    v26 = FigSignalErrorAtGM();
LABEL_56:
    v20 = v26;
    goto LABEL_26;
  }

  if (!*(DerivedStorage + 33))
  {
    if (!cf)
    {
      v26 = sgffr_copyByteStreamForDataSourceURL(DerivedStorage, v30, &cf);
      if (v26)
      {
        goto LABEL_56;
      }
    }

    if (*(DerivedStorage + 32))
    {
      v26 = sgffr_copyScheduledIOForByteStream(DerivedStorage, cf, &v29);
      if (v26)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_36;
  }

  if (v30)
  {
    goto LABEL_36;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v25)
  {
LABEL_25:
    v20 = 4294954514;
    goto LABEL_26;
  }

  v26 = v25(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v30);
  if (v26)
  {
    goto LABEL_56;
  }

LABEL_36:
  if (a4)
  {
    *a4 = v34;
  }

  if (a5)
  {
    *a5 = v32;
  }

  if (a6)
  {
    *a6 = v23;
  }

  if (a7)
  {
    *a7 = v33;
  }

  if (a8)
  {
    *a8 = v31;
  }

  if (a9)
  {
    *a9 = v30;
    v30 = 0;
  }

  if (a10)
  {
    *a10 = cf;
    cf = 0;
  }

  v20 = 0;
  if (a11)
  {
    *a11 = v29;
    v29 = 0;
  }

LABEL_26:
  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v20;
}

uint64_t sgffr_checkByteRangeForByteStream(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = 0;
  FigReadWriteLockLockForRead();
  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  FigReadWriteLockUnlockForRead();
  if (Int64IfPresent && (a3 & 0x8000000000000000) == 0 && v13 >= a3 && v13 - a3 >= a4)
  {
    return 0;
  }

  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(CMBaseObject, *MEMORY[0x1E695FF78], 0, &number);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v13);
    CFRelease(number);
  }

  if (!v10)
  {
    FigReadWriteLockLockForWrite();
    FigCFDictionarySetInt64();
    FigReadWriteLockUnlockForWrite();
    if (a3 < 0 || (v13 >= a3 ? (v11 = v13 - a3 >= a4) : (v11 = 0), !v11))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }

    return 0;
  }

  return v10;
}

uint64_t createSampleBufferForUncompressed(uint64_t a1, size_t a2, const opaqueCMFormatDescription *a3, Boolean a4, void *a5, OSStatus (__cdecl *a6)(CMSampleBufferRef, void *), const CMSampleTimingInfo *a7, CMSampleBufferRef *a8, CMBlockBufferRef *a9)
{
  v67 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  blockBufferOut = 0;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  width = Dimensions.width;
  v14 = HIDWORD(*&Dimensions);
  v15 = MEMORY[0x1E695E480];
  v48 = *&Dimensions >> 32;
  if (MediaSubType == *(DerivedStorage + 144) && *(DerivedStorage + 148) == __PAIR64__(Dimensions.width, Dimensions.height))
  {
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = *(DerivedStorage + 136);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 136) = 0;
  }

  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v18);
  CFRelease(v18);
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E6960008]);
  v20 = MEMORY[0x1E6966060];
  if (Extension && (v21 = Extension, v22 = CFGetTypeID(Extension), v22 == CFNumberGetTypeID()))
  {
    CFDictionarySetValue(Mutable, *v20, v21);
  }

  else
  {
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (DescriptionWithPixelFormatType && !CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]))
    {
      if (((a2 / v48) & 0x8000000000000000) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        goto LABEL_44;
      }

      FigCFDictionarySetInt64();
    }
  }

  v24 = CVPixelBufferPoolCreate(*v15, 0, Mutable, (DerivedStorage + 136));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v24)
  {
    *(DerivedStorage + 144) = MediaSubType;
    *(DerivedStorage + 148) = v14;
    *(DerivedStorage + 152) = width;
LABEL_16:
    v25 = *(DerivedStorage + 136);
    if (!v25)
    {
LABEL_31:
      if (a8)
      {
        *a8 = sampleBufferOut;
        sampleBufferOut = 0;
      }

      v24 = 0;
      if (a9)
      {
        *a9 = blockBufferOut;
        blockBufferOut = 0;
      }

      goto LABEL_35;
    }

    v26 = CVPixelBufferPoolCreatePixelBuffer(*v15, v25, &pixelBufferOut);
    if (v26)
    {
LABEL_45:
      v24 = v26;
      goto LABEL_35;
    }

    v27 = pixelBufferOut;
    if (!pixelBufferOut)
    {
      goto LABEL_31;
    }

    v28 = *MEMORY[0x1E6965E50];
    *customBlockSource = *MEMORY[0x1E6965D70];
    *&customBlockSource[8] = v28;
    v29 = *MEMORY[0x1E6965EF8];
    *&customBlockSource[16] = *MEMORY[0x1E6965E58];
    *&customBlockSource[24] = v29;
    v30 = *MEMORY[0x1E6965F30];
    v55 = *MEMORY[0x1E6965D88];
    v56 = v30;
    v31 = *MEMORY[0x1E6965F98];
    v57 = *MEMORY[0x1E6965E80];
    v58 = v31;
    v32 = *MEMORY[0x1E6965D00];
    v59 = *MEMORY[0x1E6960070];
    v60 = v32;
    v33 = *MEMORY[0x1E6960080];
    v61 = *MEMORY[0x1E6965CF0];
    v62 = v33;
    v34 = *MEMORY[0x1E695FFF0];
    v63 = *MEMORY[0x1E6960020];
    v64 = v34;
    v35 = *MEMORY[0x1E6960078];
    v65 = *MEMORY[0x1E6960018];
    v66 = v35;
    Extensions = CMFormatDescriptionGetExtensions(a3);
    if (Extensions)
    {
      v37 = Extensions;
      for (i = 0; i != 128; i += 8)
      {
        v39 = *&customBlockSource[i];
        Value = CFDictionaryGetValue(v37, v39);
        if (Value)
        {
          CVBufferSetAttachment(v27, v39, Value, kCVAttachmentMode_ShouldPropagate);
        }
      }
    }

    if (!pixelBufferOut)
    {
      goto LABEL_31;
    }

    v41 = CVPixelBufferGetBytesPerRow(pixelBufferOut) * v48;
    if (v41 >= a2)
    {
      v26 = CMSampleBufferCreateForImageBuffer(*DerivedStorage, pixelBufferOut, a4, a6, a5, a3, a7, &sampleBufferOut);
      if (!v26)
      {
        if (!a9)
        {
          goto LABEL_31;
        }

        *customBlockSource = 0;
        v42 = pixelBufferOut;
        if (pixelBufferOut)
        {
          v42 = CFRetain(pixelBufferOut);
        }

        *&customBlockSource[20] = v42;
        *&customBlockSource[4] = cvbufferBBufSourceLock;
        *&customBlockSource[12] = cvbufferBBufSourceRelease;
        v26 = CMBlockBufferCreateWithMemoryBlock(*DerivedStorage, 0, v41, 0, customBlockSource, 0, v41, 0, &blockBufferOut);
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_45;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
LABEL_44:
    v26 = FigSignalErrorAtGM();
    goto LABEL_45;
  }

LABEL_35:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v24;
}

void sgffr_transferBiPlanarDataFromBlockBufferToPixelBuffer(OpaqueCMBlockBuffer *a1, __CVBuffer *a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v5 = OUTLINED_FUNCTION_312();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, v6);
  v8 = OUTLINED_FUNCTION_312();
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v8, v9);
  v11 = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
  v12 = OUTLINED_FUNCTION_312();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v12, v13);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
  if (DataLength <= 0xF)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_297_0();

    FigSignalErrorAtGM();
  }

  else
  {
    v16 = v15;
    destination = 0;
    v39 = 0;
    if (!CMBlockBufferCopyDataBytes(a1, 0, 0x10uLL, &destination))
    {
      v17 = bswap32(destination);
      if (v17 <= 0xF || (v37 = v16, v18 = bswap32(HIDWORD(destination)), WidthOfPlane > v18) || (v19 = bswap32(v39), v19 <= 0xF) || DataLength <= v17 || DataLength <= v19 || !is_mul_ok(HeightOfPlane, v18) || ((HeightOfPlane * v18) & 0x8000000000000000) != 0 || (OUTLINED_FUNCTION_5_25(), v21) || v20 > v19 || (v36 = bswap32(HIDWORD(v39)), !is_mul_ok(v11, v36)) || ((v11 * v36) & 0x8000000000000000) != 0 || (OUTLINED_FUNCTION_5_25(), v23) || DataLength < v22)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }

      else
      {
        if (BytesPerRowOfPlane >= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = BytesPerRowOfPlane;
        }

        if (v37 >= v36)
        {
          v25 = v36;
        }

        else
        {
          v25 = v37;
        }

        v26 = OUTLINED_FUNCTION_312();
        if (!CVPixelBufferLockBaseAddress(v26, v27))
        {
          pixelBuffer = a2;
          v28 = OUTLINED_FUNCTION_312();
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v28, v29);
          if (HeightOfPlane)
          {
            v31 = BaseAddressOfPlane;
            do
            {
              CMBlockBufferCopyDataBytes(a1, v17, v24, v31);
              v17 += v18;
              v31 += BytesPerRowOfPlane;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
          }

          v32 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
          if (v11)
          {
            v33 = v32;
            do
            {
              CMBlockBufferCopyDataBytes(a1, v19, v25, v33);
              v19 += v36;
              v33 += v37;
              --v11;
            }

            while (v11);
          }

          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        }
      }
    }

    OUTLINED_FUNCTION_297_0();
  }
}

uint64_t sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  if (!a2 || CMSampleBufferDataIsReady(a1))
  {
    return 0;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      result = v6(v4, v5, 0);
      if (!result)
      {
        FigSemaphoreCreate();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_38();
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_7_14();
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRegisterForBarrierSupport();
        if (CMSampleBufferIsValid(a1) && !CMSampleBufferDataIsReady(a1))
        {
          v8 = OUTLINED_FUNCTION_312();
          if (!CMSampleBufferHasDataFailed(v8, v9))
          {
            FigSemaphoreWaitRelative();
          }
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_38();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_7_14();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterBarrier();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterUnregisterForBarrierSupport();
        FigSemaphoreDestroy();
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
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

void sgffr_refineAndVerifySampleLocation(uint64_t a1, CMBlockBufferRef theBuffer, CMBlockBufferRef a3, uint64_t a4, size_t a5, uint64_t a6, size_t size, void *a8, void *a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  if ((theBuffer != 0) == (a3 != 0) || (v10 = a6 - a4, a6 - a4 < 0) || v10 + size > a5 || theBuffer && CMBlockBufferGetDataLength(theBuffer) != a5 || a3 && CMBlockBufferGetDataLength(a3) != size)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    v17 = 0;
    goto LABEL_23;
  }

  v23 = a8;
  if (size >= 9)
  {
    v17 = malloc_type_malloc(size, 0x13FDEF13uLL);
    p_destination = v17;
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v19 = a3;
    v20 = 0;
    goto LABEL_14;
  }

  v17 = 0;
  p_destination = &destination;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = theBuffer;
  v20 = v10;
LABEL_14:
  if (!CMBlockBufferCopyDataBytes(v19, v20, size, p_destination))
  {
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 192);
    if (v21)
    {
      if (!v21(a1, a4, a5, p_destination, size, &v25, &v24))
      {
        if (v25 >= a4 && (v22 = v24, v24 + v25 <= a5 + a4))
        {
          if (v23)
          {
            *v23 = v25;
          }

          if (a9)
          {
            *a9 = v22;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM();
        }
      }
    }
  }

LABEL_23:
  free(v17);
  OUTLINED_FUNCTION_297_0();
}

uint64_t sgffr_copyByteStreamForDataSourceURL(uint64_t a1, const void *a2, void **a3)
{
  FigReadWriteLockLockForWrite();
  v6 = CFDictionaryGetValue(*(*(a1 + 48) + 24), a2);
  value = v6;
  if (v6)
  {
    CFRetain(v6);
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        v7 = v9(v8, a2, 0, 0, *MEMORY[0x1E695E480], &value);
        if (!v7)
        {
          CFDictionarySetValue(*(*(a1 + 48) + 24), a2, value);
        }
      }

      else
      {
        v7 = 4294954514;
      }
    }

    else
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
    }
  }

  FigReadWriteLockUnlockForWrite();
  *a3 = value;
  return v7;
}

void FigSampleGeneratorDataSourceCacheCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FigSampleGeneratorDataSourceCacheCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleGeneratorDataSourceCacheCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_copyProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t sgffr_CreateSampleGeneratorBatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_CreateSampleGeneratorBatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_4(uint64_t a1, const void **a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  return sgffr_forgetScheduledIOForSampleBuffer(*a2);
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_generateSingleSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_generateSingleSampleBuffer_cold_2(uint64_t a1, const void **a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  return sgffr_forgetScheduledIOForSampleBuffer(*a2);
}

uint64_t sgffr_generateSingleSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_generateSingleSampleBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t sgffr_generateSingleSampleBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sgffr_createBlockBufferWithBufferReference_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SampleGeneratorReadCompletionInfoCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL sgffr_markSampleBufferReady_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM() == 0;
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v4 = FigSignalErrorAtGM();
  *a3 = v4;
  return v4 == 0;
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_Commit_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_Commit_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_Commit_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figSampleGeneratorBatch_Cancel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  __break(1u);
}

uint64_t figSampleGeneratorBatch_GetState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorBatch_GetState_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void *downloadConfig_copyAuxConfigsWithOnlyQualifiers(uint64_t a1, uint64_t a2, __CFString *a3)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v5 = 40;
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 0;
    }

    v5 = 48;
  }

  v6 = *(a1 + v5);
  if (!v6 || CFArrayGetCount(*(a1 + v5)) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
    v9 = downloadContentConfig_createCopyWithOnlyQualifiers(ValueAtIndex, &cf);
    if (v9)
    {
      break;
    }

    v10 = cf;
    if (cf)
    {
      v11 = FigStreamingAssetDownloadConfigAddAuxConfig(a2, cf, a3);
      if (v11)
      {
        v12 = v11;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM();
        goto LABEL_19;
      }

      CFRelease(v10);
      cf = 0;
    }

    if (++v7 >= CFArrayGetCount(v6))
    {
      return 0;
    }
  }

  v12 = v9;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM();
  v10 = cf;
  if (!cf)
  {
    return v12;
  }

LABEL_19:
  CFRelease(v10);
  return v12;
}

xpc_object_t FigStreamingAssetDownloadConfigCopySerializedRepresentation(uint64_t a1)
{
  v18 = 0;
  empty = xpc_dictionary_create_empty();
  if (*(a1 + 120))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      OUTLINED_FUNCTION_4_30(v3, "InterstitialMediaSelectionCriteria");
    }
  }

  FigXPCRelease();
  v4 = *(a1 + 24);
  if (v4)
  {
    v13 = downloadContentConfig_copySerializedRepresentation(v4, &v18);
    if (v13)
    {
      v14 = v13;
      OUTLINED_FUNCTION_4_30(v13, "DefaultPrimaryConfig");
      xpc_release(v14);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v15 = downloadContentConfig_copySerializedRepresentation(v5, &v18);
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_4_30(v15, "OnExpensiveNetworkPrimaryConfig");
      xpc_release(v16);
    }
  }

  FigXPCRelease();
  *&v17[0] = 0;
  v6 = downloadConfig_serializeAuxContentConfigsGuts(*(a1 + 40), &v18, v17);
  v7 = *&v17[0];
  if (v6)
  {
    FigXPCRelease();
  }

  else
  {
    if (*&v17[0])
    {
      OUTLINED_FUNCTION_4_30(v6, "DefaultAuxConfigs");
      *&v17[0] = 0;
      xpc_release(v7);
    }

    v8 = downloadConfig_serializeAuxContentConfigsGuts(*(a1 + 48), &v18, v17);
    v9 = v8;
    v10 = *&v17[0];
    if (v8 || !*&v17[0])
    {
      FigXPCRelease();
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_30(v8, "OnExpensiveNetworkAuxConfigs");
      xpc_release(v10);
      FigXPCRelease();
    }

    xpc_dictionary_set_BOOL(empty, "OptimizesAuxiliaryContentConfigurations", *(a1 + 16) != 0);
    xpc_dictionary_set_BOOL(empty, "DownloadsInterstitialAssets", *(a1 + 17) != 0);
    FigXPCMessageSetCFString();
    FigXPCMessageSetCFData();
    v11 = *(a1 + 88);
    v17[0] = *(a1 + 72);
    v17[1] = v11;
    v17[2] = *(a1 + 104);
    FigXPCMessageSetCMTimeRange();
  }

LABEL_14:
  if (v18)
  {
    CFRelease(v18);
  }

  return empty;
}

uint64_t FigStreamingAssetDownloadConfigCreateWithSerializedConfig(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  v17 = 0;
  v5 = FigStreamingAssetDownloadConfigCreate(a1, &v17);
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = v17;
  if (xpc_dictionary_get_value(a2, "InterstitialMediaSelectionCriteria"))
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    if (v7)
    {
      v8 = v7;
      v9 = *(v6 + 15);
      if (v9)
      {
        CFRelease(v9);
        *(v6 + 15) = 0;
      }

      *(v6 + 15) = FigCFDictionaryCreateMutableCopy();
      CFRelease(v8);
    }
  }

  value = xpc_dictionary_get_value(a2, "DefaultPrimaryConfig");
  if (value)
  {
    *(v6 + 3) = downloadContentConfig_deserializeAndCopyContentConfig(value, &cf);
  }

  v11 = xpc_dictionary_get_value(a2, "OnExpensiveNetworkPrimaryConfig");
  if (v11)
  {
    *(v6 + 4) = downloadContentConfig_deserializeAndCopyContentConfig(v11, &cf);
  }

  if ((v12 = xpc_dictionary_get_value(a2, "DefaultAuxConfigs")) != 0 && (v5 = downloadConfig_deserializeAuxContentConfigsGuts(v12, &cf, v6 + 5), v5) || (v13 = xpc_dictionary_get_value(a2, "OnExpensiveNetworkAuxConfigs")) != 0 && (v5 = downloadConfig_deserializeAuxContentConfigsGuts(v13, &cf, v6 + 6), v5))
  {
LABEL_21:
    v14 = v5;
  }

  else
  {
    *(v6 + 16) = xpc_dictionary_get_BOOL(a2, "OptimizesAuxiliaryContentConfigurations");
    *(v6 + 17) = xpc_dictionary_get_BOOL(a2, "DownloadsInterstitialAssets");
    FigXPCMessageCopyCFString();
    FigXPCMessageCopyCFData();
    FigXPCMessageGetCMTimeRange();
    v14 = 0;
    *a3 = v6;
    v17 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v14;
}

CFMutableStringRef dwContentConf_copyDesc(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v4 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v4, v5, v6);
    v7 = CFCopyDescription(*(a1 + 24));
    if (v7)
    {
      v8 = v7;
      v9 = FigCFStringCopyWithIndent();
      if (v9)
      {
        v10 = v9;
        v45 = v9;
        v11 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v11, v12, v13, v45);
        CFRelease(v10);
      }

      CFRelease(v8);
    }

    v14 = *(a1 + 16);
    if (v14)
    {
      Count = CFArrayGetCount(v14);
      v16 = objc_autoreleasePoolPush();
      if (Count >= 1)
      {
        v49 = v16;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = CFCopyDescription([ValueAtIndex _predicate]);
          }

          else
          {
            v19 = CFStringCreateWithCString(v2, [objc_msgSend(ValueAtIndex "description")], 0x8000100u);
          }

          v20 = v19;
          if (v19)
          {
            v21 = FigCFStringCopyWithIndent();
            if (v21)
            {
              v22 = v21;
              v46 = v21;
              v23 = OUTLINED_FUNCTION_312();
              CFStringAppendFormat(v23, v24, @"\n%@", v46);
              CFRelease(v22);
            }

            CFRelease(v20);
          }
        }

        v16 = v49;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
    }

    objc_autoreleasePoolPop(v16);
    v25 = *(a1 + 32);
    if (v25)
    {
      v26 = CFArrayGetCount(v25);
      if (v26 >= 1)
      {
        v27 = v26;
        for (j = 0; j != v27; ++j)
        {
          v29 = CFArrayGetValueAtIndex(*(a1 + 32), j);
          v30 = FigMediaSelectionArrayCopyDescription(v2, v29);
          if (v30)
          {
            v31 = v30;
            v32 = FigCFStringCopyWithIndent();
            if (v32)
            {
              v33 = v32;
              v47 = v32;
              v34 = OUTLINED_FUNCTION_312();
              CFStringAppendFormat(v34, v35, @"\n%@", v47);
              CFRelease(v33);
            }

            CFRelease(v31);
          }
        }
      }
    }

    if (*(a1 + 40))
    {
      v36 = FigCFCopyCompactDescription();
      if (v36)
      {
        v37 = v36;
        v48 = v36;
        v38 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v38, v39, v40, v48);
        CFRelease(v37);
      }
    }

    v41 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v41, v42, v43);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

  return Mutable;
}

void *downloadContentConfig_createCopyWithOnlyQualifiers(void *a1, void *a2)
{
  v2 = a1;
  v11 = 0;
  *a2 = 0;
  if (a1)
  {
    if (a1[2])
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v5 = FigStreamingAssetDownloadContentConfigCreateCopy(AllocatorForMedia, v2, &v11);
      if (v5)
      {
        v2 = v5;
        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }

      else
      {
        v6 = v11;
        v7 = v11[3];
        if (v7)
        {
          CFRelease(v7);
          v6[3] = 0;
        }

        v8 = v6[4];
        if (v8)
        {
          CFRelease(v8);
          v6[4] = 0;
        }

        v9 = v6[5];
        if (v9)
        {
          CFRelease(v9);
          v6[5] = 0;
        }

        v2 = 0;
        *a2 = v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

xpc_object_t downloadContentConfig_copySerializedRepresentation(uint64_t a1, uint64_t a2)
{
  v20[17] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  value = 0;
  empty = xpc_dictionary_create_empty();
  if (!empty)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v5 = xpc_array_create_empty();
  v6 = *(a1 + 16);
  v8 = OUTLINED_FUNCTION_5_26(v5, v7);
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(8 * i);
        v20[0] = 0;
        v13 = [objc_opt_class() conformsToProtocol:&unk_1F0B70810];
        if (v13)
        {
          v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v20];
          if (v13)
          {
            v15 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_array_append_value(v5, v15);
            xpc_release(v15);
          }
        }
      }

      v9 = OUTLINED_FUNCTION_5_26(v13, v14);
    }

    while (v9);
  }

  if (xpc_array_get_count(v5))
  {
    xpc_dictionary_set_value(empty, "SerializedQualifiersKey", v5);
  }

  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_18;
  }

  if (!FigAlternateCopyAsXPCObjectWithContext(v16, a2, &value))
  {
    if (value)
    {
      xpc_dictionary_set_value(empty, "SerializedAlternateKey", value);
      xpc_release(value);
    }

LABEL_18:
    FigXPCMessageSetCFArray();
  }

LABEL_19:
  FigXPCRelease();
  objc_autoreleasePoolPop(v3);
  return empty;
}

uint64_t downloadContentConfig_deserializeAndCopyContentConfig(void *a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v26 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = CFGetAllocator(0);
  if (!FigStreamingAssetDownloadContentConfigCreate(v4, &v26))
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if (v5)
    {
      v6 = v5;
      v25 = a1;
      value = xpc_dictionary_get_value(a1, "SerializedQualifiersKey");
      count = xpc_array_get_count(value);
      if (count >= 1)
      {
        v9 = count;
        for (i = 0; v9 != i; ++i)
        {
          xpc_array_get_value(value, i);
          v28 = 0;
          v29 = 0;
          v30[0] = 0;
          v11 = _CFXPCCreateCFObjectFromXPCObject();
          if (!v11)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_3();
            FigSignalErrorAtGM();
            continue;
          }

          v12 = v11;
          v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v28];
          if (v13)
          {
            v14 = v13;
            v27 = 0;
            v15 = [v13 _predicate];
            if (v15 && (v16 = v15, (v17 = [[FigAlternatePredicateValidator alloc] initWithPredicate:v15]) != 0))
            {
              v18 = v17;
              v19 = [(FigAlternatePredicateValidator *)v17 validateWithError:&v27];

              if (v19)
              {
                [v16 allowEvaluation];
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM();
            }
          }

          else
          {
            v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v29];
            if (!v14)
            {
              v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:v30];

              if (!v14)
              {
                continue;
              }

              goto LABEL_13;
            }
          }

LABEL_13:
          [v6 addObject:v14];
        }
      }

      if ([v6 count])
      {
        v20 = CFRetain(v6);
        v21 = v26;
        *(v26 + 16) = v20;
      }

      else
      {
        v21 = v26;
      }

      v22 = xpc_dictionary_get_value(v25, "SerializedAlternateKey");
      if (v22)
      {
        FigAlternateCreateWithXPCObject(v22, a2, (v21 + 24));
      }

      FigXPCMessageCopyCFArray();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      FigSignalErrorAtGM();
    }
  }

  objc_autoreleasePoolPop(v3);
  return v26;
}

CFMutableStringRef dwConf_copyDesc(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v4 = CFCopyDescription(*(a1 + 24));
    if (v4)
    {
      v5 = v4;
      v33 = v4;
      v6 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v6, v7, v8, v33);
      CFRelease(v5);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        v13 = Count;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v12);
          v15 = CFCopyDescription(ValueAtIndex);
          if (v15)
          {
            v16 = v15;
            v35 = v15;
            v17 = OUTLINED_FUNCTION_312();
            CFStringAppendFormat(v17, v18, @"\nAux %d/%d:\n%@", v12, v13, v35);
            CFRelease(v16);
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    if (*(a1 + 120) && (v19 = FigCFCopyCompactDescription()) != 0)
    {
      v20 = v19;
      v34 = v19;
      v21 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v21, v22, v23, v34);
      CFRelease(v20);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v24, v25, v26);
    }

    if ((*(a1 + 84) & 1) != 0 && (*(a1 + 108) & 1) != 0 && !*(a1 + 112) && (*(a1 + 96) & 0x8000000000000000) == 0)
    {
      v28 = *(a1 + 88);
      *&range.start.value = *(a1 + 72);
      *&range.start.epoch = v28;
      *&range.duration.timescale = *(a1 + 104);
      v29 = CMTimeRangeCopyDescription(v2, &range);
      v30 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v30, v31, v32, v29);
      if (v29)
      {
        CFRelease(v29);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

  return Mutable;
}

uint64_t FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadContentConfigCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadContentConfigCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigAddAuxConfig_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigAddAuxConfig_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t downloadConfig_copyPrimaryWithOnlyQualifiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t downloadConfig_copyPrimaryWithOnlyQualifiers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigStreamingAssetDownloadConfigSetMediaSelectionCriteriaForInterstitials_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetDownloadConfigCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t downloadConfig_serializeAuxContentConfigsGuts_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void downloadConfig_deserializeAuxContentConfigsGuts_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

double via_cleanupVImageAdaptor(uint64_t a1)
{
  if (a1)
  {
    via_releaseVImageBuffer(a1);
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t via_releaseVImageBuffer(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 32);
  if (!v2)
  {
    result = *v1;
    if (!*v1)
    {
      return result;
    }

    free(result);
    goto LABEL_15;
  }

  if (!*(v1 + 40))
  {
    result = CVPixelBufferLockBaseAddress(v2, 0);
    if (result)
    {
      return result;
    }

    *(v1 + 40) = 1;
    v2 = *(v1 + 32);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v2);
  result = CVPixelBufferUnlockBaseAddress(*(v1 + 32), 0);
  if (!result)
  {
    *(v1 + 40) = 0;
    v4 = *(v1 + 32);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 32) = 0;
    }

    if (BaseAddress != *v1)
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

LABEL_15:
    result = 0;
    *v1 = 0;
  }

  return result;
}

uint64_t vivc_RenderFrame(const void *a1, int a2, _DWORD *a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9, uint64_t a10)
{
  v308 = *MEMORY[0x1E69E9840];
  v251 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v288.width = 0.0;
  v288.height = 0.0;
  v287 = 0;
  v15 = MEMORY[0x1E695EFD0];
  v16 = *MEMORY[0x1E695EFD0];
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  v283 = *MEMORY[0x1E695EFD0];
  v284 = v17;
  v248 = *(MEMORY[0x1E695EFD0] + 32);
  v285 = v248;
  cf = 0;
  if (!DerivedStorage || !*(DerivedStorage + 24))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    RenderDimensions = FigSignalErrorAtGM();
    goto LABEL_261;
  }

  v259 = v17;
  v262 = v16;
  v234 = DerivedStorage;
  RenderDimensions = FigVideoCompositorPropertiesGetRenderDimensions(*DerivedStorage, &v288);
  if (RenderDimensions)
  {
    goto LABEL_261;
  }

  *&v307.a = *a9;
  v307.c = *(a9 + 16);
  RenderDimensions = FigVCLayerDefinitionCreateLayerDefinitionArray(a2, a3, a4, a8, v288.width, v288.height, &v307, &v287);
  if (RenderDimensions)
  {
    goto LABEL_261;
  }

  RenderDimensions = FigVideoCompositorCopyDestinationPixelBufferWithoutComposingIfPossible(*v234, v287, &cf);
  if (RenderDimensions)
  {
    goto LABEL_261;
  }

  if (cf)
  {
    goto LABEL_7;
  }

  v21 = v287;
  v22 = CMBaseObjectGetDerivedStorage();
  pixelBufferOut.a = 0.0;
  *&v307.a = *"024x02fx024p02fpv024f024ARGB ";
  *&t1.a = *"v024f024ARGB ";
  v23 = CMBaseObjectGetDerivedStorage();
  if (FigVideoCompositorGetBestBitDepthForCompositorPropertiesAndLayerDefinitions(*v23, v21) <= 8)
  {
    p_t1 = &t1;
  }

  else
  {
    p_t1 = &v307;
  }

  if (!v21)
  {
    goto LABEL_262;
  }

  if (CFArrayGetCount(v21) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v21, 0);
    if (ValueAtIndex)
    {
      SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
      if (SourcePixelBuffer)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(SourcePixelBuffer);
        v28 = 0;
        while (*(&p_t1->a + v28) != PixelFormatType)
        {
          v28 += 4;
          if (v28 == 16)
          {
            goto LABEL_25;
          }
        }

        *(&p_t1->a + v28) = LODWORD(p_t1->a);
        LODWORD(p_t1->a) = PixelFormatType;
        goto LABEL_25;
      }
    }

LABEL_262:
    Mutable = 0;
    goto LABEL_28;
  }

LABEL_25:
  v29 = CFGetAllocator(v251);
  Mutable = CFArrayCreateMutable(v29, 4, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    for (i = 0; i != 16; i += 4)
    {
      FigCFArrayAppendInt32();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM();
  }

LABEL_28:
  v32 = (v22 + 8);
  v33 = MEMORY[0x1E695E480];
  if (*(v22 + 8))
  {
    v34 = FigCFEqual();
    v35 = *(v22 + 8);
    if (v34)
    {
      if (v35)
      {
        goto LABEL_39;
      }
    }

    else if (v35)
    {
      CFRelease(v35);
      *v32 = 0;
    }
  }

  DestinationPixelBufferPool = FigVideoCompositorCreateDestinationPixelBufferPool(*v22, @"vimage-vc-output", Mutable, (v22 + 8), 0);
  if (DestinationPixelBufferPool)
  {
    PixelBuffer = DestinationPixelBufferPool;
    goto LABEL_43;
  }

  v37 = *(v22 + 16);
  *(v22 + 16) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v37)
  {
    CFRelease(v37);
  }

LABEL_39:
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*v33, *v32, &pixelBufferOut);
  a = pixelBufferOut.a;
  if (PixelBuffer || (PixelBuffer = FigVideoCompositorSetDestinationPixelBufferColorProperties(*&pixelBufferOut.a, *v22, v21), a = pixelBufferOut.a, PixelBuffer) || (PixelBuffer = FigVideoCompositorSetDestinationPixelBufferGeometricProperties(*&pixelBufferOut.a, *v22), a = pixelBufferOut.a, PixelBuffer))
  {
    if (a != 0.0)
    {
      CFRelease(*&a);
    }
  }

  else
  {
    cf = *&pixelBufferOut.a;
    pixelBufferOut.a = 0.0;
  }

LABEL_43:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (PixelBuffer)
  {
    goto LABEL_8;
  }

  v304 = xmmword_196E75ED0;
  RenderDimensions = FigVideoCompositionInstructionGetBackgroundColorARGB(a8, &v304);
  if (RenderDimensions || (RenderDimensions = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(*v234, 0, &v283, 0), RenderDimensions))
  {
LABEL_261:
    PixelBuffer = RenderDimensions;
    goto LABEL_8;
  }

  theArray = v287;
  v39 = cf;
  *v273 = v283;
  *&v273[16] = v284;
  *&v273[32] = v285;
  memset(&dest, 0, sizeof(dest));
  v40 = CMBaseObjectGetDerivedStorage();
  v41 = CVPixelBufferGetPixelFormatType(v39);
  allocator = *v33;
  v42 = CVPixelFormatDescriptionCreateWithPixelFormatType(*v33, v41);
  if (!v42)
  {
LABEL_52:
    v45 = 8;
    v46 = 1;
    goto LABEL_54;
  }

  v43 = v42;
  if (!CFDictionaryGetValue(v42, *MEMORY[0x1E6966218]))
  {
    CFRelease(v43);
    goto LABEL_52;
  }

  UInt64 = FigCFNumberGetUInt64();
  CFRelease(v43);
  if (UInt64 <= 8)
  {
    goto LABEL_52;
  }

  v46 = 0;
  v45 = 16;
LABEL_54:
  if (*(v40 + 112) != v45)
  {
    via_releaseVImageBuffer(v40 + 56);
    *(v40 + 112) = v45;
  }

  if (*(v40 + 176) != v45)
  {
    via_releaseVImageBuffer(v40 + 120);
    *(v40 + 176) = v45;
  }

  v292 = v45;
  if (v46)
  {
    v47 = -1;
  }

  else
  {
    v47 = 0;
  }

  v293 = vbslq_s8(vdupq_n_s32(v47), xmmword_196E75EC0, xmmword_196E75EB0);
  v48 = MEMORY[0x1E6965F98];
  v49 = MEMORY[0x1E6965FD0];
  v269 = v40;
  buffer = v39;
  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    PixelBuffer = FigSignalErrorAtGM();
    goto LABEL_102;
  }

  via_releaseVImageBuffer(v40 + 120);
  v50 = CVPixelBufferGetPixelFormatType(v39);
  v51 = v39;
  v52 = *v48;
  v53 = CVBufferCopyAttachment(v39, *v48, 0);
  Width = CVPixelBufferGetWidth(v39);
  Height = CVPixelBufferGetHeight(v51);
  v61 = Height;
  if (*(v40 + 176) != 8)
  {
    goto LABEL_67;
  }

  Height = FigCFEqual();
  if (!Height)
  {
    Height = FigCFEqual();
    if (!Height)
    {
      if (v50 != 1111970369 && v50 != 32)
      {
        goto LABEL_67;
      }

LABEL_97:
      PixelBuffer = MEMORY[0x19A8D6C10](v40 + 120, v61, Width, (4 * *(v40 + 176)), 0);
      if (PixelBuffer)
      {
        goto LABEL_100;
      }

      goto LABEL_98;
    }
  }

  if (v50 == 32 || v50 == 846624121 || v50 == 875704422 || v50 == 875704438 || v50 == 1111970369 || v50 == 1714696752 || v50 == 2033463856)
  {
    goto LABEL_97;
  }

LABEL_67:
  v62 = *MEMORY[0x1E6965F30];
  v307.a = *MEMORY[0x1E6965D88];
  v307.b = v62;
  *&v307.c = v52;
  if (*(v40 + 176) == 16)
  {
    v63 = 1815491698;
  }

  else
  {
    v63 = 32;
  }

  v64 = OUTLINED_FUNCTION_5_27(Height, v56, v57, v63, v58, v40 + 152, v59, v60, v216, v218, v221, v225, v229, v232, v234, v236, v239, v242, allocator);
  v68 = CVPixelBufferCreate(v64, v65, v61, v66, 0, v67);
  if (v68)
  {
    goto LABEL_263;
  }

  for (j = 0; j != 24; j += 8)
  {
    v70 = *(&v307.a + j);
    v71 = CVBufferCopyAttachment(buffer, v70, 0);
    if (v71)
    {
      v72 = v71;
      CVBufferSetAttachment(*(v40 + 152), v70, v71, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v72);
    }
  }

  v68 = CVPixelBufferLockBaseAddress(*(v40 + 152), 0);
  if (v68)
  {
LABEL_263:
    PixelBuffer = v68;
    if (!v53)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  *(v40 + 160) = 1;
  BaseAddress = CVPixelBufferGetBaseAddress(*(v40 + 152));
  *(v40 + 128) = v61;
  *(v40 + 136) = Width;
  *(v40 + 120) = BaseAddress;
  *(v40 + 144) = CVPixelBufferGetBytesPerRow(*(v40 + 152));
LABEL_98:
  v68 = vifa_vImageFill(&v292, (v40 + 120), &v304);
  if (v68)
  {
    goto LABEL_263;
  }

  PixelBuffer = 0;
  v80 = *(v40 + 136);
  *&dest.data = *(v40 + 120);
  *&dest.width = v80;
LABEL_100:
  if (v53)
  {
LABEL_101:
    CFRelease(v53);
  }

LABEL_102:
  if (PixelBuffer)
  {
    via_releaseVImageBuffer(v40 + 120);
LABEL_220:
    via_releaseVImageBuffer(v269 + 120);
    goto LABEL_8;
  }

  Count = CFArrayGetCount(theArray);
  key = *v48;
  v240 = *v49;
  v237 = *MEMORY[0x1E6965FC8];
  v230 = *MEMORY[0x1E6965D00];
  v219 = *MEMORY[0x1E6965D30];
  v222 = *MEMORY[0x1E695E4C0];
  v226 = *MEMORY[0x1E6983DF0];
  v82 = *(v15 + 32);
  v83 = *(v15 + 40);
  while (1)
  {
    v84 = Count < 1;
    v85 = Count - 1;
    if (v84)
    {
      break;
    }

    v86 = CFArrayGetValueAtIndex(theArray, v85);
    v289 = *v273;
    v296 = 0u;
    v297 = 0u;
    memset(&srcTop, 0, sizeof(srcTop));
    v87 = CMBaseObjectGetDerivedStorage();
    v88 = FigVCLayerDefinitionGetSourcePixelBuffer(v86);
    v257 = v85;
    if (!v88)
    {
      PixelBuffer = 4294954792;
      goto LABEL_217;
    }

    v89 = v88;
    memset(&v307, 0, 40);
    v90 = CVPixelBufferGetPixelFormatType(v88);
    v267 = CVBufferCopyAttachment(v89, key, 0);
    v91 = via_releaseVImageBuffer(v87 + 56);
    v255 = v86;
    if (v91)
    {
      goto LABEL_212;
    }

    if (*(v87 + 112) != 8)
    {
      goto LABEL_112;
    }

    if (FigCFEqual() || FigCFEqual())
    {
      if (v90 != 32 && v90 != 846624121 && v90 != 875704422 && v90 != 875704438 && v90 != 1111970369 && v90 != 1714696752 && v90 != 2033463856)
      {
LABEL_112:
        v92 = CVPixelBufferGetWidth(v89);
        v93 = CVPixelBufferGetHeight(v89);
        if (*(v87 + 112) == 16)
        {
          v99 = 1815491698;
        }

        else
        {
          v99 = 32;
        }

        v100 = v93;
        v101 = OUTLINED_FUNCTION_5_27(v93, v94, v95, v99, v96, v87 + 88, v97, v98, v216, v219, v222, v226, v230, v232, v234, v237, v240, v242, allocator);
        v91 = CVPixelBufferCreate(v101, v102, v100, v103, 0, v104);
        if (!v91)
        {
          v91 = CVPixelBufferLockBaseAddress(*(v87 + 88), 0);
          if (!v91)
          {
            *(v87 + 96) = 1;
            *(v87 + 64) = v100;
            *(v87 + 72) = v92;
            *(v87 + 56) = CVPixelBufferGetBaseAddress(*(v87 + 88));
            BytesPerRow = CVPixelBufferGetBytesPerRow(*(v87 + 88));
            v113 = *(v87 + 104);
            *(v87 + 80) = BytesPerRow;
            if (v113)
            {
              goto LABEL_120;
            }

            v114 = OUTLINED_FUNCTION_5_27(BytesPerRow, v106, v107, v108, v109, v110, v111, v112, v216, v219, v222, v226, v230, v232, v234, v237, v240, v242, allocator);
            v91 = VTPixelTransferSessionCreate(v114, v115);
            if (!v91)
            {
              VTSessionSetProperty(*(v87 + 104), v226, v222);
LABEL_120:
              v91 = CVPixelBufferUnlockBaseAddress(*(v87 + 88), 0);
              if (!v91)
              {
                *(v87 + 96) = 0;
                v91 = VTPixelTransferSessionTransferImage(*(v87 + 104), v89, *(v87 + 88));
                if (!v91)
                {
                  v91 = CVPixelBufferLockBaseAddress(*(v87 + 88), 0);
                  if (!v91)
                  {
                    ColorSpaceFromAttachments = 0;
                    v117 = 0;
                    *(v87 + 96) = 1;
                    v118 = 0uLL;
LABEL_173:
                    PixelBuffer = 0;
                    v136 = *(v87 + 56);
                    v137 = *(v87 + 64);
                    v139 = *(v87 + 72);
                    v138 = *(v87 + 80);
                    if (!v117)
                    {
                      goto LABEL_175;
                    }

LABEL_174:
                    MEMORY[0x19A8D6C40](v117, 0);
                    v118 = 0uLL;
                    goto LABEL_175;
                  }
                }
              }
            }
          }
        }

LABEL_212:
        PixelBuffer = v91;
        v117 = 0;
        ColorSpaceFromAttachments = 0;
        goto LABEL_213;
      }
    }

    else if (v90 != 1111970369 && v90 != 32)
    {
      goto LABEL_112;
    }

    HIDWORD(v242) = FigVideoCompositorIsPixelBufferOpaque(v89);
    v125 = CVBufferCopyAttachments(v89, kCVAttachmentMode_ShouldPropagate);
    if (v125)
    {
      v126 = v125;
      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v125);
      CFRelease(v126);
    }

    else
    {
      ColorSpaceFromAttachments = 0;
    }

    v127 = CVPixelBufferGetPixelFormatType(v89);
    v128 = CVBufferCopyAttachment(v89, key, 0);
    v129 = CVBufferCopyAttachment(v89, v230, 0);
    if (FigCFEqual())
    {
      v132 = MEMORY[0x1E6958830];
      goto LABEL_158;
    }

    if (FigCFEqual())
    {
      v132 = MEMORY[0x1E6958838];
LABEL_158:
      v131 = *v132;
      if (!v129)
      {
LABEL_159:
        v129 = CFRetain(v219);
      }

LABEL_160:
      v117 = MEMORY[0x19A8D6C30](v127, v131, v129, ColorSpaceFromAttachments, 0);
      if (!v128)
      {
        goto LABEL_162;
      }

LABEL_161:
      CFRelease(v128);
      goto LABEL_162;
    }

    if (v127 == 32 || v127 == 1111970369)
    {
      v131 = 0;
      if (!v129)
      {
        goto LABEL_159;
      }

      goto LABEL_160;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM();
    v117 = 0;
    if (v128)
    {
      goto LABEL_161;
    }

LABEL_162:
    if (v129)
    {
      CFRelease(v129);
    }

    v133 = *(v87 + 112);
    if (HIDWORD(v242))
    {
      v134 = 6;
    }

    else
    {
      v134 = 4;
    }

    if (HIDWORD(v242))
    {
      v135 = 5;
    }

    else
    {
      v135 = 3;
    }

    *(&v307.c + 4) = 0.0;
    if (v133 != 8)
    {
      v134 = v135;
    }

    HIDWORD(v307.d) = 0;
    LODWORD(v307.a) = v133;
    HIDWORD(v307.a) = 4 * v133;
    *&v307.b = ColorSpaceFromAttachments;
    LODWORD(v307.c) = v134;
    v307.tx = 0.0;
    PixelBuffer = MEMORY[0x19A8D6C20](v87 + 56, &v307, v89, v117, 0, 0);
    v118 = 0uLL;
    if (!PixelBuffer)
    {
      goto LABEL_173;
    }

LABEL_213:
    via_releaseVImageBuffer(v87 + 56);
    v118 = 0uLL;
    v136 = 0.0;
    v137 = 0;
    v139 = 0.0;
    v138 = 0.0;
    if (v117)
    {
      goto LABEL_174;
    }

LABEL_175:
    if (ColorSpaceFromAttachments)
    {
      CFRelease(ColorSpaceFromAttachments);
      v118 = 0uLL;
    }

    v140 = v255;
    if (v267)
    {
      CFRelease(v267);
      v118 = 0uLL;
    }

    if (PixelBuffer)
    {
      goto LABEL_217;
    }

    v141 = *(v87 + 112);
    *&t1.a = v118;
    *&t1.c = v118;
    CroppedSourceCleanApertureRect = FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(v255, &t1);
    if (CroppedSourceCleanApertureRect || (pixelBufferOut.a = v136, *&pixelBufferOut.b = t1.b, pixelBufferOut.c = v139, pixelBufferOut.d = v138, v302.data = (*&v136 + *&v138 * t1.b), v302.height = t1.d, v302.width = t1.a, *&v302.rowBytes = v138, v299.data = v302.data + 4 * v141 / 8 * (t1.a + t1.c), v299.height = t1.d, v299.width = (*&v139 - (t1.a + t1.c)), *&v299.rowBytes = v138, v298.data = (*&v136 + *&v138 * (t1.b + t1.d)), v298.height = (v137 - (t1.b + t1.d)), *&v298.width = v139, *&v298.rowBytes = v138, *&v305.a = 0uLL, CroppedSourceCleanApertureRect = vifa_vImageFill(&v292, &pixelBufferOut, &v305), CroppedSourceCleanApertureRect) || (vifa_vImageFill(&v292, &v302, &v305), vifa_vImageFill(&v292, &v299, &v305), CroppedSourceCleanApertureRect = vifa_vImageFill(&v292, &v298, &v305), *&v296 = v136, *(&v296 + 1) = v137, *&v297 = v139, *(&v297 + 1) = v138, CroppedSourceCleanApertureRect) || (*&v305.a = v262, *&v305.c = v259, *&v305.tx = v248, CroppedSourceCleanApertureRect = FigVCLayerDefinitionGetAffineTransform(v255, &v305), CroppedSourceCleanApertureRect))
    {
      PixelBuffer = CroppedSourceCleanApertureRect;
LABEL_217:
      Count = v257;
      goto LABEL_206;
    }

    t1 = v305;
    pixelBufferOut = v289;
    CGAffineTransformConcat(&v307, &t1, &pixelBufferOut);
    v305 = v307;
    v143 = FigVCLayerDefinitionGetSourcePixelBuffer(v255);
    v144 = CVPixelBufferGetHeight(v143);
    v145 = dest.height;
    v146 = dest.height;
    memset(&v307, 0, sizeof(v307));
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    CGAffineTransformMakeTranslation(&pixelBufferOut, 0.0, v144);
    CGAffineTransformConcat(&v307, &t1, &pixelBufferOut);
    memset(&t1, 0, sizeof(t1));
    pixelBufferOut = v307;
    CGAffineTransformInvert(&t1, &pixelBufferOut);
    memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
    CGAffineTransformMakeTranslation(&pixelBufferOut, 0.0, v146 - v144);
    *&v299.data = v262;
    *&v299.width = v259;
    v300 = v82;
    v301 = v83;
    *&v298.data = *&v307.a;
    *&v298.width = *&v307.c;
    OUTLINED_FUNCTION_2_39(*&v307.tx);
    OUTLINED_FUNCTION_3_28();
    v298 = *&v305.a;
    OUTLINED_FUNCTION_2_39(*&v305.tx);
    OUTLINED_FUNCTION_3_28();
    *&v298.data = *&t1.a;
    *&v298.width = *&t1.c;
    OUTLINED_FUNCTION_2_39(*&t1.tx);
    OUTLINED_FUNCTION_3_28();
    *&v298.data = *&pixelBufferOut.a;
    *&v298.width = *&pixelBufferOut.c;
    OUTLINED_FUNCTION_2_39(*&pixelBufferOut.tx);
    v147 = MEMORY[0x19A8D6C10](&srcTop, v145, dest.width, (4 * v292), 0);
    PixelBuffer = v147;
    Count = v257;
    if (!v147)
    {
      v307.a = 0.0;
      v307.b = 0.0;
      v155 = OUTLINED_FUNCTION_4_31(v147, v148, v149, v150, v151, v152, v153, v154, v216, v219, v222, v226, v230, v232, v234, v237, v240, v242, allocator, theArray, v248, *(&v248 + 1), v251, key, v255, v257, v259, *(&v259 + 1), v262, *(&v262 + 1), v265, v267, v269, buffer, *v273, *&v273[8], *&v273[16], *&v273[24], *&v273[32], *&v273[40], v280, cf, v283, *(&v283 + 1), v284, *(&v284 + 1), v285, *(&v285 + 1), v286, v287, *&v288.width, *&v288.height, *&v289.a, *&v289.b, *&v289.c, *&v289.d, *&v289.tx, *&v289.ty, v290, v291, v292);
      v160 = vifa_vImageAffineWarpCG(v155, v156, v157, 0, v158, v159, 0x80u);
      if (v160)
      {
        v167 = v160;
        if (*(v87 + 40) < v160)
        {
          free(*(v87 + 48));
          v160 = malloc_type_malloc(v167, 0x963485DFuLL);
          if (v160)
          {
            v168 = v167;
          }

          else
          {
            v168 = 0;
          }

          *(v87 + 40) = v168;
          *(v87 + 48) = v160;
        }
      }

      v169 = OUTLINED_FUNCTION_4_31(v160, v161, v162, *(v87 + 48), v163, v164, v165, v166, v217, v220, v223, v227, v231, v233, v235, v238, v241, v243, allocatora, theArraya, v249, v250, v252, keya, v256, v258, v260, v261, v263, v264, v266, v268, v270, buffera, v274, v275, v276, v277, v278, v279, v281, cf, v283, *(&v283 + 1), v284, *(&v284 + 1), v285, *(&v285 + 1), v286, v287, *&v288.width, *&v288.height, *&v289.a, *&v289.b, *&v289.c, *&v289.d, *&v289.tx, *&v289.ty, v290, v291, v292);
      vifa_vImageAffineWarpCG(v169, v170, v171, v172, v173, v174, 0);
      LODWORD(t1.a) = 1065353216;
      FigVCLayerDefinitionGetOpacity(v140, &t1);
      if (v292 == 16)
      {
        v175 = srcTop.width;
        if (srcTop.width == dest.width)
        {
          v176 = srcTop.height;
          if (srcTop.height == dest.height)
          {
            if (srcTop.height)
            {
              v177 = 0;
              v178 = (*&t1.a * 65535.0);
              rowBytes = dest.rowBytes;
              data = srcTop.data;
              v181 = srcTop.rowBytes;
              v182 = dest.data;
              do
              {
                if (v175)
                {
                  v183 = 0;
                  v184 = v182;
                  v185 = data;
                  do
                  {
                    v186 = 0;
                    v187 = (-131071 - *(v185 + 3) * v178) >> 16;
                    do
                    {
                      *&v184[v186] = v187 * *&v184[v186] / 0xFFFF + *&v185[v186] * v178 / 0xFFFF;
                      v186 += 2;
                    }

                    while (v186 != 8);
                    v185 += 8;
                    v184 += 8;
                    ++v183;
                  }

                  while (v183 != v175);
                }

                data += v181;
                v182 += rowBytes;
                ++v177;
              }

              while (v177 != v176);
            }

            PixelBuffer = 0;
            goto LABEL_206;
          }
        }

LABEL_205:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_41();
        PixelBuffer = FigSignalErrorAtGM();
        goto LABEL_206;
      }

      if (v292 != 8)
      {
        goto LABEL_205;
      }

      PixelBuffer = vImagePremultipliedConstAlphaBlend_ARGB8888(&srcTop, (*&t1.a * 255.0), &dest, &dest, 0);
    }

LABEL_206:
    via_releaseVImageBuffer(v87 + 56);
    if (srcTop.data)
    {
      free(srcTop.data);
    }

    if (PixelBuffer)
    {
      goto LABEL_220;
    }
  }

  v188 = buffer;
  v189 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
  if (v189)
  {
    v191 = v189;
    Copy = CFDictionaryCreateCopy(allocator, v189);
    CFRelease(v191);
  }

  else
  {
    Copy = 0;
  }

  if (buffer)
  {
    v192 = CVPixelBufferGetPixelFormatType(buffer);
    v200 = CVBufferCopyAttachment(buffer, key, 0);
    v201 = *(v269 + 152);
    if (!v201)
    {
      if (FigCFEqual())
      {
        v208 = MEMORY[0x1E6958830];
      }

      else
      {
        if (!FigCFEqual())
        {
          if (v192 != 32 && v192 != 1111970369)
          {
            v215 = buffer;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_41();
            FigSignalErrorAtGM();
            goto LABEL_254;
          }

          v203 = 0;
LABEL_244:
          v215 = buffer;
          v209 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
          if (v209)
          {
            v211 = v209;
            v210 = CVImageBufferCreateColorSpaceFromAttachments(v209);
            CFRelease(v211);
          }

          else
          {
            v210 = 0;
          }

          v212 = MEMORY[0x19A8D6C30](v192, v203, v219, v210, 0);
          memset(&t1, 0, 24);
          v213 = *(v269 + 176);
          if (v213 == 8)
          {
            v214 = 4;
          }

          else
          {
            v214 = 3;
          }

          LODWORD(v307.a) = *(v269 + 176);
          HIDWORD(v307.a) = 4 * v213;
          *&v307.b = v210;
          LODWORD(v307.c) = v214;
          memset(&v307.c + 4, 0, 20);
          MEMORY[0x19A8D6C00](v269 + 120, &v307, buffer, v212, &t1, 0);
          if (v212)
          {
            MEMORY[0x19A8D6C40](v212);
          }

          if (v210)
          {
            CFRelease(v210);
          }

          goto LABEL_254;
        }

        v208 = MEMORY[0x1E6958838];
      }

      v203 = *v208;
      goto LABEL_244;
    }

    if (*(v269 + 160))
    {
      v215 = buffer;
      if (CVPixelBufferUnlockBaseAddress(v201, 0))
      {
        goto LABEL_254;
      }

      *(v269 + 160) = 0;
    }

    v205 = (v269 + 168);
    v204 = *(v269 + 168);
    if (!v204)
    {
      v215 = buffer;
      v206 = OUTLINED_FUNCTION_5_27(0, v193, v194, v195, v196, v197, v198, v199, v216, v219, v222, v226, v230, v232, v234, v237, v240, v242, allocator);
      if (VTPixelTransferSessionCreate(v206, v207))
      {
        goto LABEL_254;
      }

      VTSessionSetProperty(*v205, v228, v224);
      v204 = *v205;
    }

    v215 = buffer;
    VTPixelTransferSessionTransferImage(v204, *(v269 + 152), buffer);
LABEL_254:
    v188 = v215;
    if (v200)
    {
      CFRelease(v200);
    }

    if (!Copy)
    {
LABEL_257:
      via_releaseVImageBuffer(v269 + 120);
      goto LABEL_7;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM();
    if (!Copy)
    {
      goto LABEL_257;
    }
  }

  CVBufferSetAttachments(v188, Copy, kCVAttachmentMode_ShouldPropagate);
  via_releaseVImageBuffer(v269 + 120);
  CFRelease(Copy);
LABEL_7:
  (*(v234 + 24))(*(v234 + 32), a10, 0, cf, 0);
  PixelBuffer = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v287)
  {
    CFRelease(v287);
  }

  return PixelBuffer;
}

uint64_t FigVideoCompositorCreatevImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vivc_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vivc_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vivc_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vifa_vImageFill_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vifa_vImageFill_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vifa_vImageAffineWarpCG_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vifa_vImageAffineWarpCG_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void metadw_transitionToTerminalState(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    if (*(CMBaseObjectGetDerivedStorage() + 240))
    {
      OUTLINED_FUNCTION_303();

      FigSignalErrorAtGM();
    }

    else if (*(v5 + 256) <= 2u)
    {
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *(v5 + 248) = v6;
      if (dword_1EAF16DD8)
      {
        OUTLINED_FUNCTION_147();
        v7 = OUTLINED_FUNCTION_126();
        if (os_log_type_enabled(v7, type))
        {
          v8 = v16;
        }

        else
        {
          v8 = v16 & 0xFFFFFFFE;
        }

        if (v8)
        {
          if (a2)
          {
            CFErrorGetCode(a2);
          }

          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_61_5();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v5 + 256) = 4;
      metadw_cancelResourceRequestForMetadataItems(a1);
      v9 = CMBaseObjectGetDerivedStorage();
      v10 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v10)
      {
        v11 = v10;
        v12 = OUTLINED_FUNCTION_7_15();
        if (v12)
        {
          v13 = v12;
          *v12 = CFRetain(a1);
          v13[1] = v11;
          if (a2)
          {
            v14 = CFRetain(a2);
          }

          else
          {
            v14 = 0;
          }

          v13[2] = v14;
          dispatch_async_f(*(v9 + 136), v13, metadw_sendDownloadFailedCallbackOnCallbackQueue);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          if (FigSignalErrorAtGM())
          {
            CFRelease(v11);
          }
        }
      }
    }
  }
}

void metadw_invalidateOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_126();
    v1 = type;
    if (os_log_type_enabled(v4, type))
    {
      v5 = v43;
    }

    else
    {
      v5 = v43 & 0xFFFFFFFE;
    }

    if (v5)
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 240))
  {
    *(DerivedStorage + 240) = 1;
    FigRetainProxyInvalidate();
    metadw_cancelResourceRequestForMetadataItems(a1);
    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 8) = 0;
    }

    v7 = *(DerivedStorage + 16);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 16) = 0;
    }

    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 24) = 0;
    }

    v9 = *(DerivedStorage + 288);
    if (v9)
    {
      do
      {
        OUTLINED_FUNCTION_15_8();
        v10 = v9[2];
        if (v10)
        {
          CFRelease(v10);
        }

        v11 = v9[3];
        if (v11)
        {
          CFRelease(v11);
        }

        free(v9);
        v9 = v1;
      }

      while (v1);
    }

    v12 = *(DerivedStorage + 32);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 32) = 0;
    }

    v13 = *(DerivedStorage + 136);
    if (v13)
    {
      dispatch_release(v13);
      *(DerivedStorage + 136) = 0;
    }

    v14 = *(DerivedStorage + 168);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 168) = 0;
    }

    v15 = *(DerivedStorage + 176);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 176) = 0;
    }

    v16 = *(DerivedStorage + 184);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 184) = 0;
    }

    v17 = *(DerivedStorage + 192);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 192) = 0;
    }

    v18 = *(DerivedStorage + 200);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 200) = 0;
    }

    v19 = *(DerivedStorage + 208);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 208) = 0;
    }

    v20 = *(DerivedStorage + 224);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 224) = 0;
    }

    v21 = *(DerivedStorage + 280);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 280) = 0;
    }

    v22 = *(DerivedStorage + 320);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 320) = 0;
    }

    v23 = *(DerivedStorage + 328);
    if (v23)
    {
      CFRelease(v23);
      *(DerivedStorage + 328) = 0;
    }

    v24 = *(DerivedStorage + 264);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 264) = 0;
    }

    v25 = *(DerivedStorage + 384);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 384) = 0;
    }

    v26 = *(DerivedStorage + 392);
    if (v26)
    {
      CFRelease(v26);
      *(DerivedStorage + 392) = 0;
    }

    v27 = *(DerivedStorage + 304);
    if (v27)
    {
      do
      {
        OUTLINED_FUNCTION_15_8();
        v28 = v27[3];
        if (v28)
        {
          CFRelease(v28);
          v27[3] = 0;
        }

        v29 = v27[4];
        if (v29)
        {
          CFRelease(v29);
          v27[4] = 0;
        }

        v30 = v27[6];
        if (v30)
        {
          CFRelease(v30);
          v27[6] = 0;
        }

        v31 = v27[7];
        if (v31)
        {
          CFRelease(v31);
          v27[7] = 0;
        }

        v32 = v27[8];
        if (v32)
        {
          CFRelease(v32);
          v27[8] = 0;
        }

        v33 = v27[11];
        if (v33)
        {
          CFRelease(v33);
          v27[11] = 0;
        }

        v34 = v27[14];
        if (v34)
        {
          CFRelease(v34);
          v27[14] = 0;
        }

        v35 = v27[15];
        if (v35)
        {
          CFRelease(v35);
          v27[15] = 0;
        }

        v36 = v27[16];
        if (v36)
        {
          CFRelease(v36);
        }

        free(v27);
        v27 = v1;
      }

      while (v1);
    }

    v37 = *(DerivedStorage + 336);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 336) = 0;
    }

    v38 = *(DerivedStorage + 344);
    if (v38)
    {
      CFRelease(v38);
      *(DerivedStorage + 344) = 0;
    }

    v39 = *(DerivedStorage + 408);
    if (v39)
    {
      CFRelease(v39);
      *(DerivedStorage + 408) = 0;
    }

    v40 = *(DerivedStorage + 416);
    if (v40)
    {
      CFRelease(v40);
      *(DerivedStorage + 416) = 0;
    }

    v41 = *(DerivedStorage + 248);
    if (v41)
    {
      CFRelease(v41);
      *(DerivedStorage + 248) = 0;
    }
  }
}

uint64_t metadw_setPropertyDispatch(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    goto LABEL_28;
  }

  if (!FigCFEqual())
  {
    if (CFEqual(@"AssetDownloaderProperty_ProgressMonitor", v3))
    {
      v10 = CFGetTypeID(v2);
      if (v10 != FigStreamingAssetDownloadProgressMonitorGetTypeID())
      {
        goto LABEL_28;
      }

      v7 = DerivedStorage[33];
      DerivedStorage[33] = v2;
      if (v2)
      {
        goto LABEL_14;
      }
    }

    else if (FigCFEqual())
    {
      v11 = CFGetTypeID(v2);
      if (v11 != FigReportingAgentGetTypeID())
      {
        goto LABEL_28;
      }

      v7 = DerivedStorage[52];
      DerivedStorage[52] = v2;
      if (v2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!CFEqual(@"AssetDownloaderProperty_MetricEventTimeline", v3))
      {
        result = 4294954512;
        goto LABEL_18;
      }

      v12 = CFGetTypeID(v2);
      if (v12 != FigMetricEventTimelineGetTypeID())
      {
LABEL_28:
        OUTLINED_FUNCTION_239();
        result = FigSignalErrorAtGM();
        goto LABEL_18;
      }

      v7 = DerivedStorage[51];
      DerivedStorage[51] = v2;
      if (v2)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_17;
  }

  v5 = CFGetTypeID(v2);
  if (v5 != FigStreamingCacheGetTypeID())
  {
    goto LABEL_28;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(v6 + 24);
  if (v7 == v2)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v8 = v6;
  if (!v2 || !v7)
  {
    *(v6 + 24) = v2;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  result = FigStreamingCacheTransferData(*(v6 + 24), v2);
  if (!result)
  {
    v7 = *(v8 + 24);
    *(v8 + 24) = v2;
LABEL_14:
    CFRetain(v2);
    goto LABEL_15;
  }

LABEL_18:
  *(a1 + 32) = result;
  return result;
}

void metadw_startDispatch(const void **a1)
{
  v1 = a1;
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    LODWORD(v56) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v5))
    {
      v6 = *(DerivedStorage + 152);
      *v58 = 136315650;
      *&v58[4] = "metadw_startOnQueue";
      v59 = 2048;
      v60 = v2;
      v61 = 2114;
      v62 = v6;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    OUTLINED_FUNCTION_239();
    v43 = FigSignalErrorAtGM();
    if (!v43)
    {
      goto LABEL_61;
    }

LABEL_59:
    metadw_transitionToTerminalStateWithOSStatus(*v1, v43);
    goto LABEL_61;
  }

  v7 = *(DerivedStorage + 256);
  if (v7 > 2 || v7 == 1)
  {
    goto LABEL_61;
  }

  *(DerivedStorage + 256) = 1;
  v9 = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  *type = 0;
  if (v9[38])
  {
    v43 = 0;
    goto LABEL_50;
  }

  v10 = v9;
  v11 = v9[1];
  CMBaseObject = FigAssetGetCMBaseObject(v9[2]);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_49;
  }

  DoesNotExistAndAddToQueue = v13(CMBaseObject, @"assetProperty_OriginalNetworkContentURL", v11, type);
  if (DoesNotExistAndAddToQueue)
  {
LABEL_65:
    v43 = DoesNotExistAndAddToQueue;
    goto LABEL_50;
  }

  v15 = v10[1];
  v16 = FigAssetGetCMBaseObject(v10[2]);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
LABEL_49:
    v43 = 4294954514;
    goto LABEL_50;
  }

  DoesNotExistAndAddToQueue = v17(v16, @"assetProperty_CreationOptionsDictionary", v15, &v54);
  if (DoesNotExistAndAddToQueue)
  {
    goto LABEL_65;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v18 = v10[36];
  if (!v18)
  {
    *(v10 + 217) = 1;
    OUTLINED_FUNCTION_27_4();
    DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v46, v47, v48, v49, v50, v51, v52, 0);
    goto LABEL_65;
  }

  v53 = v1;
  while (2)
  {
    cf[0] = 0;
    *v58 = 0;
    v56 = 0;
    if (*type)
    {
      OUTLINED_FUNCTION_27_4();
      DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v19, v20, v21, v22, v23, v24, v25, 0);
      if (DoesNotExistAndAddToQueue)
      {
        goto LABEL_65;
      }
    }

    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(*(v18 + 16));
    URLForCacheLookup = FigAlternateGetURLForCacheLookup(*(v18 + 16));
    StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(*(v18 + 16));
    DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v2, v18, 2, PlaylistAlternateURL, URLForCacheLookup, 0, StableStreamIdentifier, 0);
    if (DoesNotExistAndAddToQueue)
    {
      goto LABEL_65;
    }

    Count = CFArrayGetCount(*(v18 + 24));
    if (Count <= 0)
    {
      v1 = v53;
      goto LABEL_47;
    }

    v30 = Count;
    v31 = 0;
    v57 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v18 + 24), v31);
      Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
      v34 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
      if (Value)
      {
        v35 = v34;
        if (FigCFStringGetOSTypeValue())
        {
          break;
        }
      }

      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM();
LABEL_35:
      if (v30 == ++v31)
      {
        v43 = 0;
        goto LABEL_42;
      }
    }

    if (v57 == 1668047728)
    {
      goto LABEL_35;
    }

    if (!v35)
    {
      goto LABEL_35;
    }

    FigAlternateGetRenditionInfoForMediaType(*(v18 + 16), v57, v35, v35, v35, 0, &v56, cf, v58);
    if (!cf[0] || !*v58)
    {
      goto LABEL_35;
    }

    CFRetain(cf[0]);
    switch(v57)
    {
      case 1935832172:
        v36 = OUTLINED_FUNCTION_4_32();
        v41 = 4;
        break;
      case 1936684398:
        v36 = OUTLINED_FUNCTION_4_32();
        v41 = 3;
        break;
      case 1986618469:
        v36 = OUTLINED_FUNCTION_4_32();
        v41 = 2;
        break;
      default:
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM();
        goto LABEL_32;
    }

    v42 = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v36, v37, v41, v38, v39, v35, v40, 0);
    if (!v42)
    {
LABEL_32:
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      goto LABEL_35;
    }

    v43 = v42;
LABEL_42:
    v1 = v53;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v43)
    {
LABEL_47:
      v43 = 0;
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_50:
  if (v54)
  {
    CFRelease(v54);
  }

  if (*type)
  {
    CFRelease(*type);
  }

  if (v43)
  {
    goto LABEL_59;
  }

  v44 = (CMBaseObjectGetDerivedStorage() + 304);
  while (1)
  {
    v44 = *v44;
    if (!v44)
    {
      break;
    }

    ResourceRequestForMetadataItem = metadw_createResourceRequestForMetadataItem(v2, v44);
    if (ResourceRequestForMetadataItem)
    {
      v43 = ResourceRequestForMetadataItem;
      metadw_transitionToTerminalStateWithOSStatus(v2, ResourceRequestForMetadataItem);
      goto LABEL_59;
    }
  }

  metadw_checkIfDownloadIsComplete(v2);
LABEL_61:
  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v1);
}

uint64_t metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(uint64_t a1, uint64_t a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  if (CFSetContainsValue(*(DerivedStorage + 320), a5))
  {
    return 0;
  }

  result = metadw_createMetadataDownloadItem(a2, a3, a4, a5, a6, a7, 0, &v20);
  if (result)
  {
    return result;
  }

  v18 = v20;
  v19 = *(DerivedStorage + 312);
  *v20 = 0;
  *(v18 + 8) = v19;
  *v19 = v18;
  *(DerivedStorage + 312) = v18;
  CFSetAddValue(*(DerivedStorage + 320), a5);
  if (!a8)
  {
    return 0;
  }

  return metadw_createResourceRequestForMetadataItem(a1, v18);
}

uint64_t metadw_createResourceRequestForMetadataItem(uint64_t a1, uint64_t a2)
{
  v109 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v97[0] = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(v5 + 168))
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_34;
  }

  v8 = v5;
  FigAssetGetCMBaseObject(*(v5 + 16));
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v9 = OUTLINED_FUNCTION_16_8();
    v11 = v10(v9);
    if (v11)
    {
      v6 = v11;
      v7 = 0;
      goto LABEL_32;
    }

    v7 = FigHTTPSchedulerRetain(*v8);
    v12 = *(v8 + 168);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v13)
    {
      v6 = 4294954514;
      goto LABEL_32;
    }

    v14 = v13(v12, v7, 0, v8 + 280);
    if (v14)
    {
      goto LABEL_119;
    }

    FigAssetGetCMBaseObject(*(v8 + 16));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v15 = OUTLINED_FUNCTION_16_8();
      v14 = v16(v15);
      if (v14)
      {
        goto LABEL_119;
      }

      FigAssetGetCMBaseObject(*(v8 + 16));
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v17 = OUTLINED_FUNCTION_16_8();
        v14 = v18(v17);
        if (v14)
        {
          goto LABEL_119;
        }

        v14 = FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(*(v8 + 8), v97[0], &cf);
        if (v14)
        {
          goto LABEL_119;
        }

        v14 = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(*(v8 + 8), v97[0], *(v8 + 224), (v8 + 200));
        if (v14)
        {
          goto LABEL_119;
        }

        DictionaryValue = FigCFDictionaryGetDictionaryValue();
        if (DictionaryValue)
        {
          DictionaryValue = CFRetain(DictionaryValue);
        }

        *(v8 + 208) = DictionaryValue;
        FigAssetGetCMBaseObject(*(v8 + 16));
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v20 = OUTLINED_FUNCTION_16_8();
          v14 = v21(v20);
          if (v14)
          {
            goto LABEL_119;
          }

          FigAssetGetCMBaseObject(*(v8 + 16));
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v22 = OUTLINED_FUNCTION_16_8();
            v14 = v23(v22);
            if (!v14)
            {
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              v24 = *(v8 + 192);
              v25 = cf;
              *(v8 + 192) = cf;
              if (v25)
              {
                CFRetain(v25);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              FigAssetGetCMBaseObject(*(v8 + 16));
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v26 = OUTLINED_FUNCTION_16_8();
                v6 = v27(v26);
                if (!v6 && dword_1EAF16DD8)
                {
                  LODWORD(v96) = 0;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v28 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  if (OUTLINED_FUNCTION_16_1(v28))
                  {
                    LODWORD(v99) = 136315906;
                    OUTLINED_FUNCTION_5_28();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_238_0();
                  v6 = 0;
                }

                goto LABEL_32;
              }

              goto LABEL_29;
            }

LABEL_119:
            v6 = v14;
            goto LABEL_32;
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_29:
  v6 = 4294954514;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_34:
  FigHTTPSchedulerRelease(v7);
  if (v97[0])
  {
    CFRelease(v97[0]);
  }

  if (v6)
  {
    return v6;
  }

  v29 = CMBaseObjectGetDerivedStorage();
  v100[0] = 0;
  v99 = 0;
  if (*(a2 + 136))
  {
    goto LABEL_38;
  }

  v32 = v29;
  v33 = *(a2 + 16);
  if ((v33 - 2) < 3)
  {
    v34 = OUTLINED_FUNCTION_235();
    if (metadw_createCacheForStream(v34, v35, v36) || !v99)
    {
      v38 = v100[0];
LABEL_62:
      if (v38)
      {
        CFRelease(v38);
      }

      v33 = *(a2 + 16);
      goto LABEL_65;
    }

    v37 = FigStreamingCacheMediaStreamCopyPlaylist(*(v32 + 24), v99, v100, 0);
LABEL_59:
    v50 = v37;
    v38 = v100[0];
    if (!v50 && v100[0])
    {
      *(a2 + 112) = v100[0];
LABEL_38:
      v30 = *(a2 + 16);
      if ((v30 - 1) >= 4)
      {
        if (v30 != 6)
        {
          return 0;
        }

        return metadw_parseJSONDataIntoAssetList(a1, *(a2 + 112));
      }

      if ((v30 - 2) > 2)
      {
        OUTLINED_FUNCTION_24_5();
      }

      OUTLINED_FUNCTION_26_7();
      CustomURLRequest = metadw_publishMediaResourceRequestEvent(a1, v39, v40, 0, v41, v42, 1, 0, v93);
      if (CustomURLRequest)
      {
        return CustomURLRequest;
      }

      CMBaseObjectGetDerivedStorage();
      v44 = OUTLINED_FUNCTION_235();
      v6 = metadw_processPlaylistCommon(v44, v45);
      if (!v6 && dword_1EAF16DD8)
      {
        LODWORD(v97[0]) = 0;
        LOBYTE(cf) = 0;
        v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v47 = os_log_type_enabled(v46, cf);
        if (OUTLINED_FUNCTION_115_1(v47))
        {
          LODWORD(v99) = 136315906;
          OUTLINED_FUNCTION_5_28();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
        return 0;
      }

      return v6;
    }

    goto LABEL_62;
  }

  if (v33 == 6)
  {
    v48 = *(v29 + 24);
    v49 = CFURLGetString(*(a2 + 24));
    v37 = FigStreamingCacheCopyInterstitialAssetList(v48, v49, v100);
    goto LABEL_59;
  }

  if (v33 == 1)
  {
    v37 = FigStreamingCacheCopyMasterPlaylist(*(v29 + 24), v100, 0);
    goto LABEL_59;
  }

LABEL_65:
  if (v33 == 5 && PKDIsContentKeyBossEnabled())
  {
    v51 = CMBaseObjectGetDerivedStorage();
    v96 = 0;
    v97[0] = 1;
    v97[1] = metadw_contentKeyRequestDidSucceed;
    v97[2] = metadw_contentKeyRequestDidFail;
    v97[3] = metadw_contentKeyRequestDidUpdateContentKeyBossToNewBoss;
    cf = 0;
    if (*(v51 + 384))
    {
      v52 = v51;
      FigContentKeySpecifierGetKeySystem(*(a2 + 64));
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v54 = Mutable;
        CFDictionarySetValue(Mutable, @"kCKRPCO_AssociatedObjectID", *(v52 + 224));
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_27_4();
        v62 = FigContentKeyRequestParamsCreate(v55, v56, v57, v58, v59, v60, v61, 0, 0, 1, v54, &v96);
        if (v62)
        {
          v6 = v62;
        }

        else
        {
          v63 = *(v52 + 384);
          v64 = v96;
          v65 = *(v52 + 192);
          v66 = *(v52 + 200);
          v67 = *v52;
          v68 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v68)
          {
            v6 = v68(v63, v64, 1, 1, v65, v66, v97, a1, v67, &cf);
            if (!v6 && dword_1EAF16DD8)
            {
              v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v6 = 0;
            }
          }

          else
          {
            v6 = 4294954514;
          }
        }

        CFRelease(v54);
        if (v96)
        {
          CFRelease(v96);
        }

        if (v6)
        {
          return v6;
        }
      }

      else
      {
        v6 = FigSignalErrorAtGM();
        if (v6)
        {
          return v6;
        }
      }
    }

    v78 = *(a2 + 88);
    v79 = *(a2 + 24);
    v80 = *(a2 + 16) - 2;
    if (v80 > 2)
    {
      OUTLINED_FUNCTION_24_5();
    }

    else
    {
      v81 = *&aEdivnuosltbs[4 * v80];
    }

    v6 = metadw_publishMediaResourceRequestEvent(a1, v78, v79, 0, v81, 0, 0, *(a2 + 64), 0);
    if (!v6)
    {
      ++*(DerivedStorage + 368);
    }

    return v6;
  }

  if (*(a2 + 96) || *(a2 + 104))
  {
    return 0;
  }

  v70 = OUTLINED_FUNCTION_235();
  if (metadw_shouldRequestBeSentOverHTTP(v70, v71))
  {
    v72 = CMBaseObjectGetDerivedStorage();
    v97[0] = 0;
    LODWORD(cf) = 0;
    if (*(a2 + 88) || *(a2 + 96))
    {
      CustomURLRequest = FigSignalErrorAtGM();
      if (CustomURLRequest)
      {
        return CustomURLRequest;
      }
    }

    else
    {
      v73 = v72;
      v74 = *(a2 + 16);
      if (v74 == 6)
      {
        v75 = 5;
      }

      else
      {
        v75 = 7;
      }

      if (*(v72 + 144))
      {
        v75 |= 0x800u;
      }

      if (*(v72 + 145))
      {
        v75 |= 0x1000u;
      }

      v76 = v74 - 1;
      v95 = v75;
      if (v76 > 5)
      {
        v77 = 0;
      }

      else
      {
        v77 = dword_196E75F38[v76];
      }

      if (dword_1EAF16DD8)
      {
        LODWORD(v96) = 0;
        v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v83 = *(v73 + 280);
      v84 = *(v73 + 8);
      v85 = *(a2 + 24);
      v87 = *(v73 + 192);
      v86 = *(v73 + 200);
      v88 = *(v73 + 232);
      v89 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v89)
      {
        return 4294954514;
      }

      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      *v100 = 0u;
      v104 = 0;
      v105 = v77;
      v106 = 0u;
      v107 = 0u;
      v108 = 0;
      CustomURLRequest = v89(v83, v84, 0, v85, 0, v86, v87, v95, v100, 0, 0, 0, metadw_httpReadCallback, v88, v97, &cf);
      if (CustomURLRequest)
      {
        return CustomURLRequest;
      }

      *(a2 + 88) = v97[0];
      v90 = cf;
      *(a2 + 96) = cf;
      CFDictionaryAddValue(*(v73 + 336), v90, a2);
    }
  }

  else
  {
    v91 = OUTLINED_FUNCTION_235();
    CustomURLRequest = metadw_createCustomURLRequest(v91, v92);
    if (CustomURLRequest)
    {
      return CustomURLRequest;
    }
  }

  if (*(a2 + 96) || *(a2 + 104))
  {
    ++*(DerivedStorage + 352);
  }

  v6 = 0;
  *(a2 + 144) = FigGetUpTimeNanoseconds();
  return v6;
}

uint64_t metadw_publishMediaResourceRequestEvent(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5, char a6, char a7, const void *a8, char a9)
{
  v48 = 0;
  v49 = 0;
  v46 = 0.0;
  cf = 0;
  v44 = 0.0;
  v45 = 0.0;
  theData = 0;
  v43 = 0.0;
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  if (!a2)
  {
    v28 = 0;
    goto LABEL_16;
  }

  v40 = DerivedStorage;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(a2, @"FHRP_CFNetworkTimingData", AllocatorForMedia, &cf);
    if (cf)
    {
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
    }
  }

  v20 = a4;
  v21 = FigGetAllocatorForMedia();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v22)
  {
    v23 = a6;
    v24 = a7;
    goto LABEL_10;
  }

  v23 = a6;
  v24 = a7;
  v22(a2, @"FHRP_RemoteIPAddress", v21, &theData);
  if (!theData)
  {
LABEL_10:
    v25 = a8;
    v28 = 0;
    goto LABEL_11;
  }

  v25 = a8;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v28 = FigCFHTTPCreateAddressStringFromSockaddr(BytePtr, Length);
LABEL_11:
  v29 = FigGetAllocatorForMedia();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(a2, @"FHRP_CFNetworkTransactionMetrics", v29, &v41);
  }

  v31 = FigGetAllocatorForMedia();
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v32)
  {
    v32(a2, 0x1F0B5D218, v31, &v48);
  }

  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  a8 = v25;
  a7 = v24;
  a6 = v23;
  a4 = v20;
  v17 = v40;
LABEL_16:
  v33 = FigGetAllocatorForMedia();
  if (a9)
  {
    v34 = FigMetricHLSPlaylistRequestEventCreate(v33, a3, v28, 0, 0, a7, a4, v41, v46, v45, v44, v43, a5, a6, &v49);
    if (v34)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v34 = FigMetricContentKeyRequestEventCreate(v33, a3, v28, 0, 0, 0, a4, v41, v46, v45, v44, v43, a5, 0, a8, &v49);
    if (v34)
    {
LABEL_22:
      v38 = v34;
      goto LABEL_24;
    }
  }

  v35 = *(v17 + 408);
  v36 = v49;
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v37)
  {
    v34 = v37(v35, 0, v36);
    goto LABEL_22;
  }

  v38 = 4294954514;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v38;
}

uint64_t metadw_createCustomURLRequest(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  cf = 0;
  if (!a2 || !*(a2 + 24) || (v5 = DerivedStorage, !*(DerivedStorage + 184)) || !*(DerivedStorage + 176) || *(a2 + 104))
  {
    OUTLINED_FUNCTION_376();
    Mutable = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable)
  {
LABEL_26:
    v8 = Mutable;
    v7 = 0;
    goto LABEL_20;
  }

  v7 = FigCFHTTPCreateUserAgent();
  v8 = FigCustomURLRequestInfoSetUserAgent();
  if (!v8)
  {
    v9 = *(a2 + 16);
    if (v9 <= 6 && ((1 << v9) & 0x5E) != 0)
    {
      v10 = FigCustomURLRequestInfoSetAcceptEncoding();
      if (v10)
      {
        v8 = v10;
      }

      else
      {
        if (dword_1EAF16DD8)
        {
          OUTLINED_FUNCTION_147();
          v11 = OUTLINED_FUNCTION_126();
          v19 = OUTLINED_FUNCTION_34_5(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, SBYTE2(v32), BYTE3(v32), SHIDWORD(v32));
          if (OUTLINED_FUNCTION_16_1(v19))
          {
            v20 = *(v5 + 152);
            v21 = *(a2 + 16);
            v22 = *(a2 + 24);
            v35 = 136316162;
            v36 = "metadw_createCustomURLRequest";
            v37 = 2048;
            v38 = a1;
            v39 = 2114;
            v40 = v20;
            v41 = 1024;
            v42 = v21;
            v43 = 2112;
            v44 = v22;
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_61_5();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0();
        }

        v23 = *(v5 + 184);
        v24 = *(v5 + 232);
        v25 = *v5;
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v26)
        {
          v8 = v26(v23, cf, v24, v25, metadw_customURLReadCallback, &key);
          if (!v8)
          {
            v27 = key;
            if (key)
            {
              *(a2 + 104) = key;
              CFDictionaryAddValue(*(v5 + 344), v27, a2);
              v8 = 0;
            }
          }
        }

        else
        {
          v8 = 4294954514;
        }
      }
    }
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t metadw_processPlaylistCommon(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a2 + 112);
  v6 = CMBaseObjectGetDerivedStorage();
  v68 = 0;
  v69.value = 0;
  cf = 0;
  v67 = 0;
  ParamsAsDict = FigCFHTTPCopyQueryParamsAsDict(*(a2 + 24), &cf);
  if (ParamsAsDict)
  {
LABEL_94:
    DoesNotExistAndAddToQueue = ParamsAsDict;
    goto LABEL_95;
  }

  DoesNotExistAndAddToQueue = FigStreamPlaylistParse(v5, 0, 0, &v68, 0, 0, 1, *(v6 + 218), 0, 0, *(v6 + 392), cf, &v69.value, &v67);
  if (*(a2 + 16) == 1)
  {
    v9 = *(v6 + 392);
    if (v69.value)
    {
      PlaylistVariables = FigMultivariantPlaylistGetPlaylistVariables(v69.value);
      *(v6 + 392) = PlaylistVariables;
      if (PlaylistVariables)
      {
        CFRetain(PlaylistVariables);
      }

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(v6 + 392) = 0;
      if (v9)
      {
LABEL_7:
        CFRelease(v9);
      }
    }
  }

  if (!DoesNotExistAndAddToQueue)
  {
    if (*(a2 + 16) == 1 || v67 && FigMediaPlaylistHasEndTag(v67))
    {
      DoesNotExistAndAddToQueue = 0;
      value = v69.value;
      v63 = v67;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_239();
    ParamsAsDict = FigSignalErrorAtGM();
    goto LABEL_94;
  }

LABEL_95:
  value = 0;
  v63 = 0;
LABEL_13:
  v60 = value;
  if (cf)
  {
    CFRelease(cf);
  }

  if (DoesNotExistAndAddToQueue)
  {
    goto LABEL_88;
  }

  v12 = v60;
  if (!v60 || (v13 = FigMultivariantPlaylistGetContentKeySpecifiers(v60), v14 = metadw_processCryptKeysFromPlaylist(a1, a2, v13), !v14))
  {
    v15 = v63;
    if (v63 && (ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(v63), v17 = metadw_processCryptKeysFromPlaylist(a1, a2, ContentKeySpecifiers), v17))
    {
LABEL_99:
      DoesNotExistAndAddToQueue = v17;
    }

    else
    {
      v18 = CMBaseObjectGetDerivedStorage();
      if (v63 && !*(v18 + 217))
      {
        v19 = 0;
        v20 = 0;
        for (i = 0; ; ++i)
        {
          MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v15);
          if (MediaSegmentSpecifiers)
          {
            MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
          }

          if (i >= MediaSegmentSpecifiers)
          {
            v38 = *(*(a2 + 40) + 24);
            CMTimeMake(&v69, v20, 1);
            v39 = OUTLINED_FUNCTION_198_0();
            v15 = v63;
            FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload(v39, v40, v38, v41, v19, v42);
            goto LABEL_49;
          }

          v23 = FigMediaPlaylistGetMediaSegmentSpecifiers(v15);
          ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
          if (FigMediaSegmentSpecifierGetBytesToRead(ValueAtIndex))
          {
            v19 += FigMediaSegmentSpecifierGetBytesToRead(ValueAtIndex);
            goto LABEL_47;
          }

          v25 = *(a2 + 16);
          if (v25 == 4)
          {
            v27 = v19 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) * 30.0;
LABEL_39:
            v19 = v27;
            goto LABEL_47;
          }

          if (v25 == 3)
          {
            break;
          }

          if (v25 == 2)
          {
            v26 = (FigAlternateGetAverageBitRate(*(*(a2 + 40) + 16)) * 0.95);
            if (!v26)
            {
              v26 = (FigAlternateGetPeakBitRate(*(*(a2 + 40) + 16)) * 0.7);
            }

            v27 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) * v26 * 0.125 + v19;
            goto LABEL_39;
          }

LABEL_47:
          v20 = (FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) + v20);
        }

        HasLosslessAudio = FigAlternateHasLosslessAudio(*(*(a2 + 40) + 16));
        v29 = *(a2 + 48);
        v30 = *(*(a2 + 40) + 16);
        if (HasLosslessAudio)
        {
          AudioSampleRate = FigAlternateGetAudioSampleRate(v30, v29);
          AudioBitDepth = FigAlternateGetAudioBitDepth(*(*(a2 + 40) + 16), *(a2 + 48));
          if (AudioSampleRate && AudioBitDepth)
          {
            v33 = v19 + ((AudioSampleRate * AudioBitDepth) * 0.125) * FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
LABEL_46:
            v19 = v33;
            v15 = v63;
            goto LABEL_47;
          }

          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          v36 = v19;
          v37 = 131072.0;
        }

        else
        {
          AudioChannelCount = FigAlternateGetAudioChannelCount(v30, v29, 0);
          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          v36 = v19;
          if (AudioChannelCount >= 3)
          {
            v33 = v36 + TimeInSeconds * 52428.8008;
            goto LABEL_46;
          }

          v37 = 16384.0;
        }

        v33 = v36 + TimeInSeconds * v37;
        goto LABEL_46;
      }

LABEL_49:
      DoesNotExistAndAddToQueue = 0;
      if (*(DerivedStorage + 160) && v15)
      {
        CMBaseObjectGetDerivedStorage();
        DateEntryArray = FigMediaPlaylistGetDateEntryArray(v63);
        v44 = 0;
        v61 = DateEntryArray;
        allocator = *MEMORY[0x1E695E480];
        v64 = a1;
        if (!DateEntryArray)
        {
          goto LABEL_53;
        }

LABEL_52:
        for (j = CFArrayGetCount(DateEntryArray); ; j = 0)
        {
          if (v44 >= j)
          {
            DoesNotExistAndAddToQueue = 0;
            goto LABEL_88;
          }

          v46 = CFArrayGetValueAtIndex(DateEntryArray, v44);
          TypeID = CFDictionaryGetTypeID();
          if (TypeID != CFGetTypeID(v46))
          {
            OUTLINED_FUNCTION_2_40();
            v17 = FigSignalErrorAtGM();
            goto LABEL_99;
          }

          v65 = v44;
          v48 = CMBaseObjectGetDerivedStorage();
          CFDictionaryGetValue(v46, @"TaggedRangeMetadataKey_Class");
          if (FigCFEqual())
          {
            v49 = CFDictionaryGetValue(v46, @"TaggedRangeMetadataKey_MetadataArray");
            if (v49)
            {
              break;
            }
          }

LABEL_81:
          v44 = v65 + 1;
          if (DateEntryArray)
          {
            goto LABEL_52;
          }

LABEL_53:
          ;
        }

        v50 = v49;
        if (CFArrayGetCount(v49) < 1)
        {
          v52 = 0;
          v53 = 0;
LABEL_72:
          if (v53 | v52)
          {
            if (*(v48 + 400) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(v48 + 400) = Mutable) != 0))
            {
              if (v53)
              {
                v57 = CFURLCreateWithString(allocator, v53, 0);
                metadw_appendUniqueInterstitialURL(v64, v57);
                DoesNotExistAndAddToQueue = 0;
                if (!v57)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                if (!v52)
                {
                  goto LABEL_81;
                }

                v57 = CFURLCreateWithString(allocator, v52, 0);
                OUTLINED_FUNCTION_27_4();
                DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue();
                if (!v57)
                {
                  goto LABEL_78;
                }
              }

              CFRelease(v57);
LABEL_78:
              if (DoesNotExistAndAddToQueue)
              {
                goto LABEL_88;
              }

              goto LABEL_81;
            }
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          do
          {
            v54 = CFArrayGetValueAtIndex(v50, v51);
            CFDictionaryGetValue(v54, @"key");
            if (FigCFEqual())
            {
              if (v53)
              {
                goto LABEL_85;
              }

              v53 = CFDictionaryGetValue(v54, @"value");
            }

            else
            {
              CFDictionaryGetValue(v54, @"key");
              if (FigCFEqual())
              {
                if (v52)
                {
LABEL_85:
                  OUTLINED_FUNCTION_2_40();
                  DoesNotExistAndAddToQueue = FigSignalErrorAtGM();
                  DateEntryArray = v61;
                  goto LABEL_78;
                }

                v52 = CFDictionaryGetValue(v54, @"value");
              }
            }

            ++v51;
          }

          while (v51 < CFArrayGetCount(v50));
          if (!v53)
          {
            DateEntryArray = v61;
            goto LABEL_72;
          }

          DateEntryArray = v61;
          if (!v52)
          {
            goto LABEL_72;
          }
        }

        OUTLINED_FUNCTION_2_40();
        DoesNotExistAndAddToQueue = FigSignalErrorAtGM();
        goto LABEL_78;
      }
    }

LABEL_88:
    v58 = v63;
    v12 = v60;
    if (!v60)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  DoesNotExistAndAddToQueue = v14;
  v58 = v63;
LABEL_89:
  CFRelease(v12);
LABEL_90:
  if (v58)
  {
    CFRelease(v58);
  }

  return DoesNotExistAndAddToQueue;
}

uint64_t metadw_parseJSONDataIntoAssetList(uint64_t a1, CMBlockBufferRef sourceBuffer)
{
  theArray = 0;
  PropertyListsFromJSONBlockBuffer = FigInterstitialCreatePropertyListsFromJSONBlockBuffer(sourceBuffer, &theArray, 0, 0, 0, 0);
  v4 = theArray;
  if (PropertyListsFromJSONBlockBuffer)
  {
    v8 = PropertyListsFromJSONBlockBuffer;
    if (!theArray)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if (!theArray)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(v4); v5 < i; i = 0)
  {
    OUTLINED_FUNCTION_198_0();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    metadw_appendUniqueInterstitialURL(a1, ValueAtIndex);
    ++v5;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  v8 = 0;
  v4 = theArray;
  if (theArray)
  {
LABEL_9:
    CFRelease(v4);
  }

  return v8;
}

void metadw_contentKeyRequestDidSucceed(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = FigCFDictionaryGetValue();
  v14 = 0;
  ++*(DerivedStorage + 376);
  if (Value)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(Value, @"FHRP_HTTPFinalURL", AllocatorForMedia, &v14);
    }
  }

  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_24_5();
  metadw_publishMediaResourceRequestEvent(v9, v10, v11, v12, v13, 0, 0, a3, 0);
  metadw_checkIfDownloadIsComplete(a1);
}

void metadw_checkIfDownloadIsComplete(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 256) <= 2u)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 360) == *(DerivedStorage + 352) && !*(DerivedStorage + 272))
    {
      *(DerivedStorage + 272) = 1;
      v4 = CMBaseObjectGetDerivedStorage();
      v5 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v5)
      {
        v6 = v5;
        v7 = OUTLINED_FUNCTION_7_15();
        if (v7)
        {
          v8 = v7;
          if (a1)
          {
            v9 = CFRetain(a1);
          }

          else
          {
            v9 = 0;
          }

          *v8 = v9;
          v8[1] = v6;
          dispatch_async_f(*(v4 + 136), v8, metadw_sendDidFinishLoadingPlaylistsCallbackCallbackOnCallbackQueue);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          if (FigSignalErrorAtGM())
          {
            CFRelease(v6);
          }
        }
      }
    }

    if (*(v3 + 368) == *(v3 + 376) && *(v3 + 360) == *(v3 + 352))
    {
      if (dword_1EAF16DD8)
      {
        OUTLINED_FUNCTION_147();
        v10 = OUTLINED_FUNCTION_126();
        v11 = os_log_type_enabled(v10, type);
        if (OUTLINED_FUNCTION_115_1(v11))
        {
          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_0_40();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      *(v3 + 256) = 3;
      FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete(*(v3 + 264));
      v12 = CMBaseObjectGetDerivedStorage();
      v13 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_7_15();
        if (v15)
        {
          v16 = v15;
          if (a1)
          {
            v17 = CFRetain(a1);
          }

          else
          {
            v17 = 0;
          }

          *v16 = v17;
          v16[1] = v14;
          dispatch_async_f(*(v12 + 136), v16, metadw_sendDownloadSucceededCallbackOnCallbackQueue);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          if (FigSignalErrorAtGM())
          {
            CFRelease(v14);
          }
        }
      }
    }
  }
}

void metadw_httpReadCallback(uint64_t a1, int a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = 0;
  cf = 0;
  v15 = metadw_copyMetadataDownloaderFromRetainProxy(a3, &v46);
  v16 = v46;
  if (v15)
  {
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 240))
  {
    if (*(DerivedStorage + 256) != 1)
    {
      goto LABEL_28;
    }

    Value = CFDictionaryGetValue(*(DerivedStorage + 336), a2);
    if (Value)
    {
      v19 = Value;
      v43 = a4;
      v20 = Value[11];
      if (v20 == a1)
      {
        if (a8)
        {
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v21)
          {
            v21(a1, @"FHRP_ErrorReturned", *MEMORY[0x1E695E480], &cf);
            if (cf)
            {
              metadw_transitionToTerminalState(v16, cf);
              goto LABEL_26;
            }
          }

LABEL_25:
          metadw_transitionToTerminalStateWithOSStatus(v16, a8);
LABEL_26:
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_28;
        }

        v22 = a7 & 2;
        v23 = *(Value + 4);
        if ((v23 - 1) < 4)
        {
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v24(v20, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &v45);
          }

          v25 = OUTLINED_FUNCTION_198_0();
          v28 = metadw_handlePlaylistFileData(v25, v26, v43, a5, a6, v27, v22);
          if (v28)
          {
            a8 = v28;
            goto LABEL_25;
          }

          if ((*(v19 + 4) - 2) > 2)
          {
            OUTLINED_FUNCTION_24_5();
          }

          OUTLINED_FUNCTION_26_7();
          v32 = metadw_publishMediaResourceRequestEvent(v16, a1, v29, 0, v30, v31, 0, 0, v42);
        }

        else
        {
          if (v23 != 6)
          {
            OUTLINED_FUNCTION_21_4();
            a8 = FigSignalErrorAtGM();
LABEL_23:
            if (v22)
            {
              if (dword_1EAF16DD8)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v37 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                if (OUTLINED_FUNCTION_115_1(v37))
                {
                  v38 = *(DerivedStorage + 152);
                  v39 = v19[3];
                  v47 = 136315906;
                  v48 = "metadw_httpReadCallback";
                  v49 = 2048;
                  v50 = v16;
                  v51 = 2114;
                  v52 = v38;
                  v53 = 2112;
                  v54 = v39;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_414();
              }

              v40 = OUTLINED_FUNCTION_198_0();
              metadw_clearHTTPRequestState(v40, v41);
              OUTLINED_FUNCTION_29_5();
              goto LABEL_28;
            }

            if (a8)
            {
              goto LABEL_25;
            }

            goto LABEL_28;
          }

          v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v33)
          {
            v33(v20, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &v45);
          }

          v34 = OUTLINED_FUNCTION_198_0();
          v32 = metadw_handleAssetListJSONFileData(v34, v35, v43, a5, a6, v22);
        }

        a8 = v32;
        if (v32)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }
  }

  OUTLINED_FUNCTION_21_4();
  a8 = FigSignalErrorAtGM();
  if (a8)
  {
    goto LABEL_25;
  }

LABEL_28:
  if (v45)
  {
    CFRelease(v45);
  }

LABEL_30:
  if (v16)
  {
    CFRelease(v16);
  }
}

uint64_t metadw_handlePlaylistFileData(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, size_t a4, size_t a5, __CFHTTPMessage *a6, int a7)
{
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigGetUpTimeNanoseconds();
  if (a3)
  {
    v15 = (a2 + 112);
    v14 = *(a2 + 112);
    if (!v14)
    {
      Empty = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, (a2 + 112));
      if (Empty)
      {
        return Empty;
      }

      v14 = *v15;
    }

    Empty = CMBlockBufferAppendBufferReference(v14, a3, a4, a5, 0);
    if (Empty)
    {
      return Empty;
    }

    if (!FigStreamingPlaylistVerifyM3UPlaylist(*v15, &v36) && v36)
    {
      return 4294951694;
    }
  }

  if (!a7)
  {
    return 0;
  }

  Empty = metadw_processPlaylistCommon(a1, a2);
  if (Empty)
  {
    return Empty;
  }

  v19 = CMBaseObjectGetDerivedStorage();
  cf.isa = 0;
  cf.info = 0;
  v20 = FigCFHTTPCreateURLString(*(a2 + 24));
  if (!v20)
  {
    OUTLINED_FUNCTION_429();
    v17 = FigSignalErrorAtGM();
    v25 = DerivedStorage;
    if (v17)
    {
      return v17;
    }

    goto LABEL_29;
  }

  v21 = v20;
  if (a6 && (DataLength = CMBlockBufferGetDataLength(*(a2 + 112)), CacheForStream = FigCFHTTPCreateCacheHeaders(v21, DataLength, a6, 0, &cf), CacheForStream))
  {
LABEL_42:
    v17 = CacheForStream;
LABEL_43:
    v25 = DerivedStorage;
  }

  else
  {
    switch(*(a2 + 16))
    {
      case 1:
        v24 = FigStreamingCacheSetMasterPlaylist(*(v19 + 24), *(a2 + 112), cf.isa);
        goto LABEL_20;
      case 2:
      case 3:
      case 4:
        CacheForStream = metadw_createCacheForStream(a1, a2, &cf.info);
        if (CacheForStream)
        {
          goto LABEL_42;
        }

        v24 = FigStreamingCacheMediaStreamSetPlaylist(*(v19 + 24), cf.info, *(a2 + 112), cf.isa);
LABEL_20:
        v17 = v24;
        if (v24)
        {
          goto LABEL_43;
        }

        goto LABEL_24;
      case 5:
      case 6:
        OUTLINED_FUNCTION_429();
        v17 = FigSignalErrorAtGM();
        goto LABEL_24;
      default:
        v17 = 0;
LABEL_24:
        v25 = DerivedStorage;
        *(a2 + 136) = 1;
        v26 = *(a2 + 112);
        if (v26)
        {
          CFRelease(v26);
          *(a2 + 112) = 0;
        }

        break;
    }
  }

  CFRelease(v21);
  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (!v17)
  {
LABEL_29:
    if (*(a2 + 16) == 1 && *(v25 + 416) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v27 = OUTLINED_FUNCTION_19_6();
      v28(v27);
    }

    if (*(v25 + 416) && *(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v29 = OUTLINED_FUNCTION_19_6();
      v30(v29);
    }

    v31 = *(a2 + 16);
    v32 = *(CMBaseObjectGetDerivedStorage() + 416);
    if (v32)
    {
      if ((v31 - 2) <= 2)
      {
        v33 = *off_1E7481420[v31 - 2];
        if (v33)
        {
          v34 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v34)
          {
            v34(v32, 0x1F0B64618, v33, 1);
          }
        }
      }
    }

    return 0;
  }

  return v17;
}

uint64_t metadw_handleAssetListJSONFileData(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, size_t a4, size_t a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    if (!a6)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v13 = *(a2 + 112);
  if (!v13)
  {
    result = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, (a2 + 112));
    if (result)
    {
      return result;
    }

    v13 = *(a2 + 112);
  }

  result = CMBlockBufferAppendBufferReference(v13, a3, a4, a5, 0);
  if (a6 && !result)
  {
LABEL_9:
    v15 = *(a2 + 112);
    if (v15)
    {
      result = metadw_parseJSONDataIntoAssetList(a1, v15);
      if (!result)
      {
        v16 = *(DerivedStorage + 24);
        v17 = CFURLGetString(*(a2 + 24));
        v18 = *(a2 + 112);

        return FigStreamingCacheSetInterstitialAssetList(v16, v17, v18);
      }

      return result;
    }

    return 0;
  }

  return result;
}

void metadw_customURLReadCallback(uint64_t a1, const void *a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, unint64_t a6)
{
  v7 = v6;
  v51 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  cf = 0;
  if (metadw_copyMetadataDownloaderFromRetainProxy(a1, &v42))
  {
    goto LABEL_59;
  }

  v12 = v42;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240) || (Value = CFDictionaryGetValue(*(DerivedStorage + 344), a2)) == 0)
  {
    OUTLINED_FUNCTION_429();
    ResourceRequestForMetadataItem = FigSignalErrorAtGM();
    a4 = 0;
    goto LABEL_45;
  }

  v15 = Value;
  v16 = *(DerivedStorage + 256);
  if (v16 == 1 || v16 == 3 && Value[4] == 5)
  {
    HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
    if ((!HTTPStatusCode || HTTPStatusCode == -17360) && !FigCFHTTPCreateCFErrorFromHTTPStatusCode(v40, &cf))
    {
      if (a6 | cf)
      {
        if (a6)
        {
          v18 = a6;
        }

        else
        {
          v18 = cf;
        }

        v19 = CFRetain(v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = v15[4];
      if ((v20 - 1) >= 4)
      {
        if (v20 == 6)
        {
          v35 = OUTLINED_FUNCTION_198_0();
          metadw_handleAssetListJSONFileData(v35, v36, a4, 0, 0, a5 & 1);
          OUTLINED_FUNCTION_23_6();
          if (v37)
          {
            goto LABEL_37;
          }
        }

        else
        {
          OUTLINED_FUNCTION_429();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_23_6();
        }

        goto LABEL_35;
      }

      if (v19)
      {
        a4 = 0;
        v7 = 0;
        goto LABEL_63;
      }

      if ((a5 & 1) != 0 && dword_1EAF16DD8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_16_1(v22))
        {
          v23 = *(DerivedStorage + 152);
          v24 = *(v15 + 3);
          v43 = 136315906;
          v44 = "metadw_customURLReadCallback";
          v45 = 2048;
          v46 = v12;
          v47 = 2114;
          v48 = v23;
          v49 = 2112;
          v50 = v24;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      if (!FigCustomURLResponseInfoCopyRequestInfo())
      {
        v26 = FigCustomURLResponseInfoCopyHTTPHeaders();
        if (!v26 || v26 == -17360)
        {
          if ((a5 & 1) != 0 && FigCFHTTPIsStatusCodeRedirect(v40))
          {
            v27 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(v39);
            a4 = v27;
            if (v27)
            {
              v28 = *(v15 + 3);
              *(v15 + 3) = v27;
              CFRetain(v27);
              if (v28)
              {
                CFRelease(v28);
              }

              v29 = OUTLINED_FUNCTION_198_0();
              ResourceRequestForMetadataItem = metadw_createResourceRequestForMetadataItem(v29, v30);
              v7 = 0;
              if (!ResourceRequestForMetadataItem)
              {
                goto LABEL_35;
              }

LABEL_48:
              metadw_transitionToTerminalStateWithOSStatus(v12, ResourceRequestForMetadataItem);
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_429();
            ResourceRequestForMetadataItem = FigSignalErrorAtGM();
LABEL_45:
            v7 = 0;
            if (!ResourceRequestForMetadataItem)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }

          v7 = FigCFHTTPCreateHTTPMessageFromHTTPResponseHeaders(v39);
          v31 = OUTLINED_FUNCTION_198_0();
          ResourceRequestForMetadataItem = metadw_handlePlaylistFileData(v31, v32, a4, 0, 0, v7, a5 & 1);
          a4 = 0;
          if (ResourceRequestForMetadataItem)
          {
            goto LABEL_48;
          }

LABEL_35:
          if (a5)
          {
            v33 = OUTLINED_FUNCTION_198_0();
            metadw_clearCustomURLRequestState(v33, v34);
            OUTLINED_FUNCTION_29_5();
            ResourceRequestForMetadataItem = 0;
          }

LABEL_37:
          if (!v19)
          {
            if (!ResourceRequestForMetadataItem)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }

LABEL_63:
          metadw_transitionToTerminalState(v12, v19);
          CFRelease(v19);
          goto LABEL_49;
        }
      }
    }

    OUTLINED_FUNCTION_23_6();
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_23_6();
LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_59:
  if (v42)
  {
    CFRelease(v42);
  }
}

void metadw_pauseDispatch(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_126();
    v12 = OUTLINED_FUNCTION_34_5(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, SBYTE2(v17), BYTE3(v17), SHIDWORD(v17));
    if (OUTLINED_FUNCTION_16_1(v12))
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    OUTLINED_FUNCTION_239();
    v13 = FigSignalErrorAtGM();
    if (v13)
    {
      metadw_transitionToTerminalStateWithOSStatus(*a1, v13);
    }
  }

  else
  {
    if (*(DerivedStorage + 256) <= 1u)
    {
      *(DerivedStorage + 256) = 2;
      metadw_cancelResourceRequestForMetadataItems(v2);
    }

    LODWORD(v13) = 0;
  }

  *(a1 + 24) = v13;
}

void metadw_stopDispatch(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_126();
    v12 = OUTLINED_FUNCTION_34_5(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, SBYTE2(v17), BYTE3(v17), SHIDWORD(v17));
    if (OUTLINED_FUNCTION_16_1(v12))
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    OUTLINED_FUNCTION_239();
    v13 = FigSignalErrorAtGM();
    if (v13)
    {
      metadw_transitionToTerminalStateWithOSStatus(*a1, v13);
    }
  }

  else
  {
    if (*(DerivedStorage + 256) <= 2u)
    {
      *(DerivedStorage + 256) = 5;
      metadw_cancelResourceRequestForMetadataItems(v2);
    }

    LODWORD(v13) = 0;
  }

  *(a1 + 24) = v13;
}

uint64_t metadw_configureMediaSelectionsForAlternateDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_configureMediaSelectionsForAlternateDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL metadw_configureMediaSelectionsForAlternateDispatch_cold_3(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t metadw_configureMediaSelectionsForAlternateDispatch_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_configureMediaSelectionsForAlternateDispatch_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingAssetMetadataDownloaderCreate_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_copyPropertyDispatch_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_copyPropertyDispatch_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_start_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_createMetadataDownloadItem_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_createCacheForStream_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t metadw_copyMetadataDownloaderFromRetainProxy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWriteHLSfMP4SecurityInfoIncludingAtomHeader(int a1, unsigned int a2, signed int a3, unsigned int a4, const __CFData *a5, void *a6, size_t *a7, unint64_t a8, void *a9)
{
  theBuffer = 0;
  v11 = hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo(a1, a2, a3, a4, a5, a6, a8, &theBuffer);
  v12 = theBuffer;
  if (v11)
  {
    goto LABEL_7;
  }

  v13 = a9;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (a7)
  {
    *a7 = DataLength;
  }

  if (a9)
  {
    if (DataLength > a8)
    {
      OUTLINED_FUNCTION_2_41();
      v11 = FigSignalErrorAtGM();
    }

    else
    {
      v11 = CMBlockBufferCopyDataBytes(v12, 0, DataLength, a9);
    }

LABEL_7:
    v13 = v11;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t FigCreateHLSfMP4SecurityInfoData(int a1, int a2, signed int a3, unsigned int a4, const __CFData *a5, void *a6, __CFData **a7)
{
  theBuffer = 0;
  if (a2 == 1869641075)
  {
    v8 = 1332770163;
  }

  else
  {
    v8 = a2;
  }

  if (a2 == 1718378851)
  {
    v9 = 1716281667;
  }

  else
  {
    v9 = v8;
  }

  v10 = hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo(a1, v9, a3, a4, a5, a6, 0, &theBuffer);
  v11 = theBuffer;
  if (v10)
  {
    goto LABEL_15;
  }

  v12 = CMBlockBufferGetDataLength(theBuffer) - 8;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v12);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_2_41();
    v10 = FigSignalErrorAtGM();
LABEL_15:
    v16 = v10;
    goto LABEL_11;
  }

  v14 = Mutable;
  CFDataSetLength(Mutable, v12);
  MutableBytePtr = CFDataGetMutableBytePtr(v14);
  v16 = CMBlockBufferCopyDataBytes(v11, 8uLL, v12, MutableBytePtr);
  if (v16)
  {
    CFRelease(v14);
  }

  else
  {
    *a7 = v14;
  }

LABEL_11:
  if (v11)
  {
    CFRelease(v11);
  }

  return v16;
}

uint64_t FigParseHLSfMP4SecurityInfoAndCopyIV(int a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5, _DWORD *a6, _OWORD *a7, void *a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *cf = 0u;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  LODWORD(v21) = a1;
  v13 = FigAtomStreamInitWithMemoryBlock();
  if (v13)
  {
    goto LABEL_32;
  }

  v13 = hlsfmp4_ParseChildAtoms(v20, 3, &hlsfmp4_parse_sinf_atomDispatch, &v21);
  if (v13)
  {
    goto LABEL_32;
  }

  v14 = DWORD1(v21);
  if (!DWORD1(v21))
  {
    goto LABEL_31;
  }

  v15 = DWORD2(v21);
  if (v21 == 1986618469)
  {
    if (DWORD2(v21))
    {
      v16 = HIDWORD(v21);
      if (HIDWORD(v21) + DWORD2(v21) == 10)
      {
        if (!a4)
        {
          goto LABEL_8;
        }

LABEL_21:
        if (DWORD1(v21) == 1716281667)
        {
          v14 = 1718378851;
        }

        else if (DWORD1(v21) == 1332770163)
        {
          v14 = 1869641075;
        }

        *a4 = v14;
        if (!a5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    goto LABEL_31;
  }

  if (DWORD2(v21) || (v15 = HIDWORD(v21)) != 0)
  {
LABEL_31:
    OUTLINED_FUNCTION_429();
    OUTLINED_FUNCTION_0_42();
    v13 = FigSignalErrorAtGM();
LABEL_32:
    v18 = v13;
    goto LABEL_25;
  }

  v16 = 0;
  if (a4)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (a5)
  {
LABEL_9:
    *a5 = v15;
  }

LABEL_10:
  if (a6)
  {
    *a6 = v16;
  }

  if (a7)
  {
    *a7 = v22;
  }

  if (a8)
  {
    v17 = cf[0];
    if (cf[0])
    {
      v17 = CFRetain(cf[0]);
    }

    v18 = 0;
    *a8 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_25:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v18;
}

uint64_t hlsfmp4_parse_frma()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t hlsfmp4_parse_schm()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t hlsfmp4_ParseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = (a3 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 4;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        OUTLINED_FUNCTION_376();
        OUTLINED_FUNCTION_0_42();
        return FigSignalErrorAtGM();
      }

      result = (*v13)(a1, a4);
      if (result)
      {
        return result;
      }

      v8 |= v14;
    }

LABEL_12:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result)
    {
      if (result == -12890)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (a2 >= 1)
      {
        v15 = 0;
        v16 = (a3 + 4);
        do
        {
          v17 = *v16;
          v16 += 16;
          if ((v17 & 2) != 0 && ((v8 >> v15) & 1) == 0)
          {
            OUTLINED_FUNCTION_376();
            OUTLINED_FUNCTION_0_42();
            result = FigSignalErrorAtGM();
          }

          ++v15;
        }

        while (a2 != v15);
      }

      return result;
    }
  }
}

uint64_t hlsfmp4_parse_cspn()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t hlsfmp4_parse_tenc()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 0;
  v2 = 0uLL;
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    FigAtomStreamGetCurrentAtomVersionAndFlags();
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_0_42();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t hlsfmp4_CreateBlockBufferContainingHLSfMP4SecurityInfo_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigParseHLSfMP4SecurityInfoFromFormatDescriptionAndCopyIV_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_42();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigWriteHLSfMP4SecurityInfoPlaceholderIncludingAtomHeader_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHLSfMP4SecurityInfoPlaceholderData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_41();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoMentorDebugDumpGraph(uint64_t *a1, const char *a2)
{
  v4 = OUTLINED_FUNCTION_265();
  Mutable = CFSetCreateMutable(v4, v5, v6);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = OUTLINED_FUNCTION_265();
    v11 = CFDictionaryCreateMutable(v9, v10, 0, 0);
    if (v11)
    {
      v12 = v11;
      v13 = fopen(a2, "w+");
      if (v13)
      {
        v14 = v13;
        fwrite("digraph dependencyGraph {\n", 0x1AuLL, 1uLL, v13);
        fwrite("node [ style = filled ]\n", 0x18uLL, 1uLL, v14);
        videoMentorDebugDumpGraphNode(v14, v8, v12, *a1);
        fwrite("}\n", 2uLL, 1uLL, v14);
        fclose(v14);
      }

      CFRelease(v8);
    }

    else
    {
      v12 = v8;
    }

    CFRelease(v12);
  }
}

void videoMentorThreadForwardPlayback(uint64_t a1, const void *a2, CMTime *a3, CMTime *a4, CMTime *Mutable, int a6, int a7, int a8, float a9, float a10, unsigned __int8 a11, int a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, CFArrayRef *a19, const void *a20, char a21, unsigned __int8 a22, char *cf)
{
  LODWORD(v347) = a8;
  v355 = a3;
  value = v23;
  v397 = a4;
  v398[0] = a2;
  v395 = 0;
  v396 = 0;
  v393 = 0;
  v394 = 0;
  v392 = 0;
  v391 = 1;
  v390 = 0;
  v388 = *MEMORY[0x1E6960C80];
  v389 = *(MEMORY[0x1E6960C80] + 16);
  v386 = *MEMORY[0x1E6960C70];
  v32 = *(MEMORY[0x1E6960C70] + 16);
  v387 = v32;
  v384 = v386;
  v385 = v32;
  v383 = 0;
  v382 = 0;
  *&v381.value = v386;
  v381.epoch = v32;
  v33 = a10 == 1.0 || a9 == 0.0;
  v34 = !v33;
  HIDWORD(v347) = v34;
  v380 = 0;
  v378 = v386;
  v379 = v32;
  v372 = 0;
  *&v377[12] = 0u;
  v373 = v386;
  v374 = v32;
  v375 = v386;
  v376 = v32;
  *&v377[16] = v32;
  *v377 = v386;
  v377[25] = 0;
  v370 = 0;
  v371 = 0;
  *&v369.value = v386;
  v369.epoch = v32;
  *&v368.value = v386;
  v368.epoch = v32;
  *&v367.value = v386;
  v367.epoch = v32;
  v352 = v386;
  *&v366.value = v386;
  v366.epoch = v32;
  v35 = MEMORY[0x1E695FF58];
  v36 = *MEMORY[0x1E695FF58];
  v37 = (a6 & 0xFFFFFFFD) == 1 && v36 == 1;
  ++*(a1 + 924);
  if (v37)
  {
    kdebug_trace();
    v36 = *v35;
  }

  v38 = cf;
  if (v36 == 1)
  {
    kdebug_trace();
  }

  *(a1 + 492) = *(a1 + 488) != 0;
  *(a1 + 524) = 0;
  *(a1 + 496) = a6;
  *(a1 + 500) = a7;
  v39 = *(a1 + 512);
  *(a1 + 512) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  HIDWORD(v349) = a13;
  v40 = v355;
  if (v39)
  {
    CFRelease(v39);
  }

  v351 = a20;
  HIDWORD(v354) = a15;
  if (!a16 || (time1 = *v355, time2 = *(a1 + 404), CMTimeCompare(&time1, &time2)))
  {
    OUTLINED_FUNCTION_12_12();
    goto LABEL_22;
  }

  v40 = &unk_1EAF16000;
  v38 = v23;
  value = *(a1 + 528);
  if (!value)
  {
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_48_5();
    goto LABEL_22;
  }

  LODWORD(v349) = a16;
  v41 = v398[0];
  if (v398[0])
  {
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_48_5();
    goto LABEL_23;
  }

  v100 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v100)
  {
    LODWORD(v41) = -12782;
    goto LABEL_147;
  }

  LODWORD(v41) = v100(value, v398);
  if (v41)
  {
LABEL_147:
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_8_15();
    v85 = 0;
LABEL_148:
    v38 = cf;
    goto LABEL_89;
  }

  if (!*(*(OUTLINED_FUNCTION_54_5() + 16) + 168))
  {
    OUTLINED_FUNCTION_8_15();
    LODWORD(v41) = -12782;
    v85 = 1;
    goto LABEL_148;
  }

  value = v23;
  v38 = cf;
  v101 = OUTLINED_FUNCTION_10_13();
  v103 = v102(v101);
  if (v103)
  {
LABEL_152:
    LODWORD(v41) = v103;
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_38_3();
  if (!v33)
  {
    v84 = 0;
    LODWORD(v41) = 0;
    v85 = 1;
    goto LABEL_154;
  }

  LODWORD(allocator) = 0;
  v104 = *(a1 + 380);
  v40 = v355;
  v355->epoch = *(a1 + 396);
  *&v355->value = v104;
  v381 = *(a1 + 380);
  OUTLINED_FUNCTION_33_6();
LABEL_22:
  v41 = v398[0];
  if (v398[0])
  {
    goto LABEL_23;
  }

  time1 = *v40;
  CursorForPresentationTimeStamp = videoMentorCreateCursorForPresentationTimeStamp(a1, a13, &time1.value, v398);
  if (CursorForPresentationTimeStamp)
  {
    goto LABEL_67;
  }

  v41 = v398[0];
  if (!a21)
  {
    OUTLINED_FUNCTION_33_6();
    goto LABEL_23;
  }

  memset(&time1, 0, sizeof(time1));
  memset(&time2, 0, sizeof(time2));
  v86 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v86)
  {
    LODWORD(v41) = -12782;
    goto LABEL_142;
  }

  LODWORD(v41) = v86(v41, &time1);
  if (v41)
  {
LABEL_142:
    OUTLINED_FUNCTION_4_33();
    goto LABEL_143;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    goto LABEL_229;
  }

  OUTLINED_FUNCTION_5_29();
  if (OUTLINED_FUNCTION_23_7(v87, v88, v89, v90, v91, v92, v93, v94, v255, v261, v266, v269, v273, v276, v279, v282, v285, v288, v291, v294, v297, v299, v301, v304, v307, v310, v312, v315, v318, v320, v323, v325, v327, v330, v333, v336, v338, v340, allocator, v347, v349, a20, v352, *(&v352 + 1), v353, v354, v355, v356, v357.value, *&v357.timescale, v357.epoch, v358, v359.value, *&v359.timescale, v359.epoch, v360, *&rhs.value, rhs.epoch, v362, lhs.value))
  {
    PresentationTimeStamp = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v398[0], 1, 0);
    if (PresentationTimeStamp || (PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(v398[0], &time2)) != 0)
    {
      LODWORD(v41) = PresentationTimeStamp;
      OUTLINED_FUNCTION_4_33();
LABEL_143:
      FigSignalErrorAtGM();
LABEL_144:
      OUTLINED_FUNCTION_8_15();
      v84 = 0;
      v85 = 1;
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_29();
    if (!v33)
    {
LABEL_229:
      OUTLINED_FUNCTION_4_33();
      v103 = FigSignalErrorAtGM();
      goto LABEL_152;
    }

    *v40 = time2;
  }

  OUTLINED_FUNCTION_33_6();
  v41 = v398[0];
LABEL_23:
  OUTLINED_FUNCTION_29();
  if (v33)
  {
    goto LABEL_25;
  }

  v82 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v82)
  {
    LODWORD(v41) = -12782;
    goto LABEL_73;
  }

  LODWORD(v41) = v82(v41, v40);
  if (v41)
  {
LABEL_73:
    OUTLINED_FUNCTION_4_33();
LABEL_74:
    FigSignalErrorAtGM();
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    OUTLINED_FUNCTION_4_33();
    goto LABEL_149;
  }

  v41 = v398[0];
LABEL_25:
  OUTLINED_FUNCTION_19_7(v42, v43, v44, v45, v46, v47, v48, v49, v255, v261, v266, v269, v273, v276, v279, v282, v285, v288, v291, v294, v297, v299, v301, v304, v307, v310, v312, v315, v318, v320, v323, v325, v327, v330, v333, v336, v338, v340, allocator, v347, v349, v351, v50);
  v51 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v51)
  {
LABEL_71:
    LODWORD(v41) = -12782;
    goto LABEL_88;
  }

  v52 = v51(v41, &time1);
  if (v52)
  {
LABEL_475:
    LODWORD(v41) = v52;
    goto LABEL_88;
  }

  v53 = *(*(OUTLINED_FUNCTION_54_5() + 16) + 8);
  if (!v53)
  {
    LODWORD(v41) = -12782;
    goto LABEL_86;
  }

  v41 = v53(v41, &v395);
  if (v41)
  {
LABEL_86:
    OUTLINED_FUNCTION_4_33();
    goto LABEL_87;
  }

  *&time2.value = v352;
  time2.epoch = v32;
  if (!*(*(OUTLINED_FUNCTION_29_6() + 16) + 168))
  {
LABEL_150:
    LODWORD(v41) = -12782;
    goto LABEL_151;
  }

  LODWORD(v334) = a22;
  v331 = a19;
  LODWORD(v324) = a18;
  LODWORD(v326) = a17;
  HIDWORD(v326) = a14;
  HIDWORD(v324) = a12;
  LODWORD(v328) = a11;
  v341 = value;
  while (1)
  {
    v54 = OUTLINED_FUNCTION_10_13();
    v56 = v55(v54);
    if (v56)
    {
      LODWORD(v41) = v56;
      goto LABEL_151;
    }

    OUTLINED_FUNCTION_38_3();
    if (!v33)
    {
      break;
    }

    v65 = *(*(OUTLINED_FUNCTION_29_6() + 16) + 40);
    if (!v65)
    {
      goto LABEL_71;
    }

    v52 = v65(v41, &time2);
    value = v341;
    if (v52)
    {
      goto LABEL_475;
    }

    OUTLINED_FUNCTION_37_4();
    rhs = time1;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      OUTLINED_FUNCTION_37_4();
      if ((OUTLINED_FUNCTION_23_7(v66, v67, v68, v69, v70, v71, v72, v73, v256, v262, v267, v270, v274, v277, v280, v283, v286, v289, v292, v295, v298, v300, v302, v305, v308, v311, v313, v316, v319, v321, v324, v326, v328, v331, v334, v337, v339, v341, allocatora, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355, v356, v357.value, *&v357.timescale, v357.epoch, v358, v359.value, *&v359.timescale, v359.epoch, v360, *&rhs.value, rhs.epoch, v362, lhs.value) & 0x80000000) == 0)
      {
        if (v393)
        {
          CFRelease(v393);
          v393 = 0;
        }

        v74 = *(*(OUTLINED_FUNCTION_29_6() + 16) + 8);
        if (!v74)
        {
          LODWORD(v41) = -12782;
          goto LABEL_151;
        }

        v75 = v74(v41, &v393);
        if (v75)
        {
          LODWORD(v41) = v75;
LABEL_151:
          OUTLINED_FUNCTION_4_33();
LABEL_87:
          FigSignalErrorAtGM();
LABEL_88:
          v85 = v353;
          OUTLINED_FUNCTION_8_15();
LABEL_89:
          v84 = 0;
          goto LABEL_90;
        }

        time1 = time2;
      }
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      break;
    }

    value = v398[0];
    v339 = v395;
    v76 = *(CMBaseObjectGetVTable() + 16);
    if (v76)
    {
      v41 = v76;
      if (!value)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v41 = 0;
      if (!value)
      {
LABEL_48:
        v77 = 0;
        goto LABEL_49;
      }
    }

    v77 = *(CMBaseObjectGetVTable() + 16);
LABEL_49:
    if (v41 == v77)
    {
      v79 = *(v41 + 80);
      v41 += 80;
      v78 = v79;
      if (v79)
      {
        if (v78(v339, value, 1))
        {
          break;
        }
      }
    }

    if (*(a1 + 116))
    {
      LODWORD(v41) = -1;
      goto LABEL_88;
    }

    *&time2.value = v352;
    time2.epoch = v32;
    value = v341;
    if (!*(*(OUTLINED_FUNCTION_29_6() + 16) + 168))
    {
      goto LABEL_150;
    }
  }

  v80 = v395;
  if (v395)
  {
    CFRelease(v395);
    v395 = 0;
  }

  v81 = v393;
  v41 = HIDWORD(v350);
  v322 = v38;
  if (v393)
  {
    if (v353 && v398[0])
    {
      CFRelease(v398[0]);
      v81 = v393;
    }

    v398[0] = v81;
    v393 = 0;
    OUTLINED_FUNCTION_33_6();
  }

  if (!allocatora)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_19_7(v80, v57, v58, v59, v60, v61, v62, v63, v256, v262, v267, v270, v274, v277, v280, v283, v286, v289, v292, v295, v298, v300, v302, v305, v308, v311, v313, v316, v319, v38, v324, v326, v328, v331, v334, v337, v339, v341, allocatora, v348, v350, v351, v64);
  v105 = *(*(OUTLINED_FUNCTION_54_5() + 16) + 40);
  if (!v105)
  {
    LODWORD(v41) = -12782;
    goto LABEL_215;
  }

  LODWORD(v41) = v105(v41, &time1);
  if (v41)
  {
LABEL_215:
    FigSignalErrorAtGM();
LABEL_216:
    OUTLINED_FUNCTION_8_15();
    v84 = 0;
    v85 = v353;
    v38 = v322;
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
LABEL_241:
    LODWORD(v41) = FigSignalErrorAtGM();
    goto LABEL_216;
  }

  time2 = *v40;
  OUTLINED_FUNCTION_5_29();
  if (CMTimeCompare(&time2, &lhs) < 0)
  {
    time2 = *v40;
    OUTLINED_FUNCTION_5_29();
    FigSimpleMutexLock();
    v106 = *(a1 + 64);
    if (v106)
    {
      v106(*(a1 + 72), v322, 0, &time2, &lhs);
    }

    v107 = FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_47_3(v107, v108, v109, v110, v111, v112, v113, v114, v256, v262, v267, v270, v274, v277, v280, v283, v286, v289, v292, v295, v298, v300, v302, v305, v308, v311, v313, v316, v319, v322, v324, v326, v328, v331, v334, v337, v339, v341, allocatorb, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355, v356, v357.value, *&v357.timescale, v357.epoch, v358, v359.value, *&v359.timescale, v359.epoch, v360, time2.value, *&time2.timescale, time2.epoch, v362, *&lhs.value);
    if (videoMentorEnqueueTimestampIntervalMarker(a1))
    {
      OUTLINED_FUNCTION_0_43();
      goto LABEL_241;
    }

    v40 = v355;
  }

  v41 = HIDWORD(v350);
LABEL_175:
  v381 = *v40;
  value = v397;
  if (v397)
  {
    HIDWORD(v350) = 0;
    v41 = v397;
    v38 = v322;
    goto LABEL_177;
  }

  OUTLINED_FUNCTION_29();
  v38 = v322;
  if (!v33)
  {
    HIDWORD(v350) = 0;
LABEL_249:
    v118 = Mutable;
    OUTLINED_FUNCTION_44_6();
    v134 = v33;
LABEL_252:
    HIDWORD(v319) = v134;
    goto LABEL_256;
  }

  memset(&time1, 0, sizeof(time1));
  time2 = *Mutable;
  LODWORD(v41) = videoMentorCreateCursorForPresentationTimeStamp(a1, v41, &time2.value, &v397);
  if (v41)
  {
    goto LABEL_75;
  }

  v135 = FigSampleCursorGetPresentationTimeStamp(v397, &time1);
  if (v135)
  {
    goto LABEL_221;
  }

  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    OUTLINED_FUNCTION_0_43();
LABEL_149:
    CursorForPresentationTimeStamp = FigSignalErrorAtGM();
LABEL_67:
    LODWORD(v41) = CursorForPresentationTimeStamp;
LABEL_75:
    OUTLINED_FUNCTION_8_15();
    v84 = 0;
    v85 = v353;
    goto LABEL_90;
  }

  time2 = time1;
  lhs = *Mutable;
  if (!CMTimeCompare(&time2, &lhs))
  {
    v135 = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v397, -1, 0);
    if (v135)
    {
LABEL_221:
      LODWORD(v41) = v135;
      OUTLINED_FUNCTION_0_43();
      goto LABEL_74;
    }
  }

  v41 = v397;
  HIDWORD(v350) = 1;
  if (!v397)
  {
    goto LABEL_249;
  }

LABEL_177:
  OUTLINED_FUNCTION_29();
  if (!v33)
  {
    v136 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v136)
    {
      LODWORD(v41) = v136(v41, Mutable);
      if (!v41)
      {
        OUTLINED_FUNCTION_29();
        if (!v33)
        {
          OUTLINED_FUNCTION_0_43();
          v123 = FigSignalErrorAtGM();
LABEL_247:
          LODWORD(v41) = v123;
          goto LABEL_237;
        }

        v41 = v397;
        goto LABEL_179;
      }
    }

    else
    {
      LODWORD(v41) = -12782;
    }

    goto LABEL_235;
  }

LABEL_179:
  OUTLINED_FUNCTION_44_6();
  v116 = v33;
  if (v115 || !v41)
  {
    HIDWORD(v319) = v116;
    v118 = Mutable;
    goto LABEL_256;
  }

  v117 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v117)
  {
    LODWORD(v41) = -12782;
    goto LABEL_235;
  }

  LODWORD(v41) = v117(v41, &v394);
  if (v41)
  {
LABEL_235:
    OUTLINED_FUNCTION_0_43();
    goto LABEL_236;
  }

  v118 = Mutable;
  v41 = v394;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
  {
LABEL_253:
    LODWORD(v41) = -12782;
    goto LABEL_254;
  }

  while (2)
  {
    v119 = OUTLINED_FUNCTION_10_13();
    v121 = v120(v119);
    if (v121)
    {
      LODWORD(v41) = v121;
      goto LABEL_254;
    }

    OUTLINED_FUNCTION_38_3();
    if (!v33)
    {
      break;
    }

    OUTLINED_FUNCTION_14_11();
    v123 = videoMentorCursorIsInPlayRange(v122, &time1, &time2, &v383);
    if (v123)
    {
      goto LABEL_247;
    }

    if (v383)
    {
      if (v392)
      {
        CFRelease(v392);
        v392 = 0;
      }

      v124 = v394;
      v125 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v125)
      {
        LODWORD(v41) = -12782;
LABEL_254:
        OUTLINED_FUNCTION_1_40();
LABEL_236:
        FigSignalErrorAtGM();
LABEL_237:
        OUTLINED_FUNCTION_8_15();
LABEL_238:
        v85 = v353;
LABEL_239:
        v84 = HIDWORD(v350);
        goto LABEL_90;
      }

      v126 = v125(v124, &v392);
      if (v126)
      {
        LODWORD(v41) = v126;
        goto LABEL_254;
      }

      goto LABEL_206;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      v127 = v394;
      Mutable = v397;
      v128 = *(CMBaseObjectGetVTable() + 16);
      v129 = v128 ? v128 : 0;
      v130 = Mutable ? *(CMBaseObjectGetVTable() + 16) : 0;
      if (v129 != v130 || (v132 = *(v129 + 80), v41 = v129 + 80, (v131 = v132) == 0) || !v131(v127, Mutable, 1))
      {
        if (*(a1 + 116))
        {
          OUTLINED_FUNCTION_8_15();
          LODWORD(v41) = -1;
          goto LABEL_238;
        }

LABEL_206:
        v41 = v394;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
        {
          goto LABEL_253;
        }

        continue;
      }
    }

    break;
  }

  if (v394)
  {
    CFRelease(v394);
    v394 = 0;
  }

  v133 = v392;
  if (!v392)
  {
    v134 = 1;
    goto LABEL_252;
  }

  if (!value && v397)
  {
    CFRelease(v397);
    v133 = v392;
  }

  v397 = v133;
  v392 = 0;
  HIDWORD(v319) = 1;
  HIDWORD(v350) = 1;
LABEL_256:
  if (*v331)
  {
    if (CFArrayGetCount(*v331) < 1 || (v137 = *(*(OUTLINED_FUNCTION_54_5() + 16) + 8)) == 0 || v137(v41, &v395))
    {
      OUTLINED_FUNCTION_8_15();
    }

    else
    {
      OUTLINED_FUNCTION_8_15();
      lhs.value = 0;
      allocatorc = *MEMORY[0x1E695E480];
      do
      {
        CachedVideoFrameForCursor = videoMentorGetCachedVideoFrameForCursor(a1, v395, *v331, v38);
        if (!CachedVideoFrameForCursor)
        {
          break;
        }

        v147 = CachedVideoFrameForCursor;
        OUTLINED_FUNCTION_19_7(CachedVideoFrameForCursor, v139, v140, v141, v142, v143, v144, v145, v256, v262, v267, v270, v274, v277, v280, v283, v286, v289, v292, v295, v298, v300, v302, v305, v308, v311, v313, v316, v319, v322, v324, v326, v328, v331, v334, v337, v339, v341, allocatorc, v348, v350, v351, v146);
        v148 = *(*(OUTLINED_FUNCTION_29_6() + 16) + 8);
        if (!v148 || v148(v41, &lhs) || !*(*(OUTLINED_FUNCTION_29_6() + 16) + 176))
        {
          break;
        }

        v149 = OUTLINED_FUNCTION_10_13();
        v151 = !v150(v149) && v382 == 1;
        if (!v151 || FigSampleCursorCopy(v395, &v393) || FigSampleCursorGetPresentationTimeStamp(v395, &time1))
        {
          break;
        }

        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(allocatorc, 0, MEMORY[0x1E695E9C0]);
        }

        if (!value)
        {
          value = CFArrayCreateMutable(allocatorc, 0, MEMORY[0x1E695E9C0]);
        }

        CFArrayAppendValue(Mutable, v147);
        CFArrayAppendValue(value, lhs.value);
        if (lhs.value)
        {
          CFRelease(lhs.value);
          lhs.value = 0;
        }

        v381 = time1;
        v41 = v398[0];
        v398[0] = v393;
        if (v393)
        {
          CFRetain(v393);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (v393)
        {
          CFRelease(v393);
          v393 = 0;
        }

        OUTLINED_FUNCTION_14_11();
      }

      while (CMTimeCompare(&time1, &time2) < 0);
      if (lhs.value)
      {
        CFRelease(lhs.value);
        lhs.value = 0;
      }

      if (v395)
      {
        CFRelease(v395);
        v395 = 0;
      }

      if (v393)
      {
        CFRelease(v393);
        v393 = 0;
      }
    }

    if (*v331)
    {
      CFRelease(*v331);
      *v331 = 0;
    }
  }

  else
  {
    Mutable = 0;
    value = 0;
  }

  started = videoMentorDependencyStateStartNewOrder(a1, (a1 + 744));
  if (started || ((FigSimpleMutexLock(), OUTLINED_FUNCTION_24_6(), v332 = a1 + 296, *&v368.value = *(a1 + 296), OUTLINED_FUNCTION_27_5(*(a1 + 312)), v366 = *(a1 + 344), v317 = (a1 + 344), FigSimpleMutexUnlock(), HIBYTE(v358) = 0, v153 = fabsf(v24 * a10) > a9, (v348 & 0x100000000) == 0) ? (v154 = v328) : (v154 = v153), time1 = v381, time2 = *v355, lhs = *v118, allocatord = v118, rhs = v367, v359 = v366, v357 = v369, LODWORD(v339) = v154, (started = videoMentorDependencyStateCopyCursorForDecodeWalk(a1, a1 + 744, 2, v38, v348, &time1, &time2, &lhs.value, v154, &rhs, &v359, &v357, v398[0], v350, MEMORY[0x1E6960C70], &v358 + 7, 0, &v391, &v390, &v396)) != 0))
  {
    LODWORD(v41) = started;
    goto LABEL_238;
  }

  v162 = HIBYTE(v358);
  LODWORD(v348) = HIBYTE(v358) == 0;
  if (v350 | v326)
  {
    LODWORD(v326) = 0;
  }

  else
  {
    time1 = *v355;
    videoMentorEnqueueEditBoundaryMarker(a1, v322, &time1);
    v162 = HIBYTE(v358);
    LODWORD(v326) = 1;
  }

  if (v162)
  {
    for (i = *(a1 + 552); i; i = *i)
    {
      if (v396)
      {
        v164 = v396;
        v165 = i[1];
        v166 = *(CMBaseObjectGetVTable() + 16);
        v167 = v166 ? v166 : 0;
        v168 = *(CMBaseObjectGetVTable() + 16);
        v169 = v168 ? v168 : 0;
        if (v167 != v169 || !*(v167 + 32) || (*(v169 + 32))(v165, v164) != -1)
        {
          continue;
        }
      }

      OUTLINED_FUNCTION_3_29(i[1], v155, v156, v157, v158, v159, v160, v161, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v302, v305, v308, v311, v313, v317, v319, v322, v324, v326, v328, v332, v334, v337, v339, v341, allocatord, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355);
      v171 = videoMentorCursorIsInPlayRange(v170, &time1, &time2, &v383);
      if (v171)
      {
        goto LABEL_458;
      }

      if (v383)
      {
        OUTLINED_FUNCTION_3_29(v171, i[1], v156, v157, v391, v390, v160, v161, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v302, v305, v308, v311, v313, v317, v319, v322, v324, v326, v328, v332, v334, v337, v339, v341, allocatord, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355);
        v272 = MEMORY[0x1E6960C70];
        v172 = OUTLINED_FUNCTION_36_4();
        LODWORD(v171) = videoMentorThreadGenerateAndEnqueueFrame(v172, v173, 0, 2, v174, v175, 0, v176, v258, v264, &time2, v272, v322);
        if (v171)
        {
          goto LABEL_458;
        }

        LODWORD(v348) = 0;
        v391 = 0;
      }
    }
  }

  videoMentorResetSavedListAndEnqueueMarker(a1);
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v178 = Count;
      v179 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v179);
        v181 = CFArrayGetValueAtIndex(value, v179);
        OUTLINED_FUNCTION_3_29(v181, v181, v182, v183, v391, v184, v185, v186, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v302, v305, v308, v311, v313, v317, v319, v322, v324, v326, v328, v332, v334, v337, v339, v341, allocatord, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355);
        LODWORD(v171) = videoMentorThreadResendCachedSampleBuffer(a1, v187, ValueAtIndex, 0, v188, 0, SHIDWORD(v326), &time1.value, &time2.value, MEMORY[0x1E6960C70], v322);
        if (v171)
        {
          break;
        }

        v391 = 0;
        if (v178 == ++v179)
        {
          goto LABEL_329;
        }
      }

LABEL_458:
      LODWORD(v41) = v171;
LABEL_456:
      v85 = v353;
      v38 = v322;
      goto LABEL_239;
    }

LABEL_329:
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (!v396)
  {
    LODWORD(v41) = 0;
    goto LABEL_343;
  }

  if (!HIDWORD(v319))
  {
    v314 = 0;
LABEL_346:
    OUTLINED_FUNCTION_44_6();
    v191 = !v33;
    HIDWORD(v311) = v191;
    goto LABEL_350;
  }

  if (!v397)
  {
    v314 = -1;
    goto LABEL_346;
  }

  v314 = FigSampleCursorCompareInDecodeOrder_0(v396, v397);
  OUTLINED_FUNCTION_44_6();
  v190 = !v33;
  HIDWORD(v311) = v190;
  if (!v189 && v314 == 1)
  {
    goto LABEL_340;
  }

LABEL_350:
  HIDWORD(v300) = 0;
  v309 = (a1 + 560);
  v306 = @"EagerlyFetchSampleDependencyAttributes";
  v303 = *MEMORY[0x1E695E4D0];
  v335 = *MEMORY[0x1E6960CC0];
  v329 = *(MEMORY[0x1E6960CC0] + 16);
  while (2)
  {
    BYTE6(v356) = 0;
    v357.value = 0;
    memset(&time1, 0, sizeof(time1));
    *&time2.value = v335;
    time2.epoch = v329;
    v382 = 0;
    FigSimpleMutexLock();
    OUTLINED_FUNCTION_24_6();
    *&v368.value = *v332;
    OUTLINED_FUNCTION_27_5(*(v332 + 16));
    v366 = *v317;
    FigSimpleMutexUnlock();
    v192 = fabsf(v24 * a10) > a9;
    v193 = v339;
    if ((v348 & 0x100000000) != 0)
    {
      v193 = v192;
    }

    LODWORD(v339) = v193;
    if (*(a1 + 116))
    {
      LODWORD(v41) = -1;
      goto LABEL_455;
    }

    v194 = FigSampleCursorGetPresentationTimeStamp(v396, &time1);
    if (v194)
    {
      LODWORD(v41) = v194;
      OUTLINED_FUNCTION_1_40();
      FigSignalErrorAtGM();
      goto LABEL_455;
    }

    OUTLINED_FUNCTION_29();
    if (!v33)
    {
      goto LABEL_356;
    }

    lhs = v381;
    OUTLINED_FUNCTION_25_6(v396, v195, v196, v197, v198, v199, v200, v201, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v303, v306, v309, v311, v314, v317, v319, v322, v324, v326, v329, v332, v335, *(&v335 + 1), v339, v341, allocatord);
    refreshed = videoMentorCursorIsInPlayRange(v202, &lhs, &rhs, &v383);
    if (refreshed)
    {
      goto LABEL_454;
    }

    LODWORD(v350) = v383;
    HIBYTE(v356) = v383;
    if ((v319 & 0x100000000) == 0)
    {
      v211 = 1;
      while (1)
      {
        refreshed = OUTLINED_FUNCTION_22_7(refreshed, v203, v204, v205, v206, v207, v208, v209, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v303, v306, v309, v311, v314, v317, v319, v322, v324, v326, v329, v332, v335, *(&v335 + 1), v339, v341, allocatord, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355, v356, v357.value);
        if (refreshed)
        {
          break;
        }

        if (v357.value)
        {
          v212 = *(v357.value + 76);
          if (v212 == 2)
          {
            v213 = *(v357.value + 56);
            if (v213 && (*(v213 + 58) || *(v213 + 56)))
            {
              goto LABEL_393;
            }
          }

          else if (v212 == 1)
          {
            goto LABEL_393;
          }
        }

        if (v371)
        {
          CFRelease(v371);
          v371 = 0;
        }

        lhs = v367;
        rhs = v366;
        v359 = v369;
        LODWORD(refreshed) = videoMentorDependencyStateFillRefreshGroupsUntil(a1, a1 + 744, v396, v322, v339, &lhs, &rhs, &v359, v211, &v371);
        if (refreshed)
        {
          break;
        }

        v214 = v371;
        if (v371)
        {
          if (v370)
          {
            CFRelease(v370);
            v370 = 0;
          }

          LODWORD(refreshed) = videoMentorDependencyStateAddSamplesToGraph(a1, a1 + 744, v322, v214, v339, &v370, 0);
          if (refreshed)
          {
            break;
          }

          v215 = CFArrayGetCount(v370);
          if (v215 >= 1)
          {
            v216 = v215;
            Mutable = 0;
            do
            {
              v217 = CFArrayGetValueAtIndex(v370, Mutable);
              if (v217[17] == 1)
              {
                v217[17] = 0;
              }

              Mutable = (Mutable + 1);
            }

            while (v216 != Mutable);
          }
        }

        v218 = CFArrayGetCount(*(a1 + 760));
        if (v218 >= 1)
        {
          v219 = v218;
          Mutable = 0;
          do
          {
            v220 = CFArrayGetValueAtIndex(*(a1 + 760), Mutable);
            if (!v220[56])
            {
              value = v220;
              videoMentorRefreshGroupClassifyNodes(v220);
              videoMentorAddRefreshGroupToProcess(a1 + 744, value);
            }

            Mutable = (Mutable + 1);
          }

          while (v219 != Mutable);
        }

        refreshed = videoMentorDependencyStateProcessRefreshGroups(a1 + 744);
        if (!*(a1 + 832) && !*(a1 + 777) && v211++ < 9)
        {
          continue;
        }

LABEL_393:
        LODWORD(refreshed) = OUTLINED_FUNCTION_22_7(refreshed, v203, v204, v205, v206, v207, v208, v209, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v303, v306, v309, v311, v314, v317, v319, v322, v324, v326, v329, v332, v335, *(&v335 + 1), v339, v341, allocatord, v348, v350, v351, v352, *(&v352 + 1), v353, v354, v355, v356, v357.value);
        if (refreshed)
        {
          break;
        }

        value = v357.value;
        if (v357.value)
        {
          v222 = *(v357.value + 76);
          if (!v222)
          {
            lhs.value = 1;
            *&lhs.timescale = v357.value;
            videoMentorDependencyStateExecuteAction((a1 + 744), &lhs);
            v222 = *(value + 19);
          }

          if (v222 == 2)
          {
            BYTE6(v356) = 1;
            OUTLINED_FUNCTION_29();
            if (v33)
            {
              lhs = *(value + 80);
              rhs = *(value + 128);
              CMTimeSubtract(&time2, &lhs, &rhs);
            }

            v223 = v348;
            if (v339)
            {
              v223 = 1;
            }

            LODWORD(v348) = v223;
          }

          goto LABEL_412;
        }

        goto LABEL_340;
      }

LABEL_454:
      LODWORD(v41) = refreshed;
LABEL_455:
      OUTLINED_FUNCTION_8_15();
      goto LABEL_456;
    }

    BYTE6(v356) = v383;
    if (!HIDWORD(v324))
    {
      if (v339)
      {
        if (!v383)
        {
          goto LABEL_434;
        }

        OUTLINED_FUNCTION_5_29();
        OUTLINED_FUNCTION_46_3();
        LODWORD(v348) = 1;
        LODWORD(refreshed) = videoMentorSimulateIFramesOnly(v224, &lhs, &rhs, v309, 1, &v356 + 6, &v390);
        if (refreshed)
        {
          goto LABEL_454;
        }

        value = 0;
      }

      else
      {
        if (!v383 || !v390)
        {
          LODWORD(refreshed) = videoMentorSimulateFrame(v396, &v380, &v378, &v356 + 6, &v390);
          if (refreshed)
          {
            goto LABEL_454;
          }
        }

        value = 0;
        LODWORD(v339) = 0;
      }

LABEL_412:
      if (!HIDWORD(v354) || !v350)
      {
        goto LABEL_416;
      }

      if (!HIDWORD(v324))
      {
        videoMentorUpdateUpcomingOutputPTSRangeAnnouncement(a1, v396, v397, v322, &v388, &v386, &v384);
        LODWORD(v350) = 1;
        goto LABEL_416;
      }

LABEL_415:
      videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
      goto LABEL_416;
    }

    if (!v383 && v377[25])
    {
      LODWORD(v350) = 0;
      value = 0;
      OUTLINED_FUNCTION_43_5(refreshed, v203, v204, v205, v206, v207, v208, v209, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v303, v306, v309, v311, v314, v317, v319, v322, v324, v326, v329, v332, v335, *(&v335 + 1), v339, v341, allocatord, v348, v350, v351, v210);
      goto LABEL_416;
    }

    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_46_3();
    v359 = v368;
    refreshed = videoMentorSimulateSyncFrameClustersOnly(v244, &lhs, &rhs, &v359, SHIDWORD(v324), &v356 + 6, &v356 + 7, &v390, &v372);
    if (refreshed)
    {
      goto LABEL_454;
    }

    value = 0;
    v253 = v348;
    if (!v390)
    {
      v253 = 1;
    }

    LODWORD(v348) = v253;
    LODWORD(v350) = HIBYTE(v356);
    OUTLINED_FUNCTION_43_5(refreshed, v245, v246, v247, v248, v249, v250, v251, v260, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v303, v306, v309, v311, v314, v317, v319, v322, v324, v326, v329, v332, v335, *(&v335 + 1), v339, v341, allocatord, v348, v350, v351, v252);
    if (HIDWORD(v354) && v350)
    {
      goto LABEL_415;
    }

LABEL_416:
    if (!BYTE6(v356))
    {
      v227 = 0;
      goto LABEL_432;
    }

    if (!(v350 | v326))
    {
      OUTLINED_FUNCTION_11_14(v355);
      videoMentorEnqueueEditBoundaryMarker(a1, v322, &lhs);
      v225 = 1;
      LODWORD(v326) = 1;
LABEL_427:
      v226 = 1;
      goto LABEL_428;
    }

    if (!v350)
    {
      v225 = 1;
      goto LABEL_427;
    }

    if (v324)
    {
      if (HIDWORD(v300))
      {
        v225 = 0;
        if (++HIDWORD(v300) == 2)
        {
          v226 = 3;
        }

        else
        {
          v226 = 0;
        }
      }

      else
      {
        v225 = 0;
        v226 = 5;
        HIDWORD(v300) = 1;
      }
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }

LABEL_428:
    FigBaseObject = FigSampleCursorGetFigBaseObject(v396);
    CMBaseObjectSetProperty(FigBaseObject, v306, v303);
    OUTLINED_FUNCTION_11_14(v355);
    OUTLINED_FUNCTION_25_6(v229, v230, v231, v232, v233, v234, v235, v236, v257, v263, v268, v271, v275, v278, v281, v284, v287, v290, v293, v296, v298, v300, v303, v306, v309, v311, v314, v317, v319, v322, v324, v326, v329, v332, v335, *(&v335 + 1), v339, v341, allocatord);
    v359 = time2;
    v237 = OUTLINED_FUNCTION_36_4();
    LODWORD(refreshed) = videoMentorThreadGenerateAndEnqueueFrame(v237, v238, v226, 0, v239, v240, 0, v241, v259, v265, &rhs, &v359, v322);
    if (refreshed)
    {
      goto LABEL_454;
    }

    v391 = 0;
    LODWORD(v348) = 0;
    if ((v225 & 1) == 0)
    {
      *v309 = time1;
    }

    v227 = 1;
LABEL_432:
    if ((v319 & 0x100000000) == 0)
    {
      videoMentorUpdateDecoderState(a1, value, v227);
      videoMentorDependencyStateForgetObsoleteRefreshGroups(a1 + 744, value);
      v357.value = 0;
    }

LABEL_434:
    if (FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v396, 1, &v382))
    {
LABEL_356:
      OUTLINED_FUNCTION_1_40();
      LODWORD(refreshed) = FigSignalErrorAtGM();
      goto LABEL_454;
    }

    OUTLINED_FUNCTION_38_3();
    if (v33)
    {
      v242 = HIDWORD(v319);
      if (!v397)
      {
        v242 = 0;
      }

      if (v242 == 1)
      {
        v314 = FigSampleCursorCompareInDecodeOrder_0(v396, v397);
      }

      v243 = BYTE4(v311);
      if (v314 != 1)
      {
        v243 = 1;
      }

      if ((v243 & 1) == 0)
      {
        goto LABEL_340;
      }

      continue;
    }

    break;
  }

  if ((v319 & 0x100000000) != 0)
  {
    if (v397 && FigSampleCursorCompareInDecodeOrder_0(v396, v397))
    {
      goto LABEL_472;
    }

LABEL_340:
    LODWORD(v41) = 0;
  }

  else
  {
    if (*(a1 + 832) && !FigSampleCursorCompareInDecodeOrder_0(*(a1 + 824), v396))
    {
      goto LABEL_340;
    }

LABEL_472:
    OUTLINED_FUNCTION_1_40();
    LODWORD(v41) = FigSignalErrorAtGM();
  }

  videoMentorEnqueueDrainAfterDecodingMarker(a1);
LABEL_343:
  v85 = v353;
  v38 = v322;
  v84 = HIDWORD(v350);
LABEL_154:
  if (v351 && !v41)
  {
    LODWORD(v41) = audioMentorEnqueueBufferConsumedMarker(a1, v351);
    v351 = 0;
  }

  OUTLINED_FUNCTION_8_15();
  ++*(a1 + 928);
LABEL_90:
  if (*(a1 + 492))
  {
    videoMentorPostCollectorCoherenceConduitNotification(a1);
    *(a1 + 492) = 0;
  }

  if (HIDWORD(v354) && (v41 + 1) <= 1)
  {
    videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
  }

  videoMentorThreadFinishPreroll(a1, 0, v38);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!*a1)
  {
    v96 = &kMentorNotification_StoppingDueToCompletion;
    if (v41)
    {
      v96 = &kMentorNotification_StoppingDueToError;
    }

    if (v41 == -1)
    {
      v97 = 0;
    }

    else
    {
      v97 = v41;
    }

    if (v41 == -1)
    {
      v96 = &kMentorNotification_ResettingDueToModeSwitch;
    }

    v98 = FigMentorNotificationPayloadCreate(*v96, v38, v97, *(a1 + 520), v351, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v98)
    {
      CFRelease(v98);
    }
  }

  if (v85 && v398[0])
  {
    CFRelease(v398[0]);
    v398[0] = 0;
  }

  if (v84 && v397)
  {
    CFRelease(v397);
    v397 = 0;
  }

  if (v396)
  {
    CFRelease(v396);
    v396 = 0;
  }

  if (v395)
  {
    CFRelease(v395);
    v395 = 0;
  }

  if (v394)
  {
    CFRelease(v394);
    v394 = 0;
  }

  if (v393)
  {
    CFRelease(v393);
    v393 = 0;
  }

  if (v392)
  {
    CFRelease(v392);
    v392 = 0;
  }

  videoMentorThrottlingStateFree(a1 + 584);
  v99 = *(a1 + 512);
  if (v99)
  {
    CFRelease(v99);
    *(a1 + 512) = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v371)
  {
    CFRelease(v371);
  }

  if (v370)
  {
    CFRelease(v370);
  }
}

opaqueCMSampleBuffer *videoMentorGetCachedVideoFrameForCursor(uint64_t a1, const void *a2, CFArrayRef theArray, uint64_t a4)
{
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v42.start.value = *MEMORY[0x1E6960C98];
  *&v42.start.epoch = v4;
  *&v42.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v34 = *MEMORY[0x1E6960C70];
  *&v40.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v40.epoch = v5;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v11 = Count;
      if (!videoMentorGetCursorPTSRange(a2, &v42))
      {
        start = v42.start;
        range = v42;
        CMTimeRangeGetEnd(&v40, &range);
        FigSimpleMutexLock();
        v12 = *(a1 + 64);
        if (v12)
        {
          v12(*(a1 + 72), a4, 0, &start, &v40);
        }

        FigSimpleMutexUnlock();
        if (v11 >= 1)
        {
          for (i = 0; v11 != i; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            *&range.start.value = v34;
            range.start.epoch = v5;
            if (!ValueAtIndex)
            {
              break;
            }

            v15 = ValueAtIndex;
            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 != CMSampleBufferGetTypeID())
            {
              break;
            }

            PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&range.start, v15);
            OUTLINED_FUNCTION_660(PresentationTimeStamp, v18, v19, v20, v21, v22, v23, v24, v34, *(&v34 + 1), time2.value, *&time2.timescale, time2.epoch, v36, time1.value, *&time1.timescale, time1.epoch, v38, *&range.start.value);
            time2 = start;
            v25 = CMTimeCompare(&time1, &time2);
            if ((v25 & 0x80000000) == 0)
            {
              OUTLINED_FUNCTION_660(v25, v26, v27, v28, v29, v30, v31, v32, v34, *(&v34 + 1), time2.value, *&time2.timescale, time2.epoch, v36, time1.value, *&time1.timescale, time1.epoch, v38, *&range.start.value);
              time2 = v40;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                return v15;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t videoMentorDependencyStateStartNewOrder(uint64_t a1, uint64_t *a2)
{
  videoMentorDependencyStateReset(a2);
  result = videoMentorFrameNodeCreate(a1, *MEMORY[0x1E695E480], -1, 0, a2);
  if (!result)
  {
    v5 = *a2;
    *(v5 + 64) = 0;
    *(v5 + 68) = 0x200000001;
    *(v5 + 76) = 2;
    v6 = OUTLINED_FUNCTION_383();
    Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
    a2[1] = Mutable;
    if (Mutable && (v11 = OUTLINED_FUNCTION_383(), v14 = CFArrayCreateMutable(v11, v12, v13), (a2[2] = v14) != 0) && (v15 = OUTLINED_FUNCTION_383(), v18 = CFArrayCreateMutable(v15, v16, v17), (a2[8] = v18) != 0) && (v19 = OUTLINED_FUNCTION_383(), v22 = CFArrayCreateMutable(v19, v20, v21), (a2[12] = v22) != 0))
    {
      return 0;
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t videoMentorDependencyStateCopyCursorForDecodeWalk(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __int128 *a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, char a14, uint64_t *a15, uint64_t a16, uint64_t a17, char *a18, _BYTE *a19, void *a20)
{
  v243 = a4;
  HIDWORD(v242) = a3;
  v277 = *MEMORY[0x1E69E9840];
  v262 = 0;
  v263 = 0;
  theSet = 0;
  v261 = 0;
  v258 = 0;
  v259 = 0;
  v257 = 0;
  v25 = *(MEMORY[0x1E6960C98] + 16);
  v253 = *MEMORY[0x1E6960C98];
  v254 = v25;
  v255 = *(MEMORY[0x1E6960C98] + 32);
  OUTLINED_FUNCTION_29();
  v239 = v27;
  v240 = v26;
  v232 = v28;
  v235 = v29;
  if (v34)
  {
    OUTLINED_FUNCTION_40_3(MEMORY[0x1E6960CC0]);
    *v271 = *a15;
    v30 = OUTLINED_FUNCTION_9_14();
    v32 = CMTimeCompare(v30, v31);
    LODWORD(v241) = v32 >> 31;
    v27 = v239;
    v26 = v240;
    v33 = v32 >= 0;
  }

  else
  {
    LODWORD(v241) = 0;
    v33 = 1;
  }

  HIDWORD(v238) = a5;
  v34 = a5 == 1 || *(a1 + 528) == 0;
  v35 = !v34;
  if (v27)
  {
    *v27 = 0;
  }

  if (v26)
  {
    *v26 = 0;
  }

  if (a18)
  {
    *a18 = 0;
  }

  if (a19)
  {
    *a19 = 1;
  }

  v233 = a18;
  if (a20)
  {
    *a20 = 0;
  }

  v237 = a20;
  v36 = *(a1 + 536);
  if (v36)
  {
    videoMentorGetCursorPTSRange(v36, &v253);
  }

  v274 = v253;
  v275 = v254;
  v276 = v255;
  *v271 = *a6;
  v37 = OUTLINED_FUNCTION_9_14();
  v39 = CMTimeRangeContainsTime(v37, v38) && ((~DWORD1(v255) & 5) != 0 || v254 == *(a6 + 16));
  *v271 = *a6;
  v40 = OUTLINED_FUNCTION_35_4();
  videoMentorRemapTime(v40, v243, 0, v41, v42);
  *(a2 + 36) = v274;
  *(a2 + 52) = v275;
  v43 = *a8;
  *(a2 + 120) = *(a8 + 2);
  *(a2 + 104) = v43;
  *v271 = *a8;
  v44 = OUTLINED_FUNCTION_35_4();
  videoMentorRemapTime(v44, v243, 0, v45, v46);
  *(a2 + 128) = v274;
  *(a2 + 144) = v275;
  v47 = v33 & v35;
  HIDWORD(v234) = v39;
  if (HIDWORD(v242) == 1)
  {
    v48 = v47 & v39;
  }

  else
  {
    v48 = 0;
  }

  if (HIDWORD(v242) == 1 && v47)
  {
    v264 = *a6;
    v265 = *(a6 + 16);
    v49 = a1 + 552;
    while (1)
    {
      v49 = *v49;
      if (!v49)
      {
        break;
      }

      v50 = *(v49 + 32);
      v274 = *(v49 + 16);
      v275 = v50;
      v276 = *(v49 + 48);
      *v271 = v264;
      v51 = OUTLINED_FUNCTION_9_14();
      if (CMTimeRangeContainsTime(v51, v52))
      {
        v48 = 1;
        break;
      }
    }
  }

  v53 = a13;
  if (v241)
  {
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v54)
    {
      goto LABEL_256;
    }

    NodeForCursor = v54(a13, &v259);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v56 = v259;
    v57 = *a15;
    v58 = *(a15 + 2);
    memset(v271, 0, 24);
    v59 = CMTimeMake(v271, -v57, v58);
    OUTLINED_FUNCTION_47_3(v59, v60, v61, v62, v63, v64, v65, v66, v213, v214, v215, v216, v217, v219, v221, v223, v225, v227, v230, v232, a18, v234, v235, a20, v238, v239, v240, v241, v242, v243, v244, v246, v247, v249, v250, *(&v250 + 1), v251, v252, v253, *(&v253 + 1), v254, *(&v254 + 1), v255, *(&v255 + 1), v256, v257, v258, v259, theSet, v261, v262, v263, v264, *(&v264 + 1), v265, v266, v267, v268, v269, cf, *v271);
    v67 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (!v67)
    {
      goto LABEL_256;
    }

    v274 = v264;
    *&v275 = v265;
    NodeForCursor = v67(v56, &v274);
    if (NodeForCursor)
    {
      v68 = NodeForCursor == -12840;
    }

    else
    {
      v68 = 1;
    }

    if (!v68)
    {
      goto LABEL_116;
    }

    v231 = a19;
    v69 = v259;
    v70 = a1;
    v71 = 0;
  }

  else
  {
    v70 = a1;
    v69 = a13;
    v231 = a19;
    v71 = a19;
  }

  v72 = videoMentorCopySyncCursorForCursor(v70, v69, &v263, v71);
  if (v72)
  {
    goto LABEL_257;
  }

  if (v47)
  {
    v73 = v263;
    v74 = *(CMBaseObjectGetVTable() + 16);
    if (v74)
    {
      v75 = v74;
      if (!v73)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v75 = 0;
      if (!v73)
      {
        goto LABEL_56;
      }
    }

    v76 = *(CMBaseObjectGetVTable() + 16);
    if (v76)
    {
      v77 = v76;
LABEL_57:
      if (v75 == v77 && *(v75 + 32))
      {
        v86 = OUTLINED_FUNCTION_15_9();
        v87(v86, v73);
      }

      goto LABEL_58;
    }

LABEL_56:
    v77 = 0;
    goto LABEL_57;
  }

LABEL_58:
  v78 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v78)
  {
    goto LABEL_256;
  }

  NodeForCursor = v78(a13, a2 + 24);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

  v79 = v263;
  v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v80)
  {
    goto LABEL_256;
  }

  NodeForCursor = v80(v79, a2 + 80);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

  v81 = a9;
  OUTLINED_FUNCTION_26_8();
  v224 = v83;
  v226 = v82;
  v222 = v84;
  if (v34)
  {
    v85 = CFRetain(a13);
    v262 = v85;
LABEL_115:
    v121 = OUTLINED_FUNCTION_625();
    NodeForCursor = videoMentorDependencyStateAddSamplesToGraph(v121, v122, v243, v85, v81, 0, v123);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v124 = OUTLINED_FUNCTION_625();
    NodeForCursor = videoMentorDependencyStateGetNodeForCursor(v124, v125, v53, v243, 0, v126);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v127 = v257;
    if (!v257)
    {
      goto LABEL_290;
    }

    if (!v241)
    {
      OUTLINED_FUNCTION_26_8();
      if (v34 && *(v127 + 76) != 2)
      {
        *&v274 = 1;
        *(&v274 + 1) = v127;
        videoMentorDependencyStateExecuteAction(a2, &v274);
      }

      goto LABEL_149;
    }

    v128 = v259;
    *v271 = 0;
    v129 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v129)
    {
LABEL_144:
      v72 = 4294954514;
      goto LABEL_146;
    }

    v130 = v129(v128, v271);
    if (v130)
    {
LABEL_292:
      v72 = v130;
      goto LABEL_146;
    }

    do
    {
      v131 = *(CMBaseObjectGetVTable() + 16);
      if (v131)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }

      if (v53 && (v133 = *(CMBaseObjectGetVTable() + 16)) != 0)
      {
        v134 = v133;
      }

      else
      {
        v134 = 0;
      }

      if (v132 == v134)
      {
        if (*(v132 + 32))
        {
          v135 = OUTLINED_FUNCTION_15_9();
          if (v136(v135, v53) == 1)
          {
            v72 = 0;
            goto LABEL_146;
          }
        }
      }

      *&v264 = 0;
      *&v250 = 0;
      v137 = OUTLINED_FUNCTION_625();
      v130 = videoMentorDependencyStateGetNodeForCursor(v137, v138, v139, v243, 0, v140);
      if (v130)
      {
        goto LABEL_292;
      }

      if (v264 && *(v264 + 76) != 2)
      {
        *&v274 = 1;
        *(&v274 + 1) = v264;
        videoMentorDependencyStateExecuteAction(a2, &v274);
      }

      v141 = *v271;
      v142 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v142)
      {
        goto LABEL_144;
      }

      v130 = v142(v141, 1, &v250);
      if (v130)
      {
        goto LABEL_292;
      }
    }

    while (v250 == 1);
    VTable = CMBaseObjectGetVTable();
    if (*(VTable + 16))
    {
      v204 = *(VTable + 16);
    }

    else
    {
      v204 = 0;
    }

    v229 = v81;
    if (v53)
    {
      v207 = v53;
      v208 = *(CMBaseObjectGetVTable() + 16);
      if (v208)
      {
        v209 = v208;
        goto LABEL_285;
      }
    }

    else
    {
      v207 = 0;
    }

    v209 = 0;
LABEL_285:
    if (v204 == v209 && *(v204 + 32))
    {
      v210 = OUTLINED_FUNCTION_15_9();
      v53 = v207;
      v211(v210, v207);
      v72 = 0;
    }

    else
    {
      v72 = 0;
      v53 = v207;
    }

    v81 = v229;
LABEL_146:
    if (*v271)
    {
      CFRelease(*v271);
    }

    if (v72)
    {
      goto LABEL_257;
    }

LABEL_149:
    if (!theSet)
    {
LABEL_191:
      v143 = HIDWORD(v238);
      goto LABEL_192;
    }

    v143 = HIDWORD(v238);
    if (CFSetGetCount(theSet) < 1)
    {
LABEL_192:
      v212 = HIDWORD(v234);
LABEL_193:
      v179 = v239;
      v180 = v240;
      if (v143 == 2)
      {
        if (v48)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            PendingSampleBufferCount = FigSampleBufferConsumerGetPendingSampleBufferCount(*(a1 + 24));
          }

          else
          {
            PendingSampleBufferCount = 0;
          }

          if (PendingSampleBufferCount <= 0)
          {
            v186 = *(a1 + 24);
            v187 = *MEMORY[0x1E6960410];
            v188 = *MEMORY[0x1E695E4D0];
            v274 = *a6;
            *&v275 = *(a6 + 16);
            FigSampleBufferConsumerSetAttachmentOnPendingSampleBuffersInPTSRange(v186, v187, v188, MEMORY[0x1E6960C80], &v274);
            v48 = 1;
            v181 = 0;
            if (v231)
            {
              *v231 = 1;
            }
          }

          else
          {
            v48 = 0;
            v181 = 1;
          }

          v179 = v239;
          v180 = v240;
LABEL_215:
          if (v179)
          {
            *v179 = v48;
          }

          if (HIDWORD(v242) == 1)
          {
            v189 = v181;
          }

          else
          {
            v189 = 1;
          }

          if (v189)
          {
            v190 = 0;
          }

          else
          {
            v190 = v212;
          }

          if (v181)
          {
            v191 = *(a1 + 24);
            v192 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v192)
            {
              v192(v191);
            }

            videoMentorResetSavedListAndEnqueueMarker(a1);
            *(a1 + 544) = -2;
            v193 = *(a1 + 528);
            if (v193)
            {
              CFRelease(v193);
              *(a1 + 528) = 0;
            }

            v194 = MEMORY[0x1E6960C70];
            v195 = *(a1 + 536);
            if (v195)
            {
              CFRelease(v195);
              *(a1 + 536) = 0;
            }

            *(a1 + 560) = *v194;
            *(a1 + 576) = *(v194 + 16);
            v180 = v240;
          }

          if (v180)
          {
            *v180 = v190;
          }

          if (v258)
          {
            CFRelease(v258);
            v258 = 0;
          }

          if (v190)
          {
            if (v237)
            {
LABEL_237:
              v196 = 0;
              goto LABEL_238;
            }

LABEL_270:
            v72 = 0;
            goto LABEL_257;
          }

          if (v233)
          {
            if (v143)
            {
              if (v212 & v48)
              {
                *v233 = 0;
                if (!v237)
                {
                  goto LABEL_270;
                }

                goto LABEL_249;
              }

              v197 = 1;
            }

            else
            {
              v197 = 0;
            }

            *v233 = v197;
          }

          if (!v237)
          {
            goto LABEL_270;
          }

          if (!v48)
          {
            v196 = v263;
            if (v263)
            {
              NodeForCursor = FigSampleCursorCopy(v263, &v258);
              if (NodeForCursor)
              {
                goto LABEL_116;
              }

              v196 = v258;
            }

            goto LABEL_238;
          }

LABEL_249:
          *&v274 = 0;
          v198 = *(a1 + 528);
          v199 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v199)
          {
            goto LABEL_256;
          }

          NodeForCursor = v199(v198, &v258);
          if (NodeForCursor)
          {
            goto LABEL_116;
          }

          v200 = v258;
          v201 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (!v201)
          {
LABEL_256:
            v72 = 4294954514;
            goto LABEL_257;
          }

          NodeForCursor = v201(v200, 1, &v274);
          if (NodeForCursor)
          {
            goto LABEL_116;
          }

          v196 = v258;
          if (v274 != 1 && v258)
          {
            CFRelease(v258);
            goto LABEL_237;
          }

LABEL_238:
          v72 = 0;
          *v237 = v196;
          v258 = 0;
          goto LABEL_257;
        }
      }

      else
      {
        if (v143 != 1)
        {
          v181 = 0;
          if (v143)
          {
            v48 = 0;
          }

          goto LABEL_215;
        }

        v48 = 0;
      }

      v181 = 1;
      goto LABEL_215;
    }

    v144 = v263;
    v145 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v145)
    {
      goto LABEL_256;
    }

    NodeForCursor = v145(v144, &v258);
    if (NodeForCursor)
    {
      goto LABEL_116;
    }

    v228 = v81;
    v146 = *(CMBaseObjectGetVTable() + 16);
    if (v146)
    {
      v147 = v146;
    }

    else
    {
      v147 = 0;
    }

    if (v53 && (v148 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v149 = v148;
    }

    else
    {
      v149 = 0;
    }

    if (v147 == v149)
    {
      if (*(v147 + 32))
      {
        v177 = OUTLINED_FUNCTION_15_9();
        if (v178(v177, v53) == 1)
        {
          v48 = 1;
          v212 = HIDWORD(v234);
          goto LABEL_193;
        }
      }
    }

    *&v250 = 0;
    if (*(a1 + 116))
    {
      v72 = 0xFFFFFFFFLL;
      goto LABEL_257;
    }

    OUTLINED_FUNCTION_26_8();
    if (!v34)
    {
      v150 = 1;
      do
      {
        v151 = OUTLINED_FUNCTION_625();
        NodeForCursor = videoMentorDependencyStateGetNodeForCursor(v151, v152, v153, v243, 0, v154);
        if (NodeForCursor)
        {
          goto LABEL_116;
        }

        if (v85)
        {
          CFRelease(v85);
          v262 = 0;
        }

        OUTLINED_FUNCTION_40_3(v222);
        OUTLINED_FUNCTION_11_14(v224);
        OUTLINED_FUNCTION_41_3(v226);
        v155 = OUTLINED_FUNCTION_625();
        NodeForCursor = videoMentorDependencyStateFillRefreshGroupsUntil(v155, v156, v157, v243, v228, v158, v159, v160, v150, &v262);
        if (NodeForCursor)
        {
          goto LABEL_116;
        }

        v85 = v262;
        if (v262)
        {
          if (v261)
          {
            CFRelease(v261);
            v261 = 0;
          }

          v161 = OUTLINED_FUNCTION_625();
          NodeForCursor = videoMentorDependencyStateAddSamplesToGraph(v161, v162, v243, v85, v228, v163, 0);
          if (NodeForCursor)
          {
            goto LABEL_116;
          }

          Count = CFArrayGetCount(v261);
          if (Count >= 1)
          {
            v165 = Count;
            for (i = 0; i != v165; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v261, i);
              if (ValueAtIndex[17] == 1)
              {
                ValueAtIndex[17] = 0;
              }
            }
          }
        }

        v168 = CFArrayGetCount(*(a2 + 16));
        v169 = v168;
        if (v168 > 10000)
        {
          LODWORD(v264) = 0;
          LOBYTE(cf) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v184 = v264;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, cf))
          {
            v185 = v184;
          }

          else
          {
            v185 = v184 & 0xFFFFFFFE;
          }

          if (v185)
          {
            *v271 = 136315906;
            *&v271[4] = "videoMentorDependencyStateCopyCursorForDecodeWalk";
            *&v271[12] = 1024;
            *&v271[14] = -12836;
            *&v271[18] = 2080;
            *&v271[20] = "videoMentorDependencyStateCopyCursorForDecodeWalk";
            v272 = 1024;
            v273 = v169;
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_16();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          NodeForCursor = videoMentorReportIssueWithRefreshNode(0);
          goto LABEL_116;
        }

        if (v168 >= 1)
        {
          for (j = 0; v169 != j; ++j)
          {
            v171 = CFArrayGetValueAtIndex(*(a2 + 16), j);
            if (!v171[56])
            {
              v172 = v171;
              NodeForCursor = videoMentorRefreshGroupClassifyNodes(v171);
              if (NodeForCursor)
              {
                goto LABEL_116;
              }

              videoMentorAddRefreshGroupToProcess(a2, v172);
            }
          }
        }

        videoMentorDependencyStateProcessRefreshGroups(a2);
      }

      while (++v150 != 10);
    }

    v173 = OUTLINED_FUNCTION_625();
    NodeForCursor = videoMentorDependencyStateGetNodeForCursor(v173, v174, v175, v243, 0, v176);
    if (!NodeForCursor)
    {
LABEL_290:
      NodeForCursor = FigSignalErrorAtGM();
    }

LABEL_116:
    v72 = NodeForCursor;
    goto LABEL_257;
  }

  OUTLINED_FUNCTION_41_3(v235);
  v274 = *v88;
  *&v275 = *(v88 + 16);
  *v271 = *v89;
  *&v271[16] = *(v89 + 16);
  v250 = *v90;
  v251 = *(v90 + 16);
  v91 = OUTLINED_FUNCTION_625();
  NodeForCursor = videoMentorDependencyStateFillRefreshGroupsUntil(v91, v92, a13, v243, a9, v93, v94, v95, 1, &v262);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

  v96 = v262;
  if (!v262)
  {
    if (v79)
    {
      CFRelease(v79);
      v263 = 0;
    }

    goto LABEL_191;
  }

  if (!a14)
  {
    goto LABEL_72;
  }

  v97 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v97)
  {
    goto LABEL_256;
  }

  NodeForCursor = v97(a13, &v264);
  if (NodeForCursor)
  {
    goto LABEL_116;
  }

LABEL_72:
  v250 = v264;
  v251 = v265;
  v245 = *a8;
  v248 = *(a8 + 2);
  v269 = 0;
  cf = 0;
  v98 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v98)
  {
LABEL_98:
    v72 = 4294954514;
    goto LABEL_99;
  }

  v99 = v98(v79, &v269);
  if (v99)
  {
LABEL_291:
    v72 = v99;
LABEL_99:
    v81 = a9;
LABEL_109:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_111;
  }

  v100 = 0;
  v236 = 0;
  v218 = *MEMORY[0x1E695E480];
  do
  {
    v101 = *(CMBaseObjectGetVTable() + 16);
    if (v101)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v103 = *(CMBaseObjectGetVTable() + 16);
    if (v103)
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    if (v102 == v104)
    {
      if (*(v102 + 32))
      {
        v105 = OUTLINED_FUNCTION_15_9();
        if (v106(v105, v96) == 1)
        {
          goto LABEL_107;
        }
      }
    }

    v267 = 0;
    v268 = 0;
    v107 = OUTLINED_FUNCTION_625();
    v99 = videoMentorDependencyStateGetNodeForCursor(v107, v108, v109, v243, 1, v110);
    if (v99)
    {
      goto LABEL_291;
    }

    v111 = v267;
    if (!*(v267 + 56))
    {
      HIBYTE(v266) = 0;
      v274 = v250;
      *&v275 = v251;
      *v271 = v245;
      *&v271[16] = v248;
      v114 = videoMentorCursorIsInPlayRange(v269, &v274, v271, &v266 + 7);
      if (v114)
      {
        v72 = v114;
        v220 = v53;
        v115 = v231;
      }

      else
      {
        if (HIBYTE(v266))
        {
          goto LABEL_86;
        }

        if (v236)
        {
          goto LABEL_95;
        }

        v220 = v53;
        v115 = v231;
        v116 = videoMentorRefreshGroupCreate(v218, MEMORY[0x1E6960C70], &cf);
        if (!v116)
        {
          v100 = cf;
          *(cf + 58) = 1;
          v53 = v220;
LABEL_95:
          videoMentorRefreshGroupAddNode(v100, v111);
          v236 = v100;
          goto LABEL_86;
        }

        v72 = v116;
      }

      v231 = v115;
      v53 = v220;
      goto LABEL_99;
    }

LABEL_86:
    v112 = v269;
    v113 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v113)
    {
      goto LABEL_98;
    }

    v99 = v113(v112, 1, &v268);
    if (v99)
    {
      goto LABEL_291;
    }
  }

  while (v268 == 1);
  v117 = CMBaseObjectGetVTable();
  if (*(v117 + 16))
  {
    v118 = *(v117 + 16);
  }

  else
  {
    v118 = 0;
  }

  v119 = *(CMBaseObjectGetVTable() + 16);
  if (v119)
  {
    v120 = v119;
  }

  else
  {
    v120 = 0;
  }

  if (v118 == v120 && *(v118 + 32))
  {
    v205 = OUTLINED_FUNCTION_15_9();
    v206(v205, v96);
  }

LABEL_107:
  v81 = a9;
  if (v100)
  {
    CFArrayInsertValueAtIndex(*(a2 + 16), 0, v100);
    v72 = 0;
    goto LABEL_109;
  }

  v72 = 0;
LABEL_111:
  if (v269)
  {
    CFRelease(v269);
  }

  if (!v72)
  {
    v85 = v262;
    goto LABEL_115;
  }

LABEL_257:
  if (v259)
  {
    CFRelease(v259);
  }

  if (v263)
  {
    CFRelease(v263);
  }

  if (v262)
  {
    CFRelease(v262);
  }

  if (v258)
  {
    CFRelease(v258);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (v261)
  {
    CFRelease(v261);
  }

  return v72;
}

uint64_t videoMentorThreadResendCachedSampleBuffer(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, int a4, int a5, int a6, int a7, __int128 *a8, __int128 *a9, __int128 *a10, const void *a11)
{
  sampleBufferOut = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  if (videoMentorThreadWaitForOutputQueueToDropBelowHighWater(a1, a11))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v20)
  {
    return 4294954514;
  }

  v21 = v20(a2, &sampleTimingArray.decodeTimeStamp);
  if (v21)
  {
    return v21;
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v22)
  {
    return 4294954514;
  }

  v21 = v22(a2, &sampleTimingArray);
  if (v21)
  {
    return v21;
  }

  v23 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v23)
  {
    return 4294954514;
  }

  v21 = v23(a2, &sampleTimingArray.presentationTimeStamp);
  if (v21)
  {
    return v21;
  }

  v36 = 0;
  CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], a3, 1, &sampleTimingArray, &sampleBufferOut);
  v29 = a1;
  v24 = a4 == 1;
  if (!a7)
  {
    v24 = 0;
  }

  LOBYTE(v36) = v24;
  if (a7)
  {
    v25 = a4 == 0;
  }

  else
  {
    v25 = 0;
  }

  BYTE1(v36) = v25;
  v30 = *a8;
  v31 = *(a8 + 2);
  v32 = *a9;
  v33 = *(a9 + 2);
  v34 = *a10;
  v35 = *(a10 + 2);
  BYTE2(v36) = a6;
  videoMentorRemapSBufTiming(&v29, a11, sampleBufferOut);
  if (a6)
  {
    CMSetAttachment(sampleBufferOut, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
  }

  v19 = videoMentorThreadSendSampleBuffer(a1, sampleBufferOut, a2, a4, 3, a5, 0, 0);
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  return v19;
}