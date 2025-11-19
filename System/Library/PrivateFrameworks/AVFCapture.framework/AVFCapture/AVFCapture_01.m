uint64_t AVGestaltGetQuestions()
{
  if (avgestalt_buildDataBase_onceToken != -1)
  {
    AVGestaltGetBoolAnswer_cold_1();
  }

  v0 = [sAVGestaltBoolDataBase allKeys];
  v1 = [v0 arrayByAddingObjectsFromArray:{objc_msgSend(sAVGestaltIntegerDataBase, "allKeys")}];
  v2 = [v1 arrayByAddingObjectsFromArray:{objc_msgSend(sAVGestaltFloatDataBase, "allKeys")}];
  v3 = [sAVGestaltStringDataBase allKeys];

  return [v2 arrayByAddingObjectsFromArray:v3];
}

uint64_t AVCaptureDeferredPhotoIdentifierFromMakerNoteDictionary(void *a1)
{
  v2 = [objc_msgSend(a1 objectForKeyedSubscript:{@"25", "unsignedIntValue"}];
  v3 = [a1 objectForKeyedSubscript:@"32"];
  v4 = [a1 objectForKeyedSubscript:@"43"];
  if ((v2 & 0x1000) == 0)
  {
    return 0;
  }

  if (!v3 || v4 == 0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v3, v4];
  }
}

void sub_1A923C8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *avcdpp_failureReasonStringForErrorStatus(int a1)
{
  if (a1 <= -16826)
  {
    if (a1 > -16828)
    {
      if (a1 == -16827)
      {
        v1 = @"incompatible intermediates for this platform";
      }

      else
      {
        v1 = @"badly-parsed deferred photo identifier";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
    }

    if (a1 == -73199)
    {
      v1 = @"image corruption detected";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
    }

    if (a1 == -16828)
    {
      v1 = @"incomplete deferred container";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
    }
  }

  else if (a1 <= -16823)
  {
    if (a1 == -16825)
    {
      v1 = @"potentially recoverable error";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
    }

    if (a1 == -16824)
    {
      v1 = @"missing deferred intermediate(s)";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
    }
  }

  else
  {
    switch(a1)
    {
      case -16822:
        v1 = @"deferredmediad died";
        return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
      case -16820:
        v1 = @"deferred photo processing is not supported on this device";
        return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
      case -16821:
        v1 = @"deferredmediad shut down due to camera launch";
        return [MEMORY[0x1E696AEC0] stringWithFormat:@" (reason: %@)", v1];
    }
  }

  return &stru_1F1CBCFE8;
}

void figCaptureSourceNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __figCaptureSourceNotificationHandler_block_invoke;
  block[3] = &unk_1E786FF80;
  block[5] = a5;
  block[6] = a2;
  block[4] = a3;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
  v10 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v10);
  objc_autoreleasePoolPop(v8);
}

void OUTLINED_FUNCTION_2_5(uint64_t a1)
{
  v2 = *(a1 + 16);

  dispatch_assert_queue_V2(v2);
}

void *avcmdo_allMetadataObjectsInCollections(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObjectsFromArray:{objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "metadataObjects")}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  return v2;
}

void *avcmdo_allMetadataObjectTypesInCollections(void *a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 unionSet:{objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "metadataObjectTypes")}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  return v2;
}

unint64_t avcmdo_addCMTimeToHistoryForDetector(void *a1, __int128 *a2, uint64_t a3)
{
  v6 = [a1 objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [a1 setObject:v6 forKeyedSubscript:a3];
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  [v6 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTime:", &v8)}];
  result = [v6 count];
  if (result >= 3)
  {
    return [v6 removeObjectAtIndex:0];
  }

  return result;
}

uint64_t avcmdo_nextTimeForDetector@<X0>(void *a1@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *&a3->value = *MEMORY[0x1E6960C70];
  a3->epoch = *(v4 + 16);
  v5 = [a1 objectForKeyedSubscript:a2];
  if ([v5 count] == 2)
  {
    memset(&v16, 0, sizeof(v16));
    v6 = [v5 objectAtIndexedSubscript:1];
    if (v6)
    {
      [v6 CMTimeValue];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    memset(&v15, 0, sizeof(v15));
    v8 = [v5 objectAtIndexedSubscript:0];
    if (v8)
    {
      [v8 CMTimeValue];
    }

    else
    {
      memset(&v15, 0, sizeof(v15));
    }

    memset(&v14, 0, sizeof(v14));
    lhs = v16;
    v12 = v15;
    CMTimeSubtract(&v14, &lhs, &v12);
    lhs = v16;
    v12 = v14;
    p_lhs = &lhs;
    v10 = &v12;
LABEL_14:
    CMTimeAdd(a3, p_lhs, v10);
    return [v5 removeAllObjects];
  }

  if ([v5 count] == 1)
  {
    memset(&v16, 0, sizeof(v16));
    v7 = [v5 objectAtIndexedSubscript:0];
    if (v7)
    {
      [v7 CMTimeValue];
      LODWORD(v7) = v16.timescale;
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    memset(&v15, 0, sizeof(v15));
    CMTimeMakeWithSeconds(&v15, 0.0333333333, v7);
    v14 = v16;
    lhs = v15;
    p_lhs = &v14;
    v10 = &lhs;
    goto LABEL_14;
  }

  return [v5 removeAllObjects];
}

uint64_t avcs_updateAVCaptureConnectionForAspectRatio(void *a1, void *a2)
{
  v4 = [a1 output];
  v5 = [objc_msgSend(a1 "sourceDevice")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 updateClientVideoSettingsForAspectRatio:a2];
    [v4 updateVideoSettingsForConnection:a1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 supportedOutputSettingsKeysForConnection:a1];
      v7 = *MEMORY[0x1E6987E08];
      if ([v6 containsObject:*MEMORY[0x1E6987E08]])
      {
        v8 = *MEMORY[0x1E6987D70];
        if ([v6 containsObject:*MEMORY[0x1E6987D70]])
        {
          v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{objc_msgSend(v4, "outputSettingsForConnection:", a1)}];
          v10 = v9;
          if (a2)
          {
            Dimensions = AVCaptureConvertDimensionsForAspectRatio([objc_msgSend(v9 objectForKeyedSubscript:{v7), "intValue"}] | (objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", v8), "intValue") << 32), a2, NAN);
          }

          else
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions([v5 formatDescription]);
          }

          v12 = HIDWORD(Dimensions);
          [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", Dimensions), v7}];
          [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v12), v8}];
          [v4 setOutputSettings:v10 forConnection:a1];
        }
      }
    }
  }

  return [v4 handleChangedDynamicAspectRatio:a2 forFormat:v5];
}

void AVCaptureSessionSetXCTestClientAuthorizedToStealDevice(uint64_t a1)
{
  if (AVCaptureIsRunningInXCTest())
  {
    if (a1)
    {
      *(*(a1 + 8) + 225) = 1;
      return;
    }

    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D940];
    v4 = @"*** Can't pass a nil AVCaptureSession";
  }

  else
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D940];
    v4 = @"*** Not supported when running outside of xctest";
  }

  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v5);
  }

  NSLog(&cfstr_SuppressingExc.isa, v5);
}

