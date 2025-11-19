void VideoMentorDispose(void *a1)
{
  if (a1)
  {
    VideoMentorInvalidate(a1);
    if (a1[11])
    {
      FigSemaphoreDestroy();
      a1[11] = 0;
    }

    if (a1[12])
    {
      FigSimpleMutexDestroy();
      a1[12] = 0;
    }

    if (a1[10])
    {
      FigSimpleMutexDestroy();
      a1[10] = 0;
    }

    if (a1[33])
    {
      FigSimpleMutexDestroy();
      a1[33] = 0;
    }

    if (a1[15])
    {
      FigSemaphoreDestroy();
      a1[15] = 0;
    }

    v2 = a1[16];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[21];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[25];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[57];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[58];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[59];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[60];
    if (v8)
    {
      CFRelease(v8);
    }

    videoMentorDependencyStateReset((a1 + 93));
    v9 = a1[1];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[2];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = a1[3];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = a1[6];
    if (v12)
    {
      CFRelease(v12);
    }

    free(a1);
  }
}

uint64_t VideoMentorSetTimeRemapCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  a1[7] = a2;
  a1[8] = a3;
  a1[9] = a4;
  FigSimpleMutexUnlock();
  return 0;
}

void vmc2DecodeUntilHighWaterMet(uint64_t a1)
{
  valuePtr = 0;
  propertyValueOut = 0;
  FigSimpleMutexLock();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!*(a1 + 288))
  {
    goto LABEL_318;
  }

  v3 = 0;
  v138 = *MEMORY[0x1E6983968];
  allocator = *MEMORY[0x1E695E480];
  v4 = (a1 + 192);
  key = *MEMORY[0x1E6960458];
  v123 = *MEMORY[0x1E6960460];
  v134 = *MEMORY[0x1E695E4D0];
  v122 = *MEMORY[0x1E6960438];
  v133 = *MEMORY[0x1E69604B0];
  v120 = *MEMORY[0x1E69604F8];
  v132 = *MEMORY[0x1E6960490];
  v131 = *MEMORY[0x1E6962E00];
  v130 = *MEMORY[0x1E6962E20];
  v129 = *MEMORY[0x1E6962E08];
  v121 = *MEMORY[0x1E6962DC8];
  v140 = (a1 + 392);
  v119 = (a1 + 344);
  v128 = *MEMORY[0x1E6960518];
  v137 = *MEMORY[0x1E6960500];
  v127 = (a1 + 224);
  v135 = *MEMORY[0x1E69605B0];
  v136 = *MEMORY[0x1E6962E10];
  while (vmc2GetWaterLevelState(a1) != 2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      VTSessionCopyProperty(v5, v138, allocator, &propertyValueOut);
    }

    if (propertyValueOut)
    {
      CFNumberGetValue(propertyValueOut, kCFNumberSInt32Type, &valuePtr);
      if (propertyValueOut)
      {
        CFRelease(propertyValueOut);
        propertyValueOut = 0;
      }
    }

    else
    {
      valuePtr = 0;
    }

    FigReadWriteLockLockForRead();
    if (!*(a1 + 249))
    {
      vmc2DecodeUntilHighWaterMet_cold_1();
LABEL_14:
      v6 = 99;
      goto LABEL_16;
    }

    if (!*v4)
    {
      goto LABEL_14;
    }

    v6 = (*v4)(*(a1 + 152));
LABEL_16:
    FigReadWriteLockUnlockForRead();
    v7 = valuePtr;
    v8 = *(a1 + 592);
    WaterLevelState = vmc2GetWaterLevelState(a1);
    if (v6 <= v7)
    {
      v107 = WaterLevelState == 2 && *(a1 + 440) == 0;
      v110 = a1;
      v109 = v8;
      v111 = 0;
      goto LABEL_317;
    }

    if (WaterLevelState)
    {
      v10 = *(a1 + 440) != 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = vmc2GetWaterLevelState(a1) == 2 && *(a1 + 440) == 0;
    v12 = 1;
    vmc2UpdateTroubleMonitor(a1, v8, v10, v11, 1);
    v150 = 0;
    pixelBufferOut = 0;
    v148 = 0;
    cf = 0;
    context = 0;
    if (*(a1 + 880))
    {
      v13 = 8;
    }

    else
    {
      v13 = 9;
    }

    FigSimpleMutexLock();
    v14 = *(a1 + 88);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v12 = v15(v14) == 0;
    }

    *(a1 + 312) = v12;
    v16 = *(a1 + 88);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v18 = v17(v16);
      v19 = v18 != 0;
      *(a1 + 592) = v19;
      if (v18)
      {
        v20 = v18;
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v18, 0);
        if (SampleAttachmentsArray)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          v23 = v134;
          if (ValueAtIndex)
          {
            v24 = ValueAtIndex;
            v25 = CFDictionaryGetValue(ValueAtIndex, key);
            v114 = v25 != v134;
            v26 = CFDictionaryGetValue(v24, v123) == v134 || v25 != v134;
            value.value = 0;
            LODWORD(v155.value) = 0;
            CFDictionaryGetValueIfPresent(v24, v122, &value);
            LODWORD(time1.value) = 0;
            FigCFDictionaryGetIntIfPresent();
            if (value.value)
            {
              FigCFDictionaryGetIntIfPresent();
            }

            v27 = v155.value;
            v28 = *(a1 + 620);
            if (SLODWORD(v155.value) > v28)
            {
              *(a1 + 620) = v155.value;
              v28 = v27;
            }

            if (v26)
            {
              v29 = *(a1 + 616);
              if (v28 < v29)
              {
                v28 = v29 - 1;
              }

              *(a1 + 616) = v28;
              *(a1 + 620) = 0;
            }

            if (v25 != v134 && (LODWORD(time1.value) == 21 || LODWORD(time1.value) == 16))
            {
              *(a1 + 1089) = 1;
            }
          }

          else
          {
            v114 = 0;
          }
        }

        else
        {
          v114 = 0;
          v23 = v134;
        }

        if (*(a1 + 440))
        {
          CompressedFrameOutputMode = vmcGetCompressedFrameOutputMode(v20);
          if ((CompressedFrameOutputMode & 3) != 1)
          {
            *(a1 + 441) = 1;
          }
        }

        else
        {
          CompressedFrameOutputMode = 0;
        }

        if (CMGetAttachment(v20, v133, 0) == v23)
        {
          v48 = CMGetAttachment(v20, v120, 0) == v23;
          v47 = v48;
        }

        else
        {
          v47 = 0;
          LOBYTE(v48) = 1;
        }

        v115 = CMGetAttachment(v20, v132, 0);
        v117 = CMGetAttachment(v20, v131, 0);
        v49 = CMGetAttachment(v20, v130, 0);
        v125 = CMGetAttachment(v20, v129, 0) == v23;
        v50 = CMSampleBufferGetSampleAttachmentsArray(v20, 0);
        v116 = v49;
        v118 = v48;
        if (v50 && (v51 = CFArrayGetValueAtIndex(v50, 0)) != 0 && CFDictionaryGetValue(v51, v121))
        {
          v52 = a1 + 800;
          do
          {
            v52 = *v52;
          }

          while (v52 && !FigCFEqual());
        }

        else
        {
          v52 = 0;
        }

        context = a1;
        v148 = v20;
        dispatch_sync_f(*(a1 + 816), &context, vmc2UpdateCPECryptor);
        *(a1 + 730) = v47;
        if (v47)
        {
          vmc2RecalculateUpcomingImageTimes(a1);
        }

        NumSamples = CMSampleBufferGetNumSamples(v20);
        if (NumSamples < 1)
        {
          v55 = 0;
        }

        else
        {
          CompressedFrameOutputMode = vmcGetCompressedFrameOutputMode(v20);
          memset(&value, 0, sizeof(value));
          CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
          if ((CompressedFrameOutputMode & 3) == 1)
          {
            v54 = MEMORY[0x1E6960C70];
            *v140 = *MEMORY[0x1E6960C70];
            *(a1 + 408) = *(v54 + 16);
          }

          else
          {
            *v140 = *&value.value;
            *(a1 + 408) = value.epoch;
            if (*(a1 + 64))
            {
              memset(&v155, 0, sizeof(v155));
              CMSampleBufferGetOutputDuration(&v155, v20);
              time1 = value;
              time2 = *(a1 + 320);
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                *(a1 + 320) = value;
                v56 = 1;
              }

              else
              {
                v56 = 0;
              }

              if (value.flags)
              {
                time1 = value;
                *&time2.value = *v119;
                time2.epoch = *(a1 + 360);
                if (CMTimeCompare(&time1, &time2) > 0 || (*(a1 + 356) & 1) == 0)
                {
                  *v119 = *&value.value;
                  *(a1 + 360) = value.epoch;
                  v56 = 1;
                }
              }

              if (value.flags)
              {
                if (v155.flags & 1) == 0 || (time2 = value, rhs = v155, CMTimeAdd(&time1, &time2, &rhs), value = time1, (time1.flags))
                {
                  if ((*(a1 + 380) & 1) == 0 || (time1 = value, time2 = *(a1 + 368), CMTimeCompare(&time1, &time2) >= 1))
                  {
                    *(a1 + 368) = value;
                  }
                }
              }

              if (v56)
              {
                ++*(a1 + 316);
                vmc2RecalculateUpcomingImageTimes(a1);
              }
            }
          }

          *(a1 + 312) = 0;
          v55 = 1;
        }

        v126 = v55;
        FigSimpleMutexUnlock();
        v57 = CMGetAttachment(v20, v128, 0);
        if (v57)
        {
          v58 = *(a1 + 64);
          if (v58)
          {
            VTDecompressionSessionWaitForAsynchronousFrames(v58);
          }
        }

        FigSimpleMutexLock();
        v59 = *(a1 + 792);
        v60 = *(a1 + 784);
        if (v60)
        {
          v61 = 0;
        }

        else
        {
          v61 = *(a1 + 792);
        }

        v141 = v61;
        if (v57 && v60)
        {
          if (CFEqual(v57, v60))
          {
            v62 = *(a1 + 784);
            if (v62)
            {
              CFRelease(v62);
              *(a1 + 784) = 0;
            }

            v141 = v59;
          }

          else
          {
            v141 = 0;
          }
        }

        FigSimpleMutexUnlock();
        if (!*(a1 + 728))
        {
          v2 = MEMORY[0x1E695FF58];
          goto LABEL_154;
        }

        v2 = MEMORY[0x1E695FF58];
        if (v118)
        {
          v63 = v126;
          if (v47)
          {
            v63 = 1;
          }

          v126 = v63;
LABEL_154:
          if (NumSamples < 1)
          {
            SourceFrameInfo = 0;
            goto LABEL_171;
          }

          SourceFrameInfo = vmcCreateSourceFrameInfo(a1, CompressedFrameOutputMode, v20, v141);
          vmcCreateAttachmentsDictionaryForSourceFrameInfo(a1, SourceFrameInfo, v20);
          if ((CompressedFrameOutputMode & 7) == 1)
          {
            v13 |= 2u;
          }

          FigSimpleMutexLock();
          v64 = *(a1 + 584);
          if (v64)
          {
            v65 = CFRetain(v64);
          }

          else
          {
            v65 = 0;
          }

          FigSimpleMutexUnlock();
          if ((CompressedFrameOutputMode & 3) != 0 || *(a1 + 608) || !v65)
          {
            if (v65)
            {
              goto LABEL_169;
            }
          }

          else
          {
            if (!*(a1 + 877) && CMTimebaseGetRate(v65) > 0.9 && CMTimebaseGetRate(v65) < 1.1)
            {
              CFRelease(v65);
              v13 |= 4u;
              ++*(a1 + 1140);
LABEL_171:
              ImageBuffer = CMSampleBufferGetImageBuffer(v20);
              pixelBufferOut = ImageBuffer;
              if (ImageBuffer)
              {
                CFRetain(ImageBuffer);
                if (!VTPixelBufferConformerCopyConformedPixelBuffer())
                {
                  v70 = pixelBufferOut;
                  pixelBufferOut = cf;
                  if (cf)
                  {
                    CFRetain(cf);
                  }

                  if (v70)
                  {
                    CFRelease(v70);
                  }

                  v30 = 1;
                  if ((v13 & 2) == 0)
                  {
                    vmc2UpdateSessionMinAndMaxOutputPTS(a1);
                    v71 = pixelBufferOut;
                    CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                    CMSampleBufferGetOutputDuration(&v155, v20);
                    vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, v71, 0, &value, &v155.value, 1);
                  }

                  v31 = 0;
                  SourceFrameInfo = 0;
LABEL_199:
                  v19 = 1;
                  v32 = v125;
LABEL_200:
                  v33 = v126;
                  goto LABEL_51;
                }

LABEL_252:
                v31 = 0;
LABEL_198:
                v30 = 1;
                goto LABEL_199;
              }

              TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
              if (TaggedBufferGroup)
              {
                v31 = TaggedBufferGroup;
                CFRetain(TaggedBufferGroup);
                if (VTPixelBufferConformerCopyConformedTaggedBufferGroup())
                {
                  goto LABEL_198;
                }

                CFRelease(v31);
                if ((v13 & 2) == 0)
                {
                  vmc2UpdateSessionMinAndMaxOutputPTS(a1);
                  v73 = v150;
                  CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                  CMSampleBufferGetOutputDuration(&v155, v20);
                  vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, 0, v73, &value, &v155.value, 1);
                }

                if (v150)
                {
                  CFRelease(v150);
                  v31 = 0;
                  SourceFrameInfo = 0;
                  v150 = 0;
                  goto LABEL_198;
                }

LABEL_197:
                v31 = 0;
                SourceFrameInfo = 0;
                goto LABEL_198;
              }

              if (v52)
              {
                v74 = vmcGetCompressedFrameOutputMode(v20);
                if (!SourceFrameInfo)
                {
                  SourceFrameInfo = vmcCreateSourceFrameInfo(a1, v74, v20, v141);
                  vmcCreateAttachmentsDictionaryForSourceFrameInfo(a1, SourceFrameInfo, v20);
                }

                vmc2UpdateSessionMinAndMaxOutputPTS(a1);
                v75 = *(v52 + 16);
                v76 = *(v52 + 20);
                v77 = *(v52 + 24);
                v78 = *(v52 + 32);
                value = *(v52 + 40);
                v155 = *(v52 + 64);
                vmc2OutputFrameInternal(a1, SourceFrameInfo, v75, v76, v77, v78, &value, &v155.value, 0);
                goto LABEL_197;
              }

              if (NumSamples < 1)
              {
                v32 = v125;
                goto LABEL_282;
              }

              FormatDescription = CMSampleBufferGetFormatDescription(v20);
              if (*(a1 + 32) != FormatDescription && FigCFEqual())
              {
                vmc2SetVideoFormatDescription(a1, FormatDescription);
              }

              if (*(a1 + 64) && *(a1 + 32) == FormatDescription)
              {
                goto LABEL_249;
              }

              *(a1 + 1089) = 0;
              FigSimpleMutexLock();
              *(a1 + 1204) = CMFormatDescriptionGetMediaSubType(FormatDescription);
              FigSimpleMutexUnlock();
              v93 = *(a1 + 64);
              if (v93)
              {
                if (VTDecompressionSessionCanAcceptFormatDescription(v93, FormatDescription))
                {
                  vmc2SetVideoFormatDescription(a1, FormatDescription);
                  vmc2BroadcastHDRStatus(a1);
                  goto LABEL_249;
                }

                v94 = *(a1 + 64);
                if (v94)
                {
                  VTDecompressionSessionWaitForAsynchronousFrames(v94);
                }
              }

              FigSimpleMutexLock();
              vmc2RemoveDecompressionSession(a1);
              *(a1 + 1088) = 0;
              vmc2SetVideoFormatDescription(a1, FormatDescription);
              vmc2BroadcastHDRStatus(a1);
              if (!*(a1 + 32))
              {
                FigSimpleMutexUnlock();
                goto LABEL_249;
              }

              v95 = vmc2BuildDecompressionSession(a1);
              FigSimpleMutexUnlock();
              if (!v95)
              {
LABEL_249:
                if (*(a1 + 1058))
                {
                  goto LABEL_250;
                }

                if (!*(a1 + 1057))
                {
                  v96 = v114;
                  if (*(a1 + 64))
                  {
                    v96 = 0;
                  }

                  if (v96)
                  {
                    goto LABEL_259;
                  }

                  goto LABEL_261;
                }

                if (!v114)
                {
                  goto LABEL_261;
                }

LABEL_259:
                if (*(a1 + 1089) && !*(a1 + 808))
                {
LABEL_261:
                  DataBuffer = CMSampleBufferGetDataBuffer(v20);
                  if (DataBuffer)
                  {
                    if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
                    {
                      ++*(a1 + 1172);
                    }

                    else
                    {
                      ++*(a1 + 1176);
                    }
                  }

                  v98 = VTDecompressionSessionDecodeFrame(*(a1 + 64), v20, v13, SourceFrameInfo, 0);
                  if (v98)
                  {
                    v32 = v125;
                    if (v98 == -17690)
                    {
                      v99 = *(a1 + 1080);
                      v100 = *(a1 + 1072);
                      *(a1 + 1080) = v100;
                      if (v100)
                      {
                        CFRetain(v100);
                      }

                      if (v99)
                      {
                        CFRelease(v99);
                      }

                      v101 = *(a1 + 1064);
                      if (v101)
                      {
                        CFRelease(v101);
                        *(a1 + 1064) = 0;
                      }

                      v102 = *(a1 + 1072);
                      if (v102)
                      {
                        CFRelease(v102);
                        *(a1 + 1072) = 0;
                      }

                      if (vmc2RebuildDecompressionSession(a1))
                      {
                        CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                        vmc2PostDecodeError(a1);
                        v31 = 0;
                        SourceFrameInfo = 0;
LABEL_299:
                        v30 = 1;
                        v19 = 1;
                        goto LABEL_200;
                      }

                      SourceFrameInfo = 0;
                    }

                    else
                    {
                      CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
                      vmc2PostDecodeError(a1);
                    }
                  }

                  else
                  {
                    SourceFrameInfo = 0;
                    v32 = v125;
                  }

                  vmc2UpdateSessionMinAndMaxOutputPTS(a1);
LABEL_282:
                  if (*(a1 + 64))
                  {
                    if (v115 == v134 || v117 == v134 || v116)
                    {
                      FigSimpleMutexLock();
                      VTDecompressionSessionFinishDelayedFrames(*(a1 + 64));
                      if (v117 == v134 || v116)
                      {
                        VTDecompressionSessionWaitForAsynchronousFrames(*(a1 + 64));
                      }

                      if (v117 == v134)
                      {
                        vmc2RemoveDecompressionSession(a1);
                      }

                      FigSimpleMutexUnlock();
                      goto LABEL_292;
                    }
                  }

                  else
                  {
LABEL_292:
                    if (v116)
                    {
                      value.value = 0;
                      *&value.timescale = &value;
                      value.epoch = 0x2000000000;
                      v146 = 0;
                      v103 = *(a1 + 984);
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 0x40000000;
                      block[2] = __vmc2DequeueAndDecodeFrame_block_invoke;
                      block[3] = &unk_1E7479B28;
                      block[4] = &value;
                      block[5] = a1;
                      dispatch_sync(v103, block);
                      if (*(*&value.timescale + 24))
                      {
                        VTTemporalFilterSessionCompleteFrames();
                      }

                      FigImageQueueGaugeSetEnqueueingComplete(v116);
                      v104 = *(*&value.timescale + 24);
                      if (v104)
                      {
                        CFRelease(v104);
                      }

                      _Block_object_dispose(&value, 8);
                    }
                  }

LABEL_298:
                  v31 = 0;
                  goto LABEL_299;
                }

LABEL_250:
                if (!vmc2RebuildDecompressionSession(a1))
                {
                  goto LABEL_261;
                }
              }

              CMSampleBufferGetOutputPresentationTimeStamp(&value, v20);
              vmc2PostDecodeError(a1);
              goto LABEL_252;
            }

LABEL_169:
            CFRelease(v65);
          }

          ++*(a1 + 1136);
          goto LABEL_171;
        }

        v66 = vmcGetCompressedFrameOutputMode(v20);
        SourceFrameInfo = vmcCreateSourceFrameInfo(a1, v66, v20, v141);
        vmcCreateAttachmentsDictionaryForSourceFrameInfo(a1, SourceFrameInfo, v20);
        v67 = *(a1 + 64);
        if (v67)
        {
          VTDecompressionSessionWaitForAsynchronousFrames(v67);
        }

        v32 = v125;
        if (*(a1 + 729))
        {
          v68 = *(a1 + 64);
          if (v68)
          {
            if (VTDecompressionSessionCopyBlackPixelBuffer(v68, &pixelBufferOut))
            {
              goto LABEL_298;
            }
          }

          else if (*(a1 + 80))
          {
            VTPixelBufferConformerCopyBlackPixelBuffer();
          }

          ++*(a1 + 1152);
          ++*(a1 + 1412);
        }

        else
        {
          FigCreateNullPixelBuffer(allocator, &pixelBufferOut);
        }

        v79 = *(a1 + 256);
        if (v79 && CFArrayGetCount(v79) >= 1)
        {
          v80 = pixelBufferOut;
          v81 = *(a1 + 256);
          v155.value = 0;
          time1.value = 0;
          v82 = MEMORY[0x1E695E9C0];
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v84 = CFArrayCreateMutable(allocator, 0, v82);
          v85 = v84;
          if (Mutable && v84)
          {
            if (v81 && (Count = CFArrayGetCount(v81), Count >= 1))
            {
              v87 = Count;
              v88 = 0;
              while (1)
              {
                LODWORD(time2.value) = 0;
                FigCFArrayGetInt32AtIndex();
                value.value = 0;
                *&value.timescale = 0;
                value.value = FigTagMakeWithSInt64Value();
                *&value.timescale = v89;
                FigTagCollectionCreate();
                if (!time1.value)
                {
                  break;
                }

                CFArrayAppendValue(Mutable, time1.value);
                CFArrayAppendValue(v85, v80);
                if (time1.value)
                {
                  CFRelease(time1.value);
                  time1.value = 0;
                }

                if (v87 == ++v88)
                {
                  goto LABEL_215;
                }
              }

              fig_log_get_emitter();
              v90 = FigSignalErrorAtGM();
LABEL_301:
              v31 = 0;
            }

            else
            {
LABEL_215:
              v90 = MEMORY[0x19A8D33F0](allocator, Mutable, v85, &v155);
              if (v90)
              {
                goto LABEL_301;
              }

              v31 = v155.value;
              v155.value = 0;
            }
          }

          else
          {
            vmc2DecodeUntilHighWaterMet_cold_2(&value);
            v31 = 0;
            v90 = value.value;
          }

          if (time1.value)
          {
            CFRelease(time1.value);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v85)
          {
            CFRelease(v85);
          }

          if (v155.value)
          {
            CFRelease(v155.value);
          }

          v32 = v125;
          if (v90)
          {
            v30 = 1;
            v19 = 1;
            v2 = MEMORY[0x1E695FF58];
            goto LABEL_200;
          }

          CMSampleBufferGetOutputPresentationTimeStamp(&v155, v20);
          value = v155;
          vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, 0, v31, &value, MEMORY[0x1E6960C70], 0);
          v2 = MEMORY[0x1E695FF58];
          if (v31)
          {
            CFRelease(v31);
          }
        }

        else
        {
          v91 = pixelBufferOut;
          CMSampleBufferGetOutputPresentationTimeStamp(&v155, v20);
          value = v155;
          vmc2OutputFrameInternal(a1, SourceFrameInfo, 0, 0, v91, 0, &value, MEMORY[0x1E6960C70], 0);
        }

        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
          v31 = 0;
          SourceFrameInfo = 0;
          pixelBufferOut = 0;
        }

        else
        {
          v31 = 0;
          SourceFrameInfo = 0;
        }

        v30 = 1;
        v19 = 1;
        v33 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v19 = 0;
      *(a1 + 592) = 0;
    }

    *(a1 + 312) = 0;
    if (*v2 == 1)
    {
      kdebug_trace();
    }

    FigSimpleMutexLock();
    ++*(a1 + 1408);
    FigSimpleMutexUnlock();
    FigSimpleMutexUnlock();
    vmc2CheckForEnd(a1);
    v30 = 0;
    v20 = 0;
    v31 = 0;
    v141 = 0;
    v32 = 0;
    v33 = 0;
    SourceFrameInfo = 0;
