AVFigRemoteRouteDiscovererFactory *AVFigRouteDiscovererFactoryGetCurrent()
{
  v0 = objc_alloc_init(AVFigRemoteRouteDiscovererFactory);
  result = dispatch_get_specific(@"AVCurrentRouteDiscovererFactoryKey");
  if (!result)
  {
    return v0;
  }

  return result;
}

uint64_t AVFigRouteDiscovererFactoryCreateRouteDiscovererWithType(void *a1, int a2)
{
  valuePtr = a2;
  v3 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v4 = CFDictionaryCreate(v3, MEMORY[0x1E69AF2C0], &cf, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v5 = [a1 createRouteDiscovererWithAllocator:v3 options:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  v2 = *(v0 + 2912);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t AVDefaultRoutingContextFactory()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseFigRoutingContextResilientRemote", @"com.apple.avfoundation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return FigRemoteRoutingContextFactoryGetCurrent();
  }

  else
  {
    return FigResilientRemoteRoutingContextFactoryGetCurrent();
  }
}

id AVOutputContextGetDefaultDeviceTranslator(uint64_t a1)
{
  v2 = +[AVOutputDevice prefersRouteDescriptors];
  v3 = off_1E794D608;
  if (!v2)
  {
    v3 = off_1E794D5E8;
  }

  v4 = [objc_alloc(*v3) initForUsingRouteConfigUpdatedNotification:a1];

  return v4;
}

dispatch_queue_t av_readwrite_dispatch_queue_create(const char *a1)
{
  v2 = dispatch_queue_attr_make_with_overcommit();

  return dispatch_queue_create(a1, v2);
}

void sub_1AB588334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB588584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB588C30(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);
  _Block_object_dispose((v1 - 48), 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 40), *(a2 + 40), 131);
}

{
  _Block_object_assign((a1 + 40), *(a2 + 40), 135);
}

void __Block_byref_object_dispose__12(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
  _Block_object_dispose(*(a1 + 40), 135);
}

uint64_t AVOutputDeviceGetDeviceTypeAndSubTypeFromRouteDescriptor(const __CFDictionary *a1, uint64_t *a2, uint64_t *a3)
{
  CFDictionaryGetValue(a1, *MEMORY[0x1E69AEF20]);
  CFDictionaryGetValue(a1, *MEMORY[0x1E69AF028]);
  CFDictionaryGetValue(a1, @"IsContinuityScreenOutput");
  v6 = *MEMORY[0x1E695E4D0];
  result = FigCFEqual();
  if (result)
  {
    goto LABEL_2;
  }

  v10 = *MEMORY[0x1E69AF210];
  result = FigCFEqual();
  if (result)
  {
    v8 = 1;
    v9 = 14;
    goto LABEL_17;
  }

  v11 = *MEMORY[0x1E69AF208];
  result = FigCFEqual();
  if (result)
  {
    v9 = 1;
    v8 = 1;
    goto LABEL_17;
  }

  v12 = *MEMORY[0x1E69AEF90];
  result = FigCFEqual();
  if (result)
  {
    v8 = 3;
LABEL_9:
    v9 = 1;
    goto LABEL_17;
  }

  v13 = *MEMORY[0x1E69AEF50];
  result = FigCFEqual();
  if (result)
  {
    v8 = 4;
LABEL_12:
    v9 = 2;
    goto LABEL_17;
  }

  v14 = *MEMORY[0x1E69AEF60];
  result = FigCFEqual();
  if (result)
  {
    v8 = 4;
    v9 = 3;
  }

  else
  {
    v15 = *MEMORY[0x1E69AEF80];
    result = FigCFEqual();
    if (result)
    {
      v8 = 3;
      v9 = 4;
    }

    else
    {
      v16 = *MEMORY[0x1E69AEF58];
      result = FigCFEqual();
      if (result)
      {
        v8 = 1;
        goto LABEL_12;
      }

      v17 = *MEMORY[0x1E69AEF70];
      result = FigCFEqual();
      if (result || (v18 = *MEMORY[0x1E69AEF78], result = FigCFEqual(), result))
      {
        v8 = 4;
        v9 = 5;
      }

      else
      {
        v19 = *MEMORY[0x1E69AEF98];
        result = FigCFEqual();
        if (result)
        {
          v8 = 4;
          v9 = 6;
        }

        else
        {
          v20 = *MEMORY[0x1E69AEF48];
          result = FigCFEqual();
          if (result)
          {
            v8 = 4;
            v9 = 7;
          }

          else
          {
            v21 = *MEMORY[0x1E69AEF28];
            if (FigCFEqual())
            {
              CFDictionaryGetValue(a1, *MEMORY[0x1E69AEFA0]);
              v22 = *MEMORY[0x1E69AEFC8];
              result = FigCFEqual();
              if (result || (v23 = *MEMORY[0x1E69AEFE8], result = FigCFEqual(), result))
              {
                v8 = 0;
                goto LABEL_9;
              }

              v26 = *MEMORY[0x1E69AEFF0];
              result = FigCFEqual();
              if (result)
              {
                v8 = 0;
                v9 = 11;
              }

              else
              {
                v28 = *MEMORY[0x1E69AEFE0];
                result = FigCFEqual();
                if (result)
                {
                  v8 = 0;
                  v9 = 16;
                }

                else
                {
                  v30 = *MEMORY[0x1E69AEFF8];
                  result = FigCFEqual();
                  if (result)
                  {
                    v8 = 0;
                    v9 = 17;
                  }

                  else
                  {
                    v32 = *MEMORY[0x1E69AEFA8];
                    result = FigCFEqual();
                    if (result)
                    {
                      v8 = 0;
                      v9 = 13;
                    }

                    else
                    {
                      v33 = *MEMORY[0x1E69AEFD0];
                      result = FigCFEqual();
                      if (result)
                      {
                        v8 = 0;
                        v9 = 12;
                      }

                      else
                      {
                        v34 = *MEMORY[0x1E69AEFD8];
                        result = FigCFEqual();
                        if (result)
                        {
LABEL_2:
                          v8 = 0;
                          v9 = 18;
                          goto LABEL_17;
                        }

                        v35 = *MEMORY[0x1E69AF000];
                        result = FigCFEqual();
                        if (result)
                        {
                          v8 = 0;
                          v9 = 19;
                        }

                        else
                        {
                          result = FigCFEqual();
                          if (result)
                          {
                            v8 = 0;
                            v9 = 20;
                          }

                          else
                          {
                            v36 = *MEMORY[0x1E69AEFC0];
                            result = FigCFEqual();
                            if (result || (v37 = *MEMORY[0x1E69AEFB0], result = FigCFEqual(), result))
                            {
                              v8 = 0;
                              v9 = 15;
                            }

                            else
                            {
                              v38 = *MEMORY[0x1E69AEFB8];
                              result = FigCFEqual();
                              v8 = 0;
                              v9 = 15;
                              if (!result)
                              {
                                v9 = 0;
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

            else
            {
              v24 = *MEMORY[0x1E69AEF40];
              result = FigCFEqual();
              if (result)
              {
                v8 = 4;
                v9 = 8;
              }

              else
              {
                v25 = *MEMORY[0x1E69AEF30];
                result = FigCFEqual();
                if (result)
                {
                  v8 = 1;
                  v9 = 9;
                }

                else
                {
                  v27 = *MEMORY[0x1E69AEF88];
                  result = FigCFEqual();
                  if (result)
                  {
                    v8 = 4;
                    v9 = 10;
                  }

                  else
                  {
                    v29 = *MEMORY[0x1E69AEF38];
                    result = FigCFEqual();
                    if (result)
                    {
                      v9 = 0;
                      v8 = 2;
                    }

                    else
                    {
                      v31 = *MEMORY[0x1E69AEF68];
                      result = FigCFEqual();
                      v8 = result != 0;
                      v9 = 3;
                      if (!result)
                      {
                        v9 = 0;
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

LABEL_17:
  if (a2)
  {
    *a2 = v8;
  }

  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t AVStringForOSType(unsigned int a1)
{
  v1 = bswap32(a1);
  v2 = 3;
  if (HIBYTE(a1))
  {
    v2 = 4;
  }

  v3 = v2 - (a1 < 0x10000) - (a1 < 0x100) - (a1 == 0);
  v6 = v1;
  __strncpy_chk();
  v5[v3] = 0;
  return [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:30];
}

void sub_1AB5897C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor_gAVOutputDeviceRouteDiscoverer_Once != -1)
  {
    AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor_block_invoke_2;
  v4[3] = &unk_1E794EC90;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(gAVOutputDeviceRouteDiscovererQueue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

dispatch_queue_t __AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.avoutputdevice.routediscovererqueue", v0);
  gAVOutputDeviceRouteDiscovererQueue = result;
  return result;
}

const void *__AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor_block_invoke_2(uint64_t a1)
{
  if ([CFDictionaryGetValue(*(a1 + 40) *MEMORY[0x1E69AF1A8])])
  {
    result = gAVOutputDeviceRouteDiscoverer_Screen;
    if (!gAVOutputDeviceRouteDiscoverer_Screen)
    {
      result = AVCreateRouteDiscovererWithType(0);
      gAVOutputDeviceRouteDiscoverer_Screen = result;
      if (!result)
      {
        goto LABEL_8;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v3 = *MEMORY[0x1E69AF300];
      CMNotificationCenterAddListener();
      result = gAVOutputDeviceRouteDiscoverer_Screen;
      if (!gAVOutputDeviceRouteDiscoverer_Screen)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    result = CFRetain(result);
    goto LABEL_8;
  }

  result = gAVOutputDeviceRouteDiscoverer_AudioVideo;
  if (gAVOutputDeviceRouteDiscoverer_AudioVideo)
  {
    goto LABEL_7;
  }

  result = AVCreateRouteDiscovererWithType(3);
  gAVOutputDeviceRouteDiscoverer_AudioVideo = result;
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = *MEMORY[0x1E69AF300];
    CMNotificationCenterAddListener();
    result = gAVOutputDeviceRouteDiscoverer_AudioVideo;
    if (gAVOutputDeviceRouteDiscoverer_AudioVideo)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AVCreateRouteDiscovererWithType(int a1)
{
  Current = AVFigRouteDiscovererFactoryGetCurrent();

  return AVFigRouteDiscovererFactoryCreateRouteDiscovererWithType(Current, a1);
}

uint64_t AVOutputDeviceVolumeControlTypeFromFigType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1AB5E0728[a1 - 1];
  }
}

void *AVOutputDeviceDescriptionsFromFigDescriptions(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = [a1 count]) != 0)
  {
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v3)
    {
      v4 = v3;
      v23 = *v25;
      v21 = *MEMORY[0x1E6961738];
      v22 = *MEMORY[0x1E6961740];
      v5 = *MEMORY[0x1E6961748];
      v6 = *MEMORY[0x1E6961728];
      v7 = *MEMORY[0x1E6961730];
      obj = a1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:v22];
          v11 = [v9 objectForKeyedSubscript:v21];
          v12 = [v9 objectForKeyedSubscript:v5];
          v13 = [objc_msgSend(v9 objectForKeyedSubscript:{v6), "BOOLValue"}];
          v14 = AVOutputDeviceSubTypeFromFigSubType(v12);
          v15 = [v9 objectForKeyedSubscript:v7];
          if (v10 && v11)
          {
            v16 = [[AVClusterComponentOutputDeviceDescription alloc] initWithDeviceID:v10 deviceName:v11 deviceSubType:v14 isClusterLeader:v13 modelID:v15];
            [v19 addObject:v16];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v19 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v19;
}

__CFString *AVOutputDeviceAVFListeningModeForFigListeningMode(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = AVOutputDeviceBluetoothListeningModeActiveNoiseCancellation;
      return *v1;
    }

    if (a1 == 3)
    {
      v1 = AVOutputDeviceBluetoothListeningModeAudioTransparency;
      return *v1;
    }
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    if (a1 == 1)
    {
      v1 = AVOutputDeviceBluetoothListeningModeNormal;
      return *v1;
    }
  }

  if (((a1 == 4) & _os_feature_enabled_impl()) != 0)
  {
    return @"AVOutputDeviceBluetoothListeningModeAutomatic";
  }

  else
  {
    return 0;
  }
}

void *AVOutputDeviceSupportedListeningModesForFigListeningModes(char a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithObject:@"AVOutputDeviceBluetoothListeningModeNormal"];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"AVOutputDeviceBluetoothListeningModeActiveNoiseCancellation"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"AVOutputDeviceBluetoothListeningModeAudioTransparency"];
  }

  v4 = _os_feature_enabled_impl();
  if ((a1 & 4) != 0 && v4)
  {
    [v3 addObject:@"AVOutputDeviceBluetoothListeningModeAutomatic"];
  }

  return v3;
}

__CFString *AVOutputDeviceHeadTrackedSpatialAudioModeFromFigMode(const __CFNumber *a1)
{
  v1 = AVOutputDeviceHeadTrackedSpatialAudioModeNever;
  if (a1)
  {
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
    {
      switch(valuePtr)
      {
        case 0:
          return AVOutputDeviceHeadTrackedSpatialAudioModeNever;
        case 1:
          v2 = &AVOutputDeviceHeadTrackedSpatialAudioModeAutomatic;
          goto LABEL_8;
        case 2:
          v2 = &AVOutputDeviceHeadTrackedSpatialAudioModeAlways;
          goto LABEL_8;
        case 3:
          v2 = &AVOutputDeviceHeadTrackedSpatialAudioModeMultichannelOnly;
LABEL_8:
          v1 = *v2;
          break;
        default:
          return v1;
      }
    }
  }

  return v1;
}

__CFString *AVOutputDeviceAVFBluetoothAlternateTransportForFigAlternateTransport(int a1)
{
  if (a1 == 1)
  {
    v1 = &AVOutputDeviceBluetoothAlternateTransportTypeUSBC;
    return *v1;
  }

  if (!a1)
  {
    v1 = &AVOutputDeviceBluetoothAlternateTransportTypeDefault;
    return *v1;
  }

  return 0;
}

void sub_1AB58BE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB58C6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVFigRouteDiscovererAvailableRoutesChanged(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _availableRoutesChanged];

  objc_autoreleasePoolPop(v3);
}

void AVFigRouteDiscovererAvailableRoutesChanged_0(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  Value = FigCFDictionaryGetValue();
  FigGetUpTimeNanoseconds();
  [Value longLongValue];
  [a2 _availableRoutesChanged];

  objc_autoreleasePoolPop(v3);
}

void AVFigRouteDescriptorOutputDeviceImplRouteDescriptionEvent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, @"configUpdateReasonEndpointDescriptorChanged_RouteDescriptor");
  v9 = CFDictionaryGetValue(a5, @"configUpdateReasonEndpointDescriptorChanged_RouteNotification");
  v10 = CFDictionaryGetValue(a5, @"configUpdateReasonEndpointDescriptorChanged_RoutePayload");
  [a2 _routeDescriptionDidChange:Value];
  [a2 _handleRouteDescriptionEvent:v9 payload:v10];

  objc_autoreleasePoolPop(v7);
}

uint64_t AVOutputDeviceNotificationFromFigNotification(uint64_t a1)
{
  if (AVOutputDeviceNotificationFromFigNotification_createFigToAVFNotificationMappingOnce != -1)
  {
    AVOutputDeviceNotificationFromFigNotification_cold_1();
  }

  v2 = AVOutputDeviceNotificationFromFigNotification_figToAVFNotificationMapping;

  return [v2 objectForKey:a1];
}

void AVFigRoutingContextRouteConfigUpdated(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A8]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B8]);
  v10 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B0]);
  v11 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF378]);
  v12 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF370]);
  v13 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF368]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _routeConfigUpdatedWithID:Value reason:v9 initiator:v10 endedError:v11 deviceID:v12 previousDeviceIDs:{v13, v16, v17}];
  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t AVOutputDeviceSubTypeFromFigSubType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isEqualToString:*MEMORY[0x1E6962650]])
    {
      return 1;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962658]])
    {
      return 11;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962648]])
    {
      return 16;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962660]])
    {
      return 17;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962630]])
    {
      return 12;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962608]])
    {
      return 13;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962640]])
    {
      return 18;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962670]])
    {
      return 19;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962678]])
    {
      return 20;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962610]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E6962628]))
    {
      return 15;
    }

    else if ([v1 isEqualToString:*MEMORY[0x1E6962620]])
    {
      return 15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AVFigRoutingContextSystemAudioRouteConfigUpdated(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A8]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B8]);
  v10 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B0]);
  v11 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF378]);
  v12 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF370]);
  v13 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF368]);
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _routeConfigUpdatedWithID:Value reason:v9 initiator:v10 endedError:v11 deviceID:v12 previousDeviceIDs:{v13, v16, v17}];
  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x1E69E9840];
}

