uint64_t clearAllTracksHeaderDataCompleteFlag(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 488));
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = CFArrayGetValueAtIndex(*(a1 + 488), i);
      *(result + 600) = 0;
    }
  }

  return result;
}

double clearAllTracksFirstSampleInfoInFragment(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v11 = *(MEMORY[0x1E6960CF0] + 48);
      v12 = *(MEMORY[0x1E6960CF0] + 32);
      v7 = *(MEMORY[0x1E6960CF0] + 64);
      v9 = *MEMORY[0x1E6960CF0];
      v10 = *(MEMORY[0x1E6960CF0] + 16);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v6);
        ValueAtIndex[53] = v12;
        ValueAtIndex[54] = v11;
        *(ValueAtIndex + 110) = v7;
        ValueAtIndex[51] = v9;
        ValueAtIndex[52] = v10;
        ++v6;
        *(ValueAtIndex + 452) = 0;
        result = 0.0;
        *(ValueAtIndex + 888) = 0u;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t getDecodeTimeForTrackFragmentInitialBaseMediaDecodeTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 424);
  if (result)
  {
    result = CFArrayGetCount(result);
    v5 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v5 + 16);
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        result = CFArrayGetValueAtIndex(*(a1 + 424), v7);
        if (*(result + 60))
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_9;
        }
      }

      v9 = *(result + 48);
      *(a2 + 16) = *(result + 64);
      *a2 = v9;
    }
  }

  else
  {
    v8 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v8 + 16);
  }

LABEL_9:
  if ((*(a2 + 12) & 1) == 0)
  {
    *a2 = *(a1 + 232);
    *(a2 + 16) = *(a1 + 248);
  }

  if (*a1 == 1936684398)
  {
    result = FigCFEqual();
    v10 = result != 0;
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 492) && !v10)
  {
    FirstEditBuilder = getFirstEditBuilder(a1);
    Count = CFArrayGetCount(*(FirstEditBuilder + 24));
    result = editMediaTimeIsValid(*(FirstEditBuilder + 16));
    if (Count + result)
    {
      v13 = *(editBuilderGetEditMediaTimeAtIndex(FirstEditBuilder, 0) + 60);
      lhs = *a2;
      return CMTimeSubtract(a2, &lhs, &v13);
    }
  }

  return result;
}

CMBufferRef trackBufferQueueGetHead(uint64_t a1)
{
  result = CMBufferQueueGetHead(*(a1 + 616));
  if (!result)
  {
    v3 = *(a1 + 608);

    return CMBufferQueueGetHead(v3);
  }

  return result;
}

uint64_t isFirstSampleAttachmentSync(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (CFArrayGetCount(a1))
  {
    CFArrayGetValueAtIndex(a1, 0);
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 1;
}

uint64_t createSynthesizedAudioPrimingSampleBuffer(CMTime *a1, CMTime *a2, CMSampleBufferRef sbuf, uint64_t a4, uint64_t a5, CMTime *a6, void *a7, void *a8, CMTime *a9)
{
  blockBufferOut = 0;
  v99 = 0;
  timingArrayEntriesNeededOut = 0;
  sizeArrayEntriesNeededOut = 0;
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  lhs = *a1;
  rhs = *a6;
  CMTimeAdd(&v102, &lhs, &rhs);
  rhs = *a2;
  v94 = v102;
  CMTimeSubtract(&lhs, &rhs, &v94);
  v101 = *&lhs.timescale;
  v17 = *a4;
  rhs = lhs;
  CMTimeConvertScale(&lhs, &rhs, v17, kCMTimeRoundingMethod_RoundAwayFromZero);
  v101 = *&lhs.timescale;
  v18 = *(a4 + 20);
  v19 = (LODWORD(lhs.value) + v18 - 1) / v18;
  CMTimeMake(&v94, v19 * v18, *a4);
  lhs = v94;
  v93 = *a6;
  CMTimeAdd(&rhs, &lhs, &v93);
  v20 = CMSampleBufferGetSampleSizeArray(sbuf, 0, 0, &sizeArrayEntriesNeededOut);
  if (v20)
  {
    v51 = v20;
    sampleTimingArray = 0;
    sampleSizeArray = 0;
    goto LABEL_51;
  }

  v90 = a5;
  if (sizeArrayEntriesNeededOut == 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = sizeArrayEntriesNeededOut + v19;
  }

  v22 = v19;
  if (v21)
  {
    sampleSizeArray = 0;
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v21 >> 61)
    {
      goto LABEL_49;
    }

    v24 = 8 * v21;
    if (!(8 * v21))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v24 = 0;
  }

  sampleSizeArray = malloc_type_malloc(v24, 0x100004000313F17uLL);
  if (!sampleSizeArray)
  {
    goto LABEL_49;
  }

  SampleSize = CMSampleBufferGetSampleSize(sbuf, 0);
  v26 = *MEMORY[0x1E695E480];
  appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (appended)
  {
    goto LABEL_50;
  }

  v92 = v22;
  if (v22 >= 1)
  {
    v28 = 0;
    do
    {
      appended = CMBlockBufferAppendBufferReference(blockBufferOut, DataBuffer, 0, SampleSize, 0);
      if (appended)
      {
        goto LABEL_50;
      }
    }

    while (++v28 < v92);
  }

  appended = CMBlockBufferAppendBufferReference(blockBufferOut, DataBuffer, 0, 0, 0);
  if (appended)
  {
    goto LABEL_50;
  }

  if (v21 == 1)
  {
    *sampleSizeArray = SampleSize;
  }

  else
  {
    if (v92 >= 1)
    {
      v29 = (v92 + 1) & 0xFFFFFFFE;
      v30 = vdupq_n_s64(v92 - 1);
      v31 = xmmword_196E73090;
      v32 = sampleSizeArray + 1;
      v33 = vdupq_n_s64(2uLL);
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v30, v31));
        if (v34.i8[0])
        {
          *(v32 - 1) = SampleSize;
        }

        if (v34.i8[4])
        {
          *v32 = SampleSize;
        }

        v31 = vaddq_s64(v31, v33);
        v32 += 2;
        v29 -= 2;
      }

      while (v29);
    }

    appended = CMSampleBufferGetSampleSizeArray(sbuf, sizeArrayEntriesNeededOut, &sampleSizeArray[v92], 0);
    if (appended)
    {
      goto LABEL_50;
    }
  }

  appended = CMSampleBufferGetSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
  if (appended)
  {
LABEL_50:
    v51 = appended;
    sampleTimingArray = 0;
    goto LABEL_51;
  }

  v85 = a8;
  v35 = timingArrayEntriesNeededOut == 1 ? 1 : timingArrayEntriesNeededOut + v92;
  if (v35)
  {
    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v35 > 0x38E38E38E38E38ELL)
    {
      goto LABEL_49;
    }

    v36 = 72 * v35;
    if (!(72 * v35))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v36 = 0;
  }

  v86 = malloc_type_malloc(v36, 0x1000040FF89C88EuLL);
  if (!v86)
  {
LABEL_49:
    fig_log_get_emitter();
    appended = FigSignalErrorAtGM();
    goto LABEL_50;
  }

  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    v51 = SampleTimingInfo;
    sampleTimingArray = v86;
LABEL_51:
    if (v99)
    {
      CFRelease(v99);
    }

    goto LABEL_53;
  }

  if (v35 == 1)
  {
    sampleTimingArray = v86;
    *&v86->duration.value = *&timingInfoOut.duration.value;
    v39 = *&timingInfoOut.duration.epoch;
    v40 = *&timingInfoOut.presentationTimeStamp.timescale;
    v41 = *&timingInfoOut.decodeTimeStamp.value;
    v86->decodeTimeStamp.epoch = timingInfoOut.decodeTimeStamp.epoch;
    *&v86->presentationTimeStamp.timescale = v40;
    *&v86->decodeTimeStamp.value = v41;
    *&v86->duration.epoch = v39;
  }

  else
  {
    sampleTimingArray = v86;
    if (v92 >= 1)
    {
      v42 = 0;
      v43 = v86;
      do
      {
        *&v43->duration.value = *&timingInfoOut.duration.value;
        v44 = *&timingInfoOut.duration.epoch;
        v45 = *&timingInfoOut.presentationTimeStamp.timescale;
        v46 = *&timingInfoOut.decodeTimeStamp.value;
        v43->decodeTimeStamp.epoch = timingInfoOut.decodeTimeStamp.epoch;
        *&v43->presentationTimeStamp.timescale = v45;
        *&v43->decodeTimeStamp.value = v46;
        *&v43->duration.epoch = v44;
        ++v42;
        ++v43;
      }

      while (v42 < v92);
    }

    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, &v86[v92], 0);
    if (SampleTimingInfoArray)
    {
      goto LABEL_48;
    }
  }

  v48 = blockBufferOut;
  IsReady = CMSampleBufferDataIsReady(sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  SampleTimingInfoArray = CMSampleBufferCreate(v26, v48, IsReady, 0, 0, FormatDescription, v92 + v90, v35, sampleTimingArray, v21, sampleSizeArray, &v99);
  if (SampleTimingInfoArray)
  {
LABEL_48:
    v51 = SampleTimingInfoArray;
    goto LABEL_51;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  blockBufferOut = 0;
  v53 = CMCopyDictionaryOfAttachments(v26, sbuf, 1u);
  if (v53)
  {
    v54 = v53;
    CMSetAttachments(v99, v53, 1u);
    CFRelease(v54);
  }

  v83 = v92 + v90;
  v55 = CMCopyDictionaryOfAttachments(v26, sbuf, 0);
  if (v55)
  {
    v56 = v55;
    CMSetAttachments(v99, v55, 0);
    CFRelease(v56);
  }

  v84 = sampleSizeArray;
  v57 = v99;
  lhs = rhs;
  v58 = CMTimeCopyAsDictionary(&lhs, v26);
  if (v58)
  {
    v59 = v58;
    CMSetAttachment(v57, *MEMORY[0x1E6960560], v58, 1u);
    CFRelease(v59);
  }

  theArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (theArray)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v99, 1u);
    if (SampleAttachmentsArray)
    {
      v61 = SampleAttachmentsArray;
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        i = 0;
        v63 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v63);
          v65 = CFDictionaryGetCount(ValueAtIndex);
          v66 = malloc_type_malloc(8 * v65, 0x80040B8603338uLL);
          v67 = malloc_type_malloc(8 * v65, 0x80040B8603338uLL);
          CFDictionaryGetKeysAndValues(ValueAtIndex, v66, v67);
          if (!v63)
          {
            i = 0;
          }

          v91 = v63;
          if (!v63 && v92 >= 1)
          {
            for (i = 0; i < v92; ++i)
            {
              v68 = CFArrayGetValueAtIndex(v61, i);
              if (v65 >= 1)
              {
                v69 = v68;
                v70 = v66;
                v71 = v67;
                v72 = v65;
                do
                {
                  v74 = *v70++;
                  v73 = v74;
                  v75 = *v71++;
                  CFDictionarySetValue(v69, v73, v75);
                  --v72;
                }

                while (v72);
              }
            }
          }

          v76 = CFArrayGetValueAtIndex(v61, i + v91);
          if (v65 >= 1)
          {
            v77 = v76;
            v78 = v66;
            v79 = v67;
            do
            {
              v81 = *v78++;
              v80 = v81;
              v82 = *v79++;
              CFDictionarySetValue(v77, v80, v82);
              --v65;
            }

            while (v65);
          }

          free(v66);
          free(v67);
          v63 = v91 + 1;
        }

        while (v91 + 1 != Count);
      }
    }
  }

  v51 = 0;
  *a7 = v99;
  v99 = 0;
  sampleSizeArray = v84;
  *v85 = v83;
  *a9 = rhs;
  sampleTimingArray = v86;
LABEL_53:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (sampleSizeArray)
  {
    free(sampleSizeArray);
  }

  if (sampleTimingArray)
  {
    free(sampleTimingArray);
  }

  return v51;
}

uint64_t editBuilderResetCurrentEditMediaTime(uint64_t a1)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (editMediaTimeIsValid(v3))
  {
    CFArrayAppendValue(*(a1 + 24), v3);
  }

  else
  {
    FigCEA608DataInspectorRelease(v3);
  }

  return editMediaTimeCreate(*a1, v2);
}

uint64_t trackEndSession(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a1 + 480))
  {
    v7 = *(a1 + 16);
    v8 = malloc_type_calloc(1uLL, 0x118uLL, 0x102004013D73AF6uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = *(a1 + 184);
      v10 = *(a1 + 200);
      v11 = *(a1 + 216);
      v12 = *(a1 + 232);
      *(v8 + 8) = *(a1 + 248);
      *(v8 + 2) = v11;
      *(v8 + 3) = v12;
      *(v8 + 1) = v10;
      v13 = *(v7 + 24);
      *(v8 + 11) = *(v7 + 40);
      *(v8 + 72) = v13;
      v14 = MEMORY[0x1E6960C70];
      v15 = *(MEMORY[0x1E6960C70] + 16);
      *(v8 + 14) = v15;
      v25 = *v14;
      *(v8 + 6) = *v14;
      *(v8 + 30) = *(a1 + 464);
      v16 = *(a1 + 484);
      *(v8 + 124) = *(a1 + 468);
      *(v8 + 140) = v16;
      *(v8 + 37) = a3;
      v17 = *(a2 + 2);
      *(v8 + 152) = *a2;
      *(v8 + 21) = v17;
      v26 = *(a1 + 136);
      v18 = *(a1 + 104);
      if (v18)
      {
        time = *(a1 + 136);
        CMTimeConvertScale(&v26, &time, v18, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      }

      *(v9 + 176) = v26;
      getSessionMediaDisplayStartTime(a1, &time);
      *(v9 + 200) = time;
      v26 = *(a1 + 160);
      v19 = *(a1 + 104);
      if (v19)
      {
        time = *(a1 + 160);
        CMTimeConvertScale(&v26, &time, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      }

      *(v9 + 224) = v26;
      v20 = *(a1 + 432);
      *(v9 + 33) = *(a1 + 448);
      *(v9 + 248) = v20;
      *(v9 + 34) = *(a1 + 496);
      CFArrayAppendValue(*(a1 + 424), v9);
      if (a3 == 2)
      {
        Count = CFArrayGetCount(*(a1 + 424));
        if (Count >= 1)
        {
          v22 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 424), v22 - 2);
            if (ValueAtIndex[108])
            {
              break;
            }

            v24 = *a2;
            *(ValueAtIndex + 14) = *(a2 + 2);
            *(ValueAtIndex + 6) = v24;
            --v22;
          }

          while (v22 > 1);
        }
      }

      *(a1 + 496) = 0;
      if (*(v7 + 329) && *(v7 + 352))
      {
        *(a1 + 353) = 1;
      }

      result = 0;
      *(a1 + 468) = v25;
      *(a1 + 484) = v15;
    }

    else
    {
      trackEndSession_cold_1(&time);
      return LODWORD(time.value);
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t trackBeginSession(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a1 + 480))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = a1 + 468;
    getMediaDecodeDuration(a1, &v18);
    v8 = MEMORY[0x1E6960CF0];
    *(a1 + 432) = *&v18.value;
    v9 = *v8;
    *(a1 + 200) = v8[1];
    v10 = v8[3];
    *(a1 + 216) = v8[2];
    *(a1 + 448) = v18.epoch;
    *(a1 + 232) = v10;
    *(a1 + 248) = *(v8 + 8);
    *(a1 + 184) = v9;
    v11 = MEMORY[0x1E6960CC0];
    v12 = *MEMORY[0x1E6960CC0];
    *(a1 + 256) = *MEMORY[0x1E6960CC0];
    v13 = *(v11 + 16);
    *(a1 + 272) = v13;
    v14 = MEMORY[0x1E6960C88];
    *(a1 + 280) = *MEMORY[0x1E6960C88];
    *(a1 + 296) = *(v14 + 16);
    *(a1 + 152) = v13;
    *(a1 + 136) = v12;
    v15 = *MEMORY[0x1E6960C80];
    *(a1 + 320) = *(MEMORY[0x1E6960C80] + 16);
    *(a1 + 304) = v15;
    *(a1 + 176) = v13;
    *(a1 + 160) = v12;
    *(a1 + 464) = a3;
    v16 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v16;
    if (!*(a1 + 492) || *(a1 + 496) || (result = editBuilderCreate(*MEMORY[0x1E695E480], (a1 + 496)), !result))
    {
      if (*(v6 + 329))
      {
        if (*(v6 + 352))
        {
          *(a1 + 353) = 1;
        }
      }

      MediaSampleTimingGeneratorReset(*(a1 + 752));
      return 0;
    }
  }

  return result;
}

uint64_t getSampleSizeArrayFromSbuf(opaqueCMSampleBuffer *a1, CMItemCount a2, size_t *a3, CMItemCount *a4)
{
  sizeArrayEntriesNeededOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (ImageBuffer)
  {
    if (a2 > 0)
    {
      v9 = ImageBuffer;
      BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
      Height = CVPixelBufferGetHeight(v9);
      result = 0;
      *a3 = Height * BytesPerRow;
      if (!a4)
      {
        return result;
      }

      v13 = 1;
      goto LABEL_16;
    }

    v13 = 1;
LABEL_11:
    result = 4294954559;
    if (!a4)
    {
      return result;
    }

LABEL_16:
    *a4 = v13;
    return result;
  }

  result = CMSampleBufferGetSampleSizeArray(a1, 0, 0, &sizeArrayEntriesNeededOut);
  if (result)
  {
    if (result != -12735)
    {
      return result;
    }

    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_15:
    v13 = sizeArrayEntriesNeededOut;
    goto LABEL_16;
  }

  v13 = sizeArrayEntriesNeededOut;
  if (sizeArrayEntriesNeededOut > a2)
  {
    goto LABEL_11;
  }

  result = CMSampleBufferGetSampleSizeArray(a1, a2, a3, 0);
  if (a4 && !result)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t getTrackInfoForTrackID(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 488);
  if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v9);
      if (ValueAtIndex[183] == a2)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }

    *a3 = ValueAtIndex;
    return 0;
  }

  else
  {
LABEL_6:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t copyFigTrackLoadSettingsAsDictionary(CFAllocatorRef allocator, uint64_t a2, CFDictionaryRef *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *keys = 0u;
  v21 = 0u;
  *values = 0u;
  v19 = 0u;
  if (*(a2 + 12))
  {
    v17 = *a2;
    v6 = CMTimeCopyAsDictionary(&v17, allocator);
    if (!v6)
    {
      copyFigTrackLoadSettingsAsDictionary_cold_1(&v17);
      return LODWORD(v17.value);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 36))
  {
    v17 = *(a2 + 24);
    v7 = CMTimeCopyAsDictionary(&v17, allocator);
    if (!v7)
    {
      copyFigTrackLoadSettingsAsDictionary_cold_2(&v17);
      v9 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (a2 + 48));
  if (!v9)
  {
    copyFigTrackLoadSettingsAsDictionary_cold_5(&v17);
LABEL_29:
    v11 = 0;
LABEL_30:
    value_low = LODWORD(v17.value);
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, (a2 + 52));
  v11 = v10;
  if (!v10)
  {
    copyFigTrackLoadSettingsAsDictionary_cold_4(&v17);
    goto LABEL_30;
  }

  if (v6)
  {
    keys[0] = @"PreloadStart";
    values[0] = v6;
    v12 = 1;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = 0;
  if (v7)
  {
LABEL_11:
    *(keys | (8 * v12)) = @"PreloadDuration";
    *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v12++ & 1))) = v7;
  }

LABEL_12:
  keys[v12] = @"PreloadFlags";
  values[v12] = v9;
  v13 = v12 + 1;
  keys[v13] = @"DefaultHints";
  values[v13] = v10;
  v14 = CFDictionaryCreate(allocator, keys, values, v12 + 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v14)
  {
    copyFigTrackLoadSettingsAsDictionary_cold_3(&v17);
    goto LABEL_30;
  }

  value_low = 0;
  *a3 = v14;
  if (v6)
  {
LABEL_14:
    CFRelease(v6);
  }

LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return value_low;
}

uint64_t copyDimensionsAsDictionary(const __CFAllocator *a1, CFDictionaryRef *a2, double a3, double a4)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v14);
  if (!v7)
  {
    copyDimensionsAsDictionary_cold_3(keys);
    return LODWORD(keys[0]);
  }

  v8 = v7;
  v9 = CFNumberCreate(v6, kCFNumberCGFloatType, &v15);
  if (!v9)
  {
    copyDimensionsAsDictionary_cold_2(v8, keys);
    return LODWORD(keys[0]);
  }

  v10 = v9;
  keys[0] = @"Width";
  keys[1] = @"Height";
  values[0] = v8;
  values[1] = v9;
  v11 = CFDictionaryCreate(a1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v11)
  {
    v12 = 0;
    *a2 = v11;
  }

  else
  {
    copyDimensionsAsDictionary_cold_1(&v16);
    v12 = v16;
  }

  CFRelease(v8);
  CFRelease(v10);
  return v12;
}

uint64_t createTrackMetadataWritersDictionary(const __CFAllocator *a1, void *a2, CFDictionaryRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v16 = 0;
  if (*(v6 + 692))
  {
    v7 = @"org.mp4ra";
    v8 = 1;
  }

  else
  {
    v7 = @"com.apple.quicktime.mdta";
    v16 = @"com.apple.quicktime.udta";
    v8 = 2;
  }

  v9 = 0;
  values[0] = 0;
  values[1] = 0;
  keys = v7;
  while (1)
  {
    v13 = 0;
    result = getTrackMetadataSerializer(a1, a2, *(&keys + v9), &v13);
    if (result)
    {
      break;
    }

    values[v9++] = FigMetadataSerializerGetFigMetadataWriter(v13);
    if (v8 == v9)
    {
      v11 = CFDictionaryCreate(a1, &keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v11)
      {
        v12 = v11;
        result = 0;
        *a3 = v12;
      }

      else
      {
        createTrackMetadataWritersDictionary_cold_1(&v13);
        return v13;
      }

      return result;
    }
  }

  return result;
}