LABEL_51:
    FigSimpleMutexLock();
    *(a1 + 312) = 0;
    v35 = MEMORY[0x1E6960C70];
    *v140 = *MEMORY[0x1E6960C70];
    *(a1 + 408) = *(v35 + 16);
    FigSimpleMutexUnlock();
    if (v33)
    {
      vmc2RecalculateUpcomingImageTimes(a1);
    }

    if (v32)
    {
      vmc2ClearSavedList(a1);
      if (!v19)
      {
LABEL_55:
        if (!SourceFrameInfo)
        {
          goto LABEL_84;
        }

LABEL_69:
        v39 = *(SourceFrameInfo + 1);
        if (v39)
        {
          CFRelease(v39);
        }

        v40 = *(SourceFrameInfo + 2);
        if (v40)
        {
          CFRelease(v40);
        }

        v41 = *(SourceFrameInfo + 3);
        if (v41)
        {
          CFRelease(v41);
        }

        v42 = *(SourceFrameInfo + 4);
        if (v42)
        {
          CFRelease(v42);
        }

        v43 = *(SourceFrameInfo + 5);
        if (v43)
        {
          CFRelease(v43);
        }

        v44 = *(SourceFrameInfo + 6);
        if (v44)
        {
          CFRelease(v44);
        }

        v45 = *(SourceFrameInfo + 7);
        if (v45)
        {
          CFRelease(v45);
        }

        free(SourceFrameInfo);
        goto LABEL_84;
      }
    }

    else if (!v19)
    {
      goto LABEL_55;
    }

    v36 = CMGetAttachment(v20, v137, 0);
    if (v36)
    {
      v37 = v36;
      v38 = *(a1 + 64);
      if (v38)
      {
        VTDecompressionSessionWaitForAsynchronousFrames(v38);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v141 == *(a1 + 792))
      {
        FigReadWriteLockLockForRead();
        if (*(a1 + 249))
        {
          if (*v127)
          {
            (*v127)(*(a1 + 152), v135, v37);
          }
        }

        else
        {
          vmc2DecodeUntilHighWaterMet_cold_3();
        }

        FigReadWriteLockUnlockForRead();
      }
    }

    if (CMGetAttachment(v20, v136, 0))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    CFRelease(v20);
    if (SourceFrameInfo)
    {
      goto LABEL_69;
    }

LABEL_84:
    if (cf)
    {
      CFRelease(cf);
    }

    v4 = (a1 + 192);
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v150)
    {
      CFRelease(v150);
    }

    if ((v30 & 1) == 0)
    {
      v112 = *(a1 + 592);
      if (vmc2GetWaterLevelState(a1))
      {
        v113 = *(a1 + 440) != 0;
      }

      else
      {
        v113 = 1;
      }

      v107 = vmc2GetWaterLevelState(a1) == 2 && *(a1 + 440) == 0;
      v110 = a1;
      v109 = v112;
      v111 = v113;
      goto LABEL_317;
    }

    ++v3;
    if (!*(a1 + 288))
    {
      goto LABEL_318;
    }
  }

  v105 = *(a1 + 592);
  if (vmc2GetWaterLevelState(a1))
  {
    v106 = *(a1 + 440) != 0;
  }

  else
  {
    v106 = 1;
  }

  v108 = vmc2GetWaterLevelState(a1) == 2 && *(a1 + 440) == 0;
  vmc2UpdateTroubleMonitor(a1, v105, v106, v108, 1);
  v109 = *(a1 + 592);
  v110 = a1;
  v111 = 0;
  v107 = 1;
LABEL_317:
  vmc2UpdateTroubleMonitor(v110, v109, v111, v107, 1);
LABEL_318:
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  vmc2PostCompletedDecodeForPrerollIfPreviouslyRequestedAndMaybeRecordNewRequest(a1, 0, 0);
}

CMTime *piqca_getSafeDisplayDuration@<X0>(CMTime *a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 216);
  v6 = *(DerivedStorage + 160);
  time = *(DerivedStorage + 164);
  v8 = *(DerivedStorage + 188);
  result = FigImageQueueCalculateSafeDisplayDuration(a1, v5, v6, &time, &v8, a2);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    return kdebug_trace();
  }

  return result;
}

CMTime *FigImageQueueCalculateSafeDisplayDuration@<X0>(CMTime *result@<X0>, int a2@<W1>, int a3@<W2>, CMTime *a4@<X3>, CMTime *a5@<X4>, uint64_t a6@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  *&v25.value = *MEMORY[0x1E6960C70];
  v25.epoch = epoch;
  *&v24.value = *&v25.value;
  v24.epoch = epoch;
  if (!result)
  {
    v18 = MEMORY[0x1E6960CC0];
    *a6 = *MEMORY[0x1E6960CC0];
    *(a6 + 16) = *(v18 + 16);
    return result;
  }

  v12 = result;
  flags = *(MEMORY[0x1E6960C70] + 12);
  VTable = CMBaseObjectGetVTable();
  v15 = *(VTable + 16);
  result = (VTable + 16);
  v16 = *(v15 + 64);
  if (v16)
  {
    v26 = 0;
    result = v16(v12, &v26, &v25, &v24);
    if (!result)
    {
      v17 = MEMORY[0x1E6960CC0];
      if (!v26)
      {
        value = *MEMORY[0x1E6960CC0];
        flags = *(MEMORY[0x1E6960CC0] + 12);
        timescale = *(MEMORY[0x1E6960CC0] + 8);
        epoch = *(MEMORY[0x1E6960CC0] + 16);
LABEL_13:
        if ((flags & 0x1D) != 1 || (time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, lhs = *v17, result = CMTimeCompare(&time1, &lhs), (result & 0x80000000) != 0))
        {
          value = v17->value;
          flags = v17->flags;
          timescale = v17->timescale;
          epoch = v17->epoch;
        }

        goto LABEL_16;
      }

      if (a3 == 2)
      {
        if (a2 < 1)
        {
          time1 = v25;
          v21 = *a5;
          CMTimeMaximum(&lhs, &time1, &v21);
          v21 = v24;
          v19 = &v21;
          p_lhs = &lhs;
          goto LABEL_12;
        }

        time1 = *a4;
        v21 = v24;
        CMTimeMinimum(&lhs, &time1, &v21);
      }

      else
      {
        lhs = v24;
      }

      v21 = v25;
      v19 = &lhs;
      p_lhs = &v21;
LABEL_12:
      result = CMTimeSubtract(&time1, v19, p_lhs);
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      epoch = time1.epoch;
      goto LABEL_13;
    }
  }

LABEL_16:
  *a6 = value;
  *(a6 + 8) = timescale;
  *(a6 + 12) = flags;
  *(a6 + 16) = epoch;
  return result;
}

uint64_t piqca_getOccupancyInfo(uint64_t a1, _DWORD *a2, CMTime *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = **&MEMORY[0x1E6960CC0];
  v10 = v11;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 50))
  {
    UnconsumedImageCount = 0;
  }

  else
  {
    UnconsumedImageCount = CAImageQueueGetUnconsumedImageCount();
    CMTimeMakeWithSeconds(&v11, 0.0 + 0.000833333333, 600);
    CMTimeMakeWithSeconds(&v10, 0.0 + 0.000833333333, 600);
  }

  ++*(DerivedStorage + 2472);
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = UnconsumedImageCount;
  }

  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v10;
  }

  return 0;
}

uint64_t piqca_canEnqueueImage()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  piqca_evictExpiredFramesFromCAImageQueueIfEvictionNotDoneRecently();
  if (*(DerivedStorage + 50))
  {
    return 99;
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    return (v2 - 1);
  }

  else
  {
    return 0;
  }
}

void vmc2UpdateTroubleMonitor(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (*(a1 + 626))
  {
    if (FigSimpleMutexTryLock())
    {
      vmc2UpdateTroubleMonitor2(a1, a2, a3, a4, a5);

      FigSimpleMutexUnlock();
    }

    else if (*(a1 + 456))
    {
      v10 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
      if (v10)
      {
        v11 = v10;
        CFRetain(a1);
        *v11 = a1;
        v11[8] = a5;
        v12 = *(a1 + 456);

        dispatch_async_f(v12, v11, vmc2WhileHoldingSessionVTMutexUpdateTroubleMonitor);
      }
    }
  }
}

CMBufferRef sbp_bq_getAndRetainNextSampleBufferIfReady()
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

    return CMBufferQueueDequeueIfDataReadyAndRetain(v2);
  }
}

uint64_t vmc2CheckForEnd(uint64_t result)
{
  if (!*(result + 520))
  {
    v1 = result;
    result = VMC2IsAtEndOfOutputData(result);
    if (result)
    {
      if (!*(v1 + 312))
      {
        vmc2RecalculateUpcomingImageTimes(v1);
        FigSimpleMutexLock();
        *(v1 + 520) = 1;
        FigSimpleMutexUnlock();
        CMNotificationCenterGetDefaultLocalCenter();

        return CMNotificationCenterPostNotification();
      }
    }
  }

  return result;
}

uint64_t VMC2IsAtEndOfOutputData(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v3)
  {
    return 0;
  }

  result = v3(v2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 64);
  if (v5 && (propertyValueOut = 0, VTSessionCopyProperty(v5, *MEMORY[0x1E6983968], *MEMORY[0x1E695E480], &propertyValueOut), propertyValueOut) && (valuePtr = 0, CFNumberGetValue(propertyValueOut, kCFNumberIntType, &valuePtr), CFRelease(propertyValueOut), valuePtr > 0))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sbp_bq_isAtEndOfData()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 1;
  }

  else
  {
    v2 = *(DerivedStorage + 8);

    return CMBufferQueueIsAtEndOfData(v2);
  }
}

uint64_t bossGetTimeOfNextIFrameInDirection(uint64_t a1, CMTime *a2, int a3, int a4, int a5, CMTime *a6, char *a7, BOOL *a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = **&MEMORY[0x1E6960C70];
  v54 = 0;
  v53 = 0;
  v16 = *(MEMORY[0x1E6960C78] + 48);
  *&v51.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v52.start.value = v16;
  v17 = *(MEMORY[0x1E6960C78] + 80);
  *&v52.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v52.duration.timescale = v17;
  v18 = *(MEMORY[0x1E6960C78] + 16);
  *&v51.start.value = *MEMORY[0x1E6960C78];
  *&v51.start.epoch = v18;
  v50 = v55;
  *&v49.start.value = v16;
  *&v49.start.epoch = *&v52.start.epoch;
  *&v49.duration.timescale = v17;
  *&v48.start.value = *&v51.start.value;
  *&v48.start.epoch = v18;
  *&v48.duration.timescale = *&v51.duration.timescale;
  cf = 0;
  v46 = 0;
  v45 = v55;
  v44 = v55;
  if (a3 < 1)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  *&fromRange.start.value = *&a2->value;
  fromRange.start.epoch = a2->epoch;
  PresentationTimeStamp = bossScanForEditSegmentContainingTrackTime(a1, &fromRange, &v53 + 1, &v53, &v51, v19, &v50, &v48);
  if (PresentationTimeStamp)
  {
    goto LABEL_5;
  }

  if (HIBYTE(v53) && !v53)
  {
    goto LABEL_8;
  }

  if (HIBYTE(v53) && v53)
  {
    if ((v51.start.flags & 0x1D) != 1)
    {
      if (a4 != 1 && !a5 || (v50.flags & 0x1D) != 1)
      {
        goto LABEL_8;
      }

      v22 = 0;
      v55 = v50;
      v51 = v48;
      v52 = v49;
      goto LABEL_15;
    }

    *&v43.value = *&a2->value;
    fromRange = v52;
    *&toRange.start.value = *&v51.start.value;
    *&toRange.start.epoch = *&v51.start.epoch;
    v43.epoch = a2->epoch;
    *&toRange.duration.timescale = *&v51.duration.timescale;
    CMTimeMapTimeFromRangeToRange(&v55, &v43, &fromRange, &toRange);
  }

  else
  {
    v55 = *a2;
  }

  v22 = 1;
LABEL_15:
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v23)
  {
    goto LABEL_44;
  }

  v41 = v22;
  PresentationTimeStamp = v23(a1, &v54);
  if (PresentationTimeStamp)
  {
LABEL_5:
    v21 = PresentationTimeStamp;
    goto LABEL_45;
  }

  v24 = v54;
  toRange.start = v55;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v25)
  {
LABEL_44:
    v21 = 4294954514;
    goto LABEL_45;
  }

  *&fromRange.start.value = *&toRange.start.value;
  fromRange.start.epoch = toRange.start.epoch;
  PresentationTimeStamp = v25(v24, &fromRange, &cf, &v46 + 1, &v46);
  if (PresentationTimeStamp)
  {
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    fromRange.start.value = 0;
    v21 = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(cf, a3, &fromRange);
    if (v21 || fromRange.start.value != a3)
    {
      goto LABEL_45;
    }

    v40 = a3;
    v39 = 0;
  }

  else
  {
    v40 = a3;
    v39 = 1;
  }

  for (i = 10001; ; --i)
  {
    v42 = 0;
    v43.value = 0;
    v27 = cf;
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v28)
    {
      v21 = v28(v27, &v42 + 1, &v42, 0, 0);
      if (!v21)
      {
        v29 = v42 != 0;
        goto LABEL_37;
      }
    }

    else
    {
      v21 = 4294954514;
    }

    LOBYTE(fromRange.start.value) = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      goto LABEL_45;
    }

    v30 = cf;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v31)
    {
      goto LABEL_44;
    }

    PresentationTimeStamp = v31(v30, &fromRange, 0, 0);
    if (PresentationTimeStamp)
    {
      goto LABEL_5;
    }

    v29 = LOBYTE(fromRange.start.value) == 73;
    LOBYTE(v42) = v29;
LABEL_37:
    if (HIBYTE(v42) || v29)
    {
      break;
    }

    v32 = cf;
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (!v33)
    {
      goto LABEL_44;
    }

    PresentationTimeStamp = v33(v32, v40, &v43);
    if (PresentationTimeStamp)
    {
      goto LABEL_5;
    }

    if (v43.value != v40)
    {
      goto LABEL_8;
    }

    if (!i)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = 4294954923;
      goto LABEL_45;
    }

    v39 = 0;
  }

  v35 = v39;
  if (!v41)
  {
    v35 = 0;
  }

  if (HIBYTE(v46) | v46)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  if (a4 == 2 || !v36)
  {
    PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(cf, &v45);
    if (!PresentationTimeStamp)
    {
      v37 = v53;
      if (v53)
      {
        toRange.start = v45;
        fromRange = v51;
        CMTimeClampToRange(&v43, &toRange.start, &fromRange);
        fromRange = v51;
        toRange = v52;
        CMTimeMapTimeFromRangeToRange(&v44, &v43, &fromRange, &toRange);
        if ((v45.flags & 0x1D) == 1)
        {
          fromRange = v51;
          toRange.start = v45;
          v37 = CMTimeRangeContainsTime(&fromRange, &toRange.start) != 0;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v44 = v45;
      }

      if (a6)
      {
        *a6 = v44;
      }

      goto LABEL_58;
    }

    goto LABEL_5;
  }

  v37 = 1;
LABEL_58:
  if (a7)
  {
    *a7 = v36;
  }

  if (a8)
  {
    v21 = 0;
    *a8 = v37;
    goto LABEL_45;
  }

LABEL_8:
  v21 = 0;
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  return v21;
}