void AVFigRouteDiscovererRoutePresentChanged(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _routePresentChanged];

  objc_autoreleasePoolPop(v3);
}

void AVFigRouteDiscovererRoutePresentChanged_0(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _routePresentChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t getDADaemonSessionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getDADaemonSessionClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getDADaemonSessionClass_softClass;
  if (!getDADaemonSessionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getDADaemonSessionClass_block_invoke;
    v2[3] = &unk_1E794E728;
    v2[4] = &v3;
    __getDADaemonSessionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AB58E6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB58EF24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t soft_DADeviceStateToString(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getDADeviceStateToStringSymbolLoc_ptr;
  v9 = getDADeviceStateToStringSymbolLoc_ptr;
  if (!getDADeviceStateToStringSymbolLoc_ptr)
  {
    v3 = DeviceAccessLibrary();
    v7[3] = dlsym(v3, "DADeviceStateToString");
    getDADeviceStateToStringSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = soft_DADeviceStateToString_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void sub_1AB58FF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getDADaemonSessionClass_block_invoke(uint64_t a1)
{
  DeviceAccessLibrary();
  result = objc_getClass("DADaemonSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getDADaemonSessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getDADaemonSessionClass_block_invoke_cold_1();
    return DeviceAccessLibrary();
  }

  return result;
}

uint64_t DeviceAccessLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DeviceAccessLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DeviceAccessLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E794E748;
    v6 = 0;
    DeviceAccessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DeviceAccessLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!DeviceAccessLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __DeviceAccessLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DeviceAccessLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getDAPartialIPClass_block_invoke(uint64_t a1)
{
  DeviceAccessLibrary();
  result = objc_getClass("DAPartialIP");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getDAPartialIPClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getDAPartialIPClass_block_invoke_cold_1();
    return __getDAEventDeviceClass_block_invoke(v3);
  }

  return result;
}

Class __getDAEventDeviceClass_block_invoke(uint64_t a1)
{
  DeviceAccessLibrary();
  result = objc_getClass("DAEventDevice");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getDAEventDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getDAEventDeviceClass_block_invoke_cold_1();
    return __getDADeviceStateToStringSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getDADeviceStateToStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DeviceAccessLibrary();
  result = dlsym(v2, "DADeviceStateToString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDADeviceStateToStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AVFigRouteDiscovererRouteServerDied(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6BA8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _serverDied];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRouteDiscovererEndpointDescriptorChanged(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _endpointDescriptorChanged];

  objc_autoreleasePoolPop(v3);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return [v7 addListenerWithWeakReference:a3 callback:v6 name:a5 object:a6 flags:0];
}

void AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImplSendDataCompletion(signed int a1, uint64_t a2, void (**a3)(void, void))
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = AVLocalizedErrorWithUnderlyingOSStatus(a1, 0);
  if (a3)
  {
LABEL_5:
    a3[2](a3, v7);
  }

LABEL_6:

  objc_autoreleasePoolPop(v5);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t AVOutputDeviceFigListeningModeForAVFListeningMode(void *a1)
{
  if ([a1 isEqualToString:@"AVOutputDeviceBluetoothListeningModeNormal"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"AVOutputDeviceBluetoothListeningModeActiveNoiseCancellation"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"AVOutputDeviceBluetoothListeningModeAudioTransparency"])
  {
    return 3;
  }

  if (_os_feature_enabled_impl() && ([a1 isEqualToString:@"AVOutputDeviceBluetoothListeningModeAutomatic"] & 1) != 0)
  {
    return 4;
  }

  return 0;
}

uint64_t __AVOutputDeviceNotificationFromFigNotification_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{@"AVOutputDeviceScreenBecameAvailableNotification", *MEMORY[0x1E6961708], @"AVOutputDeviceScreenBecameUnavailableNotification", *MEMORY[0x1E6961710], @"AVOutputDeviceOwnsTurnByTurnNavigationChangedNotification", *MEMORY[0x1E6961720], @"AVOutputDeviceiOSEntityHasMainAudioNotification", *MEMORY[0x1E6961718], @"AVOutputDeviceVehicleHasMainAudioNotification", *MEMORY[0x1E69616F8], @"AVOutputDeviceVehicleHasScreenForAirPlayVideoNotification", *MEMORY[0x1E6961700], @"AVOutputDeviceMediaSessionStatusDidChangeNotification", @"SomeAirPlayCapableVideoClientIsActiveDidChange", @"AVOutputDeviceNightModeChangedNotification", *MEMORY[0x1E6961990], @"AVOutputDevicePerformanceReportPostedNotification", *MEMORY[0x1E6961998], @"AVOutputDeviceMFiCertificateSerialNumberChangedNotification", *MEMORY[0x1E6961930], @"AVOutputDeviceCarPlayTestNotification", *MEMORY[0x1E6961948], @"AVOutputDeviceiOSUIRequestedNotification", *MEMORY[0x1E69619E8], @"AVOutputDeviceSiriRequestedNotification", *MEMORY[0x1E69619A8], @"AVOutputDeviceLimitedUIChangedNotification", *MEMORY[0x1E6961980], @"AVOutputDeviceUnhandledRemoteEventNotification", *MEMORY[0x1E69619B8], @"AVOutputDeviceVoiceTriggerModeChangedNotification", *MEMORY[0x1E6961618], 0, *MEMORY[0x1E6961708], @"AVOutputDeviceScreenBecameAvailableNotification", v0}];
  AVOutputDeviceNotificationFromFigNotification_figToAVFNotificationMapping = result;
  return result;
}

uint64_t AVOutputDeviceElectronicTollCollectionStateFromVehicleInfo(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 valueForKey:*MEMORY[0x1E69626F8]];
  if (!v1)
  {
    return 1;
  }

  if ([objc_msgSend(v1 valueForKey:{@"active", "BOOLValue"}])
  {
    return 2;
  }

  return 3;
}

uint64_t AVOutputDeviceNavigationAidedDrivingStateFromVehicleInfo(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 valueForKey:*MEMORY[0x1E6962700]];
  if (!v1)
  {
    return 1;
  }

  if ([objc_msgSend(v1 valueForKey:{@"active", "BOOLValue"}])
  {
    return 2;
  }

  return 3;
}

uint64_t AVOutputDeviceTransportTypeFromFigTransportType()
{
  v0 = *MEMORY[0x1E6962698];
  if (FigCFEqual())
  {
    return 1;
  }

  v2 = *MEMORY[0x1E6962690];
  if (FigCFEqual())
  {
    return 2;
  }

  v3 = *MEMORY[0x1E69626A0];
  if (FigCFEqual())
  {
    return 3;
  }

  v4 = *MEMORY[0x1E6962688];
  if (FigCFEqual())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t AVOutputDeviceSetDisplayCornerMasksEndpoint(uint64_t a1, uint64_t a2)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 8) + 56;
  v7 = *MEMORY[0x1E6962068];

  return v5(CMBaseObject, v7, a2);
}

void *AVOutputDeviceAVOutputDeviceIconsFromOEMIcons(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [[AVOutputDeviceIcon alloc] initWithDict:*(*(&v10 + 1) + 8 * v6)];
        [v2 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void *AVOutputDeviceAVOutputDeviceScreenInfoFromFigScreens(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [[AVOutputDeviceScreenInfo alloc] initWithDict:*(*(&v10 + 1) + 8 * v6)];
        [v2 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

void *AVOutputDeviceMakeAVOutputDeviceHIDsFromFigHIDs(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a1;
  v5 = [a1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E6961840];
    v9 = *MEMORY[0x1E6961838];
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = -[AVOutputDeviceHID initWithUUID:screenUUID:endpoint:]([AVOutputDeviceHID alloc], "initWithUUID:screenUUID:endpoint:", [*(*(&v15 + 1) + 8 * v10) objectForKey:v8], objc_msgSend(*(*(&v15 + 1) + 8 * v10), "objectForKey:", v9), a2);
        [v4 addObject:v11];

        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t AVOutputDeviceAuthenticationTypeFromFigAuthenticationType()
{
  v0 = *MEMORY[0x1E69616B0];
  if (FigCFEqual())
  {
    return 1;
  }

  v2 = *MEMORY[0x1E69616A8];
  return 2 * (FigCFEqual() != 0);
}

uint64_t AVOutputDeviceRequestViewAreaForFigEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950576;
  }

  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    return 4294950576;
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 24) + 112);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 24) + 112;

  return v7(a1, a2, a3);
}

uint64_t AVOutputDeviceRequestCarUIForEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950576;
  }

  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    return 4294950576;
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 24) + 8);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 24) + 8;

  return v7(a1, a2, a3);
}

uint64_t AVOutputDeviceTakeScreenForClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950576;
  }

  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    return 4294950576;
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 24) + 32);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 24) + 32;

  return v7(a1, a2, a3);
}

uint64_t AVOutputDeviceSetAlternateSiriOnEndpoint(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 8) + 56;
  v7 = *MEMORY[0x1E6961FB0];
  v8 = *v2;

  return v5(CMBaseObject, v7, v8);
}