uint64_t AVCapturePrewarm(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = mach_continuous_time();

  return AVCapturePrewarmWithTime(a1, v2, v3);
}

uint64_t AVCapturePrewarmWithTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = @"AVCapturePrewarmUserInteractionContinuousTimeKey";
  v7[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{a2, @"AVCapturePrewarmUserInteractionAbsoluteTimeKey"}];
  v7[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  return AVCapturePrewarmWithOptions(a1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2]);
}

uint64_t AVCapturePrewarmWithOptions(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([a2 objectForKeyedSubscript:@"AVCapturePrewarmUserInteractionAbsoluteTimeKey"])
  {
    v4 = [a2 objectForKeyedSubscript:@"AVCapturePrewarmUserInteractionAbsoluteTimeKey"];
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E698FE30]];
  }

  if ([a2 objectForKeyedSubscript:@"AVCapturePrewarmUserInteractionContinuousTimeKey"])
  {
    v5 = [a2 objectForKeyedSubscript:@"AVCapturePrewarmUserInteractionContinuousTimeKey"];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E698FE20]];
  }

  if ([a2 objectForKeyedSubscript:@"AVCapturePrewarmReasonKey"])
  {
    v6 = [a2 objectForKeyedSubscript:@"AVCapturePrewarmReasonKey"];
    v20[0] = @"HomeScreen";
    v20[1] = @"Spotlight";
    v20[2] = @"AppSwitcher";
    v20[3] = @"NotificationCenter";
    v20[4] = @"ControlCenter";
    v20[5] = @"Banner";
    v20[6] = @"LockScreen";
    v20[7] = @"Siri";
    v20[8] = @"Stark";
    v20[9] = @"Continuity";
    v20[10] = @"SystemGesture";
    v20[11] = @"NonInteractiveSystemGesture";
    v20[12] = @"FBSystemService";
    v20[13] = @"Rotation";
    v20[14] = @"Breadcrumb";
    v20[15] = @"CommandTab";
    v20[16] = @"ExternalDisplay";
    v20[17] = @"Widget";
    v20[18] = @"HomeButton";
    v20[19] = @"Test";
    v20[20] = @"StatusBar";
    v20[21] = @"LockScreenPlugin";
    v20[22] = @"FloatingDock";
    v20[23] = @"FloatingDockSuggestions";
    v20[24] = @"DragAndDrop";
    v20[25] = @"StarkSiri";
    v20[26] = @"Startup";
    v20[27] = @"ActionButton";
    v20[28] = @"CameraCaptureButton";
    v20[29] = @"LockScreenButton";
    v20[30] = @"LockScreenSwipe";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:31];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([v6 isEqualToString:*(*(&v16 + 1) + 8 * v11)])
          {
            v13 = [a2 objectForKeyedSubscript:@"AVCapturePrewarmReasonKey"];
            v12 = *MEMORY[0x1E698FE28];
            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = *MEMORY[0x1E698FE28];
    v13 = @"Invalid";
LABEL_16:
    [v3 setObject:v13 forKeyedSubscript:v12];
  }

  return FigCaptureSessionRemotePrewarmWithOptions();
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return [v33 countByEnumeratingWithState:v34 - 144 objects:&a33 count:16];
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{
  v2 = *(a1 + 32);

  return [v2 referencedObject];
}

void sub_1A9268348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A9268528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1A926871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t po_createPreviewJPEGRepresentationForSampleBuffer(uint64_t a1, uint64_t a2)
{
  [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{&unk_1F1CEA388, *MEMORY[0x1E69918D0], a2, *MEMORY[0x1E6991940], 0}];
  CMPhotoCompressionCreateDataContainerFromImage();
  return 0;
}

void sub_1A926C3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A926CB28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A926D044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A926D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A926F814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A9271A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *po_deviceArrayToFigCaptureSourceDeviceTypesArray(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v9 + 1) + 8 * i), "figCaptureSourceDeviceType"))}];
      }

      v4 = [a1 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  return v2;
}

void sub_1A9275920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t po_metadataWithMakerNoteProcessingFlags(uint64_t a1)
{
  v4 = *MEMORY[0x1E696DE30];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{a1, @"25"}];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:&v2 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
}

BOOL po_allLivePhotoCallbacksHaveFinishedRecordingForRequest(void *a1)
{
  if (![objc_msgSend(a1 "resolvedSettings")])
  {
    return 1;
  }

  v2 = [objc_msgSend(a1 "resolvedSettings")];
  v3 = [objc_msgSend(a1 "resolvedSettings")];
  v4 = [objc_msgSend(a1 "unresolvedSettings")];
  v5 = v4 != 0;
  if (v2)
  {
    v6 = v4;
    v7 = [objc_msgSend(a1 "unresolvedSettings")];
    v8 = v6 ? 2 : 1;
    if (v7)
    {
      v5 = v8;
    }
  }

  if (v3)
  {
    if ([objc_msgSend(a1 "unresolvedSettings")])
    {
      ++v5;
    }

    if (v2)
    {
      if ([objc_msgSend(a1 "unresolvedSettings")])
      {
        ++v5;
      }
    }
  }

  v9 = ([a1 firedCallbackFlags] >> 7) & 1;
  v10 = (([a1 firedCallbackFlags] >> 5) & 1) + v9;
  v11 = ([a1 firedCallbackFlags] >> 8) & 1;
  return v10 + v11 + (([a1 firedCallbackFlags] >> 6) & 1) == v5;
}

uint64_t __po_photoSettingsAreValid_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 112) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "flashMode"))}];
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 96) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "HDRMode"))}];
  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 104);
  result = [*(*(a1 + 32) + 120) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "digitalFlashMode"))}];
  *(*(*(a1 + 72) + 8) + 24) = result;
  return result;
}