uint64_t getFigTrackLoadSettingsFromDictionary(const void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6960C70];
  v22 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  valuePtr = 0;
  v20 = v22;
  v21 = timescale;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 4294954516;
  }

  v6 = *(v4 + 12);
  v7 = *(v4 + 16);
  Value = CFDictionaryGetValue(a1, @"PreloadStart");
  v9 = CFDictionaryGetValue(a1, @"PreloadDuration");
  v10 = CFDictionaryGetValue(a1, @"PreloadFlags");
  v11 = CFDictionaryGetValue(a1, @"DefaultHints");
  flags = v6;
  epoch = v7;
  if (Value)
  {
    CMTimeMakeFromDictionary(&v18, Value);
    v22 = v18.value;
    flags = v18.flags;
    timescale = v18.timescale;
    if ((v18.flags & 0x1D) != 1)
    {
      return 4294954516;
    }

    epoch = v18.epoch;
  }

  if (v9)
  {
    CMTimeMakeFromDictionary(&v18, v9);
    v20 = v18.value;
    v6 = v18.flags;
    v21 = v18.timescale;
    if ((v18.flags & 0x1D) == 1)
    {
      v7 = v18.epoch;
      goto LABEL_8;
    }

    return 4294954516;
  }

LABEL_8:
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr + 4);
  }

  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
    v14 = valuePtr;
  }

  else
  {
    v14 = 0;
  }

  result = 0;
  v16 = HIDWORD(valuePtr);
  *a2 = v22;
  *(a2 + 8) = timescale;
  *(a2 + 12) = flags;
  v17 = v20;
  *(a2 + 16) = epoch;
  *(a2 + 24) = v17;
  *(a2 + 32) = v21;
  *(a2 + 36) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v16;
  *(a2 + 52) = v14;
  return result;
}

uint64_t getDimensionsFromDictionary(const void *a1, _OWORD *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"Width");
  v6 = CFDictionaryGetValue(a1, @"Height");
  if (!Value || v6 == 0)
  {
    return 4294954516;
  }

  v8 = v6;
  v10 = 0uLL;
  if (!CFNumberGetValue(Value, kCFNumberCGFloatType, &v10) || !CFNumberGetValue(v8, kCFNumberCGFloatType, &v10 + 8))
  {
    return 4294954516;
  }

  result = 0;
  *a2 = v10;
  return result;
}

CMTime *OUTLINED_FUNCTION_17_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *rhs, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 rhsa, uint64_t rhs_16, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, uint64_t a34)
{
  *(v35 - 192) = *(v34 + 508);
  *(v35 - 176) = *(v34 + 524);
  rhsa = a33;
  rhs_16 = a34;

  return CMTimeAdd((v35 - 160), (v35 - 192), &rhsa);
}

__n128 OUTLINED_FUNCTION_18_21()
{
  result = *v0;
  *&STACK[0x250] = *v0;
  STACK[0x260] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_14@<X0>(unint64_t a1@<X8>)
{
  STACK[0x260] = a1;

  return CMTimeCompare(&STACK[0x270], &STACK[0x250]);
}

void *OUTLINED_FUNCTION_32_12(size_t a1)
{

  return malloc_type_malloc(a1, 0x1000040FF89C88EuLL);
}

CMTimeRange *OUTLINED_FUNCTION_33_13@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *duration, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *start, uint64_t a13, uint64_t a14, uint64_t a15, __int128 durationa, uint64_t duration_16, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t starta, uint64_t start_8, uint64_t start_16, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  durationa = *a1;
  duration_16 = *(a1 + 2);

  return CMTimeRangeMake(&a27, &starta, &durationa);
}

uint64_t OUTLINED_FUNCTION_39_12()
{

  return CMTimeCompare(&STACK[0x270], &STACK[0x250]);
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return CMByteStreamAppendBlockBuffer();
}

CFTypeRef OUTLINED_FUNCTION_45_10(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = *(v9 + 720);
  v14 = *(v9 + 376);

  return MovieHeaderMakerCopyMovieFragmentHeaderAsBlockBuffer(v10, v11, v13, v14, va);
}

__n128 OUTLINED_FUNCTION_48_9@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 160) = *a1;
  *(v1 - 144) = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_59_5()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

__n128 OUTLINED_FUNCTION_63_5()
{
  result = *v0;
  *&STACK[0x270] = *v0;
  STACK[0x280] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_67_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, CFArrayRef);

  return copyMetadataSourceAndDestinationFormats(v9, a1, va1, va);
}

CFTypeID OUTLINED_FUNCTION_68_6()
{

  return CFGetTypeID(v0);
}

uint64_t FigFormatWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigFormatWriterGetClassID_sRegisterFigFormatWriterTypeOnce, RegisterFigFormatWriterType);

  return CMBaseClassGetCFTypeID();
}

_BYTE *sbp_bq_dataBecameAvailable()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

_BYTE *sbp_bq_UpcomingOutputPTSRangeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v7 = result;
    FigSimpleMutexLock();
    v8 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960590]);
    v7[48] = v8 == Value;
    if (v8 == Value)
    {
      v10 = CFDictionaryGetValue(a5, *MEMORY[0x1E6960578]);
      v11 = CFDictionaryGetValue(a5, *MEMORY[0x1E6960570]);
      CMTimeMakeFromDictionary(&v12, v10);
      *(v7 + 52) = v12;
      CMTimeMakeFromDictionary(&v12, v11);
      *(v7 + 76) = v12;
    }

    FigSimpleMutexUnlock();
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

_BYTE *sbp_bq_CollectorCoherence()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

__CFString *sbp_bq_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProviderForBufferQueue %p>", a1);
  return Mutable;
}

CMBufferRef sbp_bq_getAndRetainNextSampleBuffer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  else
  {
    v2 = *(DerivedStorage + 8);

    return CMBufferQueueDequeueAndRetain(v2);
  }
}

CMItemCount sbp_bq_scanForSampleBufferThatWillBeDisplayed(opaqueCMSampleBuffer *a1, _BYTE *a2)
{
  result = CMSampleBufferGetNumSamples(a1);
  if (result)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (SampleAttachmentsArray && (v6 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0)) != 0 && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]))
    {
      return 0;
    }

    else
    {
      *a2 = 1;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t FigSampleBufferProviderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferProviderGetClassID_sRegisterFigSampleBufferProviderTypeOnce, RegisterFigSampleBufferProviderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigClusterSynchronizationManager_ClientIsPlaying(char a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (qword_1ED4CAAE8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __FigClusterSynchronizationManager_ClientIsPlaying_block_invoke;
    v3[3] = &unk_1E74874F0;
    v4 = a1;
    v3[4] = &v5;
    dispatch_sync(qword_1ED4CAAE8, v3);
    v1 = *(v6 + 6);
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

uint64_t figClusterSynchManager_shouldDisableOdeonStereoClockLink()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return FigGetCFPreferenceNumberWithDefault() == 1;
  }

  return result;
}

void figClusterSynchManager_ensureStopped()
{
  figClusterSynchManager_stopAndClearBonjourAdvertiser();
  figClusterSynchManager_stopAndClearBonjourBrowser();
  if (qword_1ED4CAAF8)
  {
    CFSetApplyFunction(qword_1ED4CAAF8, figClusterSynchManager_RemovePort, 0);
  }

  if (qword_1ED4CAAF0)
  {
    CFRelease(qword_1ED4CAAF0);
    qword_1ED4CAAF0 = 0;
  }

  if (qword_1ED4CAAF8)
  {
    CFRelease(qword_1ED4CAAF8);
    qword_1ED4CAAF8 = 0;
  }

  if (qword_1ED4CAB18)
  {
    CFRelease(qword_1ED4CAB18);
    qword_1ED4CAB18 = 0;
  }

  if (qword_1ED4CAB20)
  {
    CFRelease(qword_1ED4CAB20);
    qword_1ED4CAB20 = 0;
  }

  byte_1ED4CAAE1 = 0;
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t figClusterSynchManager_AddPort(const __CFData *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CM8021ASClockAddIPv6Port())
  {
    return figClusterSynchManager_AddPort_cold_1();
  }

  if (figClusterSynchManager_getPeerMACAddress_in6(BytePtr, &v4))
  {
    return figClusterSynchManager_AddPort_cold_2();
  }

  return figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(1, &v4);
}

uint64_t FigClusterSynchronizationManager_OneTimeInitialization()
{
  v0 = MGCopyAnswer();
  if (FigCFEqual())
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      FigNote_AllowInternalDefaultLogs();
      fig_note_initialize_category_with_default_work_cf();
      fig_note_initialize_category_with_default_work_cf();
      if (FigClusterSynchronizationManager_OneTimeInitialization_sfigClusterSynchronizationManager_InitOnce != -1)
      {
        FigClusterSynchronizationManager_OneTimeInitialization_cold_1();
        if (!v0)
        {
          return 0;
        }

        goto LABEL_5;
      }
    }
  }

  if (v0)
  {
LABEL_5:
    CFRelease(v0);
  }

  return 0;
}

void figClusterSynchManager_InitOnce()
{
  v0 = dispatch_queue_create("ClusterSynchManager callback queue", 0);
  qword_1ED4CAAE8 = v0;

  dispatch_async_f(v0, 0, figClusterSynchManager_DeferredInitOnce);
}

uint64_t figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(uint64_t a1, uint64_t a2)
{
  updated = sAPConnectivityHelperUpdateTrafficRegistration(qword_1ED4CAB00, @"timeSync", a2, a1);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return updated;
}

uint64_t figClusterSynchManager_RemovePort(const __CFData *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CM8021ASClockRemoveIPv6Port())
  {
    return figClusterSynchManager_RemovePort_cold_1();
  }

  else
  {
    return figClusterSynchManager_RemovePort_cold_2(BytePtr, &v4);
  }
}

uint64_t figClusterSynchManager_updateMyClusterID()
{
  v13 = *MEMORY[0x1E69E9840];
  if (figClusterSynchManager_shouldDisableOdeonStereoClockLink())
  {
    if (dword_1EAF17140)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_16;
  }

  v1 = CFPreferencesCopyAppValue(@"tightSyncGroupUUID", @"com.apple.airplay");
  if (v1 || (v1 = CFPreferencesCopyAppValue(@"tightSyncUUID", @"com.apple.airplay")) != 0)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 != CFStringGetTypeID())
    {
      figClusterSynchManager_ensureStopped();
    }

    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      figClusterSynchManager_updateMyClusterID_cold_1(v12);
      v9 = v12[0];
LABEL_19:
      v10 = v2;
LABEL_20:
      CFRelease(v10);
      return v9;
    }

    v5 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v2);
    v6 = v5;
    if (v5 && (v7 = CFGetTypeID(v5), v7 == CFUUIDGetTypeID()))
    {
      if (!qword_1ED4CAB20)
      {
LABEL_14:
        if (dword_1EAF17140)
        {
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        qword_1ED4CAB20 = v6;
        v9 = figClusterSynchManager_ensureStarted();
        if (!v9)
        {
          dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_34);
        }

        goto LABEL_19;
      }

      if (!CFEqual(qword_1ED4CAB20, v6))
      {
        figClusterSynchManager_updateMyClusterID_cold_2();
        goto LABEL_14;
      }

      CFRelease(v2);
      v9 = 0;
    }

    else
    {
      v9 = FigSignalErrorAtGM();
      CFRelease(v2);
      if (!v6)
      {
        return v9;
      }
    }

    v10 = v6;
    goto LABEL_20;
  }

LABEL_16:
  figClusterSynchManager_ensureStopped();
  return 4294954514;
}

NSObject *figClusterSynchManager_registerServiceCallBack(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65563)
  {
    FigSignalErrorAtGM();

    return figClusterSynchManager_restartBonjour();
  }

  return result;
}

uint64_t _FigClusterSynchronizationManagerBonjourQueryRegisterClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void _FigClusterSynchronizationManagerBonjourQueryFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    DNSServiceRefDeallocate(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    DNSServiceRefDeallocate(v5);
  }
}

void figClusterSynchManager_srvInfoCallBack(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, void *a11)
{
  v14 = a11;
  v31[134] = *MEMORY[0x1E69E9840];
  sdRef = 0;
  bzero(&__s, 0x431uLL);
  if (a4)
  {
    figClusterSynchManager_srvInfoCallBack_cold_1();
  }

  else
  {
    if (a8 < 7 || (a2 & 2) == 0 || !a9 || !a11 || a11[4])
    {
      goto LABEL_32;
    }

    v16 = a9 + 6;
    v15 = *(a9 + 6);
    if (!*(a9 + 6))
    {
      p_s = v31;
      __s = 46;
      goto LABEL_24;
    }

    v17 = 0;
    p_s = &__s;
    v19 = 1004;
    v20 = a9 + 6;
LABEL_9:
    if (v17 + 1 + v15 <= 0xFE && v15 <= 0x3F && v19 >= v15)
    {
      v21 = v20 + v15;
      v22 = p_s;
      while (1)
      {
        v24 = *++v20;
        v23 = v24;
        if (v24 == 92 || v23 == 46)
        {
          *v22++ = 92;
        }

        else if (v23 <= 0x20)
        {
          *v22 = 12380;
          v26 = (205 * v23) >> 11;
          v25 = v22 + 3;
          v22[2] = v26 | 0x30;
          LOBYTE(v23) = (v23 - 10 * v26) | 0x30;
          goto LABEL_17;
        }

        v25 = v22;
LABEL_17:
        *v25 = v23;
        v22 = v25 + 1;
        if (v20 >= v21)
        {
          v25[1] = 0;
          v19 -= strlen(p_s);
          v17 += 1 + *(v16 + v17);
          p_s = v25 + 2;
          v25[1] = 46;
          v20 = v16 + v17;
          v15 = *(v16 + v17);
          if (!*(v16 + v17))
          {
LABEL_24:
            *p_s = 0;
            break;
          }

          goto LABEL_9;
        }
      }
    }

    v27 = if_nametoindex("awdl0");
    v14 = a11;
    v28 = CFRetain(a11);
    if (DNSServiceGetAddrInfo(&sdRef, 0x100000u, v27, 2u, &__s, figClusterSynchManager_addressInfoCallBack, v28))
    {
      figClusterSynchManager_srvInfoCallBack_cold_2(a11);
    }

    else
    {
      if (!DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8))
      {
        a11[4] = sdRef;
        sdRef = 0;
        goto LABEL_28;
      }

      figClusterSynchManager_srvInfoCallBack_cold_3();
    }
  }

LABEL_32:
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  if (v14)
  {
LABEL_28:
    CFRelease(v14);
  }
}

void figClusterSynchManager_addressInfoCallBack(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, void *cf)
{
  if (a4 == -65791)
  {
    goto LABEL_30;
  }

  if (!a4)
  {
    if (!a6 || !cf)
    {
      goto LABEL_30;
    }

    if (*(a6 + 1) == 30)
    {
      v10 = cf[3];
      memset(v18, 0, 24);
      *bytes = 0;
      v11 = getifaddrs(bytes);
      v12 = *bytes;
      if (v11 || !*bytes)
      {
LABEL_12:
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = *bytes;
        while (1)
        {
          v14 = v13[3];
          if (*(v14 + 1) == 30 && !strcmp(v13[1], "awdl0"))
          {
            break;
          }

          v13 = *v13;
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        *v18 = *v14;
        *&v18[12] = *(v14 + 12);
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x19A8D58B0](v12);
LABEL_14:
      *bytes = *(a6 + 8);
      if (*bytes)
      {
        v15 = 0;
      }

      else
      {
        v15 = *&bytes[8] == 0;
      }

      if (!v15 && (*&v18[8] != *bytes || *&v18[16] != *&bytes[8]))
      {
        v17 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
        if (!CFSetContainsValue(qword_1ED4CAAF8, v17))
        {
          if (CFDictionaryGetValueIfPresent(qword_1ED4CAB18, v10, 0))
          {
            figClusterSynchManager_removePeerEndpoint(v10);
          }

          if (_MergedGlobals_58 == 1)
          {
            figClusterSynchManager_AddPort(v17);
          }

          CFSetAddValue(qword_1ED4CAAF8, v17);
          CFDictionaryAddValue(qword_1ED4CAB18, v10, v17);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

LABEL_30:
      if (!cf)
      {
        return;
      }

      goto LABEL_31;
    }

    figClusterSynchManager_addressInfoCallBack_cold_1();
LABEL_31:
    CFRelease(cf);
    return;
  }

  figClusterSynchManager_addressInfoCallBack_cold_2();
  if (cf)
  {
    goto LABEL_31;
  }
}

uint64_t figClusterSynchManager_DeferredInitOnce()
{
  v5 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = dlopen("/System/Library/PrivateFrameworks/APTransport.framework/APTransport", 4);
  if (!v0 || (v1 = v0, (off_1ED4CAB28 = dlsym(v0, "APConnectivityHelperCreate")) == 0) || (sAPConnectivityHelperUpdateTrafficRegistration = dlsym(v1, "APConnectivityHelperUpdateTrafficRegistration")) == 0)
  {
    figClusterSynchManager_DeferredInitOnce_cold_1();
  }

  gManagerWorkSemaphore = dispatch_semaphore_create(0);
  qword_1ED4CAB30 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (dword_1EAF17140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  notify_register_dispatch("com.apple.airplay.prefsChanged", &out_token, qword_1ED4CAAE8, &__block_literal_global_49);
  return figClusterSynchManager_updateMyClusterID();
}

uint64_t OUTLINED_FUNCTION_2_79()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_4_64()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_14_27(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t ADTSGetFrameSize(uint64_t a1)
{
  HIDWORD(v1) = *(a1 + 3);
  LODWORD(v1) = bswap32(*(a1 + 4));
  return (v1 >> 21) & 0x1FFF;
}

uint64_t ADTSGetChannelLayout(uint64_t a1)
{
  v1 = ((*(a1 + 3) >> 6) & 0xFFFFFFFB | (4 * (*(a1 + 2) & 1))) - 1;
  if (v1 > 6)
  {
    return 6619138;
  }

  else
  {
    return dword_196E77320[v1];
  }
}

uint64_t ADTSGetADTSHeaderSize(uint64_t a1)
{
  if (*(a1 + 1))
  {
    return 7;
  }

  else
  {
    return 9;
  }
}

uint64_t FigSCCFormatWriterCreateWithByteStream(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    FigSCCFormatWriterCreateWithByteStream_cold_2(&v13);
    return LODWORD(v13.value);
  }

  if (!a4)
  {
    FigSCCFormatWriterCreateWithByteStream_cold_1(&v13);
    return LODWORD(v13.value);
  }

  FigFormatWriterGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = cf;
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Mutable = CFArrayCreateMutable(a1, 1, 0);
    *(DerivedStorage + 88) = Mutable;
    if (Mutable)
    {
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *DerivedStorage = v11;
      *(DerivedStorage + 16) = CFRetain(a2);
      CMTimeMake(&v13, 1001, 30000);
      v7 = 0;
      *(DerivedStorage + 28) = v13;
      *(DerivedStorage + 52) = 30;
      *(DerivedStorage + 56) = 0;
      *(DerivedStorage + 84) = -1;
      *a4 = cf;
      return v7;
    }

    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM();
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t sccFormatWriter_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 88);
    if (v2)
    {
      v3 = *v1;
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 88), i);
          CFAllocatorDeallocate(v3, ValueAtIndex);
        }
      }

      v8 = *(v1 + 88);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 88) = 0;
      }
    }

    v9 = *(v1 + 16);
    if (v9)
    {
      CFRelease(v9);
      *(v1 + 16) = 0;
    }

    if (*v1)
    {
      CFRelease(*v1);
      *v1 = 0;
    }

    *(v1 + 8) = 1;
  }

  return 0;
}

__CFString *sccFormatWriter_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    v3 = CFCopyDescription(v2);
    CFStringAppendFormat(Mutable, 0, @"<SCCFormatWriter: stream<%@>", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<SCCFormatWriter: stream<%@>", 0);
  }

  return Mutable;
}

uint64_t sccFormatWriter_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    sccFormatWriter_CopyProperty_cold_3(&v11);
    return LODWORD(v11.value);
  }

  if (!a4)
  {
    sccFormatWriter_CopyProperty_cold_2(&v11);
    return LODWORD(v11.value);
  }

  v8 = DerivedStorage;
  if (*(DerivedStorage + 8))
  {
    sccFormatWriter_CopyProperty_cold_1(&v11);
    return LODWORD(v11.value);
  }

  if (FigCFEqual())
  {
    v11 = *(v8 + 60);
    v9 = CMTimeCopyAsDictionary(&v11, a3);
    result = 0;
    *a4 = v9;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t sccFormatWriter_SetProperty(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    sccFormatWriter_SetProperty_cold_1(&v4);
    return v4;
  }
}

uint64_t sccFormatWriter_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 88);
  if (!v7)
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

LABEL_12:
    sccFormatWriter_AddTrack_cold_5(&v12);
    return v12;
  }

  Count = CFArrayGetCount(v7);
  if (!a4)
  {
    goto LABEL_12;
  }

  v9 = Count;
  if (Count >= 1)
  {
    sccFormatWriter_AddTrack_cold_1(&v12);
    return v12;
  }

LABEL_7:
  if (a2 != 1668047728)
  {
    sccFormatWriter_AddTrack_cold_2(&v12);
    return v12;
  }

  if (*(DerivedStorage + 8))
  {
    sccFormatWriter_AddTrack_cold_3(&v12);
    return v12;
  }

  v10 = MEMORY[0x19A8CC720](*DerivedStorage, 8, 0x100004000313F17, 0);
  if (!v10)
  {
    sccFormatWriter_AddTrack_cold_4(&v12);
    return v12;
  }

  *v10 = 0;
  CFArrayAppendValue(*(DerivedStorage + 88), v10);
  result = 0;
  *a4 = v9 + 1;
  return result;
}

uint64_t sccFormatWriter_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v8 = DerivedStorage;
      if (*(DerivedStorage + 8))
      {
        sccFormatWriter_CopyTrackProperty_cold_1(&v12);
        return v12;
      }

      else if (FigCFEqual())
      {
        v9 = MEMORY[0x1E695E4D0];
        if (!*(v8 + 56))
        {
          v9 = MEMORY[0x1E695E4C0];
        }

        if (*v9)
        {
          v10 = CFRetain(*v9);
        }

        else
        {
          v10 = 0;
        }

        result = 0;
        *a5 = v10;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      sccFormatWriter_CopyTrackProperty_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    sccFormatWriter_CopyTrackProperty_cold_3(&v14);
    return v14;
  }

  return result;
}