uint64_t bossScanForEditSegmentContainingTrackTime(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, void *a5, unsigned int a6, uint64_t a7, unint64_t a8)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v14 = *MEMORY[0x1E695E480];
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(FigBaseObject, @"SecondaryEditCursorService", v14, v32);
    v17 = v32[0] != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = FigTrackReaderGetFigBaseObject(a1);
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, @"EditCursorService", v14, &v32[v17]);
  }

  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  if (v32[v17])
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  if (!v21)
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37_5();
  EditSegmentContainingTrackTime = bossUsingEditCursorServiceArrayFindEditSegmentContainingTrackTime(v32, v21, v30, &v31, a5);
  if (EditSegmentContainingTrackTime)
  {
    v22 = EditSegmentContainingTrackTime;
  }

  else
  {
    OUTLINED_FUNCTION_29();
    if (v27)
    {
      v22 = 0;
      goto LABEL_14;
    }

    if (a7 | a8)
    {
      OUTLINED_FUNCTION_37_5();
      NextNonEmptyTrackTime = bossUsingEditCursorServiceArrayFindNextNonEmptyTrackTime(v32, v21, v30, a6, MEMORY[0x1E6960C70], a7, a8);
      if (NextNonEmptyTrackTime == -12520)
      {
        v22 = 0;
      }

      else
      {
        v22 = NextNonEmptyTrackTime;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  v23 = 1;
LABEL_14:
  if (a3)
  {
    *a3 = v23;
  }

  if (a4)
  {
    *a4 = v31;
  }

  if (v21)
  {
    v24 = v32;
    do
    {
      if (*v24)
      {
        CFRelease(*v24);
        *v24 = 0;
      }

      ++v24;
      --v21;
    }

    while (v21);
  }

  return v22;
}

uint64_t VideoMentorSetModeToDoNothing(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  if (theDict)
  {
    v6 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(theDict, @"AbortReading");
    v8 = v6 == CFDictionaryGetValue(theDict, @"SynchronouslyAbortReading");
    v9 = v6 == Value || v8;
  }

  else
  {
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  FigSimpleMutexLock();
  if (!*a1)
  {
    v10 = *(a1 + 472);
    *(a1 + 472) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 112) = 0;
    *(a1 + 116) = 1;
    *(a1 + 117) = v9;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (v9)
  {
    v11 = 0;
    do
    {
      if (!*(a1 + 116))
      {
        break;
      }

      FigThreadAbort();
      if (*(a1 + 116))
      {
        FigSemaphoreWaitRelative();
      }

      v12 = v11++ >= 4;
    }

    while (!v12 || v8);
  }

  return 0;
}

uint64_t VideoMentorSetModeToScrub(uint64_t a1, uint64_t a2, __int128 *a3, CFDictionaryRef theDict, const void *a5, const void *a6, const void *a7)
{
  cf = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"ScrubPolicy")) != 0 && (v12 = Value, !CFEqual(Value, @"FrameAccurate")))
  {
    if (CFEqual(v12, @"NearestIFrame"))
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (CFEqual(v12, @"BlendFrames") != 0);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = audioMentorGetModeChangePolicy(theDict);
  IsCursorAccuracyExact = videoMentorIsCursorAccuracyExact(theDict);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  v28 = *MEMORY[0x1E6960C70];
  v29 = *(MEMORY[0x1E6960C70] + 16);
  if (theDict)
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  if (a2 && ((v16 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v16(a2, &cf)))
  {
    v23 = FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    if (!*a1)
    {
      v17 = *(a1 + 128);
      v18 = cf;
      *(a1 + 128) = cf;
      if (v18)
      {
        CFRetain(v18);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v19 = *a3;
      *(a1 + 152) = *(a3 + 2);
      *(a1 + 136) = v19;
      *(a1 + 160) = v13;
      *(a1 + 244) = v14;
      *(a1 + 372) = IsCursorAccuracyExact;
      *(a1 + 373) = 1;
      *(a1 + 428) = v28;
      *(a1 + 444) = v29;
      *(a1 + 452) = 0;
      v20 = *(a1 + 464);
      *(a1 + 464) = a5;
      if (a5)
      {
        CFRetain(a5);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v21 = *(a1 + 472);
      *(a1 + 472) = a6;
      if (a6)
      {
        CFRetain(a6);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *(a1 + 480);
      *(a1 + 480) = a7;
      if (a7)
      {
        CFRetain(a7);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      *(a1 + 112) = 1;
      *(a1 + 116) = 1;
      FigMemoryBarrier();
    }

    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    v23 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

BOOL videoMentorIsCursorAccuracyExact(const __CFDictionary *a1)
{
  result = 0;
  if (a1)
  {
    CFDictionaryGetValue(a1, @"CursorAccuracy");
    if (FigCFEqual())
    {
      return 1;
    }
  }

  return result;
}

uint64_t videoMentorCreateCursorForPresentationTimeStamp(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a2)
  {
    v10 = *a3;
    v12 = *(a3 + 2);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v14 = v10;
      v15 = v12;
      v7 = v6(v5, &v14, a4, 0, 0);
      if (!v7)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
    }
  }

  else
  {
    v11 = *a3;
    v13 = *(a3 + 2);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v14 = v11;
      v15 = v13;
      v7 = v8(v5, &v14, 1, a4, 0, 0);
      if (!v7)
      {
        return v7;
      }
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigSignalErrorAtGM();
  return v7;
}

uint64_t FigSampleCursorGetDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t videoMentorSimulateFrame(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v10)
    {
      v11 = 4294954514;
      goto LABEL_20;
    }

    v11 = v10(a1, &v24 + 1, &v24, 0);
    if (!v11)
    {
      v12 = HIBYTE(v24);
      if (HIBYTE(v24) != 66)
      {
        if (HIBYTE(v24) == 73)
        {
          if (v24)
          {
            v13 = a2;
          }

          else
          {
            v13 = a5;
          }
        }

        else
        {
          if (HIBYTE(v24) != 80)
          {
            return FigSignalErrorAtGM();
          }

          v13 = a5;
          if (!*a2)
          {
            goto LABEL_26;
          }
        }

        *v13 = 1;
      }

LABEL_26:
      v22 = v12 == 66;
      goto LABEL_27;
    }

LABEL_20:
    FigSignalErrorAtGM();
    return v11;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v14)
  {
    v11 = 4294954514;
    goto LABEL_20;
  }

  v11 = v14(a1, &v23 + 1, &v23, 0, &v22);
  if (v11)
  {
    goto LABEL_20;
  }

  if (HIBYTE(v23))
  {
    if (*a5)
    {
      goto LABEL_33;
    }

    if (!videoMentorSyncFrameIsOpenGOP(a1))
    {
      goto LABEL_16;
    }

    if ((*(a3 + 12) & 0x1D) == 1)
    {
      v15 = MEMORY[0x1E6960C70];
      *a3 = *MEMORY[0x1E6960C70];
      *(a3 + 16) = *(v15 + 16);
LABEL_16:
      *a5 = 1;
      goto LABEL_33;
    }

    PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(a1, a3);
    if (PresentationTimeStamp)
    {
      v11 = PresentationTimeStamp;
      goto LABEL_20;
    }

    if ((*(a3 + 12) & 0x1D) != 1)
    {
      return FigSignalErrorAtGM();
    }
  }

LABEL_27:
  if (!*a5 && (*(a3 + 12) & 0x1D) == 1)
  {
    v21 = **&MEMORY[0x1E6960C70];
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v17)
    {
      v11 = v17(a1, &v21);
      if (!v11)
      {
        if ((v21.flags & 0x1D) == 1)
        {
          time1 = v21;
          v19 = *a3;
          if (CMTimeCompare(&time1, &v19) < 0)
          {
            v11 = 0;
            *a4 = 0;
            return v11;
          }

          goto LABEL_33;
        }

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      v11 = 4294954514;
    }

    goto LABEL_20;
  }

LABEL_33:
  v11 = 0;
  if (!v22)
  {
    *a4 = 1;
  }

  return v11;
}

uint64_t videoMentorThreadGenerateAndEnqueueFrame(uint64_t a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  v30 = 0;
  if (videoMentorThreadWaitForOutputQueueToDropBelowHighWater(a1, a13))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = *a10;
  v29 = *(a10 + 16);
  v26 = *a11;
  v27 = *(a11 + 16);
  v24 = *a12;
  v25 = *(a12 + 16);
  v22 = videoMentorThreadCreateSampleBuffer(a1, a2, a3, a9, &v28, &v26, &v24, a7, a13, &v30);
  if (v22)
  {
    v21 = v22;
  }

  else
  {
    if (a7)
    {
      CMSetAttachment(v30, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
    }

    v21 = videoMentorThreadSendSampleBuffer(a1, v30, a2, a3, a4, a5, a6, a8);
    if (!v21)
    {
      ++*(a1 + 524);
    }
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v21;
}

uint64_t videoMentorThreadWaitForOutputQueueToDropBelowHighWater(uint64_t a1, const void *a2)
{
  if (*(a1 + 116))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 496) | 2) == 3)
  {
    v5 = *(a1 + 24);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v6 || !v6(v5))
    {
      videoMentorThreadFinishPreroll(a1, 2, a2);
    }
  }

  v7 = *(a1 + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    result = v8(v7);
    if (!result)
    {
      return result;
    }

    if (!*a1)
    {
      v9 = FigMentorNotificationPayloadCreate(@"MentorPausingDueToHighWaterLevel", a2, 0, *(a1 + 520), 0, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v9)
      {
        CFRelease(v9);
      }
    }

    v10 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    do
    {
      FigSemaphoreWaitRelative();
      if (*(a1 + 116))
      {
        return 0xFFFFFFFFLL;
      }

      v11 = *(a1 + 24);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    }

    while (v12 && v12(v11));
    if (*v10 == 1)
    {
      kdebug_trace();
    }

    *(a1 + 524) = 0;
    if (!*a1)
    {
      v13 = FigMentorNotificationPayloadCreate(@"MentorResumingAfterHighWaterLevel", a2, 0, *(a1 + 520), 0, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  return 0;
}

uint64_t videoMentorThreadCreateSampleBuffer(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5, __int128 *a6, __int128 *a7, char a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 116))
  {
    return 0xFFFFFFFFLL;
  }

  v28 = v10;
  v29 = v11;
  v20 = a1;
  v15 = a3 == 1;
  if (!a4)
  {
    v15 = 0;
  }

  v26 = *(a7 + 2);
  v27 = v15;
  if (a4)
  {
    v16 = a3 == 0;
  }

  else
  {
    v16 = 0;
  }

  BYTE1(v27) = v16;
  v21 = *a5;
  v22 = *(a5 + 2);
  v23 = *a6;
  v24 = *(a6 + 2);
  v25 = *a7;
  BYTE2(v27) = a8;
  v17 = *(a1 + 16);
  v18 = *(a1 + 496);
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19 || v19(v17, a2, 1, 1, 0, 0, v18, 0, videoMentorRemapSBufTiming, &v20, a9, a10))
  {
    return FigSignalErrorAtGM();
  }

  if (*(a1 + 48))
  {
    FigSampleBufferSetDecryptor();
  }

  result = 0;
  ++*(a1 + 896);
  return result;
}

uint64_t sgffr_generateSingleSampleBuffer(const void *a1, uint64_t a2, int a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, opaqueCMSampleBuffer *), uint64_t a6, uint64_t a7, uint64_t a8, opaqueCMSampleBuffer **a9)
{
  v92[0] = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v90 = 0;
  v91 = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  v87 = 0;
  sampleSizeArray = 0;
  v85 = 0;
  blockBufferOut = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  cf = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v16 = *(DerivedStorage + 32);
  v73 = 0;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v17)
  {
    v18 = 4294954514;
LABEL_3:
    sgffr_generateSingleSampleBuffer_cold_5();
    goto LABEL_4;
  }

  v68 = a4;
  v18 = v17(a2, &v79);
  if (v18)
  {
    goto LABEL_3;
  }

  v66 = a8;
  v67 = v16;
  if (*(DerivedStorage + 33) || !*(DerivedStorage + 34) || CMFormatDescriptionGetMediaType(v79) != 1986618469 || (CMFormatDescriptionGetMediaSubType(v79), (DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType()) == 0))
  {
    v21 = 1;
LABEL_33:
    v22 = 1;
    goto LABEL_34;
  }

  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
  if (!Value || (v36 = Value, v37 = CFGetTypeID(Value), v37 != CFArrayGetTypeID()) || CFArrayGetCount(v36) != 2 || (ValueAtIndex = CFArrayGetValueAtIndex(v36, 0)) == 0 || (v39 = CFGetTypeID(ValueAtIndex), v39 != CFDictionaryGetTypeID()) || (v40 = CFArrayGetValueAtIndex(v36, 1)) == 0 || (v41 = CFGetTypeID(v40), v41 != CFDictionaryGetTypeID()))
  {
    v21 = 0;
    goto LABEL_33;
  }

  LODWORD(v72.duration.value) = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (FigCFDictionaryGetInt32IfPresent())
  {
    v62 = LODWORD(v72.duration.value) == 0;
  }

  else
  {
    v62 = 1;
  }

  v22 = !v62;
  v21 = 0;
LABEL_34:
  v23 = v21;
  PTSAndDTSAndDuration = sgffr_copyCursorSampleLocationAndDataSource(a1, a2, v21, &v91, &sampleSizeArray, &v76, &v90, &v87, &cf, &v77, &v78);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  v64 = v22;
  v65 = a5;
  v25 = v91;
  v26 = sampleSizeArray;
  PTSAndDTSAndDuration = sgffr_getPTSAndDTSAndDuration(DerivedStorage, a2, &sampleTimingArray.duration);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  v63 = v26;
  if (!*(DerivedStorage + 33))
  {
    PTSAndDTSAndDuration = sgffr_checkByteRangeForByteStream(DerivedStorage, v77, v25, v26);
    if (PTSAndDTSAndDuration)
    {
      goto LABEL_36;
    }
  }

  v62 = a3 == 3;
  v27 = v25;
  if (v62)
  {
    sgffr_checkDataAvailability(a1, v78, v77, v25, v26, v92);
  }

  if ((v23 & 1) == 0)
  {
    if (v76)
    {
      fig_log_get_emitter();
      PTSAndDTSAndDuration = FigSignalErrorAtGM();
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }
    }

    v30 = v66;
    if (v64)
    {
      if (v67)
      {
        if (v92[0] == 4)
        {
          v32 = CFGetAllocator(a1);
          PTSAndDTSAndDuration = SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(v32, a1, v78, &v73);
          if (PTSAndDTSAndDuration)
          {
            goto LABEL_36;
          }

          v33 = sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly;
          v34 = v73;
        }

        else
        {
          v34 = 0;
          v33 = 0;
        }

        v72 = sampleTimingArray;
        v31 = v63;
        v18 = createSampleBufferForUncompressed(a1, v63, v79, 0, v34, v33, &v72, &v83, &blockBufferOut);
        if (v34)
        {
          CMSampleBufferSetShouldReleaseMakeDataReadyRefcon();
          CFRetain(v34);
        }

        if (v18)
        {
          goto LABEL_4;
        }

        v29 = 1;
        goto LABEL_83;
      }

      v72 = sampleTimingArray;
      v31 = v63;
      PTSAndDTSAndDuration = createSampleBufferForUncompressed(a1, v63, v79, 1u, 0, 0, &v72, &v83, 0);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v83);
      if (ImageBuffer)
      {
        v58 = ImageBuffer;
        PTSAndDTSAndDuration = CVPixelBufferLockBaseAddress(ImageBuffer, 0);
        if (PTSAndDTSAndDuration)
        {
          goto LABEL_36;
        }

        BaseAddress = CVPixelBufferGetBaseAddress(v58);
        if (BaseAddress)
        {
          v60 = CMByteStreamRead(v77, v63, v25, BaseAddress);
          if (!v60)
          {
            CVPixelBufferUnlockBaseAddress(v58, 0);
            v34 = 0;
            v29 = 0;
            v30 = v66;
            v27 = v25;
            goto LABEL_83;
          }

          v18 = v60;
          sgffr_generateSingleSampleBuffer_cold_1();
        }

        else
        {
          v18 = 4294954744;
        }

        CVPixelBufferUnlockBaseAddress(v58, 0);
        goto LABEL_4;
      }
    }

    else
    {
      PTSAndDTSAndDuration = CMByteStreamReadAndCreateBlockBuffer(v77, v63, v25, &v75);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      v72 = sampleTimingArray;
      PTSAndDTSAndDuration = createSampleBufferForUncompressed(a1, v63, v79, 1u, 0, 0, &v72, &v83, 0);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      v31 = v63;
      v49 = CMSampleBufferGetImageBuffer(v83);
      if (v49)
      {
        sgffr_transferBiPlanarDataFromBlockBufferToPixelBuffer(v75, v49);
        if (PTSAndDTSAndDuration)
        {
          goto LABEL_36;
        }

LABEL_82:
        v34 = 0;
        v29 = 0;
        goto LABEL_83;
      }
    }

    v18 = 4294954744;
    goto LABEL_4;
  }

  v28 = v92[0];
  v29 = v67;
  if (!v67 && v92[0] != 4)
  {
    v30 = v66;
    if (*(DerivedStorage + 33))
    {
      v31 = v63;
      if (!v76)
      {
        goto LABEL_81;
      }

      v71 = 0;
      v72.duration.value = 0;
      PTSAndDTSAndDuration = CMByteStreamReadAndCreateBlockBuffer(v77, v87, v90, &v85);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      sgffr_refineAndVerifySampleLocation(a2, 0, v85, v91, sampleSizeArray, v90, v87, &v72, &v71);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = v63;
      v50 = sgffr_readFromByteStreamCreatingBlockBuffer(DerivedStorage, v77, v63, v25, &blockBufferOut);
      if (!v76)
      {
        v18 = v50;
        if (v50)
        {
          sgffr_generateSingleSampleBuffer_cold_4();
          goto LABEL_4;
        }

LABEL_81:
        PTSAndDTSAndDuration = CMSampleBufferCreate(*DerivedStorage, blockBufferOut, 1u, 0, 0, v79, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v83);
        if (PTSAndDTSAndDuration)
        {
          goto LABEL_36;
        }

        goto LABEL_82;
      }

      v71 = 0;
      v72.duration.value = 0;
      sgffr_refineAndVerifySampleLocation(a2, blockBufferOut, 0, v91, sampleSizeArray, v90, v87, &v72, &v71);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      PTSAndDTSAndDuration = sgffr_createBlockBufferWithBufferReference(*DerivedStorage, blockBufferOut, v72.duration.value - v91, v71, &v84);
      if (PTSAndDTSAndDuration)
      {
        goto LABEL_36;
      }

      v61 = blockBufferOut;
      blockBufferOut = v84;
      if (v84)
      {
        CFRetain(v84);
      }

      if (v61)
      {
        CFRelease(v61);
      }
    }

    v31 = v71;
    v27 = v72.duration.value;
    v91 = v72.duration.value;
    sampleSizeArray = v71;
    goto LABEL_81;
  }

  PTSAndDTSAndDuration = CMBlockBufferCreateEmpty(*DerivedStorage, 0, 0, &blockBufferOut);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  v42 = v76;
  if (v28 == 4)
  {
    v43 = CFGetAllocator(a1);
    PTSAndDTSAndDuration = SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead(v43, a1, v78, &v73);
    v31 = v63;
    if (PTSAndDTSAndDuration)
    {
      goto LABEL_36;
    }

    v34 = v73;
    v44 = *DerivedStorage;
    v45 = sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly;
    if (!v42)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v45 = 0;
    v34 = 0;
    v44 = *DerivedStorage;
    v31 = v63;
    if (!v76)
    {
LABEL_73:
      v46 = v42;
      v47 = v42 == 0;
      v48 = blockBufferOut;
      goto LABEL_99;
    }
  }

  v48 = 0;
  v46 = v42;
  v47 = v42 == 0;
LABEL_99:
  if (v46)
  {
    v30 = v66;
    p_sampleSizeArray = 0;
  }

  else
  {
    p_sampleSizeArray = &sampleSizeArray;
    v30 = v66;
  }

  PTSAndDTSAndDuration = CMSampleBufferCreate(v44, v48, 0, v45, v34, v79, 1, 1, &sampleTimingArray, v47, p_sampleSizeArray, &v83);
  if (PTSAndDTSAndDuration)
  {
    goto LABEL_36;
  }

  if (v34)
  {
    PTSAndDTSAndDuration = CMSampleBufferSetShouldReleaseMakeDataReadyRefcon();
    if (PTSAndDTSAndDuration)
    {
      goto LABEL_36;
    }

    CFRetain(v34);
  }

LABEL_83:
  if (v65)
  {
    v51 = v65(a6, a7, v83);
    if (v51)
    {
      v18 = v51;
      sgffr_generateSingleSampleBuffer_cold_3();
      goto LABEL_4;
    }
  }

  if (!v29)
  {
LABEL_94:
    sgffr_attachMediaSampleAttachmentsToSampleBuffer(DerivedStorage, a2, v83, 0);
    sgffr_setSampleBufferAttachments(DerivedStorage, v83, cf, v27);
    v18 = 0;
    *a9 = v83;
    v83 = 0;
    goto LABEL_6;
  }

  v52 = CFGetAllocator(a1);
  PTSAndDTSAndDuration = SampleGeneratorReadCompletionInfoCreate(v52, v83, v76, a2, v90, v87, v91, sampleSizeArray, &v74);
  if (PTSAndDTSAndDuration)
  {
LABEL_36:
    v18 = PTSAndDTSAndDuration;
    goto LABEL_4;
  }

  TimeNeededInNanosecondsAndReadSchedulerFlags = sgffr_getTimeNeededInNanosecondsAndReadSchedulerFlags(DerivedStorage, v83, v92[0], v68, a2, &v81);
  sgffr_rememberScheduledIOForSampleBuffer(v78, v83);
  if (v30)
  {
    v54 = FigScheduledIOBatchAddRead(v30, v27, v31, blockBufferOut, a1, v74, TimeNeededInNanosecondsAndReadSchedulerFlags, v81, &v82);
  }

  else
  {
    v54 = FigScheduledIORequestRead(v78, v27, v31, blockBufferOut, a1, v74, TimeNeededInNanosecondsAndReadSchedulerFlags, v81, &v82);
  }

  v18 = v54;
  if (!v54)
  {
    v74 = 0;
    v55 = v82;
    if (v34)
    {
      v34[4] = v82;
    }

    CMSampleBufferSetInvalidateCallback(v83, sgffr_invalidateSampleBuffer, v55);
    goto LABEL_94;
  }

  sgffr_generateSingleSampleBuffer_cold_2(v54, &v83);
LABEL_4:
  if (v83)
  {
    CFRelease(v83);
  }

LABEL_6:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  return v18;
}

uint64_t videoMentorRemapSBufTiming(uint64_t a1, uint64_t a2, void *target)
{
  v6 = *a1;
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  v7 = MEMORY[0x1E695E4D0];
  v8 = MEMORY[0x1E6960520];
  if (*(a1 + 82))
  {
    CMSetAttachment(target, *MEMORY[0x1E6960520], *MEMORY[0x1E695E4D0], 1u);
  }

  if ((*(a1 + 68) & 0x1D) == 1)
  {
    time1 = *(a1 + 56);
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, target);
      lhs = time1;
      videoMentorRemapTime(v6, a2, 0, &lhs.value, &time2);
      time1 = time2;
      lhs = time2;
      v19 = *(a1 + 56);
      CMTimeAdd(&time2, &lhs, &v19);
      time1 = time2;
      lhs = time2;
      videoMentorRemapTime(v6, a2, 1, &lhs.value, &time2);
      time1 = time2;
      CMSampleBufferSetOutputPresentationTimeStamp(target, &time2);
    }
  }

  if (!*(a1 + 81))
  {
    if (!*(a1 + 80))
    {
      goto LABEL_31;
    }

    CMSampleBufferGetOutputDuration(&v23, target);
    goto LABEL_29;
  }

  CMSampleBufferGetOutputDuration(&v23, target);
  v9 = *v7;
  if (v9 == CMGetAttachment(target, *v8, 0))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v24, target);
    time1 = v24;
    time2 = v23;
    CMTimeSubtract(&v25, &time1, &time2);
  }

  else
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v25, target);
    time1 = v25;
    time2 = v23;
    CMTimeAdd(&v24, &time1, &time2);
  }

  if ((*(a1 + 20) & 0x1D) == 1)
  {
    time1 = v25;
    time2 = *(a1 + 8);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v11 = 0;
      goto LABEL_18;
    }
  }

  if ((*(a1 + 44) & 0x1D) != 1)
  {
    v11 = 1;
LABEL_18:
    v10 = 1;
    goto LABEL_19;
  }

  time1 = *(a1 + 32);
  time2 = v25;
  v10 = CMTimeCompare(&time1, &time2) > 0;
  v11 = 1;
LABEL_19:
  if ((*(a1 + 44) & 0x1D) == 1)
  {
    time1 = *(a1 + 32);
    time2 = v24;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v12 = 0;
      if (v10)
      {
        goto LABEL_24;
      }

LABEL_29:
      v16 = *MEMORY[0x1E6960560];
      time1 = v23;
      v15 = target;
      goto LABEL_30;
    }
  }

  if ((*(a1 + 20) & 0x1D) == 1)
  {
    time1 = v24;
    time2 = *(a1 + 8);
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      goto LABEL_29;
    }
  }

  v12 = 1;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((v11 & 1) == 0)
  {
    v13 = *MEMORY[0x1E6960560];
    time2 = *(a1 + 8);
    lhs = v25;
    CMTimeSubtract(&time1, &time2, &lhs);
    audioMentorSetAttachmentAsFigTimeDictionary(target, v13, &time1);
  }

  if ((v12 & 1) == 0)
  {
    v14 = *MEMORY[0x1E6960558];
    time2 = v24;
    lhs = *(a1 + 32);
    CMTimeSubtract(&time1, &time2, &lhs);
    v15 = target;
    v16 = v14;
LABEL_30:
    audioMentorSetAttachmentAsFigTimeDictionary(v15, v16, &time1);
  }

