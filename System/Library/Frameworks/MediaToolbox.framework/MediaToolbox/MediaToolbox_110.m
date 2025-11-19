void __videoReceiver_copyBuffersFromSamplingSourceForHostTime_block_invoke(uint64_t a1)
{
  v137 = *MEMORY[0x1E69E9840];
  cf = 0;
  value = 0;
  v123 = 0;
  v135 = *MEMORY[0x1E6960C70];
  HIDWORD(v118) = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v2 = *(MEMORY[0x1E6960C70] + 16);
  v3 = *(a1 + 72);
  if (v3 < 1)
  {
LABEL_24:
    Count = OUTLINED_FUNCTION_20_8(*(a1 + 40));
    if (Count)
    {
      Count = CFArrayGetCount(Count);
      v3 = *(a1 + 72);
    }

    if (Count != v3)
    {
      goto LABEL_88;
    }

    v53 = OUTLINED_FUNCTION_20_8(*(a1 + 56));
    if (v53)
    {
      v53 = CFArrayGetCount(v53);
    }

    if (v3 != v53)
    {
      goto LABEL_88;
    }

    v54 = OUTLINED_FUNCTION_20_8(*(a1 + 48));
    if (v54)
    {
      v54 = CFArrayGetCount(v54);
    }

    if (v3 == v54)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v57 = Mutable;
      if (Mutable)
      {
        v58 = MEMORY[0x1E695E4D0];
        if (*(a1 + 176))
        {
          CFDictionarySetValue(Mutable, @"SamplingOptionDoNotConsume", *MEMORY[0x1E695E4D0]);
        }

        if (*(a1 + 178))
        {
          CFDictionarySetValue(v57, @"SamplingOptionSampleUsingMediaTime", *v58);
          if (*(a1 + 192))
          {
            time = *(a1 + 180);
            FigCFDictionarySetCMTime();
          }
        }

        v59 = *(a1 + 144);
        if (v59 >= 1)
        {
          v60 = v2;
          v61 = 0;
          *&v56 = 136316418;
          *v116 = v56;
          do
          {
            CFArrayGetValueAtIndex(*(a1 + 104), v61);
            if (*(a1 + 178) && (v118 & 0x100000000) != 0)
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                time.value = v135;
                time.timescale = timescale;
                time.flags = HIDWORD(v118);
                time.epoch = v60;
                v62 = OUTLINED_FUNCTION_65_4();
                v64 = v63(v62);
              }

              else
              {
                v64 = 4294954514;
              }

              OUTLINED_FUNCTION_0_5(v64);
              if (v80)
              {
                v81 = OUTLINED_FUNCTION_51_6();
                OUTLINED_FUNCTION_74_4(v81, v82, v83, v84, v85, v86, v87, v88, v103, v105, v107, v109, v111[0], v111[1], v116[0], v116[1], v118, v120, BYTE4(v120), v122.value);
                OUTLINED_FUNCTION_233();
                if (v32)
                {
                  v90 = v89;
                }

                else
                {
                  v90 = v58;
                }

                if (v90)
                {
                  v58 = *(a1 + 128);
                  if (v58)
                  {
                    v91 = (CMBaseObjectGetDerivedStorage() + 228);
                  }

                  else
                  {
                    v91 = "";
                  }

                  time.value = v135;
                  time.timescale = timescale;
                  time.flags = HIDWORD(v118);
                  time.epoch = v60;
                  CMTimeGetSeconds(&time);
                  OUTLINED_FUNCTION_3_38();
                  LODWORD(time2.value) = v116[0];
                  OUTLINED_FUNCTION_545();
                  *(&time2.flags + 2) = v58;
                  HIWORD(time2.epoch) = 2082;
                  v127 = v91;
                  v128 = 1024;
                  v129 = v61;
                  v130 = v95;
                  v131 = v96;
                  v132 = 1024;
                  v133 = v97;
                  OUTLINED_FUNCTION_145();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                  LODWORD(v58) = v122.value;
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_467();
                if (*(a1 + 177))
                {
                  *(*(*(a1 + 32) + 8) + 24) = -15931;
                }
              }
            }

            else
            {
              time2 = *(a1 + 152);
              if (*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                time = time2;
                v65 = OUTLINED_FUNCTION_65_4();
                v67 = v66(v65);
              }

              else
              {
                v67 = 4294954514;
              }

              OUTLINED_FUNCTION_0_5(v67);
              if (v68)
              {
                v69 = OUTLINED_FUNCTION_51_6();
                OUTLINED_FUNCTION_74_4(v69, v70, v71, v72, v73, v74, v75, v76, v103, v105, v107, v109, v111[0], v111[1], v116[0], v116[1], v118, v120, BYTE4(v120), v122.value);
                OUTLINED_FUNCTION_233();
                if (v32)
                {
                  v78 = v77;
                }

                else
                {
                  v78 = v58;
                }

                if (v78)
                {
                  v58 = *(a1 + 128);
                  if (v58)
                  {
                    v79 = (CMBaseObjectGetDerivedStorage() + 228);
                  }

                  else
                  {
                    v79 = "";
                  }

                  OUTLINED_FUNCTION_69_2();
                  CMTimeGetSeconds(&time);
                  OUTLINED_FUNCTION_3_38();
                  LODWORD(time2.value) = v116[0];
                  OUTLINED_FUNCTION_545();
                  *(&time2.flags + 2) = v58;
                  HIWORD(time2.epoch) = 2082;
                  v127 = v79;
                  v128 = 1024;
                  v129 = v61;
                  v130 = v92;
                  v131 = v93;
                  v132 = 1024;
                  v133 = v94;
                  OUTLINED_FUNCTION_145();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                  LODWORD(v58) = v122.value;
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_467();
              }
            }

            OUTLINED_FUNCTION_3_38();
            if (v98)
            {
              goto LABEL_77;
            }

            v99 = OUTLINED_FUNCTION_20_8(*(a1 + 64));
            CFArrayAppendValue(v99, v123);
            ++v61;
            v59 = *(a1 + 144);
          }

          while (v61 < v59);
        }

        v100 = *(*(*(a1 + 64) + 8) + 24);
        if (v100)
        {
          v100 = CFArrayGetCount(v100);
          v59 = *(a1 + 144);
        }

        if (v100 == v59)
        {
          goto LABEL_77;
        }
      }

      OUTLINED_FUNCTION_6_36();
      v102 = FigSignalErrorAtGM();
    }

    else
    {
LABEL_88:
      OUTLINED_FUNCTION_6_36();
      v102 = FigSignalErrorAtGM();
      v57 = 0;
    }

    OUTLINED_FUNCTION_30_8(v102, *(a1 + 32));
    goto LABEL_77;
  }

  v4 = 0;
  *v114 = *MEMORY[0x1E6960C70];
  *(&v5 + 1) = *(MEMORY[0x1E6960C70] + 8);
  v6 = &_MergedGlobals_89;
  *&v5 = 136316162;
  *v111 = v5;
  epoch = *(MEMORY[0x1E6960C70] + 16);
  while (1)
  {
    *&v122.value = *v114;
    v122.epoch = v2;
    CFArrayGetValueAtIndex(*(a1 + 88), v4);
    OUTLINED_FUNCTION_69_2();
    v12 = videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime(v8, v9, &time, v10, v11, &value, &v122, &cf);
    v13 = OUTLINED_FUNCTION_0_5(v12);
    if (v21)
    {
      break;
    }

    if ((v122.flags & 1) == 0)
    {
      OUTLINED_FUNCTION_6_36();
      v101 = FigSignalErrorAtGM();
      OUTLINED_FUNCTION_30_8(v101, *(a1 + 32));
      break;
    }

    if (*(v6 + 932) >= 7u)
    {
      HIDWORD(v120) = 0;
      BYTE3(v120) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_233();
      if (v32)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v34 = v6;
        v35 = v2;
        v36 = *(a1 + 128);
        if (v36)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v37 = (DerivedStorage + 228);
        }

        else
        {
          v37 = "";
        }

        OUTLINED_FUNCTION_46_5(DerivedStorage, v24, v25, v26, v27, v28, v29, v30, v103, v105, v107, v109, v111[0], v111[1], v114[0], v114[1], v118, v120, *&v122.value);
        time.epoch = v38;
        Seconds = CMTimeGetSeconds(&time);
        LODWORD(time2.value) = v111[0];
        *(&time2.value + 4) = "videoReceiver_copyBuffersFromSamplingSourceForHostTime_block_invoke";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v36;
        HIWORD(time2.epoch) = 2082;
        v127 = v37;
        v128 = 1024;
        v129 = v4;
        v130 = 2048;
        v131 = Seconds;
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        v2 = v35;
        v6 = v34;
      }

      v13 = OUTLINED_FUNCTION_467();
    }

    OUTLINED_FUNCTION_46_5(v13, v14, v15, v16, v17, v18, v19, v20, v103, v105, v107, v109, v111[0], v111[1], v114[0], v114[1], v118, v120, *&v122.value);
    time.epoch = v40;
    time2.value = v135;
    time2.timescale = timescale;
    time2.flags = HIDWORD(v119);
    time2.epoch = epoch;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      v135 = v122.value;
      HIDWORD(v119) = v122.flags;
      timescale = v122.timescale;
      epoch = v122.epoch;
    }

    v41 = OUTLINED_FUNCTION_20_8(*(a1 + 40));
    CFArrayAppendValue(v41, value);
    v42 = OUTLINED_FUNCTION_20_8(*(a1 + 48));
    CFArrayAppendValue(v42, cf);
    v43 = OUTLINED_FUNCTION_20_8(*(a1 + 56));
    OUTLINED_FUNCTION_46_5(v43, v44, v45, v46, v47, v48, v49, v50, v104, v106, v108, v110, v112, v113, v115, v117, v119, v121, *&v122.value);
    time.epoch = v51;
    FigCFArrayAppendCMTime();
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v4;
    v3 = *(a1 + 72);
    if (v4 >= v3)
    {
      v2 = epoch;
      goto LABEL_24;
    }
  }

  v57 = 0;
LABEL_77:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if (v57)
  {
    CFRelease(v57);
  }
}