uint64_t sccFormatWriter_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, const __CFBoolean *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      sccFormatWriter_SetTrackProperty_cold_1(&v11);
      return v11;
    }

    else if (FigCFEqual())
    {
      if (a4 && (v8 = CFGetTypeID(a4), v8 == CFBooleanGetTypeID()))
      {
        Value = CFBooleanGetValue(a4);
        result = 0;
        *(v7 + 56) = Value;
      }

      else
      {
        sccFormatWriter_SetTrackProperty_cold_2(&v12);
        return v12;
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
    sccFormatWriter_SetTrackProperty_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t sccFormatWriter_AddSampleBufferToTrack(uint64_t a1, int a2, opaqueCMSampleBuffer *a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = *(DerivedStorage + 88);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v7 = (a2 - 1);
  if (!a3)
  {
    sccFormatWriter_AddSampleBufferToTrack_cold_3(v12);
    return LODWORD(v12[0]);
  }

  if (a2 < 1 || Count <= v7)
  {
    sccFormatWriter_AddSampleBufferToTrack_cold_2(v12);
    return LODWORD(v12[0]);
  }

  if (*(DerivedStorage + 8))
  {
    sccFormatWriter_AddSampleBufferToTrack_cold_1(v12);
    return LODWORD(v12[0]);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 88), v7);
  refcon[0] = DerivedStorage;
  refcon[1] = ValueAtIndex;
  if (*(DerivedStorage + 24))
  {
    return CMSampleBufferCallForEachSample(a3, sccFormatWriterEachSampleCallback, refcon);
  }

  strcpy(v12, "Scenarist_SCC V1.0");
  v11 = 0;
  result = CMByteStreamAppend();
  if (!result)
  {
    LODWORD(v11) = 168626701;
    v12[0] = 0;
    result = CMByteStreamAppend();
    if (!result)
    {
      *(DerivedStorage + 24) = 1;
      return CMSampleBufferCallForEachSample(a3, sccFormatWriterEachSampleCallback, refcon);
    }
  }

  return result;
}

uint64_t sccFormatWriter_Flush()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_Flush_cold_1(&v1);
  return v1;
}

uint64_t sccFormatWriter_WriteHeader()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_WriteHeader_cold_1(&v1);
  return v1;
}

uint64_t sccFormatWriter_BeginSession()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_BeginSession_cold_1(&v1);
  return v1;
}

uint64_t sccFormatWriter_EndSession()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 0;
  }

  sccFormatWriter_EndSession_cold_1(&v1);
  return v1;
}

uint64_t sccFormatWriterEachSampleCallback(opaqueCMSampleBuffer *a1, uint64_t a2, uint64_t *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = a3[1];
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  blockBufferOut = 0;
  if (!DataBuffer)
  {
    return 0;
  }

  v7 = DataBuffer;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  memset(&v65, 0, sizeof(v65));
  CMSampleBufferGetOutputPresentationTimeStamp(&v65, a1);
  SampleSize = CMSampleBufferGetSampleSize(a1, 0);
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (!FormatDescription)
  {
    sccFormatWriterEachSampleCallback_cold_8(&time1);
    goto LABEL_104;
  }

  if ((v65.flags & 1) == 0)
  {
    sccFormatWriterEachSampleCallback_cold_7(&time1);
    goto LABEL_104;
  }

  if (!SampleSize)
  {
    sccFormatWriterEachSampleCallback_cold_6(&time1);
    goto LABEL_104;
  }

  LODWORD(time1.value) = 0;
  LODWORD(time2.value) = 0;
  ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = FigClosedCaptionGetClosedCaptionServiceFormatAndServiceIndexFromFormatDescription(FormatDescription, &time1, &time2);
  if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
  {
    goto LABEL_38;
  }

  if (LODWORD(time2.value))
  {
    v12 = LODWORD(time1.value) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    value = 1;
  }

  else
  {
    value = time2.value;
  }

  if (LODWORD(time2.value) && LODWORD(time1.value) && LODWORD(time1.value) != 1681272888)
  {
    fig_log_get_emitter();
    ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = FigSignalErrorAtGM();
    goto LABEL_38;
  }

  if (*v4)
  {
    if (MediaSubType != *v4)
    {
      sccFormatWriterEachSampleCallback_cold_1(&time1);
      goto LABEL_104;
    }
  }

  else
  {
    *v4 = MediaSubType;
  }

  v15 = v4[1];
  if (v15)
  {
    if (value != v15)
    {
      sccFormatWriterEachSampleCallback_cold_2(&time1);
      goto LABEL_104;
    }
  }

  else
  {
    v4[1] = value;
  }

  time1 = **&MEMORY[0x1E6960CC0];
  time2 = v65;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    sccFormatWriterEachSampleCallback_cold_5(&time1);
    goto LABEL_104;
  }

  CMTimeMake(&time1, 360000, 1);
  time2 = v65;
  if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
  {
    sccFormatWriterEachSampleCallback_cold_4(&time1);
    goto LABEL_104;
  }

  if (!CMBlockBufferIsRangeContiguous(v7, 0, 0))
  {
    ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v7, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut);
    if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
    {
      goto LABEL_38;
    }

    v7 = blockBufferOut;
  }

  ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = CMBlockBufferGetDataPointer(v7, 0, 0, &totalLengthOut, &dataPointerOut);
  if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
  {
    goto LABEL_38;
  }

  v16 = dataPointerOut;
  v17 = totalLengthOut;
  v62 = v65;
  time1 = v65;
  v18 = (v5 + 28);
  v19 = CMTimeGetSeconds(&time1) * (*(v5 + 36) / *(v5 + 28));
  v20 = llroundf(v19);
  v21 = *(v5 + 84);
  if (v21 != -1 && v21 >= v20)
  {
    value_low = 4294954663;
    goto LABEL_109;
  }

  __str.timescale = 0;
  __str.value = 0;
  v67.value = 0;
  v58 = v20;
  v57 = (v5 + 28);
  if (!*(v5 + 56) || (CMTimeMake(&time1, 1001, 30000), *&time2.value = *v18, time2.epoch = *(v5 + 44), CMTimeCompare(&time1, &time2)) && (CMTimeMake(&time1, 100, 2997), *&time2.value = *v18, time2.epoch = *(v5 + 44), CMTimeCompare(&time1, &time2)))
  {
    v22 = *(v5 + 52);
    v23 = 58;
    v24 = v20;
  }

  else
  {
    v22 = *(v5 + 52);
    v25 = 600 * v22 - 18;
    v26 = 18 * (v20 / v25);
    v27 = v20 % v25;
    v28 = __OFSUB__(v27, 60 * v22);
    v29 = v27 - 60 * v22;
    if (v29 < 0 == v28)
    {
      v26 += 2 * (v29 / (60 * v22 - 2)) + 2;
    }

    v24 = v26 + v20;
    v23 = 59;
  }

  snprintf(&__str, 0xCuLL, "%02d:%02d:%02d%c%02d", ((v24 / v22) / 16), ((v24 / v22 / 60) % 60), (v24 / v22 % 60), v23, (v24 % v22));
  strlen(&__str);
  ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = CMByteStreamAppend();
  if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
  {
LABEL_38:
    value_low = ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription;
    goto LABEL_109;
  }

  if (MediaSubType != 1635017571)
  {
    if (MediaSubType != 1664495672)
    {
      value_low = 4294954662;
      goto LABEL_109;
    }

    if ((value - 3) >= 2)
    {
      v30 = 1667522932;
    }

    else
    {
      v30 = 1667527730;
    }

    v54 = v5;
    if (v17 < 9)
    {
      goto LABEL_106;
    }

    v31 = 0;
    v32 = 0;
    v33 = *(v5 + 16);
    v55 = v30;
    while (1)
    {
      v34 = bswap32(*v16);
      if (v34 < 8 || v17 < v34)
      {
        value_low = 4294954659;
        goto LABEL_109;
      }

      if (v30 == bswap32(*(v16 + 1)))
      {
        v36 = v34 - 8;
        if (v34 != 8)
        {
          break;
        }
      }

LABEL_69:
      v16 += v34;
      v17 -= v34;
      if (v17 <= 8)
      {
        goto LABEL_107;
      }
    }

    v59 = v16;
    v37 = 0;
    if (v32)
    {
      v38 = 32;
    }

    else
    {
      v38 = 9;
    }

    while (1)
    {
      LOWORD(time2.value) = 0;
      if (v37 + 1 >= v36)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      __memcpy_chk();
      if (v37 + 1 >= v36)
      {
        BYTE1(time2.value) = 0x80;
      }

      LOBYTE(__str.value) = v38;
      time1.value = 0;
      ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = CMByteStreamAppend();
      if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
      {
        goto LABEL_38;
      }

      ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = sccFormatWriterWriteBytePair(v33, LOBYTE(time2.value), BYTE1(time2.value));
      if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
      {
        goto LABEL_38;
      }

      ++v31;
      v37 += v39;
      v38 = 32;
      if (v37 >= v36)
      {
        v32 = 1;
        v16 = v59;
        v30 = v55;
        goto LABEL_69;
      }
    }
  }

  v54 = v5;
  if (v17 < 8)
  {
LABEL_106:
    v31 = 0;
LABEL_107:
    LODWORD(time2.value) = 168626701;
    time1.value = 0;
    value_low = CMByteStreamAppend();
    if (!value_low)
    {
      time2 = *v57;
      memset(&time1, 0, sizeof(time1));
      CMTimeMultiply(&time1, &time2, v31);
      time2 = v62;
      __str = time1;
      CMTimeAdd(&v67, &time2, &__str);
      *(v54 + 60) = v67;
      *(v54 + 84) = v58 + v31 - 1;
    }

    goto LABEL_109;
  }

  v31 = 0;
  v40 = 0;
  v41 = *(v5 + 16);
  v42 = value - 3;
  while (*v16 != 71 || v16[1] != 65 || v16[2] != 57 || v16[3] != 52 || v16[4] != 3)
  {
    ++v16;
    --v17;
LABEL_96:
    if (v17 <= 7)
    {
      goto LABEL_107;
    }
  }

  v43 = v16[5];
  v44 = v43 & 0x1F;
  if (v17 - 7 >= 3 * (v43 & 0x1F))
  {
    v60 = v16 + 5;
    v56 = 3 * (v43 & 0x1F);
    if ((v16[5] & 0x40) != 0 && (v43 & 0x1F) != 0)
    {
      v45 = 0;
      v46 = (v16 + 9);
      v61 = v43 & 0x1F;
      do
      {
        v47 = *(v46 - 2);
        if ((v47 & 3) <= 1 && v47 >= 0xFC && v42 < 2 != ((v47 & 3) != 1))
        {
          v49 = *(v46 - 1);
          v50 = *v46;
          if (v40)
          {
            v51 = 32;
          }

          else
          {
            v51 = 9;
          }

          LOBYTE(time2.value) = v51;
          time1.value = 0;
          ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = CMByteStreamAppend();
          if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
          {
            goto LABEL_38;
          }

          ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription = sccFormatWriterWriteBytePair(v41, v49, v50);
          if (ClosedCaptionServiceFormatAndServiceIndexFromFormatDescription)
          {
            goto LABEL_38;
          }

          ++v31;
          v40 = 1;
          v44 = v61;
        }

        ++v45;
        v46 += 3;
      }

      while (v45 < v44);
    }

    v52 = (v56 + 2);
    v16 = &v60[v52];
    v17 = v17 - 5 - v52;
    goto LABEL_96;
  }

  if (sccFormatWriterEachSampleCallback_cold_3(&time1))
  {
    goto LABEL_106;
  }

LABEL_104:
  value_low = LODWORD(time1.value);
LABEL_109:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return value_low;
}

uint64_t sccFormatWriterWriteBytePair(uint64_t a1, int a2, int a3)
{
  v5 = 0;
  *__str = 0;
  snprintf(__str, 5uLL, "%02x%02x", a2, a3);
  strlen(__str);
  return CMByteStreamAppend();
}

uint64_t FigMetricDownloadSummaryEventCreate(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, double a9, void *a10)
{
  ensureMetricEventTrace();
  if (a10)
  {
    FigMetricEventGetClassID();
    v19 = CMDerivedObjectCreate();
    if (!v19)
    {
      v20 = a7;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0x100000000000000;
      if (a2)
      {
        v22 = CFRetain(a2);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v22 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 8) = v22;
      if (a3)
      {
        v24 = CFRetain(a3);
      }

      else
      {
        v24 = 0;
      }

      *(DerivedStorage + 16) = v24;
      if (a4)
      {
        v25 = CFRetain(a4);
      }

      else
      {
        v25 = 0;
      }

      *(DerivedStorage + 24) = v25;
      *(DerivedStorage + 32) = a5;
      *(DerivedStorage + 40) = a6;
      *(DerivedStorage + 48) = v20;
      *(DerivedStorage + 56) = a9;
      if (a8)
      {
        v26 = CFRetain(a8);
      }

      else
      {
        v26 = 0;
      }

      v19 = 0;
      *(DerivedStorage + 64) = v26;
      *a10 = 0;
    }
  }

  else
  {
    FigMetricDownloadSummaryEventCreate_cold_1(&v28);
    return v28;
  }

  return v19;
}

void meds_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[8];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {

    CFRelease(v4);
  }
}

CFTypeRef meds_copySessionID()
{
  result = *(CMBaseObjectGetDerivedStorage() + 16);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t DDPlusGetSyncFrameInfo(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a2 = *(a1 + 2) >> 6;
  *a3 = (*(a1 + 2) >> 3) & 7;
  return 0;
}

uint64_t DolbyCreateChannelLayout(uint64_t a1, void *a2, UInt32 *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  if (*(a1 + 16))
  {
    v5 = *(a1 + 14);
    if (v5 <= 3)
    {
      if (*(a1 + 15))
      {
        v14 = 9764866;
      }

      else
      {
        v14 = 6553601;
      }

      if (*(a1 + 15))
      {
        v15 = 8716291;
      }

      else
      {
        v15 = 6619138;
      }

      if (*(a1 + 15))
      {
        v16 = 9961476;
      }

      else
      {
        v16 = 9830403;
      }

      if (v5 == 3)
      {
        v17 = v16;
      }

      else
      {
        v17 = 6619138;
      }

      if (v5 == 2)
      {
        v17 = v15;
      }

      if (v5 == 1)
      {
        v11 = v14;
      }

      else
      {
        v11 = v17;
      }
    }

    else
    {
      if (*(a1 + 15))
      {
        v6 = 9043973;
      }

      else
      {
        v6 = 8650756;
      }

      if (*(a1 + 15))
      {
        v7 = 8060934;
      }

      else
      {
        v7 = 7798789;
      }

      if (v5 != 7)
      {
        v7 = 6619138;
      }

      if (v5 != 6)
      {
        v6 = v7;
      }

      if (*(a1 + 15))
      {
        v8 = 10027012;
      }

      else
      {
        v8 = 8585219;
      }

      if (*(a1 + 15))
      {
        v9 = 10092549;
      }

      else
      {
        v9 = 9895940;
      }

      if (v5 == 5)
      {
        v10 = v9;
      }

      else
      {
        v10 = 6619138;
      }

      if (v5 == 4)
      {
        v10 = v8;
      }

      if (*(a1 + 14) <= 5u)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }
    }

    goto LABEL_52;
  }

  v12 = *(a1 + 12);
  if (v12 == 53505 || v12 == 41217)
  {
    if (v12 == 41217)
    {
      v11 = 10027012;
    }

    else
    {
      v11 = 10092549;
    }

LABEL_52:
    outPropertyData = v11;
    goto LABEL_53;
  }

  ioPropertyDataSize = 4;
  memset(__src, 0, sizeof(__src));
  v40 = 0;
  if ((v12 & 0x8000) == 0)
  {
    v20 = 0;
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v20 = 1;
  LODWORD(__src[0]) = 1;
  if ((v12 & 0x4000) != 0)
  {
LABEL_57:
    v21 = 20 * v20++;
    *(__src + v21) = 3;
  }

LABEL_58:
  if ((v12 & 0x2000) != 0)
  {
    v24 = 20 * v20++;
    *(__src + v24) = 2;
    if ((v12 & 0x1000) == 0)
    {
LABEL_60:
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_77;
    }
  }

  else if ((v12 & 0x1000) == 0)
  {
    goto LABEL_60;
  }

  v25 = 20 * v20++;
  *(__src + v25) = 5;
  if ((v12 & 0x800) == 0)
  {
LABEL_61:
    if ((v12 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_78;
  }

LABEL_77:
  v26 = 20 * v20++;
  *(__src + v26) = 6;
  if ((v12 & 1) == 0)
  {
LABEL_62:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_79;
  }

LABEL_78:
  v27 = 20 * v20++;
  *(__src + v27) = 4;
  if ((v12 & 0x400) == 0)
  {
LABEL_63:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(__src + 5 * v20) = 7;
  v28 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v28) = 8;
  if ((v12 & 0x200) == 0)
  {
LABEL_64:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(__src + 5 * v20) = 33;
  v29 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v29) = 34;
  if ((v12 & 0x100) == 0)
  {
LABEL_65:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_82;
  }

LABEL_81:
  v30 = 20 * v20++;
  *(__src + v30) = 9;
  if ((v12 & 0x80) == 0)
  {
LABEL_66:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_83;
  }

LABEL_82:
  v31 = 20 * v20++;
  *(__src + v31) = 12;
  if ((v12 & 0x40) == 0)
  {
LABEL_67:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(__src + 5 * v20) = 10;
  v32 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v32) = 11;
  if ((v12 & 0x20) == 0)
  {
LABEL_68:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(__src + 5 * v20) = 35;
  v33 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v33) = 36;
  if ((v12 & 0x10) == 0)
  {
LABEL_69:
    if ((v12 & 8) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(__src + 5 * v20) = 13;
  v34 = v20 + 1;
  v20 += 2;
  *(__src + 5 * v34) = 15;
  if ((v12 & 8) == 0)
  {
LABEL_70:
    if ((v12 & 4) == 0)
    {
      goto LABEL_71;
    }

LABEL_87:
    *(__src + 5 * v20) = 38;
    v36 = v20 + 1;
    v20 += 2;
    *(__src + 5 * v36) = 39;
    if ((v12 & 2) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_86:
  v35 = 20 * v20++;
  *(__src + v35) = 14;
  if ((v12 & 4) != 0)
  {
    goto LABEL_87;
  }

LABEL_71:
  if ((v12 & 2) != 0)
  {
LABEL_72:
    v22 = 20 * v20++;
    *(__src + v22) = 37;
  }

LABEL_73:
  v23 = 20 * (v20 - 1) + 32;
  *a3 = v23;
  v18 = malloc_type_calloc(1uLL, v23, 0x1000040E0EAB150uLL);
  *v18 = 0;
  v18[2] = v20;
  memcpy(v18 + 3, __src, 20 * v20);
  if (AudioFormatGetProperty(0x636D7074u, *a3, v18, &ioPropertyDataSize, &outPropertyData))
  {
    goto LABEL_54;
  }

  free(v18);
LABEL_53:
  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  *v18 = outPropertyData;
  *a3 = 32;
LABEL_54:
  *a2 = v18;
  return 0;
}

uint64_t DolbyGetFormatID(uint64_t a1)
{
  if (*(a1 + 5) - 88 >= 0x30)
  {
    return 1633889587;
  }

  else
  {
    return 1700998451;
  }
}

uint64_t DolbyGetSampleFrequency(uint64_t a1)
{
  v1 = *(a1 + 4) >> 6;
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return DolbyAudioSampleFrequencies[v1];
  }
}

uint64_t DolbyGetFrameSize(_BYTE *a1)
{
  if (a1[5] - 136 <= 0xFFFFFFCF)
  {
    v1 = a1[4];
    v2 = v1 & 0x3F;
    if ((v1 & 0x3F) > 0x25)
    {
      return 0;
    }

    v3 = v1 >> 6;
    if (v3 == 3)
    {
      goto LABEL_9;
    }

    v4 = DolbyAudioSampleFrequencies[v3];
    if (v4 == 32000)
    {
      v5 = &DolbyAudioBitRates + 16 * v2 + 4;
      goto LABEL_10;
    }

    if (v4 != 44100)
    {
LABEL_9:
      v5 = &DolbyAudioBitRates + 16 * v2 + 12;
    }

    else
    {
      v5 = &DolbyAudioBitRates + 16 * v2 + 8;
    }

LABEL_10:
    v6 = *v5;
    return (2 * v6);
  }

  v6 = (a1[3] | ((a1[2] & 7) << 8)) + 1;
  return (2 * v6);
}

uint64_t DolbyCreateMagicCookie(uint64_t a1, unsigned __int8 *a2, OpaqueCMBlockBuffer *a3, void *a4, size_t *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2[5];
  if ((v7 + 120) < 0xD0u)
  {
    v8 = a2[6];
    v9 = v8 >> 5;
    if (((v8 >> 5 != 1) & (v8 >> 5)) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 4;
    }

    if ((v8 & 0x80u) == 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 - 2;
    }

    if (v9 == 2)
    {
      v12 = v11 - 2;
    }

    else
    {
      v12 = v11;
    }

    if (v12 < 0)
    {
      v8 = a2[7];
      LOBYTE(v12) = v12 + 8;
    }

    v13 = a2[4];
    v14 = malloc_type_malloc(0xBuLL, 0x10000403B807CB7uLL);
    if (v14)
    {
      v15 = v14;
      result = 0;
      *v15 = *"";
      v15[8] = v13 & 0xC0 | (v7 >> 2);
      v15[9] = (v7 << 6) | (8 * v9) | (4 * ((v8 >> v12) & 1)) | (v13 >> 4) & 3;
      v15[10] = (16 * v13) & 0xE0;
      *a4 = v15;
      *a5 = 11;
      return result;
    }

    DolbyCreateMagicCookie_cold_2(&v58);
    return v58;
  }

  v19 = *(a1 + 18);
  v20 = 3 * v19 + 10;
  if (*(a1 + 18))
  {
    v21 = (a1 + 19);
    do
    {
      if (*v21++)
      {
        ++v20;
      }

      --v19;
    }

    while (v19);
  }

  if (*(a1 + 17))
  {
    v23 = v20 + 2;
  }

  else
  {
    v23 = v20;
  }

  v24 = malloc_type_malloc(v23, 0x62C99DC2uLL);
  if (!v24)
  {
    DolbyCreateMagicCookie_cold_1(&v58);
    return v58;
  }

  v25 = v24;
  v46 = a4;
  v47 = a5;
  v45 = v23;
  *v24 = bswap32(v23);
  v24[1] = 862152036;
  v26 = *(a1 + 18);
  *(v24 + 4) = bswap32((v26 - 1) | (*(a1 + 8) / 0x7Du) & 0xFFF8) >> 16;
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = a1 + 19;
    v30 = 10;
    while (1)
    {
      returnedPointerOut = 0;
      CMBlockBufferAccessDataBytes(a3, v28, 0xAuLL, temporaryBlock, &returnedPointerOut);
      v48 = returnedPointerOut[2];
      v49 = returnedPointerOut[5];
      v31 = returnedPointerOut[4];
      v61 = 0;
      v60 = 0u;
      v59[0] = 0;
      v54 = 0;
      v58 = a3;
      v59[1] = (v28 + 2);
      if (!CMBlockBufferGetDataPointer(a3, v28 + 2, &v60, 0, v59))
      {
        *(&v60 + 1) = 0;
        v61 = 0;
      }

      v50 = v31;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      BitStreamFetch(&v58, 2, &v57 + 1);
      v61 += 14;
      BitStreamFetch(&v58, 2, &v57);
      BitStreamFetch(&v58, 2, &v55 + 1);
      BitStreamFetch(&v58, 3, &v56 + 1);
      BitStreamFetch(&v58, 1, &v56);
      v61 += 10;
      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        v61 += 8;
      }

      v32 = HIDWORD(v56);
      if (!HIDWORD(v56))
      {
        v61 += 5;
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 8;
        }
      }

      v33 = HIDWORD(v57);
      if (HIDWORD(v57) == 1)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 16;
        }
      }

      BitStreamFetch(&v58, 1, &v55);
      if (!v55)
      {
        goto LABEL_75;
      }

      if (v32 >= 3)
      {
        v34 = v61;
        v61 += 2;
        if (v32)
        {
          v61 = v34 + 8;
        }
      }

      if ((v32 & 4) != 0)
      {
        v61 += 6;
      }

      if (v56)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 5;
        }
      }

      if (v33)
      {
        goto LABEL_75;
      }

      v53 = 0;
      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        v61 += 6;
      }

      if (!v32)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 6;
        }
      }

      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        v61 += 6;
      }

      BitStreamFetch(&v58, 2, &v53);
      if (v53 == 3)
      {
        v52 = 0;
        BitStreamFetch(&v58, 5, &v52);
        v35 = 8;
        goto LABEL_59;
      }

      if (v53 == 2)
      {
        break;
      }

      if (v53 == 1)
      {
        v35 = v61 + 5;
LABEL_59:
        v61 = v35;
      }

      if (v32 <= 1)
      {
        BitStreamFetch(&v58, 1, &v55);
        if (v55)
        {
          v61 += 14;
        }

        if (!v32)
        {
          BitStreamFetch(&v58, 1, &v55);
          if (v55)
          {
            v61 += 14;
          }
        }
      }

      BitStreamFetch(&v58, 1, &v55);
      if (v55)
      {
        if (HIDWORD(v55))
        {
          if (DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v55)] <= 1u)
          {
            v36 = 1;
          }

          else
          {
            v36 = DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v55)];
          }

          do
          {
            BitStreamFetch(&v58, 1, &v55);
            if (v55)
            {
              v61 += 5;
            }

            --v36;
          }

          while (v36);
        }

        else
        {
          v61 += 5;
        }
      }