__n128 AVCaptureTimecodeAdvancedByFrames@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *(a1 + 8);
  Seconds = CMTimeGetSeconds(&v42);
  if (a2)
  {
    v7 = Seconds;
    if (Seconds > 0.0)
    {
      v8 = tg_totalFramesFromTimecode(a1);
      LOWORD(v42.value) = 15127;
      BYTE2(v42.value) = 59;
      BYTE3(v42.value) = vcvtmd_s64_f64(1.0 / v7) - 1;
      HIDWORD(v42.value) = 0;
      *&v42.timescale = *(a1 + 8);
      v9 = *(a1 + 32);
      v43 = *(a1 + 24);
      v44 = v9;
      v10 = tg_totalFramesFromTimecode(&v42);
      v11 = *(a1 + 8);
      if (!v11)
      {
        AVCaptureTimecodeAdvancedByFrames_cold_10();
      }

      v12 = *(a1 + 16) / v11;
      v13 = (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v14 = ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v12 >= 0.0)
      {
        v14 = 0;
        v13 = 0;
      }

      if ((*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v13 = 1;
      }

      v15 = (*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v13;
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v15 = 1;
      }

      if ((v15 | v14) == 1)
      {
        AVCaptureTimecodeAdvancedByFrames_cold_9();
      }

      v16 = llround(v12);
      if (!v16)
      {
        AVCaptureTimecodeAdvancedByFrames_cold_8();
      }

      v17 = v10;
      v45 = *(a1 + 8);
      v46 = *(a1 + 24);
      v18 = tg_calculateDropFramesPerEvent(&v45);
      if (v18 >= v16)
      {
        AVCaptureTimecodeAdvancedByFrames_cold_1();
      }

      v19 = ((v17 + 1) & (((v8 + a2) % (v17 + 1)) >> 63)) + (v8 + a2) % (v17 + 1);
      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 60 * v16;
        v24 = 3600 * v16 - 54 * v18;
        v25 = v19 % (24 * v24);
        v26 = v25 / v24;
        v27 = v25 % v24;
        v28 = -1;
        v29 = 1;
        v30 = 60 * v16;
        while (1)
        {
          v31 = v21 + v18 * (v20 + v22 / 0xA);
          v32 = v27 >= v31;
          v33 = v27 - v31;
          if (v32)
          {
            if (v27 < v30 + v18 * (v28 + v29 / 0xA))
            {
              v34 = v22;
              goto LABEL_29;
            }

            if (v22 == 59)
            {
              break;
            }
          }

          ++v22;
          --v28;
          ++v29;
          v30 += v23;
          v21 += v23;
          --v20;
          if (v22 == 60)
          {
            v34 = 0;
            goto LABEL_30;
          }
        }

        v34 = 59;
LABEL_29:
        v27 = v33;
LABEL_30:
        if ((v26 & 0xF8) >= 0x18)
        {
          AVCaptureTimecodeAdvancedByFrames_cold_5();
        }

        if (v34 >= 0x3C)
        {
          AVCaptureTimecodeAdvancedByFrames_cold_4();
        }

        v38 = v27 / v16;
        if ((v38 & 0xFC) >= 0x3C)
        {
          AVCaptureTimecodeAdvancedByFrames_cold_3();
        }

        v39 = v27 % v16;
        if (v39 >= v16)
        {
          AVCaptureTimecodeAdvancedByFrames_cold_2();
        }

        *a1 = v26;
        *(a1 + 1) = v34;
        *(a1 + 2) = v38;
        *(a1 + 3) = v39;
      }

      else
      {
        v35 = v19 % (86400 * v16);
        v36 = v35 / v16;
        v37 = v35 % v16;
        *(a1 + 3) = v37;
        *(a1 + 2) = v36 % 0x3C;
        *(a1 + 1) = v36 / 0x3C - 60 * ((143165577 * (v36 / 0x3C)) >> 33);
        v36 /= 0xE10u;
        *a1 = v36;
        if ((v36 & 0xF8) >= 0x18)
        {
          AVCaptureTimecodeAdvancedByFrames_cold_7();
        }

        if (v16 <= v37)
        {
          AVCaptureTimecodeAdvancedByFrames_cold_6();
        }
      }
    }
  }

  result = *a1;
  v41 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v41;
  *(a3 + 32) = *(a1 + 32);
  return result;
}

id tg_UUIDFromSInt32(unsigned int a1)
{
  if ((uuidEncryptionParametersInitialized & 1) == 0)
  {
    v2 = *MEMORY[0x1E697B308];
    v3 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, &kEncryptionKey);
    if (v3 | SecRandomCopyBytes(v2, 0x10uLL, &kEncryptionIV))
    {
      tg_UUIDFromSInt32_cold_1();
    }

    uuidEncryptionParametersInitialized = 1;
  }

  v10 = 0;
  v9 = 0;
  dataIn = bswap32(a1);
  dataOut[0] = 0;
  dataOut[1] = 0;
  dataOutMoved = 0;
  v4 = CCCrypt(0, 0, 0, &kEncryptionKey, 0x10uLL, &kEncryptionIV, &dataIn, 0x10uLL, dataOut, 0x10uLL, &dataOutMoved);
  result = 0;
  if (!v4 && dataOutMoved == 16)
  {
    return [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:dataOut];
  }

  return result;
}

void sub_1A927DC10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

unint64_t tg_totalFramesFromTimecode(unsigned __int8 *a1)
{
  if (!a1)
  {
    tg_totalFramesFromTimecode_cold_6();
  }

  if (a1[1] >= 0x3Cu)
  {
    tg_totalFramesFromTimecode_cold_5();
  }

  if (a1[2] >= 0x3Cu)
  {
    tg_totalFramesFromTimecode_cold_4();
  }

  v2 = *(a1 + 1);
  if (!v2)
  {
    tg_totalFramesFromTimecode_cold_3();
  }

  v3 = *(a1 + 4) / v2;
  v4 = (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v5 = ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v3 >= 0.0)
  {
    v5 = 0;
    v4 = 0;
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v4 = 1;
  }

  v6 = (*&v3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v4;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v6 = 1;
  }

  if ((v6 | v5) == 1)
  {
    tg_totalFramesFromTimecode_cold_2();
  }

  v7 = llround(v3);
  if (!v7)
  {
    tg_totalFramesFromTimecode_cold_1();
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 3);
  v8 = tg_calculateDropFramesPerEvent(&v12);
  v9 = a1[1];
  v10 = a1[3];
  if (v8)
  {
    return *a1 * (3600 * v7 - 54 * v8) + a1[2] * v7 + v10 + 60 * v7 * v9 + (a1[1] / 0xAu - v9) * v8;
  }

  else
  {
    return v10 + (a1[2] + 60 * (v9 + 60 * *a1)) * v7;
  }
}

CMSampleBufferRef AVCaptureTimecodeCreateMetadataSampleBufferAssociatedWithPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  v5 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  return tg_packageTimecodeAsMetadataBuffer(a1, &v5, &v3);
}