uint64_t __videoReceiver_createUpdatedSamplingEventIdentifierForPresentationTime_block_invoke(uint64_t a1)
{
  v2 = a1 + 56;
  *(*(*(v2 - 24) + 8) + 24) = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = *(*(*(v2 - 24) + 8) + 24);
  if (v3 && (time1 = v3[1], v11 = *(a1 + 80), !CMTimeCompare(&time1, &v11)))
  {
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24);
    v2 = *(a1 + 32) + 8;
    v10 = 24;
  }

  else
  {
    v4 = CFGetAllocator(*(a1 + 64));
    v5 = *(a1 + 72);
    v6 = *(*(a1 + 40) + 8);
    time1 = *(a1 + 80);
    v7 = samplingEventIdentifier_create(v4, &time1.value, v5, (v6 + 24));
    result = OUTLINED_FUNCTION_30_8(v7, *(a1 + 48));
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      return result;
    }

    v9 = *(*v2 + 352);
    if (v9)
    {
      CFRelease(v9);
      *(*v2 + 352) = 0;
    }

    OUTLINED_FUNCTION_20_8(*(a1 + 40));
    result = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v10 = 352;
  }

  *(*v2 + v10) = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_SetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoReceiver_createPlaybackStartupPreventionAssertion_cold_2(const void *a1, _DWORD *a2)
{
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t videoReceiver_createPlaybackStartupPreventionAssertion_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createPlaybackStartupPreventionAssertion_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createPlaybackStartupPreventionAssertion_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoReceiver_specifyDataChannelSettingsWithID_cold_1(const void **a1, CFMutableDictionaryRef theDict, void *key)
{
  CFDictionarySetValue(theDict, key, *a1);
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t videoReceiver_specifyDataChannelSettingsWithID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_specifyDataChannelSettingsWithID_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setResourceLifeCycleCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_provideFrameTelemetryForSamplingEvent_cold_2(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t videoReceiver_setResourceLifeCycleHandler_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setActiveConfigurationChangedHandler_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesIfReady_cold_1(uint64_t a1)
{
  result = FigSignalErrorAtGM();
  *(*a1 + 24) = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createImageQueueReceiver_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createImageQueueReceiver_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createImageQueueReceiver_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createImageQueueReceiver_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_releaseImageQueueReceiver_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_releaseImageQueueReceiver_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setImageQueueMessage_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setImageQueueMessage_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setImageQueueMessage_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_setImageQueueMessage_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createDataQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_createDataChannelResource_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_announceDataChannelResourceRemoval_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_getInstanceType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiver_getInstanceType_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t samplingEventIdentifier_create_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t samplingEventIdentifier_create_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamTrackCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamTrackCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoReceiverForCA_configurationIsReadyCallback(uint64_t a1, CMTime *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v9 = **&MEMORY[0x1E6960C70];
  v6 = *(DerivedStorage + 48);
  v8 = *a2;
  if (!FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime(v6, &v8, &v9, &v10))
  {
    if (!v10)
    {
      return;
    }

    if (!videoReceiverForCA_setPendingConfigurationAndAttemptToMakeActive(a3, v10))
    {
      v7 = *(DerivedStorage + 48);
      v8 = v9;
      FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime(v7, &v8, 1);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t videoReceiverForCA_SpecifyPreferredDataChannelGroupsWithID(uint64_t a1, const __CFArray *a2, int a3)
{
  OUTLINED_FUNCTION_279_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v3 || (v7 = DerivedStorage, v8 = CFGetTypeID(v3), v8 != FigVideoReceiverGetTypeID()))
  {
    OUTLINED_FUNCTION_111();
    v15 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (!a2)
  {
LABEL_23:
    OUTLINED_FUNCTION_111();
    v15 = FigSignalErrorAtGM();
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v10 = Count;
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
      if (!ValueAtIndex)
      {
        goto LABEL_23;
      }

      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 != FigDataChannelGroupGetTypeID())
      {
        goto LABEL_23;
      }
    }

    while (v10 != ++v11);
  }

LABEL_9:
  v14 = CFGetAllocator(v3);
  v15 = FigDataChannelGroupsArrayCopyAsDictionary(a2, v14, &cf);
  if (!v15)
  {
    FigSimpleMutexLock();
    v16 = *(v7 + 152);
    v17 = cf;
    *(v7 + 152) = cf;
    if (v17)
    {
      CFRetain(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v18 = *(v7 + 144);
    *(v7 + 144) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    *(v7 + 160) = a3;
    FigSimpleMutexUnlock();
    v15 = videoReceiverForCA_postPreferencesChangedNotification(v3, 0);
  }

LABEL_19:
  v19 = v15;
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t videoReceiverForCA_SpecifyDataChannelSettingsWithID(uint64_t a1, const __CFArray *a2)
{
  OUTLINED_FUNCTION_279_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigVideoReceiverDataChannelSettingsCopySerializable(a2, &cf);
  if (!v5)
  {
    FigSimpleMutexLock();
    v6 = *(DerivedStorage + 176);
    *(DerivedStorage + 176) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(DerivedStorage + 184);
    v8 = cf;
    *(DerivedStorage + 184) = cf;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    FigSimpleMutexUnlock();
    v5 = videoReceiverForCA_postPreferencesChangedNotification(v2, 1);
  }

  v9 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t videoReceiverForCA_AddDataChannelConfiguration(const void *a1, const void *a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    if (a3 || (*(a4 + 12) & 1) != 0)
    {
      ChannelCount = FigDataChannelConfigurationGetChannelCount(a2);
      if (ChannelCount < 1)
      {
LABEL_9:
        if (a3)
        {
          result = videoReceiverForCA_setPendingConfigurationAndAttemptToMakeActive(a1, a2);
          if (!result)
          {
            return FigVideoReceiverConfigurationSchedulerReset(*(v9 + 48));
          }
        }

        else
        {
          v14 = *(v9 + 48);
          v15 = *a4;
          v16 = *(a4 + 16);
          return FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime(v14, a2, &v15);
        }
      }

      else
      {
        v11 = ChannelCount;
        v12 = 0;
        while (1)
        {
          if (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a2, v12) == 1)
          {
            LODWORD(v15) = 0;
            result = FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex(a2, v12, &v15);
            if (result)
            {
              break;
            }
          }

          if (v11 == ++v12)
          {
            goto LABEL_9;
          }
        }
      }
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    FigSignalErrorAtGM();
    return 0;
  }

  return result;
}

uint64_t videoReceiverForCA_InformRendererThatContentsChanged()
{
  OUTLINED_FUNCTION_279_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CFGetAllocator(v0);
  v3 = FigDeferredTransactionCreate(v2, &cf);
  if (!v3)
  {
    FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(cf, *(DerivedStorage + 24));
    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      CFRetain(v4);
      v5 = *(DerivedStorage + 24);
    }

    else
    {
      v5 = 0;
    }

    FPSupport_AppendDeferredTransactionChangeToRelease(cf, v5);
    FigDeferredTransactionCommit(cf, 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t videoReceiverForCA_UpdateDurationWithDeferredTransaction(const void *a1, uint64_t a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v6 = MEMORY[0x1E6960C88];
  v14 = *MEMORY[0x1E6960C88];
  *(DerivedStorage + 56) = *MEMORY[0x1E6960C88];
  v7 = *(v6 + 16);
  *(DerivedStorage + 72) = v7;
  FigSimpleMutexUnlock();
  if (!a3)
  {
    v8 = CFGetAllocator(a1);
    FigDeferredTransactionCreate(v8, &cf);
    a3 = cf;
  }

  v9 = *(DerivedStorage + 24);
  v15 = v14;
  v16 = v7;
  v10 = FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(a3, &v15, v9);
  if (!v10)
  {
    v11 = *(DerivedStorage + 24);
    if (v11)
    {
      CFRetain(v11);
      v12 = *(DerivedStorage + 24);
    }

    else
    {
      v12 = 0;
    }

    FPSupport_AppendDeferredTransactionChangeToRelease(a3, v12);
  }

  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig(const void *a1, void *a2, uint64_t a3)
{
  v117 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E6960C70];
  v95 = 0;
  v96 = 0;
  v113 = *MEMORY[0x1E6960C70];
  v114 = *(MEMORY[0x1E6960C70] + 8);
  v8 = CFGetAllocator(a1);
  v9 = FigDeferredTransactionCreate(v8, &v95);
  if (v9)
  {
    v45 = v9;
    v26 = 0;
    v24 = 0;
    goto LABEL_50;
  }

  if (!*(DerivedStorage + 96))
  {
    goto LABEL_93;
  }

  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    if (FigDataChannelConfigurationGetChannelCount(v10))
    {
      v11 = *(DerivedStorage + 96);
      cf[0].a = 0.0;
      if (v11)
      {
        if (FigDataChannelConfigurationGetChannelCount(v11))
        {
          v12 = videoReceiverForCA_copyImageQueueAndChannelSettingsFromConfiguration(a1, v11, cf, 0, 0);
          a = cf[0].a;
          if (v12)
          {
            v15 = 1;
            if (!*&cf[0].a)
            {
LABEL_10:
              if (!v15)
              {
                goto LABEL_11;
              }

LABEL_93:
              v26 = 0;
              v24 = 0;
              v45 = 0;
              goto LABEL_50;
            }
          }

          else
          {
            HasFirstFrameEnqueued = videoReceiverForCA_imageQueueOrSlotHasFirstFrameEnqueued(a1, v11, *&cf[0].a);
            a = cf[0].a;
            v15 = HasFirstFrameEnqueued == 0;
            if (!*&cf[0].a)
            {
              goto LABEL_10;
            }
          }

          CFRelease(*&a);
          goto LABEL_10;
        }
      }
    }
  }

LABEL_11:
  v90 = a2;
  if (dword_1ED4CBE90)
  {
    LODWORD(v106.a) = 0;
    LOBYTE(type.a) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    a_low = LODWORD(v106.a);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, LOBYTE(type.a)))
    {
      v18 = a_low;
    }

    else
    {
      v18 = a_low & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = CMBaseObjectGetDerivedStorage();
      v20 = (v19 + 8);
      v21 = *(DerivedStorage + 88);
      v22 = *(DerivedStorage + 96);
      if (!v19)
      {
        v20 = "";
      }

      *v115 = 136316162;
      *&v115[4] = "videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig";
      *&v115[12] = 2048;
      *&v115[14] = a1;
      *&v115[22] = 2082;
      *&v115[24] = v20;
      *&v115[32] = 2114;
      *&v115[34] = v21;
      *&v115[42] = 2114;
      *&v115[44] = v22;
      OUTLINED_FUNCTION_3_44();
      OUTLINED_FUNCTION_2_55();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_60();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v24 = *(DerivedStorage + 88);
  v23 = *(DerivedStorage + 96);
  if (v23)
  {
    v26 = CFRetain(v23);
    v25 = *(DerivedStorage + 96);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v113 = *(DerivedStorage + 104);
  v92 = *(DerivedStorage + 116);
  v114 = *(DerivedStorage + 112);
  v91 = *(DerivedStorage + 120);
  *(DerivedStorage + 88) = v25;
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 104) = *v7;
  *(DerivedStorage + 120) = *(v7 + 16);
  v27 = OUTLINED_FUNCTION_797();
  videoReceiverForCA_copyImageQueueAndChannelSettingsFromConfiguration(v27, v28, v29, 0, 0);
  v30 = OUTLINED_FUNCTION_797();
  *(DerivedStorage + 80) = videoReceiverForCA_imageQueueOrSlotHasFirstFrameEnqueued(v30, v31, v32) != 0;
  v93 = v95;
  v111 = v113;
  v112 = v114;
  v109 = 0;
  v94 = CMBaseObjectGetDerivedStorage();
  v108 = 0;
  v107 = 0;
  v33 = *(MEMORY[0x1E695EFD0] + 16);
  *&v106.a = *MEMORY[0x1E695EFD0];
  *&v106.c = v33;
  *&v106.tx = *(MEMORY[0x1E695EFD0] + 32);
  v34 = *(MEMORY[0x1E695F050] + 16);
  v104 = *MEMORY[0x1E695F050];
  v105 = v34;
  v103 = *MEMORY[0x1E695EFF8];
  v102 = 0;
  v101 = 0;
  if (dword_1ED4CBE90)
  {
    v35 = OUTLINED_FUNCTION_5_42();
    v36 = LODWORD(type.a);
    if (os_log_type_enabled(v35, LOBYTE(v98.a)))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v38 = CMBaseObjectGetDerivedStorage();
      v39 = *(v94 + 24);
      v40 = (v38 + 8);
      if (!v38)
      {
        v40 = "";
      }

      *v115 = 136316162;
      *&v115[4] = "videoReceiverForCA_applyConfigurationToLayersAtHostTime";
      *&v115[12] = 2048;
      *&v115[14] = a1;
      *&v115[22] = 2082;
      *&v115[24] = v40;
      *&v115[32] = 2114;
      *&v115[34] = v26;
      *&v115[42] = 2114;
      *&v115[44] = v39;
      OUTLINED_FUNCTION_3_44();
      OUTLINED_FUNCTION_2_55();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_60();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v26 || !FigDataChannelConfigurationGetChannelCount(v26))
  {
    if (dword_1ED4CBE90)
    {
      v41 = OUTLINED_FUNCTION_5_42();
      v42 = LODWORD(type.a);
      if (os_log_type_enabled(v41, LOBYTE(v98.a)))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        CMBaseObjectGetDerivedStorage();
        *v115 = 136315650;
        *&v115[4] = "videoReceiverForCA_applyConfigurationToLayersAtHostTime";
        OUTLINED_FUNCTION_1_56();
        OUTLINED_FUNCTION_3_44();
        OUTLINED_FUNCTION_2_55();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_60();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v44 = FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(v93, *(v94 + 24), 0);
    goto LABEL_42;
  }

  v48 = OUTLINED_FUNCTION_797();
  v44 = videoReceiverForCA_copyImageQueueAndChannelSettingsFromConfiguration(v48, v49, v50, 0, v51);
  if (!v44)
  {
    v52 = *(v94 + 24);
    v53 = v101;
    *&type.a = v101;
    v98.a = 0.0;
    if (dword_1ED4CBE90)
    {
      LODWORD(t2.a) = 0;
      v110 = OS_LOG_TYPE_DEFAULT;
      v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v55 = LODWORD(t2.a);
      if (os_log_type_enabled(v54, v110))
      {
        v56 = v55;
      }

      else
      {
        v56 = v55 & 0xFFFFFFFE;
      }

      if (v56)
      {
        CMBaseObjectGetDerivedStorage();
        *v115 = 136316162;
        *&v115[4] = "videoReceiverForCA_attachVideoLayerToImageQueue";
        OUTLINED_FUNCTION_1_56();
        *&v115[32] = 2114;
        *(v57 + 34) = v52;
        *&v115[42] = 2114;
        *(v57 + 44) = v53;
        OUTLINED_FUNCTION_3_44();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_60();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v58 = v93;
    v46 = v92;
    if (*&v93 == 0.0)
    {
      v59 = CFGetAllocator(a1);
      v60 = FigDeferredTransactionCreate(v59, &v98);
      if (v60)
      {
        v45 = v60;
        v62 = 0;
        goto LABEL_73;
      }

      v58 = LODWORD(v98.a);
    }

    v61 = CFGetAllocator(a1);
    v62 = CFArrayCreate(v61, &type, 1, MEMORY[0x1E695E9C0]);
    if (v62)
    {
      v63 = FPSupport_AppendDeferredTransactionChangeForSettingImageQueueSlotsOnVideoLayers(v58, v62, v52);
    }

    else
    {
      v63 = FigSignalErrorAtGM();
    }

    v45 = v63;
LABEL_73:
    FigDeferredTransactionCommit(*&v98.a, 0);
    if (*&v98.a)
    {
      CFRelease(*&v98.a);
    }

    if (v62)
    {
      CFRelease(v62);
    }

    if (v45)
    {
      goto LABEL_43;
    }

    if (FigCFDictionaryGetInt32IfPresent())
    {
      v64 = FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(v93, v108, *(v94 + 24));
      if (v64)
      {
LABEL_135:
        v45 = v64;
        goto LABEL_43;
      }
    }

    if (!FigCFDictionaryGetBooleanIfPresent())
    {
LABEL_100:
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        goto LABEL_109;
      }

      FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(v93, *(v94 + 24), *&v104, *(&v104 + 1), *&v105, *(&v105 + 1));
      v73 = v104;
      v74 = v105;
      v75 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v76 = *(v75 + 240);
      if (v76)
      {
        if (!*(v75 + 248))
        {
          v78 = 0;
          v76(a1, v93, 0, *&v73, *(&v73 + 1), *&v74, *(&v74 + 1));
LABEL_107:
          FigSimpleMutexUnlock();
          if (v78)
          {
            CFRelease(v78);
          }

LABEL_109:
          if (FigCFDictionaryGetCGPointIfPresent())
          {
            v79 = *(MEMORY[0x1E695EFF8] + 8) != *(&v103 + 1) || *MEMORY[0x1E695EFF8] != *&v103;
          }

          else
          {
            v79 = 0;
          }

          if (FigCFDictionaryGetValueIfPresent())
          {
            memset(cf, 0, 48);
            FigGetCGAffineTransformFrom3x3MatrixArray(v107, cf);
            v110 = OS_LOG_TYPE_DEFAULT;
            v100 = 0;
            *v115 = cf[0];
            RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(v115, &v110, &v100);
            memset(v115, 0, 48);
            CGAffineTransformMakeRotation(v115, RotationAngleAndFlipsFromCGAffineTransform * 3.14159265 / 180.0);
            memset(&type, 0, sizeof(type));
            v81 = -1.0;
            if (v100)
            {
              v82 = -1.0;
            }

            else
            {
              v82 = 1.0;
            }

            if (v110 == OS_LOG_TYPE_DEFAULT)
            {
              v81 = 1.0;
            }

            CGAffineTransformMakeScale(&type, v82, v81);
            v98 = *v115;
            t2 = type;
            CGAffineTransformConcat(&v106, &v98, &t2);
          }

          v83 = *(v94 + 24);
          cf[0] = v106;
          v64 = FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(v93, v79, cf, v83, *&v103, *(&v103 + 1));
          if (!v64)
          {
            if ((v46 & 1) == 0 || (cf[0].a = v111, *&cf[0].b = __PAIR64__(v46, v112), cf[0].c = v91, v64 = FigDeferredTransactionSetCommitHostTime(v93, cf), !v64))
            {
              v84 = *(v94 + 24);
              if (v84)
              {
                CFRetain(v84);
                v85 = *(v94 + 24);
              }

              else
              {
                v85 = 0;
              }

              FPSupport_AppendDeferredTransactionChangeToRelease(v93, v85);
              if (dword_1ED4CBE90 >= 2)
              {
                LODWORD(type.a) = 0;
                LOBYTE(v98.a) = 0;
                v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v87 = LODWORD(type.a);
                if (os_log_type_enabled(v86, LOBYTE(v98.a)))
                {
                  v88 = v87;
                }

                else
                {
                  v88 = v87 & 0xFFFFFFFE;
                }

                if (v88)
                {
                  CMBaseObjectGetDerivedStorage();
                  *v115 = 136315906;
                  *&v115[4] = "videoReceiverForCA_applyConfigurationToLayersAtHostTime";
                  OUTLINED_FUNCTION_1_56();
                  *&v115[32] = 2114;
                  *(v89 + 34) = v26;
                  OUTLINED_FUNCTION_3_44();
                  OUTLINED_FUNCTION_2_55();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_0_60();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v45 = 0;
              goto LABEL_43;
            }
          }

          goto LABEL_135;
        }

        v77 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v77)
        {
          v78 = v77;
          (*(v75 + 240))(a1, v93, v77, *&v73, *(&v73 + 1), *&v74, *(&v74 + 1));
          goto LABEL_107;
        }
      }

      FigSimpleMutexUnlock();
      goto LABEL_109;
    }

    v65 = *(v94 + 24);
    v66 = v102;
    if (v65)
    {
      Count = CFArrayGetCount(*(v94 + 24));
    }

    else
    {
      Count = 0;
    }

    cf[0].a = 0.0;
    v68 = *&v93;
    if (*&v93 == 0.0)
    {
      v69 = CFGetAllocator(a1);
      v70 = FigDeferredTransactionCreate(v69, cf);
      if (v70)
      {
        goto LABEL_96;
      }

      v68 = cf[0].a;
    }

    if (Count < 1)
    {
LABEL_92:
      v45 = 0;
      goto LABEL_97;
    }

    v71 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v65, v71);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v70 = FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(*&v68, ValueAtIndex, v66 == 0, "videoReceiverForCA_applyDisallowsDisplayCompositingToLayers");
      if (v70)
      {
        goto LABEL_96;
      }

      if (Count == ++v71)
      {
        goto LABEL_92;
      }
    }

    v70 = FigSignalErrorAtGM();
LABEL_96:
    v45 = v70;
LABEL_97:
    FigDeferredTransactionCommit(*&cf[0].a, 0);
    v46 = v92;
    if (*&cf[0].a)
    {
      CFRelease(*&cf[0].a);
    }

    if (v45)
    {
      goto LABEL_43;
    }

    goto LABEL_100;
  }

LABEL_42:
  v45 = v44;
  v46 = v92;
LABEL_43:
  if (v109)
  {
    CFRelease(v109);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (!v45)
  {
    v45 = videoReceiverForCA_appendPostCommitChangeToAnnounceRemovalOfConfiguration(a1, v95, v24, "videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig");
    if (!v45)
    {
      *v90 = v26;
      *a3 = v113;
      *(a3 + 8) = v114;
      *(a3 + 12) = v46;
      *(a3 + 16) = v91;
      v26 = 0;
    }
  }

LABEL_50:
  FigDeferredTransactionCommit(v95, 0);
  if (v95)
  {
    CFRelease(v95);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v45;
}

uint64_t videoReceiverForCA_notifyActiveConfigurationWasReplaced(const void *a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  *cf = 0u;
  v7 = OUTLINED_FUNCTION_797();
  v11 = videoReceiverForCA_copyImageQueueAndChannelSettingsFromConfiguration(v7, v8, 0, v9, v10);
  if (v11)
  {
    goto LABEL_15;
  }

  FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier(a2, cf);
  *&v38[1] = *a3;
  v38[3] = *(a3 + 16);
  LODWORD(v39) = FigDataChannelConfigurationGetModificationID(a2);
  v12 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v12, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigDataChannelConfigurationGetActivationID(a2);
  FigCFDictionarySetUInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  FigSimpleMutexLock();
  v21 = DerivedStorage[26];
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_7_24(v21, v14, v15, v16, v17, v18, v19, v20, v29, v30, v31, v32, v33, v34, v35, v36, cf[0], cf[1], v38[0], v38[1], *&v38[2]);
    v35 = v39;
    v23(v22);
  }

  if (DerivedStorage[27])
  {
    v24 = DerivedStorage[28];
    if (!v24)
    {
      v25 = 0;
LABEL_10:
      v26 = OUTLINED_FUNCTION_7_24(v24, v14, v15, v16, v17, v18, v19, v20, v29, v30, v31, v32, v33, v34, v35, v36, cf[0], cf[1], v38[0], v38[1], *&v38[2]);
      v35 = v39;
      v27(a1, &v29, v25, v26);
      goto LABEL_11;
    }

    v24 = FigCFWeakReferenceHolderCopyReferencedObject();
    v25 = v24;
    if (v24)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_11:
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

LABEL_15:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v38[0])
  {
    CFRelease(v38[0]);
  }

  return v11;
}

uint64_t videoReceiverForCA_appendPostCommitChangeToAnnounceRemovalOfConfiguration(const void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (v8)
  {
    v9 = v8;
    if (a1)
    {
      v10 = CFRetain(a1);
    }

    else
    {
      v10 = 0;
    }

    v11 = CFRetain(a3);
    *v9 = v10;
    v9[1] = v11;

    return FigDeferredTransactionAppendPostCommitChangeWithCallback(a2, a4, v9, disposeAnnounceRemovalOfConfigurationContext, copyDescriptionForAnnouncingRemovalOfConfiguration, announceRemovalOfConfigurationCallback);
  }

  else
  {
    OUTLINED_FUNCTION_111();

    return FigSignalErrorAtGM();
  }
}

uint64_t videoReceiverForCA_announceRemovalOfConfiguration(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    if (FigDataChannelConfigurationGetActivationID(a2))
    {
      FigCFDictionarySetInt32();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v6 = 0;
    }

    else
    {
      v6 = FigSignalErrorAtGM();
    }

    CFRelease(v5);
    return v6;
  }

  return FigSignalErrorAtGM();
}

uint64_t videoReceiverForCA_copyImageQueueAndChannelSettingsFromConfiguration(const void *a1, uint64_t a2, void *a3, CFArrayRef *a4, void *a5)
{
  v29 = 0;
  if (a2)
  {
    ChannelCount = FigDataChannelConfigurationGetChannelCount(a2);
    if (ChannelCount < 1)
    {
      ChannelSettingsAtIndex = 0;
      v16 = 0;
      v17 = 0;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = ChannelCount;
      v11 = 0;
      while (1)
      {
        v12 = OUTLINED_FUNCTION_396();
        if (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(v12, v13) == 1)
        {
          break;
        }

        if (v10 == ++v11)
        {
          OUTLINED_FUNCTION_111();

          return FigSignalErrorAtGM();
        }
      }

      v18 = OUTLINED_FUNCTION_396();
      result = FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex(v18, v19, v20);
      if (result)
      {
        return result;
      }

      UInt32 = FigCFNumberCreateUInt32();
      if (!UInt32)
      {
        OUTLINED_FUNCTION_111();
        return FigSignalErrorAtGM();
      }

      v17 = UInt32;
      v22 = OUTLINED_FUNCTION_396();
      ChannelSettingsAtIndex = FigDataChannelConfigurationGetChannelSettingsAtIndex(v22, v23);
      v24 = OUTLINED_FUNCTION_396();
      ChannelDescriptionTagsAtIndex = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(v24, v25);
      if (!ChannelDescriptionTagsAtIndex)
      {
        v16 = 0;
        if (a3)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v26 = CFGetAllocator(a1);
      v16 = CFArrayCreate(v26, &ChannelDescriptionTagsAtIndex, 1, MEMORY[0x1E695E9C0]);
      if (!a3)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    *a3 = v17;
    v17 = 0;
LABEL_16:
    if (a4)
    {
      *a4 = v16;
      v16 = 0;
    }

    if (a5)
    {
      if (ChannelSettingsAtIndex)
      {
        v27 = CFRetain(ChannelSettingsAtIndex);
      }

      else
      {
        v27 = 0;
      }

      *a5 = v27;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  return 0;
}

uint64_t videoReceiverForCA_imageQueueOrSlotHasFirstFrameEnqueued(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 0;
  }

  idx = -1;
  v8 = *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(*(DerivedStorage + 128), a3);
  if (v8)
  {
    return 1;
  }

  result = videoReceiverForCA_findImageQueueOrSlotInConfig(a2, a3, &idx);
  if (result)
  {
    FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex(a2, idx, &v8);
    return v8;
  }

  return result;
}

uint64_t videoReceiverForCA_findImageQueueOrSlotInConfig(uint64_t a1, uint64_t a2, CFIndex *a3)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
  UInt32 = FigCFNumberGetUInt32();
  if (!UInt32)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
    return 0;
  }

  if (ChannelCount < 1)
  {
    return 0;
  }

  v8 = UInt32;
  v9 = 0;
  while (1)
  {
    v10 = 0;
    if (!FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex(a1, v9, &v10) && v10 == v8)
    {
      break;
    }

    if (ChannelCount == ++v9)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  return 1;
}

uint64_t FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverCreateWithVideoLayer_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_SetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void videoReceiverForCA_SetProperty_cold_2(const void *a1, const void *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 272);
  *(DerivedStorage + 272) = a2;
  CFRetain(a2);
  if (v7)
  {
    CFRelease(v7);
  }

  FigSimpleMutexUnlock();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v8 = CFGetAllocator(a1);
  v9 = FigDeferredTransactionCreate(v8, &cf);
  *a3 = v9;
  if (!v9)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 272))
    {
      FirstValue = FigCFArrayGetFirstValue();
      v11 = *(DerivedStorage + 264);
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v11 = objc_opt_new();
        v12 = 0;
        *(DerivedStorage + 264) = v11;
      }

      videoReceiverForCA_appendDeferredTransactionChangeForAddingAirPlaySublayerToVideoLayer(cf, FirstValue, v11, *(DerivedStorage + 272), v12);
      if (FirstValue)
      {
        CFRetain(FirstValue);
      }

      FPSupport_AppendDeferredTransactionChangeToRelease(cf, FirstValue);
    }

    else
    {
      v13 = *(DerivedStorage + 264);
      if (v13)
      {
        videoReceiverForCA_appendDeferredTransactionChangeForAddingAirPlaySublayerToVideoLayer(cf, 0, v13, 0, 1);
        FPSupport_AppendDeferredTransactionChangeToRelease(cf, *(DerivedStorage + 264));
        *(DerivedStorage + 264) = 0;
      }
    }

    FigSimpleMutexUnlock();
  }

  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t videoReceiverForCA_SetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_SetActiveConfigurationChangedHandler_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_SetActiveConfigurationChangedCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_postPreferencesChangedNotification_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_SetBoundsChangedCallback_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_HandleImageQueueSlotEvent_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_HandleImageQueueSlotEvent_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_HandleImageQueueSlotEvent_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_HandleImageQueueSlotEvent_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCALayer_GetInstanceType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCALayer_GetInstanceType_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoReceiverForCA_postReadyForDisplayChanged_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InitDiskCache_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InitDiskCache_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSharedPlayerCreateWithOptions(const __CFAllocator *a1, int a2, const void *a3, CFTypeRef *a4)
{
  cf[0] = 0;
  cf[1] = 0;
  if ((a2 & 0x820) == 0x20)
  {
    v7 = a2 | 0x800;
  }

  else
  {
    v7 = a2;
  }

  if ((v7 & 0x30) == 0x20)
  {
    v7 |= 0x10u;
  }

  if ((v7 & 0x1110) == 0x10)
  {
    v7 |= 0x1000u;
  }

  if ((v7 & 0x40) != 0)
  {
    v10 = FigPlayerAsyncCreateWithEngineTopologyAndOptions(a1, v7 & 0xFFFFFFBF, a3, cf);
    goto LABEL_18;
  }

  if ((v7 & 0x20) != 0)
  {
    v10 = FigPlayerRemoteCreateWithOptions(a1, v7 & 0xFFFFFF9F, a3, cf);
LABEL_18:
    v8 = v10;
    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((v7 & 0x400) != 0)
  {
    v12 = OUTLINED_FUNCTION_1_57(v7, v42, v43, v44, v45, cf[0]);
    if (v12)
    {
      goto LABEL_52;
    }

    v27 = OUTLINED_FUNCTION_0_61();
    v17 = FigPlayerCoordinatorCreateWithOptions(v27, v28, v29, v30);
  }

  else if ((v7 & 0x800) != 0)
  {
    v12 = OUTLINED_FUNCTION_1_57(v7, v42, v43, v44, v45, cf[0]);
    if (v12)
    {
      goto LABEL_52;
    }

    v31 = OUTLINED_FUNCTION_0_61();
    v17 = FigPlayerCelesteCreateWithOptions(v31, v32, v33, v34);
  }

  else
  {
    if ((v7 & 0x10) == 0)
    {
      if ((v7 & 0x1000) == 0)
      {
        v8 = 0;
        switch(v7 & 0xF)
        {
          case 0:
            v9 = FigSignalErrorAtGM();
            goto LABEL_51;
          case 4:
            goto LABEL_19;
          case 5:
            OUTLINED_FUNCTION_2_56();
            v9 = FigPlayerStreamCreateWithOptions();
            goto LABEL_51;
          case 6:
            if (sharedplayer_enableOverlapPlayer())
            {
              v44 = 0;
              v45 = 0;
              v8 = FigPlayerSurrogateCreateWithOptions(a1, a3, &v45);
              if (!v8)
              {
                v18 = *MEMORY[0x1E695E480];
                MutableCopy = FigCFDictionaryCreateMutableCopy();
                StringValue = FigCFDictionaryGetStringValue();
                v21 = FigCFDictionaryGetStringValue();
                v22 = CFStringCreateWithFormat(v18, 0, @"%@.2", StringValue);
                v23 = CFStringCreateWithFormat(v18, 0, @"%@.2", v21);
                CFDictionarySetValue(MutableCopy, @"LoggingIdentifier", v22);
                CFDictionarySetValue(MutableCopy, @"PlayerName", v23);
                v8 = FigPlayerSurrogateCreateWithOptions(a1, MutableCopy, &v44);
                if (v22)
                {
                  CFRelease(v22);
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                if (v23)
                {
                  CFRelease(v23);
                }

                if (!v8)
                {
                  v8 = FigPlayerOverlapCreateWithOptions(a1, v45, v44, a3, cf);
                }
              }

              if (v45)
              {
                CFRelease(v45);
              }

              if (v44)
              {
                CFRelease(v44);
              }
            }

            else
            {
              v39 = OUTLINED_FUNCTION_2_56();
              v9 = FigPlayerSurrogateCreateWithOptions(v39, v40, v41);
LABEL_51:
              v8 = v9;
            }

            break;
          default:
            v24 = OUTLINED_FUNCTION_2_56();
            v9 = FigPlayerFileCreateWithOptions(v24, v25, v26);
            goto LABEL_51;
        }

        goto LABEL_19;
      }

      if ((v7 & 0x100) != 0)
      {
        v8 = FigSignalErrorAtGM();
        goto LABEL_20;
      }

      v12 = OUTLINED_FUNCTION_1_57(v7, v42, v43, v44, v45, cf[0]);
      if (!v12)
      {
        v13 = OUTLINED_FUNCTION_0_61();
        v17 = FigPlayerAirPlayCreateWithOptions(v13, v14, v15, v16);
        goto LABEL_26;
      }

LABEL_52:
      v8 = v12;
      goto LABEL_20;
    }

    v12 = OUTLINED_FUNCTION_1_57(v7, v42, v43, v44, v45, cf[0]);
    if (v12)
    {
      goto LABEL_52;
    }

    v35 = OUTLINED_FUNCTION_0_61();
    v17 = FigPlayerCentralCreateWithOptions(v35, v36, v37, v38);
  }

LABEL_26:
  v8 = v17;
  if (!v17)
  {
LABEL_19:
    *a4 = cf[0];
    cf[0] = 0;
  }

LABEL_20:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v8;
}

void setContentDo_0(uint64_t *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = *a1;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1[1]);
  if (MutableCopy)
  {
    v4 = MutableCopy;
    v5 = *(v2 + 56);
    *(v2 + 56) = MutableCopy;
    CFRetain(MutableCopy);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);
    Value = CFDictionaryGetValue(*(v2 + 56), @"kFigSubtitleRenderer_RegionCues");
    if (Value)
    {
      v7 = CFDictionaryCreateMutableCopy(v1, 0, Value);
      if (!v7)
      {
        goto LABEL_24;
      }

      Count = CFArrayGetCount(*(v2 + 64));
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 64), v10);
          v12 = [ValueAtIndex getContentID];
          if (v12 && (v13 = v12, CFDictionaryGetValue(v7, v12)))
          {
            CFDictionaryRemoveValue(v7, v13);
            ++v10;
          }

          else
          {
            [ValueAtIndex removeFromSuperlayer];
            CFArrayRemoveValueAtIndex(*(v2 + 64), v10);
            --v9;
          }
        }

        while (v10 < v9);
      }

      v14 = CFDictionaryGetCount(v7);
      if (v14)
      {
        v15 = v14;
        v16 = malloc_type_calloc(v14, 8uLL, 0xC0040B8AA526DuLL);
        v17 = malloc_type_calloc(v15, 8uLL, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(v7, v16, v17);
        if (v15 < 1)
        {
LABEL_18:
          *(v2 + 72) = 0;
        }

        else
        {
          v18 = 0;
          while (1)
          {
            v19 = objc_alloc_init(FigSubtitleWebVTTCueCALayer);
            if (!v19)
            {
              break;
            }

            v20 = v19;
            [*v2 addSublayer:v19];
            CFArrayAppendValue(*(v2 + 64), v20);
            [(FigSubtitleWebVTTCueCALayer *)v20 setRenderer:*(v2 + 16)];
            [*v2 bounds];
            [(FigSubtitleWebVTTCueCALayer *)v20 setViewport:?];
            [(FigSubtitleWebVTTCueCALayer *)v20 setContent:v17[v18]];

            if (v15 == ++v18)
            {
              goto LABEL_18;
            }
          }
        }
      }

      else
      {
LABEL_24:
        v17 = 0;
        v16 = 0;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v7 = 0;
    }

    free(v16);
    free(v17);
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

uint64_t FigMediaSelectionGroupsCreateMatchingSelection(const __CFArray *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (a1)
  {
    Value = FigCFDictionaryGetValue();
    v5 = FigCFDictionaryGetValue();
    v15 = FigCFDictionaryGetValue();
    v6 = FigCFDictionaryGetValue();
    v14 = FigCFDictionaryGetValue();
    v7 = FigCFDictionaryGetValue();
    if (v7)
    {
      CFGetTypeID(v7);
      CFArrayGetTypeID();
      if (!Value)
      {
        return MutableCopy;
      }
    }

    else if (!Value)
    {
      return MutableCopy;
    }

    if (v6 || v14 || v15)
    {
      v16 = 0;
      FindMediaTypeInMediaArray(a1, v5, &v16);
      v9 = FigCFDictionaryGetValue();
      if (v9)
      {
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v10 = 0;
          theDict = MutableCopy;
          while (1)
          {
            FigCFArrayGetValueAtIndex();
            v11 = FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFArrayCopyValuesAsCFSet();
            FigCFArrayCopyValuesAsCFSet();
            if (FigCFEqual())
            {
              if (FigCFEqual() && FigCFEqual() && FigCFEqual())
              {
                break;
              }
            }

            MutableCopy = theDict;
            if (Count == ++v10)
            {
              return MutableCopy;
            }
          }

          MutableCopy = theDict;
          if (!FigCFEqual())
          {
            CFDictionarySetValue(theDict, @"MediaSelectionOptionsPersistentID", v11);
          }
        }
      }
    }
  }

  return MutableCopy;
}

const __CFDictionary *FindMediaTypeInMediaArray(const __CFArray *a1, uint64_t a2, CFIndex *a3)
{
  ValueAtIndex = 0;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
        if (FigCFEqual())
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      if (a3)
      {
        *a3 = v8;
      }
    }
  }

  return ValueAtIndex;
}

CFMutableStringRef FigMediaSelectionOptionCopyDescription(const __CFAllocator *a1, const __CFDictionary *a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(a2, @"MediaSelectionOptionsPersistentID");
    v5 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsMediaType");
    if (!v5)
    {
      v5 = CFDictionaryGetValue(a2, @"MediaSelectionGroupMediaType");
    }

    v6 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsExtendedLanguageTag");
    v7 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
    v8 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsLanguageCode");
    v9 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsLanguageCode");
    v10 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsName");
    v11 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsMediaType");
    v12 = CFDictionaryGetValue(a2, @"AutomaticallySelected");
    OUTLINED_FUNCTION_1_58(v12, v13, @"[");
    if (!v5)
    {
      goto LABEL_29;
    }

    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
    v14 = CFEqual(CFStringForOSTypeValue, v5);
    if (v14)
    {
      v17 = @"Visual";
    }

    else
    {
      v18 = FigGetCFStringForOSTypeValue();
      v14 = CFEqual(v18, v5);
      if (v14)
      {
        v17 = @"Audible";
      }

      else
      {
        v19 = FigGetCFStringForOSTypeValue();
        v14 = CFEqual(v19, v5);
        if (v14)
        {
          v17 = @"Legible CC";
        }

        else
        {
          v20 = FigGetCFStringForOSTypeValue();
          v14 = CFEqual(v20, v5);
          if (!v14)
          {
LABEL_29:
            OUTLINED_FUNCTION_1_58(v14, v15, @"]");
            return Mutable;
          }

          v17 = @"Legible";
        }
      }
    }

    OUTLINED_FUNCTION_1_58(v14, v15, v17);
    v21 = *MEMORY[0x1E695E4D0];
    if (v11 == *MEMORY[0x1E695E4D0])
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" Default");
    }

    if (v12 == v21)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" AutomaticSelection");
    }

    if (v10)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" (%@)");
    }

    if (v6)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" (ExtendedLangTag %@)");
    }

    if (v7)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" (UnicodeLangId %@)");
    }

    if (v8)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" (LangCode %@)");
    }

    if (v9)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" (UnicodeLangCode %@)");
    }

    if (Value)
    {
      OUTLINED_FUNCTION_1_58(v14, v15, @" (PersistentID %@)");
    }

    goto LABEL_29;
  }

  return Mutable;
}