LABEL_75:
      BitStreamFetch(&v58, 1, &v55);
      v37 = v55;
      if (v55)
      {
        BitStreamFetch(&v58, 3, &v54);
        v37 = 16 * v54;
      }

      v38 = v25 + v30;
      *v38 = (v49 >> 2) & 0x3E | v48 & 0xC0;
      v38[1] = v50 & 0xF | ((v27 != 0) << 7) | v37;
      v38[2] = 2 * *(v29 + v27);
      v28 += DolbyGetFrameSize(returnedPointerOut);
      if (*(v29 + v27))
      {
        v39 = 0;
        v40 = 0;
        do
        {
          LOWORD(v58) = 0;
          CMBlockBufferAccessDataBytes(a3, v28, 0xAuLL, temporaryBlock, &returnedPointerOut);
          ChanMapForDependentStream = ddplusGetChanMapForDependentStream(returnedPointerOut, &v58);
          v42 = v58;
          if (!ChanMapForDependentStream)
          {
            v42 = 0;
          }

          v39 |= v42;
          v28 += DolbyGetFrameSize(returnedPointerOut);
          ++v40;
        }

        while (v40 < *(v29 + v27));
        v38[2] |= (v39 & 2) != 0;
        v38[3] = v39 & 0x20 | BYTE1(v39) & 2 | ((v39 & 0x400) != 0) | (v39 >> 6) & 4 | (v39 >> 4) & 8 | (v39 >> 2) & 0x10 | (((v39 & 0x10) != 0) << 6) | (16 * v39) & 0x80;
        v43 = 4;
      }

      else
      {
        v43 = 3;
      }

      v30 += v43;
      if (++v27 >= *(a1 + 18))
      {
        goto LABEL_87;
      }
    }

    v35 = v61 + 12;
    goto LABEL_59;
  }

  v30 = 10;
LABEL_87:
  if (*(a1 + 17))
  {
    v44 = v25 + v30;
    *v44 = 1;
    v44[1] = *(a1 + 17);
  }

  result = 0;
  *v46 = v25;
  *v47 = v45;
  return result;
}

uint64_t ddplusGetChanMapForDependentStream(uint64_t a1, _WORD *a2)
{
  v8 = 0;
  v6 = 0;
  v9[0] = 0;
  v9[1] = a1;
  v10 = xmmword_196E77360;
  v11 = xmmword_196E77370;
  BitStreamFetch(v9, 3, &v8);
  *(&v11 + 1) += 11;
  BitStreamFetch(v9, 1, &v6);
  if (v6)
  {
    *(&v11 + 1) += 8;
  }

  if (!v8)
  {
    *(&v11 + 1) += 5;
    BitStreamFetch(v9, 1, &v6);
    if (v6)
    {
      *(&v11 + 1) += 8;
    }
  }

  v7 = 0;
  BitStreamFetch(v9, 1, &v7);
  v3 = 0;
  v4 = v7;
  if (v7)
  {
    BitStreamFetch(v9, 16, &v6 + 1);
    v3 = WORD2(v6);
  }

  *a2 = v3;
  return v4;
}

uint64_t OUTLINED_FUNCTION_0_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a12 = 0;

  return BitStreamFetch(&a24, 1, &a12);
}

void figCSSParseLWSP(UniChar *buffer, int64_t a2, int64_t a3, int64_t *a4)
{
  v5 = a2;
  if (a2 < a3 && (a2 & 0x8000000000000000) == 0)
  {
    v8 = -a2;
    v9 = a2 + 64;
    while (1)
    {
      if (v5 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v5;
      }

      v11 = *(buffer + 20);
      if (v11 <= v5)
      {
        break;
      }

      v12 = *(buffer + 17);
      if (v12)
      {
        v13 = (v12 + 2 * *(buffer + 19));
      }

      else
      {
        v15 = *(buffer + 18);
        if (v15)
        {
          v14 = *(v15 + *(buffer + 19) + v5);
          goto LABEL_13;
        }

        if (*(buffer + 22) <= v5 || (v19 = *(buffer + 21), v19 > v5))
        {
          v20 = -v10;
          v21 = v10 + v8;
          v22 = v9 - v10;
          v23 = v5 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v11)
          {
            v24 = *(buffer + 20);
          }

          *(buffer + 21) = v23;
          *(buffer + 22) = v24;
          if (v11 >= v22)
          {
            v11 = v22;
          }

          v25.location = v23 + *(buffer + 19);
          v25.length = v11 + v21;
          CFStringGetCharacters(*(buffer + 16), v25, buffer);
          v19 = *(buffer + 21);
        }

        v13 = &buffer[-v19];
      }

      v14 = v13[v5];
LABEL_13:
      v16 = v14;
      v17 = (1 << v14) & 0x100002600;
      if (v16 > 0x20 || v17 == 0)
      {
        break;
      }

      ++v5;
      --v8;
      ++v9;
      if (a3 == v5)
      {
        v5 = a3;
        break;
      }
    }
  }

  *a4 = v5;
}

uint64_t figCSSCopyColorComponentWithRangeCheck(float a1, uint64_t a2, float *a3)
{
  if (a1 < 0.0)
  {
    figCSSCopyColorComponentWithRangeCheck_cold_3(&v5);
    return v5;
  }

  else if (a1 > 1.0)
  {
    figCSSCopyColorComponentWithRangeCheck_cold_2(&v4);
    return v4;
  }

  else
  {
    result = 0;
    *a3 = a1;
  }

  return result;
}

uint64_t FigCSSParseDigitsAsUInt32(const __CFString *a1, _DWORD *a2)
{
  Length = CFStringGetLength(a1);
  v9 = 0;
  if (a2)
  {
    v5 = Length;
    v12 = a1;
    v15 = 0;
    v16 = Length;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    CStringPtr = 0;
    v13 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    memset(v11, 0, sizeof(v11));
    v14 = CStringPtr;
    v17 = 0;
    v18 = 0;
    result = figCSSParseOneOrMoreDigits(v11, 0, v5, &v10, &v9);
    if (!result)
    {
      *a2 = v9;
      return result;
    }
  }

  else
  {
    FigCSSParseDigitsAsUInt32_cold_1(v11);
    LODWORD(result) = v11[0];
  }

  if (result == -17821)
  {
    return 4294949474;
  }

  else
  {
    return result;
  }
}

uint64_t FigCSSParseFontSize(const __CFString *a1, uint64_t *a2)
{
  Length = CFStringGetLength(a1);
  v13 = 0;
  v12 = 0;
  v11 = 0.0;
  if (!a2)
  {
    FigCSSParseFontSize_cold_1(v14);
    LODWORD(result) = v14[0];
LABEL_11:
    if (result == -17821)
    {
      return 4294949474;
    }

    else
    {
      return result;
    }
  }

  v5 = Length;
  v15 = a1;
  v18 = 0;
  v19 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v16 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v14, 0, sizeof(v14));
  v20 = 0;
  v21 = 0;
  v17 = CStringPtr;
  LODWORD(result) = figCSSParseOneOrMoreDigits(v14, 0, v5, &v13, &v12);
  if (result)
  {
    goto LABEL_11;
  }

  figCSSParseFraction(v14, v13, v5, &v13, &v11);
  if (figCSSParseCharacter(37, v14, v13, v5, &v13) && figCSSParseString("em", v14, v13, v5, &v13) && figCSSParseString("rem", v14, v13, v5, &v13) && figCSSParseString("vw", v14, v13, v5, &v13) && figCSSParseString("vh", v14, v13, v5, &v13) && figCSSParseString("vmin", v14, v13, v5, &v13) && figCSSParseString("vmax", v14, v13, v5, &v13))
  {
    return 4294949474;
  }

  v9 = FigGeometryDimensionMake();
  result = 0;
  *a2 = v9;
  a2[1] = v10;
  return result;
}

void OUTLINED_FUNCTION_5_56(uint64_t a1@<X8>)
{
  *(v2 + 168) = v1;
  *(v2 + 176) = a1;
  v4 = *(v2 + 128);
  v5.location = *(v2 + 152) + v1;

  v5.length = a1 - v1;
  CFStringGetCharacters(v4, v5, v2);
}

uint64_t OUTLINED_FUNCTION_7_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v13 = a10;

  return figCSSParseDigits(v11, v13, v10, &a10, &a9);
}

uint64_t OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11)
{
  v14 = a11;

  return figCSSParseDigits(v12, v14, v11, &a11, &a10);
}

uint64_t RegisterFigMPEG2ParserBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMPEG2ParserGetTypeID()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_5, RegisterFigMPEG2ParserBaseType);

  return CMBaseClassGetCFTypeID();
}

malloc_zone_t *__FigMPEG2ParserCreate_block_invoke()
{
  result = malloc_create_zone(0, 0);
  gFigMPEG2ParserZone = result;
  if (result)
  {
    malloc_set_zone_name(result, "FigMPEG2ParserZone");
    v1 = *byte_1F0AE6688;
    result = CFAllocatorCreate(0, &v1);
    qword_1EAF195C0 = result;
  }

  return result;
}

uint64_t FigMPEG2ParserSetBaseTimestamp(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 3);
  v5 = (~v4 & 0x11) == 0 || (*(a2 + 3) & 9) == 9;
  v6 = ~v4 & 5;
  v8 = v5 || v6 == 0 || DerivedStorage == 0;
  if (v8 || *(DerivedStorage + 8))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v10 = *a2;
    *(DerivedStorage + 128) = *(a2 + 2);
    *(DerivedStorage + 112) = v10;
    return 0;
  }
}

uint64_t FigMPEG2ParserSetDecryptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (DerivedStorage = CMBaseObjectGetDerivedStorage(), !*(DerivedStorage + 8)))
  {
    *(DerivedStorage + 80) = a2;
    *(DerivedStorage + 88) = a3;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMPEG2ParserInjectData(CFTypeRef cf, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  if (!cf || (CFRetain(cf), !a2))
  {
    v12 = FigMPEG2ParserInjectData_cold_3(cf == 0, &v15);
    v9 = v15;
    if (v12)
    {
      return v9;
    }

    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    FigMPEG2ParserInjectData_cold_1(&v13);
    v9 = v13;
    goto LABEL_9;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 168);
  if (!v8)
  {
    if (MPEG2TSSniff(a2, *(DerivedStorage + 96)))
    {
      *(v7 + 448) = 1;
      MPEG2TSInitialize(v7);
      goto LABEL_7;
    }

    v11 = *(v7 + 96);
    if ((v11 & 4) != 0)
    {
      if (!MPEG2PSSniff(a2, (v7 + 48)))
      {
        MPEG2PSInitialize(v7);
        goto LABEL_7;
      }

      v11 = *(v7 + 96);
    }

    if ((v11 & 8) != 0 && !MPEG2VideoSniff(a2))
    {
      *(v7 + 48) = 4;
      MPEG2VideoInitialize(v7);
    }

LABEL_7:
    v8 = *(v7 + 168);
    if (!v8)
    {
      FigMPEG2ParserInjectData_cold_2(&v14);
      v9 = v14;
      goto LABEL_9;
    }
  }

  v9 = v8(v7, a2, a3);
LABEL_9:
  CFRelease(cf);
  return v9;
}

uint64_t FigMPEG2ParserAddTransportStreamTrack(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a1 && (a2 - 0x1FFF) > 0xE001u && (DerivedStorage = CMBaseObjectGetDerivedStorage(), !*(DerivedStorage + 8)) && ((v9 = *(DerivedStorage + 48), v9 < 2) || v9 == 192))
  {

    return MPEG2TSAddTrack(DerivedStorage, a2, a3, a4);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMPEG2ParserIssueCommands(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 8))
    {
      v6 = DerivedStorage;
      v7 = *(DerivedStorage + 24);
      if (v7)
      {
        do
        {
          if (a2)
          {
            v8 = *(v7 + 864);
            if (v8)
            {
              v8(v7);
            }
          }

          if ((a2 & 2) != 0)
          {
            PesReinitialize(v7);
          }

          v9 = *(v7 + 92);
          if (v9)
          {
            v9(a1, *(v7 + 60), *(v7 + 104), a2);
          }

          v7 = *(v7 + 32);
        }

        while (v7);
        if ((a2 & 2) == 0)
        {
          return 0;
        }
      }

      else if ((a2 & 2) == 0)
      {
        return 0;
      }

      for (i = *(v6 + 16); i; i = *(i + 8))
      {
        *(i + 64) = 0;
        *(i + 88) = 0;
      }

      v11 = *(v6 + 176);
      if (v11)
      {
        v11(v6);
      }

      return 0;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2ParserInstallCallbacksForTrack(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, unsigned int a5)
{
  if (!a1)
  {
    goto LABEL_60;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8) || (a5 & 1) != 0 && *(DerivedStorage + 48) == 4)
  {
    goto LABEL_60;
  }

  v10 = *(DerivedStorage + 24);
  if (!v10)
  {
    goto LABEL_60;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  result = 0;
  v15 = *&vshl_u16((*&vdup_n_s16(a5) & 0xFF00FF00FF00FFLL), 0xFFFDFFFEFFFFFFFCLL) & 0xFF01FF01FF01FF01;
  v21 = vuzp1_s8(v15, v15).u32[0];
  do
  {
    if (*(v10 + 60) != a2)
    {
      goto LABEL_51;
    }

    v16 = (v10 + 84);
    v11 = *v10;
    if (a3)
    {
      *v16 = *a3;
    }

    else
    {
      *v16 = 0;
      *(v10 + 92) = 0;
    }

    *(v10 + 104) = a4;
    *(v10 + 112) = a5;
    *(v10 + 116) = v21;
    if (a5)
    {
      result = CreatePesPrivateForRawPes(v10);
      if (!result)
      {
        goto LABEL_49;
      }

      goto LABEL_20;
    }

    v17 = 0;
    v18 = *(v10 + 56);
    if (v18 <= 1701143346)
    {
      if (v18 <= 1700880738)
      {
        if (v18 == 1633891104)
        {
          goto LABEL_36;
        }

        if (v18 != 1633973363)
        {
          if (v18 != 1685353248)
          {
            goto LABEL_48;
          }

          result = CreatePesPrivateForDTS(v10);
          goto LABEL_47;
        }
      }

      else
      {
        if (v18 > 1700886114)
        {
          if (v18 == 1700886115)
          {
LABEL_43:
            result = CreatePesPrivateForH264(v10);
            goto LABEL_47;
          }

          v20 = 1700998451;
          goto LABEL_35;
        }

        if (v18 != 1700880739)
        {
          v20 = 1700881203;
LABEL_35:
          if (v18 != v20)
          {
            goto LABEL_48;
          }

          goto LABEL_36;
        }
      }

      result = CreatePesPrivateForADTS(v10);
      goto LABEL_47;
    }

    if (v18 <= 1836476771)
    {
      if (v18 > 1819304812)
      {
        if (v18 == 1819304813)
        {
          result = CreatePesPrivateForLPCM(v10);
        }

        else
        {
          if (v18 != 1835103588)
          {
            goto LABEL_48;
          }

          result = CreatePesPrivateForMP3(v10);
        }

        goto LABEL_47;
      }

      if (v18 != 1701143347)
      {
        v19 = 1748121140;
LABEL_42:
        if (v18 != v19)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

LABEL_36:
      result = CreatePesPrivateForDolby(v10);
LABEL_47:
      v17 = 1;
      goto LABEL_48;
    }

    if (v18 <= 1886614577)
    {
      if (v18 == 1836476772)
      {
        result = CreatePesPrivateForMPEG2Video(v10);
      }

      else
      {
        if (v18 != 1886612592)
        {
          goto LABEL_48;
        }

        result = CreatePesPrivateForPSLPCM(v10);
      }

      goto LABEL_47;
    }

    if (v18 != 1886614578)
    {
      v19 = 2053207651;
      goto LABEL_42;
    }

    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
    v17 = 0;
LABEL_48:
    *(v10 + 80) = v17;
    if (!result)
    {
LABEL_49:
      ++v13;
      goto LABEL_50;
    }

LABEL_20:
    *v16 = 0;
    *(v10 + 92) = 0;
LABEL_50:
    v12 = 1;
LABEL_51:
    if (*(v10 + 80))
    {
      ++v13;
    }

    v10 = *(v10 + 32);
  }

  while (v10);
  if (v12)
  {
    if (v11)
    {
      *(v11 + 72) = v13;
    }

    return result;
  }

LABEL_60:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2ParserGetStreamType(uint64_t a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 8))
    {
      FigMPEG2ParserGetStreamType_cold_1(&v6);
      return v6;
    }

    else
    {
      v4 = DerivedStorage;
      result = 0;
      *a2 = *(v4 + 48);
    }
  }

  else
  {
    FigMPEG2ParserGetStreamType_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigMPEG2ParserSniff(OpaqueCMBlockBuffer *a1, char a2, int *a3)
{
  if (a1 && a3)
  {
    *a3 = 0;
    if ((a2 & 3) != 0 && MPEG2TSSniff(a1, a2))
    {
      return 0;
    }

    if ((a2 & 4) != 0)
    {
      result = MPEG2PSSniff(a1, a3);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 4294954325;
    }

    if ((a2 & 8) != 0)
    {
      result = MPEG2VideoSniff(a1);
      if (!result)
      {
        *a3 = 4;
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

uint64_t FigMPEG2ParserGetFrameRateForVideoTrack(uint64_t a1, int a2, float *a3)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_12;
  }

  v6 = *(DerivedStorage + 24);
  if (!v6)
  {
    goto LABEL_12;
  }

  while (*(v6 + 60) != a2)
  {
    v6 = *(v6 + 32);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v7 = *(v6 + 808);
  if (v7 && (v8 = *(v6 + 804)) != 0)
  {
    *a3 = v8 / v7;
    return 0;
  }

  else
  {
LABEL_12:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMPEG2ParserGetTimeCodeValueForVideoTrack(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_8;
  }

  v6 = *(DerivedStorage + 24);
  if (!v6)
  {
    goto LABEL_8;
  }

  while (*(v6 + 60) != a2)
  {
    v6 = *(v6 + 32);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v6 + 604);
  if (v8)
  {
    *a3 = v8;
    return 0;
  }

  else
  {
LABEL_8:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void FigMPEG2ParserFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(CMBaseObjectGetDerivedStorage() + 8) = 1;
  while (1)
  {
    v1 = DerivedStorage[2];
    if (!v1)
    {
      break;
    }

    v2 = v1[1];
    v3 = v1[2];
    if (v2)
    {
      *(v2 + 16) = v3;
    }

    *v3 = v2;
    free(v1);
  }

  for (i = DerivedStorage[3]; i; i = DerivedStorage[3])
  {
    PesCleanOutData(i);
    free(*(i + 824));
    v5 = *(i + 48);
    if (v5)
    {
      v6 = *(i + 856);
      if (v6)
      {
        v6(i);
      }

      else
      {
        free(v5);
      }
    }

    v7 = *(i + 32);
    v8 = *(i + 40);
    v9 = (v7 + 40);
    if (!v7)
    {
      v9 = DerivedStorage + 4;
    }

    *v9 = v8;
    *v8 = v7;
    PesFrameHeaderDestroy((i + 544));
    free(i);
  }

  v10 = DerivedStorage[57];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[57] = 0;
  }

  v11 = DerivedStorage[52];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[52] = 0;
  }

  v12 = DerivedStorage[5];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[5] = 0;
  }
}

__CFString *FigMPEG2ParserCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigMPEG2Parser");
  return Mutable;
}

uint64_t FigMPEG2ParserCopyProperty()
{
  CMBaseObjectGetDerivedStorage();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2ParserSetProperty()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, uint64_t *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  value = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    v53.value = 0;
    FigRenderPipelineGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      value_low = v8;
LABEL_25:
      if (value)
      {
        CFRelease(value);
      }

      return value_low;
    }

    v11 = v53.value;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 48) = FigSimpleMutexCreate();
    *(DerivedStorage + 8) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.notification", 0);
    *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.baoNotificationQueue", 0);
    *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.mixerNotificationQueue", 0);
    *(DerivedStorage + 32) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 40) = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayRenderPipeline.processqueue", 0);
    v13 = *MEMORY[0x1E6960C70];
    v14 = *(MEMORY[0x1E6960C70] + 16);
    *(DerivedStorage + 176) = v14;
    *(DerivedStorage + 184) = v13;
    *(DerivedStorage + 200) = v14;
    *(DerivedStorage + 208) = v13;
    *(DerivedStorage + 224) = v14;
    v15 = MEMORY[0x1E6960CC0];
    *(DerivedStorage + 276) = *(MEMORY[0x1E6960CC0] + 16);
    *(DerivedStorage + 260) = *v15;
    *(DerivedStorage + 240) = 0;
    *DerivedStorage = 0;
    *(DerivedStorage + 360) = 0;
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 144) = xmmword_196E77610;
    *(DerivedStorage + 160) = v13;
    *(DerivedStorage + 104) = 0;
    *(DerivedStorage + 384) = 0;
    *(DerivedStorage + 80) = 0;
    *(DerivedStorage + 408) = 0;
    *(DerivedStorage + 416) = 0;
    *(DerivedStorage + 288) = 0;
    *(DerivedStorage + 296) = DerivedStorage + 288;
    *(DerivedStorage + 304) = 0;
    *(DerivedStorage + 424) = 0;
    if (a3)
    {
      if (CFDictionaryGetValueIfPresent(a3, @"LoggingID", &value))
      {
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, value);
        if (!MutableCopy)
        {
          value_low = 4294954510;
          goto LABEL_25;
        }

        v17 = MutableCopy;
        FigBufferedAirPlayAudioRenderPipelineCreate_cold_11(MutableCopy, (DerivedStorage + 424));
      }

      else
      {
        FigBufferedAirPlayAudioRenderPipelineCreate_cold_10();
        v17 = 0;
      }

      value = CFStringCreateWithCString(a1, (DerivedStorage + 424), 0x8000100u);
      if (CFDictionaryGetValueIfPresent(a3, @"AudioSession", (DerivedStorage + 368)))
      {
        v18 = *(DerivedStorage + 368);
        if (v18)
        {
          CFRetain(v18);
        }
      }
    }

    else
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_12(DerivedStorage + 424, a1, &value);
      v17 = 0;
    }

    Factory = FigBufferedAirPlayOutputProxyCreateFactory(a1, a2, (DerivedStorage + 392));
    if (Factory)
    {
      goto LABEL_20;
    }

    v49 = v17;
    v50 = v11;
    if (dword_1EAF17188)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Factory = FigSampleBufferConsumerCreateForSampleBufferConsumer("consumerToBAO", (DerivedStorage + 104));
    if (Factory)
    {
      goto LABEL_20;
    }

    v22 = CMBaseObjectGetDerivedStorage();
    if (*(v22 + 392))
    {
      if (!*(v22 + 128))
      {
        FigSimpleMutexLock();
        v23 = CMBaseObjectGetDerivedStorage();
        dictionaryRepresentation = 0;
        if (*v23)
        {
          FigBufferedAirPlayAudioRenderPipelineCreate_cold_2(&v53);
        }

        else
        {
          v24 = v23;
          v25 = (v23 + 128);
          if (*(v23 + 128))
          {
            FigBufferedAirPlayAudioRenderPipelineCreate_cold_3(&v53);
          }

          else if (*(v23 + 56))
          {
            FigBufferedAirPlayAudioRenderPipelineCreate_cold_4(&v53);
          }

          else
          {
            v26 = CFDictionaryGetValue(a3, @"FormatDescription");
            if (v26)
            {
              v27 = v26;
              CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
              v29 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, v25);
              if (v29)
              {
LABEL_35:
                value_low = v29;
                v30 = 0;
                goto LABEL_42;
              }

              Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
              *(v24 + 88) = Mutable;
              if (Mutable)
              {
                CMBaseObject = FigBufferedAirPlayOutputProxyGetCMBaseObject(*(v24 + 392));
                v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v33)
                {
                  v29 = v33(CMBaseObject, @"PrerollDuration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
                  if (v29)
                  {
                    goto LABEL_35;
                  }

                  CMTimeMakeFromDictionary(&v53, dictionaryRepresentation);
                  *(v24 + 336) = v53;
                  *(v24 + 120) = CFRetain(v27);
                  v34 = CMBaseObjectGetDerivedStorage();
                  *(v34 + 320) = FigGetCFPreferenceNumberWithDefault();
                  v35 = fbaprp_setupBufferedAirPlayMediaProcessor();
                  if (v35)
                  {
                    value_low = v35;
                    v30 = 0;
                  }

                  else
                  {
                    if (FigGetCFPreferenceNumberWithDefault())
                    {
                      UInt32 = FigCFNumberCreateUInt32();
                      FigMediaProcessorSetProperty(*(v24 + 56), @"ActivitySchedulerPriority", UInt32);
                    }

                    else
                    {
                      UInt32 = 0;
                    }

                    value_low = FigMediaProcessorGo(*(v24 + 56));
                    v30 = UInt32;
                  }
                }

                else
                {
                  v30 = 0;
                  value_low = 4294954514;
                }
              }

              else
              {
                v30 = 0;
                value_low = 4294954443;
              }

LABEL_42:
              if (dictionaryRepresentation)
              {
                CFRelease(dictionaryRepresentation);
              }

              if (v30)
              {
                CFRelease(v30);
              }

              FigSimpleMutexUnlock();
              if (value_low)
              {
                goto LABEL_47;
              }

              goto LABEL_57;
            }

            FigBufferedAirPlayAudioRenderPipelineCreate_cold_5(&v53);
          }
        }

        v30 = 0;
        value_low = LODWORD(v53.value);
        goto LABEL_42;
      }

      FigBufferedAirPlayAudioRenderPipelineCreate_cold_1(&v53);
    }

    else
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_6(&v53);
    }

    value_low = LODWORD(v53.value);
    if (LODWORD(v53.value))
    {
LABEL_47:
      v21 = 0;
LABEL_48:
      v17 = v49;
      goto LABEL_21;
    }