id AVOutputDeviceGetCurrentScreenViewAreaFromEndpoint(void *a1, uint64_t a2)
{
  v8 = 0;
  if (a1)
  {
    v3 = a1;
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass() && (VTable = CMBaseObjectGetVTable(), (v5 = *(*(VTable + 24) + 120)) != 0))
    {
      v6 = *(VTable + 24) + 120;
      v5(v3, a2, &v8);
      a1 = v8;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id AVOutputDeviceGetDisplayCornerMasksFromEndpoint()
{
  v6 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v2 = *(*(VTable + 8) + 48);
  if (v2)
  {
    v3 = *(VTable + 8) + 48;
    v2(CMBaseObject, *MEMORY[0x1E6962068], *MEMORY[0x1E695E480], &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t AVOutputDeviceGetSiriRequestedActionFromFigAction()
{
  v0 = *MEMORY[0x1E69624D8];
  if (FigCFEqual())
  {
    return 0;
  }

  v2 = *MEMORY[0x1E69624D0];
  if (FigCFEqual())
  {
    return 2;
  }

  v3 = *MEMORY[0x1E69624C8];
  if (FigCFEqual())
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void AVFigEndpointOutputDeviceImplCanSetEndpointVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _canSetEndpointVolumeDidChangeForEndpointWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigEndpointOutputDeviceImplEndpointVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _volumeDidChangeForEndpointWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigEndpointOutputDeviceImplEndpointVolumeControlTypeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _endpointVolumeControlTypeDidChangeForEndpointWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigEndpointOutputDeviceImplEndpointMutedDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _mutedDidChangeForEndpointWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigEndpointOutputDeviceImplEndpointCanMuteDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _canMuteDidChangeForEndpointWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigEndpointOutputDeviceImplEndpointRoomVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  [a2 _volumeForEndpointDidChange:Value forRoomID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF620])}];

  objc_autoreleasePoolPop(v7);
}

uint64_t AVOutputDeviceSetAllowsHeadTrackedSpatialAudioOnEndpoint(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6961FA8];
  if (a2)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    result = v7(CMBaseObject, v2, v4);
  }

  else
  {
    result = 4294954514;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVOutputDeviceSetSecondDisplayEnabledOnEndpoint(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  v7 = @"disable";
  if (a3)
  {
    v7 = @"enable";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output device %@ screen %@", a2, v7];
  if (!a1 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    a1 = 0;
  }

  if (!a3)
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *(*(CMBaseObjectGetVTable() + 24) + 24);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_14:
    result = 4294954514;
    goto LABEL_15;
  }

  if (dword_1ED6F6B68)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_12:
  result = v11(a1, v6, v8);
LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void AVOutputDeviceSetSecondDisplayModeOnEndpoint(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1 || (FigEndpointExtendedGetClassID(), v6 = a1, !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v8 = [[AVFigEndpointSecondDisplayModeToken alloc] initWithEndpoint:a1];
  [a2 isEqualToString:@"AVOutputDeviceSecondDisplayModeDefault"];
  v9 = *MEMORY[0x1E6962490];
  FigCFDictionarySetInt64();
  v10 = MEMORY[0x1E69624B0];
  if (dword_1ED6F6B68)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __AVOutputDeviceSetSecondDisplayModeOnEndpoint_block_invoke;
  v17[3] = &unk_1E794E818;
  v17[4] = v8;
  v17[5] = a3;
  v12 = [v17 copy];
  v13 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v13)
  {
    v13(v6, *v10, Mutable, AVOutputDeviceEndpointSendCommandCompleted, v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void AVOutputDeviceSetMediaRemoteDataOnEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1 || (v4 = a1, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v4 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v6 = *MEMORY[0x1E69624C0];
  FigCFDictionarySetValue();
  v7 = MEMORY[0x1E69624A8];
  if (dword_1ED6F6B68)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __AVOutputDeviceSetMediaRemoteDataOnEndpoint_block_invoke;
  v14[3] = &unk_1E794E7F0;
  v14[4] = a3;
  v9 = [v14 copy];
  v10 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v10)
  {
    v10(v4, *v7, Mutable, AVOutputDeviceEndpointSendCommandCompleted, v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void AVOutputDeviceEndpointSendCommandCompleted(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  a4[2](a4);
}

uint64_t __AVOutputDeviceSetMediaRemoteDataOnEndpoint_block_invoke(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = AVLocalizedErrorWithUnderlyingOSStatus(a2, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t AVOutputDeviceSuggestUIWithURLSAndCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a1 || (v5 = a1, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v5 = 0;
  }

  v19 = @"urls";
  v20[0] = a2;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  if (dword_1ED6F6B68)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __AVOutputDeviceSuggestUIWithURLSAndCompletionHandler_block_invoke;
  v16[3] = &unk_1E794E7F0;
  v16[4] = a3;
  v8 = [v16 copy];
  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 24);
  result = VTable + 24;
  v12 = *(v11 + 72);
  if (v12)
  {
    result = v12(v5, @"suggestUI", v6, AVOutputDeviceEndpointSendCommandCompleted, v8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AVOutputDeviceSuggestUIWithURLSAndCompletionHandler_block_invoke(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = AVLocalizedErrorWithUnderlyingOSStatus(a2, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t AVOutputDevicePerformHapticFeedback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (!a1 || (v7 = a1, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v7 = 0;
  }

  v21[0] = @"uuid";
  v21[1] = @"hapticFeedbackType";
  v22[0] = a2;
  v22[1] = a3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  if (dword_1ED6F6B68)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __AVOutputDevicePerformHapticFeedback_block_invoke;
  v18[3] = &unk_1E794E7F0;
  v18[4] = a4;
  v10 = [v18 copy];
  VTable = CMBaseObjectGetVTable();
  v13 = *(VTable + 24);
  result = VTable + 24;
  v14 = *(v13 + 72);
  if (v14)
  {
    result = v14(v7, @"performHapticFeedback", v8, AVOutputDeviceEndpointSendCommandCompleted, v10);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AVOutputDevicePerformHapticFeedback_block_invoke(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = AVLocalizedErrorWithUnderlyingOSStatus(a2, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __AVOutputDeviceSetSecondDisplayModeOnEndpoint_block_invoke(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = AVLocalizedErrorWithUnderlyingOSStatus(a2, 0);
    v4 = *(v2 + 16);
    v5 = v2;
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v4 = *(v2 + 16);
    v5 = *(a1 + 40);
    v3 = 0;
  }

  return v4(v5, v6, v3);
}

uint64_t AVOutputDeviceImplChangeVolumeByCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 56);
  if (v10)
  {
    result = v10(a1, a2, a3);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVOutputDeviceImplChangeRoomVolumeForEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 16);
  result = VTable + 16;
  v12 = *(v11 + 208);
  if (v12)
  {
    result = v12(a1, a2, a3, a4);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AVOutputDeviceImplCanMuteForEndpointID(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (v5)
  {
    v5(a1, a2, &v8);
    result = v8 != 0;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AVOutputDeviceImplIsMutedForEndpointID(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 160);
  if (!v5)
  {
    return 0;
  }

  v6 = *(VTable + 16) + 160;
  v5(a1, a2, &v8);
  return v8 != 0;
}

uint64_t AVOutputDeviceImplSetMutedForEndpointID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 152);
  if (v10)
  {
    result = v10(a1, a2, a3);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVOutputDeviceGetFigEndpoint(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [a1 figEndpointOutputDeviceImpl];
    if (v4)
    {
      a1 = [v4 figEndpoint];
    }

    else
    {
      result = [v3 isEqual:{+[AVOutputDevice sharedLocalDevice](AVOutputDevice, "sharedLocalDevice")}];
      if (!result)
      {
        return result;
      }

      a1 = 0;
    }
  }

  *a2 = a1;
  return 1;
}

uint64_t AVSuccinctEndpointDescription(uint64_t a1)
{
  v12 = 0;
  cf = 0;
  if (!a1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", 0];
  }

  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(CMBaseObject, *MEMORY[0x1E69621E8], v1, &cf);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 4294954514;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(error %d)", v4];
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  cf = v5;
LABEL_9:
  v6 = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_13;
  }

  v8 = v7(v6, *MEMORY[0x1E69620F8], v1, &v12);
  if (v8)
  {
LABEL_13:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(error %d)", v8];
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    v12 = v9;
    goto LABEL_16;
  }

  v9 = v12;
LABEL_16:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(name: %@, ID: %@)", cf, v9];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t AVSuccinctEndpointsDescription(const __CFArray *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v3 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    [v2 addObject:AVSuccinctEndpointDescription(ValueAtIndex)];
    ++v3;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return [v2 componentsJoinedByString:{@", "}];
}

void AVFigEndpointOutputDeviceImplFigEndpointNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  [a2 _handleFigEndpointEvent:a3 payload:a5];

  objc_autoreleasePoolPop(v8);
}

void AVFigRoutingContextCurrentRouteChanged(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _currentRouteChanged];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextRouteChangeStarted(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0]);
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _routeChangeStartedWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextRouteChangeEnded(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF398]);
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _routeChangeEndedWithID:Value reason:{v9, v12, v13}];
  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextServerConnectionDied(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _serverConnectionDied];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerCanSetMainVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = [a5 objectForKey:*MEMORY[0x1E69AF5B8]];
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _canSetMainVolumeDidChangeForRoutingContextWithID:{v8, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerMainVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = [a5 objectForKey:*MEMORY[0x1E69AF5B8]];
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _mainVolumeDidChangeForRoutingContextWithID:{v8, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1AB59C96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB59CCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVFigRoutingContextModificationCallback(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 completionHandler];
  v6 = objc_alloc_init(AVInputContextDestinationChange);
  -[AVInputContextDestinationChange changeToTerminalStatusBasedOnInputRouteConfigUpdatedReason:](v6, "changeToTerminalStatusBasedOnInputRouteConfigUpdatedReason:", [a2 routeConfigUpdateReason]);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t _AVRoutingLog()
{
  if (_AVRoutingLog_onceToken != -1)
  {
    _AVRoutingLog_cold_1();
  }

  return _log;
}

void AVFigRouteDiscovererRouteServerDied_0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6BC8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _serverDied];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRouteDiscovererEndpointDescriptorChanged_0(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _endpointDescriptorChanged];

  objc_autoreleasePoolPop(v3);
}

void AVOutputDeviceAuthorizationSessionShowAuthPrompt(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF228]);
  v9 = CFDictionaryGetValue(Value, *MEMORY[0x1E69AF2B8]);
  v10 = CFDictionaryGetValue(Value, *MEMORY[0x1E69AF2B0]);
  v11 = CFDictionaryGetValue(Value, *MEMORY[0x1E69AF258]);
  v12 = CFDictionaryGetValue(Value, *MEMORY[0x1E69AF260]);
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _showAuthPromptWithUniqueID:v9 routeDescriptor:v10 pinMode:CFBooleanGetValue(v11) != 0 reason:{v12, v15, v16}];
  objc_autoreleasePoolPop(v7);
  v14 = *MEMORY[0x1E69E9840];
}

void AVOutputDeviceAuthorizationSessionShowFinishedWithPrompt(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _finishedWithPrompt];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t AVOutputContextCreatePlatformDependentScreenOrVideoRoutingContext(void *a1, uint64_t a2)
{
  v7 = 0;
  v4 = [+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")];
  v5 = *MEMORY[0x1E695E480];
  if (v4 == @"AVPlatformIdentifierMacOS")
  {
    [a1 createVideoContextWithAllocator:v5 options:a2 context:&v7];
  }

  else
  {
    [a1 createPerAppSecondDisplayContextWithAllocator:v5 options:a2 context:&v7];
  }

  return v7;
}

void AVFigRoutingContextSystemPickerVideoRouteChanged(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _systemPickerVideoRouteChanged];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextCurrentRouteChanged_0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _currentRouteChanged];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextRouteChangeStarted_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _routeChangeStartedWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextRouteChangeEnded_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF398]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _routeChangeEndedWithID:Value reason:{v9, v12, v13}];
  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextGroupConfigurationChanged(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _groupConfigurationChanged];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextServerConnectionDied_0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _serverConnectionDied];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextRemoteControlChannelAvailabilityChanged(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _remoteControlChannelAvailabilityChanged];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigRoutingContextPredictedSelectedRouteDescriptorChanged(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _predictedSelectedRouteDescriptorChanged];
  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerCanUseForRoutingContextDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B8]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _canUseForRoutingContextDidChangeForRoutingContextWIthID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerCanSetMasterVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B8]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _canSetMasterVolumeDidChangeForRoutingContextWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerMasterVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B8]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _masterVolumeDidChangeForRoutingContextWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerMasterVolumeControlTypeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B8]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _masterVolumeControlTypeDidChangeForRoutingContextWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerCanMuteDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B8]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _canMuteDidChangeForRoutingContextWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void AVFigVolumeControllerMuteDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B8]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _muteDidChangeForRoutingContextWithID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1AB5A2040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5A24B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVFigRoutingContextOutputContextImplSetShowErrorPromptDictionaryToEcho(__CFDictionary *a1, const void *a2)
{
  if (!a2)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  CFDictionarySetValue(a1, @"showErrorPromptDictionaryToEcho", a2);
  return 1;
}

void AVOutputContextSendCommandCompletion(uint64_t a1, uint64_t a2, signed int a3, void (**a4)(void, void))
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    v7 = AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);
  }

  else
  {
    v7 = 0;
  }

  a4[2](a4, v7);

  objc_autoreleasePoolPop(v6);
}

void AVCommChannelDidReceiveData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF360]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF388]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _didReceiveData:v9 fromCommChannelUUID:{Value, v12, v13}];
  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x1E69E9840];
}

void AVCommChannelDidClose(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF360]);
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 didCloseCommChannelUUID:{Value, v11, v12}];
  objc_autoreleasePoolPop(v7);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1AB5A4644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5A4C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5A4EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVFigRoutingContextModificationCallback_0(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 completionHandler];
  v6 = -[AVOutputContextModificationResult initWithFigRouteConfigUpdatedReason:metrics:]([AVOutputContextModificationResult alloc], "initWithFigRouteConfigUpdatedReason:metrics:", [a2 routeConfigUpdateReason], objc_msgSend(a2, "modificationMetrics"));
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }

  [a1 reportModificationMetrics:{-[AVOutputContextModificationResult modificationMetrics](v6, "modificationMetrics")}];

  objc_autoreleasePoolPop(v4);
}

void AVFigRoutingContextSendDataCompletion(uint64_t a1, uint64_t a2, signed int a3, void (**a4)(void, void))
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a3)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);
  if (a4)
  {
LABEL_5:
    a4[2](a4, v8);
  }

LABEL_6:

  objc_autoreleasePoolPop(v6);
  v9 = *MEMORY[0x1E69E9840];
}

void AVOutputContextManagerServerConnectionDied(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (sSharedAgentQueue == a2)
  {
    dispatch_async(sSharedAgentQueue, &__block_literal_global_412);
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void AVOutputContextManagerShowErrorPrompt(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF230]);
  v9 = CFDictionaryGetValue(Value, *MEMORY[0x1E69AF2B0]);
  v10 = CFDictionaryGetValue(Value, *MEMORY[0x1E69AF260]);
  v11 = CFDictionaryGetValue(a5, @"echoedDictionary");
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a2 _showErrorPromptForRouteDescriptor:v9 reason:v10 didFailToConnectToOutputDeviceDictionary:{v11, v14, v15}];
  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x1E69E9840];
}

void __AVOutputContextManagerServerConnectionDied_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  v0 = *MEMORY[0x1E69AF240];
  CMNotificationCenterRemoveListener();
  if (sSharedAgent)
  {
    CFRelease(sSharedAgent);
    sSharedAgent = 0;
  }
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{
  v2 = *(a1 + 40);

  return CMBaseObjectGetVTable();
}

void AVFigRouteDiscovererFactorySetFactoryForQueue(NSObject *a1, void *a2)
{
  v3 = a2;

  dispatch_queue_set_specific(a1, @"AVCurrentRouteDiscovererFactoryKey", v3, AVFigRouteDiscovererFactoryReleaseObject);
}

void AVFigRouteDescriptorOutputDeviceImplCanSetEndpointVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _canSetEndpointVolumeDidChangeForEndpointWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRouteDescriptorOutputDeviceImplEndpointVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _volumeDidChangeForEndpointWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRouteDescriptorOutputDeviceImplEndpointVolumeControlTypeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _endpointVolumeControlTypeDidChangeForEndpointWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRouteDescriptorOutputDeviceImplEndpointMutedDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _mutedDidChangeForEndpointWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRouteDescriptorOutputDeviceImplEndpointCanMuteDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _canMuteDidChangeForEndpointWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRouteDescriptorOutputDeviceImplEndpointRoomVolumeDidChange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF5B0]);
  [a2 _volumeForEndpointDidChange:Value forRoomID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF620])}];

  objc_autoreleasePoolPop(v7);
}

void sub_1AB5A79F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5A7B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVFigRouteDiscovererUpdateEndpointFeaturesCompletionCallback(CFTypeRef cf, uint64_t a2, uint64_t a3, signed int a4, void *a5)
{
  cfa[24] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    cfa[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cfa);
    }
  }

  else
  {
    cfa[0] = 0;
  }

  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    v11 = AVLocalizedErrorWithUnderlyingOSStatus(a4, 0);
  }

  else
  {
    v11 = 0;
  }

  v12 = [a5 completionHandler];
  if (v12)
  {
    (*(v12 + 16))(v12, v11);
  }

  if (cfa[0])
  {
    CFRelease(cfa[0]);
    cfa[0] = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1AB5AA7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5AAD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5AAEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5AB158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5AB374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVOutputDeviceGetFigRouteDescriptor(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [a1 impl];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = [v4 routeDescriptor];
    }

    else
    {
      result = [v3 isEqual:{+[AVOutputDevice sharedLocalDevice](AVOutputDevice, "sharedLocalDevice")}];
      if (!result)
      {
        return result;
      }

      a1 = 0;
    }
  }

  *a2 = a1;
  return 1;
}