LABEL_31:
  FigSimpleMutexLock();
  v17 = *(v6 + 56);
  if (v17)
  {
    v17(*(v6 + 72), a2, target);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigScheduledIORequestRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v17)
  {
    return v17(a1, a2, a3, a4, sgffr_markSampleBufferReady, a5, a6, a7, a8, a9);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCRABSScheduledIORequestRead(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23[0] = a2;
  v23[1] = a3;
  v17 = *DerivedStorage;
  v18 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v18)
  {
    return 4294954514;
  }

  result = v18(v17, 4 * ((a9 & 0xC) != 0), 1, v23);
  if (!result)
  {
    v20 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040CC388DE2uLL);
    if (v20)
    {
      v21 = v20;
      v22 = FigAtomicIncrement32();
      *(v21 + 8) = v22;
      *v21 = DerivedStorage;
      *(v21 + 24) = a2;
      *(v21 + 32) = a3;
      *(v21 + 40) = a5;
      *(v21 + 48) = a6;
      *(v21 + 56) = a7;
      *(v21 + 64) = a9;
      *(v21 + 72) = a4;
      if (a4)
      {
        CFRetain(a4);
        v22 = *(v21 + 8);
      }

      *a10 = v22;
      if ((a9 & 0xC) != 0)
      {
        result = FigSimpleMutexLock();
        if (!result)
        {
          *(v21 + 16) = 0;
          **(DerivedStorage + 32) = v21;
          *(DerivedStorage + 32) = v21 + 16;
          *(DerivedStorage + 12) = 1;
          FigSimpleMutexUnlock();
          return 0;
        }
      }

      else
      {
        siocrabsFinishUnlocked(DerivedStorage, 0, 0);
        return siocrabsFinish(DerivedStorage, v21, 0, 0);
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

uint64_t siocrabsFinish(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  lengthAtOffsetOut = 0;
  dataLength = 0;
  targetBBuf = 0;
  dataPointerOut = 0;
  if (a3)
  {
    v34 = *(a2 + 24);
    v8 = *a1;
    v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (v9)
    {
      DataPointer = v9(v8, 1, &v34);
LABEL_4:
      appended = DataPointer;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v12 = FigCRABSGetByteStream(*a1);
  v13 = *(a2 + 72);
  if (!v13 || CMBlockBufferIsEmpty(v13))
  {
    while (1)
    {
      v15 = *(a2 + 24);
      v14 = *(a2 + 32);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v16)
      {
        break;
      }

      v17 = v16(v12, v14, v15, &targetBBuf, &dataLength);
      if (v17 != -12792)
      {
        appended = v17;
        if (!v17)
        {
          v18 = *(a2 + 72);
          if (v18)
          {
            appended = CMBlockBufferAppendBufferReference(v18, targetBBuf, 0, dataLength, 0);
            if (targetBBuf)
            {
              CFRelease(targetBBuf);
            }
          }

          else
          {
            appended = 0;
            *(a2 + 72) = targetBBuf;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    appended = -12782;
    goto LABEL_25;
  }

  DataPointer = CMBlockBufferAssureBlockMemory(*(a2 + 72));
  if (DataPointer)
  {
    goto LABEL_4;
  }

  if (*(a2 + 32))
  {
    v19 = 0;
LABEL_16:
    DataPointer = CMBlockBufferGetDataPointer(*(a2 + 72), v19, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_4;
    }

    if (lengthAtOffsetOut > *(a2 + 32) - v19)
    {
      lengthAtOffsetOut = *(a2 + 32) - v19;
    }

    while (1)
    {
      v21 = dataPointerOut;
      v20 = lengthAtOffsetOut;
      v22 = *(a2 + 24);
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v23)
      {
        goto LABEL_24;
      }

      v24 = v23(v12, v20, v19 + v22, v21, 0);
      if (v24 != -12792)
      {
        appended = v24;
        if (!v24)
        {
          v19 += lengthAtOffsetOut;
          dataLength = v19;
          if (v19 < *(a2 + 32))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_25;
      }
    }
  }

  appended = 0;
LABEL_25:
  if (appended)
  {
    v25 = 1;
  }

  else
  {
    v25 = a3 == 0;
  }

  if (v25)
  {
    v26 = appended;
  }

  else
  {
    v26 = 4294954425;
  }

  v27 = *(a2 + 48);
  v28 = *(a2 + 56);
  v29 = *(a2 + 72);
  if (v29)
  {
    v30 = CFRetain(v29);
    v31 = *(a2 + 72);
    targetBBuf = v30;
    v32 = *(a2 + 40);
    if (v31)
    {
      CFRelease(v31);
      v30 = targetBBuf;
    }
  }

  else
  {
    v30 = 0;
    targetBBuf = 0;
    v32 = *(a2 + 40);
  }

  free(a2);
  if (a4 || !v26)
  {
    v32(v27, v28, v30, dataLength, v26);
    v30 = targetBBuf;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (!FigSimpleMutexLock())
  {
    if (!a1[3])
    {
      *(a1 + 12) = 0;
    }

    FigSimpleMutexUnlock();
  }

  return v26;
}

void sgffr_markSampleBufferReady(int a1, uint64_t a2, OpaqueCMBlockBuffer *a3, int a4, OSStatus status)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  dataBuffer = 0;
  if (v9)
  {
    CVPixelBufferUnlockBaseAddress(v9, 0);
  }

  if (status == -19283)
  {
    if (!CMSampleBufferIsValid(v8))
    {
      goto LABEL_18;
    }

    v10 = v8;
    v11 = -16751;
    goto LABEL_17;
  }

  if (status)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  if (!CMSampleBufferIsValid(v8))
  {
    goto LABEL_18;
  }

  if (!*(a2 + 40))
  {
LABEL_8:
    CMSampleBufferSetDataReady(v8);
    goto LABEL_18;
  }

  v13 = 0;
  v14 = 0;
  if (CMSampleBufferGetNumSamples(v8) != 1)
  {
    if (sgffr_markSampleBufferReady_cold_1())
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = v8;
    v11 = status;
LABEL_17:
    CMSampleBufferSetDataFailed(v10, v11);
    goto LABEL_18;
  }

  sgffr_refineAndVerifySampleLocation(*(a2 + 32), a3, 0, *(a2 + 64), *(a2 + 72), *(a2 + 48), *(a2 + 56), &v14, &v13);
  if (v12 || sgffr_createBlockBufferWithBufferReference(*MEMORY[0x1E695E480], a3, v14 - *(a2 + 64), v13, &dataBuffer) || CMSampleBufferSetDataBuffer(v8, dataBuffer) || CMSampleBufferSetDataReadyWithNewSize())
  {
    goto LABEL_16;
  }

LABEL_18:
  sgffr_forgetScheduledIOForSampleBuffer(v8);
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  CFRelease(a2);
}

uint64_t videoMentorThreadSendSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, const void *a3, int a4, int a5, int a6, int a7, int a8)
{
  values = 0;
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray && (v15 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v15, 0)) != 0 && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]))
  {
    if (a5 == 1)
    {
      a5 = 0;
    }

    a4 = 4;
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      v17 = MEMORY[0x1E6960410];
      goto LABEL_11;
    }

    if (a4 == 3)
    {
      v17 = MEMORY[0x1E6960408];
      goto LABEL_11;
    }

    if (a4 == 5)
    {
      v17 = MEMORY[0x1E6962DC0];
LABEL_11:
      videoMentorSetAttachmentOnSample(sbuf, *v17, *MEMORY[0x1E695E4D0]);
    }
  }

  v18 = MEMORY[0x1E695E480];
  if ((a5 - 1) <= 1)
  {
    v46 = **&MEMORY[0x1E6960C70];
    CMSampleBufferGetPresentationTimeStamp(&v46, sbuf);
    v19 = *v18;
    time = v46;
    v20 = CMTimeCopyAsDictionary(&time, v19);
    if (v20)
    {
      v21 = v20;
      if (a5 == 1)
      {
        if (a3)
        {
          v22 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040038FC326uLL);
          if (!v22)
          {
            goto LABEL_28;
          }

          v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v23 && !v23(a3, v22 + 1) && !videoMentorGetCursorPTSRange(a3, v22 + 1))
          {
            videoMentorSetAttachmentOnSample(sbuf, *MEMORY[0x1E6962DD0], v21);
LABEL_28:
            CFRelease(v21);
            if (!a6)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }

          videoMentorSavedFrameDestroy(v22);
        }
      }

      else
      {
        videoMentorSetAttachmentOnSample(sbuf, *MEMORY[0x1E6962DC8], v20);
      }

      v22 = 0;
      goto LABEL_28;
    }
  }

  v22 = 0;
  if (!a6)
  {
LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

LABEL_22:
  ++*(a1 + 504);
  v24 = *v18;
  values = CFNumberCreate(*v18, kCFNumberIntType, (a1 + 504));
  v25 = CFDictionaryCreate(v24, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMSetAttachment(sbuf, *MEMORY[0x1E6960518], values, 1u);
  v26 = *(a1 + 24);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v27)
  {
    v27(v26, *MEMORY[0x1E6960598], v25, 0);
  }

  v28 = *(a1 + 24);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v29)
  {
    v29(v28, *MEMORY[0x1E69605A0], 0, 0);
  }

LABEL_30:
  if (*(a1 + 492))
  {
    videoMentorPostCollectorCoherenceConduitNotification(a1);
    *(a1 + 492) = 0;
    if (!a8)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (a8)
  {
LABEL_32:
    CMSetAttachment(sbuf, *MEMORY[0x1E6960510], *MEMORY[0x1E695E4D0], 1u);
  }

LABEL_33:
  v30 = *(a1 + 24);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v31 || v31(v30, sbuf))
  {
    v33 = FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 520) = 1;
    ++*(a1 + 900);
    if (v22)
    {
      *v22 = *(a1 + 552);
      *(a1 + 552) = v22;
      ++*(a1 + 904);
    }

    if (a5 == 2)
    {
      ++*(a1 + 908);
    }

    if (a4 == 3 && (memset(&v46, 0, sizeof(v46)), CMSampleBufferGetOutputPresentationTimeStamp(&v46, sbuf), memset(&time, 0, sizeof(time)), CMSampleBufferGetOutputDuration(&rhs, sbuf), lhs = v46, CMTimeAdd(&time, &lhs, &rhs), rhs = v46, lhs = time, v32 = videoMentorEnqueueTimestampIntervalMarker(a1), v32))
    {
      v33 = v32;
    }

    else
    {
      v34 = *(a1 + 536);
      if (v34)
      {
        CFRelease(v34);
        *(a1 + 536) = 0;
      }

      if (a3)
      {
        v35 = a7 == 0;
      }

      else
      {
        v35 = 1;
      }

      v36 = !v35;
      if (!v35 && (a4 == 3 || !a4))
      {
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v37)
        {
          v37(a3, a1 + 536);
        }
      }

      if ((a5 - 4) <= 0xFFFFFFFD)
      {
        v38 = *(a1 + 528);
        if (v38)
        {
          CFRelease(v38);
          *(a1 + 528) = 0;
        }

        if (v36)
        {
          v39 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v39)
          {
            v39(a3, a1 + 528);
          }
        }
      }

      v33 = 0;
    }

    v22 = 0;
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  videoMentorSavedFrameDestroy(v22);
  return v33;
}

void videoMentorSetAttachmentOnSample(opaqueCMSampleBuffer *a1, const void *a2, const void *a3)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {

      CFDictionarySetValue(ValueAtIndex, a2, a3);
    }
  }
}

_BYTE *sbp_bq_InhibitOutputUntil()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vmc2InhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!*(a2 + 16))
  {
    FigSimpleMutexLock();
    v8 = *(a2 + 784);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 784) = 0;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
      if (Value)
      {
        ++*(a2 + 792);
        *(a2 + 784) = Value;
        CFRetain(Value);
      }
    }

    FigSimpleMutexUnlock();
  }
}

_BYTE *sbp_bq_ResetOutput()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vmc2ResetOutput(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    vmc2InvokeOutputCallback_FlushOutput(a2);
    ++*(a2 + 524);
    FigSimpleMutexLock();
    v4 = MEMORY[0x1E6960C70];
    *(a2 + 368) = *MEMORY[0x1E6960C70];
    *(a2 + 384) = *(v4 + 16);
    FigSimpleMutexUnlock();

    vmc2ResetTroubleMonitorTimers(a2);
  }
}

uint64_t piqca_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 24);
  *(DerivedStorage + 135) = 0;
  if (*(DerivedStorage + 52))
  {
    CAImageQueueFlush();
  }

  *(DerivedStorage + 50) = 1;
  piqca_postOccupancyChanged(a1);
  return 0;
}

_BYTE *sbp_bq_dataBecameReady()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void vmc2InputDataBecameReady(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    *(a2 + 592) = 1;
    vmc2TriggerSchedulingIfOutputIsLow(a2);
  }
}

uint64_t vmc2TriggerSchedulingIfOutputIsLow(uint64_t a1)
{
  result = vmc2GetWaterLevelState(a1);
  if (!result || *(a1 + 440))
  {
    v3 = *(a1 + 264);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 16);
    result = VTable + 16;
    v6 = *(v5 + 16);
    if (v6)
    {

      return v6(v3);
    }
  }

  return result;
}

uint64_t editMentorStartNewChildOrder(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 304));
  FigSimpleMutexLock();
  if (*(a1 + 568) == a2)
  {
    editMentorBumpChildOrder(a1);
  }

  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

void editMentorPostOrderCompletionNotification(uint64_t a1, const void *a2, int a3)
{
  v5 = FigMentorNotificationPayloadCreate(@"MentorStoppingDueToCompletion", a2, 0, *(a1 + 288), 0, a3);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 680))
  {
    editMentorPostSyntheticPrerollCompleteNotification(a1, a2);
  }

  v7 = *(a1 + 672);
  if (v7)
  {
    editMentorSetChildMentorModeToDoNothing(a1, 0, v7);
    v8 = *(a1 + 672);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 672) = 0;
    }
  }

  if (dword_1EAF16E38 >= 2)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t vmc2RecalculateUpcomingImageTimes(uint64_t a1)
{
  v17 = **&MEMORY[0x1E6960C88];
  v16 = **&MEMORY[0x1E6960C80];
  FigSimpleMutexLock();
  v2 = *(a1 + 88);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3 && v3(v2))
  {
    v4 = *(a1 + 88);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    v6 = v5 && v5(v4) || *(a1 + 730) != 0;
  }

  else
  {
    v6 = 0;
  }

  LOBYTE(v15.value) = 0;
  memset(&time1, 0, sizeof(time1));
  memset(&time2, 0, sizeof(time2));
  v7 = *(a1 + 88);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8 && (v8(v7, &v15, &time1, &time2), LOBYTE(v15.value)) && (time1.flags & 1) != 0)
  {
    v9 = 0;
    v17 = time1;
    v16 = time2;
  }

  else
  {
    v9 = 1;
  }

  if ((*(a1 + 332) & 0x1D) == 1)
  {
    time1 = v17;
    time2 = *(a1 + 320);
    CMTimeMinimum(&v17, &time1, &time2);
    time1 = v16;
    time2 = *(a1 + 320);
    CMTimeMaximum(&v16, &time1, &time2);
    v9 = 0;
    v6 = 0;
  }

  if ((*(a1 + 356) & 0x1D) == 1)
  {
    time2 = v17;
    v15 = *(a1 + 344);
    CMTimeMinimum(&time1, &time2, &v15);
    v17 = time1;
    time2 = v16;
    v15 = *(a1 + 344);
    CMTimeMaximum(&time1, &time2, &v15);
    v16 = time1;
    if ((*(a1 + 404) & 0x1D) != 1)
    {
      v9 = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((*(a1 + 404) & 0x1D) == 1)
  {
LABEL_17:
    time2 = v17;
    v15 = *(a1 + 392);
    CMTimeMinimum(&time1, &time2, &v15);
    v17 = time1;
    time2 = v16;
    v15 = *(a1 + 392);
    CMTimeMaximum(&time1, &time2, &v15);
    v9 = 0;
    v16 = time1;
    goto LABEL_18;
  }

  if (!v6)
  {
LABEL_18:
    if ((*(a1 + 428) & 0x1D) == 1)
    {
      time2 = v17;
      v15 = *(a1 + 416);
      CMTimeMinimum(&time1, &time2, &v15);
      v17 = time1;
      time2 = v16;
      v15 = *(a1 + 416);
      CMTimeMaximum(&time1, &time2, &v15);
      v9 = 0;
      v10 = 0;
      v16 = time1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_21;
  }

  if (*(a1 + 312))
  {
    goto LABEL_25;
  }

  v10 = 1;
LABEL_21:
  v15 = v17;
  v14 = v16;
  FigReadWriteLockLockForRead();
  if (*(a1 + 249))
  {
    v11 = *(a1 + 160);
    if (v11)
    {
      v12 = *(a1 + 152);
      time1 = v15;
      time2 = v14;
      v11(v12, v9, v10, &time1, &time2);
    }
  }

  else
  {
    vmc2RecalculateUpcomingImageTimes_cold_1();
  }

  FigReadWriteLockUnlockForRead();
  ++*(a1 + 524);
LABEL_25:
  FigSimpleMutexUnlock();
  return vmc2TriggerSchedulingIfOutputIsLow(a1);
}

uint64_t sbp_bq_isEmpty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 1;
  }

  else
  {
    v2 = *(DerivedStorage + 8);

    return CMBufferQueueIsEmpty(v2);
  }
}

uint64_t piqca_setUpcomingImageInfo(uint64_t a1, unsigned int a2, __int128 *a3, __int128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 < 4 && (a2 != 2 || (*(a3 + 3) & 0x1D) == 1 && (*(a4 + 3) & 0x1D) == 1))
  {
    v9 = *a3;
    *(DerivedStorage + 180) = *(a3 + 2);
    *(DerivedStorage + 164) = v9;
    v10 = *a4;
    *(DerivedStorage + 204) = *(a4 + 2);
    *(DerivedStorage + 188) = v10;
    *(DerivedStorage + 160) = a2;
    piqca_updateReducedPollingTimeRange(a1);
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void figPlaybackBoss_MentorStopping(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = FigCFEqual();
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"Mentor_Order");
    v10 = CFDictionaryGetValue(a5, @"Mentor_OSStatus");
    v11 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    a5 = CFDictionaryGetValue(a5, @"Mentor_NotificationThatWasRequestedButDropped");
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    Value = 0;
    if (!v7)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  if (*(v7 + 16))
  {
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (*(a2 + 224) != Value)
  {
    goto LABEL_9;
  }

  if (a5)
  {
    v13 = CFGetTypeID(a5);
    if (v13 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValue(a5, @"BossScrubOrder"))
      {
        if (FigCFEqual())
        {
          v14 = *(v7 + 784);
          if (v14)
          {
            *(v7 + 788) = 0;
            *(v7 + 784) = 0;
            FigSimpleMutexUnlock();
            v15 = -1;
            LODWORD(valuePtr[0].start.value) = -1;
            if (v11)
            {
              CFNumberGetValue(v11, kCFNumberSInt32Type, valuePtr);
              v15 = valuePtr[0].start.value;
            }

            figPlaybackBossPostSeekDidComplete(v7, v14, v15);
            goto LABEL_10;
          }
        }

        goto LABEL_9;
      }
    }
  }

  if (!*(a2 + 236))
  {
LABEL_9:
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  if (v8)
  {
    v16 = dword_1EAF16E78 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    LODWORD(end.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = *(v7 + 432);
  if (v18 == 1886151033)
  {
    v37 = 0;
  }

  else
  {
    if (v18 == 1920298606)
    {
      v19 = *(v7 + 436) != 0;
      v20 = *(v7 + 436) == 0;
      v37 = 1;
      goto LABEL_38;
    }

    v37 = 1;
  }

  v20 = 1;
  v19 = 1;
LABEL_38:
  *(a2 + 236) = 0;
  FigSimpleMutexLock();
  if (*(v7 + 848))
  {
    LODWORD(end.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v7 + 80) < 1)
  {
LABEL_44:
    FigSimpleMutexUnlock();
    v23 = 0;
    v24 = *(v7 + 424);
    *(v7 + 424) = 0;
    if (!v8)
    {
      goto LABEL_53;
    }

LABEL_47:
    if (v11)
    {
      *(v7 + 556) = 1;
      v25 = *(v7 + 560);
      *(v7 + 560) = v11;
    }

    else
    {
      LODWORD(valuePtr[0].start.value) = -12373;
      v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
      *(v7 + 556) = 1;
      v25 = *(v7 + 560);
      *(v7 + 560) = v11;
      if (!v11)
      {
        goto LABEL_51;
      }
    }

    CFRetain(v11);
LABEL_51:
    if (v25)
    {
      CFRelease(v25);
    }

    goto LABEL_53;
  }

  v22 = 0;
  while (!*(CFArrayGetValueAtIndex(*(v7 + 72), v22) + 236))
  {
    if (*(v7 + 80) <= ++v22)
    {
      goto LABEL_44;
    }
  }

  FigSimpleMutexUnlock();
  v24 = 0;
  v23 = 1;
  if (v8)
  {
    goto LABEL_47;
  }

LABEL_53:
  FigSimpleMutexUnlock();
  if (!v20)
  {
    *type = 0;
    if (!*(a2 + 104))
    {
      figPlaybackBoss_MentorStopping_cold_1();
      if (v19)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    start = *(v7 + 248);
    end = *(v7 + 272);
    CMTimeRangeFromTimeToTime(valuePtr, &start, &end);
    v26 = *MEMORY[0x1E695E480];
    v27 = CMTimeRangeCopyAsDictionary(valuePtr, *MEMORY[0x1E695E480]);
    v28 = CMSampleBufferCreate(v26, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, type);
    v29 = *type;
    if (!v28)
    {
      CMSetAttachment(*type, *MEMORY[0x1E6962E10], v27, 1u);
      CMBufferQueueEnqueue(*(a2 + 104), *type);
      v29 = *type;
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  if (v19)
  {
    goto LABEL_64;
  }

LABEL_62:
  v30 = *(a2 + 104);
  if (v30)
  {
    CMBufferQueueMarkEndOfData(v30);
  }

  else
  {
    figPlaybackBoss_MentorStopping_cold_2();
  }

LABEL_64:
  if (v37)
  {
    if (v23)
    {
LABEL_66:
      v12 = 0;
      goto LABEL_90;
    }
  }

  else
  {
    figPlaybackBoss_MentorStopping_cold_3(a2);
    if (v23)
    {
      goto LABEL_66;
    }
  }

  if (dword_1EAF16E78)
  {
    LODWORD(end.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v32 = end.value;
    if (os_log_type_enabled(v31, type[0]))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      LODWORD(start.value) = 136315650;
      *(&start.value + 4) = "figPlaybackBoss_MentorStopping";
      LOWORD(start.flags) = 2048;
      *(&start.flags + 2) = v7;
      HIWORD(start.epoch) = 2082;
      v41 = v7 + 850;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v7 + 592))
  {
    *(v7 + 592) = 0;
    if (*(v7 + 440) != 0.0)
    {
      bossScheduleReachedEndCallbackUsingRenderPipelineQueueEndPTS(v7);
    }
  }

  if (*(v7 + 432) == 1920298606)
  {
    *(v7 + 432) = 1768189029;
  }

  if (v24)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ControlToken", v24);
LABEL_85:
      v35 = *(v7 + 560);
      if (v35)
      {
        CFDictionarySetValue(v12, @"OSStatus", v35);
        v36 = *(v7 + 560);
        if (v36)
        {
          CFRelease(v36);
          *(v7 + 560) = 0;
        }
      }
    }
  }

  else if (*(v7 + 560))
  {
    v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v12)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v12 = 0;
  }

  figPlaybackBoss_sendBecameIdleNotificationIfNowIdle(v7, v12);
LABEL_90:
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_11:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t FigCRABS_GetRangeInCache(const void *a1, unint64_t a2, unint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    FigCRABS_GetRangeInCache_cold_3(&v22);
    return v22;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    FigCRABS_GetRangeInCache_cold_2(&v21);
    v15 = 0;
    result = v21;
  }

  else
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 56) <= a2)
    {
      FigCRABS_GetRangeInCache_cold_1(&v20);
      v15 = 0;
      result = v20;
    }

    else
    {
      result = crabsEnsureInitialized(a1);
      if (!result)
      {
        result = FigRetainProxyLockMutex();
        if (!result)
        {
          v9 = *(v7 + 96);
          if (v9 == 0x4000)
          {
            v10 = a2 >> 14;
          }

          else if (v9 == 0x10000)
          {
            v10 = a2 >> 16;
          }

          else
          {
            v10 = a2 / v9;
          }

          if (v10 < *(v7 + 88))
          {
            v11 = *(*(v7 + 80) + 8 * v10);
            if (v11)
            {
              v19 = 0;
              if ((*(v7 + 504) & 3) == 0)
              {
                crabsEnsureBlockNotPurged(v7, v11, &v19);
              }

              if (v10 < *(v7 + 224))
              {
                *(v7 + 128) = 1;
              }

              v12 = v11[1];
              v13 = *(v7 + 96);
              v14 = a2 - v13 * *v11;
              v15 = v12 - v14;
              if (v12 <= v14)
              {
                v15 = 0;
              }

              else if (v13 == v12)
              {
                v16 = v10 + 1;
                do
                {
                  if (v16 >= *(v7 + 88))
                  {
                    break;
                  }

                  v17 = *(*(v7 + 80) + 8 * v16);
                  if (!v17)
                  {
                    break;
                  }

                  if ((*(v7 + 504) & 3) == 0)
                  {
                    crabsEnsureBlockNotPurged(v7, v17, &v19);
                    v12 = *(v7 + 96);
                  }

                  v18 = v17[1];
                  v15 += v18;
                  ++v16;
                }

                while (v12 == v18);
              }

              crabsUnlockWithActions(v7);
              result = 0;
              goto LABEL_30;
            }
          }

          crabsUnlockWithActions(v7);
          result = 0;
        }
      }

      v15 = 0;
    }
  }

LABEL_30:
  *a3 = v15;
  return result;
}