LABEL_57:
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
    }

    v36 = _MergedGlobals_59;
    v37 = FigBufferedAirPlayOutputProxyRegisterRenderPipeline(*(DerivedStorage + 392), v50, *(DerivedStorage + 104), a3, value, DerivedStorage + 400);
    value_low = v37;
    if (v36)
    {
      if (!v37)
      {
        v38 = CFDictionaryGetValue(a3, @"FormatDescription");
        v39 = v50;
        if (!v38)
        {
          FigBufferedAirPlayAudioRenderPipelineCreate_cold_8(&v53);
          v21 = 0;
          value_low = LODWORD(v53.value);
          goto LABEL_48;
        }

        Factory = fbaprp_copyOutputFormatDataFromContentFormatDescription(v50, v38);
        v17 = v49;
        if (Factory || (CMNotificationCenterGetDefaultLocalCenter(), Factory = FigNotificationCenterAddWeakListeners(), Factory))
        {
LABEL_20:
          value_low = Factory;
          v21 = 0;
LABEL_21:
          if (v17)
          {
            CFRelease(v17);
          }

          if (v21)
          {
            CFRelease(v21);
          }

          goto LABEL_25;
        }

        v40 = fbaprp_setWaterLevelsForRenderPipelineOutput();
        v21 = 0;
        if (!v40)
        {
LABEL_65:
          if (dword_1EAF17188)
          {
            v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v17 = v49;
            v39 = v50;
          }

          value_low = 0;
          *a4 = v39;
          goto LABEL_21;
        }

LABEL_80:
        value_low = v40;
        goto LABEL_21;
      }
    }

    else if (!v37)
    {
      v42 = CFDictionaryGetValue(a3, @"FormatDescription");
      if (v42)
      {
        v43 = v42;
        v44 = fbaprp_copyOutputFormatDataFromContentFormatDescription(v50, v42);
        v17 = v49;
        if (v44)
        {
          value_low = v44;
          v21 = 0;
          goto LABEL_21;
        }

        v45 = FigCFDictionaryCreateMutableCopy();
        v21 = v45;
        if (!v45)
        {
          value_low = 4294954510;
          goto LABEL_21;
        }

        CFDictionarySetValue(v45, @"LoggingID", value);
        v46 = FigBufferedAirPlaySubPipeManagerForRenderPipelineCreate(a1, *(DerivedStorage + 104), a2, v43, a3, v21, (DerivedStorage + 376));
        if (v46)
        {
          value_low = v46;
          goto LABEL_21;
        }

        if (dword_1EAF17188)
        {
          v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = v49;
        }

        v39 = v50;
        v40 = fbaprp_configureSubPipeManager();
        if (!v40)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v40 = FigNotificationCenterAddWeakListeners();
          if (!v40)
          {
            goto LABEL_65;
          }
        }

        goto LABEL_80;
      }

      FigBufferedAirPlayAudioRenderPipelineCreate_cold_9(&v53);
      v21 = 0;
      value_low = LODWORD(v53.value);
LABEL_69:
      v17 = v49;
      goto LABEL_21;
    }

    v21 = 0;
    goto LABEL_69;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigBufferedAirPlayOutputProxyRegisterRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(a1, a2, a3, a4, a5, a6);
}

uint64_t fbaprp_copyOutputFormatDataFromContentFormatDescription(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  cf = 0;
  if (a2)
  {
    v4 = DerivedStorage;
    RichestDecodableFormatAndChannelLayout = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
    if (RichestDecodableFormatAndChannelLayout)
    {
LABEL_3:
      v6 = RichestDecodableFormatAndChannelLayout;
      goto LABEL_9;
    }

    v7 = *(v4 + 392);
    v8 = *(v4 + 400);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v9)
    {
      v6 = 4294954514;
      goto LABEL_9;
    }

    RichestDecodableFormatAndChannelLayout = v9(v7, v8, cf, &v11);
    if (RichestDecodableFormatAndChannelLayout)
    {
      goto LABEL_3;
    }

    RichestDecodableFormatAndChannelLayout = CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
    if (RichestDecodableFormatAndChannelLayout)
    {
      goto LABEL_3;
    }

    fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_2(&v13);
  }

  else
  {
    fbaprp_copyOutputFormatDataFromContentFormatDescription_cold_3(&v13);
  }

  v6 = v13;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t fbaprp_configureSubPipeManager()
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(DerivedStorage + 376));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v3 = v2(CMBaseObject, @"SourceSampleBufferConsumer", *MEMORY[0x1E695E480], cf);
    if (v3)
    {
LABEL_3:
      v4 = v3;
      goto LABEL_9;
    }

    v5 = *(DerivedStorage + 64);
    v6 = cf[0];
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v3 = v7(v5, @"DownstreamConsumer", v6);
      if (!v3)
      {
        if (dword_1EAF17188)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v3 = FigNotificationCenterAddWeakListeners();
      }

      goto LABEL_3;
    }
  }

  v4 = 4294954514;
LABEL_9:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v4;
}

uint64_t fbaprp_setWaterLevelsForRenderPipelineOutput()
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17188)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v3 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&time, v3, 1000);
  v4 = *MEMORY[0x1E695E480];
  v5 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  if (!v5)
  {
    fbaprp_setWaterLevelsForRenderPipelineOutput_cold_2(&time);
    return LODWORD(time.value);
  }

  v6 = v5;
  CMTimeMake(&time, CFPreferenceNumberWithDefault, 1000);
  v7 = CMTimeCopyAsDictionary(&time, v4);
  if (!v7)
  {
    fbaprp_setWaterLevelsForRenderPipelineOutput_cold_1(v6, &time);
    return LODWORD(time.value);
  }

  v8 = v7;
  v9 = *(DerivedStorage + 104);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10(v9, @"StashHighWaterLevel", v6);
  if (!v11)
  {
    v12 = *(DerivedStorage + 104);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v11 = v13(v12, @"StashLowWaterLevel", v8);
      goto LABEL_10;
    }

LABEL_9:
    v11 = 4294954514;
  }

LABEL_10:
  CFRelease(v6);
  CFRelease(v8);
  return v11;
}

void FigCFRelease_4(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *FigBufferedAirPlayAudioRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayAudioRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineCopyProperty(uint64_t a1, __CFString *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_1(v22);
    BufferedAirPlaySampleBufferConsumer = v22[0];
    goto LABEL_9;
  }

  if (CFEqual(@"IsTimebaseStarter", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 256);
    goto LABEL_4;
  }

  if (CFEqual(@"Timebase", a2))
  {
    Float32 = *(DerivedStorage + 248);
    if (!Float32)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (CFEqual(@"IsRunning", a2))
  {
    v14 = MEMORY[0x1E695E4D0];
    if (*(DerivedStorage + 240) == 0.0)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    *a4 = CFRetain(*v14);
    if (dword_1EAF17188)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    BufferedAirPlaySampleBufferConsumer = 0;
    goto LABEL_9;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    Float32 = *(DerivedStorage + 128);
    if (!Float32)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (CFEqual(@"NeedsToFlushWhenRateChanges", a2))
  {
LABEL_22:
    v9 = MEMORY[0x1E695E4D0];
LABEL_6:
    Float32 = *v9;
LABEL_7:
    Float32 = CFRetain(Float32);
LABEL_8:
    BufferedAirPlaySampleBufferConsumer = 0;
    *a4 = Float32;
    goto LABEL_9;
  }

  if (CFEqual(@"PreferredClock", a2))
  {
    CMBaseObject = FigBufferedAirPlayOutputProxyGetCMBaseObject(*(DerivedStorage + 392));
    v17 = @"PreferredClock";
    v18 = a3;
LABEL_26:
    v19 = CMBaseObjectCopyProperty(CMBaseObject, v17, v18, a4);
LABEL_30:
    BufferedAirPlaySampleBufferConsumer = v19;
    goto LABEL_9;
  }

  if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
  {
    v19 = fbaprp_copyEndPresentationTimeForQueuedSamples(a1, a3, a4);
    goto LABEL_30;
  }

  if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
  {
    v19 = fbaprp_copyEndPresentationTimeForDecodedSamples(a1, a3, a4);
    goto LABEL_30;
  }

  if (CFEqual(@"SupportsGaplessTransitionsAcrossFormatChanges", a2) || CFEqual(@"PrefersConsumptionDrivenReads", a2))
  {
    goto LABEL_22;
  }

  if (CFEqual(@"DecodingRate", a2))
  {
    Float32 = FigCFNumberCreateFloat32();
    goto LABEL_8;
  }

  if (CFEqual(@"Started", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 96);
    goto LABEL_4;
  }

  if (CFEqual(@"UsesSubPipe", a2))
  {
    goto LABEL_22;
  }

  if (!CFEqual(@"SourceSampleBufferConsumer", a2))
  {
    if (!CFEqual(@"AllowsPrebuffering", a2))
    {
      if (CFEqual(@"LoggingIdentifier", a2))
      {
        if (a1)
        {
          v20 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v20 = "";
        }

        Float32 = CFStringCreateWithCString(a3, v20, 0x600u);
        goto LABEL_8;
      }

      if (qword_1ED4CAB58 != -1)
      {
        FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
      }

      if (_MergedGlobals_59)
      {
        v19 = FigBufferedAirPlayOutputProxyCopyPipelineProperty(*(DerivedStorage + 392), *(DerivedStorage + 400), a2, *MEMORY[0x1E695E480], a4);
        goto LABEL_30;
      }

      v21 = *MEMORY[0x1E695E480];
      CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(DerivedStorage + 376));
      v17 = a2;
      v18 = v21;
      goto LABEL_26;
    }

    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 384);
LABEL_4:
    if (!v10)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_6;
  }

  BufferedAirPlaySampleBufferConsumer = fbaprp_createBufferedAirPlaySampleBufferConsumer(a1, a4);
  if (!BufferedAirPlaySampleBufferConsumer)
  {
    fbaprp_cleanFreedSampleBufferConsumers();
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return BufferedAirPlaySampleBufferConsumer;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSetProperty(const void *a1, const void *a2, const void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_1(v41);
    return v41[0];
  }

  v7 = DerivedStorage;
  if (CFEqual(@"IsTimebaseStarter", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v7[256] = *MEMORY[0x1E695E4D0] == a3;
        if (dword_1EAF17188)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v24 = *(v7 + 49);
        v23 = *(v7 + 50);
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v25)
        {
          v25(v24, v23, @"RenderPipelineStateIsTimebaseStarter", a3);
        }

        return 0;
      }
    }

    goto LABEL_7;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (!a3 || (v11 = CMTimebaseGetTypeID(), v11 == CFGetTypeID(a3)))
    {
      v12 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*v12)
      {
        FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_2();
      }

      else
      {
        v13 = *(v12 + 248);
        if (v13)
        {
          fbaprp_transitionRosterRemoveRecordByTimebase(a1, v13);
        }

        fbaprp_setTimebaseGuts(a1, a3);
      }

      FigSimpleMutexUnlock();
      if (dword_1EAF17188)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }

    goto LABEL_7;
  }

  if (CFEqual(@"GoActive", a2))
  {
    v15 = CFBooleanGetTypeID();
    if (v15 == CFGetTypeID(a3))
    {
      v16 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*v16)
      {
        FigBufferedAirPlayAudioRenderPipelineSetProperty_cold_3(v41);
        v17 = v41[0];
      }

      else
      {
        if (*MEMORY[0x1E695E4D0] != a3)
        {
          v17 = FigMediaProcessorStop(*(v16 + 56));
          if (!v17)
          {
            v17 = FigMediaProcessorWaitUntilCompletelyStopped(*(v16 + 56));
          }

          FigSimpleMutexUnlock();
          if (dword_1EAF17188)
          {
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fbaprp_postNotification(a1, @"PrerollLost", 0);
          return v17;
        }

        v17 = 0;
      }

      FigSimpleMutexUnlock();
      return v17;
    }

    goto LABEL_7;
  }

  if (CFEqual(@"MXSession", a2))
  {
    return 0;
  }

  if (CFEqual(@"Muted", a2))
  {
    v19 = CFBooleanGetTypeID();
    if (v19 == CFGetTypeID(a3))
    {
      CMBaseObject = FigBufferedAirPlayOutputProxyGetCMBaseObject(*(v7 + 49));
      v21 = kFigBufferedAirPlayOutputProperty_Muted;
LABEL_32:
      v22 = *v21;

      return CMBaseObjectSetProperty(CMBaseObject, v22, a3);
    }

    return 0;
  }

  if (!CFEqual(@"AudioProcessingTap", a2))
  {
    if (CFEqual(@"PrerollRate", a2))
    {
      if (a3)
      {
        v27 = CFNumberGetTypeID();
        if (v27 == CFGetTypeID(a3))
        {
          FigCFNumberGetFloat32();
          *(v7 + 38) = v28;
          if (qword_1ED4CAB58 != -1)
          {
            FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
          }

          if (!_MergedGlobals_59)
          {
            CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(v7 + 47));
            v21 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_DecodeForPrerollRate;
            goto LABEL_32;
          }

          v29 = *(v7 + 49);
          v30 = *(v7 + 50);
          v31 = kFigBufferedAirPlayOutputProxyPipelineProperty_DecodeForPrerollRate;
          goto LABEL_71;
        }
      }

LABEL_7:

      return FigSignalErrorAtGM();
    }

    if (CFEqual(@"PipelineRate", a2))
    {
      if (!a3)
      {
        goto LABEL_7;
      }

      v32 = CFNumberGetTypeID();
      if (v32 != CFGetTypeID(a3))
      {
        goto LABEL_7;
      }

      FigCFNumberGetFloat32();
      *(v7 + 39) = v33;
      if (qword_1ED4CAB58 != -1)
      {
        FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
      }

      if (!_MergedGlobals_59)
      {
        CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(v7 + 47));
        v21 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_PipelineRate;
        goto LABEL_32;
      }

      v29 = *(v7 + 49);
      v30 = *(v7 + 50);
      v31 = kFigBufferedAirPlayOutputProxyPipelineProperty_PipelineRate;
LABEL_71:
      v34 = *v31;

      return FigBufferedAirPlayOutputProxySetPipelineProperty(v29, v30, v34, a3);
    }

    if (CFEqual(@"LoudnessInfo", a2))
    {
      if (qword_1ED4CAB58 != -1)
      {
        FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
      }

      if (!_MergedGlobals_59)
      {
        CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(v7 + 47));
        v21 = kFigBufferedAirPlaySubPipeManagerForRenderPipelineProperty_LoudnessInfo;
        goto LABEL_32;
      }

      v29 = *(v7 + 49);
      v30 = *(v7 + 50);
      v31 = kFigBufferedAirPlayOutputProxyPipelineProperty_LoudnessInfo;
      goto LABEL_71;
    }

    if (CFEqual(@"SoftwareVolume1", a2) || CFEqual(@"SoftwareVolume2", a2) || CFEqual(@"SoftwareVolume3", a2) || CFEqual(@"SoftwareVolume5", a2) || CFEqual(@"SoftwareVolume1RampDuration", a2) || CFEqual(@"SoftwareVolume2RampDuration", a2) || CFEqual(@"STSLabel", a2))
    {
      return 0;
    }

    if (CFEqual(@"AllowsPrebuffering", a2))
    {
      v35 = CFBooleanGetTypeID();
      if (v35 == CFGetTypeID(a3))
      {
        if (FigGetCFPreferenceNumberWithDefault())
        {
          v7[384] = *MEMORY[0x1E695E4D0] == a3;
          if (dword_1EAF17188)
          {
            v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigBufferedAirPlayOutputProxySetRenderPipelineState(*(v7 + 49), *(v7 + 50), @"RenderPipelineStateAllowsPrebuffering", a3);
        }

        return 0;
      }

      goto LABEL_7;
    }

    if (CFEqual(@"OverlapRange", a2))
    {
      if (qword_1ED4CAB58 != -1)
      {
        FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
      }

      if (!_MergedGlobals_59)
      {
        return 0;
      }

      if (a3)
      {
        v37 = CFDictionaryGetTypeID();
        if (v37 != CFGetTypeID(a3))
        {
          return 0;
        }
      }

      return fbaprp_setOverlapRange(a1, a3);
    }

    if (CFEqual(@"WarehouseRetransmissionAvailable", a2))
    {
      if (!FigGetCFPreferenceNumberWithDefault())
      {
        return 0;
      }

      if (qword_1ED4CAB58 == -1)
      {
LABEL_108:
        if (_MergedGlobals_59)
        {
          v38 = FigBufferedAirPlayOutputProxySetPipelineProperty(*(v7 + 49), *(v7 + 50), a2, a3);
        }

        else
        {
          v39 = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(v7 + 47));
          v38 = CMBaseObjectSetProperty(v39, a2, a3);
        }

        v17 = v38;
        if (v38)
        {
          v40 = FigCFCopyCompactDescription();
          if (v40)
          {
            CFRelease(v40);
          }
        }

        return v17;
      }
    }

    else
    {
      if (CFEqual(@"HardwarePassthrough", a2))
      {
        FigLogBacktrace();
      }

      if (qword_1ED4CAB58 == -1)
      {
        goto LABEL_108;
      }
    }

    FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
    goto LABEL_108;
  }

  if (a3)
  {
    v26 = MTAudioProcessingTapGetTypeID();
    if (v26 != CFGetTypeID(a3))
    {
      return 0;
    }
  }

  return fbaprp_setAudioProcessingTap(a1, a3);
}