__CFDictionary *AVCreateFigRouteDescriptorFromOutputDeviceDescription(void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if ([a1 deviceName])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF198], [a1 deviceName]);
  }

  if ([a1 deviceID])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF1C0], [a1 deviceID]);
  }

  return Mutable;
}

uint64_t AVSuccinctRouteDescriptorDescription(const __CFDictionary *a1)
{
  if (!a1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", 0, v4];
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E69AF198]);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(name: %@, ID: %@)", Value, CFDictionaryGetValue(a1, *MEMORY[0x1E69AF1C0])];
}

uint64_t AVSuccinctRouteDescriptorsDescription(const __CFArray *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v3 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    [v2 addObject:AVSuccinctRouteDescriptorDescription(ValueAtIndex)];
    ++v3;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return [v2 componentsJoinedByString:{@", "}];
}

void AVOutputDeviceRouteDiscovererServerDeathNotificationCallback(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = gAVOutputDeviceRouteDiscovererQueue;
  if (gAVOutputDeviceRouteDiscovererQueue == a2)
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = gAVOutputDeviceRouteDiscovererQueue;
    }

    dispatch_async(v4, &__block_literal_global_573);
  }

  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x1E69E9840];
}

void __AVOutputDeviceRouteDiscovererServerDeathNotificationCallback_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  v0 = *MEMORY[0x1E69AF300];
  CMNotificationCenterRemoveListener();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  if (gAVOutputDeviceRouteDiscoverer_Screen)
  {
    CFRelease(gAVOutputDeviceRouteDiscoverer_Screen);
    gAVOutputDeviceRouteDiscoverer_Screen = 0;
  }

  if (gAVOutputDeviceRouteDiscoverer_AudioVideo)
  {
    CFRelease(gAVOutputDeviceRouteDiscoverer_AudioVideo);
    gAVOutputDeviceRouteDiscoverer_AudioVideo = 0;
  }
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_5_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeSelectEndpointOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      a3 = CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __AVMakeSelectEndpointOperation_block_invoke;
    v16[3] = &unk_1E794ECB8;
    v16[4] = v7;
    v16[5] = a3;
    v16[6] = a2;
    v16[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v16 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    v11 = [AVRoutingContextRouteChangeOperation alloc];
    v12 = *MEMORY[0x1E69AF478];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeSelectEndpointOperation_block_invoke_12;
    v15[3] = &__block_descriptor_56_e5_i8__0l;
    v15[4] = a2;
    v15[5] = cf;
    v15[6] = v10;
    v9 = [(AVRoutingContextRouteChangeOperation *)v11 initWithRoutingContext:cf successNotification:v12 routeChangeBlock:v15 isInputContextOperation:0];
  }

  v13 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Select endpoint %@ on routing context %@", a2, cf]);
  return v13;
}

uint64_t __AVMakeSelectEndpointOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeSelectEndpointOperation_block_invoke_12(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeSelectRouteDescriptorOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4, uint64_t a5)
{
  if (a4)
  {
    v9 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      a3 = CFRetain(a3);
    }

    v10 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __AVMakeSelectRouteDescriptorOperation_block_invoke;
    v18[3] = &unk_1E794ECB8;
    v18[4] = v9;
    v18[5] = a3;
    v18[6] = a2;
    v18[7] = cf;
    v11 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v10 initWithRoutingContext:cf routeChangeID:v9 routeChangeBlock:v18 isInputContextOperation:a5];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    v13 = [AVRoutingContextRouteChangeOperation alloc];
    v14 = *MEMORY[0x1E69AF478];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __AVMakeSelectRouteDescriptorOperation_block_invoke_17;
    v17[3] = &__block_descriptor_56_e5_i8__0l;
    v17[4] = a2;
    v17[5] = cf;
    v17[6] = v12;
    v11 = [(AVRoutingContextRouteChangeOperation *)v13 initWithRoutingContext:cf successNotification:v14 routeChangeBlock:v17 isInputContextOperation:a5];
  }

  v15 = v11;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v11, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Select route descriptor %@ on routing context %@", a2, cf]);
  return v15;
}

uint64_t __AVMakeSelectRouteDescriptorOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeSelectRouteDescriptorOperation_block_invoke_17(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeSelectEndpointsOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeSelectEndpointsOperation_block_invoke;
    v15[3] = &unk_1E794ECB8;
    v15[4] = v7;
    v15[5] = a3;
    v15[6] = a2;
    v15[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v15 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = [AVRoutingContextRouteChangeOperation alloc];
    v11 = *MEMORY[0x1E69AF478];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __AVMakeSelectEndpointsOperation_block_invoke_21;
    v14[3] = &__block_descriptor_56_e5_i8__0l;
    v14[4] = a2;
    v14[5] = cf;
    v14[6] = a3;
    v9 = [(AVRoutingContextRouteChangeOperation *)v10 initWithRoutingContext:cf successNotification:v11 routeChangeBlock:v14 isInputContextOperation:0];
  }

  v12 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Select endpoints %@ on routing context %@", a2, cf]);
  return v12;
}

uint64_t __AVMakeSelectEndpointsOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeSelectEndpointsOperation_block_invoke_21(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeSelectRouteDescriptorsOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeSelectRouteDescriptorsOperation_block_invoke;
    v15[3] = &unk_1E794ECB8;
    v15[4] = v7;
    v15[5] = a3;
    v15[6] = a2;
    v15[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v15 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = [AVRoutingContextRouteChangeOperation alloc];
    v11 = *MEMORY[0x1E69AF478];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __AVMakeSelectRouteDescriptorsOperation_block_invoke_25;
    v14[3] = &__block_descriptor_56_e5_i8__0l;
    v14[4] = a2;
    v14[5] = cf;
    v14[6] = a3;
    v9 = [(AVRoutingContextRouteChangeOperation *)v10 initWithRoutingContext:cf successNotification:v11 routeChangeBlock:v14 isInputContextOperation:0];
  }

  v12 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Select route descriptors %@ on routing context %@", a2, cf]);
  return v12;
}

uint64_t __AVMakeSelectRouteDescriptorsOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeSelectRouteDescriptorsOperation_block_invoke_25(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeAddEndpointOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      a3 = CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __AVMakeAddEndpointOperation_block_invoke;
    v16[3] = &unk_1E794ECB8;
    v16[4] = v7;
    v16[5] = a3;
    v16[6] = a2;
    v16[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v16 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    v11 = [AVRoutingContextRouteChangeOperation alloc];
    v12 = *MEMORY[0x1E69AF470];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeAddEndpointOperation_block_invoke_29;
    v15[3] = &__block_descriptor_56_e5_i8__0l;
    v15[4] = a2;
    v15[5] = cf;
    v15[6] = v10;
    v9 = [(AVRoutingContextRouteChangeOperation *)v11 initWithRoutingContext:cf successNotification:v12 routeChangeBlock:v15 isInputContextOperation:0];
  }

  v13 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Add endpoint %@ to routing context %@", a2, cf]);
  return v13;
}

uint64_t __AVMakeAddEndpointOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeAddEndpointOperation_block_invoke_29(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeAddRouteDescriptorOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      a3 = CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __AVMakeAddRouteDescriptorOperation_block_invoke;
    v16[3] = &unk_1E794ECB8;
    v16[4] = v7;
    v16[5] = a3;
    v16[6] = a2;
    v16[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v16 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      a2 = CFRetain(a2);
    }

    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    v11 = [AVRoutingContextRouteChangeOperation alloc];
    v12 = *MEMORY[0x1E69AF470];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeAddRouteDescriptorOperation_block_invoke_33;
    v15[3] = &__block_descriptor_56_e5_i8__0l;
    v15[4] = a2;
    v15[5] = cf;
    v15[6] = v10;
    v9 = [(AVRoutingContextRouteChangeOperation *)v11 initWithRoutingContext:cf successNotification:v12 routeChangeBlock:v15 isInputContextOperation:0];
  }

  v13 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Add route descriptor %@ to routing context %@", a2, cf]);
  return v13;
}

uint64_t __AVMakeAddRouteDescriptorOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeAddRouteDescriptorOperation_block_invoke_33(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeRemoveEndpointOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeRemoveEndpointOperation_block_invoke;
    v15[3] = &unk_1E794ECB8;
    v15[4] = v7;
    v15[5] = a3;
    v15[6] = a2;
    v15[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v15 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = [AVRoutingContextRouteChangeOperation alloc];
    v11 = *MEMORY[0x1E69AF470];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __AVMakeRemoveEndpointOperation_block_invoke_37;
    v14[3] = &__block_descriptor_56_e5_i8__0l;
    v14[4] = a2;
    v14[5] = cf;
    v14[6] = a3;
    v9 = [(AVRoutingContextRouteChangeOperation *)v10 initWithRoutingContext:cf successNotification:v11 routeChangeBlock:v14 isInputContextOperation:0];
  }

  v12 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Remove endpoint %@ from routing context %@", a2, cf]);
  return v12;
}

uint64_t __AVMakeRemoveEndpointOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeRemoveEndpointOperation_block_invoke_37(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *AVMakeRemoveRouteDescriptorOperation(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3, int a4)
{
  if (a4)
  {
    v7 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v8 = [AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AVMakeRemoveRouteDescriptorOperation_block_invoke;
    v15[3] = &unk_1E794ECB8;
    v15[4] = v7;
    v15[5] = a3;
    v15[6] = a2;
    v15[7] = cf;
    v9 = [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v8 initWithRoutingContext:cf routeChangeID:v7 routeChangeBlock:v15 isInputContextOperation:0];
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = [AVRoutingContextRouteChangeOperation alloc];
    v11 = *MEMORY[0x1E69AF470];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __AVMakeRemoveRouteDescriptorOperation_block_invoke_41;
    v14[3] = &__block_descriptor_56_e5_i8__0l;
    v14[4] = a2;
    v14[5] = cf;
    v14[6] = a3;
    v9 = [(AVRoutingContextRouteChangeOperation *)v10 initWithRoutingContext:cf successNotification:v11 routeChangeBlock:v14 isInputContextOperation:0];
  }

  v12 = v9;
  -[AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation setName:](v9, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Remove route descriptor %@ from routing context %@", a2, cf]);
  return v12;
}

uint64_t __AVMakeRemoveRouteDescriptorOperation_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF528]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF510]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF518]);
  CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69AF540]);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69AF530], *(a1 + 32));
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v8)
  {
    v9 = v8(v6, v7, MutableCopy);
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __AVMakeRemoveRouteDescriptorOperation_block_invoke_41(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D5A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v6)
  {
    v7 = v6(v3, v4, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void AVSendCommandCompletion(uint64_t a1, const __CFDictionary *a2, signed int a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = v7;
  if (a2)
  {
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617B0]);
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617C8]);
    CFDictionaryGetValue(a2, *MEMORY[0x1E6961780]);
    CFDictionaryGetValue(a2, *MEMORY[0x1E6961790]);
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617B8]);
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617C0]);
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617A8]);
    if (dword_1EB46D5A8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (dword_1EB46D5A8)
  {
    v10 = v7;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = v10;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_9:
    v12 = [[AVRoutingContextCommandOutputDeviceConfiguration alloc] initWithRoutingContextComandResponse:a2];
    [a4 setFinalConfiguration:v12];
    [a4 markAsCompleted];

    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_7:
  [a4 markAsFailedWithError:{AVLocalizedErrorWithUnderlyingOSStatus(a3, 0)}];
LABEL_10:

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x1E69E9840];
}

void AVRoutingContextRouteChangeOperationRouteChangeStarted(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _routeChangeStartedWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0])}];

  objc_autoreleasePoolPop(v7);
}

void AVRoutingContextRouteChangeOperationRouteChangeEnded(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0]);
  [a2 _routeChangeWithID:Value endedWithReason:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF398])}];

  objc_autoreleasePoolPop(v7);
}

void AVRoutingContextRouteChangeOperationRouteChangeComplete(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _routeChangeComplete];

  objc_autoreleasePoolPop(v3);
}

void sub_1AB5B05B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B06F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B0C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B0E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperationRouteConfigUpdated(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A8]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B8]);
  v10 = *MEMORY[0x1E69AF430];
  if (!FigCFEqual())
  {
    v11 = *MEMORY[0x1E69AF428];
    if (!FigCFEqual())
    {
      [a2 _routeConfigUpdateWithID:Value endedWithReason:v9];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1AB5B1210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVRoutingSessionManagerCurrentSessionChanged(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v4 postNotificationName:@"AVRoutingSessionManagerCurrentSessionDidChangeNotification" object:{a2, v7, v8}];
  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x1E69E9840];
}

void AVRoutingSessionManagerLikelyDestinationsChanged(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v4 postNotificationName:@"AVRoutingSessionManagerLikelyExternalDestinationsDidChangeNotification" object:{a2, v8, v10}];
  if (dword_1EB46D588)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v4 postNotificationName:@"AVRoutingSessionManagerAllLikelyDestinationsDidChangeNotification" object:{a2, v9, v11}];
  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x1E69E9840];
}

void AVRoutingSessionManagerStartHighConfidenceDestinationComplete(void *a1, signed int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  AVRoutingSessionManagerInvokeStartHighConfidenceCompletionHandler(a1, a2);

  objc_autoreleasePoolPop(v4);
  v6 = *MEMORY[0x1E69E9840];
}

void AVRoutingSessionManagerInvokeStartHighConfidenceCompletionHandler(uint64_t a1, signed int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (dword_1EB46D588)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = AVLocalizedErrorWithUnderlyingOSStatus(a2, 0);
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  if (dword_1EB46D588)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  (*(a1 + 16))(a1, v6);
LABEL_10:
  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return FigNotificationCenterAddWeakListener();
}

void sub_1AB5B4DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B544C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B5680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B578C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFDictionaryRef AVDictionaryWithTime(CMTime *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v3 = *a1;
  return CMTimeCopyAsDictionary(&v3, v1);
}

CFDictionaryRef AVDictionaryWithTimeRange(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *&v4.start.value = *a1;
  *&v4.start.epoch = v2;
  *&v4.duration.timescale = a1[2];
  return CMTimeRangeCopyAsDictionary(&v4, v1);
}