void crabsEnsureBlockNotPurged(void *a1, int *a2, _BYTE *a3)
{
  if (a1[28] > *a2 || *a3)
  {

    crabsCleanupBlockIfPurged(a1, a2);
  }

  else
  {
    v5 = *(a2 + 4);
    *(a2 + 4) = v5 | 0x400;
    crabsPurgeCompletionSweep(a1);
    *a3 = 1;
    *(a2 + 4) = a2[2] & 0xFBFF | v5 & 0x400;
  }
}

uint64_t stepDownEntry(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = *(a1 + 112);
    v3 = *(a1 + 8);
    v4 = *(a1 + 88);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v3 + 416), 8 * v4, 8uLL, &destination);
    v5 = bswap32(destination);
    *(a1 + 112) = v5;
    v6 = *(a1 + 88) + 1;
    v7 = *(a1 + 8);
    v8 = *(v7 + 408);
    *(a1 + 120) = v6 == v8;
    v9 = *(v7 + 244);
    if (v9)
    {
      v5 /= v9;
      *(a1 + 112) = v5;
    }

    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 408);
    v6 = *(a1 + 88) + 1;
  }

  if (v6 == v8)
  {
    return 4294954456;
  }

  v11 = *(a1 + 112);
  v12 = *(a1 + 116);
  *(a1 + 96) += *(a1 + 104) * v11;
  *(a1 + 116) = v12 + v11;
  *(a1 + 88) = v6;
  destination = 0;
  CMBlockBufferCopyDataBytes(*(v7 + 416), 8 * v6, 8uLL, &destination);
  v13 = bswap32(destination);
  *(a1 + 112) = v13;
  v14 = *(a1 + 8);
  v15 = *(*a1 + 24);
  if (v15)
  {
    LOBYTE(v15) = *(a1 + 88) + 1 == *(v14 + 408);
  }

  *(a1 + 120) = v15;
  v16 = *(v14 + 244);
  if (v16)
  {
    *(a1 + 112) = v13 / v16;
  }

  else
  {
    v17 = *(a1 + 88);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v14 + 416), 8 * v17, 8uLL, &destination);
    v16 = bswap32(HIDWORD(destination));
  }

  result = 0;
  *(a1 + 104) = v16;
  *(a1 + 80) = *(a1 + 116);
  return result;
}

uint64_t FigByteRateHistoryReportAverage(uint64_t result, double *a2, double *a3)
{
  if (a2)
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = 0.0;
    if (v3 > 499999999 || v4 >= 1000000)
    {
      v5 = v4 * 1000000000.0 / v3;
    }

    *a2 = v5;
  }

  if (a3)
  {
    v7 = *(result + 56);
    if (v7)
    {
      v8 = sqrt(*(result + 48) / v7);
    }

    else
    {
      v8 = 0.0;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t itemfig_copyPlayableTime(uint64_t a1, CFArrayRef *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  *keys = 0u;
  v27 = 0u;
  *values = 0u;
  v25 = 0u;
  v22 = **&MEMORY[0x1E6960CC0];
  v4 = *(MEMORY[0x1E6960CA8] + 16);
  *&v21.start.value = *MEMORY[0x1E6960CA8];
  *&v21.start.epoch = v4;
  *&v21.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  itemfig_getNonNegativeCurrentTime(a1, &v22);
  v17.start = v22;
  itemfig_getPlayableRangeAtTime(a1, &v17.start, &v21);
  *&v17.start.value = *&v21.start.value;
  v17.start.epoch = v21.start.epoch;
  valuePtr = CMTimeGetSeconds(&v17.start);
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    keys[0] = @"start";
    values[0] = v6;
    v17 = v21;
    CMTimeRangeGetEnd(&time, &v17);
    Seconds = CMTimeGetSeconds(&time);
    v8 = CFNumberCreate(v5, kCFNumberDoubleType, &Seconds);
    if (v8)
    {
      v9 = v8;
      keys[1] = @"end";
      values[1] = v8;
      *&v17.start.value = *&v21.start.value;
      v17.start.epoch = v21.start.epoch;
      v10 = CMTimeCopyAsDictionary(&v17.start, v5);
      if (v10)
      {
        v11 = v10;
        *&v27 = @"startTime";
        *&v25 = v10;
        v17 = v21;
        CMTimeRangeGetEnd(&time, &v17);
        v12 = CMTimeCopyAsDictionary(&time, v5);
        if (v12)
        {
          v13 = v12;
          *(&v27 + 1) = @"endTime";
          *(&v25 + 1) = v12;
          v23 = CFDictionaryCreate(v5, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v23)
          {
            v14 = CFArrayCreate(v5, &v23, 1, MEMORY[0x1E695E9C0]);
            if (v14)
            {
              value_low = 0;
              *a2 = v14;
            }

            else
            {
              value_low = FigSignalErrorAtGM();
            }

            if (v23)
            {
              CFRelease(v23);
            }
          }

          else
          {
            itemfig_copyPlayableTime_cold_1(&v17);
            value_low = LODWORD(v17.start.value);
          }

          CFRelease(v13);
        }

        else
        {
          itemfig_copyPlayableTime_cold_2(&v17);
          value_low = LODWORD(v17.start.value);
        }

        CFRelease(v11);
      }

      else
      {
        itemfig_copyPlayableTime_cold_3(&v17);
        value_low = LODWORD(v17.start.value);
      }

      CFRelease(v9);
    }

    else
    {
      itemfig_copyPlayableTime_cold_4(&v17);
      value_low = LODWORD(v17.start.value);
    }

    CFRelease(v7);
  }

  else
  {
    itemfig_copyPlayableTime_cold_5(&v17);
    return LODWORD(v17.start.value);
  }

  return value_low;
}

uint64_t FigPlayabilityMonitorGetPlayableRange(uint64_t a1, uint64_t a2, CMTime *a3)
{
  FigSimpleMutexLock();
  CMTimebaseGetTime(&time1, *(a1 + 24));
  v10 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v6;
  CMTimeMaximum(&v12, &time1, &time2);
  if (*(a1 + 184) == *(a1 + 96) && !*(a1 + 313) && (time1 = v12, time2 = *(a1 + 216), (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (time1 = v12, time2 = *(a1 + 240), CMTimeCompare(&time1, &time2) < 1) || (updated = fpm_updateCacheAndNotify(a1), !updated))
  {
    v8 = *(a1 + 216);
    *(a2 + 16) = *(a1 + 232);
    *a2 = v8;
    time1 = *(a1 + 216);
    time2 = *(a1 + 240);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time2 = *(a1 + 240);
      rhs = *(a1 + 216);
      CMTimeSubtract(&time1, &time2, &rhs);
      updated = 0;
      *a3 = time1;
    }

    else
    {
      updated = 0;
      *&a3->value = v10;
      a3->epoch = v6;
    }
  }

  FigSimpleMutexUnlock();
  return updated;
}

void vmc2OutputFrame(uint64_t a1, _DWORD *a2, int a3, unsigned int a4, uint64_t a5, CMTime *a6, uint64_t a7)
{
  v9 = *a6;
  v7 = *a7;
  v8 = *(a7 + 16);
  vmc2OutputFrameInternal(a1, a2, a3, a4, a5, 0, &v9, &v7, 0);
}

uint64_t piqca_enqueueImage(uint64_t a1, __CVBuffer *a2, const void *a3, __int128 *a4, char a5)
{
  v6 = *a4;
  v7 = *(a4 + 2);
  return piqca_enqueueImageWithRotation(a1, a2, a3, &v6, 0, a5);
}

uint64_t piqca_postOccupancyChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterPostNotification();
  v4 = *(DerivedStorage + 3224);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      v5(&v9, a1);
    }

    else
    {
      v9 = *MEMORY[0x1E6960C70];
      v10 = *(MEMORY[0x1E6960C70] + 16);
    }

    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v11 = v9;
      v12 = v10;
      return v8(v4, &v11);
    }
  }

  return result;
}