uint64_t fbaprp_setTimebaseGuts(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 248))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v5 = *(DerivedStorage + 248);
    if (v5)
    {
      v6 = *(DerivedStorage + 408);
      if (v6)
      {
        CMTimebaseRemoveTimerDispatchSource(*(DerivedStorage + 248), v6);
        v7 = *(DerivedStorage + 408);
        if (v7)
        {
          dispatch_source_cancel(*(DerivedStorage + 408));
          dispatch_release(v7);
        }

        *(DerivedStorage + 408) = 0;
        v5 = *(DerivedStorage + 248);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 248) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*(DerivedStorage + 248))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
  }

  result = fbaprp_setTimerForOverlapRangeOutroStart(a1);
  v9 = *(DerivedStorage + 392);
  if (v9)
  {
    v10 = *(DerivedStorage + 400);
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 16);
    result = VTable + 16;
    v13 = *(v12 + 8);
    if (v13)
    {

      return v13(v9, v10, @"RenderPipelineStateTimebase", a2);
    }
  }

  return result;
}

void fbaprp_transitionRosterRemoveAll()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 288);
  if (v1)
  {
    v2 = DerivedStorage;
    v3 = (DerivedStorage + 288);
    do
    {
      v4 = v1;
      v1 = *v1;
      v5 = *v3;
      if (*v3 == v4)
      {
        v8 = *v5;
        *v3 = v8;
        v6 = v3;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5 != v4);
        v7 = *v5;
        *v6 = v7;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      *(v2 + 296) = v6;
LABEL_7:
      fbaprp_transitionRosterFreeRecord(v4);
    }

    while (v1);
  }
}

void fbaprp_transitionIDFound(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 312) = 1;
  if (a5)
  {
    CFRetain(a5);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbaprp_transitionIDFound_block_invoke;
  block[3] = &__block_descriptor_tmp_50;
  block[4] = DerivedStorage;
  block[5] = a5;
  block[6] = a2;
  dispatch_async(v8, block);
}

uint64_t fbaprp_resetOutput(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  fbaprp_suspendAudioChainGuts(a2);

  return FigSimpleMutexUnlock();
}

void fbaprp_transitionToNextTimebaseNow(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v37 = **&MEMORY[0x1E6960C70];
  v36 = v37;
  v35 = v37;
  Rate = CMTimebaseGetRate(*(a1 + 16));
  memset(&v34, 0, sizeof(v34));
  if (v2)
  {
    v4 = Rate;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSimpleMutexUnlock();

      CFRelease(v2);
    }

    else
    {
      Record = fbaprp_transitionRosterGetRecord(v2, *(a1 + 8));
      if (Record)
      {
        v7 = Record;
        v8 = *(a1 + 8);
        if (v8)
        {
          v31 = CFRetain(v8);
        }

        else
        {
          v31 = 0;
        }

        v38 = *(v7 + 56);
        v9 = *(a1 + 16);
        HostTimeClock = CMClockGetHostTimeClock();
        time = *(a1 + 56);
        CMSyncConvertTime(&v37, &time, v9, HostTimeClock);
        v11 = *(a1 + 104);
        *(DerivedStorage + 276) = *(a1 + 120);
        v12 = MEMORY[0x1E695E480];
        *(DerivedStorage + 260) = v11;
        v13 = *v12;
        time = *(a1 + 104);
        v32 = CMTimeCopyAsDictionary(&time, v13);
        v14 = *(DerivedStorage + 392);
        v15 = *(DerivedStorage + 400);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v16)
        {
          v16(v14, v15, @"RenderPipelineStateTimebaseStartOutputTime", v32);
        }

        v17 = CMTimebaseCopySource(*(a1 + 24));
        v18 = CMClockGetHostTimeClock();
        time = v37;
        CMSyncConvertTime(&v34, &time, v18, v17);
        if (dword_1EAF17188)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v20 = *(a1 + 24);
        time = v38;
        immediateSourceTime = v34;
        if (CMTimebaseSetRateAndAnchorTime(v20, v4, &time, &immediateSourceTime))
        {
          v21 = 0;
          v22 = 0;
        }

        else
        {
          v21 = *(v7 + 80);
          if (*(v7 + 88))
          {
            v22 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (!v22)
            {
              if (dword_1EAF17188)
              {
                v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v22 = 0;
              v21 = 0;
            }
          }

          else
          {
            v22 = 0;
          }

          v24 = *(DerivedStorage + 248);
          if (v24)
          {
            CMTimebaseGetTime(&v36, v24);
            time = v36;
            immediateSourceTime = *(DerivedStorage + 260);
            CMTimeAdd(&v35, &time, &immediateSourceTime);
            v33 = v35;
            v25 = CMBaseObjectGetDerivedStorage();
            v26 = (v25 + 288);
            v27 = v25 + 288;
            while (1)
            {
              v27 = *v27;
              if (!v27)
              {
                break;
              }

              time = *(v27 + 104);
              immediateSourceTime = v33;
              if (CMTimeCompare(&time, &immediateSourceTime) <= 0)
              {
                for (i = *v26; i != v27; i = *i)
                {
                  v26 = i;
                }

                v29 = *i;
                *v26 = v29;
                if (!v29)
                {
                  *(v25 + 296) = v26;
                }

                fbaprp_transitionRosterFreeRecord(v27);
                if (v27 == v7)
                {
                  fbaprp_setTimebaseGuts(v2, *(a1 + 24));
                  goto LABEL_33;
                }

                break;
              }
            }
          }

          fbaprp_setTimebaseGuts(v2, *(a1 + 24));
        }

        if (v7 == fbaprp_transitionRosterGetRecord(v2, *(a1 + 8)))
        {
          *(v7 + 128) = 1;
          fbaprp_transitionRosterCancelAndReleaseTimerSource(v7);
        }

LABEL_33:
        FigSimpleMutexUnlock();
        if (v21)
        {
          v30 = v4;
          time = v38;
          immediateSourceTime = v37;
          v21(v22, v31, &time, &immediateSourceTime, v30);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (v22)
        {
          CFRelease(v22);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      CFRelease(v2);
    }
  }
}

void fbaprp_transitionRosterRemoveRecordByTimebase(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = (DerivedStorage + 288);
    v6 = (DerivedStorage + 288);
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (FigCFEqual())
      {
        for (i = *v5; i != v6; i = *i)
        {
          v5 = i;
        }

        v8 = *i;
        *v5 = v8;
        if (!v8)
        {
          *(v4 + 296) = v5;
        }

        fbaprp_transitionRosterFreeRecord(v6);
        return;
      }
    }
  }

  else
  {
    fbaprp_transitionRosterRemoveRecordByTimebase_cold_1();
  }
}

uint64_t FigBufferedAirPlayOutputProxySetRenderPipelineState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

void fbaprp_transitionRosterCancelAndReleaseTimerSource(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 96));
    *(a1 + 96) = 0;
  }
}

void fbaprp_transitionRosterFreeRecord(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *(a1 + 24) = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a1 + 40) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 72) = v7;
  *(a1 + 80) = 0;
  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  *(a1 + 128) = 0;
  fbaprp_transitionRosterCancelAndReleaseTimerSource(a1);

  free(a1);
}

uint64_t fbaprp_startAudioChainGuts(float a1, uint64_t a2, int a3, __int128 *a4, __int128 *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fbaprp_startAudioChainGuts_cold_1(&time);
    return LODWORD(time.value);
  }

  v10 = DerivedStorage;
  result = FigMediaProcessorGo(*(DerivedStorage + 56));
  if (!result)
  {
    if ((*(a4 + 3) & 0x1D) == 1)
    {
      v12 = *a4;
      *(v10 + 176) = *(a4 + 2);
      *(v10 + 160) = v12;
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (*(v10 + 96))
    {
      if (!dword_1EAF17188)
      {
        return 0;
      }
    }

    else
    {
      if (a3 == 1)
      {
        *(v10 + 144) = a1;
        v14 = *a5;
        *(v10 + 224) = *(a5 + 2);
        *(v10 + 208) = v14;
      }

      else
      {
        a1 = *(v10 + 144);
      }

      if (a1 != 0.0 && (*(v10 + 172) & 0x1D) == 1)
      {
        v15 = *(v10 + 136);
        v16 = *(v10 + 248);
        *(v10 + 136) = v16;
        if (v16)
        {
          CFRetain(v16);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (dword_1EAF17188)
        {
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v19 = CMBaseObjectGetDerivedStorage();
        if (!*v19)
        {
          v20 = v19;
          UInt32 = FigCFNumberCreateUInt32();
          v22 = v20[7];
          if (v22)
          {
            FigMediaProcessorSetProperty(v22, @"ActivitySchedulerPriority", UInt32);
          }

          if (qword_1ED4CAB58 != -1)
          {
            FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
          }

          if (!_MergedGlobals_59)
          {
            CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(v20[47]);
            v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v28)
            {
              v28(CMBaseObject, @"ThreadPriority", UInt32);
            }
          }

          v23 = @"BufferedAirPlayUrgent";
          if (@"BufferedAirPlayUrgent")
          {
            v23 = CFRetain(@"BufferedAirPlayUrgent");
          }

          v20[41] = v23;
          if (UInt32)
          {
            CFRelease(UInt32);
          }
        }

        *(v10 + 148) = *(v10 + 144);
        *(v10 + 96) = 1;
        *(v10 + 232) = 0;
        v25 = *(v10 + 392);
        v24 = *(v10 + 400);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v26)
        {
          return v26(v25, v24);
        }

        else
        {
          return 4294954514;
        }
      }

      if (!dword_1EAF17188)
      {
        return 0;
      }
    }

    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return result;
}

void fbaprp_bufferedAirPlayOutputStartedCallback(uint64_t a1, int a2, uint64_t a3, CMTime *a4, uint64_t a5, float a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = **&MEMORY[0x1E6960C70];
  if (!a1)
  {
    fbaprp_bufferedAirPlayOutputStartedCallback_cold_1();
    v10 = 0;
LABEL_47:
    fbaprp_releaseSetRateContext(a1);
    goto LABEL_45;
  }

  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v10)
  {
    goto LABEL_47;
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v11)
  {
    goto LABEL_47;
  }

  v12 = v11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    goto LABEL_50;
  }

  timebase = v12;
  if (*(DerivedStorage + 144) == 0.0)
  {
    if (dword_1EAF17188)
    {
      LODWORD(v34.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_55;
    }

LABEL_50:
    Mutable = 0;
LABEL_51:
    v22 = 0;
    goto LABEL_41;
  }

  if (*(DerivedStorage + 256))
  {
    v14 = 1;
  }

  else
  {
    v14 = dword_1EAF17188 == 0;
  }

  if (!v14)
  {
    LODWORD(v34.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a6 != 0.0)
  {
    v16 = fig_log_handle();
    if (v10 + 1 >= 2)
    {
      v19 = v16;
      if (os_signpost_enabled(v16))
      {
        LODWORD(time.value) = 134218496;
        *(&time.value + 4) = v10;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = a6;
        HIWORD(time.epoch) = 2048;
        v39 = a2;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v19, OS_SIGNPOST_INTERVAL_END, v10, "kFigKTraceWHA_BAORP_SetRateAndAnchorTime", "renderPipeline=%p, timebaseRate=%1.2f, error=%llu", &time, 0x20u);
      }
    }
  }

  if (!a2 || a2 == -17323)
  {
    if (dword_1EAF17188)
    {
      LODWORD(v34.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a3 + 12))
    {
      v12 = timebase;
      if (*(DerivedStorage + 272))
      {
        time = *(DerivedStorage + 260);
        time2 = *a3;
        if (CMTimeCompare(&time, &time2) <= 0)
        {
          time = *a3;
          time2 = *(DerivedStorage + 260);
          CMTimeSubtract(&v36, &time, &time2);
          if (dword_1EAF17188)
          {
            LODWORD(v34.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v12 = timebase;
          }

          *a3 = v36;
        }
      }
    }

    else
    {
      v12 = timebase;
      CMTimebaseGetTime(&time, timebase);
      *a3 = time;
      if (dword_1EAF17188)
      {
        LODWORD(v34.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = timebase;
      }
    }

    v24 = *(a1 + 8);
    time = *a3;
    time2 = *a3;
    v34 = *a4;
    fbaprp_startTimebase(v10, v12, &time, &time2, &v34, v24);
    Mutable = 0;
    v22 = 0;
    if (a2 || !a5)
    {
      goto LABEL_35;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v22 = 0;
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  LODWORD(v34.value) = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (a2 == -17326)
  {
    if (!dword_1EAF17188)
    {
LABEL_56:
      Mutable = 0;
      v22 = 0;
      v12 = timebase;
      goto LABEL_41;
    }

    LODWORD(v34.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
LABEL_55:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_56;
  }

  v22 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = timebase;
  if (v22)
  {
    FigCFDictionarySetInt32();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    Mutable = 0;
LABEL_35:
    v25 = *(DerivedStorage + 136);
    if (v25 == v12)
    {
      CFRelease(v25);
      *(DerivedStorage + 136) = 0;
    }

    if (*(DerivedStorage + 234))
    {
      *(DerivedStorage + 234) = 0;
      v26 = *(DerivedStorage + 392);
      v27 = *(DerivedStorage + 400);
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v28)
      {
        v28(v26, v27, @"RenderPipelineStateEndOfTrackReached", *MEMORY[0x1E695E4D0]);
      }

      fbaprp_postNotification(v10, @"PlayResourceReleased", 0);
    }

    goto LABEL_41;
  }

  Mutable = 0;
LABEL_41:
  CFRelease(v12);
  FigSimpleMutexUnlock();
  fbaprp_releaseSetRateContext(a1);
  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_45:
  fbaprp_releaseAsync(v10);
}

void fbaprp_releaseSetRateContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

CMTime *fbaprp_startTimebase(const void *a1, OpaqueCMTimebase *a2, CMTime *a3, CMTime *a4, CMTime *a5, float a6)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = MEMORY[0x1E695FF58];
  v14 = a6;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a5;
    CMTimeGetSeconds(&time);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&immediateSourceTime, HostTimeClock);
    time = immediateSourceTime;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  immediateSourceTime = *a5;
  CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a5 = time;
  immediateSourceTime = *a3;
  CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a3 = time;
  immediateSourceTime = *a4;
  result = CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a4 = time;
  a5->value += ((a4->value - a3->value) / v14 + 0.5);
  if (a2)
  {
    v17 = CMTimebaseCopySource(a2);
    memset(&v22, 0, sizeof(v22));
    v18 = CMClockGetHostTimeClock();
    time = *a5;
    CMSyncConvertTime(&v22, &time, v18, v17);
    if (v17)
    {
      CFRelease(v17);
    }

    immediateSourceTime = v22;
    CMTimeConvertScale(&time, &immediateSourceTime, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v22 = time;
    if (*(DerivedStorage + 392))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v19 = *(DerivedStorage + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fbaprp_startTimebase_block_invoke;
      block[3] = &__block_descriptor_tmp_64_0;
      block[4] = DerivedStorage;
      block[5] = a1;
      dispatch_async(v19, block);
    }

    if (dword_1EAF17188)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = MEMORY[0x1E695FF58];
    }

    time = *a3;
    immediateSourceTime = v22;
    result = CMTimebaseSetRateAndAnchorTime(a2, v14, &time, &immediateSourceTime);
  }

  if (*v13 == 1)
  {
    time = *a3;
    CMTimeGetSeconds(&time);
    time = *a4;
    CMTimeGetSeconds(&time);
    time = *a5;
    CMTimeGetSeconds(&time);
    return kdebug_trace();
  }

  return result;
}

void fbaprp_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbaprp_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_65_0;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

void fbaprp_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbaprp_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_66_1;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

void __fbaprp_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  fbaprp_releaseAsync(v3);
}

uint64_t fbaprp_suspendAudioChainGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return fbaprp_suspendAudioChainGuts_cold_1();
  }

  v3 = DerivedStorage;
  if (dword_1EAF17188)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (qword_1ED4CAB58 != -1)
  {
    FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
  }

  if (!_MergedGlobals_59)
  {
    v15 = *(v3 + 47);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v16)
    {
      v16(v15, 1);
    }
  }

  v5 = *(v3 + 49);
  v6 = *(v3 + 50);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 40);
  if (v10)
  {
    result = v10(v5, v6, a1, 1);
    if (!result)
    {
      *(v3 + 18) = 0x3F80000000000000;
      *(v3 + 30) = 0;
      v11 = MEMORY[0x1E6960C70];
      v12 = *MEMORY[0x1E6960C70];
      *(v3 + 184) = *MEMORY[0x1E6960C70];
      v13 = *(v11 + 16);
      *(v3 + 25) = v13;
      *(v3 + 10) = v12;
      *(v3 + 22) = v13;
      *(v3 + 13) = v12;
      *(v3 + 28) = v13;
      v14 = MEMORY[0x1E6960CC0];
      *(v3 + 260) = *MEMORY[0x1E6960CC0];
      *(v3 + 276) = *(v14 + 16);
      v3[96] = 0;
      *(v3 + 233) = 0;
      v3[232] = 0;
    }
  }

  return result;
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineReset(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 16);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

void fbaprp_notificationsFromSubPipeManager(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    if (*DerivedStorage || (v9 = *(DerivedStorage + 392), v10 = *(DerivedStorage + 400), (v11 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v11(v9, v10, @"RenderPipelineStateEndOfTrackReached", *MEMORY[0x1E695E4D0]))
    {

      FigSimpleMutexUnlock();
      return;
    }

    FigSimpleMutexUnlock();
  }

  fbaprp_postNotification(a2, a3, a5);
}

void fabaprp_getOffsetToBAOTimeline(CMTime *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = **&MEMORY[0x1E6960C70];
  v8 = v9;
  v3 = MEMORY[0x1E6960CC0];
  *&a1->value = *MEMORY[0x1E6960CC0];
  a1->epoch = *(v3 + 16);
  CMBaseObject = FigBufferedAirPlayOutputProxyGetCMBaseObject(*(DerivedStorage + 392));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    if (!v5(CMBaseObject, @"ZeroBasedTimebase", *MEMORY[0x1E695E480], &cf))
    {
      CMTimebaseGetTime(&v9, *(DerivedStorage + 248));
      v6 = *(DerivedStorage + 248);
      time = v9;
      CMSyncConvertTime(&v8, &time, v6, cf);
      time = v9;
      rhs = v8;
      CMTimeSubtract(a1, &time, &rhs);
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fbaprp_copyEndPresentationTimeForDecodedSamples(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (a3)
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(*(DerivedStorage + 72));
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      result = v7(FigBaseObject, 0x1F0B56078, a2, &v9);
      if (!result)
      {
        *a3 = v9;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fbaprp_copyEndPresentationTimeForDecodedSamples_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t fbaprp_createBufferedAirPlaySampleBufferConsumer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  memset(&v18, 0, sizeof(v18));
  CMTimeMake(&v18, 2, 1);
  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&v17, 10, 1);
  if (!a2)
  {
    fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_3(&time);
LABEL_19:
    v7 = 0;
    value_low = LODWORD(time.value);
    goto LABEL_10;
  }

  v4 = *(DerivedStorage + 128);
  time = v17;
  v15 = v18;
  v5 = FigSampleBufferConsumerCreateForBufferQueue(v4, &time.value, &v15.value, &v19);
  if (v5)
  {
    value_low = v5;
    v7 = 0;
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E695E480];
  time = *(DerivedStorage + 336);
  v9 = CMTimeCopyAsDictionary(&time, v8);
  if (!v9)
  {
    fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_2(&time);
    goto LABEL_19;
  }

  v10 = v9;
  FigBaseObject = FigSampleBufferConsumerGetFigBaseObject(v19);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v13 = v12(FigBaseObject, @"PrerollDuration", v10);
    if (v13)
    {
      value_low = v13;
      v7 = 0;
    }

    else
    {
      v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v7)
      {
        CFArrayAppendValue(*(DerivedStorage + 88), v7);
        value_low = 0;
        *a2 = v19;
        v19 = 0;
      }

      else
      {
        fbaprp_createBufferedAirPlaySampleBufferConsumer_cold_1(&time);
        value_low = LODWORD(time.value);
      }
    }
  }

  else
  {
    v7 = 0;
    value_low = 4294954514;
  }

  CFRelease(v10);
LABEL_10:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return value_low;
}

CFIndex fbaprp_cleanFreedSampleBufferConsumers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 88));
  if (result >= 1)
  {
    v2 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 88), v2);
      v3 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v3)
      {
        CFRelease(v3);
        ++v2;
      }

      else
      {
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 88), v2);
      }

      result = CFArrayGetCount(*(DerivedStorage + 88));
    }

    while (v2 < result);
  }

  return result;
}