CMSampleBufferRef tg_packageTimecodeAsMetadataBuffer(uint64_t a1, CMTime *a2, uint64_t a3)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4 < 1 || *(a1 + 16) <= 0)
  {
    tg_packageTimecodeAsMetadataBuffer_cold_3();
  }

  blockBufferOut = 0;
  *&time.value = *&v3->value;
  time.epoch = *(a1 + 24);
  formatDescriptionOut = 0;
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds <= 0.0)
  {
    tg_packageTimecodeAsMetadataBuffer_cold_2();
  }

  v9 = vcvtpd_u64_f64(1.0 / Seconds);
  if (!v9)
  {
    tg_packageTimecodeAsMetadataBuffer_cold_1();
  }

  if (v4 == 1001)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = *MEMORY[0x1E695E480];
  time = *v3;
  v12 = CMTimeCodeFormatDescriptionCreate(v11, 0x746D6364u, &time, v9, v10, 0, &formatDescriptionOut);
  result = 0;
  v14 = formatDescriptionOut;
  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = formatDescriptionOut == 0;
  }

  if (!v15)
  {
    sourceBytes = bswap32(tg_totalFramesFromTimecode(a1));
    sampleSizeArray = 4;
    v16 = CMBlockBufferCreateWithMemoryBlock(v11, 0, 4uLL, v11, 0, 0, 4uLL, 0, &blockBufferOut);
    v17 = blockBufferOut;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = blockBufferOut == 0;
    }

    if (v18 || (v19 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 4uLL), v17 = blockBufferOut, v19) || (*&sampleTimingArray.duration.value = *a3, sampleTimingArray.duration.epoch = *(a3 + 16), sampleTimingArray.presentationTimeStamp = *a2, sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70], v21 = 0, v20 = CMSampleBufferCreate(v11, blockBufferOut, 1u, 0, 0, v14, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v21), v17 = blockBufferOut, v20))
    {
      if (v17)
      {
        CFRelease(v17);
      }

      CFRelease(v14);
      return 0;
    }

    else
    {
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      CFRelease(v14);
      return v21;
    }
  }

  return result;
}

CMSampleBufferRef AVCaptureTimecodeCreateMetadataSampleBufferForDuration(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return tg_packageTimecodeAsMetadataBuffer(a1, MEMORY[0x1E6960CC0], &v3);
}

unsigned int tg_calculateDropFramesPerEvent(uint64_t a1)
{
  if (!*a1)
  {
    tg_calculateDropFramesPerEvent_cold_2();
  }

  v1 = *(a1 + 8) / *a1;
  if (COERCE__INT64(fabs(v1)) >= 0x7FF0000000000000)
  {
    tg_calculateDropFramesPerEvent_cold_1();
  }

  v2 = modf(v1, &__y);
  result = 0;
  v4 = fabs(v2);
  if (v4 >= 0.00001 && 1.0 - v4 >= 0.00001)
  {
    v5 = fabs(v1);
    return llround(v5 / 30.0 + v5 / 30.0);
  }

  return result;
}

AVCaptureReactionType _AVControlCenterGetAVCaptureReactionTypeForPTEffectReactionType(uint64_t a1)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v3 = &AVCaptureReactionTypeHeart;
      }

      else
      {
        if (a1 != 7)
        {
          return result;
        }

        v3 = &AVCaptureReactionTypeLasers;
      }
    }

    else if (a1 == 4)
    {
      v3 = &AVCaptureReactionTypeFireworks;
    }

    else
    {
      v3 = &AVCaptureReactionTypeRain;
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = &AVCaptureReactionTypeThumbsDown;
    }

    else
    {
      v3 = &AVCaptureReactionTypeBalloons;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v3 = &AVCaptureReactionTypeThumbsUp;
  }

  else
  {
    v3 = &AVCaptureReactionTypeConfetti;
  }

  return *v3;
}

void AVControlCenterModulesPrewarm()
{
  if (AVControlCenterModulesPrewarm_onceToken != -1)
  {
    AVControlCenterModulesPrewarm_cold_1();
  }
}

id __AVControlCenterModulesPrewarm_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  sModuleStatesByBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  sCaptureDeviceWatcher = [[AVControlCenterCaptureDeviceWatcher alloc] initWithSupportedVideoEffectsDidChangeHandler:&__block_literal_global_444];
  return [AVCaptureProprietaryDefaultsSingleton objectForKey:@"warmup"];
}

void __AVControlCenterModulesPrewarm_block_invoke_441(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock(&sModuleStatesLock);
  v11 = [objc_msgSend(sModuleStatesByBundleID "allValues")];
  os_unfair_lock_unlock(&sModuleStatesLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) updateCenterStageSupported:a2 backgroundBlurSupported:a3 studioLightingSupported:a4 reactionEffectsSupported:a5 backgroundReplacementSupported:a6];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v13);
  }
}

uint64_t AVControlCenterModulesShouldBeShownForBundleID(void *a1)
{
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  if (AVCaptureClientIsFaceTimeVariant(a1))
  {
    v3 = @"com.apple.facetime";
  }

  else if ([a1 hasPrefix:@"com.apple.WebKit"])
  {
    v3 = @"com.apple.mobilesafari";
  }

  else
  {
    v3 = a1;
  }

  ShouldBeShownForBundleID = AVControlCenterVideoEffectsModuleShouldBeShownForBundleID(v3);
  v5 = AVControlCenterMicrophoneModuleShouldBeShownForBundleID(v3);
  if (dword_1ED8068A0)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return ShouldBeShownForBundleID & v5;
}