uint64_t vmc2OutputOccupancyChanged(uint64_t result)
{
  if (!*(result + 16))
  {
    v2 = result;
    ++*(result + 524);
    v3 = *(result + 592);
    if (vmc2GetWaterLevelState(result))
    {
      v4 = *(v2 + 440) != 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = vmc2GetWaterLevelState(v2) == 2 && *(v2 + 440) == 0;
    vmc2UpdateTroubleMonitor(v2, v3, v4, v5, 0);

    return vmc2TriggerSchedulingIfOutputIsLow(v2);
  }

  return result;
}

uint64_t vmc2FrameDecodeCompleted(uint64_t a1, uint64_t a2)
{
  vmc2UpdateSessionMinAndMaxOutputPTS(a2);

  return vmc2CheckForEnd(a2);
}

uint64_t piqca_setDirection(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (a2 >= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2 > 0.0)
  {
    v6 = 1;
  }

  *(DerivedStorage + 212) = v6;
  if (v6 && *(DerivedStorage + 216) != v6)
  {
    *(DerivedStorage + 216) = v6;
    CAImageQueueSetFlags();
    bzero((v5 + 368), 0x4B0uLL);
  }

  *(v5 + 220) = a2 == 1.0;
  piqca_updateReducedPollingTimeRange(a1);
  return 0;
}

uint64_t VideoMentorSetModeToForwardPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, const void *a7, const void *a8, CFTypeRef a9)
{
  v35 = 0;
  cf = 0;
  Policy = videoMentorGetReadPolicyAfterPrerollFromMentorReadPolicy(a6);
  v15 = Policy;
  PolicyFromPrerollPolicy = audioMentorGetInitialReadPolicyFromPrerollPolicy(a6, Policy);
  v30 = audioMentorGetModeChangePolicy(a6);
  IsCursorAccuracyExact = videoMentorIsCursorAccuracyExact(a6);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v37 = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (a6)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (a2 && ((v16 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v16(a2, &cf)) || a4 && ((v17 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v17(a4, &v35)))
  {
    v27 = FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    if (!*a1)
    {
      v18 = *(a1 + 168);
      v19 = cf;
      *(a1 + 168) = cf;
      if (v19)
      {
        CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v20 = *(a3 + 16);
      *(a1 + 176) = *a3;
      v21 = *(a1 + 200);
      v22 = v35;
      *(a1 + 192) = v20;
      *(a1 + 200) = v22;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      v23 = *a5;
      *(a1 + 224) = *(a5 + 2);
      *(a1 + 208) = v23;
      *(a1 + 500) = v15;
      *(a1 + 240) = PolicyFromPrerollPolicy;
      *(a1 + 244) = v30;
      *(a1 + 248) = 0;
      *(a1 + 260) = 0;
      *(a1 + 252) = 0;
      *(a1 + 256) = 1065353216;
      *(a1 + 372) = IsCursorAccuracyExact;
      *(a1 + 373) = 1;
      *(a1 + 374) = 0;
      *(a1 + 375) = v37;
      *(a1 + 376) = 1;
      *(a1 + 452) = 0;
      *(a1 + 377) = 0;
      *(a1 + 378) = 0;
      v24 = *(a1 + 464);
      *(a1 + 464) = a7;
      if (a7)
      {
        CFRetain(a7);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      v25 = *(a1 + 472);
      *(a1 + 472) = a8;
      if (a8)
      {
        CFRetain(a8);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      v26 = *(a1 + 480);
      *(a1 + 480) = a9;
      if (a9)
      {
        CFRetain(a9);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      *(a1 + 112) = 2;
      *(a1 + 116) = 1;
      FigMemoryBarrier();
    }

    FigSimpleMutexUnlock();
    FigSemaphoreSignal();
    v27 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v27;
}

uint64_t sbcbq_getPendingSampleBufferCount()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  refcon = 0;
  FigSimpleMutexLock();
  v1 = 136;
  if (!*(DerivedStorage + 8))
  {
    v1 = 144;
  }

  CMBufferQueueCallForEachBuffer(*(DerivedStorage + v1), sbcbq_countNonMarkerOnlySampleBuffers, &refcon);
  FigSimpleMutexUnlock();
  return refcon;
}

uint64_t sbcbq_setAttachmentOnPendingSampleBuffersInPTSRange(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13[0] = a2;
  v13[1] = a3;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 2);
  FigSimpleMutexLock();
  v10 = 136;
  if (!*(DerivedStorage + 8))
  {
    v10 = 144;
  }

  v11 = CMBufferQueueCallForEachBuffer(*(DerivedStorage + v10), sbcbq_setAttachmentIfSampleBufferInPTSRange, v13);
  FigSimpleMutexUnlock();
  return v11;
}

void videoMentorThreadFinishPreroll(uint64_t a1, uint64_t a2, const void *a3)
{
  if ((*(a1 + 496) | 2) == 3)
  {
    v4 = FigMentorPrerollCompletePayloadCreate(a3);
    if (!*a1)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 496) = *(a1 + 500);
    if (*MEMORY[0x1E695FF58] == 1)
    {

      kdebug_trace();
    }
  }
}

uint64_t FigCRABS_ResolveActiveHints(const void *a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HostTimeClock = CMClockGetHostTimeClock();
  memset(&v41, 0, sizeof(v41));
  v6 = DerivedStorage[95];
  if (!v6)
  {
    v7 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = CFRetain(v6);
  if (a1)
  {
LABEL_3:
    CFRetain(a1);
  }

LABEL_4:
  v8 = crabsEnsureInitialized(a1);
  if (v8 || (CMClockGetTime(&lhs, HostTimeClock), rhs = *a2, CMTimeAdd(&v41, &lhs, &rhs), v8 = FigRetainProxyLockMutex(), v8))
  {
    v10 = v8;
  }

  else if (FigRetainProxyIsInvalidated())
  {
    v10 = 4294954511;
  }

  else
  {
    v9 = DerivedStorage[29];
    if (v9 >= DerivedStorage[11])
    {
      crabsUnlockWithActions(DerivedStorage);
    }

    else
    {
      v10 = crabsDoJump(DerivedStorage, v9);
      DerivedStorage[29] = DerivedStorage[11];
      crabsUnlockWithActions(DerivedStorage);
      if (v10)
      {
        goto LABEL_21;
      }
    }

    v11 = MEMORY[0x1E6960CC0];
    do
    {
      memset(&lhs, 0, sizeof(lhs));
      v10 = FigRetainProxyLockMutex();
      if (v10)
      {
        break;
      }

      v12 = DerivedStorage[31];
      if (!v12)
      {
        FigRetainProxyUnlockMutex();
        break;
      }

      v13 = DerivedStorage[12] * *v12;
      FigRetainProxyUnlockMutex();
      if (v13 == -1)
      {
        break;
      }

      CMClockGetTime(&rhs, HostTimeClock);
      cf = v41;
      v14 = CMTimeSubtract(&lhs, &cf, &rhs);
      OUTLINED_FUNCTION_80(v14, v15, v16, v17, v18, v19, v20, v21, cf.value, *&cf.timescale, cf.epoch, v37, rhs.value, *&rhs.timescale, rhs.epoch, v39, *&lhs.value);
      cf = *v11;
      v22 = CMTimeCompare(&rhs, &cf);
      if (v22 <= 0)
      {
        v10 = 4294954421;
        break;
      }

      OUTLINED_FUNCTION_80(v22, v23, v24, v25, v26, v27, v28, v29, 0, *&cf.timescale, cf.epoch, v37, rhs.value, *&rhs.timescale, rhs.epoch, v39, *&lhs.value);
      CMTimeGetSeconds(&rhs);
      v30 = OUTLINED_FUNCTION_20_1();
      v10 = readOrRef(v30, v31, v32, 0, v33, 0, v34);
      if (cf.value)
      {
        CFRelease(cf.value);
      }
    }

    while (!v10);
  }

LABEL_21:
  if (a1)
  {
    CFRelease(a1);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t crabsDoJump(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = *(a1 + 760);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 88) == a2)
  {
    if (*(a1 + 560) == 1 && !*(a1 + 568))
    {
      v6 = 4294954511;
      if (crabsCancelRead(a1, a1 + 512, -12932) == -12785)
      {
        goto LABEL_20;
      }
    }

    *(a1 + 129) = 1;
  }

  else
  {
    *(a1 + 200) = 0;
    v7 = *(a1 + 192);
    *v7 = a2;
    v8 = *(a1 + 184);
    if (v8 >= 2)
    {
      v9 = *(a1 + 88);
      for (i = 1; i < v8; ++i)
      {
        v7[i] = v9;
        v8 = *(a1 + 184);
      }
    }

    *(a1 + 208) = a2;
    *(a1 + 216) = v8;
    if (*(a1 + 224) != a2)
    {
      v17 = 0;
      crabsMoveAnchor(a1, a2);
      if (!crabsSelectNextFill(a1, &v17))
      {
        v14 = v17;
        if (v17)
        {
          if (!crabsEvaluateFirehose(a1, v17, 0, &v16))
          {
            if (v16)
            {
              v15 = crabsMoveFirehose(a1, *(a1 + 96) * *v14);
              v6 = 4294954511;
              if (v15 == -12785)
              {
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  v11 = *(a1 + 248);
  while (v11)
  {
    while (1)
    {
      v12 = v11;
      v11 = *(v11 + 2);
      if (*v12 < a2 && (v12[2] & 0x810) == 0)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    crabsUnhint(a1, v12);
  }

LABEL_19:
  v6 = 0;
  *(a1 + 128) = 0;
LABEL_20:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void crabsMoveAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 224);
  if (v4 >= a2)
  {
    if (!*(a1 + 130))
    {
      *(a1 + 131) = 0;
    }

    if (v4 > a2)
    {
      v16 = v4 - 1;
      do
      {
        v17 = *(*(a1 + 80) + 8 * v16);
        if (v17)
        {
          v18 = *(v17 + 8);
          v19 = (v18 & 0x200) != 0 ? (v18 >> 8) & 1 : *(v17 + 88) != 0;
          if ((v18 & 0x11) == 0 && v19)
          {
            v21 = *(v17 + 48);
            v22 = *(v17 + 56);
            if (*(v17 + 48) != 0)
            {
              v23 = (v21 + 56);
              if (!v21)
              {
                v23 = (a1 + 288);
              }

              *v23 = v22;
              *v22 = v21;
              *(v17 + 48) = 0;
              *(v17 + 56) = 0;
            }

            addToAscendingBackedBlockList(a1, (a1 + 264), v17);
            if ((*(v17 + 8) & 0x80) != 0)
            {
              crabsMakeBackingNonvolatile(a1, v17, 1);
            }
          }
        }

        if ((*(a1 + 504) & 3) == 0)
        {
          if (*(a1 + 133))
          {
            v25 = v16 + *(a1 + 472);
            if (v25 < *(a1 + 88))
            {
              v26 = *(*(a1 + 80) + 8 * v25);
              if (v26)
              {
                if (!*(v26 + 80))
                {
                  v27 = *(v26 + 8);
                  v28 = (v27 & 0x200) != 0 ? (v27 >> 8) & 1 : *(v26 + 88) != 0;
                  v29 = (v27 & 0x11) != 0 || !v28;
                  if (!v29 && !crabsChangeBlockVolatility(a1, v26, 0, 1))
                  {
                    crabsRemovePurgedBacking(a1, v26, 1);
                  }
                }
              }
            }
          }
        }
      }

      while (v16-- > a2);
    }

LABEL_75:
    *(a1 + 240) = a2;
    goto LABEL_76;
  }

  v5 = *(a1 + 264);
  if (v5)
  {
    v6 = (a1 + 280);
    do
    {
      if (*v5 >= a2)
      {
        break;
      }

      if ((*(a1 + 504) & 3) == 0)
      {
        if (!*(v5 + 10))
        {
          v14 = *(v5 + 4);
          v15 = (v14 & 0x200) != 0 ? (v14 >> 8) & 1 : *(v5 + 11) != 0;
          if ((v14 & 0x11) == 0 && v15 && !crabsChangeBlockVolatility(a1, v5, 2, 1))
          {
            crabsRemovePurgedBacking(a1, v5, 1);
          }
        }

        if ((v5[2] & 0x80) != 0)
        {
          crabsAdjustGroupBoundariesToRemoval(a1, v5);
        }
      }

      v7 = *(v5 + 4);
      if ((v7 & 0x200) != 0)
      {
        if ((v7 >> 8))
        {
LABEL_13:
          v9 = *(v5 + 6);
          v10 = *(v5 + 7);
          v8 = v5 + 12;
          if (*(v5 + 3) != 0)
          {
            v11 = (v9 + 56);
            if (!v9)
            {
              v11 = (a1 + 272);
            }

            *v11 = v10;
            *v10 = v9;
            *v8 = 0;
            *(v5 + 7) = 0;
            *(v5 + 4) = v7 & 0xEFFF;
          }

          v12 = *v6;
          *(v5 + 6) = *v6;
          if (v12)
          {
            v13 = (v12 + 56);
          }

          else
          {
            v13 = (a1 + 288);
          }

          *v13 = v8;
          *v6 = v5;
          *(v5 + 7) = v6;
        }
      }

      else if (*(v5 + 11))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 264);
    }

    while (v5);
  }

  if ((*(a1 + 504) & 3) == 0)
  {
    v30 = *(a1 + 224);
    if (v30 < a2)
    {
      v31 = *(a1 + 472);
      v32 = v31 + v30;
      do
      {
        if (v32 >= *(a1 + 88))
        {
          break;
        }

        v33 = *(*(a1 + 80) + 8 * v32);
        if (v33 && (*(v33 + 8) & 0x80) != 0)
        {
          crabsMakeBackingNonvolatile(a1, v33, 1);
          v31 = *(a1 + 472);
        }

        ++v32;
      }

      while (v32 < v31 + a2);
    }
  }

  v34 = *(a1 + 240);
  if (v34 < a2 && v34 >= *(a1 + 224))
  {
    goto LABEL_75;
  }

LABEL_76:
  *(a1 + 224) = a2;
}

uint64_t sbp_bq_getUpcomingPTSInfo(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = *MEMORY[0x1E6960C70];
  v43 = *(MEMORY[0x1E6960C70] + 8);
  v40 = v42;
  v41 = v43;
  value = v42;
  timescale = v43;
  v36 = v42;
  v37 = v43;
  if (!*DerivedStorage)
  {
    v9 = DerivedStorage;
    v10 = *(MEMORY[0x1E6960C70] + 12);
    v11 = *(MEMORY[0x1E6960C70] + 16);
    v28 = a2;
    if (CMBufferQueueIsEmpty(*(DerivedStorage + 8)) || (v13 = *(v9 + 8), LOBYTE(refcon.value) = 0, CMBufferQueueCallForEachBuffer(v13, sbp_bq_scanForSampleBufferThatWillBeDisplayed, &refcon), !LOBYTE(refcon.value)))
    {
      v12 = 1;
      flags = v10;
      epoch = v11;
      v27 = v10;
      v26 = v11;
    }

    else
    {
      CMBufferQueueGetMinPresentationTimeStamp(&refcon, *(v9 + 8));
      value = refcon.value;
      flags = refcon.flags;
      timescale = refcon.timescale;
      epoch = refcon.epoch;
      CMBufferQueueGetMaxPresentationTimeStamp(&refcon, *(v9 + 8));
      v12 = 0;
      v36 = refcon.value;
      v27 = refcon.flags;
      v37 = refcon.timescale;
      v26 = refcon.epoch;
    }

    FigSimpleMutexLock();
    v14 = *(v9 + 48);
    v34 = *(v9 + 52);
    v15 = *(v9 + 64);
    v35 = *(v9 + 60);
    v16 = *(v9 + 68);
    v32 = *(v9 + 76);
    v17 = *(v9 + 88);
    v33 = *(v9 + 84);
    v23 = *(v9 + 92);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v14)
      {
        v18 = &v34;
        if (v15)
        {
          v10 = v15;
        }

        else
        {
          v18 = &v32;
          v10 = v17;
        }

        if (v15)
        {
          v11 = v16;
        }

        else
        {
          v11 = v23;
        }

        v42 = *v18;
        v43 = *(v18 + 2);
        v19 = v28;
        if (v17)
        {
          v40 = v32;
          v41 = v33;
          v20 = 1;
          v21 = v17;
          v22 = v23;
        }

        else
        {
          v40 = v34;
          v41 = v35;
          v20 = 1;
          v21 = v15;
          v22 = v16;
        }

        goto LABEL_29;
      }

      v20 = 0;
      v21 = v10;
      v22 = v11;
    }

    else
    {
      if (v14)
      {
        v21 = v10;
        v22 = v11;
        v19 = v28;
        if (v15)
        {
          time2.epoch = v16;
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          time2.value = v34;
          time2.timescale = v35;
          time2.flags = v15;
          CMTimeMinimum(&refcon, &time1, &time2);
          v42 = refcon.value;
          v10 = refcon.flags;
          v43 = refcon.timescale;
          v11 = refcon.epoch;
          time2.epoch = v16;
          time1.value = v36;
          time1.timescale = v37;
          time1.flags = v27;
          time1.epoch = v26;
          time2.value = v34;
          time2.timescale = v35;
          time2.flags = v15;
          CMTimeMaximum(&refcon, &time1, &time2);
          v40 = refcon.value;
          v21 = refcon.flags;
          v41 = refcon.timescale;
          v22 = refcon.epoch;
        }

        if (v17)
        {
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          time2.value = v32;
          time2.timescale = v33;
          time2.flags = v17;
          time2.epoch = v23;
          time1.value = value;
          CMTimeMinimum(&refcon, &time1, &time2);
          v42 = refcon.value;
          v10 = refcon.flags;
          v43 = refcon.timescale;
          time2.epoch = v23;
          time1.value = v36;
          time1.timescale = v37;
          time1.flags = v27;
          time1.epoch = v26;
          v11 = refcon.epoch;
          time2.value = v32;
          time2.timescale = v33;
          time2.flags = v17;
          CMTimeMaximum(&refcon, &time1, &time2);
          v40 = refcon.value;
          v21 = refcon.flags;
          v41 = refcon.timescale;
          v22 = refcon.epoch;
        }

        v20 = 1;
        goto LABEL_29;
      }

      v42 = value;
      v43 = timescale;
      v40 = v36;
      v20 = 1;
      v41 = v37;
      v10 = flags;
      v11 = epoch;
      v21 = v27;
      v22 = v26;
    }

    v19 = v28;
LABEL_29:
    *v19 = v20;
    *a3 = v42;
    *(a3 + 8) = v43;
    *(a3 + 12) = v10;
    *(a3 + 16) = v11;
    *a4 = v40;
    *(a4 + 8) = v41;
    *(a4 + 12) = v21;
    *(a4 + 16) = v22;
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigCRABSScheduledIOFinish(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 == 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  return siocrabsFinishUnlocked(DerivedStorage, a2, v6);
}

uint64_t piqca_setAsync(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    *(DerivedStorage + 72) = 0x400000000;
    *(DerivedStorage + 49) = 1;
    CAImageQueueSetFlags();
    FigMemoryBarrier();
    piqca_WakeupSharedPollingThread();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    DerivedStorage = v4;
    v5 = 0;
  }

  else
  {
    *(DerivedStorage + 72) = 300;
    v5 = 1;
  }

  piqca_updateEDRDeadline(DerivedStorage, v5);
  return 0;
}

uint64_t videopipelineSynchronousFrameEnqueued()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void playerfig_SynchronousFrameEnqueued(uint64_t a1, void *a2)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage || !*DerivedStorage)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRetain(a2);
      v4 = MEMORY[0x1E69E96A0];

      dispatch_async_f(v4, a2, playerfig_DeferredSynchronousFrameEnqueued);
    }
  }
}

uint64_t sgffr_timebaseNotifierRateOrTimeChanged()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  v1 = *(*(DerivedStorage + 48) + 40);
  if (v1)
  {
    CFDictionaryApplyFunction(v1, sgffr_expediteAllClientRequestsForScheduledIO, 0);
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t FigImageQueueFrameRateIncrementCounter(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigSimpleMutexLock();
  v3 = *(a1 + 24);
  if (v3 + 1000000000 >= UpTimeNanoseconds)
  {
    v4 = *(a1 + 32) + 1;
  }

  else
  {
    *(a1 + 8) = v3;
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 24) = UpTimeNanoseconds;
    v4 = 1;
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = UpTimeNanoseconds;

  return FigSimpleMutexUnlock();
}

void piqca_decrementSnapLatchCount(void **a1)
{
  if (!FigAtomicDecrement32())
  {
    FigSimpleMutexDestroy();
    free(*a1);
    *a1 = 0;
  }
}

uint64_t videopipelineCopyNextNonJerkyStopTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  theArray = 0;
  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v11 = v10(FigBaseObject, @"FigImageQueueProperty_NextNonJerkyStopTime", a2, a3);
        v12 = v11;
        if (v11 == -12783 || v11 == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = 4294954514;
      }

      if (v6 == ++v7)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = 0;
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

BOOL crabsChangeBlockVolatility(void *a1, int *a2, int a3, int a4)
{
  if (!*(a2 + 11))
  {
    return 0;
  }

  if ((a2[2] & 0x11) != 0)
  {
    return 0;
  }

  crabsAdjustGroupBoundariesToRemoval(a1, a2);
  if ((a3 & 0xFFFFFFFE) != 2)
  {
    v9 = *(a2 + 11);
    if (!a3)
    {
      if (a4 == 1)
      {
        v13 = 1281;
      }

      else
      {
        v13 = 1089;
      }

      v16 = v13;
      if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v9, 0, &v16))
      {
        v14 = 1;
      }

      else
      {
        v14 = (v16 & 3) == 2;
      }

      if (v14)
      {
        return 0;
      }

      v15 = *a2;
      if (a1[53] == -1)
      {
        a1[54] = v15;
      }

      else if (a4 != 1)
      {
        a1[54] = v15;
        goto LABEL_33;
      }

      a1[53] = v15;
      goto LABEL_33;
    }

    if (a4 == 1)
    {
      v10 = 769;
    }

    else
    {
      v10 = 577;
    }

    v17 = v10;
    if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v9, 0, &v17))
    {
      v11 = 1;
    }

    else
    {
      v11 = (v17 & 3) == 2;
    }

    if (v11)
    {
      return 0;
    }

    v12 = *a2;
    if (a1[55] == -1)
    {
      a1[56] = v12;
    }

    else if (a4 != 1)
    {
      a1[56] = v12;
      goto LABEL_33;
    }

    a1[55] = v12;
    goto LABEL_33;
  }

  result = crabsMakeVolatile(*(a2 + 11), a3, a4);
  if (result)
  {
LABEL_33:
    *(a2 + 4) |= 0x80u;
    return 1;
  }

  return result;
}

void *crabsAdjustGroupBoundariesToRemoval(void *result, int *a2)
{
  v2 = *a2;
  v3 = result + 53;
  v4 = result[53];
  v5 = result[54];
  if (v5 == v2)
  {
    if (v4 < v2)
    {
      do
      {
        if (v2 <= v4)
        {
          break;
        }

        a2 = **(*(a2 + 7) + 8);
        v2 = *a2;
        result[54] = v2;
      }

      while ((a2[2] & 0x80) == 0);
      return result;
    }

LABEL_15:
    *v3 = -1;
    v3[1] = -1;
    return result;
  }

  if (v4 == v2)
  {
    do
    {
      if (v2 >= v5)
      {
        break;
      }

      a2 = *(a2 + 6);
      v2 = *a2;
      *v3 = v2;
    }

    while ((a2[2] & 0x80) == 0);
  }

  else
  {
    v3 = result + 55;
    v6 = result[55];
    v7 = result[56];
    if (v7 == v2)
    {
      if (v6 >= v2)
      {
        goto LABEL_15;
      }

      do
      {
        if (v2 <= v6)
        {
          break;
        }

        a2 = **(*(a2 + 7) + 8);
        v2 = *a2;
        result[56] = v2;
      }

      while ((a2[2] & 0x80) == 0);
    }

    else if (v6 == v2)
    {
      do
      {
        if (v2 >= v7)
        {
          break;
        }

        a2 = *(a2 + 6);
        v2 = *a2;
        *v3 = v2;
      }

      while ((a2[2] & 0x80) == 0);
    }
  }

  return result;
}

uint64_t bossSwitchMentorsToSideQueues(uint64_t a1, CFIndex a2)
{
  result = FigCFRangeGetLimit();
  if (a2 < result)
  {
    v5 = a2;
    do
    {
      v6 = *(CFArrayGetValueAtIndex(*(a1 + 72), v5) + 12);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v7)
      {
        v7(v6);
      }

      ++v5;
      result = FigCFRangeGetLimit();
    }

    while (v5 < result);
  }

  return result;
}

uint64_t sbcbq_switchToSideQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 152) = 0;
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 112);
  if (v1)
  {
    v1(*(DerivedStorage + 120));
  }

  FigSimpleMutexUnlock();
  return 0;
}

void crabsRemovePurgedBacking(uint64_t a1, int *a2, int a3)
{
  v6 = a2[1];
  *(a2 + 4) &= ~0x80u;
  crabsAdjustGroupBoundariesToRemoval(a1, a2);
  CFAllocatorDeallocate(*a1, *(a2 + 11));
  *(a2 + 11) = 0;
  if (!*(a2 + 10))
  {
    crabsMarkBlockUnfilled(a1, a2);
  }

  v7 = *(a1 + 96);
  qword_1EAF189E8 -= v7;
  *(a1 + 864) -= v7;
  ++*(a1 + 408);
  v8 = *(a2 + 4);
  if ((v8 & 0x11) == 0)
  {
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    if (*(a2 + 3) != 0)
    {
      v11 = 264;
      if (!a3)
      {
        v11 = 280;
      }

      v12 = (a1 + v11 + 8);
      if (v9)
      {
        v12 = (v9 + 56);
      }

      *v12 = v10;
      *v10 = v9;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      if (a3)
      {
        *(a2 + 4) = v8 & 0xEFEE;
      }
    }
  }

  v13 = *a2;
  v14 = *(a1 + 224);
  if (v14 <= v13)
  {
    v15 = *(a1 + 240);
    if (v15 < v14 || v15 > v13)
    {
      *(a1 + 240) = v13;
    }
  }

  if (v6)
  {
    if (*(a1 + 128))
    {
      v16 = 1;
    }

    else
    {
      v16 = v14 <= v13;
    }

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *(a1 + 176) |= v17;
    *(a1 + 128) = 0;
  }
}

uint64_t crabsMarkBlockUnfilled(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) &= 0xFFB3u;
  FigSimpleMutexLock();
  v4 = *(a1 + 64) - *(a2 + 4);
  *(a1 + 64) = v4;
  v5 = *(a1 + 920);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(v5, 0x1F0B64598, 0x1F0B65638, v4, 0);
    }
  }

  result = FigSimpleMutexUnlock();
  *(a2 + 4) = 0;
  *(a1 + 130) = 0;
  return result;
}

uint64_t fpm_streamCacheChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    ++*(MutableBytePtr + 24);
    if (!a5)
    {
      MutableBytePtr[313] = 1;
      CMTimebaseGetTime(&time1, *(MutableBytePtr + 3));
      time2 = **&MEMORY[0x1E6960CC0];
      CMTimeMaximum(&v10, &time1, &time2);
      *(MutableBytePtr + 9) = v10;
    }

    v8 = *(MutableBytePtr + 28);
    if (v8)
    {
      if (v8 != 3 || !a5 || *(MutableBytePtr + 26) == 1)
      {
LABEL_11:
        fpm_ensureUpdatePrimed(MutableBytePtr);
LABEL_13:
        FigSimpleMutexUnlock();
        return FigRetainProxyUnlockMutex();
      }
    }

    else if (*(MutableBytePtr + 26) == 1 || MutableBytePtr[8555] | (a5 == 0))
    {
      goto LABEL_11;
    }

    fpm_updateCacheAndNotify(MutableBytePtr);
    goto LABEL_13;
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t bossReplaceMainQueuesWithSideQueuesAndSwitchMentorsToMainQueues(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 848))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 80) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(CFArrayGetValueAtIndex(*(a1 + 72), v3) + 12);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v5)
      {
        v5(v4);
      }

      ++v3;
    }

    while (v3 < *(a1 + 80));
  }

  return FigSimpleMutexUnlock();
}

uint64_t sbcbq_replaceMainQueueWithSideQueueAndSwitchToMainQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 152))
  {
    CMBufferQueueReset(*(DerivedStorage + 136));
  }

  FigSimpleMutexUnlock();
  v1 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(v1 + 160)) <= 0)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v2 = *(v1 + 160);
    *(v1 + 160) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    FigSimpleMutexUnlock();
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 2)
      {
        v4 = 0;
        v5 = Count - 1;
        do
        {
          CFArrayGetValueAtIndex(v2, v4);
          CFArrayGetValueAtIndex(v2, v4 + 1);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          v4 += 2;
        }

        while (v4 < v5);
      }

      CFRelease(v2);
    }
  }

  FigSimpleMutexLock();
  v6 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 144));
  if (v6)
  {
    v7 = v6;
    do
    {
      CMBufferQueueEnqueue(*(DerivedStorage + 136), v7);
      CFRelease(v7);
      v7 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 144));
    }

    while (v7);
  }

  *(DerivedStorage + 8) = 1;
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    v8(*(DerivedStorage + 120));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t crabsMakeBackingNonvolatile(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 88);
  v11 = 0;
  if (MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], v6, 0, &v11))
  {
    v7 = 1;
  }

  else
  {
    v7 = (v11 & 3) == 2;
  }

  v8 = !v7;
  if (v7)
  {
    crabsRemovePurgedBacking(a1, a2, a3);
  }

  else
  {
    *(a2 + 8) &= ~0x80u;
    crabsAdjustGroupBoundariesToRemoval(a1, a2);
    v9 = a1[12];
    qword_1EAF189E8 -= v9;
    a1[108] -= v9;
  }

  return v8;
}

uint64_t stepUpEntry(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return 4294954456;
  }

  v3 = v1 - 1;
  *(a1 + 88) = v3;
  v4 = *(a1 + 8);
  destination = 0;
  CMBlockBufferCopyDataBytes(*(v4 + 416), 8 * v3, 8uLL, &destination);
  v5 = bswap32(destination);
  *(a1 + 112) = v5;
  *(a1 + 120) = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 244);
  if (v7)
  {
    v8 = v5 / v7;
    *(a1 + 112) = v8;
    *(a1 + 104) = v7;
  }

  else
  {
    v10 = *(a1 + 88);
    destination = 0;
    CMBlockBufferCopyDataBytes(*(v6 + 416), 8 * v10, 8uLL, &destination);
    v7 = bswap32(HIDWORD(destination));
    *(a1 + 104) = v7;
    v8 = *(a1 + 112);
  }

  result = 0;
  *(a1 + 96) -= v7 * v8;
  v11 = *(a1 + 116);
  *(a1 + 116) = v11 - v8;
  *(a1 + 80) = v11 - 1;
  return result;
}

void *VideoMentorInvalidate(void *result)
{
  if (!*result)
  {
    v1 = result;
    *result = 1;
    if (result[13])
    {
      FigSimpleMutexLock();
      *(v1 + 28) = 5;
      *(v1 + 116) = 1;
      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      FigSemaphoreSignal();
      FigThreadAbortForTeardown();
      FigThreadJoin();
      v1[13] = 0;
    }

    v2 = v1[3];
    if (v2)
    {
      if (*(v1 + 40))
      {
        v3 = v1[4];
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v4)
        {
          v4(v2, v3);
        }
      }
    }

    if (v1[2])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
    }

    result = v1[69];
    v1[69] = 0;
    if (result)
    {
      do
      {
        v5 = *result;
        videoMentorSavedFrameDestroy(result);
        result = v5;
      }

      while (v5);
    }
  }

  return result;
}

void figVideoRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figVideoRenderPipelineInvalidate(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 32) = 0;
  }

  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 112) = 0;
  }

  v12 = *(DerivedStorage + 120);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 120) = 0;
  }

  v13 = *(DerivedStorage + 96);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 96) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 80) = 0;
  }

  v14 = *(DerivedStorage + 200);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 200) = 0;
  }

  FigSimpleMutexDestroy();
  v15 = *(DerivedStorage + 192);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 192) = 0;
  }

  v16 = *(DerivedStorage + 176);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 176) = 0;
  }

  *(DerivedStorage + 4) = 0;

  videopipelineUpdateVideoPlaybackStateForClient();
}

uint64_t figVideoRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 16))
      {
        FigStopForwardingMediaServicesProcessDeathNotification();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        VMC2Invalidate(*(v3 + 16));
        v4 = *(v3 + 32);
        if (v4)
        {
          v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v5)
          {
            v5(v4);
          }
        }
      }

      figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, &cf);
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v7 = Count;
          for (i = 0; i != v7; ++i)
          {
            CFArrayGetValueAtIndex(theArray, i);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
          }
        }
      }

      videopipelineRemoveListenersOnFirstImageQueue();
      v9 = *(v3 + 40);
      if (v9)
      {
        v10 = CFArrayGetCount(v9);
        if (v10 >= 1)
        {
          v11 = v10;
          for (j = 0; j != v11; ++j)
          {
            CFArrayGetValueAtIndex(*(v3 + 40), j);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListeners();
          }
        }
      }

      videopipelineSetTimebase(a1, 0);
      FigSimpleMutexLock();
      v13 = *(v3 + 56);
      if (v13)
      {
        CFRelease(v13);
        *(v3 + 56) = 0;
      }

      v14 = *(v3 + 64);
      if (v14)
      {
        CFRelease(v14);
        *(v3 + 64) = 0;
      }

      FigSimpleMutexUnlock();
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v15 = *(v3 + 136);
      if (v15)
      {
        CFRelease(v15);
        *(v3 + 136) = 0;
      }
    }
  }

  return 0;
}