uint64_t FigBufferedAirPlayOutputProxyCopyPipelineProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigBufferedAirPlayOutputProxySetPipelineProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t fbaprp_setOverlapRange(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = 0;
  v23 = **&MEMORY[0x1E6960C70];
  v22 = v23;
  v20 = v23;
  dictionaryRepresentation = 0;
  FigSimpleMutexLock();
  v5 = DerivedStorage[52];
  DerivedStorage[52] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (!a2)
  {
    fbaprp_stopTimerForOverlapRangeOutroStart();
    goto LABEL_31;
  }

  if (FigCFDictionaryGetBooleanValue() != *MEMORY[0x1E695E4D0])
  {
    a2 = 0;
    goto LABEL_30;
  }

  v6 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    FigSimpleMutexUnlock();
    v10 = 4294954510;
    goto LABEL_21;
  }

  a2 = MutableCopy;
  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(DerivedStorage[9]);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v10 = 4294954514;
    goto LABEL_19;
  }

  v10 = v9(FigBaseObject, 0x1F0B311B8, v6, &dictionaryRepresentation);
  if (v10)
  {
LABEL_19:
    FigSimpleMutexUnlock();
LABEL_20:
    CFRelease(a2);
    goto LABEL_21;
  }

  CMTimeMakeFromDictionary(&v20, dictionaryRepresentation);
  FigCFDictionarySetCMTime();
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v12 = FigCFDictionaryGetDictionaryValue();
  if (!fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a1, 0, DictionaryValue, &v25) && v25)
  {
    CMTimeMakeFromDictionary(&v23, v25);
    FigCFDictionarySetCMTime();
  }

  if (!fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a1, 0, v12, &v24) && v24)
  {
    CMTimeMakeFromDictionary(&v22, v24);
    FigCFDictionarySetCMTime();
  }

  v13 = DerivedStorage[52];
  DerivedStorage[52] = a2;
  CFRetain(a2);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_30:
  v10 = fbaprp_setTimerForOverlapRangeOutroStart(a1);
  if (v10)
  {
    goto LABEL_37;
  }

LABEL_31:
  v15 = DerivedStorage[49];
  v16 = DerivedStorage[50];
  v17 = DerivedStorage[52];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v18)
  {
    v10 = v18(v15, v16, @"OverlapRange", v17);
    if (!v10)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v10 = 4294954514;
  }

  v19 = FigCFCopyCompactDescription();
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_37:
  FigSimpleMutexUnlock();
  if (a2)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v10;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSetRateAndAnchorTime(const void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v85 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineSetRateAndAnchorTime_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_73;
  }

  v71 = *a2;
  v9 = *(a2 + 12);
  v72 = *(a2 + 8);
  v66 = *(a2 + 16);
  *&v67.value = *a3;
  v67.epoch = *(a3 + 16);
  v10 = MEMORY[0x1E6960C70];
  v81 = *MEMORY[0x1E6960C70];
  v64 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v65 = *(MEMORY[0x1E6960C70] + 16);
  v11 = CMBaseObjectGetDerivedStorage();
  v12 = &dword_1EAF17000;
  if (dword_1EAF17188)
  {
    *v70 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = &dword_1EAF17000;
  }

  v14 = a4;
  if (a4 != 0.0)
  {
    v22 = fig_log_handle();
    if (a1 + 1 >= 2)
    {
      v31 = v22;
      if (os_signpost_enabled(v22))
      {
        LODWORD(time.value) = 134218240;
        *(&time.value + 4) = a1;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = a4;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v31, OS_SIGNPOST_INTERVAL_BEGIN, a1, "kFigKTraceWHA_BAORP_SetRateAndAnchorTime", "renderPipeline=%p, timebaseRate=%1.2f", &time, 0x16u);
      }
    }

    if (*(v11 + 240) != v14)
    {
      v63 = mach_absolute_time();
      if (!*(v11 + 96))
      {
        goto LABEL_57;
      }

      if (*(v11 + 148) == a4)
      {
        goto LABEL_76;
      }

      if (dword_1EAF17188)
      {
        LODWORD(lhs.value) = 0;
        v70[0] = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = lhs.value;
        if (os_log_type_enabled(v23, v70[0]))
        {
          v25 = value;
        }

        else
        {
          v25 = value & 0xFFFFFFFE;
        }

        if (v25)
        {
          if (a1)
          {
            v26 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v26 = "";
          }

          v42 = *(v11 + 148);
          LODWORD(rhs.value) = 136315906;
          *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = a1;
          HIWORD(rhs.epoch) = 2082;
          v74 = v26;
          v75 = 2048;
          v76 = v42;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = &dword_1EAF17000;
      }

      fbaprp_suspendAudioChainGuts(a1);
      fbaprp_postNotification(a1, @"PrerollLost", 0);
      if (*(v11 + 96))
      {
LABEL_76:
        if (dword_1EAF17188)
        {
          LODWORD(lhs.value) = 0;
          v70[0] = OS_LOG_TYPE_DEFAULT;
          v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v53 = lhs.value;
          if (os_log_type_enabled(v52, v70[0]))
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 & 0xFFFFFFFE;
          }

          if (v54)
          {
            if (a1)
            {
              v55 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v55 = "";
            }

            LODWORD(rhs.value) = 136315650;
            *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2082;
            v74 = v55;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          flags = v64;
          epoch = v65;
          v12 = &dword_1EAF17000;
        }

        else
        {
          flags = v64;
          epoch = v65;
        }
      }

      else
      {
LABEL_57:
        if (v9)
        {
          v81 = v71;
          timescale = v72;
          epoch = v66;
          flags = v9;
        }

        else
        {
          CMTimebaseGetTime(&time, *(v11 + 248));
          v81 = time.value;
          timescale = time.timescale;
          epoch = time.epoch;
          flags = time.flags;
          rhs = *(v11 + 160);
          CMTimeCompare(&time, &rhs);
        }

        if (dword_1EAF17188)
        {
          LODWORD(lhs.value) = 0;
          v70[0] = OS_LOG_TYPE_DEFAULT;
          v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v44 = lhs.value;
          if (os_log_type_enabled(v43, v70[0]))
          {
            v45 = v44;
          }

          else
          {
            v45 = v44 & 0xFFFFFFFE;
          }

          if (v45)
          {
            if (a1)
            {
              v46 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v46 = "";
            }

            time = v67;
            Seconds = CMTimeGetSeconds(&time);
            time.value = v81;
            time.timescale = timescale;
            time.flags = flags;
            time.epoch = epoch;
            v48 = CMTimeGetSeconds(&time);
            LODWORD(rhs.value) = 136316418;
            *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2082;
            v74 = v46;
            v75 = 2048;
            v76 = a4;
            v77 = 2048;
            v78 = Seconds;
            v79 = 2048;
            v80 = v48;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v12 = &dword_1EAF17000;
        }

        time.value = v81;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        rhs = v67;
        value_low = fbaprp_startAudioChainGuts(a4, a1, 1, &time.value, &rhs.value);
        if (value_low)
        {
LABEL_72:
          v49 = fig_log_handle();
          if (a1 + 1 >= 2)
          {
            v51 = v49;
            if (os_signpost_enabled(v49))
            {
              LODWORD(time.value) = 134218496;
              *(&time.value + 4) = a1;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = a4;
              HIWORD(time.epoch) = 2048;
              v84 = value_low;
              _os_signpost_emit_with_name_impl(&dword_1962D5000, v51, OS_SIGNPOST_INTERVAL_END, a1, "kFigKTraceWHA_BAORP_SetRateAndAnchorTime", "renderPipeline=%p, timebaseRate=%1.2f, error=%llu", &time, 0x20u);
            }
          }

          goto LABEL_73;
        }
      }

      if ((flags & 1) != 0 && (*(v11 + 196) & 1) == 0 && (*(v11 + 184) = v81, *(v11 + 192) = timescale, *(v11 + 196) = flags, *(v11 + 200) = epoch, v12[98]))
      {
        LODWORD(lhs.value) = 0;
        v70[0] = OS_LOG_TYPE_DEFAULT;
        v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v59 = lhs.value;
        if (os_log_type_enabled(v58, v70[0]))
        {
          v60 = v59;
        }

        else
        {
          v60 = v59 & 0xFFFFFFFE;
        }

        if (v60)
        {
          if (a1)
          {
            v61 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v61 = "";
          }

          time = *(v11 + 184);
          v62 = CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136315906;
          *(&rhs.value + 4) = "fbaprp_setRateAndAnchorTime";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = a1;
          HIWORD(rhs.epoch) = 2082;
          v74 = v61;
          v75 = 2048;
          v76 = v62;
          _os_log_send_and_compose_impl();
        }

        v40 = v63;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (flags)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v40 = v63;
        if (flags)
        {
          goto LABEL_94;
        }
      }

LABEL_91:
      if (v9)
      {
        v81 = v71;
        timescale = v72;
        epoch = v66;
        flags = v9;
      }

      else
      {
        CMTimebaseGetTime(&time, *(v11 + 248));
        v81 = time.value;
        flags = time.flags;
        timescale = time.timescale;
        epoch = time.epoch;
      }

      goto LABEL_94;
    }

LABEL_114:
    value_low = 0;
    goto LABEL_73;
  }

  if (*(v11 + 240) == v14)
  {
    CMTimebaseGetTime(&time, *(v11 + 248));
    rhs.value = v71;
    rhs.timescale = v72;
    rhs.flags = v9;
    rhs.epoch = v66;
    if (!CMTimeCompare(&rhs, &time))
    {
      goto LABEL_114;
    }
  }

  v15 = CMBaseObjectGetDerivedStorage();
  v16 = v15;
  if ((v9 & 0x1D) == 1)
  {
    v17 = CMTimebaseCopySource(*(v15 + 248));
    if (dword_1EAF17188)
    {
      LODWORD(lhs.value) = 0;
      v70[0] = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = lhs.value;
      if (os_log_type_enabled(v18, v70[0]))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        if (a1)
        {
          v21 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v21 = "";
        }

        time.value = v71;
        time.timescale = v72;
        time.flags = v9;
        time.epoch = v66;
        v32 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136315906;
        *(&rhs.value + 4) = "fbaprp_stopTimebase";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = a1;
        HIWORD(rhs.epoch) = 2082;
        v74 = v21;
        v75 = 2048;
        v76 = v32;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v33 = *(v16 + 248);
    CMSyncGetTime(&time, v17);
    rhs.value = v71;
    rhs.timescale = v72;
    rhs.flags = v9;
    rhs.epoch = v66;
    CMTimebaseSetRateAndAnchorTime(v33, 0.0, &rhs, &time);
    epoch = v65;
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    if (dword_1EAF17188)
    {
      LODWORD(lhs.value) = 0;
      v70[0] = OS_LOG_TYPE_DEFAULT;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = lhs.value;
      if (os_log_type_enabled(v27, v70[0]))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        if (a1)
        {
          v30 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v30 = "";
        }

        CMTimebaseGetTime(&time, *(v16 + 248));
        v35 = CMTimeGetSeconds(&time);
        LODWORD(rhs.value) = 136315906;
        *(&rhs.value + 4) = "fbaprp_stopTimebase";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = a1;
        HIWORD(rhs.epoch) = 2082;
        v74 = v30;
        v75 = 2048;
        v76 = v35;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *&time.value = *v10;
    epoch = v65;
    time.epoch = v65;
    *&rhs.value = *&time.value;
    rhs.epoch = v65;
    CMTimebaseSetRateAndAnchorTimeWithFlags();
  }

  if (*(v11 + 232))
  {
    *(v11 + 232) = 0;
    v36 = *(v11 + 392);
    v37 = *(v11 + 400);
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v38)
    {
      value_low = 4294954514;
      goto LABEL_73;
    }

    value_low = v38(v36, v37, @"RenderPipelineStateSynchronizeToTimebase", *MEMORY[0x1E695E4C0]);
    if (value_low)
    {
      goto LABEL_73;
    }
  }

  v40 = 0;
  flags = v64;
  if ((v64 & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_94:
  if (qword_1ED4CAB58 != -1)
  {
    FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
  }

  if (!_MergedGlobals_59)
  {
    v56 = *(v11 + 376);
    v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v57)
    {
      time.value = v81;
      time.timescale = timescale;
      time.flags = flags;
      time.epoch = epoch;
      rhs = v67;
      v57(v56, &time, &rhs, a4);
    }
  }

  time = *(v11 + 184);
  rhs.value = v71;
  rhs.timescale = v72;
  rhs.flags = v9;
  rhs.epoch = v66;
  lhs = v67;
  value_low = fbaprp_setRateOnAudioChainGuts(a1, a4, &time, &rhs, &lhs, v40);
  if (!value_low)
  {
    *(v11 + 240) = v14;
    goto LABEL_73;
  }

  if (a4 != 0.0)
  {
    goto LABEL_72;
  }

LABEL_73:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, OpaqueCMTimebase *a2, __int128 *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_5(&v19);
    return v19;
  }

  if (!a4)
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_4(&v19);
    return v19;
  }

  if (CMTimebaseGetRate(a2) != 0.0)
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_3(&v19);
    return v19;
  }

  FigSimpleMutexLock();
  v17 = *a3;
  v18 = *(a3 + 2);
  if (*CMBaseObjectGetDerivedStorage())
  {
    FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v19);
    v15 = v19;
  }

  else
  {
    v11 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00404ABE07F3uLL);
    v12 = 0;
    if (a5 && a6 && (v12 = FigCFWeakReferenceHolderCreateWithReferencedObject()) == 0)
    {
      FigBufferedAirPlayAudioRenderPipelineStartAndUseTimebaseAtTransition_cold_2(&v19);
      v15 = v19;
    }

    else
    {
      if (!v11)
      {
        v15 = FigSignalErrorAtGM();
        if (v12)
        {
          CFRelease(v12);
        }

        goto LABEL_11;
      }

      *(v11 + 1) = CFRetain(a4);
      *(v11 + 6) = CFRetain(a2);
      *(v11 + 56) = v17;
      *(v11 + 9) = v18;
      *(v11 + 10) = a5;
      v13 = MEMORY[0x1E6960CC0];
      *(v11 + 104) = *MEMORY[0x1E6960CC0];
      *(v11 + 15) = *(v13 + 16);
      v11[128] = 0;
      *(v11 + 11) = v12;
      *(v11 + 12) = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v15 = 0;
      *v11 = 0;
      **(DerivedStorage + 296) = v11;
      *(DerivedStorage + 296) = v11;
      v11 = 0;
    }

    free(v11);
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineSynchronizeToTimebase(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineSynchronizeToTimebase_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_12;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  outRelativeRate = 0.0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
  v4 = CMTimebaseCopySource(*(v3 + 248));
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(v3 + 248), v4, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
  if (RelativeRateAndAnchorTime)
  {
    goto LABEL_3;
  }

  v7 = *(v3 + 392);
  v8 = *(v3 + 400);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    RelativeRateAndAnchorTime = v9(v7, v8, @"RenderPipelineStateSynchronizeToTimebase", *MEMORY[0x1E695E4D0]);
    if (!RelativeRateAndAnchorTime)
    {
      if (outRelativeRate == 0.0)
      {
        v12 = 1;
        goto LABEL_16;
      }

      fabaprp_getOffsetToBAOTimeline(&time);
      *(v3 + 184) = time;
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ((*(v3 + 172) & 0x1D) != 1 || (RelativeRateAndAnchorTime = fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(a1, outRelativeRate), !RelativeRateAndAnchorTime))
      {
        v12 = 0;
        *(v3 + 233) = 1;
LABEL_16:
        value_low = 0;
        *(v3 + 232) = v12;
        if (!v4)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

LABEL_3:
    value_low = RelativeRateAndAnchorTime;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  value_low = 4294954514;
  if (v4)
  {
LABEL_11:
    CFRelease(v4);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineReset(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineReset_cold_1(v25);
    v8 = v25[0];
    goto LABEL_7;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17188)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = FigMediaProcessorStop(*(v5 + 56));
  if (v7)
  {
    goto LABEL_6;
  }

  v7 = FigMediaProcessorWaitUntilCompletelyStopped(*(v5 + 56));
  if (v7)
  {
    goto LABEL_6;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  v10 = *(v5 + 64);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    goto LABEL_30;
  }

  v7 = v11(v10, @"DownstreamConsumer", 0);
  if (v7)
  {
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (qword_1ED4CAB58 != -1)
  {
    FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
  }

  if (!_MergedGlobals_59)
  {
    FigBufferedAirPlaySubPipeManagerForRenderPipelineReset(*(v5 + 376), a2);
  }

  CMBufferQueueReset(*(v5 + 128));
  if (!*(v5 + 256))
  {
    goto LABEL_17;
  }

  v12 = *(v5 + 392);
  v13 = *(v5 + 400);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14)
  {
LABEL_30:
    v8 = 4294954514;
    goto LABEL_7;
  }

  v7 = v14(v12, v13, a1, a2);
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_17:
  *(v5 + 144) = 0x3F80000000000000;
  *(v5 + 240) = 0;
  v15 = MEMORY[0x1E6960C70];
  v16 = *MEMORY[0x1E6960C70];
  *(v5 + 160) = *MEMORY[0x1E6960C70];
  v17 = *(v15 + 16);
  *(v5 + 176) = v17;
  *(v5 + 184) = v16;
  *(v5 + 200) = v17;
  *(v5 + 208) = v16;
  *(v5 + 224) = v17;
  v18 = MEMORY[0x1E6960CC0];
  *(v5 + 260) = *MEMORY[0x1E6960CC0];
  *(v5 + 276) = *(v18 + 16);
  *(v5 + 96) = 0;
  *(v5 + 233) = 0;
  *(v5 + 232) = 0;
  fbaprp_transitionRosterRemoveAll();
  v19 = *(v5 + 304);
  if (v19)
  {
    CFRelease(v19);
    *(v5 + 304) = 0;
  }

  v20 = *(v5 + 72);
  if (v20)
  {
    CFRelease(v20);
    *(v5 + 72) = 0;
  }

  v21 = *(v5 + 136);
  if (v21)
  {
    CFRelease(v21);
    *(v5 + 136) = 0;
  }

  v22 = *(v5 + 360);
  if (v22)
  {
    CFRelease(v22);
    *(v5 + 360) = 0;
  }

  v23 = *(v5 + 56);
  *(v5 + 56) = 0;
  v24 = fbaprp_setupBufferedAirPlayMediaProcessor();
  if (!v24)
  {
    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCreate_cold_7();
    }

    if (_MergedGlobals_59 || (CMNotificationCenterGetDefaultLocalCenter(), v24 = FigNotificationCenterRemoveWeakListeners(), !v24) && (v24 = fbaprp_configureSubPipeManager(), !v24))
    {
      v24 = FigMediaProcessorGo(*(v5 + 56));
    }
  }

  v8 = v24;
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_7:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineFinishSettingRate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v16.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v16.epoch = v3;
  v11 = *&v16.value;
  *&v15.value = *&v16.value;
  v15.epoch = v3;
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigBufferedAirPlayAudioRenderPipelineFinishSettingRate_cold_1(&v14);
LABEL_18:
    value_low = LODWORD(v14.value);
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 136))
  {
    value_low = 0;
    goto LABEL_15;
  }

  if (*(DerivedStorage + 144) == 0.0)
  {
    FigBufferedAirPlayAudioRenderPipelineFinishSettingRate_cold_2(&v14);
    goto LABEL_18;
  }

  if (*(DerivedStorage + 220))
  {
    v16 = *(DerivedStorage + 208);
  }

  else
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v16, HostTimeClock);
  }

  if (*(DerivedStorage + 172))
  {
    v15 = *(DerivedStorage + 160);
  }

  else
  {
    CMTimebaseGetTime(&v15, *(DerivedStorage + 136));
  }

  v6 = *(DerivedStorage + 136);
  v7 = *(DerivedStorage + 144);
  v14 = v15;
  v13 = v15;
  v12 = v16;
  fbaprp_startTimebase(a1, v6, &v14, &v13, &v12, v7);
  v8 = *(DerivedStorage + 144);
  v14 = *(DerivedStorage + 160);
  v13 = *(DerivedStorage + 208);
  value_low = fbaprp_startAudioChainGuts(v8, a1, 1, &v14.value, &v13.value);
  if (!value_low)
  {
    v9 = *(DerivedStorage + 136);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 136) = 0;
    }

    value_low = 0;
    *(DerivedStorage + 160) = v11;
    *(DerivedStorage + 176) = v3;
    *(DerivedStorage + 208) = v11;
    *(DerivedStorage + 224) = v3;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t fbaprp_setupBufferedAirPlayMediaProcessor()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[9])
  {
    fbaprp_setupBufferedAirPlayMediaProcessor_cold_1(&v22);
    return v22;
  }

  v1 = DerivedStorage;
  if (DerivedStorage[7])
  {
    fbaprp_setupBufferedAirPlayMediaProcessor_cold_2(&v22);
    return v22;
  }

  if (!DerivedStorage[13])
  {
    fbaprp_setupBufferedAirPlayMediaProcessor_cold_3(&v22);
    return v22;
  }

  v3 = DerivedStorage + 8;
  v2 = DerivedStorage[8];
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  v4 = FigSampleBufferConsumerCreateForSampleBufferConsumer("mediaProcessorConsumerForConsumer", v1 + 8);
  if (!v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = v1[16];
    v7 = v1[8];
    v8 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v9 = FigSampleBufferProviderCreateForBufferQueue(v5, v6, &cf);
    if (v9)
    {
      v4 = v9;
      v10 = 0;
      MutableCopy = 0;
    }

    else
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v10 = CFStringCreateWithCString(v5, (v8 + 424), 0x8000100u);
        if (v10)
        {
          CFDictionarySetValue(MutableCopy, @"LoggingID", v10);
          v12 = cf;
          AllocatorForMedia = FigGetAllocatorForMedia();
          v14 = FigSampleBufferProcessorForBufferedAirPlayCreate(v12, AllocatorForMedia, MutableCopy, &v22);
          if (v14 || (v14 = FigActivitySchedulerCreateForNewThread(v5, 37, @"com.apple.coremedia.mediaprocessor.bufferedairplay", &v20), v14) || (v14 = FigMediaProcessorCreate(v5, v22, cf, v7, v20, &v19), v14))
          {
            v4 = v14;
          }

          else
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v4 = FigNotificationCenterAddWeakListeners();
            if (!v4)
            {
              v1[9] = v22;
              v22 = 0;
              v1[7] = v19;
              v19 = 0;
            }
          }

          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
      }

      v4 = 4294954443;
    }

LABEL_15:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (!v4)
    {
      v15 = v1[8];
      v16 = v1[13];
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        return v17(v15, @"DownstreamConsumer", v16);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  return v4;
}