uint64_t AVControlCenterMicrophoneModuleShouldBeShownForBundleID(void *a1)
{
  if (dword_1ED8068A0)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  if (AVCaptureClientIsFaceTimeVariant(a1))
  {
    a1 = @"com.apple.facetime";
  }

  else if ([a1 hasPrefix:@"com.apple.WebKit"])
  {
    a1 = @"com.apple.mobilesafari";
  }

  if ([avccm_commonDisallowListForVideoEffectsAndMicModes() containsObject:a1])
  {
    if (dword_1ED8068A0)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v21;
      if (os_log_type_enabled(v9, v20))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v14 = 136315394;
        v15 = "AVControlCenterMicrophoneModuleShouldBeShownForBundleID";
        v16 = 2114;
        v17 = a1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  else
  {
    v3 = _AVControlCenterModuleStateForBundleID(a1);
    if (dword_1ED8068A0)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = v21;
      if (os_log_type_enabled(v4, v20))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = [v3 isActive];
        v14 = 136315650;
        v15 = "AVControlCenterMicrophoneModuleShouldBeShownForBundleID";
        v16 = 2114;
        v17 = a1;
        v18 = 1024;
        v19 = v7;
        LODWORD(v13) = 28;
        v12 = &v14;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [v3 isActive];
  }
}

id _AVControlCenterModuleStateForBundleID(uint64_t a1)
{
  if (AVControlCenterModulesPrewarm_onceToken != -1)
  {
    AVControlCenterModulesPrewarm_cold_1();
  }

  os_unfair_lock_lock(&sModuleStatesLock);
  v2 = [sModuleStatesByBundleID objectForKeyedSubscript:a1];
  if (v2)
  {
    v3 = v2;
    if ([v2 isDeviceBasedModuleState] && (objc_msgSend(v3, "isDeviceBasedModuleStateUpdateToDate") & 1) == 0)
    {
      if (dword_1ED8068A0)
      {
        v27 = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v3 setupDeviceBasedModuleStatesIfNeeded];
    }

    os_unfair_lock_unlock(&sModuleStatesLock);
  }

  else
  {
    if (dword_1ED8068A0)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = [AVControlCenterModuleState moduleStateForBundleID:a1, v16, v19];
    if (dword_1ED8068A0)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v7 = v27;
      if (os_log_type_enabled(v6, v26))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v22 = 136315395;
        v23 = "_AVControlCenterModuleStateForBundleID";
        v24 = 2113;
        v25 = a1;
        LODWORD(v20) = 22;
        v17 = &v22;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [sModuleStatesByBundleID setObject:v3 forKeyedSubscript:{a1, v17, v20}];
    os_unfair_lock_unlock(&sModuleStatesLock);
    if (dword_1ED8068A0)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v27;
      if (os_log_type_enabled(v9, v26))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v22 = 136315395;
        v23 = "_AVControlCenterModuleStateForBundleID";
        v24 = 2113;
        v25 = a1;
        LODWORD(v21) = 22;
        v18 = &v22;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v3 installProprietaryDefaultsHandlers];
    if (dword_1ED8068A0)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v27;
      if (os_log_type_enabled(v12, v26))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v22 = 136315395;
        v23 = "_AVControlCenterModuleStateForBundleID";
        v24 = 2113;
        v25 = a1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v3;
}

uint64_t AVControlCenterPreferencesDomainForCurrentProcess()
{
  v0 = AVCaptureClientPreferencesDomain();

  return AVControlCenterPreferencesDomainForPreferencesDomain(v0);
}

uint64_t AVControlCenterAudioPreferencesKeyPrefix(__CFString *a1)
{
  if (!a1)
  {
    a1 = @"unknown";
  }

  v1 = [(__CFString *)a1 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"AUVoiceIOClients/%@/", v1];
}

uint64_t AVControlCenterVideoEffectsModuleIsEffectSupportedForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v2 = [_AVControlCenterModuleStateForBundleID(a2) supportsVideoEffect:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t AVControlCenterVideoEffectsModuleGetEffectControlModeForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v2 = [_AVControlCenterModuleStateForBundleID(a2) controlModeForVideoEffect:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t AVControlCenterVideoEffectsModuleIsEffectEnabledForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v2 = [_AVControlCenterModuleStateForBundleID(a2) isEnabledForVideoEffect:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t AVControlCenterVideoEffectsModuleSetEffectEnabledForBundleID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v3 = [_AVControlCenterModuleStateForBundleID(a3) setEnabled:a2 forVideoEffect:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t AVControlCenterVideoEffectsModulePerformReactionEffect(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  result = [_AVControlCenterModuleStateForBundleID(a2) performReactionEffect:a1 forCaptureDeviceWithID:{objc_msgSend(a3, "uniqueID")}];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t AVControlCenterVideoEffectsModuleUpdateActiveReactions(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v9 = _AVControlCenterModuleStateForBundleID(a4);
  v10 = [a5 uniqueID];
  time = *a2;
  result = [v9 updateActiveReactions:a1 currentRenderPTS:&time requestedTriggers:a3 forCaptureDeviceWithID:v10];
  if (dword_1ED8068A0)
  {
    v17 = 0;
    v16 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v17;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v16))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      [a5 uniqueID];
      time = *a2;
      CMTimeGetSeconds(&time);
      _os_log_send_and_compose_impl();
    }

    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t AVControlCenterVideoEffectsObserveGesturesDefaultDisabled(uint64_t a1)
{
  if (AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_onceToken != -1)
  {
    AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_cold_1();
  }

  v2 = AVControlCenterVideoEffectsRequestGesturesDefaultDisabledNotificationPreferenceKey();
  v3 = AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_sObserver;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_block_invoke_2;
    v5[3] = &unk_1E7876600;
    v5[4] = a1;
    return [AVCaptureProprietaryDefaultsSingleton addObserver:AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_sObserver forKey:v2 callHandlerForInitialValue:0 defaultChangedHandler:v5];
  }

  else
  {

    return [AVCaptureProprietaryDefaultsSingleton removeObserver:v3 forKey:v2];
  }
}

id __AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E69E58C0]);
  AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_sObserver = result;
  return result;
}

void __AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      HaveShownGesturesDefaultDisabledNotificationPreferenceKey = AVControlCenterVideoEffectsHaveShownGesturesDefaultDisabledNotificationPreferenceKey(@"global");
      v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:HaveShownGesturesDefaultDisabledNotificationPreferenceKey];
      if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 BOOLValue])
      {
        LODWORD(v29) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v29 = 0;
        v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:a3 allowPlaceholder:1 error:&v29];
        if (!v9)
        {
          *type = 0;
          v27 = OS_LOG_TYPE_DEFAULT;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11 = (*(*(a1 + 32) + 16))(*(a1 + 32), a3, [v9 localizedName]);
        *type = 0;
        v27 = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = *type;
        if (os_log_type_enabled(v12, v27))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          if (v11)
          {
            v15 = "was";
          }

          else
          {
            v15 = "was not";
          }

          v16 = [v9 localizedName];
          v19 = 136315906;
          v20 = "AVControlCenterVideoEffectsObserveGesturesDefaultDisabled_block_invoke";
          v21 = 2080;
          v22 = v15;
          v23 = 2114;
          v24 = a3;
          v25 = 2114;
          v26 = v16;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E118] forKey:HaveShownGesturesDefaultDisabledNotificationPreferenceKey];
      }
    }
  }
}

uint64_t AVControlCenterIsManualFramingEnabledForDevice(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v2 = _AVControlCenterModuleStateForBundleID([a1 uniqueID]);

  return [v2 manualFramingEnabledForDevice:a1];
}

uint64_t AVControlCenterStartPanningAtPoint(void *a1, double a2, double a3)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v5 = _AVControlCenterModuleStateForBundleID([a1 uniqueID]);

  return [v5 startPanningAtPoint:{a2, a3}];
}

uint64_t AVControlCenterPanWithTranslation(void *a1, double a2, double a3)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v5 = _AVControlCenterModuleStateForBundleID([a1 uniqueID]);

  return [v5 panWithTranslation:{a2, a3}];
}

double AVControlCenterManualFramingMaxAvailableVideoZoomFactor(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v1 = [a1 uniqueID];
  _AVControlCenterModulesGetConvertedManualFramingVideoZoomFactorConstant(v1, *MEMORY[0x1E698F870]);
  v3 = v2;
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t _AVControlCenterModulesGetConvertedManualFramingVideoZoomFactorConstant(uint64_t a1, uint64_t a2)
{
  v3 = _AVControlCenterModuleStateForBundleID(a1);
  v4 = [v3 zoomFactorConstantsByManualFramingDeviceType];
  [objc_msgSend(objc_msgSend(v4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v3, "manualFramingDeviceType"))), "objectForKeyedSubscript:", a2), "floatValue"}];
  return [v3 manualFramingDeviceType];
}