void VMC2Invalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    VMC2Stop(a1);
    VMC2WaitUntilCompletelyStopped(a1);
    *(a1 + 16) = 1;
    vmc2FinishAndDestroyImageEnhancementFilter(a1);
    FigSimpleMutexLock();
    if (*(a1 + 1520))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v2 = *(a1 + 1520);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 1520) = 0;
      }
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    if (*(a1 + 584))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 448);
    if (v3)
    {
      dispatch_sync_f(v3, 0, vmc2noop);
      dispatch_release(*(a1 + 448));
      *(a1 + 448) = 0;
    }

    if (*(a1 + 72))
    {
      FigSimpleMutexLock();
      vmc2RemoveDecompressionSession(a1);
      FigSimpleMutexUnlock();
    }

    *(a1 + 626) = 0;
    if (*(a1 + 248))
    {
      FigReadWriteLockLockForRead();
      if (*(a1 + 249))
      {
        v4 = *(a1 + 184);
        if (v4)
        {
          v4(*(a1 + 152), *(a1 + 240));
        }

        *(a1 + 184) = 0;
        *(a1 + 240) = 0;
        *(a1 + 248) = 0;
      }

      else
      {
        VMC2Invalidate_cold_1();
      }

      FigReadWriteLockUnlockForRead();
    }

    v5 = *(a1 + 264);
    if (v5)
    {
      if (!*(a1 + 272))
      {
        goto LABEL_24;
      }

      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v6(v5, 0, 0);
      }

      *(a1 + 272) = 0;
      v5 = *(a1 + 264);
      if (v5)
      {
LABEL_24:
        FigBaseObject = FigActivitySchedulerGetFigBaseObject(v5);
        if (FigBaseObject)
        {
          v8 = FigBaseObject;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v9)
          {
            v9(v8);
          }
        }
      }
    }

    if (*(a1 + 88))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      v10 = FigSampleBufferProviderGetFigBaseObject(*(a1 + 88));
      if (v10)
      {
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v12(v11);
        }
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FPSupport_GetDisplayVideoRangeNotificationSingleton();
    FigNotificationCenterRemoveWeakListener();
    v13 = *(a1 + 120);
    if (v13)
    {
      v13(*(a1 + 104));
      *(a1 + 120) = 0;
    }

    FigReadWriteLockLockForWrite();
    v14 = *(a1 + 216);
    if (v14)
    {
      v14(*(a1 + 152));
      *(a1 + 216) = 0;
    }

    *(a1 + 249) = 0;
    FigReadWriteLockUnlockForWrite();
    v15 = *(a1 + 824);
    if (v15)
    {
      if (!*(a1 + 832))
      {
        dispatch_resume(v15);
        v15 = *(a1 + 824);
      }

      dispatch_source_cancel(v15);
      dispatch_release(*(a1 + 824));
      *(a1 + 824) = 0;
    }

    v16 = *(a1 + 816);
    if (v16)
    {
      dispatch_sync_f(v16, 0, vmc2noop);
      dispatch_release(*(a1 + 816));
      *(a1 + 816) = 0;
    }

    vmc2ClearSavedList(a1);
  }
}

uint64_t VMC2Stop(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 288) = 0;
    FigMemoryBarrier();
    return 0;
  }
}

uint64_t VMC2WaitUntilCompletelyStopped(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    v3 = *(a1 + 64);
    if (v3)
    {
      VTDecompressionSessionWaitForAsynchronousFrames(v3);
    }

    return 0;
  }
}

uint64_t activityOnThread_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = 0;
  FigSimpleMutexUnlock();
  if (v1)
  {
    *(DerivedStorage + 56) = 256;
    FigMemoryBarrier();
    FigSemaphoreSignal();
    FigThreadJoin();
  }

  return 0;
}

uint64_t activityOnThread_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  FigSimpleMutexDestroy();
  DerivedStorage[6] = 0;
  FigSemaphoreDestroy();
  DerivedStorage[3] = 0;
  result = FigSimpleMutexDestroy();
  DerivedStorage[2] = 0;
  return result;
}

uint64_t sbp_bq_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    v2 = *(DerivedStorage + 16);
    if (v2)
    {
      CMBufferQueueRemoveTrigger(*(DerivedStorage + 8), v2);
      *(v1 + 16) = 0;
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      CMBufferQueueRemoveTrigger(*(v1 + 8), v3);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(v1 + 8), v4);
      *(v1 + 32) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  return 0;
}

uint64_t sbp_bq_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }

  result = *(DerivedStorage + 40);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 40) = 0;
  }

  return result;
}

uint64_t vmc2Finalize(void *a1)
{
  VMC2Invalidate(a1);
  v2 = a1[57];
  if (v2)
  {
    dispatch_release(v2);
    a1[57] = 0;
  }

  if (a1[9])
  {
    FigSimpleMutexDestroy();
    a1[9] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  v4 = a1[90];
  if (v4)
  {
    CFRelease(v4);
    a1[90] = 0;
  }

  FigSimpleMutexDestroy();
  v5 = a1[75];
  if (v5)
  {
    CFRelease(v5);
    a1[75] = 0;
  }

  FigSimpleMutexDestroy();
  a1[79] = 0;
  v6 = a1[33];
  if (v6)
  {
    CFRelease(v6);
    a1[33] = 0;
  }

  v7 = a1[11];
  if (v7)
  {
    CFRelease(v7);
    a1[11] = 0;
  }

  FigSimpleMutexDestroy();
  a1[35] = 0;
  FigSimpleMutexDestroy();
  a1[37] = 0;
  FigSemaphoreDestroy();
  a1[38] = 0;
  FigSimpleMutexDestroy();
  a1[67] = 0;
  FigReadWriteLockDestroy();
  v8 = a1[3];
  if (v8)
  {
    CFRelease(v8);
    a1[3] = 0;
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
    a1[4] = 0;
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
    a1[6] = 0;
  }

  v11 = a1[7];
  if (v11)
  {
    CFRelease(v11);
    a1[7] = 0;
  }

  v12 = a1[73];
  if (v12)
  {
    CFRelease(v12);
    a1[73] = 0;
  }

  v13 = a1[92];
  if (v13)
  {
    CFRelease(v13);
    a1[92] = 0;
  }

  v14 = a1[93];
  if (v14)
  {
    CFRelease(v14);
    a1[93] = 0;
  }

  v15 = a1[94];
  if (v15)
  {
    CFRelease(v15);
    a1[94] = 0;
  }

  v16 = a1[95];
  if (v16)
  {
    CFRelease(v16);
    a1[95] = 0;
  }

  v17 = a1[124];
  if (v17)
  {
    CFRelease(v17);
    a1[124] = 0;
  }

  v18 = a1[125];
  if (v18)
  {
    CFRelease(v18);
    a1[125] = 0;
  }

  v19 = a1[126];
  if (v19)
  {
    CFRelease(v19);
    a1[126] = 0;
  }

  v20 = a1[96];
  if (v20)
  {
    CFRelease(v20);
    a1[96] = 0;
  }

  v21 = a1[127];
  if (v21)
  {
    CFRelease(v21);
    a1[127] = 0;
  }

  v22 = a1[128];
  if (v22)
  {
    CFRelease(v22);
    a1[128] = 0;
  }

  v23 = a1[129];
  if (v23)
  {
    CFRelease(v23);
    a1[129] = 0;
  }

  v24 = a1[130];
  if (v24)
  {
    CFRelease(v24);
    a1[130] = 0;
  }

  v25 = a1[133];
  if (v25)
  {
    CFRelease(v25);
    a1[133] = 0;
  }

  v26 = a1[134];
  if (v26)
  {
    CFRelease(v26);
    a1[134] = 0;
  }

  v27 = a1[135];
  if (v27)
  {
    CFRelease(v27);
    a1[135] = 0;
  }

  v28 = a1[180];
  if (v28)
  {
    CFRelease(v28);
    a1[180] = 0;
  }

  v29 = a1[123];
  if (v29)
  {
    dispatch_release(v29);
    a1[123] = 0;
  }

  v30 = a1[114];
  if (v30)
  {
    CFRelease(v30);
    a1[114] = 0;
  }

  v31 = a1[32];
  if (v31)
  {
    CFRelease(v31);
    a1[32] = 0;
  }

  FigSimpleMutexDestroy();
  a1[189] = 0;
  v32 = a1[190];
  if (v32)
  {
    CFRelease(v32);
    a1[190] = 0;
  }

  if (a1[72])
  {
    FigSimpleMutexDestroy();
    a1[72] = 0;
  }

  if (dword_1EAF18AC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1[148])
  {
    FigSimpleMutexDestroy();
    a1[148] = 0;
  }

  if (a1[97])
  {
    FigSimpleMutexDestroy();
    a1[97] = 0;
  }

  v34 = a1[98];
  if (v34)
  {
    CFRelease(v34);
    a1[98] = 0;
  }

  v35 = a1[101];
  if (v35)
  {
    CFRelease(v35);
    a1[101] = 0;
  }

  v36 = a1[106];
  if (v36)
  {
    CFRelease(v36);
    a1[106] = 0;
  }

  v37 = a1[178];
  if (v37)
  {
    os_release(v37);
    a1[178] = 0;
  }

  v38 = a1[137];
  if (v38)
  {
    CFRelease(v38);
    a1[137] = 0;
  }

  v39 = a1[108];
  if (v39)
  {
    CFRelease(v39);
    a1[108] = 0;
  }

  v40 = a1[58];
  if (v40)
  {
    dispatch_release(v40);
    a1[58] = 0;
  }

  v41 = a1[192];
  if (v41)
  {
    CFRelease(v41);
  }

  result = FigSimpleMutexDestroy();
  a1[191] = 0;
  return result;
}

void piqca_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2544) = mach_absolute_time();
  piqca_gmstats_dump();
  if (_MergedGlobals_54 != -1)
  {
    piqca_WakeupSharedPollingThread_cold_1();
  }

  FigSimpleMutexLock();
  if (CFDictionaryGetValue(qword_1ED4CAA40, a1))
  {
    CFDictionaryRemoveValue(qword_1ED4CAA40, a1);
  }

  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 3224))
  {
    CMBaseObject = FigImageQueueGaugeGetCMBaseObject();
    if (CMBaseObject)
    {
      v4 = CMBaseObject;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }

    v6 = *(DerivedStorage + 3224);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 3224) = 0;
    }
  }

  if (*DerivedStorage)
  {
    FigSimpleMutexLock();
    **(DerivedStorage + 16) = 0;
    FigSimpleMutexUnlock();
    piqca_decrementSnapLatchCount((DerivedStorage + 16));
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 3208);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 3208) = 0;
  }

  FigSimpleMutexDestroy();
  v8 = *(DerivedStorage + 3184);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 3184) = 0;
  }

  FigSimpleMutexDestroy();
  v9 = *(DerivedStorage + 3216);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 3216) = 0;
  }

  FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(*(DerivedStorage + 2984));
  v10 = *(DerivedStorage + 2984);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 2984) = 0;
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 120) = 0;
  }

  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 2912))
  {
    FigSimpleMutexDestroy();
  }

  if (*(DerivedStorage + 2536))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 2536) = 0;
  }

  if (dword_1EAF19510)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *(DerivedStorage + 2560);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 2560) = 0;
  }

  v14 = *(DerivedStorage + 3072);
  if (v14)
  {
    FigSyncMomentSourceDestroy(v14);
    *(DerivedStorage + 3072) = 0;
  }

  v15 = *(DerivedStorage + 3064);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(DerivedStorage + 3000);
  if (v16)
  {
    os_release(v16);
    *(DerivedStorage + 3000) = 0;
  }

  v17 = *(DerivedStorage + 3144);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 3144) = 0;
  }

  v18 = *(DerivedStorage + 3152);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 3152) = 0;
  }

  v19 = *(DerivedStorage + 144);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 144) = 0;
  }
}

void FigCRABSScheduledIOFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  siocrabsFinishUnlocked(v1, 0, 1);
  FigSimpleMutexDestroy();
  v2 = *DerivedStorage;

  CFRelease(v2);
}

void FPSupport_DeleteCASlot(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    Context = fpSupport_getContext();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [Context deleteSlot:a1];
    [MEMORY[0x1E6979518] commit];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t FigCRABSInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 760);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = FigRetainProxyLockMutex();
  if (v3)
  {
    v4 = v3;
    if (!v2)
    {
      return v4;
    }

    goto LABEL_12;
  }

  if (*(DerivedStorage + 104) == 1)
  {
    *(DerivedStorage + 104) = 0;
    FigRetainProxyInvalidate();
    FigMemoryBarrier();
    if (*(DerivedStorage + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
    }

    crabsCancelRead(DerivedStorage, DerivedStorage + 512, -12932);
    crabsCancelRead(DerivedStorage, DerivedStorage + 616, -12932);
    crabsWaitForReadCancel(DerivedStorage, DerivedStorage + 512);
    crabsWaitForReadCancel(DerivedStorage, DerivedStorage + 616);
    if (*(DerivedStorage + 504))
    {
      crabsCompleteLazySync(DerivedStorage, 1);
      crabsCompleteLazyPagein(DerivedStorage, 1);
    }

    v4 = crabsSyncCache(DerivedStorage);
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    *v5 = *(DerivedStorage + 8);
    v5[1] = os_retain(*(DerivedStorage + 936));
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async_f(global_queue, v5, crabsReleaseDiskCacheProviderAsync);
    *(DerivedStorage + 8) = 0;
  }

  else
  {
    v4 = 0;
  }

  crabsRetainProxyUnlockWithActions();
  if (v2)
  {
LABEL_12:
    CFRelease(v2);
  }

  return v4;
}

uint64_t crabsWaitForReadCancel(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) >= 1)
  {
    do
    {
      MEMORY[0x19A8D12E0](*(a2 + 40));
      FigRetainProxyLockMutex();
      usleep(0x2710u);
      result = FigRetainProxyUnlockMutex();
    }

    while (*(a2 + 56) > 0);
  }

  return result;
}

uint64_t FigCFHTTPCopyIdentifier(uint64_t a1, const __CFDictionary **a2)
{
  if (!a2)
  {
    FigCFHTTPCopyIdentifier_cold_4(&v10);
    return v10;
  }

  FigByteFlumeGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) == 1)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 264))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(v4 + 264));
      if (MutableCopy)
      {
        v7 = MutableCopy;
        if (CFDictionaryContainsKey(MutableCopy, @"URL"))
        {
          if (!CFDictionaryContainsKey(v7, @"MIME Type"))
          {
            FigCFHTTPIsDataURL(*(v4 + 168));
            FigCFDictionarySetValue();
          }

          if (CFDictionaryContainsKey(*(v4 + 264), @"Size"))
          {
            result = 0;
            *a2 = v7;
            return result;
          }

          v9 = 4397;
        }

        else
        {
          v9 = 4390;
        }

        FigCFHTTPCopyIdentifier_cold_1(v9, v7, &v10);
      }

      else
      {
        FigCFHTTPCopyIdentifier_cold_2(&v10);
      }
    }

    else
    {
      FigCFHTTPCopyIdentifier_cold_3(&v10);
    }

    return v10;
  }

  return 4294954513;
}

uint64_t FigDiskCacheRepositoryCheckIn(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock();
    v6 = FigCFURLCreateDirectory();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      if (FigFileForkOpenMainByCFURL())
      {
        v7 = 0;
      }

      else
      {
        fdcr_ReadRepositoryPlist(a1);
        v9 = fdcr_CheckInResource(a1, a2, a3, 0);
        v10 = CFDictionaryGetCount(*(a1 + 80)) == 0;
        v11 = fdcr_WriteRepositoryPlist(a1, 0, 1, v10);
        if (v9)
        {
          v7 = v9;
        }

        else
        {
          v7 = v11;
        }

        FigFileForkClose();
      }

      if (*(a1 + 56))
      {
        CFDictionaryApplyFunction(*(a1 + 72), markDiskCacheRepositoryPurgeable, 0);
      }
    }

    FigSimpleMutexUnlock();
    return v7;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void *FigCRABSFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16BD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 760))
  {
    FigCRABSInvalidate();
    v3 = *(DerivedStorage + 920);
    if (v3)
    {
      v4 = *(DerivedStorage + 840);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v5)
      {
        v5(v3, 0x1F0B64598, 0x1F0B3F558, v4, 0);
      }
    }

    v6 = *(DerivedStorage + 920);
    if (v6)
    {
      v7 = *(DerivedStorage + 848);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v8)
      {
        v8(v6, 0x1F0B64598, 0x1F0B3F578, v7, 0);
      }

      v9 = *(DerivedStorage + 920);
      if (v9)
      {
        v10 = *(DerivedStorage + 856);
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v11)
        {
          v11(v9, 0x1F0B64598, 0x1F0B3F598, v10, 0);
        }

        v12 = *(DerivedStorage + 920);
        if (v12)
        {
          v13 = *(DerivedStorage + 864);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v14)
          {
            v14(v12, 0x1F0B64598, 0x1F0B3F5B8, v13, 0);
          }

          v15 = *(DerivedStorage + 920);
          if (v15)
          {
            v16 = *(DerivedStorage + 872);
            v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v17)
            {
              v17(v15, 0x1F0B64598, 0x1F0B3F5D8, v16, 0);
            }

            v18 = *(DerivedStorage + 920);
            if (v18)
            {
              v19 = *(DerivedStorage + 880);
              v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v20)
              {
                v20(v18, 0x1F0B64598, 0x1F0B3F5F8, v19, 0);
              }

              v21 = *(DerivedStorage + 920);
              if (v21)
              {
                v22 = *(DerivedStorage + 888);
                v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v23)
                {
                  v23(v21, 0x1F0B64598, 0x1F0B3F618, v22, 0);
                }

                v24 = *(DerivedStorage + 920);
                if (v24)
                {
                  v25 = *(DerivedStorage + 896);
                  v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v26)
                  {
                    v26(v24, 0x1F0B64598, 0x1F0B3F638, v25, 0);
                  }
                }
              }
            }
          }
        }
      }
    }

    StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
    if (FigCFDictionaryGetInt32IfPresent())
    {
      v28 = *(DerivedStorage + 920);
      if (v28)
      {
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v29)
        {
          v29(v28, 0x1F0B64598, 0x1F0B3F698, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      v30 = *(DerivedStorage + 920);
      if (v30)
      {
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v31)
        {
          v31(v30, 0x1F0B64598, 0x1F0B3F6B8, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v32 = *(DerivedStorage + 920);
      if (v32)
      {
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v33)
        {
          v33(v32, 0x1F0B64598, 0x1F0B23278, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v34 = *(DerivedStorage + 920);
      if (v34)
      {
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v35)
        {
          v35(v34, 0x1F0B64598, 0x1F0B3F6D8, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v36 = *(DerivedStorage + 920);
      if (v36)
      {
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v37)
        {
          v37(v36, 0x1F0B64598, 0x1F0B3F6F8, (0.0 * 1000.0), 0);
        }
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v38 = *(DerivedStorage + 920);
      if (v38)
      {
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v39)
        {
          v39(v38, 0x1F0B64598, 0x1F0B3F718, (0.0 * 1000.0), 0);
        }
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v40 = *(DerivedStorage + 920);
      if (v40)
      {
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v41)
        {
          v41(v40, 0x1F0B64598, 0x1F0B3F738, (0.0 * 1000.0), 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v42 = *(DerivedStorage + 920);
      if (v42)
      {
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v43)
        {
          v43(v42, 0x1F0B64598, 0x1F0B3F758, 0, 0);
        }
      }
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v44 = *(DerivedStorage + 920);
      if (v44)
      {
        v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v45)
        {
          v45(v44, 0x1F0B64598, 0x1F0B3F778, 0, 0);
        }
      }
    }

    if (StatsDictionary)
    {
      CFRelease(StatsDictionary);
    }

    v46 = *(DerivedStorage + 920);
    if (v46)
    {
      CFRelease(v46);
      *(DerivedStorage + 920) = 0;
    }

    v47 = *(DerivedStorage + 936);
    if (v47)
    {
      os_release(v47);
      *(DerivedStorage + 936) = 0;
    }

    FigBaseObject = FigByteFlumeGetFigBaseObject(*(DerivedStorage + 32));
    if (FigBaseObject)
    {
      v49 = FigBaseObject;
      v50 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v50)
      {
        v50(v49);
      }
    }

    FigRetainProxyLockMutex();
    v51 = *(DerivedStorage + 88);
    if (v51 >= 1)
    {
      for (i = 0; i < v51; ++i)
      {
        v53 = *(DerivedStorage + 80);
        v54 = *(v53 + 8 * i);
        if (v54)
        {
          crabsReleaseWorkingBlock(DerivedStorage, *(v53 + 8 * i));
          v55 = v54[11];
          if (v55)
          {
            CFAllocatorDeallocate(*DerivedStorage, v55);
          }

          free(v54);
          v51 = *(DerivedStorage + 88);
        }
      }
    }

    v56 = *(DerivedStorage + 456);
    if (v56)
    {
      CFAllocatorDeallocate(*DerivedStorage, v56);
    }

    free(*(DerivedStorage + 80));
    free(*(DerivedStorage + 192));
    free(*(DerivedStorage + 152));
    FigReadWriteLockDestroy();
    v57 = *(DerivedStorage + 960);
    if (v57)
    {
      CFRelease(v57);
    }

    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
    }

    v58 = *(DerivedStorage + 952);
    if (v58)
    {
      CFRelease(v58);
    }

    v59 = *(DerivedStorage + 968);
    if (v59)
    {
      CFRelease(v59);
    }

    FigRetainProxyUnlockMutex();
    v60 = *(DerivedStorage + 144);
    if (v60)
    {
      CFRelease(v60);
    }

    v61 = *(DerivedStorage + 32);
    if (v61)
    {
      CFRelease(v61);
    }

    v62 = *(DerivedStorage + 720);
    if (v62)
    {
      FigAIOClientRelease(v62);
    }

    if (*(DerivedStorage + 656))
    {
      FigConditionVariableDestroy();
    }

    if (*(DerivedStorage + 552))
    {
      FigConditionVariableDestroy();
    }

    if (*(DerivedStorage + 72))
    {
      FigSimpleMutexDestroy();
    }

    if (*(DerivedStorage + 384))
    {
      FigSimpleMutexDestroy();
    }

    FigByteStreamStatsTeardownWorker();
    v63 = *(DerivedStorage + 976);
    if (v63)
    {
      CFRelease(v63);
    }

    FigRetainProxyRelease();
  }

  return memset(DerivedStorage, 70, 0x3D8uLL);
}

uint64_t FigCFHTTPInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v1 = DerivedStorage;
    FigRetainProxyLockMutex();
    if (*(v1 + 376))
    {
      FigRetainProxyUnlockMutex();
    }

    else
    {
      FigRetainProxyInvalidate();
      *(v1 + 376) = 257;
      FigCFHTTPStopAllReads(v1, -12932);
      v2 = *(v1 + 88);
      *(v1 + 88) = 0;
      v3 = *(v1 + 104);
      v4 = *(v1 + 120);
      *(v1 + 104) = 0;
      v5 = *(v1 + 368);
      if (v5)
      {
        CMMemoryPoolInvalidate(v5);
      }

      fbf_CancelReconnect(v1);
      if (*(v1 + 456))
      {
        FigHTTPStopAndReleaseTimer((v1 + 456));
        *(v1 + 456) = 0;
      }

      FigByteFlumeBaseInvalidate(v1);
      v6 = *(v1 + 44);
      if (*(v1 + 40))
      {
        v7 = v6 == 1;
      }

      else
      {
        v7 = 0;
      }

      v9 = v7 || v6 == 2;
      FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v1 + 592), v2, *(v1 + 32), 0x1F0B645B8, v9);
      if (*(v1 + 600))
      {
        nw_activity_complete_with_reason();
        v10 = *(v1 + 600);
        if (v10)
        {
          CFRelease(v10);
          *(v1 + 600) = 0;
        }
      }

      v11 = *(v1 + 624);
      if (v11)
      {
        CFRelease(v11);
        *(v1 + 624) = 0;
      }

      v12 = *(v1 + 640);
      if (v12)
      {
        CFRelease(v12);
        *(v1 + 640) = 0;
      }

      *(v1 + 377) = 0;
      FigRetainProxyUnlockMutex();
      if (v2)
      {
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v13)
        {
          v13(v2);
        }

        CFRelease(v2);
      }

      if (v3)
      {
        v3(v4, 0, 4294954364);
      }
    }
  }

  return 0;
}