uint64_t fbaprp_flushTransitionInBufferQueue(uint64_t a1, uint64_t a2)
{
  queueOut = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v4 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v6 = CMBufferQueueCreate(v4, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
  if (!v6)
  {
    *&v8[0] = queueOut;
    *(&v8[0] + 1) = a2;
    BYTE8(v9) = 1;
    HIDWORD(v9) = -1;
    MEMORY[0x19A8CE710](a1, fbaprp_copySbufBeforeTransitionIDForBufferQueueResetCallback, v8);
    MEMORY[0x19A8CE710](queueOut, fbaprp_copySbufForBufferQueueResetCallback, a1);
    v6 = HIDWORD(v9);
  }

  if (queueOut)
  {
    CFRelease(queueOut);
  }

  return v6;
}

uint64_t FigBufferedAirPlayOutputProxyFlushWithinTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v6(a1, a2, v9);
}

uint64_t fbaprp_restoreAudioChainToStartOutputTime(uint64_t a1, const void *a2, uint64_t a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fbaprp_restoreAudioChainToStartOutputTime_cold_1(&v21);
    return LODWORD(v21.value);
  }

  else
  {
    v8 = DerivedStorage;
    v9 = MEMORY[0x1E6960CC0];
    v10 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 160) = *MEMORY[0x1E6960CC0];
    epoch = *(v9 + 16);
    *(DerivedStorage + 176) = epoch;
    v12 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 200) = *(MEMORY[0x1E6960C70] + 16);
    *(DerivedStorage + 184) = *v12;
    v13 = DerivedStorage + 260;
    if (*(a3 + 12))
    {
      lhs = *a4;
      v19 = *a3;
      CMTimeSubtract(&v21, &lhs, &v19);
      *v13 = *&v21.value;
      epoch = v21.epoch;
    }

    else
    {
      *v13 = v10;
    }

    *(v13 + 16) = epoch;
    *(v8 + 96) = 1;
    v14 = *(v8 + 304);
    *(v8 + 304) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(v8 + 136);
    if (v15)
    {
      CFRelease(v15);
      *(v8 + 136) = 0;
    }

    v16 = *(v8 + 72);
    v21 = *a3;
    lhs = *a4;
    result = FigSampleBufferProcessorRestoreBufferedAirPlayStates(v16, &v21.value, &lhs);
    if (!result)
    {
      v18 = *(v8 + 144);
      result = 0;
      if (v18 != 0.0)
      {
        *(v8 + 148) = v18;
      }
    }
  }

  return result;
}

uint64_t fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = (DerivedStorage + 288);
    v6 = (DerivedStorage + 288);
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        return 0;
      }

      if (FigCFEqual())
      {
        while (1)
        {
          v9 = v6;
          v6 = *v6;
          v10 = *v5;
          if (*v5 != v9)
          {
            break;
          }

          v7 = *v10;
          *v5 = v7;
          v8 = v5;
          if (!v7)
          {
            goto LABEL_11;
          }

LABEL_12:
          fbaprp_transitionRosterFreeRecord(v9);
          if (!v6)
          {
            return 0;
          }
        }

        do
        {
          v8 = v10;
          v10 = *v10;
        }

        while (v10 != v9);
        v11 = *v10;
        *v8 = v11;
        if (v11)
        {
          goto LABEL_12;
        }

LABEL_11:
        *(v4 + 296) = v8;
        goto LABEL_12;
      }
    }
  }

  else
  {
    fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID_cold_1(&v13);
    return v13;
  }
}

CFTypeRef fbaprp_copySbufBeforeTransitionIDForBufferQueueResetCallback(CFTypeRef result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v3 = result;
    result = CMGetAttachment(result, *MEMORY[0x1E6960550], 0);
    if (result == *(a2 + 8))
    {
      *(a2 + 40) = 0;
    }

    else if (*(a2 + 40))
    {
      result = CMBufferQueueEnqueue(*a2, v3);
      *(a2 + 44) = 0;
    }
  }

  return result;
}

void fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = **&MEMORY[0x1E6960C70];
  v17 = v18;
  if (!*(a2 + 40))
  {
    return;
  }

  v3 = a1;
  CMSampleBufferGetOutputPresentationTimeStamp(&rhs, a1);
  value = rhs.value;
  flags = rhs.flags;
  timescale = rhs.timescale;
  if ((rhs.flags & 0x1D) != 1)
  {
    goto LABEL_15;
  }

  epoch = rhs.epoch;
  CMSampleBufferGetOutputDuration(&rhs, v3);
  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = flags;
  lhs.epoch = epoch;
  CMTimeAdd(&v18, &lhs, &rhs);
  rhs.value = value;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = epoch;
  lhs = *(a2 + 16);
  if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
  {
    *(a2 + 40) = 0;
    return;
  }

  rhs = v18;
  lhs = *(a2 + 16);
  if (CMTimeCompare(&rhs, &lhs) < 1)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v6 = *MEMORY[0x1E695E480];
  rhs.value = 0;
  if (!v3)
  {
    fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_2(&lhs);
LABEL_29:
    v10 = 0;
    v8 = lhs.value;
    goto LABEL_10;
  }

  Copy = CMSampleBufferCreateCopy(v6, v3, &rhs);
  if (!rhs.value)
  {
    fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_1(&lhs);
    goto LABEL_29;
  }

  v8 = Copy;
  v9 = CMCopyDictionaryOfAttachments(v6, v3, 0);
  v10 = rhs.value;
  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = v9;
  CMSetAttachments(rhs.value, v9, 0);
  v10 = rhs.value;
  rhs.value = 0;
  CFRelease(v11);
LABEL_10:
  if (rhs.value)
  {
    CFRelease(rhs.value);
  }

LABEL_12:
  if (!v8)
  {
    rhs = v18;
    lhs = *(a2 + 16);
    CMTimeSubtract(&v17, &rhs, &lhs);
    v12 = *MEMORY[0x1E6960558];
    v16 = v17;
    rhs = **&MEMORY[0x1E6960CC0];
    v13 = CMGetAttachment(v10, v12, 0);
    if (v13)
    {
      CMTimeMakeFromDictionary(&rhs, v13);
      v20 = rhs;
      v19 = v16;
      CMTimeAdd(&lhs, &v20, &v19);
      *&rhs.value = *&lhs.value;
      v14 = lhs.epoch;
    }

    else
    {
      *&rhs.value = *&v16.value;
      v14 = v16.epoch;
    }

    rhs.epoch = v14;
    *&lhs.value = *&rhs.value;
    lhs.epoch = v14;
    v15 = CMTimeCopyAsDictionary(&lhs, v6);
    CMSetAttachment(v10, v12, v15, 1u);
    if (v15)
    {
      CFRelease(v15);
    }

    v3 = v10;
LABEL_16:
    if (*(a2 + 40))
    {
      CMBufferQueueEnqueue(*a2, v3);
      *(a2 + 44) = 0;
    }

    if (v10)
    {
      goto LABEL_19;
    }

    return;
  }

  fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_3();
  if (v10)
  {
LABEL_19:
    CFRelease(v10);
  }
}

uint64_t __FigBufferedAirPlayAudioChainSubPipeIsSenderSideMixingArchitectureEnabled_block_invoke_0()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_59 = result;
  return result;
}

void fbaprp_baoBufferingPriorityChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage && (Value = CFDictionaryGetValue(a5, @"bufferingPriority"), !FigCFEqual()) && (FigCFEqual() || FigCFEqual() || FigCFEqual()))
  {
    UInt32 = FigCFNumberCreateUInt32();
    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      FigMediaProcessorSetProperty(v9, @"ActivitySchedulerPriority", UInt32);
    }

    if (qword_1ED4CAB58 != -1)
    {
      FigBufferedAirPlayAudioRenderPipelineCopyProperty_cold_2();
    }

    if (!_MergedGlobals_59)
    {
      CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(DerivedStorage + 376));
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(CMBaseObject, @"ThreadPriority", UInt32);
      }
    }

    v10 = *(DerivedStorage + 328);
    *(DerivedStorage + 328) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    FigSimpleMutexUnlock();
    if (UInt32)
    {

      CFRelease(UInt32);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t OUTLINED_FUNCTION_5_57()
{

  return _os_log_send_and_compose_impl();
}

void OUTLINED_FUNCTION_8_30(uint64_t a1@<X8>)
{
  *(v2 + 116) = 2048;
  *(v2 + 118) = v1;
  *(v2 + 126) = 2082;
  *(v2 + 128) = a1;
}

uint64_t OUTLINED_FUNCTION_12_31()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_16_24(uint64_t a1@<X8>)
{
  *(v3 + 116) = 2048;
  *(v3 + 118) = v2;
  *(v3 + 126) = 2082;
  *(v3 + 128) = a1;
  *(v3 + 136) = 2048;
  *(v3 + 138) = v1;
}

BOOL OUTLINED_FUNCTION_18_22(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_22_20(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_23_23(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const CMSampleTimingInfo *a9, CMItemCount a10, const size_t *a11, CMSampleBufferRef *a12)
{

  return CMSampleBufferCreate(a1, 0, 1u, 0, 0, 0, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_25_19()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_30_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

Float64 OUTLINED_FUNCTION_32_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  timea = *v32;
  time_16 = *(v32 + 2);

  return CMTimeGetSeconds(&timea);
}

BOOL OUTLINED_FUNCTION_38_12(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_46_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *(v14 + 16) = a14;
  return result;
}

Float64 OUTLINED_FUNCTION_48_10@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CMTime *time, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 timea, uint64_t time_16)
{
  timea = *(v32 + 160);
  time_16 = *(v32 + 176);

  return CMTimeGetSeconds(&timea);
}

double OUTLINED_FUNCTION_51_11@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 216) = a1;

  return CMTimeGetSeconds((v2 - 256));
}

__n128 OUTLINED_FUNCTION_56_8()
{
  result = *v0;
  *v1 = *v0;
  v1[1].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_59_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, unint64_t a16)
{
  result = a15;
  v16[10] = a15;
  v16[11].n128_u64[0] = a16;
  return result;
}

BOOL OUTLINED_FUNCTION_62_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_64_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_66_6()
{

  return FigSimpleMutexLock();
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryAcquireMixer(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  v65[16] = *MEMORY[0x1E69E9840];
  memset(&v60, 0, sizeof(v60));
  cf = 0;
  v57 = 0;
  valuePtr = 0x8000;
  v56 = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v55 = 0;
  v53 = -1;
  v54 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_block_invoke;
  block[3] = &__block_descriptor_tmp_51;
  block[4] = a1;
  if (FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_once != -1)
  {
    dispatch_once(&FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_once, block);
  }

  if (!gOfflineMixersDictionary)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_9(v65);
LABEL_84:
    Mutable = 0;
    goto LABEL_85;
  }

  if (!gAPIMutex)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_8(v65);
    goto LABEL_84;
  }

  if (!a2)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_7(v65);
    goto LABEL_84;
  }

  if (!a4)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_6(v65);
    goto LABEL_84;
  }

  if (!a6)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_5(v65);
    goto LABEL_84;
  }

  if (!a7)
  {
    FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_4(v65);
    goto LABEL_84;
  }

  v49 = CFPreferenceNumberWithDefault;
  if (dword_1EAF171A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    FigSimpleMutexLock();
    v61 = 0;
    v62 = &v61;
    v63 = 0x2000000000;
    v64 = 0;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 0x40000000;
    v65[2] = __fbapomf_getMixerForOutputFormat_block_invoke;
    v65[3] = &unk_1E7489780;
    v65[5] = a4;
    v65[6] = a3;
    v65[4] = &v61;
    FigCFDictionaryApplyBlock();
    v15 = v62[3];
    _Block_object_dispose(&v61, 8);
    v55 = v15;
    if (v15)
    {
      *a7 = v15;
      v55 = 0;
      if (dword_1EAF171A8)
      {
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v38 = 0;
      goto LABEL_45;
    }

    ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
    if (ASBD)
    {
      v18 = ASBD;
      v60.mChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
      v19 = FigActivitySchedulerCreateForNewThread(a1, 36, @"com.apple.coremedia.BAPOfflineMixerFactory.mixer", &cf);
      if (v19)
      {
        v38 = v19;
      }

      else
      {
        v48 = a7;
        v20 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v20)
        {
          v21 = v20;
          v22 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
          if (!v22)
          {
            v47 = 243;
            goto LABEL_96;
          }

          v23 = v22;
          FigCFDictionarySetValue();
          v24 = *(v18 + 8);
          if (v24 == 1634754915 || v24 == 1902211171 || v24 == 1667330147)
          {
            CFRelease(v23);
            v25 = *MEMORY[0x1E695E480];
            v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v54);
            if (!v26)
            {
              v47 = 251;
              goto LABEL_96;
            }

            v27 = v26;
            FigCFDictionarySetValue();
            CFRelease(v27);
            v28 = CFNumberCreate(v25, kCFNumberIntType, &v53);
            if (!v28)
            {
              v47 = 256;
              goto LABEL_96;
            }

            v23 = v28;
            FigCFDictionarySetValue();
          }

          FigCFDictionarySetValue();
          v29 = FigAudioQueueOfflineMixerCreate(a1, v18, 0xCuLL, &v60, v21, a6, cf, &v55);
          if (v29)
          {
            goto LABEL_77;
          }

          CFRelease(v23);
          if (*(v18 + 28) >= 3u)
          {
            v30 = 32;
          }

          else
          {
            v30 = 64;
          }

          v57 = v30;
          v31 = CFNumberCreate(a1, kCFNumberIntType, &v57);
          if (!v31)
          {
            v47 = 277;
            goto LABEL_96;
          }

          v23 = v31;
          v29 = FigAudioQueueOfflineMixerSetProperty(v55, @"AudioQueueOfflineMixer_CodecQuality", v31);
          if (v29)
          {
LABEL_77:
            v38 = v29;
LABEL_68:
            FigSimpleMutexUnlock();
            CFRelease(v23);
LABEL_69:
            CFRelease(v21);
            goto LABEL_70;
          }

          v32 = *(v18 + 8);
          if (v32 > 1902928226)
          {
            v33 = a5;
            if (v32 == 1902928227)
            {
              goto LABEL_61;
            }

            v34 = 2053923171;
          }

          else
          {
            v33 = a5;
            if (v32 == 1634492771)
            {
              goto LABEL_61;
            }

            v34 = 1668047203;
          }

          if (v32 != v34)
          {
            CFRelease(v23);
            v35 = *(v18 + 8);
            if (v35 != 1634754915 && v35 != 1902211171 && v35 != 1667330147)
            {
              if (*(v18 + 28) <= 2u)
              {
                v40 = 256000;
              }

              else
              {
                v40 = 512000;
              }

              v56 = v40;
              v37 = v49;
LABEL_57:
              if (v37)
              {
                v56 = v37;
              }

              v41 = CFNumberCreate(a1, kCFNumberIntType, &v56);
              if (!v41)
              {
                v47 = 319;
                goto LABEL_96;
              }

              v23 = v41;
              v29 = FigAudioQueueOfflineMixerSetProperty(v55, @"AudioQueueOfflineMixer_BitRateForVBR", v41);
              if (v29)
              {
                goto LABEL_77;
              }

              goto LABEL_61;
            }

            v36 = *(v18 + 28);
            if (v36 > 9)
            {
              v37 = v49;
              if (v36 != 10)
              {
                if (v36 != 12)
                {
LABEL_54:
                  v39 = 256000;
                  goto LABEL_56;
                }

                v39 = 896000;
LABEL_56:
                v56 = v39;
                goto LABEL_57;
              }
            }

            else
            {
              v37 = v49;
              if (v36 == 6)
              {
                v39 = 512000;
                goto LABEL_56;
              }

              if (v36 != 8)
              {
                goto LABEL_54;
              }
            }

            v39 = 768000;
            goto LABEL_56;
          }

LABEL_61:
          v42 = v55;
          AllocatorForMedia = FigGetAllocatorForMedia();
          v29 = FigAudioQueueOfflineMixerSetProperty(v42, @"AudioQueueOfflineMixer_SampleBufferAllocator", AllocatorForMedia);
          if (!v29)
          {
            CFArraySetValueAtIndex(Mutable, 0, a4);
            CFArraySetValueAtIndex(Mutable, 1, a3);
            CFRelease(v23);
            UInt32 = FigCFNumberCreateUInt32();
            if (UInt32)
            {
              v23 = UInt32;
              CFArraySetValueAtIndex(Mutable, 2, UInt32);
              if (v33)
              {
                CFArraySetValueAtIndex(Mutable, 3, v33);
              }

              FigCFDictionarySetValue();
              if (dword_1EAF171A8)
              {
                v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v38 = 0;
              *v48 = v55;
              goto LABEL_68;
            }

            v47 = 336;
LABEL_96:
            FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_1(v47, v65);
            v38 = LODWORD(v65[0]);
            goto LABEL_69;
          }

          goto LABEL_77;
        }

        v38 = 4294954510;
      }
    }

    else
    {
      FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_2(v65);
      v38 = LODWORD(v65[0]);
    }

LABEL_45:
    FigSimpleMutexUnlock();
    goto LABEL_70;
  }

  FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_cold_3(v65);
LABEL_85:
  v38 = LODWORD(v65[0]);
LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  return v38;
}

uint64_t __FigBufferedAirPlayOfflineMixerFactoryAcquireMixer_block_invoke(uint64_t a1)
{
  gOfflineMixersDictionary = CFDictionaryCreateMutable(*(a1 + 32), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gAPIMutex = FigSimpleMutexCreate();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(const void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!gOfflineMixersDictionary)
  {
    FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_4(v8);
    return v8[0];
  }

  if (!gAPIMutex)
  {
    FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_3(v8);
    return v8[0];
  }

  if (!a1)
  {
    FigBufferedAirPlayOfflineMixerFactoryReleaseMixer_cold_2(v8);
    return v8[0];
  }

  if (dword_1EAF171A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFDictionaryGetValueIfPresent())
  {
    FigAudioQueueOfflineMixerInvalidate(a1);
    CFDictionaryRemoveValue(gOfflineMixersDictionary, a1);
    if (dword_1EAF171A8)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EAF171A8)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v5 = 0;
  }

  else
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294954516;
  }

  FigSimpleMutexUnlock();
  return v5;
}

void __fbapomf_getMixerForOutputFormat_block_invoke(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      FigCFArrayGetValueAtIndex();
      FigCFArrayGetValueAtIndex();
      if (FigCFEqual())
      {
        if (FigCFEqual())
        {
          FigCFArrayGetValueAtIndex();
          FigCFNumberGetUInt32();
          UInt32 = FigCFNumberCreateUInt32();
          if (UInt32)
          {
            v7 = UInt32;
            CFArraySetValueAtIndex(theArray, 2, UInt32);
            *(*(*(a1 + 32) + 8) + 24) = a2;

            CFRelease(v7);
          }

          else
          {
            __fbapomf_getMixerForOutputFormat_block_invoke_cold_1();
          }
        }
      }
    }
  }
}

uint64_t CreatePesPrivateForADTS(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
      a1[6] = 0;
    }
  }

  v3 = malloc_type_calloc(1uLL, 0x140uLL, 0x10B0040A484EC9DuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = v4 + 38;
  v4[2] = v4 + 311;
  v4[3] = 7;
  v4[4] = ADTSCheckHeader;
  v4[5] = ADTSCompareHeaders;
  v4[6] = ADTSGetSamplesInFrame;
  v4[7] = ADTSGetSampleFrequency;
  v4[8] = ADTSGetFrameSize;
  a1[105] = PesADTSProcessData;
  a1[106] = PesADTSCleanPrivateData;
  a1[107] = PesADTSDeletePrivateData;
  a1[6] = v4;
  return result;
}

uint64_t ADTSCompareHeaders(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  result = ADTSGetSampleFrequency(a2);
  if (result)
  {
    v5 = 0;
    return !CMBlockBufferAccessDataBytes(a1, 0, 4uLL, temporaryBlock, &v5) && bswap32(*a2 ^ *v5) < 0x10;
  }

  return result;
}

void PesADTSDeletePrivateData(uint64_t a1)
{
  MPEGAudioCleanPrivateData(*(a1 + 48));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

__CFString *playerReportingModeratorCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigPlayerReportingModerator : ");
  return Mutable;
}

uint64_t fprm_addToSessionStatsCountValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 64);
  if (v10)
  {

    return v10(v5, v6, a2, a3);
  }

  return result;
}

uint64_t fprm_setSessionEndReasonIfFatalError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 1;
  if (!a3 || (v12 = *(a1 + 80), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 144)) == 0) || (result = v13(v12, a2, a3, &v26), v26 == 1))
  {
    v27 = 0;
    if (a2)
    {
      if (a4)
      {
        v15 = *(a1 + 80);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 144);
        if (v16)
        {
          if (!v16(v15, a2, a4, &v27))
          {
            v17 = *(a1 + 80);
            v18 = *(a1 + 88);
            v19 = v27;
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 88);
            if (v20)
            {
              v20(v17, v18, 0x1F0B65B58, v19);
            }
          }
        }
      }
    }

    fprm_setCFTypeFromKeyInStats(a1, a2, a6, 0x1F0B65B78);
    if (a5)
    {
      return fprm_setCFTypeFromKeyInStats(a1, a2, a5, 0x1F0B65B98);
    }

    else
    {
      v21 = *(a1 + 80);
      v22 = *(a1 + 88);
      VTable = CMBaseObjectGetVTable();
      v24 = *(VTable + 16);
      result = VTable + 16;
      v25 = *(v24 + 80);
      if (v25)
      {
        return v25(v21, v22, 0x1F0B65B98, @"CoreMediaErrorDomain");
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_42()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return CMBaseObjectGetVTable();
}

uint64_t AddPesToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *result = a2;
    *(result + 8) = a3;
    if (a2)
    {
      *(result + 16) = 0;
      v3 = *(a2 + 32);
      *(result + 24) = v3;
      *v3 = result;
      *(a2 + 32) = result + 16;
    }

    v4 = *(a3 + 24);
    if (v4)
    {
      v5 = *(a3 + 32);
      v6 = *(result + 448);
      if (*(**(v5 + 8) + 448) >= v6)
      {
        do
        {
          if (*(v4 + 448) >= v6)
          {
            break;
          }

          v4 = *(v4 + 32);
        }

        while (v4);
        v7 = *(v4 + 40);
        *(result + 40) = v7;
        *(result + 32) = v4;
        *v7 = result;
        *(v4 + 40) = result + 32;
      }

      else
      {
        *(result + 32) = 0;
        *(result + 40) = v5;
        *v5 = result;
        *(a3 + 32) = result + 32;
      }
    }

    else
    {
      *(result + 32) = 0;
      *(a3 + 24) = result;
      *(a3 + 32) = result + 32;
      *(result + 40) = a3 + 24;
    }
  }

  return result;
}