uint64_t CopyAudioCompatibleCompositionPresetArrayOfTrack(uint64_t a1, CFIndex *a2)
{
  theArray = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      Count = theArray;
      if (!theArray || (Count = CFArrayGetCount(theArray)) == 0 || (FigCFArrayGetValueAtIndex(), v7 = FigAudioFormatDescriptionCopyCompatibleCompositionPresets(), Count = 0, !v7))
      {
        v7 = 0;
        *a2 = Count;
      }
    }
  }

  else
  {
    v7 = 4294954514;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

uint64_t TrackAlternateGroupIDByKey(uint64_t a1, uint64_t a2)
{
  cf = 0;
  valuePtr = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(FigBaseObject, a2, *MEMORY[0x1E695E480], &cf);
    v6 = cf;
    if (!v5)
    {
      if (!cf)
      {
        return valuePtr;
      }

      v7 = CFGetTypeID(cf);
      TypeID = CFNumberGetTypeID();
      v6 = cf;
      if (v7 == TypeID)
      {
        CFNumberGetValue(cf, kCFNumberSInt16Type, &valuePtr);
        v6 = cf;
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  return valuePtr;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_6(uint64_t *a1, uint64_t a2, const __CFArray *a3)
{
  v5 = *a1;
  cf = 0;
  if (FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader(a2, v5, &cf))
  {
    v6 = 1;
  }

  else
  {
    v6 = MediaCharacteristicsArraysMatch(cf, a3) == 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_11(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_14(const void *a1, _DWORD *a2)
{
  CFRelease(a1);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CopyReferencedTrackIDs_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMediaSelectionOptionDictionary_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CreateMediaSelectionOptionDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMediaSelectionOptionDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMediaSelectionOptionDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMediaSelectionOptionDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMediaSelectionOptionDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateMediaSelectionGroupWithOptions_cold_1(void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  *a1 = 0;
  return result;
}

uint64_t CreateMediaSelectionGroupWithOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InsertGroupIntoMediaSelectionArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InsertGroupIntoMediaSelectionArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SynthesizeOptionsForSoloSubtitleTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SynthesizeOptionsForSoloSubtitleTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AppendFallbacksOfTracks_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

__CFArray *ftree_createArrayFromLeaves(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    for (i = *(DerivedStorage + 8); i; i = *(i + 16))
    {
      CFArrayAppendValue(Mutable, *i);
    }
  }

  return Mutable;
}

CFStringRef ftreefilter_copyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"[FigAlternateFilterTreeFilter <%@:%p> priority:%d]", *DerivedStorage, a1, *(DerivedStorage + 8));
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), i);
    v9 = ftreefilter_copyIndentedDebugDescription(ValueAtIndex);
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    CFStringAppendFormat(v5, 0, @"\n%@", v9);
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    v16 = ftreefilter_copyIndentedDebugDescription(v11);
    if (!v16)
    {
LABEL_16:
      Copy = 0;
      goto LABEL_12;
    }

    v12 = v16;
    CFStringAppendFormat(v5, 0, @"\n%@", v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = CFGetAllocator(a1);
  Copy = CFStringCreateCopy(v13, v5);
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_12:
  CFRelease(v5);
  return Copy;
}

CFStringRef ftreefilter_copyIndentedDebugDescription(const void *a1)
{
  result = CFCopyDescription(a1);
  if (result)
  {
    v2 = result;
    v3 = FigCFStringCopyWithIndent();
    CFRelease(v2);
    return v3;
  }

  return result;
}

uint64_t ftreefilter_applyReturningInfo(const void *a1, const void *a2, CFTypeRef *a3, CFDataRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  cf = 0;
  v9 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0_63();
    v18 = FigSignalErrorAtGM();
    v11 = 0;
    goto LABEL_54;
  }

  v33 = a3;
  if (a2)
  {
    v11 = CFRetain(a2);
    v12 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = 0;
  cf = v12;
  while (1)
  {
    Count = *(DerivedStorage + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v13 >= Count || !v11 || CFArrayGetCount(v11) < 1)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v13);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 32) && !*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      goto LABEL_48;
    }

    v16 = OUTLINED_FUNCTION_2_57();
    v18 = v17(v16, v11);
    if (v18)
    {
      goto LABEL_54;
    }

    if (a4)
    {
      appended = ftreefilter_appendAndReleaseLeafInfo(a1, ValueAtIndex, Mutable, v11, cf, &v34);
      if (appended)
      {
        goto LABEL_30;
      }
    }

    v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    CFRelease(v11);
    ++v13;
    v11 = v20;
  }

  if (cf)
  {
    v21 = CFArrayGetCount(cf) == 0;
    if (!a4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = 1;
    if (!a4)
    {
      goto LABEL_31;
    }
  }

  if (v21)
  {
    while (1)
    {
      v22 = *(DerivedStorage + 16);
      if (v22)
      {
        v22 = CFArrayGetCount(v22);
      }

      if (v13 >= v22)
      {
        break;
      }

      v23 = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v13);
      appended = ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren(a1, v23, Mutable);
      ++v13;
      if (appended)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  if (*(DerivedStorage + 24))
  {
    if (!cf || !CFArrayGetCount(cf))
    {
      if (!*(*(CMBaseObjectGetVTable() + 16) + 32) && !*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
LABEL_48:
        v18 = 4294954514;
        goto LABEL_54;
      }

      v25 = OUTLINED_FUNCTION_2_57();
      v18 = v26(v25, a2);
      v24 = v33;
      if (v18)
      {
        goto LABEL_54;
      }

      if (!a4)
      {
        goto LABEL_51;
      }

      appended = ftreefilter_appendAndReleaseLeafInfo(a1, *(DerivedStorage + 24), Mutable, v11, cf, &v34);
      if (appended)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    v24 = v33;
    if (a4)
    {
      appended = ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren(a1, *(DerivedStorage + 24), Mutable);
      if (appended)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v24 = v33;
    if (a4)
    {
LABEL_44:
      v27 = CFGetAllocator(a1);
      v28 = cf;
      if (a2)
      {
        a2 = CFArrayGetCount(a2);
      }

      v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v29)
      {
        v30 = v29(a1);
      }

      else
      {
        v30 = &stru_1F0B1AFB8;
      }

      v31 = FigAlternateFilterApplyInfoCreate(v27, v28, a2, v30, Mutable);
      *a4 = v31;
      if (v31)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_0_63();
      appended = FigSignalErrorAtGM();
LABEL_30:
      v18 = appended;
      goto LABEL_54;
    }
  }

LABEL_51:
  if (*v24)
  {
    CFRelease(*v24);
  }

  v18 = 0;
  *v24 = cf;
  cf = 0;
LABEL_54:
  if (v34)
  {
    CFRelease(v34);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigAlternateFilterTreeInsertLeaf_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_63();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterTreeCreateFilter_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_63();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigAlternateFilterTreeCreateFilter_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_63();
  *a2 = FigSignalErrorAtGM();

  return FigSimpleMutexUnlock();
}

uint64_t FigAlternateFilterTreeCopyLeaves_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_63();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterTreeCopyLeaves_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_59();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterTreeCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_59();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ftreefilter_copyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_63();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ftreefilter_copyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_59();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ftreefilter_copyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_59();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ftreefilter_appendAndReleaseLeafInfo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_63();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ftreefilter_appendEmptyLeafInfosForLeafFilterAndItsChildren_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_63();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCMCDHeaderVendorCopyHeaders(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v153 = a3;
  v174 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v149 = *(a2 + 16);
  v151 = *a2;
  HIDWORD(v154) = *(a2 + 8);
  LODWORD(v156) = *(a2 + 24);
  v6 = *(a2 + 68);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v161 = 0;
  cf = a1;
  NextSegment = CMBaseObjectGetDerivedStorage();
  v18 = NextSegment;
  v19 = (v6 != 0) & ((*(NextSegment + 8) & *(NextSegment + 16)) >> 19);
  if (v9)
  {
    NextSegment = FigMediaSegmentSpecifierGetNextSegment(v9);
    v20 = NextSegment;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v6 > 9;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || ((1 << v6) & 0x2DC) == 0;
  v158 = DerivedStorage;
  if (!v22 && (*(v18 + 8) & *(v18 + 16) & 2) != 0)
  {
    OUTLINED_FUNCTION_3_45(NextSegment, v11, v12, v13, v14, v15, v16, v17, v144, v146, v147, v149, v151, v153, v154, v156, DerivedStorage, cf, time.value, *&time.timescale, time.epoch, v161, theString[0], theString[1], v163);
    if ((BYTE4(theString[1]) & 0x1D) == 1)
    {
      *v169 = *theString;
      *&v169[16] = v163;
      appended = OUTLINED_FUNCTION_4_46(v23, v24, @"bl", v25, v26, v27, v28, v29, v144, v146, v147, v149, v151, v153, v154, v156);
      if (appended)
      {
LABEL_34:
        v59 = appended;
        v60 = 0;
        goto LABEL_82;
      }
    }
  }

  v31 = *(v18 + 8);
  v32 = *(v18 + 16);
  if ((v31 & v32 & 0x20) != 0)
  {
    v33 = *(v18 + 56);
    if (v33)
    {
      Rate = CMTimebaseGetRate(v33);
      OUTLINED_FUNCTION_3_45(v35, v36, v37, v38, v39, v40, v41, v42, v144, v146, v147, v149, v151, v153, v154, v156, v158, cf, time.value, *&time.timescale, time.epoch, v161, theString[0], theString[1], v163);
      v43 = fabs(Rate);
      if ((BYTE4(theString[1]) & 0x1D) == 1 && v43 > 2.22044605e-16)
      {
        *&time.value = *theString;
        time.epoch = v163;
        v45 = CMTimeMultiplyByFloat64(v169, &time, 1.0 / Rate);
        appended = OUTLINED_FUNCTION_4_46(v45, v46, @"dl", v47, v48, v49, v50, v51, v145, v146, v148, v149, v151, v153, v154, v156);
        if (appended)
        {
          goto LABEL_34;
        }
      }

      v31 = *(v18 + 8);
      v32 = *(v18 + 16);
    }
  }

  if ((v32 & v31 & 0x40) != 0)
  {
    if (*(v18 + 40))
    {
      v52 = CMBaseObjectGetDerivedStorage();
      v173 = 0;
      v171 = 0u;
      v172 = 0u;
      v170 = 0u;
      memset(v169, 0, sizeof(v169));
      if (*(v52 + 40))
      {
        v55 = *(v52 + 48);
        v54 = (v52 + 48);
        v53 = v55;
        if (!v55)
        {
          if (FigNetworkHistoryCopySharedPredictor())
          {
            goto LABEL_35;
          }

          v53 = *v54;
        }

        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v57)
        {
          v164 = 0u;
          v165 = 0u;
          *theString = 0u;
          v163 = 0u;
          v166 = 0;
          v167 = 60000000000;
          bzero(&v168, 0x90uLL);
          if (!v57(v53, UpTimeNanoseconds, theString, v169))
          {
            v58 = *v169 / 1000 % 100 <= 50 ? 0 : 100;
            appended = cmcd_appendHeaderKeyAndIntegerValue(cf, &v161, @"mtp", 100 * (*v169 / 1000 / 100) + v58);
            if (appended)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }
  }

LABEL_35:
  if ((*(v18 + 8) & *(v18 + 16) & 0x80) != 0)
  {
    theString[0] = 0;
    *v169 = 0;
    time.value = 0;
    if (v8 && !FigCFEqual() && !FigCFHTTPCopyPathComponentRelativeToURL(v8, v7, theString) && CFStringGetLength(theString[0]) >= 1 && !FigCFHTTPCreatePercentEncodedString(theString[0], 4, v169))
    {
      FigCFHTTPCreatePercentEncodedString(*v169, 1, &time);
    }

    if (theString[0])
    {
      CFRelease(theString[0]);
    }

    if (*v169)
    {
      CFRelease(*v169);
    }

    value = time.value;
    if (time.value)
    {
      v62 = cmcd_appendHeaderKeyAndStringValue(cf, &v161, @"nor", time.value);
      if (v62)
      {
        v59 = v62;
        v60 = 0;
        v63 = 0;
LABEL_79:
        CFRelease(value);
        goto LABEL_80;
      }
    }
  }

  else
  {
    value = 0;
  }

  if (v20)
  {
    FigMediaSegmentSpecifierGetURLString(v9);
    FigMediaSegmentSpecifierGetURLString(v20);
    v65 = BYTE4(v154);
    v64 = v156;
    if (FigCFEqual())
    {
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(v9);
      v67 = FigMediaSegmentSpecifierGetBytesToRead(v9);
      v68 = StartOffset > 0;
      if (v67 > 0)
      {
        v68 = 1;
      }

      v69 = !v68;
      if (v68)
      {
        v70 = 0;
      }

      else
      {
        v70 = BYTE4(v154);
      }

      if (v69)
      {
        v71 = v156;
      }

      else
      {
        v71 = 0;
      }

      v72 = v151;
      if (StartOffset <= 0)
      {
        v65 = v70;
      }

      else
      {
        v72 = StartOffset;
        v65 = 1;
      }

      v73 = v149;
      if (v67 > 0)
      {
        v73 = v67;
      }

      v149 = v73;
      v151 = v72;
      if (v67 > 0)
      {
        v64 = 1;
      }

      else
      {
        v64 = v71;
      }
    }
  }

  else
  {
    v65 = BYTE4(v154);
    v64 = v156;
  }

  v74 = *(v18 + 8);
  v75 = *(v18 + 16);
  if ((v75 & v74 & 0x100) != 0 && (!value || (v75 & v74 & 0x80) != 0) && v65 | v64)
  {
    v76 = CFGetAllocator(cf);
    if (v64)
    {
      v77 = CFStringCreateWithFormat(v76, 0, @"%ld-%ld", v151, v149);
    }

    else
    {
      v77 = CFStringCreateWithFormat(v76, 0, @"%ld-", v151, v146);
    }

    v63 = v77;
    if (!v77)
    {
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_0_64();
      v126 = FigSignalErrorAtGM();
      goto LABEL_219;
    }

    v126 = cmcd_appendHeaderKeyAndStringValue(cf, &v161, @"nrr", v77);
    if (v126)
    {
      goto LABEL_219;
    }

    v74 = *(v18 + 8);
    v75 = *(v18 + 16);
  }

  else
  {
    v63 = 0;
  }

  if ((v75 & v74 & 0x8000) == 0 || *(v18 + 88) || (v126 = cmcd_appendHeaderKeyAndBooleanValue(cf, &v161, @"su"), !v126))
  {
    v59 = 0;
    v60 = v161;
    v161 = 0;
    if (!value)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_219:
  v59 = v126;
  v60 = 0;
  if (value)
  {
    goto LABEL_79;
  }

LABEL_80:
  if (v63)
  {
    CFRelease(v63);
  }

LABEL_82:
  if (v161)
  {
    CFRelease(v161);
  }

  if (v59)
  {
    goto LABEL_214;
  }

  v157 = v60;
  if (v60)
  {
    v155 = CFStringGetLength(v60) > 0;
  }

  else
  {
    v155 = 0;
  }

  v78 = *(a2 + 32);
  v79 = *(a2 + 40);
  *v169 = *(a2 + 41);
  *&v169[7] = *(a2 + 48);
  v80 = *(a2 + 56);
  v81 = *(a2 + 60);
  v82 = *(a2 + 68);
  v83 = *(a2 + 72);
  v152 = *(a2 + 80);
  v84 = *(a2 + 104);
  time.value = 0;
  v85 = CMBaseObjectGetDerivedStorage();
  v86 = *(v85 + 8);
  v87 = *(v85 + 16);
  v150 = v83;
  if ((v86 & v87 & 0x80000) == 0)
  {
    LOBYTE(v88) = 0;
    LOBYTE(v89) = 0;
    if (!v84)
    {
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (v82 <= 9)
  {
    v88 = 0x3FEu >> v82;
    v89 = 0x25Cu >> v82;
    if (!v84)
    {
      goto LABEL_96;
    }

LABEL_93:
    BitRate = FigMediaSegmentSpecifierGetBitRate(v84);
    if (BitRate > 2.22044605e-16)
    {
      v78 = BitRate;
      v79 = 1;
    }

    v86 = *(v85 + 8);
    v87 = *(v85 + 16);
    goto LABEL_96;
  }

  LOBYTE(v89) = 0;
  LOBYTE(v88) = 1;
  if (v84)
  {
    goto LABEL_93;
  }

LABEL_96:
  if ((v89 & (v87 & v86) & (v79 != 0)) == 1)
  {
    v120 = cmcd_appendHeaderKeyAndIntegerValue(cf, &time, @"br", v78 / 1000);
    if (v120)
    {
      v59 = v120;
      goto LABEL_212;
    }
  }

  if ((v88 & (v82 < 0xA)) == 1)
  {
    v91 = 0x2DCu >> v82;
  }

  else
  {
    LOBYTE(v91) = 0;
  }

  if (*(v85 + 8) & *(v85 + 16) & 0x10) != 0 && (v80 & 0x1D) == 1 && (v91)
  {
    theString[0] = *&v169[3];
    theString[1] = __PAIR64__(v80, *&v169[11]);
    *&v163 = v81;
    v92 = cmcd_appendHeaderKeyAndTimeValue(cf, &time, @"d", theString, 0);
    if (v92)
    {
      goto LABEL_211;
    }
  }

  if ((v88 & 1) == 0)
  {
    goto LABEL_104;
  }

  if (v82 - 1 >= 9)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM();
    v121 = 0;
  }

  else
  {
    v121 = off_1E7483C90[v82 - 1];
  }

  v92 = cmcd_appendHeaderKeyAndTokenValue(cf, &time, @"ot", v121);
  if (v92)
  {
    goto LABEL_211;
  }

  if (v82 <= 6)
  {
    v93 = 0x5Cu >> v82;
  }

  else
  {
LABEL_104:
    LOBYTE(v93) = 0;
  }

  if ((*(v85 + 8) & *(v85 + 16) & 0x10000) != 0)
  {
    if (v152)
    {
      if (v93)
      {
        v92 = cmcd_appendHeaderKeyAndIntegerValue(cf, &time, @"tb", v150 / 1000);
        if (v92)
        {
LABEL_211:
          v59 = v92;
LABEL_212:
          v60 = v157;
          if (time.value)
          {
            CFRelease(time.value);
          }

LABEL_214:
          v115 = 0;
          v102 = 0;
          v94 = 0;
          goto LABEL_168;
        }
      }
    }
  }

  v94 = time.value;
  if (time.value)
  {
    v95 = CFStringGetLength(time.value) > 0;
  }

  else
  {
    v95 = 0;
  }

  if ((*(v158 + 8) & *(v158 + 16) & 0x80000) != 0)
  {
    v96 = *(a2 + 68);
  }

  else
  {
    v96 = 0;
  }

  theString[0] = 0;
  v97 = CMBaseObjectGetDerivedStorage();
  v98 = *(CMBaseObjectGetDerivedStorage() + 112);
  if (!v98)
  {
    goto LABEL_131;
  }

  while (*v98 && *v98 != v96)
  {
    v98 = *(v98 + 8);
    if (!v98)
    {
      goto LABEL_131;
    }
  }

  if (!*(v98 + 4))
  {
LABEL_131:
    v102 = theString[0];
    if (theString[0])
    {
      v103 = CFStringGetLength(theString[0]) > 0;
    }

    else
    {
      v103 = 0;
    }

    theString[0] = 0;
    v104 = CMBaseObjectGetDerivedStorage();
    v105 = v104;
    v106 = v104[1];
    v107 = v104[2];
    if ((v106 & v107 & 8) != 0 && v104[3])
    {
      v127 = OUTLINED_FUNCTION_2_58();
      v112 = cmcd_appendHeaderKeyAndStringValue(v127, v128, v129, v130);
      if (v112)
      {
        goto LABEL_215;
      }

      v106 = v105[1];
      v107 = v105[2];
    }

    if ((v107 & v106 & 0x400) != 0)
    {
      v108 = v105[7];
      if (v108)
      {
        v109 = CMTimebaseGetRate(v108);
        if (fabs(v109 + -1.0) > 0.1)
        {
          v110 = OUTLINED_FUNCTION_2_58();
          v112 = cmcd_ensureOrSuffixHeadersString(v110, v111);
          if (v112)
          {
            goto LABEL_215;
          }

          if (vabdd_f64(v109, v109) >= 0.1)
          {
            CFStringAppendFormat(theString[0], 0, @"%@=%.1lf", @"pr", *&v109);
          }

          else
          {
            CFStringAppendFormat(theString[0], 0, @"%@=%d", @"pr", v109);
          }
        }
      }
    }

    v113 = v105[1];
    v114 = v105[2];
    if ((v113 & v114 & 0x1000) != 0)
    {
      CMBaseObjectGetDerivedStorage();
      v122 = OUTLINED_FUNCTION_2_58();
      v112 = cmcd_appendHeaderKeyAndTokenValue(v122, v123, v124, v125);
      if (v112)
      {
        goto LABEL_215;
      }

      v113 = v105[1];
      v114 = v105[2];
    }

    if ((v114 & v113 & 0x2000) != 0 && v105[4])
    {
      v131 = OUTLINED_FUNCTION_2_58();
      v112 = cmcd_appendHeaderKeyAndStringValue(v131, v132, v133, v134);
      if (v112)
      {
        goto LABEL_215;
      }

      v113 = v105[1];
      v114 = v105[2];
    }

    if ((v114 & v113 & 0x4000) == 0 || !v105[9])
    {
      goto LABEL_150;
    }

    v135 = *(CMBaseObjectGetDerivedStorage() + 72);
    if (v135 != 1 && v135 != 2)
    {
      OUTLINED_FUNCTION_49_0();
      FigSignalErrorAtGM();
    }

    v136 = OUTLINED_FUNCTION_2_58();
    v112 = cmcd_appendHeaderKeyAndTokenValue(v136, v137, v138, v139);
    if (!v112)
    {
      v113 = v105[1];
      v114 = v105[2];
LABEL_150:
      v115 = theString[0];
      if (!v95 && !v155 && !v103 && (v114 & v113 & 0x20000) != 0 && theString[0])
      {
        CFStringGetLength(theString[0]);
      }

      v116 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v116, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v60 = v157;
      if (Mutable)
      {
        v118 = Mutable;
        if (v157 && CFStringGetLength(v157) >= 1)
        {
          CFDictionarySetValue(v118, @"CMCD-Request", v157);
        }

        if (v94 && CFStringGetLength(v94) >= 1)
        {
          CFDictionarySetValue(v118, @"CMCD-Object", v94);
        }

        if (v102 && CFStringGetLength(v102) >= 1)
        {
          CFDictionarySetValue(v118, @"CMCD-Status", v102);
        }

        if (v115 && CFStringGetLength(v115) >= 1)
        {
          CFDictionarySetValue(v118, @"CMCD-Session", v115);
        }

        v59 = 0;
        *v153 = v118;
      }

      else
      {
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_0_64();
        v59 = FigSignalErrorAtGM();
      }

      goto LABEL_168;
    }

LABEL_215:
    v59 = v112;
    v60 = v157;
    if (theString[0])
    {
      CFRelease(theString[0]);
    }

    v115 = 0;
    goto LABEL_168;
  }

  if ((*(v97 + 8) & *(v97 + 16) & 4) == 0 || (v140 = OUTLINED_FUNCTION_2_58(), v143 = cmcd_appendHeaderKeyAndBooleanValue(v140, v141, v142), !v143))
  {
    for (i = *(CMBaseObjectGetDerivedStorage() + 112); i; i = *(i + 8))
    {
      if (*i)
      {
        v101 = *i == v96;
      }

      else
      {
        v101 = 1;
      }

      if (v101)
      {
        *(i + 4) = 0;
      }
    }

    goto LABEL_131;
  }

  v59 = v143;
  if (theString[0])
  {
    CFRelease(theString[0]);
  }

  v115 = 0;
  v102 = 0;
  v60 = v157;
LABEL_168:
  FigSimpleMutexUnlock();
  if (v60)
  {
    CFRelease(v60);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  return v59;
}

uint64_t FigCMCDHeaderVendorSetContentID(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && CFStringGetLength(a2) > 64)
  {
    return 4294947794;
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t cmcd_appendHeaderKeyAndStringValue(const void *a1, CFMutableStringRef *a2, uint64_t a3, const __CFString *a4)
{
  v8 = cmcd_ensureOrSuffixHeadersString(a1, a2);
  if (v8)
  {
    return v8;
  }

  result.location = 0;
  result.length = 0;
  v9 = CFGetAllocator(a1);
  v10 = CFCharacterSetCreateWithCharactersInString(v9, @"\");
  if (v10)
  {
    v11 = v10;
    if (CFStringGetLength(a4) >= 1)
    {
      v12 = 0;
      MutableCopy = 0;
      v14 = a4;
      while (1)
      {
        v19.length = CFStringGetLength(v14) - v12;
        v19.location = v12;
        if (!CFStringFindCharacterFromSet(v14, v11, v19, 0, &result))
        {
          break;
        }

        if (!MutableCopy)
        {
          v15 = CFGetAllocator(a1);
          MutableCopy = CFStringCreateMutableCopy(v15, 0, a4);
          v14 = MutableCopy;
          if (!MutableCopy)
          {
            OUTLINED_FUNCTION_0_64();
            v16 = FigSignalErrorAtGM();
            goto LABEL_15;
          }
        }

        CFStringInsert(MutableCopy, result.location, @"\");
        v12 = result.location + result.length + 1;
        if (v12 >= CFStringGetLength(v14))
        {
          goto LABEL_14;
        }
      }

      if (MutableCopy)
      {
        goto LABEL_14;
      }
    }

    if (a4)
    {
      MutableCopy = CFRetain(a4);
    }

    else
    {
      MutableCopy = 0;
    }

LABEL_14:
    v16 = 0;
LABEL_15:
    CFRelease(v11);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_64();
  v16 = FigSignalErrorAtGM();
  MutableCopy = 0;
  if (!v16)
  {
LABEL_16:
    CFStringAppendFormat(*a2, 0, @"%@=%@", a3, MutableCopy);
  }

LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v16;
}

uint64_t cmcd_appendHeaderKeyAndBooleanValue(const void *a1, CFMutableStringRef *a2, uint64_t a3)
{
  v5 = cmcd_ensureOrSuffixHeadersString(a1, a2);
  if (!v5)
  {
    CFStringAppendFormat(*a2, 0, @"%@", a3);
  }

  return v5;
}

uint64_t cmcd_appendHeaderKeyAndIntegerValue(const void *a1, CFMutableStringRef *a2, uint64_t a3, uint64_t a4)
{
  v7 = cmcd_ensureOrSuffixHeadersString(a1, a2);
  if (!v7)
  {
    CFStringAppendFormat(*a2, 0, @"%@=%lld", a3, a4);
  }

  return v7;
}

uint64_t cmcd_appendHeaderKeyAndTokenValue(const void *a1, CFMutableStringRef *a2, uint64_t a3, uint64_t a4)
{
  v7 = cmcd_ensureOrSuffixHeadersString(a1, a2);
  if (!v7)
  {
    CFStringAppendFormat(*a2, 0, @"%@=%s", a3, a4);
  }

  return v7;
}

uint64_t FigCMCDHeaderVendorSetLoadedTimeRange_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_64();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCMCDHeaderVendorSetBufferDidStarve_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_64();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCMCDHeaderVendorSetBufferDidStarve_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCMCDHeaderVendorCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_64();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCMCDHeaderVendorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_64();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cmcd_ensureOrSuffixHeadersString_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_64();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigCreateReplacementAudioSBufByOmittingLeadingDependentPackets(opaqueCMSampleBuffer *a1, int a2, CMSampleBufferRef *a3)
{
  memset(&v42, 0, sizeof(v42));
  CMSampleBufferGetPresentationTimeStamp(&v42, a1);
  NumSamples = CMSampleBufferGetNumSamples(a1);
  memset(&v41, 0, 32);
  v40 = -1;
  if (NumSamples < 1)
  {
    return 0;
  }

  v7 = NumSamples;
  v39 = v42;
  v8 = FigGetClosestRandomAccessPointInAudioSBuf(a1, &v39, 1, &v41, &v40) ? v40 : v7;
  if (v8 < 1)
  {
    return 0;
  }

  v9 = (v7 - v8) & ~((v7 - v8) >> 63);
  v39 = **&MEMORY[0x1E6960C70];
  if (a2)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
    memset(&v38, 0, sizeof(v38));
    CMTimeMake(&v38, v8 * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
    v12 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a1, 1u);
    if (!FigCFDictionaryGetCMTimeIfPresent() || (v39.flags & 0x1D) != 1 || (CMTimeMake(&time2, StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate), time1 = v39, v13 = CMTimeCompare(&time1, &time2), (v13 & 0x80000000) != 0))
    {
      v30 = 0;
      if (!v12)
      {
        return v30;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_60(v13, v14, v15, v16, v17, v18, v19, v20, v32, v34.value, *&v34.timescale, v34.epoch, time1.value, *&time1.timescale, time1.epoch, v36, time2.value, *&time2.timescale, time2.epoch, v38.value, *&v38.timescale, v38.epoch, *&v39.value);
    time1 = v38;
    v21 = CMTimeCompare(&time2, &time1);
    if ((v21 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_1_60(v21, StreamBasicDescription->mSampleRate, v22, v23, v24, v25, v26, v27, v33, v34.value, *&v34.timescale, v34.epoch, time1.value, *&time1.timescale, time1.epoch, v36, time2.value, *&time2.timescale, time2.epoch, v38.value, *&v38.timescale, v38.epoch, *&v39.value);
      CMTimeConvertScale(&v34, &time2, v28, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v8 = v34.value / StreamBasicDescription->mFramesPerPacket;
      v9 = (v7 - v8) & ~((v7 - v8) >> 63);
    }

    if (v9)
    {
LABEL_13:
      v29 = CFGetAllocator(a1);
      v43.location = v8;
      v43.length = v9;
      v30 = CMSampleBufferCopySampleBufferForRange(v29, a1, v43, a3) == 0;
      if (!v12)
      {
        return v30;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  *a3 = 0;
  v30 = 1;
  if (v12)
  {
LABEL_18:
    CFRelease(v12);
  }

  return v30;
}

uint64_t FigGetCountOfSequentialSamplesWithSeamIdentifier(opaqueCMSampleBuffer *a1, uint64_t a2, int a3, CMTime *a4)
{
  v25 = **&MEMORY[0x1E6960CC0];
  NumSamples = CMSampleBufferGetNumSamples(a1);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  v9 = 0;
  if (a2)
  {
    v10 = NumSamples - 1;
    if (NumSamples >= 1)
    {
      v11 = SampleAttachmentsArray;
      if (SampleAttachmentsArray)
      {
        Count = CFArrayGetCount(SampleAttachmentsArray);
      }

      else
      {
        Count = 0;
      }

      if (Count == NumSamples && (a3 ? (v13 = 0) : (v13 = NumSamples - 1), v14 = CFArrayGetValueAtIndex(v11, v13), v15 = *MEMORY[0x1E6962DD8], CFDictionaryGetValue(v14, *MEMORY[0x1E6962DD8]), FigCFEqual()))
      {
        v16 = 1;
        v17 = MEMORY[0x1E6960CF0];
        do
        {
          v9 = v16;
          memcpy(&__dst, v17, sizeof(__dst));
          CMSampleBufferGetSampleTimingInfo(a1, v13, &__dst);
          if ((__dst.duration.flags & 0x1D) == 1)
          {
            lhs = v25;
            rhs = __dst.duration;
            CMTimeAdd(&v25, &lhs, &rhs);
          }

          if (a3)
          {
            if (v13 == v10)
            {
              break;
            }

            ++v13;
          }

          else
          {
            if (!v13)
            {
              break;
            }

            --v13;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
          CFDictionaryGetValue(ValueAtIndex, v15);
          v19 = FigCFEqual();
          v16 = v9 + 1;
        }

        while (v19);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  if (a4)
  {
    *a4 = v25;
  }

  return v9;
}

uint64_t FigValidateSampleSeamInSampleBufferQueue(opaqueCMBufferQueue *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v9[0] = 0;
  *&v11[16] = 0u;
  v9[1] = a2;
  v10 = a3;
  *v11 = 0uLL;
  *&v11[8] = *MEMORY[0x1E6960CC0];
  *&v11[24] = *(MEMORY[0x1E6960CC0] + 16);
  v12 = *&v11[8];
  v13 = *&v11[24];
  v5 = 1;
  v14 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        CMBufferQueueCallForEachBuffer(a1, fsbqs_ValidateSampleBufferForSeam, v9);
        v5 = v14;
        if (!v14)
        {
          if (a4)
          {
            *a4 = *(&v10 + 1);
          }

          v5 = 0;
          if (a5)
          {
            *a5 = v12;
            *(a5 + 16) = v13;
          }
        }
      }
    }
  }

  return v5;
}

BOOL FigCreateReplacementSBufByOmittingTrailingSeamSamples(opaqueCMSampleBuffer *a1, uint64_t a2, CMSampleBufferRef *a3)
{
  NumSamples = CMSampleBufferGetNumSamples(a1);
  result = 0;
  if (a2 && NumSamples >= 1)
  {
    CountOfSequentialSamplesWithSeamIdentifier = FigGetCountOfSequentialSamplesWithSeamIdentifier(a1, a2, 0, 0);
    if (CountOfSequentialSamplesWithSeamIdentifier < 1)
    {
      return 0;
    }

    else
    {
      v9 = NumSamples > CountOfSequentialSamplesWithSeamIdentifier;
      v10 = NumSamples - CountOfSequentialSamplesWithSeamIdentifier;
      if (v9)
      {
        v11 = CFGetAllocator(a1);
        v12.location = 0;
        v12.length = v10;
        return CMSampleBufferCopySampleBufferForRange(v11, a1, v12, a3) == 0;
      }

      else
      {
        *a3 = 0;
        return 1;
      }
    }
  }

  return result;
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigGetClosestRandomAccessPointInAudioSBuf_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigBandwidthPeriodicReporterCreate(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_1_61();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_1_61();
  fig_note_initialize_category_with_default_work_cf();
  if (!a7)
  {
    goto LABEL_20;
  }

  MEMORY[0x19A8D3660](&FigBandwidthPeriodicReportingGetClassID_sRegisterFigBandwidthPeriodicReportingBaseTypeOnce, RegisterFigBandwidthPeriodicReportingBaseType);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = FigHTTPSchedulerRetain(0);
  *(DerivedStorage + 72) = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  *(DerivedStorage + 104) = FigGetUpTimeNanoseconds();
  v13 = *(DerivedStorage + 72);
  if (v13 && (v14 = FigCFWeakReferenceHolderCreateWithReferencedObject()) != 0)
  {
    v15 = v14;
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);
    if (v16)
    {
      v17 = v16;
      v18 = (a2 / ceil((a2 / 0x3B9ACA00uLL) / 10.0));
      v19 = dispatch_time(0, v18);
      dispatch_source_set_timer(v17, v19, v18, 0x3B9ACA00uLL);
      v20 = CFRetain(v15);
      dispatch_set_context(v17, v20);
      dispatch_source_set_event_handler_f(v17, bpr_timerCallback);
      dispatch_source_set_cancel_handler_f(v17, bpr_timerCancellationCallback);
      dispatch_resume(v17);
      v21 = 0;
      *(DerivedStorage + 80) = v17;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      v21 = FigSignalErrorAtGM();
    }

    CFRelease(v15);
    if (v21)
    {
      return v21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_12();
    v21 = FigSignalErrorAtGM();
    if (v21)
    {
      return v21;
    }
  }

  v10 = FigNetworkHistoryCopySharedPredictor();
  if (v10)
  {
    return v10;
  }

  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = FigNetworkHistoryGetBytesReceivedMaxResolution();
  v22 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = v22;
  if (!v22)
  {
LABEL_20:
    OUTLINED_FUNCTION_3_12();
    return FigSignalErrorAtGM();
  }

  *(DerivedStorage + 32) = *a5;
  v23 = a3;
  *(DerivedStorage + 40) = *(a5 + 8);
  if (a3)
  {
    v23 = CFRetain(a3);
  }

  *(DerivedStorage + 56) = v23;
  v21 = 0;
  *a7 = 0;
  return v21;
}

void bpr_invalidateOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 64))
  {
    v3 = DerivedStorage;
    bpr_logBandwidth(a1);
    *(v3 + 64) = 1;
    if (*v3)
    {
      CFRelease(*v3);
    }

    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v3 + 80);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v5 = *(v3 + 80);
    }

    dispatch_release(v5);
    v6 = *(v3 + 88);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(v3 + 48);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(v3 + 56);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(v3 + 112);
    if (v9)
    {

      CFRelease(v9);
    }
  }
}

uint64_t bpr_obtainObservedBandwidthForPreviousInterval(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a3)
  {
    v9 = UpTimeNanoseconds;
    v10 = *(DerivedStorage + 48);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v19[0] = 0;
      v19[1] = 0;
      v19[2] = a2;
      bzero(v20, 0x90uLL);
      v20[18] = 9;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      result = v11(v10, v9, v19, v14);
      if (!result)
      {
        v13 = v15;
        *a3 = *&v14[0];
        *a4 = v13;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

void bpr_reportPredictionApplier(const __CFString *a1, const __CFNumber *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v7 = CFGetAllocator(*a3);
  v8 = CFStringCreateWithFormat(v7, 0, @"%@%@", a1, @"E");
  if (v8)
  {
    v9 = v8;
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    v10 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v11 = valuePtr;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v12)
      {
        v12(v10, 0x1F0B64558, a1, v11, 0);
      }
    }

    if (FigCFEqual())
    {
      v13 = *DerivedStorage;
      if (!v13)
      {
LABEL_13:
        CFRelease(v9);
        return;
      }

      v14 = *(a3 + 16);
    }

    else
    {
      if (FigCFEqual())
      {
        goto LABEL_13;
      }

      if (FigCFEqual())
      {
        goto LABEL_13;
      }

      if (CFStringFind(a1, @"STDDEV", 1uLL).location != -1)
      {
        goto LABEL_13;
      }

      v13 = *DerivedStorage;
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = *(a3 + 8);
    }

    v15 = valuePtr;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v16)
    {
      v16(v13, 0x1F0B64558, v9, ((v15 - v14) / v14 * 10000.0), 0);
    }

    goto LABEL_13;
  }
}

uint64_t FigBandwidthPeriodicReporterSetReportingAgent_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL bpr_timerCallback_cold_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a3 = 0x1F0B64558;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v7)
  {
    v7(a1, 0x1F0B64558);
  }

  *a4 = a2 + 88;
  return FigCFDictionaryGetCount() < 1;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifier(void *a1, CFTypeRef *a2)
{
  v10 = 0;
  cf = 0;
  v9 = 0;
  if (!a2)
  {
    v6 = FigSignalErrorAtGM();
LABEL_14:
    v7 = v6;
    goto LABEL_6;
  }

  int64 = xpc_dictionary_get_int64(a1, ".ks_KeySystem");
  v5 = xpc_dictionary_get_int64(a1, ".ks_EncryptionMethod");
  v6 = FigXPCMessageCopyCFString();
  if (v6)
  {
    goto LABEL_14;
  }

  v6 = FigXPCMessageCopyCFArray();
  if (v6)
  {
    goto LABEL_14;
  }

  v7 = FigContentKeySpecifierCreate(int64, cf, v5, v10, &v9);
  if (!v7)
  {
    *a2 = v9;
    v9 = 0;
  }

LABEL_6:
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

  return v7;
}

uint64_t FigContentKeyBossClientServerXPC_SerializeKeySpecifier(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    KeySystem = FigContentKeySpecifierGetKeySystem(v4);
    xpc_dictionary_set_int64(v2, ".ks_KeySystem", KeySystem);
    EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(v3);
    xpc_dictionary_set_int64(v2, ".ks_EncryptionMethod", EncryptionMethod);
    FigContentKeySpecifierGetIdentifier(v3);
    result = FigXPCMessageSetCFString();
    if (!result)
    {
      FigContentKeySpecifierGetSupportedProtocolVersions(v3);

      return FigXPCMessageSetCFArray();
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigContentKeyBossClientServerXPC_SerializeKeyRequestParams(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    result = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v4, *(v3 + 16));
    if (!result)
    {
      OUTLINED_FUNCTION_4_36();
      xpc_dictionary_set_BOOL(v2, ".ks_SupportsOfflineKey", v6);
      OUTLINED_FUNCTION_4_36();
      xpc_dictionary_set_BOOL(v2, ".ks_IsPreload", v7);
      return 0;
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigContentKeyBossClientServerXPC_CopySerializedKeySpecifiers(const __CFArray *a1, void *a2)
{
  empty = xpc_array_create_empty();
  if (empty)
  {
    if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v9 = xpc_dictionary_create_empty();
        v10 = v9;
        if (!v9)
        {
          break;
        }

        v11 = FigContentKeyBossClientServerXPC_SerializeKeySpecifier(v9, ValueAtIndex);
        if (v11)
        {
          goto LABEL_11;
        }

        xpc_array_append_value(empty, v10);
        xpc_release(v10);
        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      OUTLINED_FUNCTION_0_10();
      v11 = FigSignalErrorAtGM();
LABEL_11:
      v12 = v11;
    }

    else
    {
LABEL_8:
      v12 = 0;
      *a2 = empty;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_10();
    v12 = FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  return v12;
}

uint64_t FigContentKeyBossClientServerXPC_SerializeKeyRequestDataParams(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    result = FigXPCMessageSetCFData();
    if (!result)
    {
      result = FigXPCMessageSetCFData();
      if (!result)
      {
        result = FigXPCMessageSetCFData();
        if (!result)
        {
          result = FigXPCMessageSetCFArray();
          if (!result)
          {
            result = FigXPCMessageSetCFData();
            if (!result)
            {
              result = FigXPCMessageSetCFData();
              if (!result)
              {
                xpc_dictionary_set_int64(v2, ".krs_EncryptionMethod", *(v3 + 56));
                OUTLINED_FUNCTION_4_36();
                xpc_dictionary_set_BOOL(v2, ".krs_SupportsAirPlayDecryption", v5);
                OUTLINED_FUNCTION_4_36();
                xpc_dictionary_set_BOOL(v2, ".krs_ProvidesPersistableKey", v6);
                OUTLINED_FUNCTION_4_36();
                xpc_dictionary_set_BOOL(v2, ".krs_ShouldRandomizeDeviceIdentifier", v7);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestDataParams(void *a1, CFTypeRef *a2)
{
  v17 = 0;
  v15 = 0;
  cf = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (!a2)
  {
    v4 = FigSignalErrorAtGM();
LABEL_24:
    v10 = v4;
    goto LABEL_10;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_24;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_24;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_24;
  }

  v4 = FigXPCMessageCopyCFArray();
  if (v4)
  {
    goto LABEL_24;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_24;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_24;
  }

  int64 = xpc_dictionary_get_int64(a1, ".krs_EncryptionMethod");
  v6 = xpc_dictionary_get_BOOL(a1, ".krs_SupportsAirPlayDecryption");
  v7 = xpc_dictionary_get_BOOL(a1, ".krs_ProvidesPersistableKey");
  v8 = xpc_dictionary_get_BOOL(a1, ".krs_ShouldRandomizeDeviceIdentifier");
  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = FigContentKeyRequestDataParamsCreate(AllocatorForMedia, v17, cf, v15, v14, v13, int64, v6, v7, v8, 0, &v12);
  if (!v10)
  {
    *a2 = v12;
    v12 = 0;
  }

LABEL_10:
  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
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

  return v10;
}

uint64_t FigContentKeyBossClientServerXPC_SerializeKeyResponseSpecifier(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    xpc_dictionary_set_int64(v3, ".krps_ResponseType", *(v2 + 16));
    result = FigXPCMessageSetCFDate();
    if (!result)
    {
      result = FigXPCMessageSetCFData();
      if (!result)
      {

        return FigXPCMessageSetCFData();
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyResponseSpecifier(void *a1, CFTypeRef *a2)
{
  v10 = 0;
  cf = 0;
  v8 = 0;
  v9 = 0;
  if (!a2)
  {
    v4 = FigSignalErrorAtGM();
LABEL_17:
    v6 = v4;
    goto LABEL_7;
  }

  int64 = xpc_dictionary_get_int64(a1, ".krps_ResponseType");
  v4 = FigXPCMessageCopyCFDate();
  if (v4)
  {
    goto LABEL_17;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_17;
  }

  v4 = FigXPCMessageCopyCFData();
  if (v4)
  {
    goto LABEL_17;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = FigContentKeyResponseParamsCreate(AllocatorForMedia, int64, cf, v10, v9, &v8);
  if (!v6)
  {
    *a2 = v8;
    v8 = 0;
  }

LABEL_7:
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

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t FigContentKeyBossClientServerXPC_SerializeSecureTokenRequestSpecifier(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    xpc_dictionary_set_int64(v5, ".strs_type", *(v4 + 16));
    result = FigXPCMessageSetCFData();
    if (!result)
    {
      result = FigXPCMessageSetCFData();
      if (!result)
      {
        result = FigXPCMessageSetCFArray();
        if (!result)
        {
          result = FigXPCMessageSetCFData();
          if (!result)
          {
            xpc_dictionary_set_int64(v2, ".strs_encryptionMethod", *(v3 + 56));
            return 0;
          }
        }
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopySecureTokenRequestSpecifier(void *a1, CFTypeRef *a2)
{
  v10 = 0;
  int64 = xpc_dictionary_get_int64(a1, ".strs_type");
  v5 = FigXPCMessageCopyCFData();
  if (v5)
  {
    return v5;
  }

  v5 = FigXPCMessageCopyCFData();
  if (v5)
  {
    return v5;
  }

  v5 = FigXPCMessageCopyCFArray();
  if (v5)
  {
    return v5;
  }

  v5 = FigXPCMessageCopyCFData();
  if (v5)
  {
    return v5;
  }

  v6 = xpc_dictionary_get_int64(a1, ".strs_encryptionMethod");
  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = FigContentKeySecureTokenRequestParamsCreate(AllocatorForMedia, int64, 0, 0, 0, 0, v6, &v10);
  if (v8)
  {
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    *a2 = v10;
    v10 = 0;
  }

  return v8;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeyRequestParams_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_10();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t neroidServer_handleRemoteMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioChainSubPipePassthroughCreate(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, uint64_t *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  value = 0;
  v44 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_7_25();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_7_25();
  fig_note_initialize_category_with_default_work_cf();
  if (a2 && a5 && a3)
  {
    v10 = a5;
    FigBufferedAirPlayAudioChainSubPipeGetClassID();
    v11 = CMDerivedObjectCreate();
    if (v11)
    {
      return v11;
    }

    v12 = v44;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    if (a4 && CFDictionaryGetValueIfPresent(a4, @"LoggingID", &value))
    {
      CFStringGetCString(value, DerivedStorage, 20, 0x600u);
    }

    RichestDecodableFormatAndChannelLayout = FigSampleBufferConsumerCreateForSampleBufferConsumer("SubPipePassthroughSbcForInput", (DerivedStorage + 40));
    if (!RichestDecodableFormatAndChannelLayout)
    {
      RichestDecodableFormatAndChannelLayout = FigSampleBufferConsumerSbufInspectorCreate(a1, a2, bapspPassthrough_inspectSampleBuffer, v12, "sbcSbufInspectForPassthrough", (DerivedStorage + 48));
      if (!RichestDecodableFormatAndChannelLayout)
      {
        v15 = CFRetain(a2);
        *(DerivedStorage + 32) = 0;
        *(DerivedStorage + 56) = v15;
        *(DerivedStorage + 64) = 0;
        *(DerivedStorage + 80) = 0;
        v16 = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayAudioChainPassthroughSubPipe.notificationQueue", 0);
        *(DerivedStorage + 24) = v16;
        if (!v16)
        {
          return 4294954510;
        }

        RichestDecodableFormatAndChannelLayout = CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
        if (!RichestDecodableFormatAndChannelLayout)
        {
          if (dword_1EAF16FA0)
          {
            v17 = OUTLINED_FUNCTION_0_65();
            OUTLINED_FUNCTION_311(v17, v18, v19, v20, v21, v22, v23, v24, v35, v37, v39, v41, SBYTE2(v41), BYTE3(v41), SHIDWORD(v41));
            OUTLINED_FUNCTION_40();
            if (a1)
            {
              OUTLINED_FUNCTION_2_59();
              OUTLINED_FUNCTION_12_17();
            }

            OUTLINED_FUNCTION_1_62();
            if (dword_1EAF16FA0)
            {
              v25 = OUTLINED_FUNCTION_0_65();
              OUTLINED_FUNCTION_311(v25, v26, v27, v28, v29, v30, v31, v32, v36, v38, v40, v42, SBYTE2(v42), BYTE3(v42), SHIDWORD(v42));
              OUTLINED_FUNCTION_40();
              if (a1)
              {
                OUTLINED_FUNCTION_2_59();
                OUTLINED_FUNCTION_12_17();
              }

              OUTLINED_FUNCTION_1_62();
            }
          }

          v33 = 0;
          *v10 = v12;
          return v33;
        }
      }
    }

    return RichestDecodableFormatAndChannelLayout;
  }

  OUTLINED_FUNCTION_5_43();

  return FigSignalErrorAtGM();
}

uint64_t bapspPassthrough_inspectSampleBuffer(opaqueCMSampleBuffer *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    if (FormatDescription)
    {
      v7 = FormatDescription;
      v8 = *(v5 + 80);
      if (v8)
      {
        if (!CMAudioFormatDescriptionEqual(FormatDescription, v8, 0xFu, 0))
        {
          v9 = *(v5 + 80);
          *(v5 + 80) = v7;
          CFRetain(v7);
          if (v9)
          {
            CFRelease(v9);
          }
        }
      }

      else
      {
        *(v5 + 80) = FormatDescription;
        CFRetain(FormatDescription);
      }
    }

    if (CMGetAttachment(a1, *MEMORY[0x1E6962E00], 0))
    {
      bapspPassthrough_postNotification(a2, @"PlayResourceReleased");
    }

    if (CMGetAttachment(a1, *MEMORY[0x1E6962DF8], 0))
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&v11, a1);
      bapspPassthrough_postNotification(a2, @"FinishedProcessingData");
    }
  }

  return 1;
}

uint64_t bapspPassthrough_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 33))
  {
    return 0;
  }

  v1 = DerivedStorage;
  *(DerivedStorage + 32) = 0;
  v2 = bapspPassthrough_breakAudioChain();
  v3 = *(v1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 40) = 0;
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 56) = 0;
  }

  v6 = *(v1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 64) = 0;
  }

  v7 = *(v1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 80) = 0;
  }

  *(v1 + 33) = 1;
  return v2;
}

void bapspPassthrough_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bapspPassthrough_invalidate();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 24) = 0;
  }
}

uint64_t bapspPassthrough_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16FA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_311(os_log_and_send_and_compose_flags_and_os_log_type, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21, *v22, v22[2], OS_LOG_TYPE_DEFAULT, 0);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_12_17();
    }

    OUTLINED_FUNCTION_1_62();
  }

  v12 = DerivedStorage[5];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v13)
  {
    return 4294954514;
  }

  result = v13(v12);
  if (result)
  {
    return result;
  }

  v15 = DerivedStorage[6];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v16)
  {
    return 4294954514;
  }

  result = v16(v15);
  if (result)
  {
    return result;
  }

  v17 = DerivedStorage[7];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v18)
  {
    return v18(v17);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t mpd_CreateWidevinePSSHDataEntry()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v40 = *MEMORY[0x1E69E9840];
  destinationBuffer = 0;
  value = 0;
  bzero(sourceBytes, 0x800uLL);
  if (!v5 || !v2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
LABEL_39:
    BlockBufferCopyingMemoryBlock = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  v6 = *MEMORY[0x1E695E480];
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (!BlockBufferCopyingMemoryBlock)
  {
    bzero(v39, 0x800uLL);
    v37 = 0;
    v36 = 0;
    if (!EC_GetEncryptionScheme(v5, &v36))
    {
      if (v36)
      {
        WidevineKeyIdentifierForRange = EC_GetWidevineKeyIdentifierForRange(v5, v4);
        if (WidevineKeyIdentifierForRange)
        {
          v9 = WidevineKeyIdentifierForRange;
          Length = CFDataGetLength(WidevineKeyIdentifierForRange);
          if (Length >= 1)
          {
            v11 = Length;
            if (v36 == 3)
            {
              v39[0] = 8;
              v12 = OUTLINED_FUNCTION_3_46();
              *v12 = 1;
              snprintf(v39 + 1, 0x7FFuLL, "%s", v12);
              v37 = 0;
              free(v12);
              v13 = 2;
            }

            else
            {
              v13 = 0;
            }

            snprintf(&v39[v13 / 2], 2048 - v13, "%c", 18);
            v14 = v13 | 1;
            v15 = mpd_CreateVarint(v11, &v37);
            snprintf(v39 + v14, v13 ^ 0x7FF, "%s", v37);
            v16 = v37;
            if (v37)
            {
              v37 = 0;
              free(v16);
            }

            BytePtr = CFDataGetBytePtr(v9);
            v23 = v14 + v15;
            do
            {
              v24 = *BytePtr++;
              v23 += safe_snprintf(v39 + v23, 2048 - v23, "%c", v17, v18, v19, v20, v21, v24);
              --v11;
            }

            while (v11);
            if ((v36 & 0xFFFFFFFE) == 2)
            {
              snprintf(v39 + v23, 2048 - v23, "%c", 72);
              v30 = v23 + 1;
              if (v36 == 3)
              {
                v31 = 1667591779;
              }

              else
              {
                v31 = 1667392371;
              }

              v32 = mpd_CreateVarint(v31, &v37);
              snprintf(v39 + v30, 2047 - v23, "%s", v37);
              v33 = v37;
              if (v37)
              {
                v37 = 0;
                free(v33);
              }

              v23 = v30 + v32;
            }

            __memcpy_chk();
            v25 = v37;
            if (v37)
            {
              v37 = 0;
              free(v25);
            }

            if (v23)
            {
              BlockBufferCopyingMemoryBlock = CMBlockBufferCreateWithMemoryBlock(v6, 0, v23, v6, 0, 0, v23, 1u, &destinationBuffer);
              if (BlockBufferCopyingMemoryBlock)
              {
                goto LABEL_40;
              }

              BlockBufferCopyingMemoryBlock = CMBlockBufferReplaceDataBytes(sourceBytes, destinationBuffer, 0, v23);
              if (BlockBufferCopyingMemoryBlock)
              {
                goto LABEL_40;
              }

              MutableCopy = FigCFDictionaryCreateMutableCopy();
              if (MutableCopy)
              {
                v27 = MutableCopy;
                CFDictionarySetValue(MutableCopy, @"SystemID", value);
                CFDictionarySetValue(v27, @"Data", destinationBuffer);
                v28 = 0;
                *v2 = v27;
                goto LABEL_23;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_4();
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    BlockBufferCopyingMemoryBlock = FigSignalErrorAtGM();
    if (!BlockBufferCopyingMemoryBlock)
    {
LABEL_37:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      goto LABEL_39;
    }
  }

LABEL_40:
  v28 = BlockBufferCopyingMemoryBlock;
LABEL_23:
  if (value)
  {
    CFRelease(value);
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v28;
}

uint64_t MoviePSSHData_CreatePSSHDataEntries(__CFString *a1, __CFArray **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a1 && a2)
  {
    if (!EC_HasPlayReadyInfo(a1) && !EC_HasWidevineInfo(a1) && !EC_HasLegacyConfigInfo(a1))
    {
      return 0;
    }

    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      if (EC_ShouldWritePlayReadyPSSHAtom(a1) && EC_HasPlayReadyInfo(a1))
      {
        EC_GetCurrentRangeIndex(a1);
        value = 0;
        bzero(sourceBytes, 0x800uLL);
        memset(dataLength, 0, sizeof(dataLength));
        if (FigCreateBlockBufferCopyingMemoryBlock() || (CurrentRangeIndex = EC_GetCurrentRangeIndex(a1), MoviePSSHData_GetPlayReadyProtectionSystemData(a1, CurrentRangeIndex, sourceBytes, dataLength)) || CMBlockBufferCreateWithMemoryBlock(v4, 0, dataLength[0], v4, 0, 0, dataLength[0], 1u, &dataLength[1]) || CMBlockBufferReplaceDataBytes(sourceBytes, *&dataLength[1], 0, dataLength[0]))
        {
          v9 = 0;
          v10 = 0;
        }

        else
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          v9 = MutableCopy;
          if (MutableCopy)
          {
            CFDictionarySetValue(MutableCopy, @"SystemID", value);
            CFDictionarySetValue(v9, @"Data", *&dataLength[1]);
            cf = v9;
            v10 = 1;
          }

          else
          {
            fig_log_get_emitter();
            v10 = FigSignalErrorAtGM() == 0;
          }
        }

        if (value)
        {
          CFRelease(value);
        }

        if (*&dataLength[1])
        {
          CFRelease(*&dataLength[1]);
        }

        if (v10)
        {
          CFArrayAppendValue(v6, v9);
          if (v9)
          {
            CFRelease(v9);
            cf = 0;
          }
        }
      }

      if (EC_ShouldWriteWidevinePSSHAtom(a1))
      {
        if (EC_HasWidevineInfo(a1))
        {
          EC_GetCurrentRangeIndex(a1);
          if (!mpd_CreateWidevinePSSHDataEntry())
          {
            CFArrayAppendValue(v6, cf);
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }
      }

      *a2 = v6;
      return 0;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_63();

  return FigSignalErrorAtGM();
}

uint64_t mpd_CreateVarint(unint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_3_46();
  if (a1 < 0x80)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v4[v5] = v6 | 0x80;
      a1 = v6 >> 7;
      ++v5;
      v7 = v6 >> 14;
      v6 >>= 7;
    }

    while (v7);
  }

  v8 = v5 + 1;
  v4[v5] = a1;
  *a2 = v4;
  return v8;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MoviePSSHData_GetPlayReadyProtectionSystemData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercentral_SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_14_18();
  v9 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v1, v2, v3, v4, v5, v6, v7, v8);
  if (!v9)
  {
    v10 = *(DerivedStorage + 16);
    if (v10)
    {
      FigBaseObject = FigPlayerGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v12)
      {
        return 4294954514;
      }

      return v12(FigBaseObject, 0, 0);
    }

    else
    {
      OUTLINED_FUNCTION_376();
      return FigSignalErrorAtGM();
    }
  }

  return v9;
}

uint64_t playercentral_handleSetProperty(OpaqueFigPlayer *a1, void *a2, const __CFString *a3, CFMutableArrayRef a4, unsigned __int8 *a5, const __CFString **a6, const void **a7)
{
  v98 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v15 = DerivedStorage;
    if (CFEqual(a3, @"FigAudioSession"))
    {
      v16 = *(v15 + 24);
      if (!v16)
      {
        goto LABEL_30;
      }

      if (*(v15 + 113))
      {
        if (!dword_1EAF16FC0 || (v96 = 0, type = OS_LOG_TYPE_DEFAULT, os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), OUTLINED_FUNCTION_7(), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v16 = *(v15 + 24)) != 0))
        {
          v21 = *(CMBaseObjectGetVTable() + 16);
          if (v21)
          {
            v22 = *(v21 + 56);
            if (v22)
            {
              v22(v16, *MEMORY[0x1E69B0148], *MEMORY[0x1E695E4C0]);
            }
          }
        }

        *(v15 + 113) = 0;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_9_23();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_10_22();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_21();
      FigNotificationCenterRemoveWeakListener();
      if (*(v15 + 97))
      {
        playercentral_updateAndSetAudioSessionPlayingState(a1, 0);
      }

      v23 = *(v15 + 24);
      if (v23)
      {
        v24 = *(CMBaseObjectGetVTable() + 16);
        if (v24)
        {
          v25 = *(v24 + 56);
          if (v25)
          {
            v25(v23, *MEMORY[0x1E69B0130], *MEMORY[0x1E69AFA40]);
          }
        }

        v26 = *(v15 + 24);
      }

      else
      {
LABEL_30:
        v26 = 0;
      }

      *(v15 + 24) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (*(v15 + 24))
      {
        if (*(v15 + 16))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_9_23();
          CMNotificationCenterAddListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_10_22();
          CMNotificationCenterAddListener();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_11_21();
        FigNotificationCenterAddWeakListener();
        playercentral_updateSessionMutePriority(a1);
        playercentral_establishIfPlayerIsSilentAndTellMXSession(a1, 0);
        if (FigCFEqual())
        {
          v43 = *(v15 + 24);
          if (v43)
          {
            v44 = *(CMBaseObjectGetVTable() + 16);
            if (v44)
            {
              v45 = *(v44 + 56);
              if (v45)
              {
                v45(v43, *MEMORY[0x1E69AFF98], *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }

        playercentral_updateAndSetAudioSessionPlayingState(a1, *(v15 + 97));
        if (a1)
        {
          CFRetain(a1);
        }

        v46 = *(v15 + 104);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_async(v46, block);
      }

      goto LABEL_36;
    }

    if (CFEqual(a3, @"Vibrator"))
    {
      if (dword_1EAF16FC0)
      {
        v96 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v31 = *(v15 + 24);
      if (v31)
      {
        v32 = *(CMBaseObjectGetVTable() + 16);
        if (v32)
        {
          v33 = *(v32 + 56);
          if (v33)
          {
            v33(v31, *MEMORY[0x1E69B04A0], a4);
          }
        }

        v34 = *(v15 + 24);
        v35 = *MEMORY[0x1E69B04A8];
        if (a4)
        {
          if (v34)
          {
            v36 = *(CMBaseObjectGetVTable() + 16);
            if (v36)
            {
              v37 = *(v36 + 56);
              if (v37)
              {
                v37(v34, v35, *MEMORY[0x1E695E4D0]);
              }
            }
          }

          v20 = 0;
          *(v15 + 72) = 1;
        }

        else
        {
          if (v34)
          {
            v38 = *(CMBaseObjectGetVTable() + 16);
            if (v38)
            {
              v39 = *(v38 + 56);
              if (v39)
              {
                v39(v34, v35, *MEMORY[0x1E695E4C0]);
              }
            }
          }

          v20 = 0;
          *(v15 + 72) = 0;
        }

        goto LABEL_103;
      }

      goto LABEL_102;
    }

    if (CFEqual(a3, @"ClientName"))
    {
      v19 = *(v15 + 48);
      if (v19)
      {
        CFRelease(v19);
        *(v15 + 48) = 0;
      }

      if (a4)
      {
        v20 = 0;
        *(v15 + 48) = CFRetain(a4);
LABEL_103:
        *a5 = 1;
        return v20;
      }

LABEL_102:
      v20 = 0;
      goto LABEL_103;
    }

    if (CFEqual(a3, @"AllowsNeroPlayback"))
    {
      if (!a4)
      {
        goto LABEL_102;
      }

      CFBooleanGetTypeID();
      if (&unk_1EAF16000 != OUTLINED_FUNCTION_30_9())
      {
        goto LABEL_102;
      }

      Value = CFBooleanGetValue(a4);
      if (qword_1ED4CA878 != -1)
      {
        dispatch_once(&qword_1ED4CA878, &__block_literal_global_25);
      }

      if (_MergedGlobals_42)
      {
        Value = 0;
      }

      if (Value == *(v15 + 98))
      {
        goto LABEL_102;
      }

      v41 = *(v15 + 104);
      if (!v41)
      {
        goto LABEL_102;
      }

      if (a1)
      {
        CFRetain(a1);
        v41 = *(v15 + 104);
      }

      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_22;
      v92[3] = &__block_descriptor_49_e5_v8__0l;
      v93 = Value;
      v92[4] = v15;
      v92[5] = a1;
      v42 = v92;
LABEL_101:
      dispatch_async(v41, v42);
      goto LABEL_102;
    }

    if (CFEqual(a3, @"UsesNeroWhileNeroPlayIsActive"))
    {
      if (a4)
      {
        CFBooleanGetTypeID();
        if (&unk_1EAF16000 == OUTLINED_FUNCTION_30_9())
        {
          v47 = CFBooleanGetValue(a4);
          if (v47 == *(v15 + 99))
          {
            goto LABEL_102;
          }

          v48 = v47;
          v41 = *(v15 + 104);
          if (!v41)
          {
            goto LABEL_102;
          }

          if (a1)
          {
            CFRetain(a1);
            v41 = *(v15 + 104);
          }

          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_2;
          v90[3] = &__block_descriptor_49_e5_v8__0l;
          v91 = v48;
          v90[4] = v15;
          v90[5] = a1;
          v42 = v90;
          goto LABEL_101;
        }
      }

      goto LABEL_105;
    }

    if (CFEqual(a3, @"IsPrioritizedForNeroPlayback"))
    {
      if (a4)
      {
        CFBooleanGetTypeID();
        if (&unk_1EAF16000 == OUTLINED_FUNCTION_30_9())
        {
          v49 = CFBooleanGetValue(a4);
          if (v49 == *(v15 + 100))
          {
            goto LABEL_102;
          }

          v50 = v49;
          v41 = *(v15 + 104);
          if (!v41)
          {
            goto LABEL_102;
          }

          if (a1)
          {
            CFRetain(a1);
            v41 = *(v15 + 104);
          }

          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 3221225472;
          v88[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_3;
          v88[3] = &__block_descriptor_49_e5_v8__0l;
          v89 = v50;
          v88[4] = v15;
          v88[5] = a1;
          v42 = v88;
          goto LABEL_101;
        }
      }

LABEL_105:
      OUTLINED_FUNCTION_39_4();
      v20 = FigSignalErrorAtGM();
      goto LABEL_103;
    }

    if (CFEqual(a3, @"ClientInBackground"))
    {
      if (a4)
      {
        CFBooleanGetTypeID();
        if (&unk_1EAF16000 == OUTLINED_FUNCTION_30_9())
        {
          *(v15 + 56) = CFBooleanGetValue(a4);
          if (*(v15 + 24))
          {
            if (playercentral_isNeroPlaybackAutoswitchAllowed(a1) && *(v15 + 104))
            {
              if (a1)
              {
                CFRetain(a1);
              }

              if (*(v15 + 56))
              {
                v51 = 750000000;
              }

              else
              {
                v51 = 0;
              }

              v52 = dispatch_time(0, v51);
              v53 = *(v15 + 104);
              v87[0] = MEMORY[0x1E69E9820];
              v87[1] = 3221225472;
              v87[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_4;
              v87[3] = &__block_descriptor_40_e5_v8__0l;
              v87[4] = a1;
              dispatch_after(v52, v53, v87);
            }
          }
        }
      }

      goto LABEL_36;
    }

    if (CFEqual(a3, @"PlayerRole"))
    {
      if (a4 && (v54 = CFGetTypeID(a4), v54 != CFStringGetTypeID()))
      {
        OUTLINED_FUNCTION_39_4();
        updated = FigSignalErrorAtGM();
        if (!updated)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v55 = FigCFEqual();
        v56 = FigCFEqual();
        v57 = a4;
        v58 = *(v15 + 160);
        *(v15 + 160) = v57;
        v59 = v57;
        if (v57)
        {
          CFRetain(v57);
        }

        if (v58)
        {
          CFRelease(v58);
        }

        if (v55 == v56)
        {
          goto LABEL_212;
        }

        v60 = *(v15 + 24);
        if (!v60)
        {
          goto LABEL_212;
        }

        v61 = MEMORY[0x1E695E4D0];
        if (!v55)
        {
          v61 = MEMORY[0x1E695E4C0];
        }

        updated = FigAudioSessionSetMXSessionProperty(v60, *MEMORY[0x1E69AFF98], *v61);
        if (!updated)
        {
LABEL_212:
          updated = playercentral_updateSessionMutePriority(a1);
          if (!updated)
          {
            a4 = v59;
LABEL_36:
            v27 = 0;
            goto LABEL_37;
          }
        }
      }

      return updated;
    }

    if (CFEqual(a3, @"PIPMutingPolicy"))
    {
      if (a4 && (v63 = CFGetTypeID(a4), v63 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, (v15 + 168));
        v64 = playercentral_updateSessionMutePriority(a1);
      }

      else
      {
        OUTLINED_FUNCTION_39_4();
        v64 = FigSignalErrorAtGM();
      }

      v20 = v64;
      if (v64)
      {
        return v20;
      }

      goto LABEL_103;
    }

    v65 = a4;
    v86 = a5;
    if (CFEqual(a3, @"DefaultMutingPolicy"))
    {
      if (!a4 || (v66 = CFGetTypeID(a4), v66 != CFNumberGetTypeID()))
      {
LABEL_147:
        OUTLINED_FUNCTION_39_4();
        v68 = FigSignalErrorAtGM();
        goto LABEL_148;
      }

      v71 = (v15 + 172);
LABEL_167:
      CFNumberGetValue(a4, kCFNumberSInt32Type, v71);
      v68 = playercentral_updateSessionMutePriority(a1);
LABEL_148:
      v20 = v68;
      if (v68)
      {
        return v20;
      }

      goto LABEL_103;
    }

    if (CFEqual(a3, @"NonMixableMutingPolicy"))
    {
      if (!a4)
      {
        goto LABEL_147;
      }

      v67 = CFGetTypeID(a4);
      if (v67 != CFNumberGetTypeID())
      {
        goto LABEL_147;
      }

      v71 = (v15 + 176);
      goto LABEL_167;
    }

    if (CFEqual(a3, @"PlayerVolume"))
    {
      if (!a4)
      {
        goto LABEL_158;
      }

      v69 = CFGetTypeID(a4);
      if (v69 != CFNumberGetTypeID())
      {
        goto LABEL_158;
      }

      valuePtr[0] = 0.0;
      v79 = CFNumberGetValue(a4, kCFNumberFloat32Type, valuePtr);
      if (valuePtr[0] != 0.0 || v79 == 0)
      {
        v81 = 4;
      }

      else
      {
        v81 = 3;
      }
    }

    else
    {
      if (!CFEqual(a3, @"PlayerMuted"))
      {
        if (CFEqual(a3, @"PreventAutomaticBackgroundingDuringVideoPlayback"))
        {
          if (!a4)
          {
            goto LABEL_147;
          }

          v72 = CFGetTypeID(a4);
          if (v72 != CFBooleanGetTypeID())
          {
            goto LABEL_147;
          }

          v73 = CFBooleanGetValue(a4);
          if (*(v15 + 136) != v73)
          {
            *(v15 + 136) = v73;
            playercentral_updateVideoPlaybackAssertion(a1);
          }
        }

        else
        {
          if (CFEqual(a3, @"ItemsToPrebuffer"))
          {
            if (a4)
            {
              v74 = CFGetTypeID(a4);
              if (v74 != CFArrayGetTypeID())
              {
                goto LABEL_2;
              }

              capacity = CFArrayGetCount(a4);
              if (capacity >= 1)
              {
                Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
                if (!Mutable)
                {
                  goto LABEL_2;
                }

                v75 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v65, v75);
                  if (!ValueAtIndex || (v77 = CFGetTypeID(ValueAtIndex), v77 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemCentralVTable)
                  {
                    OUTLINED_FUNCTION_39_4();
                    v20 = FigSignalErrorAtGM();
                    v30 = 0;
                    goto LABEL_207;
                  }

                  CMBaseObjectGetDerivedStorage();
                  v30 = FigCFWeakReferenceHolderCopyReferencedObject();
                  if (v30 != a1)
                  {
                    break;
                  }

                  FigCFArrayAppendValue();
                  if (a1)
                  {
                    CFRelease(v30);
                  }

                  if (capacity == ++v75)
                  {
                    v78 = Mutable;
                    goto LABEL_200;
                  }
                }

                OUTLINED_FUNCTION_39_4();
                v20 = FigSignalErrorAtGM();
LABEL_207:
                v27 = Mutable;
                goto LABEL_44;
              }

              v78 = 0;
              Mutable = a4;
LABEL_200:
              v83 = *(v15 + 200);
              *(v15 + 200) = v65;
              CFRetain(v65);
              a4 = Mutable;
            }

            else
            {
              a4 = 0;
              v78 = 0;
              v83 = *(v15 + 200);
              *(v15 + 200) = 0;
            }

            if (v83)
            {
              CFRelease(v83);
            }

            v27 = v78;
            goto LABEL_204;
          }

          if (!CFEqual(a3, @"PlayingInterstitials"))
          {
LABEL_159:
            v27 = 0;
            goto LABEL_37;
          }

          if (a4)
          {
            v82 = CFGetTypeID(a4);
            if (v82 == CFBooleanGetTypeID())
            {
              *(v15 + 208) = CFBooleanGetValue(a4);
              playercentral_updateCMSessionIsPlayingState(a1);
            }
          }
        }

        v20 = 0;
        goto LABEL_103;
      }

      if (!a4 || (v70 = CFGetTypeID(a4), v70 != CFBooleanGetTypeID()))
      {
LABEL_158:
        OUTLINED_FUNCTION_39_4();
        updated = FigSignalErrorAtGM();
        if (updated)
        {
          return updated;
        }

        goto LABEL_159;
      }

      if (*MEMORY[0x1E695E4D0] == a4)
      {
        v81 = 1;
      }

      else
      {
        v81 = 2;
      }
    }

    playercentral_establishIfPlayerIsSilentAndTellMXSession(a1, v81);
    v27 = 0;
LABEL_204:
    a5 = v86;
LABEL_37:
    *a5 = 0;
    if (a3)
    {
      v28 = CFRetain(a3);
    }

    else
    {
      v28 = 0;
    }

    *a6 = v28;
    if (a4)
    {
      v29 = CFRetain(a4);
    }

    else
    {
      v29 = 0;
    }

    v30 = 0;
    v20 = 0;
    *a7 = v29;
    if (!v27)
    {
LABEL_45:
      if (v30)
      {
        CFRelease(v30);
      }

      return v20;
    }

LABEL_44:
    CFRelease(v27);
    goto LABEL_45;
  }

LABEL_2:
  OUTLINED_FUNCTION_39_4();

  return FigSignalErrorAtGM();
}

uint64_t playercentral_updateSessionMutePriority(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 172);
  if (FigCFEqual())
  {
    v4 = 168;
LABEL_8:
    v3 = *(v2 + v4);
    goto LABEL_9;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if ((*(v5 + 114) || *(v5 + 115)) && *(CMBaseObjectGetDerivedStorage() + 176) == 3)
  {
    v4 = 176;
    goto LABEL_8;
  }

LABEL_9:
  switch(v3)
  {
    case 0:
      v6 = MEMORY[0x1E69AFA40];
      goto LABEL_14;
    case 1:
      v6 = MEMORY[0x1E69AFA38];
      goto LABEL_14;
    case 2:
      v6 = MEMORY[0x1E69AFA30];
      goto LABEL_14;
    case 3:
      v6 = MEMORY[0x1E69AFA28];
LABEL_14:
      v7 = *v6;
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_303();
      result = FigSignalErrorAtGM();
      if (result)
      {
        return result;
      }

      v7 = 0;
LABEL_15:
      v8 = *(v2 + 24);
      if (v8 && (v9 = *(CMBaseObjectGetVTable() + 16)) != 0)
      {
        v10 = *(v9 + 56);
        if (v10)
        {
          v11 = *MEMORY[0x1E69B0130];

          result = v10(v8, v11, v7);
        }

        else
        {
          result = 4294948071;
        }
      }

      else
      {
        result = 4294948075;
      }

      break;
  }

  return result;
}

void playercentral_establishIfPlayerIsSilentAndTellMXSession(uint64_t a1, unsigned int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    return;
  }

  v5 = 0;
  v6 = &unk_1EAF16000;
  if (a2 > 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (((1 << a2) & 0x4A) != 0)
    {
      if (dword_1EAF16FC0)
      {
        v8 = OUTLINED_FUNCTION_13_14();
        os_log_type_enabled(v8, type[0]);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v10 = (DerivedStorage + 116);
          v51 = 136315906;
          if (!DerivedStorage)
          {
            v10 = "";
          }

          v52 = "playercentral_establishIfPlayerIsSilentAndTellMXSession";
          v53 = 2048;
          v54 = a1;
          v55 = 2082;
          v56 = v10;
          v57 = 1024;
          v58 = a2;
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456();
        }

        OUTLINED_FUNCTION_1_64();
        OUTLINED_FUNCTION_61();
        v6 = &unk_1EAF16000;
      }

      v5 = (a2 & 0xFFFFFFFD) == 1;
      v7 = 1;
    }
  }

  v11 = MEMORY[0x1E695E480];
  v12 = MEMORY[0x1E695E4D0];
  if (a2 > 6 || ((1 << a2) & 0x4E) == 0)
  {
    number = 0;
    FigBaseObject = FigPlayerGetFigBaseObject(a1);
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(FigBaseObject, @"PlayerMuted", *v11, &number);
    }

    v18 = number;
    if (number == *v12)
    {
      if (dword_1EAF16FC0)
      {
        v19 = OUTLINED_FUNCTION_15_16();
        os_log_type_enabled(v19, v49[0]);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456();
        }

        OUTLINED_FUNCTION_1_64();
        v5 = 1;
        OUTLINED_FUNCTION_61();
        v18 = number;
        v7 = 1;
        v6 = v12;
        v12 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v5 = 1;
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (a2 != 4 && !v7)
  {
    number = 0;
    *type = 0;
    v13 = FigPlayerGetFigBaseObject(a1);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, @"PlayerVolume", *v11, &number);
    }

    if (number)
    {
      v7 = 0;
      if (CFNumberGetValue(number, kCFNumberFloat32Type, type) && *type == 0.0)
      {
        if (*(v6 + 1008))
        {
          v15 = OUTLINED_FUNCTION_21_11();
          os_log_type_enabled(v15, v48);
          OUTLINED_FUNCTION_40();
          if (v2)
          {
            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_6_37();
            OUTLINED_FUNCTION_0_66();
            OUTLINED_FUNCTION_31();
            OUTLINED_FUNCTION_456();
          }

          OUTLINED_FUNCTION_1_64();
          v5 = 1;
          OUTLINED_FUNCTION_61();
          v7 = 1;
          v12 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v5 = 1;
          v7 = 1;
        }
      }

      if (number)
      {
        CFRelease(number);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v20 = MEMORY[0x1E695E4C0];
  if (a2 == 5 || v7)
  {
    if (a2 == 5 && !v7)
    {
      if (*(v6 + 1008))
      {
        v25 = OUTLINED_FUNCTION_13_14();
        v2 = number;
        if (os_log_type_enabled(v25, type[0]))
        {
          v26 = v2;
        }

        else
        {
          v26 = v2 & 0xFFFFFFFE;
        }

        if (v26)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
          v2 = number;
        }

        OUTLINED_FUNCTION_1_64();
        OUTLINED_FUNCTION_42_1();
      }

      v7 = 0;
    }

    goto LABEL_73;
  }

  number = 0;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v21)
  {
    v21(a1, 0, &number);
  }

  if (number)
  {
    *type = 0;
    v22 = FigPlaybackItemGetFigBaseObject(number);
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, @"HasEnabledAudio", *MEMORY[0x1E695E480], type);
    }

    v24 = *type;
    if (*type == *v20)
    {
      if (*(v6 + 1008))
      {
        v28 = OUTLINED_FUNCTION_21_11();
        v2 = *v49;
        if (os_log_type_enabled(v28, v48))
        {
          v29 = v2;
        }

        else
        {
          v29 = v2 & 0xFFFFFFFE;
        }

        if (v29)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
          v2 = *v49;
        }

        OUTLINED_FUNCTION_1_64();
        v7 = 1;
        OUTLINED_FUNCTION_42_1();
        v24 = *type;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }

LABEL_71:
    if (number)
    {
      CFRelease(number);
    }

    goto LABEL_73;
  }

  if (*(v6 + 1008))
  {
    v27 = OUTLINED_FUNCTION_15_16();
    os_log_type_enabled(v27, v49[0]);
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_0_66();
      OUTLINED_FUNCTION_31();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_64();
    v7 = 1;
    OUTLINED_FUNCTION_61();
    v6 = v12;
    v20 = MEMORY[0x1E695E4C0];
    goto LABEL_71;
  }

  v7 = 1;
LABEL_73:
  if (!v7 && *(v6 + 1008))
  {
    v30 = OUTLINED_FUNCTION_13_14();
    os_log_type_enabled(v30, type[0]);
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_0_66();
      OUTLINED_FUNCTION_31();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  v31 = CMBaseObjectGetDerivedStorage();
  v32 = *(v31 + 24);
  if (v32)
  {
    v33 = v31;
    v34 = *v12;
    v35 = *v20;
    v36 = v5 ? *v12 : *v20;
    v37 = *(CMBaseObjectGetVTable() + 16);
    if (v37)
    {
      v38 = *(v37 + 56);
      if (v38)
      {
        if (!v38(v32, *MEMORY[0x1E69B00B8], v36))
        {
          SInt8 = FigCFNumberCreateSInt8();
          v40 = *(v33 + 24);
          if (v40)
          {
            v41 = *(CMBaseObjectGetVTable() + 16);
            if (v41)
            {
              v42 = *(v41 + 56);
              if (v42)
              {
                if (!v42(v40, *MEMORY[0x1E69AFD10], SInt8))
                {
                  v43 = *(v33 + 24);
                  if (v7)
                  {
                    v44 = v34;
                  }

                  else
                  {
                    v44 = v35;
                  }

                  if (v43)
                  {
                    v45 = *(CMBaseObjectGetVTable() + 16);
                    if (v45)
                    {
                      v46 = *(v45 + 56);
                      if (v46)
                      {
                        v46(v43, *MEMORY[0x1E69AFF20], v44);
                      }
                    }
                  }
                }
              }
            }
          }

          if (SInt8)
          {
            CFRelease(SInt8);
          }
        }
      }
    }
  }
}

void playercentral_updateCMSessionIsPlayingState(OpaqueFigPlayer *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 212) == 0.0)
  {
    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6 || v6(v5, 0, &cf))
  {
    goto LABEL_23;
  }

  v7 = *(v4 + 212) == 0.0 || cf == 0;
  if (v7 || *(v4 + 208))
  {
LABEL_9:
    playercentral_updateAndSetAudioSessionPlayingState(a1, 0);
    if (!dword_1EAF16FC0)
    {
      goto LABEL_23;
    }

    v8 = OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_434_1(v8, v9, v10, v11, v12, v13, v14, v15, v35, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_22;
    }

    CMBaseObjectGetDerivedStorage();
    v39 = 136316162;
    v40 = "playercentral_updateCMSessionIsPlayingState";
    v41 = 2048;
    v42 = a1;
    OUTLINED_FUNCTION_19_14();
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    OUTLINED_FUNCTION_39();
    goto LABEL_12;
  }

  playercentral_updateAndSetAudioSessionPlayingState(a1, 1);
  if (!dword_1EAF16FC0)
  {
    goto LABEL_23;
  }

  v20 = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_434_1(v20, v21, v22, v23, v24, v25, v26, v27, v35, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
  OUTLINED_FUNCTION_40();
  if (v1)
  {
    v28 = CMBaseObjectGetDerivedStorage();
    v29 = *(v4 + 97);
    v30 = (v28 + 116);
    v31 = *(v4 + 212);
    if (!v28)
    {
      v30 = "";
    }

    v32 = "playing";
    v39 = 136316418;
    v40 = "playercentral_updateCMSessionIsPlayingState";
    v41 = 2048;
    v42 = a1;
    if (!v29)
    {
      v32 = "stopped";
    }

    v33 = v31;
    v43 = 2082;
    v44 = v30;
    v34 = "NO";
    v45 = 2082;
    v46 = v32;
    if (cf)
    {
      v34 = "a";
    }

    v47 = 2048;
    v48 = v33;
    v49 = 2082;
    v50 = v34;
    OUTLINED_FUNCTION_39();
LABEL_12:
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_456();
  }

LABEL_22:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_414();
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZL42playercentral_updateVideoPlaybackAssertionP15OpaqueFigPlayer_block_invoke(uint64_t a1)
{
  v64[16] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E4D0];
  if (*(*(a1 + 32) + 8))
  {
    v5 = 1;
    v6 = 1;
  }

  else
  {
    v64[0] = 0;
    v7 = *(a1 + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8 && (v8(v7, 0, v64), v64[0]))
    {
      cf = 0;
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v64[0]);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(FigBaseObject, @"HasEnabledVideo", *v3, &cf);
      }

      v11 = cf;
      v12 = *v4;
      v13 = cf == *v4;
      if (!*(*(a1 + 32) + 136))
      {
        goto LABEL_41;
      }

      v57 = 0.0;
      v14 = *(a1 + 40);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v15)
      {
        v15(v14, &v57);
      }

      v11 = cf;
      if (v64[0])
      {
        v6 = v57 == 0.0 || cf != v12;
      }

      else
      {
LABEL_41:
        v6 = 1;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v64[0])
      {
        CFRelease(v64[0]);
      }
    }

    else
    {
      v13 = 0;
      v6 = 1;
    }

    v5 = !v13;
  }

  v17 = *(CMBaseObjectGetDerivedStorage() + 24);
  if (v17)
  {
    if (v5)
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    v18 = *(CMBaseObjectGetVTable() + 16);
    if (v18)
    {
      v19 = *(v18 + 56);
      if (v19)
      {
        v19(v17, *MEMORY[0x1E69B00C8], *v4);
      }
    }
  }

  v20 = *(*(a1 + 32) + 144);
  if (v6)
  {
    if (v20)
    {
      if (!dword_1EAF16FC0)
      {
        goto LABEL_37;
      }

      v21 = OUTLINED_FUNCTION_18_11();
      OUTLINED_FUNCTION_311(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, type, SBYTE2(type), HIBYTE(type), SLODWORD(v57));
      OUTLINED_FUNCTION_40();
      if (v4)
      {
        v29 = *(a1 + 40);
        CMBaseObjectGetDerivedStorage();
        LODWORD(cf) = 136315906;
        OUTLINED_FUNCTION_114();
        v59 = v29;
        OUTLINED_FUNCTION_19_14();
        v62 = 2114;
        v63[0] = v30;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
      v20 = *(*(a1 + 32) + 144);
      if (v20)
      {
LABEL_37:
        CFRelease(v20);
        *(*(a1 + 32) + 144) = 0;
      }
    }
  }

  else if (!v20)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v32 = *(a1 + 32);
    if ((UpTimeNanoseconds - *(v32 + 152)) >= 0x3B9ACA01)
    {
      v33 = UpTimeNanoseconds;
      v34 = FigSFBSKeepForegroundAssertionCreate(*v3, *(v32 + 40), *(v32 + 32), (v32 + 144));
      if (*(*(a1 + 32) + 144))
      {
        if (dword_1EAF16FC0)
        {
          v35 = OUTLINED_FUNCTION_18_11();
          OUTLINED_FUNCTION_311(v35, v36, v37, v38, v39, v40, v41, v42, v53, v54, v55, type, SBYTE2(type), HIBYTE(type), SLODWORD(v57));
          OUTLINED_FUNCTION_40();
          if (v4)
          {
            v43 = *(a1 + 40);
            CMBaseObjectGetDerivedStorage();
            LODWORD(cf) = 136315906;
            OUTLINED_FUNCTION_114();
            v59 = v43;
            OUTLINED_FUNCTION_19_14();
            v62 = 2114;
            v63[0] = v44;
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_31();
            OUTLINED_FUNCTION_456();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414();
        }
      }

      else
      {
        v46 = v34;
        v57 = 0.0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v48 = v57;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v49 = LODWORD(v48);
        }

        else
        {
          v49 = LODWORD(v48) & 0xFFFFFFFE;
        }

        if (v49)
        {
          v50 = *(a1 + 40);
          CMBaseObjectGetDerivedStorage();
          LODWORD(cf) = 136316162;
          OUTLINED_FUNCTION_114();
          v59 = v50;
          v60 = 2082;
          v61 = v51;
          v62 = 1024;
          LODWORD(v63[0]) = v46;
          WORD2(v63[0]) = 2114;
          *(v63 + 6) = v52;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(*(a1 + 32) + 152) = v33;
      }
    }
  }

  v45 = *(a1 + 40);
  if (v45)
  {
    CFRelease(v45);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t itemcentral_SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    goto LABEL_10;
  }

  v1 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid())
  {
    goto LABEL_10;
  }

  v2 = OUTLINED_FUNCTION_14_18();
  v10 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v2, v3, v4, v5, v6, v7, v8, v9);
  if (v10)
  {
    return v10;
  }

  v11 = *(v1 + 8);
  if (!v11)
  {
LABEL_10:
    OUTLINED_FUNCTION_376();
    return FigSignalErrorAtGM();
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(v11);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(FigBaseObject, 0, 0);
}

uint64_t itemcentral_isParentPlayerValid()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *(DerivedStorage + 16))
  {
    return 0;
  }

  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  v2 = CMBaseObjectGetDerivedStorage();
  if (!v2 || *(v2 + 8))
  {
    v3 = 0;
    if (!v1)
    {
      return v3;
    }

    goto LABEL_6;
  }

  v3 = 1;
  if (v1)
  {
LABEL_6:
    CFRelease(v1);
  }

  return v3;
}

uint64_t itemcentral_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  if (!a2)
  {
    goto LABEL_19;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 16) || !itemcentral_isParentPlayerValid())
  {
    goto LABEL_19;
  }

  v7 = OUTLINED_FUNCTION_23_15();
  v12 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v7, a2, 0, v8, v9, v10, v11);
  if (v12)
  {
LABEL_10:
    v16 = v12;
    goto LABEL_12;
  }

  v13 = *(v6 + 8);
  if (!v13)
  {
LABEL_19:
    OUTLINED_FUNCTION_303();
    v15 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v14)
  {
    v15 = v14(v13, cf, &v18);
LABEL_8:
    v16 = v15;
    if (v15)
    {
      goto LABEL_12;
    }

    v12 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v19, v18, a3);
    goto LABEL_10;
  }

  v16 = 4294954514;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t playercentral_SetRateWithFade(OpaqueFigPlayer *a1, float a2, CMTime *a3)
{
  v5 = OUTLINED_FUNCTION_31_9();
  v6 = v5;
  cf = 0;
  if (*(v5 + 8) || !*(v5 + 16))
  {
    OUTLINED_FUNCTION_239();
    SetRateOptions = FigSignalErrorAtGM();
LABEL_3:
    v8 = SetRateOptions;
    goto LABEL_4;
  }

  SetRateOptions = FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 0, &cf);
  if (SetRateOptions)
  {
    goto LABEL_3;
  }

  FigCFDictionarySetCMTime();
  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v11)
  {
    SetRateOptions = v11(v3, v10, v4);
    goto LABEL_3;
  }

  v8 = 4294954514;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    *(v6 + 212) = v4;
  }

  return v8;
}

uint64_t playercentral_SetRateAndAnchorTime(OpaqueFigPlayer *a1, float a2, CMTime *a3, CMTime *a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_31_9();
  v11 = v10;
  if (*(v10 + 8) || (v13 = *(v10 + 16)) == 0)
  {
    result = FigSignalErrorAtGM();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v6 == 0.0)
    {
      *(v10 + 192) = 0;
    }

    v17 = *&a3->value;
    epoch = a3->epoch;
    v15 = *&a4->value;
    v16 = a4->epoch;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v14)
    {
      v21 = v17;
      v22 = epoch;
      v19 = v15;
      v20 = v16;
      result = v14(v13, &v21, &v19, a5, v6);
      if (!result)
      {
        playercentral_updateVideoPlaybackAssertion(v5);
LABEL_10:
        result = 0;
        *(v11 + 212) = v6;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t playercentral_SetRateWithOptions(OpaqueFigPlayer *a1, float a2, const __CFDictionary *a3)
{
  v6 = OUTLINED_FUNCTION_31_9();
  v7 = v6;
  if (*(v6 + 8) || (v8 = *(v6 + 16)) == 0)
  {
    result = FigSignalErrorAtGM();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 == 0.0)
    {
      *(v6 + 192) = 0;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v9)
    {
      result = v9(v8, a3, v4);
      if (!result)
      {
        playercentral_updateVideoPlaybackAssertion(v3);
LABEL_8:
        result = 0;
        *(v7 + 212) = v4;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t playercentral_SetProperties(OpaqueFigPlayer *a1, const __CFDictionary *a2, const __CFDictionary **a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v18 = 0;
  v19 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

  v6 = DerivedStorage;
  v7 = OUTLINED_FUNCTION_23_15();
  v12 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v7, a2, 0, v8, v9, v10, v11);
  if (v12)
  {
LABEL_8:
    v16 = v12;
    goto LABEL_10;
  }

  v13 = *(v6 + 16);
  if (!v13)
  {
LABEL_17:
    OUTLINED_FUNCTION_239();
    v15 = FigSignalErrorAtGM();
    goto LABEL_6;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v14)
  {
    v15 = v14(v13, cf, &v18);
LABEL_6:
    v16 = v15;
    if (v15)
    {
      goto LABEL_10;
    }

    v12 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v19, v18, a3);
    goto LABEL_8;
  }

  v16 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t FigPlayerCentralCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCentralCreateWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCentralCreateWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCentralCreateWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager()
{
  return FigSignalErrorAtGM();
}

{
  if (in_audio_mx_server_process())
  {
    return FigRoutingSessionManagerCopyLongFormVideoManager();
  }

  else
  {
    return FigRoutingSessionManagerRemoteCopyLongFormVideoManager();
  }
}

uint64_t itemcentral_CopyProperty(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_handleSetProperty(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_GetDimensions(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_GetDuration(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_SetCurrentTime(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_GetCurrentTime(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_CopyTrackProperty(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_MakeReadyForInspection(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_CopyCommonMetadata(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_CopyChapterImageData(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_GetNextThumbnailTime(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_SetTrackProperty(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_CopyFormatReader(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_SeekToDateWithID(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_SetCurrentTimeWithRangeAndID(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_CopyAsset(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_ExtractAndRetainNextSampleBuffer(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t itemcentral_SetCurrentTimeWithOptions(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_ttml_AddSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && ((v4 = DerivedStorage, FormatDescription = CMSampleBufferGetFormatDescription(a2), CMFormatDescriptionGetMediaType(FormatDescription) == 1952807028) || CMFormatDescriptionGetMediaType(FormatDescription) == 1935832172) && CMFormatDescriptionGetMediaSubType(FormatDescription) == 1937010800)
  {
    if (!CMSampleBufferGetNumSamples(a2))
    {
      return 0;
    }

    *(v4 + 24) = a2;
    if (!CMSampleBufferGetDataBuffer(a2))
    {
      return 0;
    }

    v6 = CMByteStreamCreateForBlockBuffer();
    if (v6)
    {
      return v6;
    }

    else
    {
      return TTMLParserParseStream(*(v4 + 16), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleVideoTargetMessage(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    result = FigXPCServerLookupAndRetainAssociatedObject();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t HandleVideoTargetNoReplyMessage(uint64_t a1, void *a2)
{
  v23 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_9;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    goto LABEL_9;
  }

  v4 = v20[3];
  if (!v4 || (v5 = CFGetTypeID(v4), v5 != FigVideoTargetGetTypeID()))
  {
    fig_log_get_emitter();
    OpCode = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  switch(v23)
  {
    case 1667593076:
      v10 = v20[3];
      v11 = *(CMBaseObjectGetVTable() + 24);
      if (v11)
      {
        v12 = *(v11 + 24);
        if (v12)
        {
          OpCode = v12(v10);
          goto LABEL_9;
        }
      }

LABEL_17:
      v6 = 4294954514;
      goto LABEL_19;
    case 1970300018:
      v17 = *MEMORY[0x1E6960C70];
      v18 = *(MEMORY[0x1E6960C70] + 16);
      OpCode = FigXPCMessageGetCMTime();
      if (OpCode)
      {
        goto LABEL_9;
      }

      v7 = v20[3];
      v15 = v17;
      v16 = v18;
      v8 = *(CMBaseObjectGetVTable() + 24);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v24 = v15;
          v25 = v16;
          OpCode = v9(v7, &v24, 0);
          goto LABEL_9;
        }
      }

      goto LABEL_17;
    case 1685024621:
      OpCode = FigXPCServerDisassociateObjectWithConnection();
LABEL_9:
      v6 = OpCode;
      goto LABEL_19;
  }

  v6 = 4294951138;
LABEL_19:
  if (v20[3])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __HandleVideoTargetNoReplyMessage_block_invoke;
    block[3] = &unk_1E7483E90;
    block[4] = &v19;
    dispatch_async(qword_1ED4CA888, block);
  }

  _Block_object_dispose(&v19, 8);
  return v6;
}

uint64_t FigXPCVideoTargetServerCopyVideoTargetForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __FigVideoTargetStartServer_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  FigServer_IsMediaplaybackd();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633F0], *MEMORY[0x1E695E4D0]);
  *(*(*(a2 + 32) + 8) + 24) = FigXPCServerStart();
  if (!*(*(*(a2 + 32) + 8) + 24))
  {
    FigWatchdogMonitorDispatchQueue();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

const __CFData *FigFairplayPSSHAtomParserParseAndCreateRecordInProcess(uint64_t a1, const __CFData *a2, void *a3)
{
  v3 = a2;
  v24 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  if (!a2)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    goto LABEL_12;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    v3 = 0;
    goto LABEL_12;
  }

  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A0040FC6C5850uLL);
  v6 = v5;
  if (!v5)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_3_47();
    FigSignalErrorAtGM();
    v3 = 0;
    goto LABEL_13;
  }

  v5[1] = 0;
  v5[2] = v5 + 1;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  if (CFDataGetLength(v3) > 0 && CFDataGetBytePtr(v3) && ((CurrentAtomTypeAndDataLength = FigAtomStreamInitWithMemoryBlock(), CurrentAtomTypeAndDataLength) || (CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(), CurrentAtomTypeAndDataLength)) || (OUTLINED_FUNCTION_239(), OUTLINED_FUNCTION_1_65(), FigSignalErrorAtGM(), CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent(), CurrentAtomTypeAndDataLength))
  {
    v3 = CurrentAtomTypeAndDataLength;
    goto LABEL_13;
  }

  v3 = ffpap_parseChildAtoms(v9, 2, &FigFairplayPSSHAtomParserParseAndCreateRecordInProcess_atomDispatch, v6);
  if (!v3)
  {
    *a3 = v6;
LABEL_12:
    v6 = 0;
  }

LABEL_13:
  FigFairplayPSSHAtomParserDestroyRecord(v6);
  return v3;
}

uint64_t ffpap_parseFpsKeySystemInfoAtom()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ffpap_parseFpsKeySystemRequestAtom()
{
  v9 = 0;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  v1 = 0u;
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_1_65();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ffpap_parseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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
        return 4294949314;
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
          if ((v8 >> v15))
          {
            v17 = result;
          }

          else
          {
            v17 = -17982;
          }

          v18 = *v16;
          v16 += 16;
          if ((v18 & 2) != 0)
          {
            result = v17;
          }

          else
          {
            result = result;
          }

          ++v15;
        }

        while (a2 != v15);
      }

      return result;
    }
  }
}

uint64_t FigFairplayPSSHAtomParserDestroyRecord(void *a1)
{
  if (a1)
  {
    for (i = a1[1]; i; i = a1[1])
    {
      v3 = i[5];
      v4 = i[6];
      v5 = (v3 + 48);
      if (!v3)
      {
        v5 = a1 + 2;
      }

      *v5 = v4;
      *v4 = v3;
      v6 = i[2];
      if (v6)
      {
        CFRelease(v6);
        i[2] = 0;
      }

      v7 = i[3];
      if (v7)
      {
        CFRelease(v7);
        i[3] = 0;
      }

      v8 = i[4];
      if (v8)
      {
        CFRelease(v8);
      }

      free(i);
    }

    free(a1);
  }

  return 0;
}

uint64_t ffpap_parseFpsKeySystemRequestInfoAtom()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ffpap_parseFpsKeySystemAssetIdAtom(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_4_47();
  if (!result)
  {
    OUTLINED_FUNCTION_6_38();
    if (v4 && capacity > 0)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
      *(a2 + 16) = Mutable;
      if (Mutable)
      {
        CFDataSetLength(Mutable, capacity);
        CFDataGetMutableBytePtr(*(a2 + 16));
        OUTLINED_FUNCTION_265();
        result = FigAtomStreamReadCurrentAtomData();
        if (!result)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_3_47();
    }

    else
    {
      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_1_65();
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t ffpap_parseFpsKeySystemVersionListAtom(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_47();
  if (v3)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_6_38();
  if (!v4 || (size >= 1 ? (v4 = (size & 3) == 0) : (v4 = 0), !v4))
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
    v3 = FigSignalErrorAtGM();
LABEL_18:
    v10 = v3;
    v5 = 0;
    goto LABEL_17;
  }

  v5 = malloc_type_malloc(size, 0xAFF3FF4BuLL);
  if (!v5)
  {
    goto LABEL_21;
  }

  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (CurrentAtomData)
  {
LABEL_23:
    v10 = CurrentAtomData;
    goto LABEL_17;
  }

  if (*(a2 + 24))
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
LABEL_22:
    CurrentAtomData = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
LABEL_21:
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_3_47();
    goto LABEL_22;
  }

  v8 = Mutable;
  if (size >= 4)
  {
    v9 = 0;
    do
    {
      FigCFArrayAppendInt32();
      ++v9;
    }

    while (v9 < size >> 2);
  }

  v10 = 0;
  *(a2 + 24) = v8;
LABEL_17:
  free(v5);
  return v10;
}

uint64_t ffpap_parseFpsKeySystemRemoteContextAtom(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_4_47();
  if (!result)
  {
    OUTLINED_FUNCTION_6_38();
    if (v4 && capacity > 0)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
      *(a2 + 32) = Mutable;
      if (Mutable)
      {
        CFDataSetLength(Mutable, capacity);
        CFDataGetMutableBytePtr(*(a2 + 32));
        OUTLINED_FUNCTION_265();
        result = FigAtomStreamReadCurrentAtomData();
        if (!result)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_3_47();
    }

    else
    {
      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_1_65();
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigPlayerRemoteCreateWithOptions(const __CFAllocator *a1, int a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    OUTLINED_FUNCTION_1_66();
    started = FigSignalErrorAtGM();
    goto LABEL_45;
  }

  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  started = dword_1ED4CA894;
  if (dword_1ED4CA894)
  {
    goto LABEL_45;
  }

  theString = 0;
  xdict = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *__str = 0u;
  FigPlayerGetClassID();
  v8 = CMDerivedObjectCreate();
  v9 = MEMORY[0x1E695E480];
  if (v8)
  {
    goto LABEL_57;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 9) = 0;
  *(DerivedStorage + 16) = CFSetCreateMutable(a1, 0, 0);
  *(DerivedStorage + 32) = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
  *(DerivedStorage + 208) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (DerivedStorage + 208), 10, 0x600u);
  }

  *token = 0;
  if (FigCFDictionaryGetValueIfPresent())
  {
    *(DerivedStorage + 320) = *token == *MEMORY[0x1E695E4D0];
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v11;
  if (!v11 || (*(DerivedStorage + 171) = 0, *(DerivedStorage + 168) = 1, v12 = FigReadWriteLockCreate(), (*(DerivedStorage + 96) = v12) == 0) || (v13 = FigSimpleMutexCreate(), (*(DerivedStorage + 152) = v13) == 0) || (v14 = FigReadWriteLockCreate(), (*(DerivedStorage + 296) = v14) == 0) || (v15 = FigSimpleMutexCreate(), (*(DerivedStorage + 88) = v15) == 0))
  {
    OUTLINED_FUNCTION_1_66();
LABEL_56:
    v8 = FigSignalErrorAtGM();
    goto LABEL_57;
  }

  if (xdict)
  {
    v16 = (CMBaseObjectGetDerivedStorage() + 208);
  }

  else
  {
    v16 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerremote.transitiontimer.%s", v16);
  v17 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 136) = v17;
  if (!v17 || (v18 = FigSimpleMutexCreate(), (*(DerivedStorage + 248) = v18) == 0) || (Mutable = CFArrayCreateMutable(*v9, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 120) = Mutable) == 0) || (v20 = FigSimpleMutexCreate(), (*(DerivedStorage + 128) = v20) == 0) || (v21 = FigSimpleMutexCreate(), (*(DerivedStorage + 232) = v21) == 0) || (v22 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(DerivedStorage + 224) = v22) == 0))
  {
    OUTLINED_FUNCTION_1_66();
    goto LABEL_56;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_11_22();
  v8 = CMNotificationCenterAddListener();
  if (!v8)
  {
    v23 = xdict;
    goto LABEL_26;
  }

LABEL_57:
  started = v8;
  if (xdict)
  {
    CFRelease(xdict);
  }

  if (started)
  {
    goto LABEL_45;
  }

  v23 = 0;
LABEL_26:
  xdict = 0;
  *__str = 0;
  LODWORD(theString) = -1;
  token[0] = 0;
  v24 = dyld_program_sdk_at_least();
  v25 = FigXPCCreateBasicMessage();
  if (v25)
  {
    started = v25;
    uint64 = 0;
    MutableCopy = 0;
    goto LABEL_34;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, @"AsynchronousControlQueueHolder");
  if (!_os_feature_enabled_impl())
  {
LABEL_31:
    xpc_dictionary_set_uint64(*__str, "EngineTopology", a2 & 0xFFFFFFDF);
    xpc_dictionary_set_BOOL(*__str, "ClientSDKVersion2015AndLater", v24);
    FigXPCMessageSetCFDictionary();
    MainBundle = CFBundleGetMainBundle();
    CFBundleGetIdentifier(MainBundle);
    FigXPCMessageSetCFString();
    v29 = OUTLINED_FUNCTION_25_13();
    if (v29)
    {
      started = v29;
      uint64 = 0;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
      if (uint64)
      {
        FigXPCRemoteClientGetServerPID();
        FigRemote_SetServerPid();
        started = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_66();
        started = FigSignalErrorAtGM();
      }
    }

    goto LABEL_34;
  }

  FigCFDictionarySetBoolean();
  if (!task_create_identity_token(*MEMORY[0x1E69E9A60], token))
  {
    xpc_dictionary_set_mach_send();
    goto LABEL_31;
  }

  uint64 = 0;
  started = 4294950069;
LABEL_34:
  FigXPCRelease();
  FigXPCRelease();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (token[0] - 1 <= 0xFFFFFFFD)
  {
    FigMachPortReleaseSendRight_();
  }

  if (!started)
  {
    *CMBaseObjectGetDerivedStorage() = uint64;
    v30 = FigXPCRemoteClientAssociateObject();
    if (v30)
    {
      started = v30;
    }

    else
    {
      v31 = CMBaseObjectGetDerivedStorage();
      if ((a2 & 0xF) != 4 && (a2 & 0x100) == 0)
      {
        v32 = v31;
        v33 = objc_autoreleasePoolPush();
        *(v32 + 160) = [[FigDisplayMirroringChangeObserver alloc] initWithPlayer:v23];
        objc_autoreleasePoolPop(v33);
      }

      started = FigStartMonitoringMediaServicesProcessDeath();
      if (!started)
      {
        *a4 = v23;
        goto LABEL_45;
      }
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_45:
  OUTLINED_FUNCTION_48_7();
  return started;
}

void FigSharedRemote_SetDiskCacheParams(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v21 = v20;
  v23 = v22;
  OUTLINED_FUNCTION_433();
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (!dword_1ED4CA894 && fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v19) != -17508 && !FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
    if (!FigXPCMessageSetCFString())
    {
      xpc_dictionary_set_int64(0, "TargetSize", v18);
      xpc_dictionary_set_int64(0, "TargetFileSize", v23);
      xpc_dictionary_set_BOOL(0, "AutomaticallyManagesSize", v21 != 0);
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_CheckIntoAndOutOfDiskCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  if (v21 && v19 && v20)
  {
    v22 = v18;
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    if (!dword_1ED4CA894 && fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v22) != -17508 && !OUTLINED_FUNCTION_31_10())
    {
      xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFURL())
      {
        OUTLINED_FUNCTION_5_44();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          FigXPCMessageCopyCFString();
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
  OUTLINED_FUNCTION_26_13();
  OUTLINED_FUNCTION_652();
}

uint64_t FigSharedRemote_DeleteFromDiskCache(CFStringRef URLString, uint64_t a2)
{
  if (a2)
  {
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    v3 = dword_1ED4CA894;
    if (!dword_1ED4CA894)
    {
      v3 = 4294949788;
      if (fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(URLString) != -17508)
      {
        v4 = FigXPCCreateBasicMessage();
        if (v4 || (xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1), v4 = FigXPCMessageSetCFString(), v4) || (v4 = FigXPCMessageSetCFString(), v4))
        {
          v3 = v4;
        }

        else
        {
          v3 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    v3 = FigSignalErrorAtGM();
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18();
  return v3;
}

uint64_t FigSharedRemote_CopyDiskCacheCheckedInIDs(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = FigSignalErrorAtGM();
LABEL_10:
    v3 = v5;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_187();
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  v3 = dword_1ED4CA894;
  if (!dword_1ED4CA894)
  {
    fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v2);
    OUTLINED_FUNCTION_40_7();
    if (!v4)
    {
      v5 = FigXPCCreateBasicMessage();
      if (!v5)
      {
        xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
        v5 = FigXPCMessageSetCFString();
        if (!v5)
        {
          OUTLINED_FUNCTION_5_44();
          v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!v5)
          {
            v5 = FigXPCMessageCopyCFArray();
          }
        }
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13();
  return v3;
}