double AVControlCenterManualFramingMinAvailableVideoZoomFactor(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v1 = [a1 uniqueID];
  _AVControlCenterModulesGetConvertedManualFramingVideoZoomFactorConstant(v1, *MEMORY[0x1E698F878]);
  v3 = v2;
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t AVControlCenterManualFramingSetVideoZoomFactor(void *a1, double a2)
{
  if (!a1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"nil device";
    goto LABEL_14;
  }

  v4 = _AVControlCenterModuleStateForBundleID([a1 uniqueID]);
  v5 = AVControlCenterManualFramingMinAvailableVideoZoomFactor(a1);
  v6 = AVControlCenterManualFramingMaxAvailableVideoZoomFactor(a1);
  if (v5 > a2 || v6 < a2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid videoZoomFactor %.3f. Valid range: [%.3f, %.3f]", *&a2, *&v5, *&v6];
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
LABEL_14:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

  if ([v4 manualFramingDeviceType] == 2)
  {
    v8 = a2 + a2;
  }

  else
  {
    v8 = a2;
  }

  if (dword_1ED8068A0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [v4 setManualFramingOriginalZoomFactor:a2 convertedZoomFactor:{v8, v14, v15}];
}

double AVControlCenterManualFramingGetVideoZoomFactor(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  [_AVControlCenterModuleStateForBundleID(objc_msgSend(a1 "uniqueID"))];
  v2 = v1;
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t AVControlCenterPerformOneShotFraming(void *a1)
{
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  return [_AVControlCenterModuleStateForBundleID(objc_msgSend(a1 "uniqueID"))];
}

uint64_t AVControlCenterResetFraming(void *a1)
{
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  return [_AVControlCenterModuleStateForBundleID(objc_msgSend(a1 "uniqueID"))];
}

uint64_t AVControlCenterManualFramingIsAtDefaultForDevice(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(objc_msgSend(a1 "uniqueID"))];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterCenterStageFieldOfViewRestrictedToWideForDevice(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(objc_msgSend(a1 "uniqueID"))];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterCenterStageSetFieldOfViewRestrictedToWideForDevice(uint64_t a1, void *a2)
{
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  return [_AVControlCenterModuleStateForBundleID(objc_msgSend(a2 "uniqueID"))];
}

uint64_t AVControlCenterGetManualFramingDeviceType(void *a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(objc_msgSend(a1 "uniqueID"))];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterSetManualFramingDeviceType(uint64_t a1, void *a2)
{
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil device" userInfo:0]);
  }

  return [_AVControlCenterModuleStateForBundleID(objc_msgSend(a2 "uniqueID"))];
}

uint64_t AVControlCenterVideoEffectsModuleGetUnavailableReasons(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v2 = [_AVControlCenterModuleStateForBundleID(a2) unavailableReasonsForVideoEffect:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t AVControlCenterVideoEffectsModuleIsEffectIntensitySupportedForDevice(void *a1, void *a2)
{
  if ([a1 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] && (v24 = 0u, v25 = 0u, v22 = 0u, v23 = 0u, v4 = objc_msgSend(a2, "formats"), (v5 = objc_msgSend(v4, "countByEnumeratingWithState:objects:count:", &v22, v21, 16)) != 0))
  {
    v6 = v5;
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v22 + 1) + 8 * i) isBackgroundBlurApertureSupported])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v21 count:16];
      v9 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  if ([a1 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [a2 formats];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v17 + 1) + 8 * j) isStudioLightingIntensitySupported])
          {
            return 1;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  return v9;
}

uint64_t AVControlCenterVideoEffectsModuleGetEffectIntensityForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v3 = _AVControlCenterModuleStateForBundleID(a2);

  return [v3 effectIntensityForVideoEffect:a1];
}

uint64_t AVControlCenterVideoEffectsModuleSetEffectIntensityForBundleID(uint64_t a1, uint64_t a2, float a3)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v5 = _AVControlCenterModuleStateForBundleID(a2);
  *&v6 = a3;

  return [v5 setEffectIntensityForVideoEffect:a1 forVideoEffect:v6];
}

uint64_t AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v3 = _AVControlCenterModuleStateForBundleID(a2);

  return [v3 effectIntensityRangeForVideoEffect:a1];
}

uint64_t AVControlCenterVideoEffectsModuleGetEffectIntensityDefaultValueForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v3 = _AVControlCenterModuleStateForBundleID(a2);

  return [v3 effectIntensityDefaultForVideoEffect:a1];
}

uint64_t AVControlCenterBlackenFramesFromDeviceForBundleID(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v5 = _AVControlCenterModuleStateForBundleID(a3);
  v6 = [a2 uniqueID];

  return [v5 enableBlackenFrames:a1 forDeviceUID:v6];
}

uint64_t AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) supportedMicrophoneModes];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleGetMicrophoneModeForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) microphoneMode];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) activeMicrophoneMode];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleGetHiddenMicrophoneModesForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) hiddenMicrophoneModes];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v2 = [_AVControlCenterModuleStateForBundleID(a2) setMicrophoneMode:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

uint64_t AVControlCenterMicrophoneModesModuleIsVoiceProcessingBypassedForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) voiceProcessingBypassed];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleIsAutoSupportedForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) isAutoMicrophoneModeSupported];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleIsAutoEnabledForBundleID(uint64_t a1)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v1 = [_AVControlCenterModuleStateForBundleID(a1) isAutoMicrophoneModeEnabled];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v1;
}

uint64_t AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil bundleID" userInfo:0]);
  }

  v2 = [_AVControlCenterModuleStateForBundleID(a2) setAutoMicrophoneModeEnabled:a1];
  if (dword_1ED8068A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

void fad_figCaptureSourceNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fad_figCaptureSourceNotificationHandler_block_invoke;
  block[3] = &unk_1E786EFD0;
  block[4] = a2;
  block[5] = a3;
  block[6] = a5;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], block);
  v6 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v6);
}

BOOL fad_isRunningOnDeviceClass(const void *a1)
{
  v2 = MGCopyAnswer();
  v3 = CFEqual(v2, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

uint64_t _inputDeviceString(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 deviceName];
  v4 = [a1 deviceType] - 1;
  if (v4 > 2)
  {
    v5 = @"bluetooth";
  }

  else
  {
    v5 = off_1E7876648[v4];
  }

  v6 = [a1 deviceSubType] - 1;
  if (v6 > 5)
  {
    v7 = @"standard";
  }

  else
  {
    v7 = off_1E7876660[v6];
  }

  return [v2 stringWithFormat:@"%p n:%@ typ:%@ styp:%@ supHQ:%d enbHQ:%d", a1, v3, v5, v7, objc_msgSend(a1, "supportsHighQualityContentCapture"), objc_msgSend(a1, "isHighQualityContentCaptureEnabled")];
}

os_log_t __getCameraCaptureLegacyLog_block_invoke_5()
{
  result = os_log_create("com.apple.cameracapture", "legacyLog");
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_5 = result;
  return result;
}

uint64_t sub_1A928C140()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1A928CD4C();
  sub_1A928D400(KeyPath, v1, v11);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[0] = v2;
  sub_1A928CAD0(v11, 0xD000000000000011, 0x80000001A92ABA70, isUniquelyReferenced_nonNull_native);
  v4 = *&v13[0];
  v5 = swift_getKeyPath();
  sub_1A928D400(v5, v1, v12);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[0] = v4;
  sub_1A928CAD0(v12, 0x4664656C62616E65, 0xEF73676E696D6172, v6);
  v7 = *&v13[0];
  v8 = swift_getKeyPath();
  sub_1A928D400(v8, v1, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1A928CAD0(v13, 0xD000000000000012, 0x80000001A92ABAF0, v9);
  qword_1EB385838 = v7;
  return result;
}

void sub_1A928C2A0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  sub_1A928CDCC(0, &qword_1EB385068);
  v5 = sub_1A929A1F0();

  *a3 = v5;
}