void *AVRoutingScheduledParameterRampsIncludesRampThatOverlapsTimeRange(void *result, __int128 *a2)
{
  if (result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __AVRoutingScheduledParameterRampsIncludesRampThatOverlapsTimeRange_block_invoke;
    v3[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
    v2 = a2[1];
    v4 = *a2;
    v5 = v2;
    v6 = a2[2];
    return ([result indexOfObjectPassingTest:v3] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t __AVRoutingScheduledParameterRampsIncludesRampThatOverlapsTimeRange_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(&v23, 0, sizeof(v23));
  if (a2)
  {
    [a2 timeRange];
  }

  memset(&v22, 0, sizeof(v22));
  range = v23;
  CMTimeRangeGetEnd(&v22, &range);
  v6 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v6;
  flags = *(a1 + 68);
  timescale = *(a1 + 64);
  epoch = *(a1 + 72);
  memset(&v20, 0, sizeof(v20));
  v9 = *(a1 + 48);
  *&range.start.value = *(a1 + 32);
  *&range.start.epoch = v9;
  range.duration.timescale = *(a1 + 64);
  range.duration.flags = flags;
  range.duration.epoch = epoch;
  CMTimeRangeGetEnd(&v20, &range);
  range.start = v22;
  *&time2.start.value = v24;
  time2.start.epoch = v25;
  if (CMTimeCompare(&range.start, &time2.start) >= 1)
  {
    memset(&range, 0, 24);
    time2.start = v22;
    *&rhs.value = v24;
    rhs.epoch = v25;
    CMTimeSubtract(&range.start, &time2.start, &rhs);
    *&time2.start.value = *&range.start.value;
    time2.start.epoch = range.start.epoch;
    *&rhs.value = AVRoutingScheduledParameterRampsIncludesRampThatOverlapsTimeRange_slopTime;
    rhs.epoch = 0;
    if (CMTimeCompare(&time2.start, &rhs) <= 0)
    {
      v24 = *&v22.value;
      *&v25 = v22.epoch;
      rhs.value = *(&v25 + 1);
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      start = range.start;
      CMTimeSubtract(&time2.start, &rhs, &start);
      *(&v25 + 1) = time2.start.value;
      flags = time2.start.flags;
      timescale = time2.start.timescale;
      epoch = time2.start.epoch;
    }
  }

  range.start = v20;
  *&time2.start.value = *&v23.start.value;
  time2.start.epoch = v23.start.epoch;
  if (CMTimeCompare(&range.start, &time2.start) >= 1)
  {
    memset(&time2, 0, 24);
    range.start = v20;
    rhs = v23.start;
    CMTimeSubtract(&time2.start, &range.start, &rhs);
    *&range.start.value = *&time2.start.value;
    range.start.epoch = time2.start.epoch;
    *&rhs.value = AVRoutingScheduledParameterRampsIncludesRampThatOverlapsTimeRange_slopTime;
    rhs.epoch = 0;
    if (CMTimeCompare(&range.start, &rhs) <= 0)
    {
      rhs.value = *(&v25 + 1);
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      start = time2.start;
      CMTimeSubtract(&range.start, &rhs, &start);
      flags = range.start.flags;
      timescale = range.start.timescale;
      *(&v25 + 1) = range.start.value;
      epoch = range.start.epoch;
      *&range.start.value = v24;
      *&range.start.epoch = v25;
      range.duration.timescale = timescale;
      range.duration.flags = flags;
      range.duration.epoch = epoch;
      CMTimeRangeGetEnd(&rhs, &range);
      v20 = rhs;
    }
  }

  range = v23;
  *&time2.start.value = v24;
  *&time2.start.epoch = v25;
  time2.duration.timescale = timescale;
  time2.duration.flags = flags;
  time2.duration.epoch = epoch;
  CMTimeRangeGetIntersection(&v17, &range, &time2);
  if (v17.start.flags)
  {
    range = v23;
    *&time2.start.value = v24;
    *&time2.start.epoch = v25;
    time2.duration.timescale = timescale;
    time2.duration.flags = flags;
    time2.duration.epoch = epoch;
    CMTimeRangeGetIntersection(&v15, &range, &time2);
    if (v15.duration.flags)
    {
      range = v23;
      *&time2.start.value = v24;
      *&time2.start.epoch = v25;
      time2.duration.timescale = timescale;
      time2.duration.flags = flags;
      time2.duration.epoch = epoch;
      CMTimeRangeGetIntersection(&v14, &range, &time2);
      if (!v14.duration.epoch)
      {
        range = v23;
        *&time2.start.value = v24;
        *&time2.start.epoch = v25;
        time2.duration.timescale = timescale;
        time2.duration.flags = flags;
        time2.duration.epoch = epoch;
        CMTimeRangeGetIntersection(&v13, &range, &time2);
        if ((v13.duration.value & 0x8000000000000000) == 0)
        {
          range = v23;
          *&time2.start.value = v24;
          *&time2.start.epoch = v25;
          time2.duration.timescale = timescale;
          time2.duration.flags = flags;
          time2.duration.epoch = epoch;
          CMTimeRangeGetIntersection(&v12, &range, &time2);
          range.start = v12.duration;
          *&time2.start.value = *MEMORY[0x1E6960CC0];
          time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&range.start, &time2.start))
          {
            range.start = v20;
            *&time2.start.value = *&v23.start.value;
            time2.start.epoch = v23.start.epoch;
            if (CMTimeCompare(&range.start, &time2.start) <= 0)
            {
              result = 0;
              *a4 = 1;
              goto LABEL_19;
            }

            goto LABEL_17;
          }
        }
      }
    }
  }

  if ((~flags & 5) == 0)
  {
    *&range.start.value = *&v23.start.value;
    range.start.epoch = v23.start.epoch;
    *&time2.start.value = v24;
    time2.start.epoch = v25;
    if (CMTimeCompare(&range.start, &time2.start) > 0)
    {
LABEL_17:
      result = 0;
      goto LABEL_19;
    }
  }

  *&range.start.value = *&v23.start.value;
  range.start.epoch = v23.start.epoch;
  *&time2.start.value = v24;
  time2.start.epoch = v25;
  result = CMTimeCompare(&range.start, &time2.start);
  if (result)
  {
    if ((~v23.duration.flags & 5) != 0 || (*&range.start.value = v24, range.start.epoch = v25, *&time2.start.value = *&v23.start.value, time2.start.epoch = v23.start.epoch, CMTimeCompare(&range.start, &time2.start) <= 0))
    {
      result = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void AVSystemRemotePoolOutputDeviceCommunicationChannelManagerDidReceiveData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF360]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF390]);
  [a2 _didReceiveData:CFDictionaryGetValue(a5 fromDeviceWithID:*MEMORY[0x1E69AF388]) fromChannelWithUUID:{v9, Value}];

  objc_autoreleasePoolPop(v7);
}

void AVSystemRemotePoolOutputDeviceCommunicationChannelManagerDidCloseCommChannel(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF360]);
  [a2 _didCloseCommChannelWithUUID:Value forDeviceWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF390])}];

  objc_autoreleasePoolPop(v7);
}

void sub_1AB5B6954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVSystemRemotePoolOutputDeviceCommunicationChannelSendDataCompletion(uint64_t a1, uint64_t a2, signed int a3, void (**a4)(void, void))
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a3)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);
  if (a4)
  {
LABEL_5:
    a4[2](a4, v8);
  }

LABEL_6:

  objc_autoreleasePoolPop(v6);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1AB5B7FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B810C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5B86EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void AVRoutingWaitForNotificationOrDeallocationOperationNotificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  if ([a2 _monitoredObject] == a4)
  {
    [a2 _signalMonitoringIsFinishedIfNeeded];
  }

  objc_autoreleasePoolPop(v6);
}

void *AVLocalizedStringFromTable(uint64_t a1, uint64_t a2)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.AVFCore", "localizedStringForKey:value:table:", a1, @"xxxxDefaultValuexxxx", a2}];
  if ([v2 isEqualToString:@"xxxxDefaultValuexxxx"])
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void AVFigRouteDescriptorInputDeviceImplRouteDescriptionEvent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF410]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF418]);
  v10 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF420]);
  [a2 _routeDescriptionDidChange:Value];
  [a2 _handleRouteDescriptionEvent:v9 payload:v10];

  objc_autoreleasePoolPop(v7);
}