void QTMovieCacheMemReleaseCallBack(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t FigCFHTTPStopAllReads(uint64_t result, int a2)
{
  v3 = result;
  if (dword_1EAF16F58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    while (1)
    {
      if (!*(v5 + 120))
      {
        *(v5 + 120) = a2;
      }

      if (!*(v5 + 125))
      {
        result = FigCFHTTPFinishReadRequest(v3, v5, 1);
        v5 = *(v3 + 56);
        if (!v5)
        {
          break;
        }
      }
    }
  }

  return result;
}

void FigCFHTTPFinalize()
{
  FigCFHTTPInvalidate();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 408);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 408) = 0;
  }

  v2 = *(DerivedStorage + 400);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 400) = 0;
  }

  v3 = *(DerivedStorage + 168);
  if (v3)
  {
    *(DerivedStorage + 168) = 0;
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 176);
  if (v4)
  {
    *(DerivedStorage + 176) = 0;
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 192);
  if (v5)
  {
    *(DerivedStorage + 192) = 0;
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 224);
  if (v6)
  {
    *(DerivedStorage + 224) = 0;
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 232);
  if (v7)
  {
    *(DerivedStorage + 232) = 0;
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 240);
  if (v8)
  {
    *(DerivedStorage + 240) = 0;
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 200);
  if (v9)
  {
    *(DerivedStorage + 200) = 0;
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    *(DerivedStorage + 112) = 0;
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 272);
  if (v11)
  {
    *(DerivedStorage + 272) = 0;
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 264);
  if (v12)
  {
    *(DerivedStorage + 264) = 0;
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 256);
  if (v13)
  {
    *(DerivedStorage + 256) = 0;
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 128);
  if (v14)
  {
    *(DerivedStorage + 128) = 0;
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 136);
  if (v15)
  {
    *(DerivedStorage + 136) = 0;
    CFRelease(v15);
  }

  FigHTTPSchedulerRelease(*(DerivedStorage + 48));
  v16 = *(DerivedStorage + 368);
  if (v16)
  {
    *(DerivedStorage + 368) = 0;
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 208);
  if (v17)
  {
    *(DerivedStorage + 208) = 0;
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 536);
  if (v18)
  {
    *(DerivedStorage + 536) = 0;
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 560);
  if (v19)
  {
    *(DerivedStorage + 560) = 0;
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 544);
  if (v20)
  {
    *(DerivedStorage + 544) = 0;
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 552);
  if (v21)
  {
    *(DerivedStorage + 552) = 0;
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 568);
  if (v22)
  {
    *(DerivedStorage + 568) = 0;
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 344);
  if (v23)
  {
    FigByteRateHistoryDispose(v23);
    *(DerivedStorage + 344) = 0;
  }

  v24 = *(DerivedStorage + 648);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 648) = 0;
  }

  FigNetworkInterfaceReporterDestroy(*(DerivedStorage + 592));

  FigByteFlumeBaseDispose(DerivedStorage);
}

uint64_t FigByteRateHistoryDispose(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
  return 0;
}

uint64_t playerfig_Invalidate()
{
  v0 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    playerfig_Invalidate_cold_1();
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t playerfig_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerfig_Invalidate();
  v1 = DerivedStorage[110];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[110] = 0;
  }

  v2 = DerivedStorage[73];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[73] = 0;
  }

  v3 = DerivedStorage[83];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[83] = 0;
  }

  v4 = DerivedStorage[74];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[74] = 0;
  }

  v5 = DerivedStorage[79];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[79] = 0;
  }

  v6 = DerivedStorage[78];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[78] = 0;
  }

  v7 = DerivedStorage[80];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[80] = 0;
  }

  v8 = DerivedStorage[81];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[81] = 0;
  }

  v9 = DerivedStorage[11];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[11] = 0;
  }

  v10 = DerivedStorage[70];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[70] = 0;
  }

  v11 = DerivedStorage[89];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[89] = 0;
  }

  FigSimpleMutexLock();
  v12 = DerivedStorage[4];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[4] = 0;
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
  v13 = DerivedStorage[150];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[150] = 0;
  }

  if (DerivedStorage[23])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[94])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[99])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[29])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[31])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[64])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[114])
  {
    FigSimpleMutexLock();
    v14 = DerivedStorage[115];
    if (v14)
    {
      CFRelease(v14);
      DerivedStorage[115] = 0;
    }

    v15 = DerivedStorage[116];
    if (v15)
    {
      CFRelease(v15);
      DerivedStorage[116] = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
  }

  FigSimpleMutexDestroy();
  v16 = DerivedStorage[12];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[12] = 0;
  }

  v17 = DerivedStorage[13];
  if (v17)
  {
    dispatch_release(v17);
    DerivedStorage[13] = 0;
  }

  v18 = DerivedStorage[14];
  if (v18)
  {
    dispatch_release(v18);
    DerivedStorage[14] = 0;
  }

  v19 = DerivedStorage[2];
  if (v19)
  {
    CFRelease(v19);
  }

  FigSimpleMutexDestroy();
  v20 = DerivedStorage[91];
  if (v20)
  {
    CFRelease(v20);
  }

  FigSimpleMutexDestroy();
  v21 = DerivedStorage[77];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = DerivedStorage[118];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[118] = 0;
  }

  FPSupport_releaseClosedCaptions(DerivedStorage + 38);
  v23 = DerivedStorage[66];
  if (v23)
  {
    CFRelease(v23);
    DerivedStorage[66] = 0;
  }

  if (DerivedStorage[65])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[65] = 0;
  }

  v24 = DerivedStorage[1];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[1] = 0;
  }

  if (DerivedStorage[20])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[35])
  {
    FigSimpleMutexDestroy();
  }

  v25 = DerivedStorage[151];
  if (v25)
  {
    CFRelease(v25);
    DerivedStorage[151] = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t FigMediaValidatorCreate(unint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v13 = 0;
  v10 = FigMediaValidatorCreateInternal(&v13);
  if (!v10)
  {
    v11 = v13;
    if (v13)
    {
      v10 = FigMediaValidatorValidateAsyncInternal(v13, a1, a2, a3, a4, 0);
      if (v10)
      {
        free(v11);
      }

      else
      {
        *a5 = v11;
      }
    }
  }

  return v10;
}

uint64_t mv_thread(uint64_t a1)
{
  URLString = 0;
  *(a1 + 200) = MEMORY[0x19A8D35D0]();
  FigSemaphoreSignal();
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 48))
  {
    v3 = *MEMORY[0x1E695E480];
  }

  else
  {
    FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&URLString, 1);
    v3 = *v2;
    if (URLString)
    {
      *(a1 + 48) = CFURLCreateWithString(v3, URLString, 0);
      CFRelease(URLString);
    }
  }

  v4 = 0;
  v5 = (a1 + 16);
  v6 = *MEMORY[0x1E695FFA0];
  do
  {
    v7 = *(a1 + 80);
    do
    {
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 80) = 0;
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 8) = 0;
      }

      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        *(a1 + 80) = v9;
        *(a1 + 56) = 0;
      }

      else
      {
        v4 |= FigByteStreamFactoryTranslateReferenceSecurityOptions(*(a1 + 184));
        StreamFromURL = FigByteStreamFactoryCreateStreamFromURL(*a1, v4, *(a1 + 48), 0, 0, 0, (a1 + 80), (a1 + 8), (a1 + 16), 0);
        if (StreamFromURL)
        {
          v15 = StreamFromURL;
          if (FigMediaValidatorIsNonByteStreamURLStreaming(StreamFromURL, *a1, *(a1 + 8), *(a1 + 16), 0))
          {
            *(a1 + 107) = 1;
            *(a1 + 105) = 257;
            *(a1 + 44) = 1;
            *(a1 + 40) = 0;
            goto LABEL_41;
          }

          if (v15 == -12662)
          {
            v15 = 0;
            *(a1 + 105) = 257;
          }

          goto LABEL_40;
        }
      }

      if (*(a1 + 44))
      {
        goto LABEL_41;
      }

      v7 = 0;
      v11 = *(a1 + 80);
    }

    while (!v11);
    v25 = 0;
    if (IsReferenceMovie(v11, &v25) || !v25)
    {
      if (mv_IsStreaming(*a1, *(a1 + 8), *(a1 + 16)))
      {
        v17 = 0;
        *(a1 + 107) = 1;
        *(a1 + 105) = 257;
      }

      else
      {
        v17 = mv_ValidateFileFromByteStream(a1 + 64, 0);
      }

      *(a1 + 44) = 1;
      *(a1 + 40) = v17;
      break;
    }

    v23 = 0;
    cf = 0;
    v12 = *(a1 + 192);
    *(a1 + 192) = v12 + 1;
    if (v12 >= 5)
    {
      v15 = FigSignalErrorAt();
LABEL_40:
      *(a1 + 44) = 1;
      *(a1 + 40) = v15;
      break;
    }

    CMBaseObject = CMByteStreamGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(CMBaseObject, v6, v3, &cf);
    }

    v15 = ResolveReferenceMovieWithOptions(*(a1 + 80), cf, *(a1 + 184), &v23);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v15)
    {
      goto LABEL_40;
    }

    v16 = *(a1 + 8);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = v23;
  }

  while (!*(a1 + 44));
LABEL_41:
  v18 = *(a1 + 24);
  if (v18)
  {
    v19 = (*(a1 + 107) != 0) | (2 * (*(a1 + 104) != 0));
    v20 = *(a1 + 40);
    if (!v20)
    {
      if (*(a1 + 105))
      {
        v20 = 0;
      }

      else
      {
        v20 = 4294954346;
        *(a1 + 40) = -12950;
      }
    }

    v18(a1, *(a1 + 32), v20, v19, *(a1 + 88), *(a1 + 96));
  }

  FigSimpleMutexLock();
  *(a1 + 200) = 0;
  v21 = *(a1 + 224);
  FigSimpleMutexUnlock();
  if (v21)
  {
    FigMediaValidatorRelease(a1);
  }

  return 0;
}

void FigSharedRemote_CopyDiskCacheParams(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (!dword_1ED4CA894 && fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v31) != -17508 && !OUTLINED_FUNCTION_31_10())
  {
    xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
    if (!FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_5_44();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && (!v21 || !FigXPCMessageCopyCFURL()))
      {
        if (v29)
        {
          *v29 = xpc_dictionary_get_int64(0, "UsedFileSize");
        }

        if (v27)
        {
          *v27 = xpc_dictionary_get_int64(0, "TargetSize");
        }

        if (v25)
        {
          *v25 = xpc_dictionary_get_int64(0, "TargetFileSize");
        }

        if (v23)
        {
          *v23 = xpc_dictionary_get_BOOL(0, "AutomaticallyManagesSize");
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_843();
}

void FigSharedRemote_CheckOutOfDiskCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFTypeRef a10, uint64_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  if (v23 && (v24 = v21) != 0 && (v25 = v22) != 0)
  {
    v26 = v20;
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    if (!dword_1ED4CA894)
    {
      fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v26);
      OUTLINED_FUNCTION_40_7();
      if (!v27 && !OUTLINED_FUNCTION_31_10())
      {
        xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
        if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString())
        {
          OUTLINED_FUNCTION_2_22();
          if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCFURL() && !FigXPCMessageCopyCFString())
          {
            *v24 = 0;
            *v25 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_860();
}

uint64_t ResolveReferenceMovieWithOptions(uint64_t a1, const __CFURL *a2, int a3, CFURLRef *a4)
{
  result = ResolveReferenceMovie(a1, a2, a4);
  if (!result && a3 && *a4)
  {
    if (FigIsReferenceAllowedBySecurityPolicy())
    {
      return 0;
    }

    else
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      CFRelease(*a4);
      *a4 = 0;
      return v7;
    }
  }

  return result;
}

uint64_t ResolveReferenceMovie(uint64_t a1, const __CFURL *a2, CFURLRef *a3)
{
  dataPointerOut[2] = *MEMORY[0x1E69E9840];
  memset(v75, 0, sizeof(v75));
  dataPointerOut[1] = 0x726D72616D6F6F76;
  v73[1] = 0;
  cf = 0;
  v73[0] = 0;
  BBuf = FigAtomStreamInitWithByteStream();
  v6 = MEMORY[0x1E695E480];
  if (BBuf || (BBuf = FigAtomStreamPositionViaAtomPath(), BBuf) || (BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf(), BBuf) || (BBuf = FigAtomStreamInitWithBBuf(), BBuf) || (BBuf = ParseDescriptorAtoms(v75, ChooseReferenceMovie_descriptorDispatch, 1, v73), BBuf))
  {
    v53 = BBuf;
    goto LABEL_99;
  }

  v7 = v73[0];
  if (!v73[0])
  {
    v52 = 0;
    v53 = 0;
    v50 = 0;
    goto LABEL_84;
  }

  v63 = a3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  allocator = *v6;
  domain = *MEMORY[0x1E69822F0];
  key = *MEMORY[0x1E69822F8];
  entity = *MEMORY[0x1E6982338];
  do
  {
    v11 = *(v7 + 2);
    if (v11)
    {
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; v13 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 2), i);
          *totalLengthOut = 0;
          v16 = OUTLINED_FUNCTION_3_9(ValueAtIndex);
          if (v16)
          {
            goto LABEL_80;
          }

          v17 = dataPointerOut[0];
          v18 = bswap32(*(dataPointerOut[0] + 1));
          switch(v18)
          {
            case 0x61766320u:
              CelestialGetSupportedAVCProfileAndLevel();
              v19 = (totalLengthOut[1] << 24) | (totalLengthOut[0] << 16);
              if (!v19)
              {
                continue;
              }

              break;
            case 0x6176636Cu:
              CelestialGetSupportedAVCProfileAndLevel();
              v19 = totalLengthOut[0];
              if (!totalLengthOut[0])
              {
                continue;
              }

              break;
            case 0x7174696Du:
              v19 = 118489088;
              goto LABEL_28;
            case 0x6D6F6269u:
              MEMORY[0x19A8D3660](&sMobiGestaltInit, InitMobiGestaltOnce);
              v19 = sMobiGestaltValue;
              if (!sMobiGestaltValue)
              {
                continue;
              }

              break;
            case 0x6D737076u:
              v19 = 3;
              goto LABEL_28;
            case 0x61766370u:
              CelestialGetSupportedAVCProfileAndLevel();
              v19 = totalLengthOut[1];
              if (!totalLengthOut[1])
              {
                continue;
              }

              break;
            default:
              goto LABEL_71;
          }

          v17 = dataPointerOut[0];
LABEL_28:
          if (*(v17 + 8) == 256)
          {
            if ((bswap32(*(v17 + 3)) & v19) != bswap32(*(v17 + 2)))
            {
              goto LABEL_71;
            }
          }

          else if (*(v17 + 8) || bswap32(*(v17 + 2)) > v19)
          {
            goto LABEL_71;
          }
        }
      }
    }

    v20 = *(v7 + 1);
    if (v20)
    {
      v16 = OUTLINED_FUNCTION_3_9(v20);
      if (v16)
      {
LABEL_80:
        v53 = v16;
        v52 = 0;
        v50 = 0;
        goto LABEL_81;
      }

      v21 = *(dataPointerOut[0] + 1);
      v22 = v10;
      if (!v10)
      {
        v23 = allocator;
        v24 = SCDynamicStoreCreate(allocator, @"com.apple.celestial", 0, 0);
        if (v24)
        {
          v25 = v24;
          NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(allocator, domain);
          if (NetworkInterface)
          {
            v27 = NetworkInterface;
            v28 = SCDynamicStoreCopyValue(v25, NetworkInterface);
            if (v28)
            {
              v65 = v9;
              v66 = v8;
              v29 = v28;
              v30 = CFGetTypeID(v28);
              v64 = v29;
              if (v30 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v29, key)) != 0 && (v32 = Value, v33 = CFGetTypeID(Value), v33 == CFArrayGetTypeID()) && (v69 = CFArrayGetCount(v32), v69 >= 1))
              {
                theArray = v32;
                v34 = 0;
                OUTLINED_FUNCTION_4_11();
                v61 = v27;
                do
                {
                  v35 = CFArrayGetValueAtIndex(theArray, v34);
                  if (!CFStringHasPrefix(v35, @"lo"))
                  {
                    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v23, domain, v35, entity);
                    if (NetworkInterfaceEntity)
                    {
                      v37 = NetworkInterfaceEntity;
                      v38 = SCDynamicStoreCopyKeyList(v25, NetworkInterfaceEntity);
                      CFRelease(v37);
                      if (v38)
                      {
                        v39 = CFArrayGetCount(v38);
                        CFRelease(v38);
                        if (v39 >= 1)
                        {
                          HasPrefix = CFStringHasPrefix(v35, @"en");
                          v41 = v71;
                          if (HasPrefix)
                          {
                            v41 = 150000;
                          }

                          v71 = v41;
                        }
                      }
                    }

                    v23 = allocator;
                    v27 = v61;
                  }

                  ++v34;
                }

                while (v69 != v34);
              }

              else
              {
                OUTLINED_FUNCTION_4_11();
              }

              CFRelease(v27);
              v8 = v66;
              v9 = v65;
              v42 = v64;
            }

            else
            {
              OUTLINED_FUNCTION_4_11();
              v42 = v27;
            }

            CFRelease(v42);
          }

          else
          {
            OUTLINED_FUNCTION_4_11();
          }

          CFRelease(v25);
          v22 = v71;
        }

        else
        {
          v22 = 11200;
        }
      }

      v43 = bswap32(v21);
      v10 = v22;
      if (v22 >= v43 && v43 >= v9)
      {
        v9 = v43;
        v8 = v7;
      }
    }

    else
    {
      v8 = v7;
    }

LABEL_71:
    v7 = *v7;
  }

  while (v7);
  if (!v8)
  {
    v52 = 0;
    v50 = 0;
    v53 = 0;
LABEL_81:
    a3 = v63;
    v6 = MEMORY[0x1E695E480];
    goto LABEL_82;
  }

  v46 = v8[3];
  *&totalLengthOut[1] = 0;
  dataPointerOut[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(v46, 0, 0, &totalLengthOut[1], dataPointerOut);
  a3 = v63;
  if (DataPointer)
  {
    v53 = DataPointer;
    v6 = MEMORY[0x1E695E480];
    goto LABEL_99;
  }

  v48 = bswap32(*(dataPointerOut[0] + 2));
  v6 = MEMORY[0x1E695E480];
  if (*&totalLengthOut[1] - 12 < v48)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v53 = FigSignalErrorAtGM();
    v50 = 0;
    v52 = 0;
    if (!v53)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v49 = v48;
    v50 = malloc_type_calloc(1uLL, v48 + 1, 0x100004077774924uLL);
    v51 = CMBlockBufferCopyDataBytes(v46, 0xCuLL, v49, v50);
    if (!v51)
    {
LABEL_76:
      v52 = CFStringCreateWithCString(allocator, v50, 0x600u);
      if (v52)
      {
        v53 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        v53 = FigSignalErrorAtGM();
      }

      goto LABEL_82;
    }

    v53 = v51;
    if (v50)
    {
      free(v50);
    }

LABEL_99:
    v52 = 0;
    v50 = 0;
  }

LABEL_82:
  v54 = v73[0];
  if (v73[0])
  {
    do
    {
      v55 = *v54;
      DisposeReferenceMovieAlternate(v54);
      v54 = v55;
    }

    while (v55);
  }

LABEL_84:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    free(v50);
    if (v53)
    {
LABEL_95:
      if (v52)
      {
        goto LABEL_96;
      }

      return v53;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v53 = FigSignalErrorAtGM();
    if (v53)
    {
      goto LABEL_95;
    }
  }

  if (!a3 || (v56 = *v6, v57 = CFURLCreateWithString(*v6, v52, a2), (*a3 = v57) != 0) || (v58 = CFURLCreateStringByAddingPercentEscapes(v56, v52, 0, 0, 0x8000100u)) == 0 || (v59 = v58, *a3 = CFURLCreateWithString(v56, v58, a2), CFRelease(v59), *a3))
  {
    v53 = 0;
    goto LABEL_95;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  v53 = FigSignalErrorAtGM();
  if (v52)
  {
LABEL_96:
    CFRelease(v52);
  }

  return v53;
}

void FigSharedRemote_CheckIntoDiskCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (v20 && v19)
  {
    OUTLINED_FUNCTION_433();
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    if (!dword_1ED4CA894 && fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v18) != -17508 && !OUTLINED_FUNCTION_31_10())
    {
      xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFURL())
      {
        FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_652();
}

uint64_t mv_IsStreaming(const __CFURL *a1, const __CFURL *a2, __CFHTTPMessage *a3)
{
  if (a2)
  {
    a1 = a2;
  }

  if (!a1)
  {
    return 0;
  }

  if (mv_IsMimeTypeInList(a3, streamingMimeType, 0))
  {
    return 1;
  }

  return mv_IsExtensionInList(a1, a3, streamingExtensions, 0);
}

uint64_t mv_IsMimeTypeInList(__CFHTTPMessage *a1, CFStringRef **a2, _BYTE *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = FigCFHTTPCopyMimeTypeFromHTTPResponse(a1);
  if (!v5)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  v6 = v5;
  if (a3)
  {
    *a3 = 1;
  }

  IsStringInCArrayList = mv_IsStringInCArrayList(v5, a2);
  CFRelease(v6);
  return IsStringInCArrayList;
}