void sub_1A928C310(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_1A928CDCC(0, &qword_1EB385068);
  v3 = sub_1A929A1E0();
  [v2 setEnabledFramings_];
}

id sub_1A928C38C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recommendedFraming];
  *a2 = result;
  return result;
}

uint64_t sub_1A928C3F8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v8 = sub_1A929A1B0();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1A928C480(v8, v10, v11, a5);
}

unint64_t sub_1A928C480(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v6 = v4;
  if (qword_1EB385830 != -1)
  {
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v8 = qword_1EB385838;
  if (*(qword_1EB385838 + 16))
  {
    result = sub_1A928C6B0(result, a2);
    if (v9)
    {
      v10 = (*(v8 + 56) + 48 * result);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      v19 = v10[2];
      v16 = a3;
      v12 = OBJC_IVAR___AVCaptureSmartFramingMonitorObservationRegistrar_registrar;

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB385050);
      a4(&v16, v6 + v12, v13);
    }
  }

  return result;
}

void __swiftcall AVCaptureSmartFramingMonitorObservationRegistrar.init()(AVCaptureSmartFramingMonitorObservationRegistrar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AVCaptureSmartFramingMonitorObservationRegistrar.init()()
{
  sub_1A928D3C4(&v0[OBJC_IVAR___AVCaptureSmartFramingMonitorObservationRegistrar_registrar]);
  v2.receiver = v0;
  v2.super_class = AVCaptureSmartFramingMonitorObservationRegistrar;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_1A928C6B0(uint64_t a1, uint64_t a2)
{
  sub_1A929A260();
  sub_1A929A1C0();
  v4 = sub_1A929A270();

  return sub_1A928CC88(a1, a2, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A928C7D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB385070);
  v36 = a2;
  result = sub_1A929A230();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v37 = *v25;
      v38 = *(v25 + 24);
      v39 = *(v25 + 8);
      v26 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_1A929A260();
      sub_1A929A1C0();
      result = sub_1A929A270();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v37;
      *(v17 + 8) = v39;
      *(v17 + 24) = v38;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A928CAD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A928C6B0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A928C7D8(v16, a4 & 1);
      v11 = sub_1A928C6B0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A929A250();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A928CE14();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_1A928CC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A929A240())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A928CD4C()
{
  result = qword_1EB385058;
  if (!qword_1EB385058)
  {
    sub_1A928CDCC(255, &qword_1EB385060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385058);
  }

  return result;
}

uint64_t sub_1A928CDCC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1A928CE14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB385070);
  v2 = *v0;
  v3 = sub_1A929A220();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 40);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        v28 = *(v22 + 24);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v28;
        *(v27 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A928D034@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB385078);
  MEMORY[0x1EEE9AC00]();
  v5 = v12 - v4;
  sub_1A928D270(v2, &v13);
  v6 = sub_1A929A1A0();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v5, 0, 1, v6);
    return (*(v9 + 32))(a1, v5, v6);
  }

  else
  {
    v8(v5, 1, 1, v6);
    sub_1A928D2CC(v5);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1A929A200();
    v12[0] = v13;
    v12[1] = v14;
    MEMORY[0x1AC581CA0](0xD000000000000013, 0x80000001A92CE180);
    sub_1A928D270(v2, &v13);
    __swift_project_boxed_opaque_existential_0(&v13, v15);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v13);
    v11 = sub_1A929A280();
    MEMORY[0x1AC581CA0](v11);

    MEMORY[0x1AC581CA0](0xD000000000000028, 0x80000001A92CE1A0);
    result = sub_1A929A210();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A928D270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A928D2CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB385078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1A928D3C4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_1A929A1A0();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1A929A190();
}

uint64_t sub_1A928D400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  *a3 = sub_1A928D4D0;
  a3[1] = v6;
  a3[2] = sub_1A928D504;
  a3[3] = v7;
  a3[4] = sub_1A928D538;
  a3[5] = v8;
  return swift_retain_n();
}

uint64_t sub_1A928D56C(uint64_t a1)
{
  v3 = sub_1A929A1A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1A928D034(v6);
  v7(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A928D660(uint64_t a1)
{
  v3 = sub_1A929A1A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  sub_1A928D034(v6);
  v7(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A928D754(uint64_t a1)
{
  v3 = sub_1A929A1A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  sub_1A928D034(v6);
  v7(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A928D854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A928D89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A928D8EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A928D948(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A928D990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t avcp_copyFirstAuxiliaryImageOfType()
{
  Container = CMPhotoDecompressionSessionCreate();
  if (Container)
  {
    return Container;
  }

  OUTLINED_FUNCTION_1();
  Container = CMPhotoDecompressionSessionCreateContainer();
  if (Container)
  {
    return Container;
  }

  else
  {
    return CMPhotoDecompressionContainerGetImageCount();
  }
}

__CVBuffer *avcp_copyCGImageForUncompressedBuffer(__CVBuffer *result)
{
  imageOut = 0;
  if (result)
  {
    v1 = *MEMORY[0x1E69834D0];
    v2 = MEMORY[0x1E695E118];
    VTCreateCGImageFromCVPixelBuffer(result, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v2 forKeys:&v1 count:1], &imageOut);
    return imageOut;
  }

  return result;
}

CFMutableDataRef avcp_copyTIFFFileDataRepresentationForImage(CGImage *a1, const __CFDictionary *a2, uint64_t a3)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!a1)
  {
    v12 = 0;
LABEL_8:
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    goto LABEL_10;
  }

  if (a3)
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  v9 = 1;
  v10 = OUTLINED_FUNCTION_2(MEMORY[0x1E695DF20], v6, *MEMORY[0x1E696D2C8], v8);
  v11 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x1E69874C8], 1uLL, v10);
  v12 = v11;
  if (v11)
  {
    CGImageDestinationAddImage(v11, a1, a2);
    v9 = !CGImageDestinationFinalize(v12);
  }

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v12)
  {
    CFRelease(v12);
  }

  return Mutable;
}

uint64_t _addAuxiliaryImage_cold_1()
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _addAuxiliaryImage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t _addAuxiliaryImage_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t _addAuxiliaryImage_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

void getUISSystemReferenceAngleChangedNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getUISSystemReferenceAngleChangedNotification(void)") description:{@"AVCaptureDeviceRotationCoordinator.m", 47, @"%s", dlerror()}];
  __break(1u);
}

void UIKitServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *UIKitServicesLibrary(void)") description:{@"AVCaptureDeviceRotationCoordinator.m", 45, @"%s", *a1}];
  __break(1u);
}

void __getFBSOrientationObserverClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFBSOrientationObserverClass(void)_block_invoke") description:{@"AVCaptureDeviceRotationCoordinator.m", 42, @"Unable to find class %s", "FBSOrientationObserver"}];
  __break(1u);
}

void __getFBSOrientationObserverClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *FrontBoardServicesLibrary(void)") description:{@"AVCaptureDeviceRotationCoordinator.m", 41, @"%s", *a1}];
  __break(1u);
}

void getUISDisplayConfigurationChangedNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getUISDisplayConfigurationChangedNotification(void)") description:{@"AVCaptureExternalDisplayConfigurator.m", 44, @"%s", dlerror()}];
  __break(1u);
}

void UIKitServicesLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *UIKitServicesLibrary(void)") description:{@"AVCaptureExternalDisplayConfigurator.m", 39, @"%s", *a1}];
  __break(1u);
}

void __getFBSMutableDisplayConfigurationRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getFBSMutableDisplayConfigurationRequestClass(void)_block_invoke") description:{@"AVCaptureExternalDisplayConfigurator.m", 42, @"Unable to find class %s", "FBSMutableDisplayConfigurationRequest"}];
  __break(1u);
}

uint64_t AVAuxiliaryMetadataAddValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t AVAuxiliaryMetadataAddValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

void __getADJasperPointCloudClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getADJasperPointCloudClass(void)_block_invoke") description:{@"AVPointCloudData.m", 28, @"Unable to find class %s", "ADJasperPointCloud"}];
  __break(1u);
}

void __getADJasperPointCloudClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleDepthLibrary(void)") description:{@"AVPointCloudData.m", 26, @"%s", *a1}];
  __break(1u);
}

void AVCaptureTemporarilySuppressShutterSoundForAirpodStemClick()
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_6);
  }

  if ((AVCapturePhotoOutputIsForcedShutterSoundRegion() & 1) == 0)
  {
    v0 = qword_1EB3851B8;

    dispatch_async(v0, &__block_literal_global_224);
  }
}

uint64_t AVCaptureTranslateAVCaptureAspectRatioToFig(uint64_t result, float a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2 % 180 == 0;
    if ([result isEqualToString:@"AVCaptureAspectRatio1x1"])
    {
      return 5;
    }

    if ([v2 isEqualToString:@"AVCaptureAspectRatio3x4"])
    {
      if (v3)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    if ([v2 isEqualToString:@"AVCaptureAspectRatio4x3"])
    {
      v4 = !v3;
      v5 = 1;
      goto LABEL_12;
    }

    if ([v2 isEqualToString:@"AVCaptureAspectRatio16x9"])
    {
      v4 = !v3;
      v5 = 3;
LABEL_12:
      if (v4)
      {
        return v5;
      }

      else
      {
        return v5 + 1;
      }
    }

    v6 = [v2 isEqualToString:@"AVCaptureAspectRatio9x16"];
    if (v3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    if (v6)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __getCMContinuityCaptureCapabilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getCMContinuityCaptureCapabilitiesClass(void)_block_invoke") description:{@"AVCaptureDevice.m", 84, @"Unable to find class %s", "CMContinuityCaptureCapabilities"}];
  __break(1u);
}

void __getCMContinuityCaptureCapabilitiesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *CMContinuityCaptureCoreLibrary(void)") description:{@"AVCaptureDevice.m", 83, @"%s", *a1}];
  __break(1u);
}

void *AVMetadataMakeDependentSpecificationsForValue()
{
  objc_opt_class();
  if (OUTLINED_FUNCTION_2_2())
  {
    DataTypesForIdentifiersOfFieldsOfDetectedFaces = AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDetectedFaces();
    goto LABEL_9;
  }

  objc_opt_class();
  if (OUTLINED_FUNCTION_2_2())
  {
    v1 = *MEMORY[0x1E6962950];
    v2 = *MEMORY[0x1E6960298];
    v3 = MEMORY[0x1E6962958];
LABEL_5:
    v4 = *v3;
LABEL_8:
    v25[0] = v1;
    v25[1] = v4;
    v5 = *MEMORY[0x1E6960248];
    v26[0] = v2;
    v26[1] = v5;
    DataTypesForIdentifiersOfFieldsOfDetectedFaces = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    goto LABEL_9;
  }

  objc_opt_class();
  if (OUTLINED_FUNCTION_2_2())
  {
    v1 = @"fiel/com.apple.quicktime.detected-cat-head.object-id";
    v2 = *MEMORY[0x1E6960298];
    v4 = @"fiel/com.apple.quicktime.detected-cat-head.bounds";
    goto LABEL_8;
  }

  objc_opt_class();
  if (OUTLINED_FUNCTION_2_2())
  {
    v1 = *MEMORY[0x1E6962910];
    v2 = *MEMORY[0x1E6960298];
    v3 = MEMORY[0x1E6962918];
    goto LABEL_5;
  }

  objc_opt_class();
  if (OUTLINED_FUNCTION_2_2())
  {
    v1 = @"fiel/com.apple.quicktime.detected-dog-head.object-id";
    v2 = *MEMORY[0x1E6960298];
    v4 = @"fiel/com.apple.quicktime.detected-dog-head.bounds";
    goto LABEL_8;
  }

  objc_opt_class();
  if (OUTLINED_FUNCTION_2_2())
  {
    DataTypesForIdentifiersOfFieldsOfDetectedFaces = AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfDogBodyObject();
  }

  else
  {
    objc_opt_class();
    if ((OUTLINED_FUNCTION_2_2() & 1) == 0)
    {
      return MEMORY[0x1E695E0F0];
    }

    DataTypesForIdentifiersOfFieldsOfDetectedFaces = AVMetadataItemGetDataTypesForIdentifiersOfFieldsOfSalientObject();
  }

LABEL_9:
  v6 = DataTypesForIdentifiersOfFieldsOfDetectedFaces;
  if (!DataTypesForIdentifiersOfFieldsOfDetectedFaces)
  {
    return MEMORY[0x1E695E0F0];
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = *MEMORY[0x1E6960348];
    v13 = *MEMORY[0x1E6960338];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v6 objectForKey:v15];
        v18[0] = v12;
        v18[1] = v13;
        v19[0] = v15;
        v19[1] = v16;
        [v7 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 2)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

uint64_t AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_7()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  return FigDebugAssert3();
}

uint64_t AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_8()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  return FigDebugAssert3();
}

uint64_t AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_9()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  return FigDebugAssert3();
}

uint64_t AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription_cold_10()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  return FigDebugAssert3();
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x1EEDE99E0](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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