uint64_t AVInputDeviceGetDeviceTypeAndSubTypeFromRouteDescriptor(const __CFDictionary *a1, uint64_t *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  CFDictionaryGetValue(a1, *MEMORY[0x1E69AEF20]);
  CFDictionaryGetValue(a1, *MEMORY[0x1E69AF028]);
  if (dword_1ED6F6B08)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69AF210];
  result = FigCFEqual();
  if (result)
  {
    v9 = 0;
    v10 = 5;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = *MEMORY[0x1E69AEF60];
  result = FigCFEqual();
  if (result)
  {
    goto LABEL_10;
  }

  result = FigCFEqual();
  if (result)
  {
    v10 = 3;
    v9 = 3;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v9 = 3;
      v10 = 4;
      if (a2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = *MEMORY[0x1E69AEF68];
      result = FigCFEqual();
      if (result || (result = FigCFEqual(), result))
      {
        v9 = 0;
LABEL_11:
        v10 = 2;
        if (!a2)
        {
          goto LABEL_6;
        }

LABEL_5:
        *a2 = v9;
        goto LABEL_6;
      }

      result = FigCFEqual();
      if (result)
      {
LABEL_10:
        v9 = 3;
        goto LABEL_11;
      }

      result = FigCFEqual();
      v10 = 6;
      if (!result)
      {
        v10 = 1;
      }

      v9 = 2 * (result == 0);
      if (a2)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_6:
  if (a3)
  {
    *a3 = v10;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVInputDeviceGetFigRouteDescriptor(void *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (dword_1ED6F6B08)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = 0;
    goto LABEL_8;
  }

  v3 = [a1 impl];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 routeDescriptor];
LABEL_8:
    *a2 = v4;
    result = 1;
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_queue_t __AVInputDeviceCopySharedRouteDiscovererForRouteDescriptor_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.avinputdevice.routediscovererqueue", v0);
  gAVInputDeviceRouteDiscovererQueue = result;
  return result;
}

const void *__AVInputDeviceCopySharedRouteDiscovererForRouteDescriptor_block_invoke_2(uint64_t a1)
{
  result = gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer;
  if (gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer || (result = AVCreateRouteDiscovererWithType(8), (gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer = result) != 0) && (CMNotificationCenterGetDefaultLocalCenter(), v3 = *MEMORY[0x1E69AF300], CMNotificationCenterAddListener(), (result = gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer) != 0))
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void AVInputDeviceRouteDiscovererServerDeathNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (gAVInputDeviceRouteDiscovererQueue == a2)
  {
    dispatch_async(gAVInputDeviceRouteDiscovererQueue, &__block_literal_global_160);
  }

  objc_autoreleasePoolPop(v3);
}

void __AVInputDeviceRouteDiscovererServerDeathNotificationCallback_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  v0 = *MEMORY[0x1E69AF300];
  CMNotificationCenterRemoveListener();
  if (gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer)
  {
    CFRelease(gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer);
    gAVInputDeviceRouteDiscoverer_AudioInputDiscoverer = 0;
  }
}

uint64_t AVLocalizedError(void *a1, uint64_t a2, void *a3)
{
  if ([a1 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696ABC0] _web_errorWithDomain:a1 code:a2 URL:{objc_msgSend(a3, "objectForKey:", *MEMORY[0x1E696A998])), "userInfo"), "mutableCopy"}];
    [v6 addEntriesFromDictionary:a3];
    a3 = v6;
  }

  v7 = 0;
  v8 = @"AVRoutingErrorUnknown";
  v9 = 0;
  v10 = 0;
  switch(a2)
  {
    case -11999:
      v8 = @"AVRoutingErrorClientProgrammingError";
      goto LABEL_90;
    case -11998:
    case -11997:
    case -11996:
    case -11995:
    case -11994:
    case -11993:
    case -11992:
    case -11991:
    case -11990:
    case -11989:
    case -11988:
    case -11987:
    case -11986:
    case -11985:
    case -11984:
    case -11983:
    case -11982:
    case -11981:
    case -11980:
    case -11979:
    case -11978:
    case -11977:
    case -11976:
    case -11975:
    case -11974:
    case -11973:
    case -11972:
    case -11971:
    case -11970:
    case -11969:
    case -11968:
    case -11967:
    case -11966:
    case -11965:
    case -11964:
    case -11963:
    case -11962:
    case -11961:
    case -11960:
    case -11959:
    case -11958:
    case -11957:
    case -11956:
    case -11955:
    case -11954:
    case -11953:
    case -11952:
    case -11951:
    case -11950:
    case -11949:
    case -11948:
    case -11947:
    case -11946:
    case -11945:
    case -11944:
    case -11943:
    case -11942:
    case -11941:
    case -11940:
    case -11939:
    case -11938:
    case -11937:
    case -11936:
    case -11935:
    case -11934:
    case -11933:
    case -11932:
    case -11931:
    case -11930:
    case -11929:
    case -11928:
    case -11927:
    case -11926:
    case -11925:
    case -11924:
    case -11923:
    case -11922:
    case -11921:
    case -11920:
    case -11919:
    case -11918:
    case -11917:
    case -11916:
    case -11915:
    case -11914:
    case -11913:
    case -11912:
    case -11905:
    case -11902:
    case -11901:
    case -11899:
    case -11898:
    case -11897:
    case -11896:
    case -11895:
    case -11894:
    case -11893:
    case -11892:
    case -11891:
    case -11890:
    case -11889:
    case -11888:
    case -11887:
    case -11886:
    case -11885:
    case -11879:
    case -11874:
    case -11860:
    case -11851:
    case -11845:
    case -11844:
    case -11816:
    case -11802:
      goto LABEL_114;
    case -11911:
      v8 = @"AVRoutingErrorPointlessOverCapture";
      goto LABEL_90;
    case -11910:
      v8 = @"AVRoutingErrorOperationRequiresBothBudsInEar";
      goto LABEL_90;
    case -11909:
      v8 = @"AVRoutingErrorIncorrectPassword";
      goto LABEL_90;
    case -11908:
      v8 = @"AVRoutingErrorIncorrectPIN";
      goto LABEL_90;
    case -11907:
      v8 = @"AVRoutingErrorMediaDataWritingExceededPredeterminedSize";
      goto LABEL_90;
    case -11906:
      v8 = @"AVRoutingErrorFileWritingExceededPredeterminedSize";
      goto LABEL_90;
    case -11904:
      v8 = @"AVRoutingErrorRecordingNotAllowedWhenMultipleAppsAreForeground";
      goto LABEL_90;
    case -11903:
      v8 = @"AVRoutingErrorFileChecksumFailed";
      goto LABEL_90;
    case -11900:
      v8 = @"AVRoutingErrorInvalidFileAtDownloadDestinationURL";
      goto LABEL_90;
    case -11884:
      v8 = @"AVRoutingErrorSandboxExtensionDenied";
      goto LABEL_90;
    case -11883:
      v8 = @"AVRoutingErrorEncodeFailed";
      goto LABEL_90;
    case -11882:
      v8 = @"AVRoutingErrorAirPlayReceiverTemporarilyUnavailable";
      goto LABEL_90;
    case -11881:
      v8 = @"AVRoutingErrorFailedToLoadSampleData";
      goto LABEL_90;
    case -11880:
      v8 = @"AVRoutingErrorInvalidSampleCursor";
      goto LABEL_90;
    case -11878:
      v8 = @"AVRoutingErrorOperationCancelled";
      goto LABEL_90;
    case -11877:
      v8 = @"AVRoutingErrorRosettaNotInstalled";
      goto LABEL_90;
    case -11876:
      v8 = @"AVRoutingErrorSegmentStartedWithNonSyncSample";
      goto LABEL_90;
    case -11875:
      v8 = @"AVRoutingErrorIncorrectlyConfigured";
      goto LABEL_90;
    case -11873:
      v8 = @"AVRoutingErrorUnsupportedDeviceActiveFormat";
      goto LABEL_90;
    case -11872:
      v8 = @"AVRoutingErrorSessionHardwareCostOverage";
      goto LABEL_90;
    case -11871:
      v8 = @"AVRoutingErrorOperationNotSupportedForPreset";
      goto LABEL_90;
    case -11870:
      v8 = @"AVRoutingErrorExternalPlaybackNotSupportedForAsset";
      goto LABEL_90;
    case -11869:
      v8 = @"AVRoutingErrorNoSourceTrack";
      goto LABEL_90;
    case -11868:
      v8 = @"AVRoutingErrorNoCompatibleAlternatesForExternalDisplay";
      goto LABEL_90;
    case -11867:
      v8 = @"AVRoutingErrorNoLongerPlayable";
      goto LABEL_90;
    case -11866:
      v8 = @"AVRoutingErrorContentNotUpdated";
      goto LABEL_90;
    case -11865:
      v8 = @"AVRoutingErrorMalformedDepth";
      goto LABEL_90;
    case -11864:
      v8 = @"AVRoutingErrorFormatUnsupported";
      goto LABEL_90;
    case -11863:
      v8 = @"AVRoutingErrorContentIsUnavailable";
      goto LABEL_90;
    case -11862:
      v8 = @"AVRoutingErrorOperationNotAllowed";
      goto LABEL_90;
    case -11861:
      v8 = @"AVRoutingErrorUnsupportedOutputSettings";
      goto LABEL_90;
    case -11859:
      v8 = @"AVRoutingErrorRecordingAlreadyInProgress";
      goto LABEL_90;
    case -11858:
      v8 = @"AVRoutingErrorVideoCompositorFailed";
      goto LABEL_90;
    case -11857:
      v8 = @"AVRoutingErrorAirPlayReceiverRequiresInternet";
      goto LABEL_90;
    case -11856:
      v8 = @"AVRoutingErrorAirPlayControllerRequiresInternet";
      goto LABEL_90;
    case -11855:
      v8 = @"AVRoutingErrorUndecodableMediaData";
      goto LABEL_90;
    case -11854:
      v8 = @"AVRoutingErrorFileTypeDoesNotSupportSampleReferences";
      goto LABEL_90;
    case -11853:
      v8 = @"AVRoutingErrorFailedToParse";
      goto LABEL_90;
    case -11852:
      v8 = @"AVRoutingErrorApplicationIsNotAuthorizedToUseDevice";
      goto LABEL_90;
    case -11850:
      v8 = @"AVRoutingErrorServerIncorrectlyConfigured";
      goto LABEL_90;
    case -11849:
      v8 = @"AVRoutingErrorFailedToLoadMediaData";
      goto LABEL_90;
    case -11848:
      v8 = @"AVRoutingErrorIncompatibleAsset";
      goto LABEL_90;
    case -11847:
      v8 = @"AVRoutingErrorOperationInterrupted";
      goto LABEL_90;
    case -11846:
      v8 = @"AVRoutingErrorTorchLevelUnavailable";
      goto LABEL_90;
    case -11843:
      v8 = @"AVRoutingErrorInvalidOutputURLPathExtension";
      goto LABEL_90;
    case -11842:
      v8 = @"AVRoutingErrorReferenceForbiddenByReferencePolicy";
      goto LABEL_90;
    case -11841:
      v8 = @"AVRoutingErrorInvalidVideoComposition";
      goto LABEL_90;
    case -11840:
      v8 = @"AVRoutingErrorEncoderTemporarilyUnavailable";
      goto LABEL_90;
    case -11839:
      v8 = @"AVRoutingErrorDecoderTemporarilyUnavailable";
      goto LABEL_90;
    case -11838:
      v8 = @"AVRoutingErrorOperationNotSupportedForAsset";
      goto LABEL_90;
    case -11837:
      v8 = @"AVRoutingErrorDeviceIsNotAvailableInBackground";
      goto LABEL_90;
    case -11836:
      v8 = @"AVRoutingErrorApplicationIsNotAuthorized";
      goto LABEL_90;
    case -11835:
      v8 = @"AVRoutingErrorContentIsNotAuthorized";
      goto LABEL_90;
    case -11834:
      v8 = @"AVRoutingErrorEncoderNotFound";
      goto LABEL_90;
    case -11833:
      v8 = @"AVRoutingErrorDecoderNotFound";
      goto LABEL_90;
    case -11832:
      v8 = @"AVRoutingErrorNoImageAtTime";
      goto LABEL_90;
    case -11831:
      v8 = @"AVRoutingErrorContentIsProtected";
      goto LABEL_90;
    case -11830:
      v8 = @"AVRoutingErrorMaximumStillImageCaptureRequestsExceeded";
      goto LABEL_90;
    case -11829:
      v8 = @"AVRoutingErrorFileFailedToParse";
      goto LABEL_90;
    case -11828:
      v8 = @"AVRoutingErrorFileFormatNotRecognized";
      goto LABEL_90;
    case -11827:
      v8 = @"AVRoutingErrorInvalidCompositionTrackSegmentSourceDuration";
      goto LABEL_90;
    case -11826:
      v8 = @"AVRoutingErrorInvalidCompositionTrackSegmentSourceStartTime";
      goto LABEL_90;
    case -11825:
      v8 = @"AVRoutingErrorInvalidCompositionTrackSegmentDuration";
      goto LABEL_90;
    case -11824:
      v8 = @"AVRoutingErrorCompositionTrackSegmentsNotContiguous";
      goto LABEL_90;
    case -11823:
      v8 = @"AVRoutingErrorFileAlreadyExists";
      goto LABEL_90;
    case -11822:
      v8 = @"AVRoutingErrorInvalidSourceMedia";
      goto LABEL_90;
    case -11821:
      v8 = @"AVRoutingErrorDecodeFailed";
      goto LABEL_90;
    case -11820:
      v8 = @"AVRoutingErrorExportFailed";
      goto LABEL_90;
    case -11819:
      v8 = @"AVRoutingErrorMediaServicesWereReset";
      goto LABEL_90;
    case -11818:
      v8 = @"AVRoutingErrorSessionWasInterrupted";
      goto LABEL_90;
    case -11817:
      v8 = @"AVRoutingErrorDeviceLockedForConfigurationByAnotherProcess";
      goto LABEL_90;
    case -11815:
      v8 = @"AVRoutingErrorDeviceInUseByAnotherApplication";
      goto LABEL_90;
    case -11814:
      v8 = @"AVRoutingErrorDeviceNotConnected";
      goto LABEL_90;
    case -11813:
      v8 = @"AVRoutingErrorMaximumNumberOfSamplesForFileFormatReached";
      goto LABEL_90;
    case -11812:
      v8 = @"AVRoutingErrorMediaDiscontinuity";
      goto LABEL_90;
    case -11811:
      v8 = @"AVRoutingErrorMaximumFileSizeReached";
      goto LABEL_90;
    case -11810:
      v8 = @"AVRoutingErrorMaximumDurationReached";
      goto LABEL_90;
    case -11809:
      v8 = @"AVRoutingErrorMediaChanged";
      goto LABEL_90;
    case -11808:
      v8 = @"AVRoutingErrorDeviceWasDisconnected";
      goto LABEL_90;
    case -11807:
      v8 = @"AVRoutingErrorDiskFull";
      goto LABEL_90;
    case -11806:
      v8 = @"AVRoutingErrorSessionConfigurationChanged";
      goto LABEL_90;
    case -11805:
      v8 = @"AVRoutingErrorNoDataCaptured";
      goto LABEL_90;
    case -11804:
      v8 = @"AVRoutingErrorDeviceAlreadyUsedByAnotherSession";
      goto LABEL_90;
    case -11803:
      v8 = @"AVRoutingErrorSessionNotRunning";
      goto LABEL_90;
    case -11801:
      v8 = @"AVRoutingErrorOutOfMemory";
      goto LABEL_90;
    case -11800:
LABEL_90:
      v11 = [a1 stringByAppendingFormat:@"_%@", v8];
      v7 = v11;
      if (!v11)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_114;
      }

      v10 = AVLocalizedStringFromTable([v11 stringByAppendingString:@"_Description"], @"AVRoutingError");
      v9 = AVLocalizedStringFromTable([v7 stringByAppendingString:@"_FailureReason"], @"AVRoutingError");
      v7 = AVLocalizedStringFromTable([v7 stringByAppendingString:@"_RecoverySuggestion"], @"AVRoutingError");
      if (![a1 isEqualToString:@"AVFoundationErrorDomain"])
      {
        goto LABEL_114;
      }

      if (a2 <= -11818)
      {
        if (a2 == -11854)
        {
          v23 = [a3 objectForKey:@"AVRoutingErrorFileTypeKey"];
          if (v23)
          {
            v24 = v23;
            v25 = [objc_msgSend(MEMORY[0x1E6982C40] typeWithIdentifier:{v23), "localizedDescription"}];
            if (v25)
            {
              v26 = v25;
            }

            else
            {
              v26 = v24;
            }
          }

          else
          {
            v26 = 0;
          }

          if (v9)
          {
            v13 = MEMORY[0x1E696AEC0];
            v28 = v26;
            v29 = 0;
            goto LABEL_112;
          }

          goto LABEL_114;
        }

        if (a2 != -11852)
        {
          if (a2 == -11837)
          {
            v12 = [objc_msgSend(a3 objectForKey:{@"AVRoutingErrorDeviceKey", "localizedName"}];
            v29 = 0;
            if (v10)
            {
              v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v29, v12];
            }

            if (v9)
            {
              goto LABEL_111;
            }
          }

          goto LABEL_114;
        }
      }

      else
      {
        if (a2 > -11805)
        {
          if (a2 == -11804)
          {
            v27 = [objc_msgSend(a3 objectForKey:{@"AVRoutingErrorDeviceKey", "localizedName"}];
            if (v7)
            {
              v29 = 0;
              v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v29, v27];
            }
          }

          else if (a2 == -11800)
          {
            v21 = [a3 objectForKey:*MEMORY[0x1E696AA08]];
            v22 = v21 ? [v21 code] : 4294955496;
            if (v9)
            {
              v14 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:&v29, v22, 0];
              goto LABEL_113;
            }
          }

          goto LABEL_114;
        }

        if (a2 != -11817 && a2 != -11815)
        {
          goto LABEL_114;
        }
      }

      v12 = [objc_msgSend(a3 objectForKey:{@"AVRoutingErrorDeviceKey", "localizedName"}];
      if (v10)
      {
        v29 = 0;
        v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v29, v12];
      }

      if (v7)
      {
        v29 = 0;
        v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v29, v12];
      }

      if (v9)
      {
        v29 = 0;
LABEL_111:
        v13 = MEMORY[0x1E696AEC0];
        v28 = v12;
LABEL_112:
        v14 = [v13 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v29, v28, v29];
LABEL_113:
        v9 = v14;
      }

LABEL_114:
      if (a3)
      {
        v15 = [a3 mutableCopy];
      }

      else
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      }

      v16 = v15;
      if (v10)
      {
        v17 = *MEMORY[0x1E696A578];
        if (![a3 objectForKey:*MEMORY[0x1E696A578]])
        {
          [v16 setObject:v10 forKey:v17];
        }
      }

      if (v9)
      {
        v18 = *MEMORY[0x1E696A588];
        if (![a3 objectForKey:*MEMORY[0x1E696A588]])
        {
          [v16 setObject:v9 forKey:v18];
        }
      }

      if (v7)
      {
        v19 = *MEMORY[0x1E696A598];
        if (![a3 objectForKey:*MEMORY[0x1E696A598]])
        {
          [v16 setObject:v7 forKey:v19];
        }
      }

      return [MEMORY[0x1E696ABC0] errorWithDomain:a1 code:a2 userInfo:v16];
    default:
      v9 = 0;
      v10 = 0;
      goto LABEL_114;
  }
}

uint64_t AVLocalizedErrorWithUnderlyingOSStatus(signed int a1, id a2)
{
  v26 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v4 = *MEMORY[0x1E696AA08];
  if (![a2 objectForKey:*MEMORY[0x1E696AA08]])
  {
    if (a2)
    {
      v5 = [a2 mutableCopy];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    a2 = v5;
    [v5 setObject:AVOSStatusToNSError(a1 forKey:{0), v4}];
  }

  v6 = @"AVFoundationErrorDomain";
  v7 = -11822;
  if (a1 > -12847)
  {
    if (a1 <= -12138)
    {
      if (a1 <= -12509)
      {
        if (a1 <= -12639)
        {
          if (a1 <= -12715)
          {
            if (a1 > -12745)
            {
              if (a1 > -12718)
              {
                if (a1 == -12717)
                {
                  v7 = -11800;
                  v8 = @"Media format - sample description is unsupported for the specified format flavor";
                }

                else
                {
                  v7 = -11800;
                  if (a1 == -12716)
                  {
                    v8 = @"Media format - format description has an incompatible format (e.g. unknown format / incompatible atom)";
                  }

                  else
                  {
                    v8 = @"Media format - format description is invalid (e.g. invalid size)";
                  }
                }

                goto LABEL_344;
              }

              if (a1 != -12744)
              {
                if (a1 == -12719)
                {
                  v7 = -11800;
                  v8 = @"Media format - slice has an invalid value";
                  goto LABEL_344;
                }

LABEL_354:
                if ((a1 + 11999) >= 0xC8)
                {
                  v25 = -11800;
                }

                else
                {
                  v25 = a1;
                }

                v7 = v25;
                goto LABEL_353;
              }

LABEL_303:
              v7 = -11881;
              goto LABEL_353;
            }

            if (a1 > -12787)
            {
              if (a1 != -12786)
              {
                if (a1 != -12763)
                {
                  goto LABEL_354;
                }

                v7 = -11862;
                v8 = @"Cannot append media data after ending session";
                goto LABEL_344;
              }
            }

            else if (a1 != -12846)
            {
              if (a1 != -12814)
              {
                goto LABEL_354;
              }

              v7 = -11800;
              v8 = @"CoreAnimation image queue is full";
              goto LABEL_344;
            }

LABEL_352:
            v7 = -11801;
            goto LABEL_353;
          }

          if (a1 > -12665)
          {
            if (a1 > -12661)
            {
              if (a1 == -12660)
              {
                v6 = *MEMORY[0x1E696A978];
                v7 = -1102;
                goto LABEL_353;
              }

              if (a1 == -12651)
              {
                v7 = -11861;
                goto LABEL_353;
              }

              if (a1 != -12639)
              {
                goto LABEL_354;
              }

              v7 = -11906;
              v8 = @"Media writing - predetermined file size too small";
              goto LABEL_344;
            }

            if (a1 == -12664)
            {
              goto LABEL_352;
            }

            v18 = -12661;
            goto LABEL_296;
          }

          if (a1 > -12713)
          {
            if (a1 == -12712)
            {
              v7 = -11800;
              v8 = @"Media format - invalid parameter";
              goto LABEL_344;
            }

            v18 = -12668;
LABEL_296:
            if (a1 != v18)
            {
              goto LABEL_354;
            }

LABEL_297:
            v6 = *MEMORY[0x1E696A978];
            v7 = -1008;
            goto LABEL_353;
          }

          if (a1 == -12714)
          {
            v7 = -11800;
            v8 = @"Media format - sample description is invalid (e.g. invalid size)";
            goto LABEL_344;
          }

          v13 = -12713;
LABEL_351:
          if (a1 != v13)
          {
            goto LABEL_354;
          }

          goto LABEL_352;
        }

        if (a1 <= -12556)
        {
          if (a1 <= -12634)
          {
            if (a1 > -12636)
            {
              v7 = -11800;
              if (a1 == -12635)
              {
                v8 = @"Media writing - invalid edit";
              }

              else
              {
                v8 = @"Media writing - invalid format";
              }

              goto LABEL_344;
            }

            if (a1 == -12638)
            {
              v7 = -11907;
              v8 = @"Media writing - predetermined media data size too small";
              goto LABEL_344;
            }

            v13 = -12636;
            goto LABEL_351;
          }

          if (a1 <= -12632)
          {
            v7 = -11800;
            if (a1 == -12633)
            {
              v8 = @"Media writing - invalid timestamp";
            }

            else
            {
              v8 = @"Media writing - no such track";
            }

            goto LABEL_344;
          }

          if (a1 == -12631)
          {
            v7 = -11800;
            v8 = @"Media writing - read only property";
            goto LABEL_344;
          }

          if (a1 == -12630)
          {
            v7 = -11800;
            v8 = @"Media writing - no such property";
            goto LABEL_344;
          }

          v11 = -12556;
          goto LABEL_284;
        }

        if (a1 <= -12542)
        {
          if ((a1 + 12551) < 2)
          {
            goto LABEL_115;
          }

          if (a1 == -12555)
          {
            v7 = -11862;
            goto LABEL_353;
          }

          if (a1 == -12553)
          {
LABEL_115:
            v7 = -11880;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

        if (a1 > -12534)
        {
          if (a1 == -12533)
          {
            v7 = -11903;
            goto LABEL_353;
          }

          if (a1 != -12509)
          {
            goto LABEL_354;
          }

          v7 = -11858;
          v8 = @"No custom callbacks";
          goto LABEL_344;
        }

        if (a1 != -12541)
        {
          if (a1 == -12540)
          {
            v7 = -11900;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

LABEL_206:
        v7 = -11807;
        goto LABEL_353;
      }

      if (a1 <= -12413)
      {
        if (a1 <= -12494)
        {
          if (a1 <= -12505)
          {
            if (a1 > -12507)
            {
              v7 = -11858;
              if (a1 == -12506)
              {
                v8 = @"Blitting failed";
              }

              else
              {
                v8 = @"Invalid composition instruction";
              }
            }

            else
            {
              v7 = -11858;
              if (a1 == -12508)
              {
                v8 = @"Frame was cancelled";
              }

              else
              {
                v8 = @"No output callback";
              }
            }

            goto LABEL_344;
          }

          if (a1 <= -12503)
          {
            v7 = -11858;
            if (a1 == -12504)
            {
              v8 = @"Invalid parameter";
            }

            else
            {
              v8 = @"Destination frame unsupported format";
            }

            goto LABEL_344;
          }

          if (a1 == -12502)
          {
            v7 = -11858;
            v8 = @"Source frame unsupported format";
            goto LABEL_344;
          }

          if (a1 == -12501)
          {
            v7 = -11858;
            v8 = @"Render dimensions unknown";
            goto LABEL_344;
          }

          if (a1 != -12500)
          {
            goto LABEL_354;
          }

          v7 = -11858;
          v8 = @"Source frame missing";
          goto LABEL_344;
        }

        if (a1 <= -12435)
        {
          if ((a1 + 12436) >= 2)
          {
            if (a1 == -12493)
            {
              goto LABEL_269;
            }

            v14 = -12450;
LABEL_268:
            if (a1 != v14)
            {
              goto LABEL_354;
            }

LABEL_269:
            v7 = -11842;
            goto LABEL_353;
          }

LABEL_278:
          v7 = -11838;
          goto LABEL_353;
        }

        if (a1 <= -12431)
        {
          if (a1 == -12434)
          {
            goto LABEL_352;
          }

          v16 = -12431;
LABEL_210:
          if (a1 == v16)
          {
            v7 = -11832;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

        if (a1 != -12430)
        {
          if (a1 == -12413)
          {
            goto LABEL_353;
          }

          goto LABEL_354;
        }

LABEL_302:
        v7 = -11869;
        goto LABEL_353;
      }

      if (a1 <= -12179)
      {
        if (a1 > -12402)
        {
          if (a1 <= -12205)
          {
            if (a1 == -12401)
            {
              goto LABEL_352;
            }

            v14 = -12282;
            goto LABEL_268;
          }

          if (a1 == -12204)
          {
            v6 = *MEMORY[0x1E696A250];
            v7 = 513;
            goto LABEL_353;
          }

          if (a1 == -12203)
          {
            v6 = *MEMORY[0x1E696A250];
            v7 = 257;
            goto LABEL_353;
          }

          v11 = -12184;
LABEL_284:
          if (a1 != v11)
          {
            goto LABEL_354;
          }

          goto LABEL_285;
        }

        if (a1 <= -12408)
        {
          if (a1 != -12412)
          {
            v13 = -12411;
            goto LABEL_351;
          }

          goto LABEL_228;
        }

        if (a1 == -12407)
        {
          goto LABEL_278;
        }

        v17 = -12403;
LABEL_276:
        if (a1 == v17)
        {
          v6 = *MEMORY[0x1E696A978];
          v7 = -3001;
          goto LABEL_353;
        }

        goto LABEL_354;
      }

      if (a1 <= -12150)
      {
        if (a1 <= -12167)
        {
          if (a1 != -12178)
          {
            if (a1 == -12167)
            {
LABEL_124:
              v7 = -11839;
              goto LABEL_353;
            }

            goto LABEL_354;
          }

          goto LABEL_285;
        }

        if (a1 != -12166)
        {
          v10 = -12161;
          goto LABEL_259;
        }

        goto LABEL_102;
      }

      if ((a1 + 12149) < 2)
      {
LABEL_232:
        v6 = *MEMORY[0x1E696A978];
        v7 = -3000;
        goto LABEL_353;
      }

      if (a1 != -12146)
      {
        v12 = -12143;
        goto LABEL_192;
      }

LABEL_188:
      v7 = -11831;
      goto LABEL_353;
    }

    if (a1 <= -1104)
    {
      if (a1 > -6691)
      {
        if (a1 > -2001)
        {
          if ((a1 + 1206) >= 7 && a1 != -2000)
          {
            goto LABEL_354;
          }
        }

        else if ((a1 + 3007) >= 8)
        {
          if ((a1 + 6690) > 0x1C || ((1 << (a1 + 34)) & 0x10000003) == 0)
          {
            goto LABEL_354;
          }

          goto LABEL_352;
        }

LABEL_130:
        v6 = *MEMORY[0x1E696A978];
        v7 = a1;
        goto LABEL_353;
      }

      if (a1 > -12118)
      {
        if (a1 <= -12102)
        {
          if (a1 > -12110)
          {
            if (a1 == -12109)
            {
              goto LABEL_278;
            }

            v17 = -12103;
            goto LABEL_276;
          }

          if ((a1 + 12117) >= 2)
          {
            v12 = -12115;
            goto LABEL_192;
          }

          goto LABEL_188;
        }

        if (a1 <= -12085)
        {
          if (a1 != -12101)
          {
            v13 = -12100;
            goto LABEL_351;
          }

LABEL_228:
          v7 = -11823;
          goto LABEL_353;
        }

        if (a1 != -12084)
        {
          v11 = -12083;
          goto LABEL_284;
        }

LABEL_246:
        v7 = -11847;
        goto LABEL_353;
      }

      if (a1 > -12126)
      {
        if ((a1 + 12119) >= 2)
        {
          if (a1 != -12125)
          {
            v12 = -12124;
LABEL_192:
            if (a1 != v12)
            {
              goto LABEL_354;
            }

            goto LABEL_232;
          }

          goto LABEL_246;
        }

LABEL_273:
        v7 = -11828;
        goto LABEL_353;
      }

      if ((a1 + 12133) < 2)
      {
        goto LABEL_188;
      }

      if (a1 != -12137)
      {
        v15 = -12134;
LABEL_272:
        if (a1 != v15)
        {
          goto LABEL_354;
        }

        goto LABEL_273;
      }

LABEL_237:
      v7 = -11821;
      goto LABEL_353;
    }

    if (a1 <= 1)
    {
      if ((a1 + 1021) >= 0x16 && (a1 + 1103) >= 4)
      {
        goto LABEL_354;
      }

      goto LABEL_130;
    }

    if (a1 > 268435458)
    {
      if (a1 <= 561606516)
      {
        if (a1 != 268435459)
        {
          if (a1 == 560226676)
          {
LABEL_140:
            v7 = -11855;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

        goto LABEL_285;
      }

      if (a1 == 561606517)
      {
        goto LABEL_102;
      }

      if (a1 != 1650549857)
      {
        goto LABEL_354;
      }

      goto LABEL_237;
    }

    if (a1 != 2)
    {
      if (a1 == 12)
      {
        goto LABEL_352;
      }

      if (a1 != 28)
      {
        goto LABEL_354;
      }

      goto LABEL_206;
    }

LABEL_281:
    v6 = *MEMORY[0x1E696A978];
    v7 = -1100;
    goto LABEL_353;
  }

  if (a1 <= -16451)
  {
    if (a1 > -17544)
    {
      if (a1 > -16851)
      {
        if (a1 <= -16823)
        {
          if ((a1 + 16850) >= 6)
          {
            if ((a1 + 16844) < 5)
            {
LABEL_50:
              v6 = *MEMORY[0x1E696A978];
              v7 = -1013;
              goto LABEL_353;
            }

            goto LABEL_354;
          }

          goto LABEL_297;
        }

        if (a1 > -16541)
        {
          if (a1 > -16455)
          {
            if (a1 == -16454)
            {
              v7 = -11837;
              goto LABEL_353;
            }

            if (a1 == -16451)
            {
              v7 = -11817;
              goto LABEL_353;
            }
          }

          else if (a1 == -16540 || a1 == -16530)
          {
            v7 = -11846;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

        if (a1 != -16822)
        {
          if (a1 == -16751)
          {
            v7 = -11878;
            goto LABEL_353;
          }

          if (a1 != -16750)
          {
            goto LABEL_354;
          }

          goto LABEL_303;
        }

LABEL_285:
        v7 = -11819;
        goto LABEL_353;
      }

      if (a1 > -17227)
      {
        if (a1 <= -16978)
        {
          if (a1 <= -17222)
          {
            if (a1 == -17226)
            {
              v7 = -11870;
              goto LABEL_353;
            }

            if (a1 == -17223)
            {
              v7 = -11868;
              goto LABEL_353;
            }

            goto LABEL_354;
          }

          if (a1 == -17221)
          {
            goto LABEL_285;
          }

          v11 = -16978;
          goto LABEL_284;
        }

        if (a1 > -16976)
        {
          if (a1 == -16975)
          {
            v7 = -11843;
            goto LABEL_353;
          }

          v13 = -16970;
          goto LABEL_351;
        }

        if (a1 != -16977)
        {
          goto LABEL_278;
        }

        goto LABEL_237;
      }

      if (a1 > -17507)
      {
        if (a1 > -17392)
        {
          if (a1 == -17391)
          {
            v7 = -11871;
            goto LABEL_353;
          }

          if (a1 == -17390)
          {
            v7 = -11841;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

        if (a1 == -17506)
        {
          goto LABEL_352;
        }

        v13 = -17501;
        goto LABEL_351;
      }

      if (a1 <= -17509)
      {
        if (a1 == -17543)
        {
          v7 = -11876;
          v8 = @"Media writing - segment is not allowed to star with a non-sync sample.";
          goto LABEL_344;
        }

        if (a1 != -17540)
        {
          goto LABEL_354;
        }

        v7 = -11800;
        v8 = @"iTT requires languageCode or extendedLanguageTag property to be set";
        goto LABEL_344;
      }

      if (a1 != -17508)
      {
        v7 = -11884;
        goto LABEL_353;
      }

      goto LABEL_281;
    }

    if (a1 <= -42006)
    {
      if (a1 <= -42598)
      {
        v9 = a1 - 71;
        if ((a1 + 42681) <= 0xD)
        {
          if (((1 << v9) & 0x21C1) != 0)
          {
            goto LABEL_102;
          }

          if (((1 << v9) & 0x206) != 0)
          {
            goto LABEL_260;
          }

          if (a1 == -42676)
          {
            goto LABEL_352;
          }
        }

        if (a1 == -536870208)
        {
          v7 = -11804;
          goto LABEL_353;
        }

        v10 = -42808;
LABEL_259:
        if (a1 != v10)
        {
          goto LABEL_354;
        }

LABEL_260:
        v7 = -11836;
        goto LABEL_353;
      }

      if ((a1 + 42597) > 0xD)
      {
        goto LABEL_354;
      }

      if (((1 << (a1 + 101)) & 0x1F87) != 0)
      {
LABEL_102:
        v7 = -11835;
        goto LABEL_353;
      }

      if (a1 != -42584)
      {
        goto LABEL_354;
      }

      goto LABEL_314;
    }

    if (a1 > -19033)
    {
      if (a1 > -17773)
      {
        if ((a1 + 17693) < 2 || a1 == -17772)
        {
          v7 = -11877;
          goto LABEL_353;
        }

        if (a1 != -17698)
        {
          goto LABEL_354;
        }

        v7 = -11862;
        v8 = @"Cannot append tagged buffer group due to video layer IDs mismatch";
        goto LABEL_344;
      }

      if (a1 == -19032)
      {
        v7 = -11862;
        v8 = @"Values for kVTCompressionPropertyKey_MVHEVCVideoLayerIDs are invalid";
        goto LABEL_344;
      }

      if (a1 == -19031)
      {
        v7 = -11862;
        v8 = @"Value at index 0 for kVTCompressionPropertyKey_MVHEVCVideoLayerIDs is not 0";
        goto LABEL_344;
      }

      v11 = -17774;
      goto LABEL_284;
    }

    if (a1 <= -19231)
    {
      if ((a1 + 42005) >= 2)
      {
        if (a1 == -19232)
        {
          v7 = -11800;
          v8 = @"CoreAnimation image queue does not support this image type";
          goto LABEL_344;
        }

        if (a1 != -19231)
        {
          goto LABEL_354;
        }

        v7 = -11800;
        v8 = @"CoreAnimation image queue registration failed";
        goto LABEL_344;
      }

      goto LABEL_102;
    }

    if (a1 == -19230)
    {
      v7 = -11800;
      v8 = @"CoreAnimation image queue does not support this pixel format";
      goto LABEL_344;
    }

    if (a1 != -19163)
    {
      if (a1 != -19034)
      {
        goto LABEL_354;
      }

      v7 = -11862;
      v8 = @"Cannot append tagged buffer group due to left and right view IDs mismatch";
      goto LABEL_344;
    }

LABEL_234:
    v7 = -11879;
    goto LABEL_353;
  }

  if (a1 > -15520)
  {
    if (a1 > -12889)
    {
      if (a1 > -12876)
      {
        if (a1 <= -12865)
        {
          if (a1 == -12875)
          {
            v6 = *MEMORY[0x1E696A978];
            v7 = -1001;
            goto LABEL_353;
          }

          if (a1 == -12873)
          {
            v7 = -11849;
            goto LABEL_353;
          }

          v16 = -12867;
          goto LABEL_210;
        }

        if (a1 <= -12849)
        {
          if (a1 != -12864)
          {
            v13 = -12862;
            goto LABEL_351;
          }

          goto LABEL_302;
        }

        if (a1 == -12848)
        {
          v7 = -11829;
          goto LABEL_353;
        }

        v15 = -12847;
        goto LABEL_272;
      }

      if (a1 <= -12886)
      {
        if (a1 == -12888 || a1 == -12887)
        {
          v7 = -11866;
          goto LABEL_353;
        }

        v7 = -11853;
        v8 = @"JSON format error";
        goto LABEL_344;
      }

      if (a1 != -12885)
      {
        if (a1 != -12884)
        {
          if (a1 == -12880)
          {
            v7 = -11867;
            goto LABEL_353;
          }

          goto LABEL_354;
        }

        goto LABEL_297;
      }

LABEL_314:
      v7 = -11863;
      goto LABEL_353;
    }

    if (a1 > -12954)
    {
      switch(a1)
      {
        case -12939:
          v7 = -11850;
          break;
        case -12938:
          goto LABEL_281;
        case -12937:
          goto LABEL_50;
        case -12936:
        case -12934:
        case -12933:
        case -12932:
        case -12931:
        case -12930:
        case -12928:
        case -12927:
        case -12924:
        case -12923:
        case -12922:
        case -12921:
        case -12920:
        case -12919:
        case -12918:
        case -12917:
        case -12916:
        case -12914:
        case -12907:
          goto LABEL_354;
        case -12935:
          v6 = *MEMORY[0x1E696A978];
          v7 = -1;
          break;
        case -12929:
          v7 = -11857;
          break;
        case -12926:
          v7 = -11882;
          break;
        case -12925:
          goto LABEL_110;
        case -12915:
          v7 = -11840;
          break;
        case -12913:
          goto LABEL_124;
        case -12912:
          v7 = -11883;
          break;
        case -12911:
        case -12909:
          goto LABEL_237;
        case -12910:
          goto LABEL_140;
        case -12908:
          a2 = ensureUserInfoDictionaryContainsObjectForKey(a2, @"vide");
          v7 = -11834;
          break;
        case -12906:
          a2 = ensureUserInfoDictionaryContainsObjectForKey(a2, @"vide");
          v7 = -11833;
          break;
        default:
          v13 = -12953;
          goto LABEL_351;
      }

      goto LABEL_353;
    }

    if ((a1 + 15519) >= 5)
    {
      if (a1 != -15432)
      {
        if (a1 == -15430)
        {
          v7 = -11911;
          goto LABEL_353;
        }

        goto LABEL_354;
      }

      goto LABEL_232;
    }

LABEL_110:
    v7 = -11848;
    goto LABEL_353;
  }

  if (a1 > -16181)
  {
    if (a1 <= -16114)
    {
      if (a1 <= -16122)
      {
        if (a1 == -16180)
        {
          v7 = -11858;
          v8 = @"Custom compositor failed with client NSError";
          goto LABEL_344;
        }

        if (a1 == -16155)
        {
          goto LABEL_285;
        }

        if (a1 != -16125)
        {
          goto LABEL_354;
        }

        v7 = -11862;
        v8 = @"Cannot append tagged buffer that contains no CVPixelBuffers";
LABEL_344:
        v19 = [MEMORY[0x1E696AD60] string];
        v20 = *MEMORY[0x1E695E618];
        v21 = [a2 objectForKey:*MEMORY[0x1E695E618]];
        if (v21)
        {
          [v19 appendFormat:@"%@, ", v21];
        }

        [v19 appendString:v8];
        a2 = [a2 mutableCopy];
        [a2 setObject:v19 forKey:v20];
        v6 = @"AVFoundationErrorDomain";
        goto LABEL_353;
      }

      if ((a1 + 16121) >= 2)
      {
        if (a1 != -16114)
        {
          goto LABEL_354;
        }

        v7 = -11875;
        v8 = @"Value for kVTDecompressionPropertyKey_RequestedMVHEVCVideoLayerIDs does not match content";
        goto LABEL_344;
      }

      goto LABEL_246;
    }

    if ((a1 + 16113) <= 0xD)
    {
      if (((1 << (a1 - 15)) & 0x300C) != 0)
      {
        goto LABEL_246;
      }

      if (a1 == -16113)
      {
        v7 = -11875;
        v8 = @"Can only use kVTDecompressionPropertyKey_RequestedMVHEVCVideoLayerIDs for MV-HEVC video";
        goto LABEL_344;
      }

      if (a1 == -16102)
      {
        goto LABEL_278;
      }
    }

    if ((a1 + 15811) >= 2)
    {
      if (a1 != -15841)
      {
        goto LABEL_354;
      }

      goto LABEL_234;
    }

    goto LABEL_110;
  }

  switch(a1)
  {
    case -16434:
    case -16405:
      goto LABEL_285;
    case -16433:
    case -16430:
    case -16429:
    case -16428:
    case -16427:
    case -16426:
    case -16425:
    case -16424:
    case -16423:
    case -16421:
    case -16420:
    case -16416:
    case -16415:
    case -16408:
    case -16407:
    case -16406:
    case -16404:
    case -16403:
      goto LABEL_354;
    case -16432:
      break;
    case -16431:
    case -16422:
      goto LABEL_278;
    case -16419:
      v7 = -11859;
      break;
    case -16418:
      v7 = -11805;
      break;
    case -16417:
      v7 = -11904;
      break;
    case -16414:
      v7 = -11818;
      break;
    case -16413:
      v7 = -11810;
      break;
    case -16412:
      v7 = -11811;
      break;
    case -16411:
      goto LABEL_206;
    case -16410:
      goto LABEL_228;
    case -16409:
      v7 = -11803;
      break;
    case -16402:
      goto LABEL_246;
    default:
      if (a1 == -16450)
      {
        v7 = -11808;
      }

      else
      {
        if (a1 != -16222)
        {
          goto LABEL_354;
        }

        v7 = -11856;
      }

      break;
  }

LABEL_353:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  result = AVLocalizedError(v6, v7, a2);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVOSStatusToNSError(signed int a1, void *a2)
{
  v2 = a2;
  v4 = 0;
  v10 = a1;
  v5 = *MEMORY[0x1E696A798];
  v6 = *MEMORY[0x1E696A768];
  while (*(&v10 + v4) - 127 >= 0xFFFFFFA1)
  {
    if (++v4 == 4)
    {
      v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a2];
      [v2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"'%@'", AVStringForOSType(a1)), @"AVRoutingErrorFourCharCode"}];
      break;
    }
  }

  if ((a1 - 1) >= 0x6B)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x1E696ABC0];

  return [v8 errorWithDomain:v7 code:a1 userInfo:v2];
}

uint64_t ensureUserInfoDictionaryContainsObjectForKey(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (![a1 objectForKey:@"AVRoutingErrorMediaTypeKey"])
    {
      v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
      [v3 setObject:a2 forKey:@"AVRoutingErrorMediaTypeKey"];
    }

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DF20];

    return [v5 dictionaryWithObject:a2 forKey:@"AVRoutingErrorMediaTypeKey"];
  }
}

uint64_t AVFullMethodName(objc_class *a1, const char *a2)
{
  v4 = objc_opt_class();
  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v7 = NSStringFromClass(v4);
  }

  else
  {
    v7 = @"Nil";
  }

  v10 = NSStringFromSelector(a2);
  v8 = 45;
  if (v5 == a1)
  {
    v8 = 43;
  }

  return [v6 stringWithFormat:@"%c[%@ %@]", v8, v7, v10];
}

uint64_t AVRequireConcreteObject(void *a1, const char *a2, uint64_t a3)
{
  result = objc_opt_class();
  if (result == a3)
  {
    v7 = a1;
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    return [v8 raise:v9 format:{@"*** initialization method -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v10, NSStringFromClass(v11)}];
  }

  return result;
}

uint64_t AVRequestConcreteImplementation(objc_class *a1, const char *a2, objc_class *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = *MEMORY[0x1E695D940];
  if (v6 == a3)
  {
    return [MEMORY[0x1E695DF30] raise:v9 format:{@"*** -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v8, v7}];
  }

  else
  {
    return [MEMORY[0x1E695DF30] raise:v9 format:{@"*** -%@ only defined for abstract class.  Define %@!", v8, AVFullMethodName(a1, a2)}];
  }
}

CMTimeEpoch CMTimeHash(CMTime *a1)
{
  flags = a1->flags;
  if ((~flags & 5) == 0)
  {
    return 1;
  }

  if ((~flags & 9) == 0)
  {
    return 2;
  }

  if ((~flags & 0x11) == 0)
  {
    return 3;
  }

  if ((a1->flags & 0x1D) != 1)
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  memset(&v6, 0, sizeof(v6));
  v5 = *a1;
  CMTimeConvertScale(&v6, &v5, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return v6.epoch ^ v6.value;
}

void sub_1AB5BED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5BF1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5BF7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5BFDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5BFFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C0734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C10F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVOutputContextIsSystemContextAllowed()
{
  if (AVOutputContextIsSystemContextAllowed_onceToken != -1)
  {
    AVOutputContextIsSystemContextAllowed_cold_1();
  }

  return AVOutputContextIsSystemContextAllowed_isAllowed;
}

void __AVOutputContextIsSystemContextAllowed_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.avfoundation.allow-system-wide-context", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        AVOutputContextIsSystemContextAllowed_isAllowed = CFBooleanGetValue(v3) != 0;
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

void sub_1AB5C1A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C2354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C5DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C6214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C6320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5C692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result)
{
  *(*(v1 + 8) + 8) = result;
  v2 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t result)
{
  *(*(v1 + 8) + 8) = result;
  v2 = *(*(v1 + 8) + 8);
  return result;
}

CGFloat AVOutputDeviceViewAreaInfoNSRectFromDictionary(const __CFDictionary *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (!CGRectMakeWithDictionaryRepresentation(a1, &v3))
  {
    v1 = *(MEMORY[0x1E695F058] + 16);
    v3.origin = *MEMORY[0x1E695F058];
    v3.size = v1;
  }

  return v3.origin.x;
}

void sub_1AB5CDCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5CE09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AB5CF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5CFCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5D00B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5D0988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5D0B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AB5D0F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_DADeviceStateToString_cold_1()
{
  dlerror();
  abort_report_np();
  return __getDADaemonSessionClass_block_invoke_cold_1();
}

void AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImplHandleEvent(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    v8 = *MEMORY[0x1E69623E0];
    if (FigCFEqual())
    {
      [a4 _didReceiveData:a3];
    }

    else
    {
      v9 = *MEMORY[0x1E69623E8];
      if (FigCFEqual())
      {
        [a4 _didCloseCommunicationChannel];
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t AVOutputDeviceSetHeadTrackedSpatialAudioModeOnEndpoint(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((([a2 isEqualToString:AVOutputDeviceHeadTrackedSpatialAudioModeNever] & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", AVOutputDeviceHeadTrackedSpatialAudioModeAlways) & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", AVOutputDeviceHeadTrackedSpatialAudioModeAutomatic) & 1) != 0 || objc_msgSend(a2, "isEqualToString:", AVOutputDeviceHeadTrackedSpatialAudioModeMultichannelOnly)) && (v3 = *MEMORY[0x1E695E480], (SInt32 = FigCFNumberCreateSInt32()) != 0))
  {
    v5 = SInt32;
    v6 = *MEMORY[0x1E69620E8];
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v10 = v9(CMBaseObject, v6, v5);
    }

    else
    {
      v10 = 4294954514;
    }

    CFRelease(v5);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void *AVRoutingSessionManagerGetLikelyDestinationsFromFig(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 24);
  if (v6)
  {
    v7 = *(VTable + 16) + 24;
    if (!v6(a1, &theArray))
    {
      for (i = 0; ; ++i)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (i >= Count)
        {
          break;
        }

        v10 = [[AVRoutingSessionDestination alloc] initWithFigRoutingSessionDestination:CFArrayGetValueAtIndex(theArray, i)];
        if ((*(a2 + 16))(a2, v10))
        {
          [v4 addObject:v10];
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v4;
}