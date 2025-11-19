void sub_1960F5FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F6A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F6B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960F6F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_7(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1012) = result;
  return result;
}

__n128 __avplayeritem_fpItemNotificationCallback_block_invoke_8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 40);
  *(v1 + 488) = *(a1 + 56);
  *(v1 + 472) = v2;
  v3 = *(*(a1 + 32) + 8);
  result = *(a1 + 64);
  v3[29].n128_u64[0] = *(a1 + 80);
  v3[28] = result;
  return result;
}

void *__avplayeritem_fpItemNotificationCallback_block_invoke_13(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 1032) = [*(a1 + 40) copy];
  result = *(a1 + 48);
  if (result)
  {
    result = [result doubleValue];
    *(*(*(a1 + 32) + 8) + 1040) = v3;
  }

  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_16(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 1048) = result;
  return result;
}

__n128 __avplayeritem_fpItemNotificationCallback_block_invoke_17(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 992) = result;
  return result;
}

void __avplayeritem_fpItemNotificationCallback_block_invoke_18(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4)
  {
    v5 = [v3 _tracksWithFPTrackIDArray:v4 fromFigPlaybackItem:*(v3[1] + 128)];
  }

  else
  {
    v5 = [v3 _tracks];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_19;
  block[3] = &unk_1E7463330;
  v6 = *(a1 + 48);
  block[4] = *(a1 + 40);
  block[5] = v5;
  v10 = *(a1 + 72);
  v9 = *(a1 + 56);
  dispatch_async(v6, block);
  v7 = *(a1 + 48);
  if (v7)
  {
    dispatch_release(v7);
  }

  objc_autoreleasePoolPop(v2);
}

void __avplayeritem_fpItemNotificationCallback_block_invoke_19(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) willChangeValueForKey:@"tracks"];
  v6[0] = MEMORY[0x1E69E9820];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 32) + 8) + 16);
  v6[1] = 3221225472;
  v6[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_20;
  v6[3] = &unk_1E7463308;
  v7 = v3;
  v9 = *(a1 + 64);
  v8 = *(a1 + 48);
  av_readwrite_dispatch_queue_write(v4, v6);
  [*(a1 + 32) didChangeValueForKey:@"tracks"];
  [*(a1 + 56) _canOverlapPlaybackConditionsChangedFor:*(a1 + 32) dueTo:@"AVPlayerItemTracksDidChangeNotification"];
  v5 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemTracksDidChangeNotification" object:*(a1 + 32) userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  objc_autoreleasePoolPop(v2);
}

void __avplayeritem_fpItemNotificationCallback_block_invoke_20(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 152) = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 1600) = *(a1 + 56);
  v2 = *(*(*(a1 + 32) + 8) + 1424);
  *(*(*(a1 + 32) + 8) + 1424) = [*(a1 + 48) copy];
}

__n128 __avplayeritem_fpItemNotificationCallback_block_invoke_21(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  v1[32].n128_u64[0] = *(a1 + 56);
  v1[31] = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_24(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1012) = result;
  return result;
}

void __avplayeritem_fpItemNotificationCallback_block_invoke_25(uint64_t a1)
{
  v2 = [*(a1 + 32) _isExternalProtectionRequiredForPlaybackInternal];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_26;
  v4[3] = &unk_1E7460DF0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  dispatch_async(v3, v4);
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_26(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"_externalProtectionRequiredForPlayback"];
  v5[0] = MEMORY[0x1E69E9820];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 32) + 8) + 16);
  v5[1] = 3221225472;
  v5[2] = __avplayeritem_fpItemNotificationCallback_block_invoke_27;
  v5[3] = &unk_1E7460DF0;
  v6 = v2;
  av_readwrite_dispatch_queue_write(v3, v5);
  return [*(a1 + 32) didChangeValueForKey:@"_externalProtectionRequiredForPlayback"];
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_27(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1018) = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_28(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1015) = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_29(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1013) = result;
  return result;
}

uint64_t __avplayeritem_fpItemNotificationCallback_block_invoke_31(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return FigCFDictionarySetValue();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return [v19 countByEnumeratingWithState:&a9 objects:&a19 count:16];
}

void sub_1960F8220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960F84A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Block_object_dispose((v16 - 104), 8);
  AVTelemetryIntervalEnd((v16 - 72));
  _Unwind_Resume(a1);
}

void sub_1960F8AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd(va1);
  _Unwind_Resume(a1);
}

void sub_1960F980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1960FA6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960FA888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960FA94C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960FAA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960FAB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1960FABC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

const char *_canOverlapReasonStr(int a1)
{
  if (a1 > 1535)
  {
    if (a1 > 2815)
    {
      if (a1 > 3327)
      {
        if (a1 == 3584)
        {
          return "NO since the player queue does not have enough items left";
        }

        if (a1 == 3328)
        {
          return "NO but channel count for one of the Buffered AirPlay items is unknown";
        }
      }

      else
      {
        if (a1 == 2816)
        {
          return "NO since HLS outro is multi channel and intro is stereo or mono";
        }

        if (a1 == 3072)
        {
          return "NO since HLS outro is stereo or mono and intro is multi channel";
        }
      }
    }

    else if (a1 > 2047)
    {
      if (a1 == 2048)
      {
        return "NO since the first item is file based and doesn't have an audio track";
      }

      if (a1 == 2560)
      {
        return "NO since the second item is file based and doesn't have an audio track";
      }
    }

    else
    {
      if (a1 == 1536)
      {
        return "NO since the first item is file based and its number of tracks is not 1";
      }

      if (a1 == 1792)
      {
        return "NO since the second item is file based and its number of tracks is not 1";
      }
    }
  }

  else if (a1 > 511)
  {
    if (a1 > 1023)
    {
      if (a1 == 1024)
      {
        return "NO since Buffered AirPlay is active and SenderSideMixing is not enabled";
      }

      if (a1 == 1280)
      {
        return "NO since one of items is HLS and advance time for overlap is not enabled";
      }
    }

    else
    {
      if (a1 == 512)
      {
        return "NO because the multichannel audio strategy permits exclusive passthrough";
      }

      if (a1 == 768)
      {
        return "NO since AirPlay Video is active";
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      return "YES buffered airplay has matching multi channel tracks";
    }

    if (a1 == 256)
    {
      return "NO since action-at-end is NOT advance";
    }
  }

  else
  {
    if (a1 == 2)
    {
      return "YES but channel count for one of the Buffered AirPlay items is unknown";
    }

    if (a1 == 3)
    {
      return "YES buffered airplay has matching stereo or mono tracks";
    }
  }

  return "YES";
}

uint64_t OUTLINED_FUNCTION_1_5(void *a1)
{

  return AVLocalizedError(v1, -11821, a1);
}

uint64_t OUTLINED_FUNCTION_2_4(void *a1, const char *a2)
{

  return [a1 dictionaryWithObjects:v2 forKeys:v3 count:1];
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, void *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return [a2 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_196100210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196100AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196100B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196100BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196100C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196100D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961014FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196101C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196101E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196101FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196102074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961020EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_19610232C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_19610371C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961037E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196103A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196103ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196103E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196104EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196105658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961056E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_196105B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return CMBaseObjectGetVTable();
}

void AVAssetReaderHandleServerDiedNotification(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _handleServerDiedNotification];

  objc_autoreleasePoolPop(v3);
}

void sub_1961072F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961074A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_196107690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19610B1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void figAssetReaderSampleBufferDidBecomeAvailable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _figAssetReaderSampleBufferDidBecomeAvailableForExtractionID:{objc_msgSend(objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E69713A8]), "integerValue")}];

  objc_autoreleasePoolPop(v7);
}

void figAssetReaderDecodeError(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _figAssetReaderDecodeError];

  objc_autoreleasePoolPop(v3);
}

void figAssetReaderFailed(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _figAssetReaderFailed];

  objc_autoreleasePoolPop(v3);
}

void figAssetReaderServerConnectionDied(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _figAssetReaderServerConnectionDied];

  objc_autoreleasePoolPop(v3);
}

uint64_t AVAssetReaderGetFigAssetReaderAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(void *a1)
{
  if ([a1 isEqualToString:@"Spectral"])
  {
    v2 = MEMORY[0x1E6971400];
    return *v2;
  }

  if ([a1 isEqualToString:@"TimeDomain"])
  {
    v2 = MEMORY[0x1E6971408];
    return *v2;
  }

  if ([a1 isEqualToString:@"Varispeed"])
  {
    v2 = MEMORY[0x1E6971410];
    return *v2;
  }

  if ([a1 isEqualToString:@"LowQualityZeroLatency"])
  {
    return *MEMORY[0x1E69713F8];
  }

  else
  {
    return 0;
  }
}

uint64_t FigAssetReaderEnableReencodedAudioExtractionFromTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v17)
  {
    return 4294954514;
  }

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t FigAssetReaderEnableDecodedAudioExtractionFromTrackWithAudioOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v17)
  {
    return 4294954514;
  }

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL isSupportedStereoMultiviewCodec(int a1)
{
  result = 0;
  if (a1 > 1836415072)
  {
    if (a1 <= 1902667125)
    {
      if (a1 == 1836415073)
      {
        return VTIsStereoMVHEVCDecodeSupported() != 0;
      }

      v3 = 1869117027;
    }

    else
    {
      if (a1 == 1902667126 || a1 == 1902998904)
      {
        return VTIsStereoMVHEVCDecodeSupported() != 0;
      }

      v3 = 1902671459;
    }

    goto LABEL_14;
  }

  if (a1 <= 1718908527)
  {
    if (a1 == 1667790435)
    {
      return VTIsStereoMVHEVCDecodeSupported() != 0;
    }

    v3 = 1718908520;
LABEL_14:
    if (a1 != v3)
    {
      return result;
    }

    return VTIsStereoMVHEVCDecodeSupported() != 0;
  }

  if (a1 != 1718908528 && a1 != 1751479857)
  {
    v3 = 1752589105;
    goto LABEL_14;
  }

  return VTIsStereoMVHEVCDecodeSupported() != 0;
}

uint64_t AVLoadValueAsynchronously(void *a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AVLoadValuesAsynchronously_block_invoke;
  v7[3] = &unk_1E74621B8;
  v7[4] = v5;
  v7[5] = a1;
  v7[6] = a3;
  return [a1 loadValuesAsynchronouslyForKeys:v5 completionHandler:v7];
}

uint64_t AVLoadValuesAsynchronously(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __AVLoadValuesAsynchronously_block_invoke;
  v4[3] = &unk_1E74621B8;
  v4[4] = a2;
  v4[5] = a1;
  v4[6] = a3;
  return [a1 loadValuesAsynchronouslyForKeys:a2 completionHandler:v4];
}

uint64_t __AVLoadValuesAsynchronously_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x1E696A278];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(a1 + 40) statusOfValueForKey:*(*(&v12 + 1) + 8 * i) error:&v16];
        if ((v8 - 2) >= 2)
        {
          if (v8 == 4)
          {
            v9 = -11878;
            v10 = 0;
          }

          else
          {
            v17 = v6;
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected terminal status %d", v8];
            v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
            v9 = -11800;
          }

          v16 = AVLocalizedError(@"AVFoundationErrorDomain", v9, v10);
          if (v16)
          {
            return (*(*(a1 + 48) + 16))();
          }
        }

        else if (v16)
        {
          return (*(*(a1 + 48) + 16))();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_196114710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void sub_19611616C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961162C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVAssetWriterFigAssetWriterHandleServerDiedNotification(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _handleServerDiedNotification];

  objc_autoreleasePoolPop(v3);
}

void AVAssetWriterFigAssetWriterHandleCompletedNotification(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _handleCompletedWritingNotification];

  objc_autoreleasePoolPop(v3);
}

void AVAssetWriterFigAssetWriterHandleFailedNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  if (!a5 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a5)) || (v9 = [a5 objectForKey:*MEMORY[0x1E6971530]]) == 0 || (v10 = v9, (objc_opt_respondsToSelector() & 1) == 0) || (v11 = +[AVAssetWriter _errorForOSStatus:](AVAssetWriter, "_errorForOSStatus:", objc_msgSend(v10, "intValue"))) == 0)
  {
    v11 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  }

  [a2 _handleFailedNotificationWithError:v11];

  objc_autoreleasePoolPop(v7);
}

uint64_t aw_FragmentedHeaderDataCallback(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 delegate];
    blockBufferOut = 0;
    if (!CMBlockBufferIsRangeContiguous(a1, 0, 0) && (CFDataWithBlockBufferNoCopy = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a1, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut), CFDataWithBlockBufferNoCopy) || (CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy(), CFDataWithBlockBufferNoCopy))
    {
      v9 = CFDataWithBlockBufferNoCopy;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v7 assetWriter:v6 didOutputSegmentData:0 segmentType:1 segmentReport:0];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v7 assetWriter:v6 didOutputSegmentData:0 segmentType:1];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v7 assetWriter:v6 didProduceFragmentedHeaderData:0];
      }

      v9 = 0;
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t aw_FragmentedMediaDataCallback(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 delegate];
  blockBufferOut = 0;
  if (CMBlockBufferIsRangeContiguous(a1, 0, 0) || (CFDataWithBlockBufferNoCopy = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a1, *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut), !CFDataWithBlockBufferNoCopy))
  {
    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (!CFDataWithBlockBufferNoCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [[AVAssetSegmentReport alloc] initWithFigSegmentReportDictionary:a2];
        [v9 assetWriter:v8 didOutputSegmentData:0 segmentType:2 segmentReport:v11];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [v9 assetWriter:v8 didOutputSegmentData:0 segmentType:2];
          goto LABEL_13;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_13;
        }

        v11 = [[AVFragmentedMediaDataReport alloc] initWithFigFragmentedMediaDataReportDictionary:a2];
        [v9 assetWriter:v8 didProduceFragmentedMediaData:0 fragmentedMediaDataReport:v11];
      }

LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }
  }

  v12 = CFDataWithBlockBufferNoCopy;
LABEL_14:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

LABEL_16:
  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t AVExecuteOperationsSynchronously(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (([v6 isFinished] & 1) == 0)
        {
          AVExecuteOperationsSynchronously([v6 dependencies]);
          [v6 start];
          [v6 waitUntilFinished];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AVAssetWriterCanAddPassthroughInputWithMediaTypeToAssetWriterWithFileType(uint64_t a1, void *a2)
{
  v18 = MEMORY[0x1E695DF20];
  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", @"clcp", @"sbtl", @"tmcd", @"meta", @"hapt", @"auxv", @"scen", 0}];
  v16 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", @"clcp", @"sbtl", @"tmcd", @"meta", @"hapt", @"auxv", @"scen", 0}];
  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", @"clcp", @"sbtl", @"meta", 0}];
  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", @"clcp", @"sbtl", 0}];
  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", @"clcp", @"sbtl", @"hapt", 0}];
  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", @"clcp", @"sbtl", @"tmcd", @"meta", @"hapt", @"auxv", @"scen", 0}];
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", @"vide", @"text", 0}];
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", 0}];
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", 0}];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", 0}];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", 0}];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"soun", 0}];
  v4 = [MEMORY[0x1E695DFD8] set];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:@"clcp"];
  v6 = [objc_msgSend(v18 dictionaryWithObjectsAndKeys:{v17, @"com.apple.quicktime-movie", v16, @"com.apple.quicktime-audio", v15, @"public.mpeg-4", v14, @"com.apple.m4v-video", v13, @"com.apple.m4a-audio", v12, @"com.apple.immersive-video", v11, @"public.3gpp", v10, @"com.apple.coreaudio-format", v9, @"com.microsoft.waveform-audio", v8, @"public.aiff-audio", v2, @"public.aifc-audio", v3, @"org.3gpp.adaptive-multi-rate-audio", v4, @"com.apple.itunes-timed-text", v5, @"com.scenarist.closed-caption", objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", @"text", @"org.w3.webvtt", 0), "objectForKey:", objc_msgSend(a2, "UTI")}];

  return [v6 containsObject:a1];
}

void AVTimebaseObserver_timebaseNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(a2 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AVTimebaseObserver_timebaseNotificationCallback_block_invoke;
  v7[3] = &unk_1E7460FA8;
  v7[4] = a2;
  v7[5] = a3;
  dispatch_async(v6, v7);
  objc_autoreleasePoolPop(v5);
}

__n128 AVTimebaseObserver_figTimebaseGetTime@<Q0>(__n128 *a1@<X8>)
{
  v9 = 0;
  memset(&v8, 0, sizeof(v8));
  CMTimebaseGetTimeClampedAboveAnchorTime();
  v2 = MEMORY[0x1E6960CC0];
  if (0 >> 96 != 1)
  {
    v8 = **&MEMORY[0x1E6960CC0];
  }

  if (v8.epoch)
  {
    v8 = **&MEMORY[0x1E6960CC0];
  }

  time1 = v8;
  v6 = **&MEMORY[0x1E6960CC0];
  v3 = CMTimeCompare(&time1, &v6);
  v4 = &v8;
  if (v3 < 0)
  {
    v4 = v2;
  }

  result = *v4;
  *a1 = *v4;
  a1[1].n128_u64[0] = v4[1].n128_u64[0];
  return result;
}

void sub_196124700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196125B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__12(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 131);
}

{
  _Block_object_dispose(*(a1 + 40), 135);
}

void sub_1961276A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196127838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196129140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961292BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196129474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19612977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void figAssetWriterTrackDidDropBelowLowWaterLevel(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _figAssetWriterDidDropBelowLowWaterLevelForTrackID:{objc_msgSend(objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E6971540]), "integerValue")}];

  objc_autoreleasePoolPop(v7);
}

void figAssetWriterFinalHDRMetadataGenerationStateAvailable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a5 objectForKey:*MEMORY[0x1E6971540]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Expect WriterTrackID parameter in FinalHDRMetadataGenerationStateAvailable notification payload is an NSNumber";
    goto LABEL_9;
  }

  v9 = [v8 integerValue];
  v10 = [a5 objectForKey:*MEMORY[0x1E6971528]];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Expect HDRMetadataState parameter in FinalHDRMetadataGenerationStateAvailable notification payload is an NSDictionary";
LABEL_9:
      objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
    }
  }

  [a2 _figAssetWriterFinalHDRMetadataGenerationStateAvailable:v9 finalHDRMetadataGenerationState:v10];

  objc_autoreleasePoolPop(v7);
}

void sub_19612DF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196130C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVAssetWriterInputFigAssetWriterEndPassOperationPassFinished(int a1, void *a2, int a3, int a4, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6971520]);
  v8 = *MEMORY[0x1E695E4D0];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6971538]);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 length];
    v13 = [v11 bytes];
    if (v12 >= 0x30)
    {
      v14 = v13;
      v15 = v12 / 0x30;
      do
      {
        v16 = v14[1];
        v19 = *v14;
        v20 = v16;
        v21 = v14[2];
        v18[0] = v19;
        v18[1] = v16;
        v18[2] = v21;
        [v9 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeRange:", v18)}];
        v14 += 3;
        --v15;
      }

      while (v15);
    }
  }

  return [a2 _notifyWhetherMorePassesAreNeeded:Value == v8 timeRanges:v9 forTrackWithID:{objc_msgSend(CFDictionaryGetValue(theDict, *MEMORY[0x1E6971540]), "integerValue")}];
}

void *NSArrayFromRGBAComponents(float a1, float a2, float a3, float a4)
{
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  *&v9 = a4;
  [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v9)}];
  *&v10 = a1;
  [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v10)}];
  *&v11 = a2;
  [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v11)}];
  *&v12 = a3;
  [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v12)}];
  return v8;
}

unint64_t NSArrayGetRGBAComponents(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
    result = [a1 count];
    if (result < 4)
    {
      return result;
    }

    result = [objc_msgSend(a1 objectAtIndex:{0), "floatValue"}];
    *a5 = v11;
  }

  else
  {
    result = [a1 count];
    if (result < 4)
    {
      return result;
    }
  }

  if (a2)
  {
    result = [objc_msgSend(a1 objectAtIndex:{1), "floatValue"}];
    *a2 = v12;
  }

  if (a3)
  {
    result = [objc_msgSend(a1 objectAtIndex:{2), "floatValue"}];
    *a3 = v13;
  }

  if (a4)
  {
    result = [objc_msgSend(a1 objectAtIndex:{3), "floatValue"}];
    *a4 = v14;
  }

  return result;
}

id _rampArrayWithTimeRangesAsValues(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [a1 count];
  if (v3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = 1;
    do
    {
      memset(&v8, 0, sizeof(v8));
      CMTimeRangeMakeFromDictionary(&v8, [a1 objectAtIndex:v5 - 1]);
      v7 = v8;
      [v2 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeRange:", &v7)}];
      [v2 addObject:{objc_msgSend(a1, "objectAtIndex:", v5)}];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

id _rampArrayWithTimeRangesAsDictionaries(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [a1 count];
  if (v3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = 1;
    v6 = 0uLL;
    do
    {
      v11 = v6;
      v12 = v6;
      v10 = v6;
      v7 = [a1 objectAtIndex:v5 - 1];
      if (v7)
      {
        [v7 CMTimeRangeValue];
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
      }

      v9[0] = v10;
      v9[1] = v11;
      v9[2] = v12;
      [v2 addObject:AVDictionaryWithTimeRange(v9)];
      [v2 addObject:{objc_msgSend(a1, "objectAtIndex:", v5)}];
      v5 += 2;
      --v4;
      v6 = 0uLL;
    }

    while (v4);
  }

  return v2;
}

uint64_t trackLayerSort(void *a1, void *a2)
{
  v3 = [a1 layer];
  v4 = [a2 layer];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 > v4;
  }
}

void __getPerFrameHDRDisplayMetadataDefault_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"videoCompositionHDRDisplayMetadata", @"com.apple.avfoundation", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 != CFStringGetTypeID())
    {
LABEL_10:
      CFRelease(v1);
      return;
    }

    if (FigCFEqual())
    {
      v3 = @"PerFrameHDRDisplayMetadataPolicy_Generate";
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_8;
      }

      v3 = @"PerFrameHDRDisplayMetadataPolicy_Propagate";
    }

    getPerFrameHDRDisplayMetadataDefault_sDefaultPerFrameHDRDisplayMetadataPolicy = v3;
LABEL_8:
    if (dword_1EAEFCE30)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_10;
  }
}

double avvc_CGAffineTransformDecompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CFDictionaryRef OUTLINED_FUNCTION_1_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  time = 0;
  time_8 = 0;
  time_16 = 0;

  return CMTimeCopyAsDictionary(&time, v18);
}

CFDictionaryRef OUTLINED_FUNCTION_3_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CMTime *time)
{

  return CMTimeCopyAsDictionary(&time, v16);
}

void AVExportSessionDetermineCompatibilityOfExportPresetCompletionHandler(void (**a1)(void, void), int a2)
{
  (a1)[2](a1, a2 != 0);
}

void AVExportSessionEstimateMaximumDurationCompletionHandler(void *a1, __int128 *a2, __CFError *a3)
{
  ErrorFromCFError = avAssetExportSession_GetErrorFromCFError(a3);
  v6 = a1[2];
  v7 = *a2;
  v8 = *(a2 + 2);
  v6(a1, &v7, ErrorFromCFError);
}

void AVExportSessionEstimateOutputFileLengthCompletionHandler(void (**a1)(void, void, void), uint64_t a2, __CFError *a3)
{
  ErrorFromCFError = avAssetExportSession_GetErrorFromCFError(a3);
  (a1)[2](a1, a2, ErrorFromCFError);
}

uint64_t AVAssetExportSessionPropertyChangeCallback(void *a1, int a2)
{
  if (FigCFEqual())
  {
    v4 = @"error";
  }

  else
  {
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    v4 = @"status";
  }

  if (a2)
  {

    return [a1 didChangeValueForKey:v4];
  }

  else
  {

    return [a1 willChangeValueForKey:v4];
  }
}

void AVExportSessionDetermineCompatibilityOfFileTypesCompletionHandler(void (**a1)(void))
{
  a1[2]();
}

__CFError *avAssetExportSession_GetErrorFromCFError(__CFError *result)
{
  if (result)
  {
    v1 = result;
    CFErrorGetDomain(result);
    if (FigCFEqual())
    {
      v2 = [(__CFError *)v1 userInfo];
      v3 = [(__CFError *)v1 code];

      return AVLocalizedErrorWithUnderlyingOSStatus(v3, v2);
    }

    else
    {
      v4 = [(__CFError *)v1 copy];

      return v4;
    }
  }

  return result;
}

uint64_t AVAssetExportSessionGetFigRemakerAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(void *a1)
{
  if ([a1 isEqualToString:@"Spectral"])
  {
    v2 = MEMORY[0x1E69735C8];
    return *v2;
  }

  if ([a1 isEqualToString:@"TimeDomain"])
  {
    v2 = MEMORY[0x1E69735D0];
    return *v2;
  }

  if ([a1 isEqualToString:@"Varispeed"])
  {
    v2 = MEMORY[0x1E69735D8];
    return *v2;
  }

  if ([a1 isEqualToString:@"LowQualityZeroLatency"])
  {
    return *MEMORY[0x1E69735C0];
  }

  else
  {
    return 0;
  }
}

uint64_t avAssetExportSession_IsVideoCompositionValidForAssetWithTimeRange(void *a1, _OWORD *a2)
{
  v4 = [a1 asset];
  v5 = [a1 videoComposition];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = a2[2];
  return [v5 isValidForAsset:v4 timeRange:v8 validationDelegate:0];
}

uint64_t avAssetExportSession_VideoCompositionOutputColorPropertiesWithCustomCompositor(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    return [*(*(result + 8) + 56) videoCompositionOutputColorPropertiesWithCustomCompositor:*(*(result + 8) + 48) formatDescriptions:a2 colorPrimaries:a3 transferFunction:a4 yCbCrMatrix:a5 perFrameHDRDisplayMetadataPolicy:a6];
  }

  return result;
}

uint64_t avAssetExportSession_CustomVideoCompositorSessionGetAndClearClientError(uint64_t result)
{
  if (result)
  {
    return [*(*(result + 8) + 48) getAndClearClientError];
  }

  return result;
}

void sub_196140F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_196141680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AVDelegatingPlaybackCoordinatorSetRateAndAnchorTimeCallback(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a6)
    {
      a6 = [a1 participantForIdentifier:{objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", a6)}];
      [a1 _prepareToInitiatePlayback];
    }

    v19 = [AVDelegatingPlaybackCoordinatorPlayCommand alloc];
    v25 = *a4;
    v26 = *(a4 + 2);
    v23 = *a5;
    v24 = *(a5 + 2);
    v20 = [(AVDelegatingPlaybackCoordinatorPlayCommand *)v19 initWithCoordinator:a1 originator:a6 expectedCurrentItemIdentifier:a2 commandOrderIndex:a3 rate:&v25 itemTime:&v23 hostClockTime:COERCE_DOUBLE(__PAIR64__(DWORD1(v23), LODWORD(a7)))];
    v21 = [a1 playbackControlDelegate];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __AVDelegatingPlaybackCoordinatorSetRateAndAnchorTimeCallback_block_invoke;
    v22[3] = &__block_descriptor_48_e5_v8__0l;
    v22[4] = a11;
    v22[5] = a10;
    [v21 playbackCoordinator:a1 didIssuePlayCommand:v20 completionHandler:v22];
  }

  objc_autoreleasePoolPop(v18);
}

void AVDelegatingPlaybackCoordinatorJumpToTimeCallback(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, float a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a8)
    {
      a8 = [a1 participantForIdentifier:{objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", a8)}];
      if (a7)
      {
        [a1 _prepareToInitiatePlayback];
      }
    }

    v21 = [AVDelegatingPlaybackCoordinatorSeekCommand alloc];
    v26 = *a4;
    v27 = *(a4 + 2);
    LOBYTE(v24) = a7 != 0;
    v22 = [(AVDelegatingPlaybackCoordinatorSeekCommand *)v21 initWithCoordinator:a1 originator:a8 expectedCurrentItemIdentifier:a2 commandOrderIndex:a3 itemTime:&v26 shouldPause:COERCE_DOUBLE(__PAIR64__(DWORD1(v26) shouldBufferInAnticipationOfPlayback:LODWORD(a5))) anticipatedPlaybackRate:v24 completionDueDate:a9];
    v23 = [a1 playbackControlDelegate];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __AVDelegatingPlaybackCoordinatorJumpToTimeCallback_block_invoke;
    v25[3] = &__block_descriptor_48_e5_v8__0l;
    v25[4] = a12;
    v25[5] = a11;
    [v23 playbackCoordinator:a1 didIssueSeekCommand:v22 completionHandler:v25];
  }

  objc_autoreleasePoolPop(v20);
}

void AVDelegatingPlaybackCoordinatorPauseCallback(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a5)
    {
      a5 = [a1 participantForIdentifier:{objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", a5)}];
      if (a4)
      {
        [a1 _prepareToInitiatePlayback];
      }
    }

    v18 = [AVDelegatingPlaybackCoordinatorPauseCommand alloc];
    *&v19 = a6;
    v20 = [(AVDelegatingPlaybackCoordinatorPauseCommand *)v18 initWithCoordinator:a1 originator:a5 expectedCurrentItemIdentifier:a2 commandOrderIndex:a3 shouldBufferInAnticipationOfPlayback:a4 != 0 anticipatedPlaybackRate:v19];
    v21 = [a1 playbackControlDelegate];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __AVDelegatingPlaybackCoordinatorPauseCallback_block_invoke;
    v22[3] = &__block_descriptor_48_e5_v8__0l;
    v22[4] = a10;
    v22[5] = a9;
    [v21 playbackCoordinator:a1 didIssuePauseCommand:v20 completionHandler:v22];
  }

  objc_autoreleasePoolPop(v17);
}

void AVDelegatingPlaybackCoordinatorPrepareToSetRateCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a4)
    {
      a4 = [a1 participantForIdentifier:{objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", a4)}];
      [a1 _prepareToInitiatePlayback];
    }

    v18 = [AVDelegatingPlaybackCoordinatorBufferingCommand alloc];
    *&v19 = a6;
    v20 = [(AVDelegatingPlaybackCoordinatorBufferingCommand *)v18 initWithCoordinator:a1 originator:a4 expectedCurrentItemIdentifier:a2 commandOrderIndex:a3 anticipatedPlaybackRate:a5 completionDueDate:v19];
    v21 = [a1 playbackControlDelegate];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __AVDelegatingPlaybackCoordinatorPrepareToSetRateCallback_block_invoke;
    v22[3] = &__block_descriptor_48_e5_v8__0l;
    v22[4] = a9;
    v22[5] = a8;
    [v21 playbackCoordinator:a1 didIssueBufferingCommand:v20 completionHandler:v22];
  }

  objc_autoreleasePoolPop(v17);
}

void AVDelegatingPlaybackCoordinatorBroadcastTimelineStateCallback(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 coordinationMediumDelegate];
  [a1 _updateTransportControlStateDictionaryWithTransportControlState:a2];
  if (a1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 playbackCoordinator:a1 broadcastTransportControlStateDictionary:a2 forItemWithIdentifier:{objc_msgSend(a2, "objectForKeyedSubscript:", *MEMORY[0x1E6963370])}];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setCoordinationMediumDelegate:0];
  }

  objc_autoreleasePoolPop(v4);
}

void AVDelegatingPlaybackCoordinatorBroadcastParticipantStateCallback(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 coordinationMediumDelegate];
  [a1 _updateParticipantStateDictionaryWithParticipantState:a2];
  [a1 _removeUnusedTransportControlStates];
  if (a1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 playbackCoordinator:a1 broadcastLocalParticipantStateDictionary:a2];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setCoordinationMediumDelegate:0];
  }

  objc_autoreleasePoolPop(v4);
}

void AVDelegatingPlaybackCoordinatorAsynchronouslyReloadTimelineStateCallback(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v12[26] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 coordinationMediumDelegate];
  if (a1 && (v10 = v9, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __AVDelegatingPlaybackCoordinatorAsynchronouslyReloadTimelineStateCallback_block_invoke;
    v12[3] = &unk_1E74625B0;
    v12[4] = a1;
    v12[5] = a4;
    v12[6] = a3;
    [v10 playbackCoordinator:a1 reloadTransportControlStateForItemWithIdentifier:a2 completionHandler:v12];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setCoordinationMediumDelegate:0];
    a4(a3);
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1961426B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196142D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196142E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961435D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196143B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196143F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196144128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196144D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196145124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196145508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196145AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196145D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AVDelegatingPlaybackCoordinatorAsynchronouslyReloadTimelineStateCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _figTimelineCoordinatorConfigQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __AVDelegatingPlaybackCoordinatorAsynchronouslyReloadTimelineStateCallback_block_invoke_2;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_196146CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1961473DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196147F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614807C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196148198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVExportSettingsForOutputSettingsPreset(uint64_t a1)
{
  result = exportSettings_exportPresetForOutputSettingsPreset(a1);
  if (result)
  {

    return FigExportSettingsForExportPreset();
  }

  return result;
}

uint64_t exportSettings_exportPresetForOutputSettingsPreset(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"AVAssetExportPreset640x480", @"AVOutputSettingsPreset640x480", @"AVAssetExportPreset960x540", @"AVOutputSettingsPreset960x540", @"AVAssetExportPreset1280x720", @"AVOutputSettingsPreset1280x720", @"AVAssetExportPreset1920x1080", @"AVOutputSettingsPreset1920x1080", @"AVAssetExportPreset3840x2160", @"AVOutputSettingsPreset3840x2160", @"AVAssetExportPresetHEVC1920x1080", @"AVOutputSettingsPresetHEVC1920x1080", @"AVAssetExportPresetHEVC1920x1080WithAlpha", @"AVOutputSettingsPresetHEVC1920x1080WithAlpha", @"AVAssetExportPresetHEVC3840x2160", @"AVOutputSettingsPresetHEVC3840x2160", @"AVAssetExportPresetHEVC3840x2160WithAlpha", @"AVOutputSettingsPresetHEVC3840x2160WithAlpha", @"AVAssetExportPresetHEVC4320x2160", @"AVOutputSettingsPresetHEVC4320x2160", @"AVAssetExportPresetHEVC7680x4320", @"AVOutputSettingsPresetHEVC7680x4320", @"AVAssetExportPresetMVHEVC960x960", @"AVOutputSettingsPresetMVHEVC960x960", @"AVAssetExportPresetMVHEVC1440x1440", @"AVOutputSettingsPresetMVHEVC1440x1440", @"AVAssetExportPresetMVHEVC4320x4320", @"AVOutputSettingsPresetMVHEVC4320x4320", @"AVAssetExportPresetMVHEVC7680x7680", @"AVOutputSettingsPresetMVHEVC7680x7680", 0}];

  return [v1 objectForKey:a1];
}

id AVExportSettingsEffectiveColorPropertyForPresetAndInputOutputFormat()
{
  v0 = FigExportSettings_CopyEffectiveColorPropertyForPresetAndInputOutputFormat();

  return v0;
}

void avqsbar_figRendererNowBelowLowWaterLevelNotificationHandler(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _triggerMediaRequestCallback];

  objc_autoreleasePoolPop(v3);
}

void avqsbar_figRendererWasFlushedAutomaticallyNotificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6973630]);
  memset(&v10, 0, sizeof(v10));
  CMTimeMakeFromDictionary(&v10, Value);
  v9 = v10;
  [a2 _wasFlushedAutomaticallyAtTime:&v9];
  objc_autoreleasePoolPop(v7);
}

void avqsbar_figRendererRebuildCouldBenefitFidelityNotificationHandler(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v3);
}

void avqsbar_figRendererServerDied(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _transitionToStatus:2 error:{AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0)}];

  objc_autoreleasePoolPop(v3);
}

void AVSampleBufferAudioRendererFlushFromMediaTimeCallback(int a1, void (**a2)(void, void))
{
  (a2)[2](a2, a1 == 0);
}

void sub_19614B01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614B3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t setup(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF20];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v2 dictionaryWithObject:v3 forKey:*MEMORY[0x1E6971768]];
  v4 = FigCPEProtectorRemoteCreateForScheme();
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v5 = CMNotificationCenterAddListener();
  if (v5)
  {
LABEL_3:
    teardown(a1);
  }

  return v5;
}

void teardown(uint64_t a1)
{
  if (*(a1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void NotificationHandler(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = objc_autoreleasePoolPush();
  CFRetain(a3);
  v6 = *(a2 + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __NotificationHandler_block_invoke;
  v7[3] = &unk_1E7460FA8;
  v7[4] = a2;
  v7[5] = a3;
  dispatch_async(v6, v7);
  objc_autoreleasePoolPop(v5);
}

void __NotificationHandler_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), *MEMORY[0x1E6971760]))
  {
    teardown(*(a1 + 32));
    setup(*(a1 + 32));
  }

  else if (CFEqual(*(a1 + 40), *MEMORY[0x1E6961148]))
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_19614BE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614BFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19614D2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614D634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19614DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t AVNSLocalesMatchAccordingToRFC4647FilteringRules(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = [a1 localeIdentifier];
  v5 = [a2 localeIdentifier];

  return AVNSLanguageIdentifiersMatchAccordingToRFC4647FilteringRules(v4, v5);
}

uint64_t AVNSLanguageIdentifiersMatchAccordingToRFC4647FilteringRules(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (a1)
  {
    v3 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:a1];
    if (!v2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = 0;
  if (a2)
  {
LABEL_4:
    v2 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v2];
  }

LABEL_5:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *v11;
LABEL_7:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    result = [v2 objectForKey:v8];
    if (!result)
    {
      return result;
    }

    result = [result isEqual:{objc_msgSend(v3, "objectForKey:", v8)}];
    if (!result)
    {
      return result;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      result = 1;
      if (v5)
      {
        goto LABEL_7;
      }

      return result;
    }
  }
}

uint64_t AVExtendedLanguageTagFromLocale(void *a1)
{
  v2 = [a1 localeIdentifier];
  if ([objc_msgSend(a1 objectForKey:{*MEMORY[0x1E695D9B0]), "isEqualToString:", @"root"}])
  {
    v2 = [v2 stringByReplacingOccurrencesOfString:@"root" withString:@"und"];
  }

  return [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
}

uint64_t AVLanguageCodeFromExtendedLanguageTag(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"-"];

  return [v1 firstObject];
}

uint64_t AVIsSpecialSpokenExtendedLanguageTag(void *a1)
{
  if (![a1 compare:@"cmn" options:1])
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 componentsSeparatedByString:{@"-", "firstObject"}];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (AVIsSpecialSpokenExtendedLanguageTag_sInitLangCodesOnce != -1)
  {
    AVIsSpecialSpokenExtendedLanguageTag_cold_1();
  }

  v4 = AVIsSpecialSpokenExtendedLanguageTag_sSpecialSpokenLanguageCodes;
  v5 = [v3 lowercaseString];

  return [v4 containsObject:v5];
}

void *AVAllAvailableNSBundleCompatibleLanguageTagsForObjects(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if ((objc_opt_respondsToSelector() & 1) != 0 && (v8 = [v7 unicodeLanguageIdentifier]) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (v8 = objc_msgSend(v7, "unicodeLanguageCode")) != 0)
        {
          v9 = v8;
          if (([v2 containsObject:v8] & 1) == 0)
          {
            [v2 addObject:v9];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v2;
}

void *AVLookupableSpatialVideoConfigurationMakeSerializableArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x1E6973710];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [objc_msgSend(objc_msgSend(v8 "spatialVideoConfiguration")];
        v10 = [v8 lookupID];
        if (v10)
        {
          [v9 setObject:v10 forKey:v6];
        }

        [v2 addObject:v9];
      }

      v4 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

void AVExternalPlaybackMonitorAirPlayVideoActiveChanged(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1EAEFCE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  objc_autoreleasePoolPop(v3);
}

void AVExternalPlaybackMonitorAirPlayVideoPlayingChanged(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (dword_1EAEFCE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  objc_autoreleasePoolPop(v3);
}

void AVSampleBufferVideoOutput_figVCAvailableImmediate(uint64_t a1, __int128 *a2, char a3, void *a4)
{
  v6 = [a4 referencedObject];
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 8);
    v9 = *(v8 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AVSampleBufferVideoOutput_figVCAvailableImmediate_block_invoke;
    block[3] = &unk_1E7462FD8;
    block[4] = v8;
    v13 = *a2;
    v14 = *(a2 + 2);
    dispatch_sync(v9, block);
    if (a3)
    {
      v10 = *(v8 + 32);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __AVSampleBufferVideoOutput_figVCAvailableImmediate_block_invoke_2;
      v11[3] = &unk_1E7460C00;
      v11[4] = v7;
      dispatch_sync(v10, v11);
    }
  }
}

void sub_196150B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961510A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t __createDispatchQueueOnce_block_invoke()
{
  result = av_readwrite_dispatch_queue_create("com.apple.avuxmdisplaymanager");
  sAVUXMDisplayManagerQueue = result;
  return result;
}

AVSynchronousBlockScheduler *AVMakeBlockSchedulerThatExecutesBlocksSynchronously()
{
  v0 = objc_alloc_init(AVSynchronousBlockScheduler);

  return v0;
}

uint64_t AVTranslateFigMediaCharacteristicToAVMediaCharacteristic(uint64_t a1)
{
  if (AVTranslateFigMediaCharacteristicToAVMediaCharacteristic_sTranslationDictOnce != -1)
  {
    AVTranslateFigMediaCharacteristicToAVMediaCharacteristic_cold_1();
  }

  result = [AVTranslateFigMediaCharacteristicToAVMediaCharacteristic_sTranslationDict objectForKey:a1];
  if (!result)
  {
    return a1;
  }

  return result;
}

id __AVTranslateFigMediaCharacteristicToAVMediaCharacteristic_block_invoke()
{
  result = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"AVMediaCharacteristicVisual", *MEMORY[0x1E6973730], @"AVMediaCharacteristicAudible", *MEMORY[0x1E6973718], @"AVMediaCharacteristicLegible", *MEMORY[0x1E6973720], 0}];
  AVTranslateFigMediaCharacteristicToAVMediaCharacteristic_sTranslationDict = result;
  return result;
}

uint64_t AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(uint64_t a1)
{
  if (AVTranslateAVMediaCharacteristicToFigMediaCharacteristic_sTranslationDictOnce != -1)
  {
    AVTranslateAVMediaCharacteristicToFigMediaCharacteristic_cold_1();
  }

  result = [AVTranslateAVMediaCharacteristicToFigMediaCharacteristic_sTranslationDict objectForKey:a1];
  if (!result)
  {
    return a1;
  }

  return result;
}

id __AVTranslateAVMediaCharacteristicToFigMediaCharacteristic_block_invoke()
{
  result = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E6973730], @"AVMediaCharacteristicVisual", *MEMORY[0x1E6973718], @"AVMediaCharacteristicAudible", *MEMORY[0x1E6973720], @"AVMediaCharacteristicLegible", 0}];
  AVTranslateAVMediaCharacteristicToFigMediaCharacteristic_sTranslationDict = result;
  return result;
}

void *AVSynthesizeAVMediaCharacteristicsFromFigValues(void *a1, int a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 addObjectsFromArray:AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(a1)];
  v5 = 0;
  if (a2 <= 1952807027)
  {
    if (a2 != 1835365473)
    {
      v6 = 1935832172;
      goto LABEL_6;
    }

LABEL_7:
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:@"AVMediaCharacteristicFrameBased"];
    goto LABEL_8;
  }

  if (a2 == 1986618469)
  {
    goto LABEL_7;
  }

  v6 = 1952807028;
LABEL_6:
  if (a2 == v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v4 addObjectsFromArray:v5];
  return v4;
}

void *AVTranslateFigMediaCharacteristicsToAVMediaCharacteristics(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:AVTranslateFigMediaCharacteristicToAVMediaCharacteristic(*(*(&v8 + 1) + 8 * i))];
      }

      v4 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

void *AVTranslateAVMediaCharacteristicsToFigMediaCharacteristics(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(*(*(&v8 + 1) + 8 * i))];
      }

      v4 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t AVUnsupportedOutputURLPathExtensions()
{
  if (AVUnsupportedOutputURLPathExtensions_createExtensionListOnce != -1)
  {
    AVUnsupportedOutputURLPathExtensions_cold_1();
  }

  return AVUnsupportedOutputURLPathExtensions_sUnsupportedExtensionList;
}

uint64_t __AVUnsupportedOutputURLPathExtensions_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"mp3", @"m1a", @"m2a", @"aac", @"adts", @"gsm", @"mpa", 0}];
  AVUnsupportedOutputURLPathExtensions_sUnsupportedExtensionList = result;
  return result;
}

id AVMediaSubtypeDescriptionStringForFormatDescription(const opaqueCMFormatDescription *a1)
{
  CMFormatDescriptionGetMediaSubType(a1);
  CMFormatDescriptionGetMediaType(a1);
  MTCopyStringsForMediaTypeAndSubType();
  return 0;
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

void *AVRampsIncludesRampThatOverlapsTimeRange(void *result, __int128 *a2)
{
  if (result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __AVRampsIncludesRampThatOverlapsTimeRange_block_invoke;
    v3[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
    v2 = a2[1];
    v4 = *a2;
    v5 = v2;
    v6 = a2[2];
    return ([result indexOfObjectPassingTest:v3] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t __AVRampsIncludesRampThatOverlapsTimeRange_block_invoke(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    memset(&v22, 0, sizeof(v22));
    if (a2)
    {
      [a2 CMTimeRangeValue];
    }

    memset(&v21, 0, sizeof(v21));
    range = v22;
    CMTimeRangeGetEnd(&v21, &range);
    v6 = *(a1 + 48);
    v23 = *(a1 + 32);
    v24 = v6;
    flags = *(a1 + 68);
    timescale = *(a1 + 64);
    epoch = *(a1 + 72);
    memset(&v19, 0, sizeof(v19));
    v9 = *(a1 + 48);
    *&range.start.value = *(a1 + 32);
    *&range.start.epoch = v9;
    range.duration.timescale = *(a1 + 64);
    range.duration.flags = flags;
    range.duration.epoch = epoch;
    CMTimeRangeGetEnd(&v19, &range);
    range.start = v21;
    *&time2.start.value = v23;
    time2.start.epoch = v24;
    if (CMTimeCompare(&range.start, &time2.start) >= 1)
    {
      memset(&range, 0, 24);
      time2.start = v21;
      *&rhs.value = v23;
      rhs.epoch = v24;
      CMTimeSubtract(&range.start, &time2.start, &rhs);
      *&time2.start.value = *&range.start.value;
      time2.start.epoch = range.start.epoch;
      *&rhs.value = AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange_slopTime;
      rhs.epoch = 0;
      if (CMTimeCompare(&time2.start, &rhs) <= 0)
      {
        v23 = *&v21.value;
        *&v24 = v21.epoch;
        rhs.value = *(&v24 + 1);
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
        start = range.start;
        CMTimeSubtract(&time2.start, &rhs, &start);
        *(&v24 + 1) = time2.start.value;
        flags = time2.start.flags;
        timescale = time2.start.timescale;
        epoch = time2.start.epoch;
      }
    }

    range.start = v19;
    *&time2.start.value = *&v22.start.value;
    time2.start.epoch = v22.start.epoch;
    if (CMTimeCompare(&range.start, &time2.start) >= 1)
    {
      memset(&time2, 0, 24);
      range.start = v19;
      rhs = v22.start;
      CMTimeSubtract(&time2.start, &range.start, &rhs);
      *&range.start.value = *&time2.start.value;
      range.start.epoch = time2.start.epoch;
      *&rhs.value = AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange_slopTime;
      rhs.epoch = 0;
      if (CMTimeCompare(&range.start, &rhs) <= 0)
      {
        rhs.value = *(&v24 + 1);
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
        start = time2.start;
        CMTimeSubtract(&range.start, &rhs, &start);
        flags = range.start.flags;
        timescale = range.start.timescale;
        *(&v24 + 1) = range.start.value;
        epoch = range.start.epoch;
        *&range.start.value = v23;
        *&range.start.epoch = v24;
        range.duration.timescale = timescale;
        range.duration.flags = flags;
        range.duration.epoch = epoch;
        CMTimeRangeGetEnd(&rhs, &range);
        v19 = rhs;
      }
    }

    range = v22;
    *&time2.start.value = v23;
    *&time2.start.epoch = v24;
    time2.duration.timescale = timescale;
    time2.duration.flags = flags;
    time2.duration.epoch = epoch;
    CMTimeRangeGetIntersection(&v16, &range, &time2);
    if ((v16.start.flags & 1) == 0 || (range = v22, *&time2.start.value = v23, *&time2.start.epoch = v24, time2.duration.timescale = timescale, time2.duration.flags = flags, time2.duration.epoch = epoch, CMTimeRangeGetIntersection(&v14, &range, &time2), (v14.duration.flags & 1) == 0) || (range = v22, *&time2.start.value = v23, *&time2.start.epoch = v24, time2.duration.timescale = timescale, time2.duration.flags = flags, time2.duration.epoch = epoch, CMTimeRangeGetIntersection(&v13, &range, &time2), v13.duration.epoch) || (range = v22, *&time2.start.value = v23, *&time2.start.epoch = v24, time2.duration.timescale = timescale, time2.duration.flags = flags, time2.duration.epoch = epoch, CMTimeRangeGetIntersection(&v12, &range, &time2), v12.duration.value < 0) || (range = v22, *&time2.start.value = v23, *&time2.start.epoch = v24, time2.duration.timescale = timescale, time2.duration.flags = flags, time2.duration.epoch = epoch, CMTimeRangeGetIntersection(&v11, &range, &time2), range.start = v11.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &time2.start)))
    {
      if ((~flags & 5) != 0 || (*&range.start.value = *&v22.start.value, range.start.epoch = v22.start.epoch, *&time2.start.value = v23, time2.start.epoch = v24, CMTimeCompare(&range.start, &time2.start) <= 0))
      {
        *&range.start.value = *&v22.start.value;
        range.start.epoch = v22.start.epoch;
        *&time2.start.value = v23;
        time2.start.epoch = v24;
        result = CMTimeCompare(&range.start, &time2.start);
        if (!result)
        {
          return result;
        }

        if ((~v22.duration.flags & 5) != 0)
        {
          return 1;
        }

        *&range.start.value = v23;
        range.start.epoch = v24;
        *&time2.start.value = *&v22.start.value;
        time2.start.epoch = v22.start.epoch;
        if (CMTimeCompare(&range.start, &time2.start) <= 0)
        {
          return 1;
        }
      }
    }

    else
    {
      range.start = v19;
      *&time2.start.value = *&v22.start.value;
      time2.start.epoch = v22.start.epoch;
      if (CMTimeCompare(&range.start, &time2.start) <= 0)
      {
        result = 0;
        *a4 = 1;
        return result;
      }
    }
  }

  return 0;
}

void *AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange(void *result, __int128 *a2)
{
  if (result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange_block_invoke;
    v3[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
    v2 = a2[1];
    v4 = *a2;
    v5 = v2;
    v6 = a2[2];
    return ([result indexOfObjectPassingTest:v3] != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t __AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(&v22, 0, sizeof(v22));
  if (a2)
  {
    [a2 timeRange];
  }

  memset(&v21, 0, sizeof(v21));
  range = v22;
  CMTimeRangeGetEnd(&v21, &range);
  v6 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v6;
  flags = *(a1 + 68);
  timescale = *(a1 + 64);
  epoch = *(a1 + 72);
  memset(&v19, 0, sizeof(v19));
  v9 = *(a1 + 48);
  *&range.start.value = *(a1 + 32);
  *&range.start.epoch = v9;
  range.duration.timescale = *(a1 + 64);
  range.duration.flags = flags;
  range.duration.epoch = epoch;
  CMTimeRangeGetEnd(&v19, &range);
  range.start = v21;
  *&time2.start.value = v23;
  time2.start.epoch = v24;
  if (CMTimeCompare(&range.start, &time2.start) >= 1)
  {
    memset(&range, 0, 24);
    time2.start = v21;
    *&rhs.value = v23;
    rhs.epoch = v24;
    CMTimeSubtract(&range.start, &time2.start, &rhs);
    *&time2.start.value = *&range.start.value;
    time2.start.epoch = range.start.epoch;
    *&rhs.value = AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange_slopTime;
    rhs.epoch = 0;
    if (CMTimeCompare(&time2.start, &rhs) <= 0)
    {
      v23 = *&v21.value;
      *&v24 = v21.epoch;
      rhs.value = *(&v24 + 1);
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      start = range.start;
      CMTimeSubtract(&time2.start, &rhs, &start);
      *(&v24 + 1) = time2.start.value;
      flags = time2.start.flags;
      timescale = time2.start.timescale;
      epoch = time2.start.epoch;
    }
  }

  range.start = v19;
  *&time2.start.value = *&v22.start.value;
  time2.start.epoch = v22.start.epoch;
  if (CMTimeCompare(&range.start, &time2.start) >= 1)
  {
    memset(&time2, 0, 24);
    range.start = v19;
    rhs = v22.start;
    CMTimeSubtract(&time2.start, &range.start, &rhs);
    *&range.start.value = *&time2.start.value;
    range.start.epoch = time2.start.epoch;
    *&rhs.value = AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange_slopTime;
    rhs.epoch = 0;
    if (CMTimeCompare(&range.start, &rhs) <= 0)
    {
      rhs.value = *(&v24 + 1);
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      start = time2.start;
      CMTimeSubtract(&range.start, &rhs, &start);
      flags = range.start.flags;
      timescale = range.start.timescale;
      *(&v24 + 1) = range.start.value;
      epoch = range.start.epoch;
      *&range.start.value = v23;
      *&range.start.epoch = v24;
      range.duration.timescale = timescale;
      range.duration.flags = flags;
      range.duration.epoch = epoch;
      CMTimeRangeGetEnd(&rhs, &range);
      v19 = rhs;
    }
  }

  range = v22;
  *&time2.start.value = v23;
  *&time2.start.epoch = v24;
  time2.duration.timescale = timescale;
  time2.duration.flags = flags;
  time2.duration.epoch = epoch;
  CMTimeRangeGetIntersection(&v16, &range, &time2);
  if (v16.start.flags)
  {
    range = v22;
    *&time2.start.value = v23;
    *&time2.start.epoch = v24;
    time2.duration.timescale = timescale;
    time2.duration.flags = flags;
    time2.duration.epoch = epoch;
    CMTimeRangeGetIntersection(&v14, &range, &time2);
    if (v14.duration.flags)
    {
      range = v22;
      *&time2.start.value = v23;
      *&time2.start.epoch = v24;
      time2.duration.timescale = timescale;
      time2.duration.flags = flags;
      time2.duration.epoch = epoch;
      CMTimeRangeGetIntersection(&v13, &range, &time2);
      if (!v13.duration.epoch)
      {
        range = v22;
        *&time2.start.value = v23;
        *&time2.start.epoch = v24;
        time2.duration.timescale = timescale;
        time2.duration.flags = flags;
        time2.duration.epoch = epoch;
        CMTimeRangeGetIntersection(&v12, &range, &time2);
        if ((v12.duration.value & 0x8000000000000000) == 0)
        {
          range = v22;
          *&time2.start.value = v23;
          *&time2.start.epoch = v24;
          time2.duration.timescale = timescale;
          time2.duration.flags = flags;
          time2.duration.epoch = epoch;
          CMTimeRangeGetIntersection(&v11, &range, &time2);
          range.start = v11.duration;
          *&time2.start.value = *MEMORY[0x1E6960CC0];
          time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&range.start, &time2.start))
          {
            range.start = v19;
            *&time2.start.value = *&v22.start.value;
            time2.start.epoch = v22.start.epoch;
            if (CMTimeCompare(&range.start, &time2.start) <= 0)
            {
              result = 0;
              *a4 = 1;
              return result;
            }

            return 0;
          }
        }
      }
    }
  }

  if ((~flags & 5) == 0)
  {
    *&range.start.value = *&v22.start.value;
    range.start.epoch = v22.start.epoch;
    *&time2.start.value = v23;
    time2.start.epoch = v24;
    if (CMTimeCompare(&range.start, &time2.start) > 0)
    {
      return 0;
    }
  }

  *&range.start.value = *&v22.start.value;
  range.start.epoch = v22.start.epoch;
  *&time2.start.value = v23;
  time2.start.epoch = v24;
  result = CMTimeCompare(&range.start, &time2.start);
  if (result)
  {
    if ((~v22.duration.flags & 5) == 0)
    {
      *&range.start.value = v23;
      range.start.epoch = v24;
      *&time2.start.value = *&v22.start.value;
      time2.start.epoch = v22.start.epoch;
      if (CMTimeCompare(&range.start, &time2.start) > 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void AVResetMediaServices()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_create("com.apple.avfoundation.settings", MEMORY[0x1E69E96A8]);
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1E695DFA8];
    if (audiomxd_enabled())
    {
      v3 = @"audiomxd";
    }

    else
    {
      v3 = @"mediaserverd";
    }

    if (_os_feature_enabled_impl())
    {
      v4 = @"cameracaptured";
    }

    else
    {
      v4 = @"mediaserverd";
    }

    v5 = @"mediaplaybackd";
    if (FigRemote_ShouldConnectToMediaplaybackd())
    {
      v6 = @"mediaplaybackd";
    }

    else
    {
      v6 = @"mediaserverd";
    }

    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode() || VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      v5 = @"videocodecd";
    }

    else if (!FigRemote_ShouldConnectToMediaplaybackd())
    {
      v5 = @"mediaserverd";
    }

    v7 = @"mediaparserd";
    if (!FigRemote_ShouldConnectToMediaparserdForFileParsing() && !FigRemote_ShouldConnectToMediaparserdFile_OptIn())
    {
      v7 = @"mediaserverd";
    }

    v8 = [v2 setWithObjects:{@"mediaserverd", v3, v4, v6, v5, v7, 0}];
    if ([v8 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __AVResetMediaServices_block_invoke;
            block[3] = &unk_1E7460C00;
            block[4] = v13;
            dispatch_async(v1, block);
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    else
    {
      AVResetMediaServices_cold_1();
    }

    dispatch_release(v1);
  }

  else
  {
    AVResetMediaServices_cold_2();
  }
}

uint64_t initSFTerminateProcessNamed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SettingsFoundationLibrary_sOnce != -1)
  {
    initSFTerminateProcessNamed_cold_1();
  }

  v6 = dlsym(SettingsFoundationLibrary_sLib, "SFTerminateProcessNamed");
  softLinkSFTerminateProcessNamed = v6;

  return (v6)(a1, a2, a3);
}

void *__SettingsFoundationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SettingsFoundation.framework/SettingsFoundation", 2);
  SettingsFoundationLibrary_sLib = result;
  return result;
}

void sub_1961541AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196154304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_196154458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961545B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_196154728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961548C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ensureUserInfoDictionaryContainsObjectForKey(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (![a1 objectForKey:@"AVErrorMediaTypeKey"])
    {
      v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
      [v3 setObject:a2 forKey:@"AVErrorMediaTypeKey"];
    }

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DF20];

    return [v5 dictionaryWithObject:a2 forKey:@"AVErrorMediaTypeKey"];
  }
}

uint64_t AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(signed int a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696AA08];
  if (![a2 objectForKey:*MEMORY[0x1E696AA08]])
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    if (!a4 || ![objc_msgSend(a3 "domain")])
    {
      goto LABEL_8;
    }

    do
    {
      if ([a3 code] != -11800)
      {
        break;
      }

      a3 = [objc_msgSend(a3 "userInfo")];
    }

    while (([objc_msgSend(a3 "domain")] & 1) != 0);
    if (!a3)
    {
LABEL_9:
      v9 = 0;
    }

    else
    {
LABEL_8:
      v12 = v8;
      v13[0] = a3;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    v10 = AVOSStatusToNSError(a1, v9);
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    [v6 setObject:v10 forKey:v8];
  }

  return AVLocalizedErrorWithUnderlyingOSStatus(a1, v6);
}

uint64_t AVErrorWithNSErrorAndOSStatus(uint64_t a1, signed int a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
    if (a3)
    {
      v5 = [a3 mutableCopy];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v7 = v5;
    [v5 setObject:v4 forKey:*MEMORY[0x1E696AA08]];
    v8 = AVLocalizedErrorWithUnderlyingOSStatus(a2, v7);
    if (![objc_msgSend(v8 "domain")] || objc_msgSend(v8, "code") != -11800)
    {
      return v8;
    }

    return v4;
  }

  else
  {

    return AVLocalizedErrorWithUnderlyingOSStatus(a2, a3);
  }
}

uint64_t AVErrorForClientProgrammingError(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1 forKey:@"AVErrorExceptionKey"];

  return AVLocalizedError(@"AVFoundationErrorDomain", -11999, v1);
}

void sub_1961556F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961559F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_196155E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t metadataSupplierResourceLifeCycleCallback(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 resourceLifeCycleHandler];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1961568DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMTagCollectionCreateWithVideoOutputPreset(const __CFAllocator *a1, int a2, CMTagCollectionRef *newCollectionOut)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = MEMORY[0x1E6960688];
    goto LABEL_5;
  }

  if (!a2)
  {
    v3 = MEMORY[0x1E6960698];
LABEL_5:
    v6 = *v3;
    tags = *MEMORY[0x1E6960640];
    v8 = v6;
    v4 = *MEMORY[0x1E6960680];
    v9 = *MEMORY[0x1E6960648];
    v10 = v4;
    return CMTagCollectionCreate(a1, &tags, 4, newCollectionOut);
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void figPlaybackItemTrackSampleBufferDidBecomeAvailable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6972790]), "integerValue"}];
  [a2 _figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID:v8 extractionID:{objc_msgSend(objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E69726F0]), "integerValue")}];

  objc_autoreleasePoolPop(v7);
}

void figPlaybackItemTrackResetSampleBufferExtraction(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6972790]), "integerValue"}];
  [a2 _figPlaybackItemTrackOutputSequenceWasFlushedForTrackID:v8 extractionID:{objc_msgSend(objc_msgSend(a5, "objectForKey:", *MEMORY[0x1E69726F0]), "integerValue")}];

  objc_autoreleasePoolPop(v7);
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef FigCFRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void sub_1961586F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void figCustomURLHandlerHandleRequestForNSURLSession(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t), uint64_t a6)
{
  v11 = objc_autoreleasePoolPush();
  v13 = 0;
  v12 = [a1 _handleRequest:a3 requestID:a4 canHandleRequestOut:&v13];
  a5(a6, v13, v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t figCustomURLHandlerHandleRequestForNSURLProtocol(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v7 = [a1 _handleRequest:? requestID:?];

  return a5(a6, 1, v7);
}

const void *AVNSURLProtocolWillCopyAndSendRequest(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v5 = [objc_msgSend(a4 "bridge")];
  result = 0;
  if (a2)
  {
    if ((v5 & 1) == 0)
    {
      CFRetain(a2);
      return a2;
    }
  }

  return result;
}

uint64_t AVNSURLProtocolDidReceiveResponse(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 bridge];

  return [v5 _didReceiveResponse:a3 response:a2];
}

uint64_t AVNSURLProtocolDidReceiveData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [a4 bridge];

  return [v6 _didReceiveData:a4 data:a2];
}

void *AVNSURLProtocolDidFinishLoading(uint64_t a1, void *a2)
{
  result = [a2 bridge];
  if (result)
  {
    [result reportSuccessfulURLLoad];
    v4 = [a2 bridge];

    return [v4 _didFinish:a2 error:0];
  }

  return result;
}

uint64_t AVNSURLProtocolDidFail(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 bridge];

  return [v5 _didFinish:a3 error:a2];
}

uint64_t figCustomURLHandlerHandleAuthenticationChallenge(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t), uint64_t a6)
{
  v10 = 0;
  v8 = [a1 _handleAuthChallenge:a3 requestID:a4 canHandleRequestOut:&v10];
  return a5(a6, v10, v8);
}

void sub_19615C894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19615D794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AVMutableMovieTrack;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void mutableMovieTrackNotificationHandler(uint64_t a1, void *a2, const void *a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a2;
  if (v9)
  {
    if (a3)
    {
      v10 = CFEqual(a3, *MEMORY[0x1E6971480]);
      if (a5)
      {
        if (v10)
        {
          v11 = [a5 objectForKey:*MEMORY[0x1E6971160]];
          v12 = v11;
          if (v11 && (([v11 isEqualToString:*MEMORY[0x1E69714E0]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69714E8]) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69714B0])))
          {
            [v9 _signalMetadataUpdated];
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t OUTLINED_FUNCTION_7_0@<X0>(void *a1@<X0>, _OWORD *x8_0@<X8>)
{
  v5 = x8_0[1];
  *v3 = *x8_0;
  v3[1] = v5;
  v3[2] = x8_0[2];

  return [a1 _figMutableMovie];
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return [v0 trackID];
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return [v0 trackID];
}

uint64_t AVMediaSubtypesForAC3()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1633889587];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1885430579];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2053202739];
  return [v0 arrayWithObjects:{v1, v2, v3, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", 1902207795), 0}];
}

uint64_t AVMediaSubtypesForEnhancedAC3()
{
  v0 = MEMORY[0x1E695DEC8];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1700998451];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1885692723];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2053464883];
  return [v0 arrayWithObjects:{v1, v2, v3, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", 1902469939), 0}];
}

uint64_t AVMediaTypesForCaptionEditing()
{
  v1[2] = *MEMORY[0x1E69E9840];
  v1[0] = @"text";
  v1[1] = @"clcp";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:2];
}

void *AVSampleBufferGenerator_remapSampleBufferTiming(void *result, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  if (result)
  {
    memset(&v4[1], 0, sizeof(CMTime));
    [result overrideTime];
    if (0 >> 96 == 1)
    {
      v4[0] = v4[1];
      return CMSampleBufferSetOutputPresentationTimeStamp(a3, v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19616198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void AVSampleBufferGenerator_dataBecameReady(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__23;
  v12 = __Block_byref_object_dispose__23;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AVSampleBufferGenerator_dataBecameReady_block_invoke;
  v7[3] = &unk_1E7462AC0;
  v7[4] = &v8;
  v7[5] = a4;
  dispatch_sync(sAVSampleBufferGenerator_DispatchQueue, v7);
  v6 = v9[5];
  if (v6)
  {
    (*(v6 + 16))(v6, 1, 0);
  }

  _Block_object_dispose(&v8, 8);
  objc_autoreleasePoolPop(v5);
}

void sub_196161B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVSampleBufferGenerator_dataFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__23;
  v17 = __Block_byref_object_dispose__23;
  v18 = 0;
  valuePtr = 0;
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69605F8]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AVSampleBufferGenerator_dataFailed_block_invoke;
  block[3] = &unk_1E7462AC0;
  block[4] = &v13;
  block[5] = a4;
  dispatch_sync(sAVSampleBufferGenerator_DispatchQueue, block);
  v9 = v14[5];
  if (v9)
  {
    v10 = AVLocalizedErrorWithUnderlyingOSStatus(valuePtr, 0);
    (*(v9 + 16))(v9, 0, v10);
  }

  _Block_object_dispose(&v13, 8);
  objc_autoreleasePoolPop(v7);
}

void sub_196161CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVSampleBufferGeneratorBatch_BatchCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__23;
  v18 = __Block_byref_object_dispose__23;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __AVSampleBufferGeneratorBatch_BatchCompleted_block_invoke;
  v9[3] = &unk_1E7463C28;
  v9[4] = a2;
  v9[5] = &v14;
  v9[6] = &v10;
  v9[7] = a4;
  dispatch_sync(sAVSampleBufferGeneratorBatch_DispatchQueue, v9);
  if (v15[5])
  {
    v7 = *(v11 + 6);
    if (v7 == 3)
    {
      v8 = -11881;
    }

    else
    {
      if (v7 != 4)
      {
LABEL_7:
        (*(v15[5] + 16))();

        goto LABEL_8;
      }

      v8 = -11878;
    }

    AVLocalizedError(@"AVFoundationErrorDomain", v8, 0);
    goto LABEL_7;
  }

LABEL_8:
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v6);
}

void sub_196162474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_196167598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void AVPerformDelegateCallbackSynchronouslyForDelegateStorageIfCurrentDelegateQueueIsQueueElseDispatchToCurrentDelegateQueue(void *a1, NSObject *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  [a1 getRetainedDelegate:&v9 retainedDelegateQueue:&v8];
  if (v8)
  {
    v6 = v8 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    (*(a3 + 16))(a3, v9);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AVPerformDelegateCallbackSynchronouslyForDelegateStorageIfCurrentDelegateQueueIsQueueElseDispatchToCurrentDelegateQueue_block_invoke;
    block[3] = &unk_1E74621B8;
    block[4] = a1;
    block[5] = v8;
    block[6] = a3;
    dispatch_async(v8, block);
  }

  if (v8)
  {
    dispatch_release(v8);
  }
}

void __AVPerformDelegateCallbackSynchronouslyForDelegateStorageIfCurrentDelegateQueueIsQueueElseDispatchToCurrentDelegateQueue_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  AVPerformDelegateCallbackSynchronouslyForDelegateStorageIfCurrentDelegateQueueIsQueueElseDispatchToCurrentDelegateQueue(a1[4], a1[5], a1[6]);

  objc_autoreleasePoolPop(v2);
}

void sub_1961679A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196167AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961680A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void avWaitForNotificationOrDeallocationOperationNotificationHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  if ([a2 _monitoredObject] == a4)
  {
    [a2 _signalMonitoringIsFinishedIfNeeded];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t ___avDepartureAnnouncingObjectMonitorAnnounceDeparture_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [v1 monitoredObjectHasDeparted];
  }

  return result;
}

void handlePlaybackItemNotification(uint64_t a1, void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  [a2 _loadingMutex];
  v8 = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  if (CFEqual(a3, *MEMORY[0x1E69724C0]))
  {
    valuePtr = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    v9 = CFGetTypeID(a5);
    if (v9 != CFDictionaryGetTypeID())
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6972740]);
    if (Value)
    {
      CFGetTypeID(Value);
      CFArrayGetTypeID();
    }

    v11 = CFDictionaryGetValue(a5, *MEMORY[0x1E6972768]);
    if (v11 && (v12 = v11, v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v14 = valuePtr;
    }

    else
    {
LABEL_9:
      v14 = 0;
    }

    [a2 _updateStatusWhileMutexLocked:3 figErrorCode:v14];
  }

  else if (CFEqual(a3, *MEMORY[0x1E6972570]))
  {
    [a2 _updateStatusWhileMutexLocked:2 figErrorCode:0];
    if (a5)
    {
      v20 = CFGetTypeID(a5);
      if (v20 == CFDictionaryGetTypeID())
      {
        v21 = CFDictionaryGetValue(a5, *MEMORY[0x1E6972740]);
        if (v21)
        {
          CFGetTypeID(v21);
          CFArrayGetTypeID();
        }
      }
    }
  }

  v15 = [a2 _getAndPruneCompletionsWhileMutexLocked];
  FigSimpleMutexUnlock();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v22 + 1) + 8 * v19++) + 16))();
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v8);
}

void sub_19616D230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getDictionaryOfSpecialLoadingMethodsForKeys_block_invoke()
{
  if (!getDictionaryOfSpecialLoadingMethodsForKeys_sSpecialLoadingMethodsForKeys)
  {
    getDictionaryOfSpecialLoadingMethodsForKeys_sSpecialLoadingMethodsForKeys = [MEMORY[0x1E695DF20] dictionary];
  }
}

void __getDictionaryOfSpecialPlaybackItemGettersForKeyValueStatus_block_invoke()
{
  if (!getDictionaryOfSpecialPlaybackItemGettersForKeyValueStatus_sSpecialPlaybackItemGettersForKeyValueStatus)
  {
    v1 = sel__statusOfValueForKeyThatIsAlwaysLoaded;
    v0 = [MEMORY[0x1E696B098] value:&v1 withObjCType:":"];
    getDictionaryOfSpecialPlaybackItemGettersForKeyValueStatus_sSpecialPlaybackItemGettersForKeyValueStatus = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"URL", v0, @"assetCache", v0, @"shouldMatchDataInCacheByURLPathComponentOnly", v0, @"shouldMatchDataInCacheByURLWithoutQueryComponent", v0, @"cacheKey", v0, @"downloadDestinationURL", v0, @"downloadToken", v0, @"isProxy", 0}];
  }
}

uint64_t dictionaryOfFigAssetTrackPropertiesForTrackKeys(int a1)
{
  if (dictionaryOfFigAssetTrackPropertiesForTrackKeys_buildFigAssetTrackPropertiesForTrackKeysOnce != -1)
  {
    dictionaryOfFigAssetTrackPropertiesForTrackKeys_cold_1();
  }

  v2 = &dictionaryOfFigAssetTrackPropertiesForTrackKeys_sLegacyFigAssetTrackPropertiesForTrackKeys;
  if (!a1)
  {
    v2 = &dictionaryOfFigAssetTrackPropertiesForTrackKeys_sFigAssetTrackPropertiesForTrackKeys;
  }

  return *v2;
}

uint64_t __dictionaryOfFigAssetTrackPropertiesForTrackKeys_block_invoke()
{
  v43[1] = *MEMORY[0x1E69E9840];
  v42 = MEMORY[0x1E695DF20];
  v41 = [MEMORY[0x1E695DEC8] array];
  v40 = [MEMORY[0x1E695DEC8] array];
  v39 = [MEMORY[0x1E695DEC8] array];
  v0 = *MEMORY[0x1E69738A8];
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738A8], 0}];
  v1 = *MEMORY[0x1E69714C8];
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714C8], 0}];
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714C0], 0}];
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v1, 0}];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738B0], 0}];
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738C0], 0}];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973940], 0}];
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973938], 0}];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738F8], 0}];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738F0], 0}];
  v28 = [MEMORY[0x1E695DEC8] array];
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973910], 0}];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973898], 0}];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973920], 0}];
  v2 = *MEMORY[0x1E69738C8];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738C8], 0}];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738E8], 0}];
  v3 = *MEMORY[0x1E69738A0];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738A0], 0}];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973908], 0}];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973890], 0}];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973928], 0}];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973948], 0}];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738E0], 0}];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973918], 0}];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973900], 0}];
  v4 = *MEMORY[0x1E69714D0];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714D0], 0}];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971498], 0}];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714A8], 0}];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973880], 0}];
  v5 = *MEMORY[0x1E6973878];
  v6 = *MEMORY[0x1E69714E8];
  v7 = *MEMORY[0x1E69714E0];
  v8 = *MEMORY[0x1E69714B0];
  v9 = *MEMORY[0x1E69714A0];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973878], *MEMORY[0x1E69714E8], *MEMORY[0x1E69714E0], *MEMORY[0x1E69714B0], *MEMORY[0x1E69714A0], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v5, v6, v7, v8, v9, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738D0], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973870], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973888], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6973930], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69738B8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v2, v3, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v0, 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{v0, 0}];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714F0], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714D8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69714F8], 0}];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6971488], 0}];
  [MEMORY[0x1E695DEC8] array];
  [MEMORY[0x1E695DEC8] array];
  dictionaryOfFigAssetTrackPropertiesForTrackKeys_sFigAssetTrackPropertiesForTrackKeys = [v42 dictionaryWithObjectsAndKeys:{v41, @"asset", v40, @"trackID", v39, @"mediaType", v38, @"formatDescriptions", v37, @"playable", v36, @"decodable", v35, @"playabilityValidationResult", v34, @"enabled", v33, @"selfContained", v32, @"totalSampleDataLength", v31, @"timeRange", v30, @"mediaPresentationTimeRange", v29, @"mediaDecodeTimeRange", v28, @"requiresFrameReordering", v27, @"naturalTimeScale", v26, @"estimatedDataRate", v25, @"peakDataRate", v24, @"languageCode", v23, @"mediaCharacteristics", v22, @"extendedLanguageTag", v21, @"naturalSize", v20, @"dimensions", v19, @"preferredTransform", v18, @"preferredVolume", v17, @"loudnessInfo", v16, @"nominalFrameRate", v15, @"minFrameDuration", v14, @"segments", v13, @"segmentsExcludeAudioPrimingAndRemainderDurations", v12, @"gaplessSourceTimeRange", v11}];
  dictionaryOfFigAssetTrackPropertiesForTrackKeys_sLegacyFigAssetTrackPropertiesForTrackKeys = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionaryOfFigAssetTrackPropertiesForTrackKeys_sFigAssetTrackPropertiesForTrackKeys];
  v43[0] = *MEMORY[0x1E6971490];
  return [dictionaryOfFigAssetTrackPropertiesForTrackKeys_sLegacyFigAssetTrackPropertiesForTrackKeys setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v43, 1), @"segments"}];
}

void handleFigAssetTrackNotification(uint64_t a1, void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v8 = objc_autoreleasePoolPush();
  [a2 _loadingMutex];
  v9 = CFEqual(a3, *MEMORY[0x1E6971478]);
  v10 = 0;
  if (a5 && v9)
  {
    v11 = CFGetTypeID(a5);
    if (v11 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6971130]);
      v10 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __handleFigAssetTrackNotification_block_invoke;
      v17[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
      v17[4] = Value;
    }

    else
    {
      v10 = 0;
    }
  }

  FigSimpleMutexLock();
  v13 = [a2 _loadingBatches];
  v14 = v13;
  if (v10)
  {
    [v13 enumerateObjectsUsingBlock:v10];
  }

  v15 = [v14 indexesOfObjectsPassingTest:&__block_literal_global_457];
  v16 = [v14 objectsAtIndexes:v15];
  [v14 removeObjectsAtIndexes:v15];
  FigSimpleMutexUnlock();
  [a2 _invokeCompletionHandlerForLoadingBatches:v16];
  objc_autoreleasePoolPop(v8);
}

void handleFigAssetNotification(uint64_t a1, void *a2, const void *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6970EC8]))
  {
    [a2 _loadingMutex];
    FigSimpleMutexLock();
    v6 = [a2 _loadingBatches];
    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
    [v6 removeAllObjects];
    FigSimpleMutexUnlock();
    [a2 _invokeCompletionHandlerForLoadingBatches:v7];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t __handleFigAssetTrackNotification_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 objectForKey:0x1F0A9BA90];
  result = FigCFEqual();
  if (result)
  {
    result = [a2 removeObjectForKey:0x1F0A9BA90];
    *a4 = 1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return CMBaseObjectGetVTable();
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

uint64_t AVFullMethodNameFromClass(objc_class *a1, const char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  ClassMethod = class_getClassMethod(a1, a2);
  if (a1)
  {
    v6 = NSStringFromClass(a1);
  }

  else
  {
    v6 = @"Nil";
  }

  v9 = NSStringFromSelector(a2);
  v7 = 43;
  if (!ClassMethod)
  {
    v7 = 45;
  }

  return [v4 stringWithFormat:@"%c[%@ %@]", v7, v6, v9];
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

__CFString *AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(uint64_t a1, uint64_t a2, void *a3, __CFString *bundleID)
{
  if (!a3)
  {
    goto LABEL_7;
  }

  if (CFBundleGetBundleWithIdentifier(bundleID) || (BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AVFCore")) != 0)
  {
    [a3 localeIdentifier];
    BundleWithIdentifier = CFBundleCopyLocalizedStringForLocalization();
  }

  v9 = BundleWithIdentifier;
  if (([v9 isEqualToString:@"xxxxDefaultValuexxxx"] & 1) != 0 || !v9)
  {
LABEL_7:
    if (bundleID)
    {
      v10 = bundleID;
    }

    else
    {
      v10 = @"com.apple.AVFCore";
    }

    v11 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithIdentifier:{v10), "localizedStringForKey:value:table:", a1, @"xxxxDefaultValuexxxx", a2}];
    if ([v11 isEqualToString:@"xxxxDefaultValuexxxx"])
    {
      v9 = 0;
    }

    else
    {
      v9 = v11;
    }
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return &stru_1F0A8E470;
  }
}

void sub_196174CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196175720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void AVSendCommandCompletion(uint64_t a1, const __CFDictionary *a2, signed int a3, void *a4)
{
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
    if (dword_1EAEFCDF0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (dword_1EAEFCDF0)
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
    v12 = [[AVFigRoutingContextCommandOutputDeviceConfiguration alloc] initWithRoutingContextComandResponse:a2];
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
}

void AVFigRoutingContextRouteChangeOperationRouteChangeStarted(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  [a2 _routeChangeStartedWithID:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRoutingContextRouteChangeOperationRouteChangeEnded(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A0]);
  [a2 _routeChangeWithID:Value endedWithReason:{CFDictionaryGetValue(a5, *MEMORY[0x1E69AF398])}];

  objc_autoreleasePoolPop(v7);
}

void AVFigRoutingContextRouteChangeOperationRouteChangeComplete(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _routeChangeComplete];

  objc_autoreleasePoolPop(v3);
}

void sub_196177390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196177818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196177978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVRouteConfigUpdatedFigRoutingContextRouteChangeOperationRouteConfigUpdated(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3A8]);
  v9 = CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B8]);
  if (dword_1EAEFCDF0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    [a2 _routeConfigUpdateWithID:Value endedWithReason:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_196177E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t usesSerialQueue()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (usesSerialQueue_onceToken != -1)
  {
    usesSerialQueue_cold_1();
  }

  return usesSerialQueue_usesSerialQueue;
}

uint64_t __usesSerialQueue_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"UseSerialQueueInReadWriteQueue", @"com.apple.avfoundation", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    usesSerialQueue_usesSerialQueue = result != 0;
    if (!dword_1ED5AC1D8)
    {
      return result;
    }
  }

  else
  {
    usesSerialQueue_usesSerialQueue = 0;
    if (!dword_1ED5AC1D8)
    {
      return result;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t AVNSValueWithCGPoint(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;
  return [MEMORY[0x1E696B098] valueWithBytes:v3 objCType:"{CGPoint=dd}"];
}

uint64_t AVNSValueWithCGRect(double a1, double a2, double a3, double a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return [MEMORY[0x1E696B098] valueWithBytes:v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
}

uint64_t AVNSValueWithCGSize(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;
  return [MEMORY[0x1E696B098] valueWithBytes:v3 objCType:"{CGSize=dd}"];
}

BOOL AVCGPointFromNSValue(void *a1, _OWORD *a2)
{
  v6 = *MEMORY[0x1E695EFF8];
  v4 = strcmp([a1 objCType], "{CGPoint=dd}");
  if (!v4)
  {
    [a1 getValue:&v6];
  }

  if (a2)
  {
    *a2 = v6;
  }

  return v4 == 0;
}

BOOL AVCGRectFromNSValue(void *a1, _OWORD *a2)
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v8 = *MEMORY[0x1E695F058];
  v9 = v4;
  v5 = strcmp([a1 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}");
  if (!v5)
  {
    [a1 getValue:&v8];
  }

  if (a2)
  {
    v6 = v9;
    *a2 = v8;
    a2[1] = v6;
  }

  return v5 == 0;
}

BOOL AVCGSizeFromNSValue(void *a1, _OWORD *a2)
{
  v6 = *MEMORY[0x1E695F060];
  v4 = strcmp([a1 objCType], "{CGSize=dd}");
  if (!v4)
  {
    [a1 getValue:&v6];
  }

  if (a2)
  {
    *a2 = v6;
  }

  return v4 == 0;
}

void sub_196178A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196178E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void AVLogRuntimeIssueIndicatingAssetPropertyLoadHangRisk(uint64_t a1)
{
  if (AVRuntimeIssueLoggingEnabled == 1)
  {
    v2 = AVRuntimeIssueLogEmitter();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      AVLogRuntimeIssueIndicatingAssetPropertyLoadHangRisk_cold_1(a1, v2);
    }
  }
}

uint64_t AVRuntimeIssueLogEmitter()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AVRuntimeIssueLogEmitter_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "AVFoundation Hang Risk";
  if (AVRuntimeIssueLogEmitter_onceToken != -1)
  {
    dispatch_once(&AVRuntimeIssueLogEmitter_onceToken, block);
  }

  return AVRuntimeIssueLogEmitter_log;
}

void AVLogRuntimeIssueIndicatingAssetTrackPropertyLoadHangRisk(uint64_t a1)
{
  if (AVRuntimeIssueLoggingEnabled == 1)
  {
    v2 = AVRuntimeIssueLogEmitter();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      AVLogRuntimeIssueIndicatingAssetTrackPropertyLoadHangRisk_cold_1(a1, v2);
    }
  }
}

os_log_t __AVRuntimeIssueLogEmitter_block_invoke(uint64_t a1)
{
  result = os_log_create("com.apple.runtime-issues", *(a1 + 32));
  AVRuntimeIssueLogEmitter_log = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return [v31 countByEnumeratingWithState:&a13 objects:&a31 count:16];
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return [v0 selectors];
}

void sub_196180034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *displayNameForLocaleIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 allKeys];
    v6[0] = a2;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = FigCopyRankedLanguagesAccordingToPreferredLanguages2();
    if (CFArrayGetCount(v4) < 1)
    {
      v2 = 0;
      if (!v4)
      {
        return v2;
      }

      goto LABEL_4;
    }

    v2 = [v2 objectForKey:{-[__CFArray firstObject](v4, "firstObject")}];
    if (v4)
    {
LABEL_4:
      CFRelease(v4);
    }
  }

  return v2;
}

_DWORD *AVCopyBestAudioChannelLayoutFromFormatDescription(const opaqueCMFormatDescription *a1, size_t *a2)
{
  sizeOut = 0;
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
  if (RichestDecodableFormat)
  {
    mChannelLayoutTag = RichestDecodableFormat->mChannelLayoutTag;
    if (mChannelLayoutTag != -65536)
    {
      sizeOut = 12;
      v6 = malloc_type_malloc(0xCuLL, 0x26BB8393uLL);
      if (v6)
      {
        v7 = v6;
        v6[1] = 0;
        v6[2] = 0;
        *v6 = mChannelLayoutTag;
        if (!a2)
        {
          return v7;
        }

        goto LABEL_10;
      }
    }
  }

  ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a1, &sizeOut);
  if (!sizeOut)
  {
    v7 = 0;
    if (!a2)
    {
      return v7;
    }

    goto LABEL_10;
  }

  v9 = malloc_type_malloc(sizeOut, 0xD97EABE2uLL);
  v7 = v9;
  if (v9)
  {
    memcpy(v9, ChannelLayout, sizeOut);
  }

  if (a2)
  {
LABEL_10:
    *a2 = sizeOut;
  }

  return v7;
}

void *AVVideoOutputSettingsVTPASPDictionaryForAVPASPDictionary(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 objectForKey:@"AVVideoPixelAspectRatioHorizontalSpacingKey"];
  v4 = [a1 objectForKey:@"AVVideoPixelAspectRatioVerticalSpacingKey"];
  if (v3)
  {
    [v2 setObject:v3 forKey:*MEMORY[0x1E6965EF0]];
  }

  if (v4)
  {
    [v2 setObject:v4 forKey:*MEMORY[0x1E6965F00]];
  }

  return v2;
}

void *AVVideoOutputSettingsVTCLAPDictionaryForAVCLAPDictionary(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 objectForKey:@"AVVideoCleanApertureWidthKey"];
  v4 = [a1 objectForKey:@"AVVideoCleanApertureHeightKey"];
  v5 = [a1 objectForKey:@"AVVideoCleanApertureHorizontalOffsetKey"];
  v6 = [a1 objectForKey:@"AVVideoCleanApertureVerticalOffsetKey"];
  if (v3)
  {
    [v2 setObject:v3 forKey:*MEMORY[0x1E6965D80]];
  }

  if (v4)
  {
    [v2 setObject:v4 forKey:*MEMORY[0x1E6965D60]];
  }

  if (v5)
  {
    [v2 setObject:v5 forKey:*MEMORY[0x1E6965D68]];
  }

  if (v6)
  {
    [v2 setObject:v6 forKey:*MEMORY[0x1E6965D78]];
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

double AVLayerScaledPresentationSizeForPlayerLayerBoundsPresentationSizeAndVideoGravity(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  memset(&v12, 0, sizeof(v12));
  AVLayerTransformForPlacement(a1, 0, &v12, a6, a7, a4, a5);
  v10 = v12;
  memset(&v11, 0, sizeof(v11));
  CATransform3DGetAffineTransform(&v11, &v10);
  *&result = *&vmlaq_n_f64(vmulq_n_f64(*&v11.c, a7), *&v11.a, a6);
  return result;
}

void *getLoadedTimeRangesFromTimeIntervals(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = *MEMORY[0x1E69727A0];
    v8 = *MEMORY[0x1E6972798];
    v15 = *MEMORY[0x1E6960CC0];
    v9 = *(MEMORY[0x1E6960CC0] + 16);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        *&v20.value = v15;
        v20.epoch = v9;
        *&v19.value = v15;
        v19.epoch = v9;
        v12 = [v11 objectForKey:{v7, v15}];
        v13 = [v11 objectForKey:v8];
        if (v12)
        {
          CMTimeMakeFromDictionary(&v20, v12);
        }

        if (v13)
        {
          CMTimeMakeFromDictionary(&lhs.start, v13);
          rhs.start = v20;
          CMTimeSubtract(&v19, &lhs.start, &rhs.start);
        }

        memset(&lhs, 0, sizeof(lhs));
        rhs.start = v20;
        duration = v19;
        CMTimeRangeMake(&lhs, &rhs.start, &duration);
        rhs = lhs;
        [v3 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeRange:", &rhs)}];
      }

      v5 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v3;
}

uint64_t avmetric_didReceiveEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = [a1 referencedObject];
    }

    else
    {
      a1 = 0;
    }
  }

  return [a1 didReceiveEventForMetricEventTimeline:a3 event:a4];
}

void sub_196193084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t encoderExistsForFormat(int a1)
{
  if (a1 == 1819304813)
  {
    return 1;
  }

  outPropertyDataSize = 0;
  v1 = 0;
  if (!AudioFormatGetPropertyInfo(0x61636F66u, 0, 0, &outPropertyDataSize))
  {
    v3 = malloc_type_malloc(outPropertyDataSize, 0x100004052888210uLL);
    if (AudioFormatGetProperty(0x61636F66u, 0, 0, &outPropertyDataSize, v3) || outPropertyDataSize < 4)
    {
      v1 = 0;
    }

    else
    {
      v5 = (outPropertyDataSize >> 2) - 1;
      v6 = v3;
      do
      {
        v7 = *v6++;
        v1 = v7 == a1;
      }

      while (v7 != a1 && v5-- != 0);
    }

    free(v3);
  }

  return v1;
}

uint64_t audioChannelLayoutChannelCount(void *inSpecifier, UInt32 a2)
{
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioFormatGetProperty(0x6E63686Du, a2, inSpecifier, &ioPropertyDataSize, &outPropertyData))
  {
    return 0;
  }

  else
  {
    return outPropertyData;
  }
}

unsigned int *copyAudioChannelLayoutFromData(void *a1, unint64_t *a2)
{
  if (!a1 || ![a1 length])
  {
    v5 = 0;
LABEL_9:
    v6 = 0;
    if (!a2)
    {
      return v5;
    }

LABEL_10:
    *a2 = v6;
    return v5;
  }

  v4 = [a1 length];
  v5 = malloc_type_malloc(v4, 0x28A0B539uLL);
  if (!v5)
  {
    goto LABEL_9;
  }

  [a1 getBytes:v5 length:v4];
  v6 = 20 * v5[2] + 12;
  if (v4 < v6)
  {
    v6 = v4;
  }

  if (a2)
  {
    goto LABEL_10;
  }

  return v5;
}

BOOL AVVideoOutputSettingsValidateAVPixelAspectRatioDictionaryAndReturnVTPixelAspectRatioDictionary(void *a1, void *a2, __CFString **a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 0;
    v8 = @"Value for AVVideoPixelAspectRatioKey must be an instance of NSDictionary";
    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AVVideoPixelAspectRatioHorizontalSpacingKey", @"AVVideoPixelAspectRatioVerticalSpacingKey", 0}];
  v7 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a1, "allKeys")}];
  [v7 minusSet:v6];
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dictionary for AVVideoPixelAspectRatioKey contains one or more unrecognized keys: %@", objc_msgSend(objc_msgSend(v7, "allObjects"), "componentsJoinedByString:", @", ")];
    result = 0;
LABEL_5:
    *a3 = v8;
    return result;
  }

  v10 = AVVideoOutputSettingsVTPASPDictionaryForAVPASPDictionary(a1);
  result = AVVideoOutputSettingsValidateVTPixelAspectRatioDictionary(v10, a3);
  if (result)
  {
    *a2 = v10;
    return 1;
  }

  return result;
}

uint64_t AVVideoOutputSettingsValidateAVCleanApertureDictionaryAndReturnVTCleanApertureDictionary(void *a1, void *a2, void *a3, void *a4, __CFString **a5)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 0;
    v12 = @"Value for AVVideoCleanApertureKey must be an instance of NSDictionary";
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AVVideoCleanApertureWidthKey", @"AVVideoCleanApertureHeightKey", @"AVVideoCleanApertureHorizontalOffsetKey", @"AVVideoCleanApertureVerticalOffsetKey", 0}];
  v11 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a1, "allKeys")}];
  [v11 minusSet:v10];
  if ([v11 count])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dictionary for AVVideoCleanApertureKey contains one or more unrecognized keys: %@", objc_msgSend(objc_msgSend(v11, "allObjects"), "componentsJoinedByString:", @", ")];
    result = 0;
LABEL_5:
    *a5 = v12;
    return result;
  }

  v14 = AVVideoOutputSettingsVTCLAPDictionaryForAVCLAPDictionary(a1);
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v15 = AVVideoOutputSettingsValidateAndExtractValuesFromVTCleanApertureDictionary(v14, &v22, &v21, &v20, &v19, a5);
  v16 = v15;
  if (a2)
  {
    if (a3)
    {
      if (v15)
      {
        v17 = [a2 integerValue];
        v18 = [a3 integerValue];
        v23.size.width = v17;
        v23.size.height = v18;
        v24.size.width = v22;
        v24.origin.x = vcvtd_n_f64_s64(v17, 1uLL) - v22 * 0.5 + v20;
        v24.size.height = v21;
        v24.origin.y = vcvtd_n_f64_s64(v18, 1uLL) - v21 * 0.5 + v19;
        v23.origin.x = 0.0;
        v23.origin.y = 0.0;
        if (!CGRectContainsRect(v23, v24))
        {
          result = 0;
          v12 = @"Clean aperture region must be contained within the bounds specified by width & height";
          goto LABEL_5;
        }
      }
    }
  }

  if (!v16)
  {
    return 0;
  }

  *a4 = v14;
  return 1;
}

uint64_t AVVideoOutputSettingsValidateVideoColorProperties(void *a1, __CFString **a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a1 objectForKey:@"ColorPrimaries"];
    v5 = [a1 objectForKey:@"TransferFunction"];
    v6 = [a1 objectForKey:@"YCbCrMatrix"];
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 || v6 == 0;
    if (v8 || (v9 = v6, [a1 count] != 3))
    {
      v12 = @"Dictionary for AVVideoColorPropertiesKey must contain all three color keys (AVVideoColorPrimariesKey, AVVideoTransferFunctionKey, AVVideoYCbCrMatrixKey) and it may not contain any other keys";
    }

    else
    {
      v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ITU_R_709_2", @"SMPTE_C", @"P3_D65", @"ITU_R_2020", 0}];
      if ([v10 containsObject:v4])
      {
        v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ITU_R_709_2", @"SMPTE_ST_2084_PQ", @"ITU_R_2100_HLG", @"Linear", @"IEC_sRGB", 0}];
        if ([v10 containsObject:v5])
        {
          v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ITU_R_709_2", @"ITU_R_601_4", @"ITU_R_2020", 0}];
          if ([v10 containsObject:v9])
          {
            return 1;
          }

          v13 = @"Value for AVVideoYCbCrMatrixKey must be one of: %@";
        }

        else
        {
          v13 = @"Value for AVVideoTransferFunctionKey must be one of: %@";
        }
      }

      else
      {
        v13 = @"Value for AVVideoColorPrimariesKey must be one of: %@";
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, objc_msgSend(objc_msgSend(v10, "allObjects"), "componentsJoinedByString:", @", ")];
    }
  }

  else
  {
    v12 = @"Dictionary for AVVideoColorPropertiesKey must be an NSDictionary";
  }

  v11 = 0;
  if (a2)
  {
    *a2 = v12;
  }

  return v11;
}

BOOL AVVideoOutputSettingsValidateMinimumFrameDuration(const __CFDictionary *a1, __CFString **a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 0;
    v7 = @"Dictionary for AVVideoMinimumFrameDuration must be an NSDictionary";
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  memset(&v10, 0, sizeof(v10));
  CMTimeMakeFromDictionary(&v10, a1);
  if ((v10.flags & 0x1D) != 1)
  {
    result = 0;
    v7 = @"AVVideoMinimumFrameDuration must be numeric";
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  time1 = v10;
  v8 = **&MEMORY[0x1E6960CC0];
  v4 = CMTimeCompare(&time1, &v8);
  v5 = v4 <= 0;
  result = v4 > 0;
  v7 = @"AVVideoMinimumFrameDuration must be greater than kCMTimeZero";
  if (!v5)
  {
    v7 = 0;
  }

  if (a2)
  {
LABEL_10:
    if (!result)
    {
      *a2 = v7;
    }
  }

  return result;
}

uint64_t AVVideoOutputSettingsValidateFrameRateConversionAlgorithm(void *a1, __CFString **a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 0;
    v5 = @"String for AVVideoFrameRateConversionAlgorithm must be an NSString";
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ([a1 isEqualToString:@"AVVideoFrameRateConversionAlgorithmFast"])
  {
    return 1;
  }

  result = [a1 isEqualToString:@"AVVideoFrameRateConversionAlgorithmPrecise"];
  v5 = @"AVVideoFrameRateConversionAlgorithm must be either AVVideoFrameRateConversionAlgorithmFast or AVVideoFrameRateConversionAlgorithmPrecise";
  if (result)
  {
    v5 = 0;
  }

  if (a2)
  {
LABEL_9:
    if ((result & 1) == 0)
    {
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

BOOL AVVideoOutputSettingsValidateEmitSequencesAtSyncFramesOnly(void *a1, __CFString **a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = 0;
    v7 = @"AVVideoEmitSequencesAtSyncFramesOnly must be an NSNumber";
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = [a1 integerValue];
  v5 = v4 <= 0;
  result = v4 > 0;
  v7 = @"AVVideoEmitSequencesAtSyncFramesOnly must be greater than zero";
  if (!v5)
  {
    v7 = 0;
  }

  if (a2)
  {
LABEL_7:
    if (!result)
    {
      *a2 = v7;
    }
  }

  return result;
}

uint64_t AVVideoOutputSettingsExtractPixelAspectRatioAndCleanApertureFromAVVideoSettingsDictionary(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v31 = 0;
  v12 = [a1 objectForKey:@"AVVideoCompressionPropertiesKey"];
  v13 = [a1 objectForKey:@"AVVideoPixelAspectRatioKey"];
  if (v13)
  {
    v14 = AVVideoOutputSettingsValidateAVPixelAspectRatioDictionaryAndReturnVTPixelAspectRatioDictionary(v13, a4, &v31);
  }

  else
  {
    v14 = 1;
  }

  v15 = [a1 objectForKey:@"AVVideoCleanApertureKey"];
  if (v14 && v15)
  {
    v14 = AVVideoOutputSettingsValidateAVCleanApertureDictionaryAndReturnVTCleanApertureDictionary(v15, a2, a3, a5, &v31);
  }

  if (!v14 || !v12)
  {
    goto LABEL_49;
  }

  v16 = [v12 objectForKey:@"AVVideoPixelAspectRatioKey"];
  if (v16)
  {
    if (*a4)
    {
      v14 = 0;
      v17 = @"AVVideoPixelAspectRatioKey can only be specified at the top level of the dictionary or in the AVVideoCompressionPropertiesKey sub-dictionary, not both";
LABEL_17:
      v31 = v17;
      goto LABEL_18;
    }

    v18 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
      v17 = @"Value for AVVideoPixelAspectRatioKey must be an instance of NSDictionary";
      goto LABEL_17;
    }

    v19 = AVVideoOutputSettingsVTPASPDictionaryForAVPASPDictionary(v18);
    if (!AVVideoOutputSettingsValidateVTPixelAspectRatioDictionary(v19, &v31))
    {
      v14 = 0;
      goto LABEL_18;
    }

    *a4 = v19;
  }

  v14 = 1;
LABEL_18:
  v20 = [v12 objectForKey:*MEMORY[0x1E6983790]];
  if (v14)
  {
    v21 = v20;
    if (v20)
    {
      if (*a4)
      {
        v22 = @"Pixel aspect ratio can only be specified once";
LABEL_33:
        v31 = v22;
        goto LABEL_34;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = @"Value for pixel aspect ratio must be an instance of NSDictionary";
        goto LABEL_33;
      }

      if (!AVVideoOutputSettingsValidateVTPixelAspectRatioDictionary(v21, &v31))
      {
LABEL_34:
        [v12 objectForKey:@"AVVideoCleanApertureKey"];
        goto LABEL_35;
      }

      *a4 = v21;
      v14 = 1;
    }
  }

  v23 = [v12 objectForKey:@"AVVideoCleanApertureKey"];
  if (v14)
  {
    v24 = v23;
    if (v23)
    {
      if (*a5)
      {
        v14 = 0;
        v25 = @"AVVideoCleanApertureKey can only be specified at the top level of the dictionary or in the AVVideoCompressionPropertiesKey sub-dictionary, not both";
LABEL_38:
        v31 = v25;
        goto LABEL_39;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 0;
        v25 = @"Value for AVVideoCleanApertureKey must be an instance of NSDictionary";
        goto LABEL_38;
      }

      v26 = AVVideoOutputSettingsVTCLAPDictionaryForAVCLAPDictionary(v24);
      if (!AVVideoOutputSettingsValidateAndExtractValuesFromVTCleanApertureDictionary(v26, 0, 0, 0, 0, &v31))
      {
LABEL_35:
        v14 = 0;
        goto LABEL_39;
      }

      *a5 = v26;
      v14 = 1;
    }
  }

LABEL_39:
  v27 = [v12 objectForKey:*MEMORY[0x1E69835A0]];
  if (v14)
  {
    v28 = v27;
    if (v27)
    {
      if (*a5)
      {
        v14 = 0;
        v29 = @"Clean aperture can only be specified once";
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (AVVideoOutputSettingsValidateAndExtractValuesFromVTCleanApertureDictionary(v28, 0, 0, 0, 0, &v31))
          {
            *a5 = v28;
            v14 = 1;
            if (!a6)
            {
              return v14;
            }
          }

          else
          {
            v14 = 0;
            if (!a6)
            {
              return v14;
            }
          }

          goto LABEL_50;
        }

        v14 = 0;
        v29 = @"Value for clean aperture must be an instance of NSDictionary";
      }

      v31 = v29;
    }
  }

LABEL_49:
  if (a6)
  {
LABEL_50:
    *a6 = v31;
  }

  return v14;
}

BOOL AVVideoOutputSettingsValidateVTPixelAspectRatioDictionary(void *a1, __CFString **a2)
{
  v4 = [a1 objectForKey:*MEMORY[0x1E6965EF0]];
  v5 = [a1 objectForKey:*MEMORY[0x1E6965F00]];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    result = 0;
    v9 = @"Dictionary for AVVideoPixelAspectRatioKey must contain NSNumber values for both AVVideoPixelAspectRatioHorizontalSpacingKey and AVVideoPixelAspectRatioVerticalSpacingKey";
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ([v4 integerValue] < 1)
  {
    result = 0;
    v9 = @"Dictionary for AVVideoPixelAspectRatioKey must specify a positive value for AVVideoPixelAspectRatioHorizontalSpacingKey";
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v6 = [v5 integerValue];
  v7 = v6 <= 0;
  result = v6 > 0;
  v9 = @"Dictionary for AVVideoPixelAspectRatioKey must specify a positive value for AVVideoPixelAspectRatioVerticalSpacingKey";
  if (!v7)
  {
    v9 = 0;
  }

  if (a2)
  {
LABEL_9:
    if (!result)
    {
      *a2 = v9;
    }
  }

  return result;
}

uint64_t AVVideoOutputSettingsValidateAndExtractValuesFromVTCleanApertureDictionary(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, __CFString **a6)
{
  v12 = [a1 objectForKey:*MEMORY[0x1E6965D80]];
  v13 = [a1 objectForKey:*MEMORY[0x1E6965D60]];
  v14 = [a1 objectForKey:*MEMORY[0x1E6965D68]];
  v15 = [a1 objectForKey:*MEMORY[0x1E6965D78]];
  if (v12)
  {
    if (v13)
    {
      if (v14)
      {
        v16 = v15;
        if (v15)
        {
          if (objc_opt_respondsToSelector())
          {
            if (objc_opt_respondsToSelector())
            {
              if (objc_opt_respondsToSelector())
              {
                if (objc_opt_respondsToSelector())
                {
                  v17 = [v12 integerValue];
                  v18 = [v13 integerValue];
                  v19 = [v14 integerValue];
                  v20 = [v16 integerValue];
                  if (v17 < 1)
                  {
                    v22 = @"Dictionary for AVVideoCleanApertureKey must specify a positive value for AVVideoCleanApertureWidthKey";
                  }

                  else
                  {
                    if (v18 >= 1)
                    {
                      if (a2)
                      {
                        *a2 = v17;
                      }

                      if (a3)
                      {
                        *a3 = v18;
                      }

                      if (a4)
                      {
                        *a4 = v19;
                      }

                      if (a5)
                      {
                        *a5 = v20;
                      }

                      return 1;
                    }

                    v22 = @"Dictionary for AVVideoCleanApertureKey must specify a positive value for AVVideoCleanApertureHeightKey";
                  }
                }

                else
                {
                  v22 = @"Value for AVVideoCleanApertureVerticalOffsetKey must be an instance of NSNumber";
                }
              }

              else
              {
                v22 = @"Value for AVVideoCleanApertureHorizontalOffsetKey must be an instance of NSNumber";
              }
            }

            else
            {
              v22 = @"Value for AVVideoCleanApertureHeightKey must be an instance of NSNumber";
            }
          }

          else
          {
            v22 = @"Value for AVVideoCleanApertureWidthKey must be an instance of NSNumber";
          }
        }

        else
        {
          v22 = @"Dictionary for AVVideoCleanApertureKey must specify a value for AVVideoCleanApertureVerticalOffsetKey";
        }
      }

      else
      {
        v22 = @"Dictionary for AVVideoCleanApertureKey must specify a value for AVVideoCleanApertureHorizontalOffsetKey";
      }
    }

    else
    {
      v22 = @"Dictionary for AVVideoCleanApertureKey must specify a value for AVVideoCleanApertureHeightKey";
    }
  }

  else
  {
    v22 = @"Dictionary for AVVideoCleanApertureKey must specify a value for AVVideoCleanApertureWidthKey";
  }

  result = 0;
  if (a6)
  {
    *a6 = v22;
  }

  return result;
}

__CFString *AVPlaybackCoordinatorAVFSuspensionReasonForFigReason(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if (([(__CFString *)result isEqualToString:*MEMORY[0x1E69632F0]]& 1) != 0)
    {
      return @"AVCoordinatedPlaybackSuspensionReasonAudioSessionInterrupted";
    }

    else if (([(__CFString *)v1 isEqualToString:*MEMORY[0x1E6963328]]& 1) != 0)
    {
      return @"AVCoordinatedPlaybackSuspensionReasonStallRecovery";
    }

    else if (([(__CFString *)v1 isEqualToString:*MEMORY[0x1E6963310]]& 1) != 0)
    {
      return @"AVCoordinatedPlaybackSuspensionReasonPlayingInterstitial";
    }

    else if (([(__CFString *)v1 isEqualToString:*MEMORY[0x1E6963330]]& 1) != 0)
    {
      return @"AVCoordinatedPlaybackSuspensionReasonUserActionRequired";
    }

    else if (([(__CFString *)v1 isEqualToString:*MEMORY[0x1E6963308]]& 1) != 0)
    {
      return @"AVCoordinatedPlaybackSuspensionReasonCoordinatedPlaybackNotPossible";
    }

    else if (([(__CFString *)v1 isEqualToString:*MEMORY[0x1E6963300]]& 1) != 0)
    {
      return @"AVCoordinatedPlaybackSuspensionReasonUserIsChangingCurrentTime";
    }

    else if ([(__CFString *)v1 isEqualToString:*MEMORY[0x1E69632F8]])
    {
      return @"AVCoordinatedPlaybackSuspensionReasonBackgroundTransition";
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t AVPlaybackCoordinatorArrayContainsSameElementsAsArray(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a1];
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a2];

  return [v3 isEqualToSet:v4];
}

void *AVPlaybackCoordinatorArrayMinusArray(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  [v3 removeObjectsInArray:a2];
  return v3;
}

id AVPlaybackCoordinatorGetNSUUIDFromCFUUID(CFUUIDRef uuid)
{
  if (uuid)
  {
    v1 = CFUUIDCreateString(*MEMORY[0x1E695E480], uuid);
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];
    if (v1)
    {
      CFRelease(v1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFUUIDRef AVPlaybackCoordinatorCreateCFUUIDFromNSUUID(CFUUIDRef result)
{
  if (result)
  {
    v1 = *MEMORY[0x1E695E480];
    v2 = [(__CFUUID *)result UUIDString];

    return CFUUIDCreateFromString(v1, v2);
  }

  return result;
}

id AVPlaybackCoordinatorMakeUserInfoForDidIssueCommandToPlaybackObjectNotification(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x1E6963248]];
  v4 = [a1 objectForKeyedSubscript:*MEMORY[0x1E6963240]];
  v5 = [a1 objectForKeyedSubscript:*MEMORY[0x1E6963250]];
  v6 = [a1 objectForKeyedSubscript:*MEMORY[0x1E6963258]];
  if ([v4 isEqualToString:*MEMORY[0x1E6963358]])
  {
    v7 = @"AVPlaybackCoordinatorPlaybackObjectCommandSetRate";
    if (!v3)
    {
      goto LABEL_12;
    }

LABEL_11:
    [v2 setObject:objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]) forKeyedSubscript:{"initWithUUIDString:", v3), @"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyParticipantUUID"}];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E6963368]])
  {
    v7 = @"AVPlaybackCoordinatorPlaybackObjectCommandSetTime";
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ([v4 isEqualToString:*MEMORY[0x1E6963360]])
    {
      v7 = @"AVPlaybackCoordinatorPlaybackObjectCommandSetRateAndTime";
    }

    else
    {
      v7 = 0;
    }

    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  [v2 setObject:v7 forKeyedSubscript:@"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyCommand"];
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyRate"];
  }

  if (v6)
  {
    [v2 setObject:v6 forKeyedSubscript:@"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyTime"];
  }

  return v2;
}

void sub_19619C840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_19619CD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVPlayerPlaybackCoordinatorBroadcastTransportControlStateCallback(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 coordinationMediumDelegate];
  v6 = [a2 objectForKeyedSubscript:@"Identifier"];
  [a1 _updateTransportControlStateDictionaryWithTransportControlState:a2];
  [objc_msgSend(a1 "interstitialPlaybackCoordinator")];
  [objc_msgSend(a1 "primaryPlaybackCoordinatorForInterstitial")];
  if (a1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 playbackCoordinator:a1 broadcastTransportControlStateDictionary:a2 forItemWithIdentifier:{objc_msgSend(a2, "objectForKeyedSubscript:", *MEMORY[0x1E6963370])}];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setCoordinationMediumDelegate:0];
  }

  [objc_msgSend(a1 interstitialPlaybackCoordinator];
  [objc_msgSend(a1 "primaryPlaybackCoordinatorForInterstitial")];
  objc_autoreleasePoolPop(v4);
}

void AVPlayerPlaybackCoordinatorBroadcastParticipantStateCallback(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 coordinationMediumDelegate];
  v6 = [a2 objectForKeyedSubscript:@"UUID"];
  [a1 _updateParticipantStateDictionaryWithParticipantState:a2];
  [a1 _removeUnusedTransportControlStates];
  if (a1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 playbackCoordinator:a1 broadcastLocalParticipantStateDictionary:a2];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setCoordinationMediumDelegate:0];
  }

  [objc_msgSend(a1 interstitialPlaybackCoordinator];
  [objc_msgSend(a1 "primaryPlaybackCoordinatorForInterstitial")];
  objc_autoreleasePoolPop(v4);
}

void AVPlayerPlaybackCoordinatorAsynchronouslyReloadTransportControlStateCallback(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v12[26] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 coordinationMediumDelegate];
  if (a1 && (v10 = v9, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __AVPlayerPlaybackCoordinatorAsynchronouslyReloadTransportControlStateCallback_block_invoke;
    v12[3] = &unk_1E74625B0;
    v12[4] = a1;
    v12[5] = a4;
    v12[6] = a3;
    [v10 playbackCoordinator:a1 reloadTransportControlStateForItemWithIdentifier:a2 completionHandler:v12];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a1 setCoordinationMediumDelegate:0];
    a4(a3);
  }

  objc_autoreleasePoolPop(v8);
}

void sub_19619DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619E030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619E260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19619E608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619E740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619E8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619E9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619EE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19619F030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19619F5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619F71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619FB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19619FE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A09AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A0D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A12B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A18BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A19F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A25E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A2A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A306C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A3374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A3638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A37E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A39A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A3E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AVPlayerPlaybackCoordinatorAsynchronouslyReloadTransportControlStateCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _figPlaybackCoordinatorConfigQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __AVPlayerPlaybackCoordinatorAsynchronouslyReloadTransportControlStateCallback_block_invoke_2;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void *audioValueRangeArrayWithAudioValueRanges(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a2 >= 1)
  {
    v5 = (a1 + 8);
    do
    {
      [v4 addObject:{+[AVFloat64Range float64RangeWithAudioValueRange:](AVFloat64Range, "float64RangeWithAudioValueRange:", *(v5 - 1), *v5)}];
      v5 += 2;
      --a2;
    }

    while (a2);
  }

  return v4;
}

uint64_t indexOfValueInAudioValueRangeArray(void *a1, uint64_t a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v17;
LABEL_3:
  v10 = 0;
  v11 = v8;
  while (1)
  {
    if (*v17 != v9)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v16 + 1) + 8 * v10);
    [v8 minimum];
    if (v12 > a3)
    {
      break;
    }

    [v8 maximum];
    if (v13 >= a3)
    {
      if (v8)
      {
        return [a1 indexOfObject:v8];
      }

      break;
    }

    ++v10;
    v11 = v8;
    if (v7 == v10)
    {
      v7 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v11 = v8;
      if (v7)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (v11)
  {
    v14 = [a1 indexOfObject:v11];
    if (a2 != -1)
    {
      if (a2 == 1)
      {
        if (v14 < [a1 count] - 1)
        {
          ++v14;
        }
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
LABEL_26:
    if ([a1 count])
    {
      return 0;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v14;
}

void sub_1961A5C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961A6234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void avad_downloadSuccessCallback(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 _downloadSuccessCallback];

  objc_autoreleasePoolPop(v2);
}

void avad_downloadFailureCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  [a1 _downloadFailureCallbackWithError:a3];

  objc_autoreleasePoolPop(v5);
}

void avad_loadedTimeRangeChangedCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_autoreleasePoolPush();
  [a1 _sendLoadedTimeRangesChangedToDelegateWithNewlyLoadedTimeRange:a3 currentLoadedTimeRanges:a4 timeRangeExpectedToLoad:a5 selectedMediaArray:a6];

  objc_autoreleasePoolPop(v11);
}

void avad_didResolveMediaSelection(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  [a1 _sendDidResolveMediaSelectionWithMediaSelection:a3];

  objc_autoreleasePoolPop(v5);
}

void avad_didFinishDownloadForMediaSelection(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  [a1 _sendDidFinishDownloadForMediaSelectionWithMediaSelection:a3];

  objc_autoreleasePoolPop(v5);
}

void avad_progressUpdate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  [a1 _sendProgessUpdateWithExpectedBytesToDownload:a3 bytesDownloaded:a4];

  objc_autoreleasePoolPop(v7);
}

void avad_willDownloadAlternates(void *a1, uint64_t a2, const __CFArray *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        v10 = [[AVAssetVariant alloc] initWithFigAlternate:CFArrayGetValueAtIndex(a3, i)];
        if (v10)
        {
          v11 = v10;
          [v6 addObject:v10];
        }
      }
    }
  }

  if ([v6 count])
  {
    [a1 _sendWillDownloadVariants:v6];
  }

  objc_autoreleasePoolPop(v5);
}

void avad_didReceiveMetricEvent(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  [a1 _sendDidReceiveMetricEvent:{+[AVMetricEventStream metricEventForFigMetricEvent:](AVMetricEventStream, "metricEventForFigMetricEvent:", a3)}];

  objc_autoreleasePoolPop(v5);
}

void sub_1961A8B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void avAssetDownloadSession_figAssetNotificationCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (!CFEqual(a3, *MEMORY[0x1E6970EB8]))
  {
    if (CFEqual(a3, *MEMORY[0x1E6970EB0]))
    {
      CFDictionaryGetValue(a5, *MEMORY[0x1E6971160]);
      if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (CFEqual(a3, *MEMORY[0x1E6970EA8]))
      {
        v10 = a2;
        v11 = 3;
        v12 = 0;
LABEL_17:
        [v10 _transitionToTerminalStatus:v11 error:v12];
        goto LABEL_18;
      }

      if (!CFEqual(a3, *MEMORY[0x1E6970EA0]))
      {
        if (!CFEqual(a3, *MEMORY[0x1E6970EC8]))
        {
          goto LABEL_18;
        }

        v9 = AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);
        goto LABEL_16;
      }
    }

    v9 = [a2 _errorFromAssetNotificationPayload:a5];
LABEL_16:
    v12 = v9;
    v10 = a2;
    v11 = 4;
    goto LABEL_17;
  }

  CFDictionaryGetValue(a5, *MEMORY[0x1E6971160]);
  if (FigCFEqual())
  {
    [a2 _primeCacheOnDispatchQueue];
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v9 = [a2 _verifyDownloadConfigurationForAssetType];
    if (v9)
    {
      goto LABEL_16;
    }
  }

LABEL_18:

  objc_autoreleasePoolPop(v8);
}

void avAssetDownloadSession_figPlaybackItemNotificationCallback(uint64_t a1, void *a2, const void *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6972480]))
  {
    v16 = 0;
    [a2 _playbackItem];
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, *MEMORY[0x1E69728F8], *MEMORY[0x1E695E4D0]);
    }

    v8 = [a2 _playbackItem];
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v9)
    {
      v10 = v9(v8, 0, &v16);
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = v16 == 0;
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = v10;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = -12782;
    }

    if ([a2 URL])
    {
      v13 = MEMORY[0x1E695DF20];
      v14 = [a2 URL];
      v15 = [v13 dictionaryWithObject:v14 forKey:*MEMORY[0x1E696A998]];
    }

    else
    {
      v15 = 0;
    }

    [a2 _transitionToTerminalStatus:4 error:{AVLocalizedErrorWithUnderlyingOSStatus(v12, v15)}];
  }

  else if (CFEqual(a3, *MEMORY[0x1E6972570]))
  {
LABEL_16:
    [a2 _readyForInspection];
  }

LABEL_19:
  objc_autoreleasePoolPop(v5);
}

void sub_1961A9DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVPlayerItemVideoOutput_figVCSequentialAvailableCallback(uint64_t a1, __int128 *a2, char a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a4 referencedObject];
  if (v8)
  {
    v9 = *(v8 + 16);
    if (*(v9 + 108) == 1)
    {
      v10 = *(v9 + 56);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __AVPlayerItemVideoOutput_figVCSequentialAvailableCallback_block_invoke;
      v16[3] = &unk_1E7460C00;
      v16[4] = v8;
      v11 = v16;
    }

    else
    {
      v10 = *(v9 + 56);
      if (a3)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __AVPlayerItemVideoOutput_figVCSequentialAvailableCallback_block_invoke_2;
        block[3] = &unk_1E7460DF0;
        block[4] = v9;
        block[5] = v8;
        v11 = block;
      }

      else
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __AVPlayerItemVideoOutput_figVCSequentialAvailableCallback_block_invoke_3;
        v12[3] = &unk_1E7462FD8;
        v12[4] = v9;
        v13 = *a2;
        v14 = *(a2 + 2);
        v11 = v12;
      }
    }

    dispatch_sync(v10, v11);
  }

  objc_autoreleasePoolPop(v7);
}

dispatch_time_t AVPlayerItemVideoOutputConvertImageTimeToDispatchTimeWithInterval(uint64_t a1, CMTime *a2, Float64 a3)
{
  v15 = **&MEMORY[0x1E6960C70];
  memset(&v14, 0, sizeof(v14));
  v5 = *(a1 + 8);
  HostTimeClock = CMClockGetHostTimeClock();
  time = *a2;
  CMSyncConvertTime(&v14, &time, v5, HostTimeClock);
  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&time, a3, 1000);
  lhs = v14;
  rhs = time;
  CMTimeSubtract(&v15, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  v7 = CMClockGetHostTimeClock();
  CMClockGetTime(&rhs, v7);
  v10 = v15;
  CMTimeSubtract(&lhs, &v10, &rhs);
  rhs = lhs;
  CMTimeConvertScale(&v9, &rhs, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return dispatch_time(0, v9.value & ~(v9.value >> 63));
}

void sub_1961AB464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AB74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVPlayerItemVideoOutput_timebaseNotificationCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(a2 + 16);
  if (CFEqual(a3, *MEMORY[0x1E6960CD0]))
  {
    v7 = *(v6 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __AVPlayerItemVideoOutput_timebaseNotificationCallback_block_invoke;
    v8[3] = &unk_1E7460DF0;
    v8[4] = v6;
    v8[5] = a2;
    dispatch_sync(v7, v8);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1961AC3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AC598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1961AC704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AC9C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1961ACCD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961AD054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1961AD2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961ADBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AE240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AE928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, id a22)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  AVTelemetryIntervalEnd(&a22);
  _Unwind_Resume(a1);
}

void sub_1961AEDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AF2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AF400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961AF70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B01A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B0480(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t _enqueueSingleSampleBufferStatic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*a3 _enqueueSingleSampleBuffer:a1 bufferEnqueueingInfo:*(a3 + 8)];
  }

  else
  {
    return FigSignalErrorAtGM();
  }
}

void sub_1961B14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B1B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B1EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B2234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1961B29D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B3174(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);
  _Block_object_dispose((v1 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1961B345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1961B3BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1961B3FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 88), 8);
  AVTelemetryIntervalEnd((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_1961B4304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1961B535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1961B551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  AVTelemetryIntervalEnd((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1961B5694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B57F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 56), 8);
  AVTelemetryIntervalEnd((v10 - 24));
  _Unwind_Resume(a1);
}

void _figVideoQueueDidDropBelowLowWaterLevel(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:0];

  objc_autoreleasePoolPop(v3);
}

void _figVideoQueueDecodeError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6973CD0]), "intValue"}];
    v9 = [a5 objectForKey:*MEMORY[0x1E6973CC8]];
    v10 = [a5 objectForKey:*MEMORY[0x1E6973CD8]];
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 setObject:@"vide" forKey:@"AVErrorMediaTypeKey"];
  if (v9)
  {
    [v11 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v9), @"AVErrorMediaSubTypeKey"}];
  }

  if (v10)
  {
    memset(&v18, 0, sizeof(v18));
    CMTimeMakeFromDictionary(&v18, v10);
    v17 = v18;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithCMTime:", &v17), @"AVErrorPresentationTimeStampKey"}];
  }

  v12 = AVLocalizedErrorWithUnderlyingOSStatus(v8, v11);
  v13 = MEMORY[0x1E696AD80];
  if (v12)
  {
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:@"AVSampleBufferVideoRendererDidFailToDecodeNotificationErrorKey"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v13 notificationWithName:@"AVSampleBufferVideoRendererDidFailToDecodeNotification" object:a2 userInfo:v14];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (v12)
  {
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:@"AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey"];
  }

  else
  {
    v16 = 0;
  }

  [a2 _fireDisplayLayerNotificationNowThenReleaseOnMainThread:@"AVSampleBufferDisplayLayerFailedToDecodeNotification" userInfo:v16];
  objc_autoreleasePoolPop(v7);
}

void _figVideoQueueFlushComplete(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _flushComplete];

  objc_autoreleasePoolPop(v3);
}

void _figVideoQueueCompletedDecodeForPreroll(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6973CE0]), "intValue"}];
  }

  else
  {
    v8 = 0;
  }

  [a2 _completedDecodeForPrerollForRequestID:v8];

  objc_autoreleasePoolPop(v7);
}

void _figVideoQueueExternalProtectionStatusChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = a2[18];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___figVideoQueueExternalProtectionStatusChanged_block_invoke;
  block[3] = &unk_1E74630E0;
  block[5] = &v13;
  block[6] = a4;
  block[4] = &v9;
  dispatch_sync(v5, block);
  if (!*(v10 + 6))
  {
    v6 = [v14[3] valueForKey:*MEMORY[0x1E6973CB0]];
    [a2 _setOutputObscuredDueToInsufficientExternalProtection:{objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6973CB8])}];
  }

  v7 = v14[3];
  if (v7)
  {
    CFRelease(v7);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

void sub_1961B5E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void _figVideoQueueFailed(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v7 = objc_autoreleasePoolPush();
  valuePtr = 0;
  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6973CD0]);
  if (Value && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    v11 = AVLocalizedErrorWithUnderlyingOSStatus(valuePtr, 0);
  }

  else
  {
    v11 = 0;
  }

  [a2 _setStatus:2 error:v11];
  objc_autoreleasePoolPop(v7);
}

void _figVideoQueueServerConnectionDied(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _setStatus:2 error:{AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0)}];

  objc_autoreleasePoolPop(v3);
}

void _figVideoQueueServerDependencyLost(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _setStatus:2 error:{AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0)}];

  objc_autoreleasePoolPop(v3);
}

void _figVideoQueueLostDecoderState(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _setRequiresFlushToResumeDecoding:1];

  objc_autoreleasePoolPop(v3);
}

void _figVideoQueueFirstVideoFrameEnqueued(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 setReadyForDisplayWithoutKVO:1];
  if (dword_1EAEFCE70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v3);
}

void _figVideoQueueContextIDDidChange(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _updatePreferredDynamicRange];
  if (dword_1EAEFCE70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t ___figVideoQueueExternalProtectionStatusChanged_block_invoke(void *a1)
{
  result = a1[6];
  if (result)
  {
    v3 = *(a1[5] + 8);
    CMBaseObject = FigVideoQueueGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      result = v5(CMBaseObject, *MEMORY[0x1E6973D18], *MEMORY[0x1E695E480], v3 + 24);
    }

    else
    {
      result = 4294954514;
    }

    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

void sub_1961B6AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1961B6E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B6F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B70FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  AVTelemetryIntervalEnd((v10 - 40));
  _Unwind_Resume(a1);
}

void sub_1961B72A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B7F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B7FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B8044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B80BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B8134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961B833C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B8484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void customURLHandlerHandleRequestCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  v15 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 _customURLHandler] == a2)
    {
      [a1 _handleRequest:a3 requestID:a4 willHandleRequest:&v15];
      v13 = 0;
      v14 = v15;
    }

    else
    {
      customURLHandlerHandleRequestCallback_cold_2(&v17);
      v14 = 0;
      v13 = v17;
    }
  }

  else
  {
    customURLHandlerHandleRequestCallback_cold_1(&v16);
    v14 = 0;
    v13 = v16;
  }

  a5(a6, v14, v13);
  objc_autoreleasePoolPop(v12);
}

void customURLHandlerRequestCancelled(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 _customURLHandler] == a2)
    {
      [a1 _cancelRequest:a3 requestID:a4];
    }

    else
    {
      customURLHandlerRequestCancelled_cold_2();
    }
  }

  else
  {
    customURLHandlerRequestCancelled_cold_1();
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t customURLAuthHandlerHandleRequestCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    customURLAuthHandlerHandleRequestCallback_cold_1(&v15);
LABEL_9:
    v13 = 0;
    v12 = v15;
    goto LABEL_6;
  }

  if ([a1 _authHandler] != a2)
  {
    customURLAuthHandlerHandleRequestCallback_cold_2(&v15);
    goto LABEL_9;
  }

  v12 = FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge();
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    [a1 _poseAuthenticationChallengeWithRequestInfo:a3 requestID:a4 challenge:0];
    v13 = 1;
  }

LABEL_6:

  return a5(a6, v13, v12);
}

void customURLAuthHandlerRequestCancelled(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 _authHandler] == a2)
    {
      [a1 _cancelRequest:a3 requestID:a4];
    }

    else
    {
      customURLAuthHandlerRequestCancelled_cold_2();
    }
  }

  else
  {
    customURLAuthHandlerRequestCancelled_cold_1();
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1961B99C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B9D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961B9F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1961BA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BA988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BAC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BB238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BB38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BB574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BB6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BBCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BBEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BC054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BC3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BC6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BD0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BD290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961BD634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AVCanWriteFilesToDirectoryAtURL(void *a1, void *a2)
{
  if (!a1)
  {
    AVCanWriteFilesToDirectoryAtURL_cold_1();
  }

  v12 = 0;
  v4 = [a1 URLByAppendingPathComponent:@"TemporaryFileForAVFoundation"];
  v5 = [objc_msgSend(MEMORY[0x1E695DEF0] "data")];
  if (v5)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] defaultManager];
  }

  else
  {
    v6 = [v12 domain];
    v7 = *MEMORY[0x1E696A250];
    if ([v6 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v12, "code") == 4)
    {
      v8 = [objc_msgSend(v12 "userInfo")];
      [v8 removeObjectForKey:*MEMORY[0x1E696A368]];
      v9 = *MEMORY[0x1E696A998];
      [v8 removeObjectForKey:*MEMORY[0x1E696A998]];
      [v8 setObject:a1 forKey:v9];
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v7 code:4 userInfo:v8];
    }

    if (a2)
    {
      *a2 = v12;
    }
  }

  return v5;
}

void avrendersynchronizer_timebaseRateChanged(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _updateRateFromTimebase];

  objc_autoreleasePoolPop(v3);
}

void sub_1961BF894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961BFCE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961BFDE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961BFF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961C00FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961C033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t avrendersynchronize_electRendererForSTSAndSendLabelToAudioRenderers(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v1;
  v2 = *(v1 + 72);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v6)
          {
            if ([objc_msgSend(v10 "_sampleBufferVideoRenderer")])
            {
              v6 = v10;
            }

            else
            {
              v6 = 0;
            }
          }

          if (!v5)
          {
            v5 = v10;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && !v7)
          {
            if ([v10 _STSLabel])
            {
              v7 = v10;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v11 = *(v19 + 112);
  if (v11)
  {
    v11 = [v11 _STSLabel];
    if (v11)
    {
      v11 = *(v19 + 112);
    }

    else
    {
      *(v19 + 112) = 0;
    }
  }

  if ([v11 _displayLayer] && v7)
  {
    goto LABEL_29;
  }

  if (!*(v19 + 112))
  {
    if (v7)
    {
LABEL_29:
      *(v19 + 112) = v7;
      goto LABEL_31;
    }

    if (v6)
    {
      *(v19 + 112) = [v6 _sampleBufferVideoRenderer];
    }

    else
    {
      [v5 setSTSLabel:{+[AVSampleBufferRenderSynchronizer _makeSTSLabel](AVSampleBufferRenderSynchronizer, "_makeSTSLabel")}];
      *(v19 + 112) = [v5 _sampleBufferVideoRenderer];
    }

    FigObjectRecordMethodCallsForObject();
  }

LABEL_31:
  v12 = [*(v19 + 112) _STSLabel];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(v19 + 72);
  result = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (result)
  {
    v15 = result;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 setSTSLabel:v12];
        }

        ++v17;
      }

      while (v15 != v17);
      result = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      v15 = result;
    }

    while (result);
  }

  return result;
}

void sub_1961C0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 88), 8);
  AVTelemetryIntervalEnd((v12 - 56));
  _Unwind_Resume(a1);
}

id avrendersynchronize_getTimebaseObserverForRenderer(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([v8 objectForKey:@"renderer"] == a1)
        {
          v4 = [v8 objectForKey:@"onceTimebaseObserver"];
          return v4;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

id avrendersynchronize_getClientCompletionHandlerForRenderer(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([v8 objectForKey:@"renderer"] == a1)
        {
          v4 = [v8 objectForKey:@"clientCompletionHandler"];
          return v4;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

uint64_t avrendersynchronize_removeTimebaseObserverForRenderer(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        result = [v8 objectForKey:@"renderer"];
        if (result == a1)
        {
          if (v8)
          {
            return [a2 removeObject:v8];
          }

          return result;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1961C132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void avrendersynchronize_performRendererRemoval(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v17 = 0;
  TimebaseObserverForRenderer = avrendersynchronize_getTimebaseObserverForRenderer(a2, *(v4 + 80));
  ClientCompletionHandlerForRenderer = avrendersynchronize_getClientCompletionHandlerForRenderer(a2, *(v4 + 80));
  avrendersynchronize_removeTimebaseObserverForRenderer(a2, *(v4 + 80));
  [a2 copyFigSampleBufferAudioRenderer:&v17];
  [a2 setRenderSynchronizer:0 error:0];
  [*(v4 + 72) removeObject:a2];
  v7 = [AVSampleBufferRenderSynchronizer _videoRendererForRenderer:a2];
  if (v7)
  {
    v8 = v7;
    [*(v4 + 120) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v7)}];
    if (v8 == *(v4 + 112))
    {
      *(v4 + 112) = 0;
    }
  }

  current_queue = dispatch_get_current_queue();
  v10 = *(v4 + 64);
  if (current_queue == v10)
  {
    avrendersynchronize_electRendererForSTSAndSendLabelToAudioRenderers(a1);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __avrendersynchronize_performRendererRemoval_block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = a1;
    dispatch_sync(v10, block);
  }

  v11 = *(v4 + 96);
  v12 = *(v4 + 64);
  if (v11)
  {
    CFRetain(*(v4 + 96));
  }

  if (v17)
  {
    CFRetain(v17);
  }

  dispatch_retain(v12);
  v13 = TimebaseObserverForRenderer;
  v14 = *(v4 + 88);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __avrendersynchronize_performRendererRemoval_block_invoke_2;
  v15[3] = &unk_1E7465B18;
  v15[7] = v17;
  v15[8] = v11;
  v15[5] = TimebaseObserverForRenderer;
  v15[6] = ClientCompletionHandlerForRenderer;
  v15[4] = v12;
  dispatch_async(v14, v15);
  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_1961C1B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961C1BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void sub_1961C1CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AVTelemetryIntervalEnd(va);
  _Unwind_Resume(a1);
}

void __avrendersynchronize_performRendererRemoval_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3, v2);
    }
  }

  if (*(a1 + 48))
  {
    v5 = objc_autoreleasePoolPush();
    (*(*(a1 + 48) + 16))();
    objc_autoreleasePoolPop(v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __avrendersynchronize_performRendererRemoval_block_invoke_3;
  block[3] = &unk_1E7460C00;
  v6 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v6, block);
  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  dispatch_release(*(a1 + 32));
}

void __avrendersynchronize_performRendererRemoval_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
}

uint64_t publicCriteriaAreExceptional(void *a1, void *a2, void *a3, void *a4, __CFString **a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [a1 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(a1);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [a1 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!a5)
    {
      return 1;
    }

    v26 = @"preferredLanguages must contain only items of type NSString";
  }

  else
  {
LABEL_9:
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [a2 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
LABEL_11:
      v17 = 0;
      while (1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(a2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [a2 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v15)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      if (!a5)
      {
        return 1;
      }

      v26 = @"preferredMediaCharacteristics must contain only items of type NSString";
    }

    else
    {
LABEL_17:
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [a3 countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
LABEL_19:
        v21 = 0;
        while (1)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(a3);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [a3 countByEnumeratingWithState:&v31 objects:v44 count:16];
            if (v19)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }

        if (!a5)
        {
          return 1;
        }

        v26 = @"principalMediaCharacteristics must contain only items of type NSString";
      }

      else
      {
LABEL_25:
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        result = [a4 countByEnumeratingWithState:&v27 objects:v43 count:16];
        if (!result)
        {
          return result;
        }

        v23 = result;
        v24 = *v28;
LABEL_27:
        v25 = 0;
        while (1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(a4);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [a4 countByEnumeratingWithState:&v27 objects:v43 count:16];
            result = 0;
            if (v23)
            {
              goto LABEL_27;
            }

            return result;
          }
        }

        if (!a5)
        {
          return 1;
        }

        v26 = @"premiumMediaCharacteristics must contain only items of type NSString";
      }
    }
  }

  *a5 = v26;
  return 1;
}

void sub_1961C5108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961C5268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1961C53F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961C55F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1961C5770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961C58D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t timeline_WrapSegment(uint64_t a1)
{
  v2 = [AVPlayerItemSegment alloc];

  return [(AVPlayerItemSegment *)v2 _initWithFigSegment:a1];
}

void avitemintegratedtimeline_fpNotificationCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (CFEqual(a3, *MEMORY[0x1E6971E88]))
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6971E70]), "integerValue"}];
    v11 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6971E68]), "BOOLValue"}];
    v12 = @"AVPlayerIntegratedTimelineSnapshotsOutOfSyncReasonSegmentsChanged";
    if (v10 == 2)
    {
      v12 = @"AVPlayerIntegratedTimelineSnapshotsOutOfSyncReasonCurrentSegmentChanged";
    }

    if (v10 == 3)
    {
      v13 = @"AVPlayerIntegratedTimelineSnapshotsOutOfSyncReasonLoadedTimeRangesChanged";
    }

    else
    {
      v13 = v12;
    }

    [v9 setObject:v13 forKey:@"AVPlayerIntegratedTimelineSnapshotsOutOfSyncReasonKey"];
    [a2 _issueCachedSeekIfNecessary];
    if (v10 != 2 && v11 == 0)
    {
      if (v10 == 1)
      {
        [a2 _ensureObserversHandleSnapshotSegmentsChanged];
      }
    }

    else
    {
      if ([a2 _currentSegmentTypeOfCurrentSnapshot])
      {
        v15 = [objc_msgSend(a2 "_interstitialPlayer")];
      }

      else
      {
        v15 = [a2 _primaryItem];
      }

      [a2 _ensureObserversAreScheduledForItem:v15];
    }

    v19 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerIntegratedTimelineSnapshotsOutOfSyncNotification" object:a2 userInfo:v9];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  else
  {
    if (CFEqual(a3, *MEMORY[0x1E6971E78]))
    {
      v16 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6971E60]), "integerValue"}];
      v17 = a2;
      v18 = 1;
    }

    else
    {
      if (!CFEqual(a3, *MEMORY[0x1E6971E80]))
      {
        goto LABEL_23;
      }

      v16 = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E6971E60]), "integerValue"}];
      v17 = a2;
      v18 = 0;
    }

    [v17 _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:v16 finished:v18];
  }

LABEL_23:

  objc_autoreleasePoolPop(v8);
}

void avitemintegratedtimeline_interstitialPlayer_fpNotificationCallback(uint64_t a1, void *a2, const void *a3, void *a4, void *a5)
{
  v9 = objc_autoreleasePoolPush();
  if (CFEqual(a3, @"AVPlayerCurrentItemDidChangeNotification") && [objc_msgSend(a5 objectForKey:{@"ReasonForCurrentItemDidChange", "isEqual:", @"ReasonAdvanceAtEnd"}] && objc_msgSend(a2, "_currentSegmentTypeOfCurrentSnapshot") == 1)
  {
    [a2 _ensureObserversAreScheduledForItem:{objc_msgSend(a4, "currentItem")}];
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1961C8B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_1961CBC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961D00C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __figEndpointNotificationCallback_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{@"ExternalDevice_ScreenBecameAvailable", *MEMORY[0x1E6961708], @"ExternalDevice_ScreenBecameUnavailable", *MEMORY[0x1E6961710], @"ExternalDevice_OwnsTurnByTurnNavigationChangedNotification", *MEMORY[0x1E6961720], @"ExternalDevice_NightModeChangedNotification", *MEMORY[0x1E6961990], @"ExternalDevice_LimitedUIChangedNotification", *MEMORY[0x1E6961980], @"ExternalDevice_PerformanceReportNotificationPosted", *MEMORY[0x1E6961998], 0}];
  figEndpointNotificationCallback_figToAVFNotificationMapping = result;
  return result;
}

void __figEndpointNotificationCallback_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {

    *(*(a1 + 32) + 48) = 0;
  }
}

void __figEndpointNotificationCallback_block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setObject:*(a1 + 40) forKeyedSubscript:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"uuid"}];
  if (*(a1 + 48) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 48) setViewAreaIndex:objc_msgSend(objc_msgSend(*(a1 + 40) andAdjacentViewAreas:"objectForKeyedSubscript:" forScreenID:{@"viewAreaIndex", "integerValue"), objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"adjacentViewAreas", objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"uuid"}];
  }

  v2 = *(a1 + 56);
}

uint64_t FigVideoCompositorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigVideoCompositorGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(FigBaseObject, a2, a3);
}

void sub_1961D2044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961D239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 256), 8);
  _Block_object_dispose((v29 - 208), 8);
  _Block_object_dispose((v29 - 176), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void _customCompositorPropertyChangedNotificationReceived(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _customCompositorFigPropertyDidChange];

  objc_autoreleasePoolPop(v3);
}

uint64_t _customCompositorShouldCancelPendingFramesCallback(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _customCompositorShouldCancelPendingFrames];
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  objc_autoreleasePoolPop(v2);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___customCompositorShouldCancelPendingFramesCallback_block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = v4;
  dispatch_async(global_queue, block);
  return v5;
}

uint64_t _customCompositorShouldAnticipateRendering(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_msgSend(+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  v12 = v11;
  if (v11)
  {
    v24 = *a2;
    v25 = *(a2 + 2);
    v22 = *a3;
    v23 = *(a3 + 2);
    v20 = *a4;
    v21 = *(a4 + 2);
    v18 = *a5;
    v19 = *(a5 + 2);
    v13 = [v11 _customCompositorShouldAnticipateRenderingFromTime:&v24 toTime:&v22 andThenFromTime:&v20 toTime:&v18];
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  objc_autoreleasePoolPop(v10);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___customCompositorShouldAnticipateRendering_block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = v12;
  dispatch_async(global_queue, block);
  return v13;
}

uint64_t _customCompositorShouldPrerollForRendering(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, int a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_msgSend(+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  v14 = v13;
  if (v13)
  {
    v26 = *a2;
    v27 = *(a2 + 2);
    v24 = *a3;
    v25 = *(a3 + 2);
    v22 = *a4;
    v23 = *(a4 + 2);
    v20 = *a5;
    v21 = *(a5 + 2);
    v15 = [v13 _customCompositorShouldPrerollForRenderingFromTime:&v26 toTime:&v24 andThenFromTime:&v22 toTime:&v20 requestID:a6];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  objc_autoreleasePoolPop(v12);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___customCompositorShouldPrerollForRendering_block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = v14;
  dispatch_async(global_queue, block);
  return v15;
}

uint64_t _customCompositorShouldRenderFrameFromWindowCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_msgSend(+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
  v14 = v13;
  if (v13)
  {
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    if (a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F8];
    }

    v22 = *a5;
    v23 = *(a5 + 2);
    v17 = [v13 _compositionFrame:a6 atTime:&v22 requiresRenderUsingSources:v15 requiresSampleBuffersUsingSources:v16 withInstruction:a4];
  }

  else
  {
    v17 = 0;
  }

  v18 = v14;
  objc_autoreleasePoolPop(v12);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___customCompositorShouldRenderFrameFromWindowCallback_block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = v14;
  dispatch_async(global_queue, block);
  return v17;
}

__n128 OUTLINED_FUNCTION_1_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, unint64_t a10)
{
  result = a9;
  *v10 = a9;
  v10[1].n128_u64[0] = a10;
  return result;
}

AVTwoPartKeyPath *AVTwoPartKeyPathMake(uint64_t a1, uint64_t a2)
{
  v2 = [[AVTwoPartKeyPath alloc] initWithTopLevelPropertyKey:a1 secondLevelPropertyKey:a2];

  return v2;
}

AVMovieInternal *_createMovieStorageWithLoader(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v3 = objc_alloc_init(AVMovieInternal);
    v4 = v3;
    if (v3)
    {
      objc_storeStrong(&v3->loader, a1);
      v5 = objc_alloc_init(AVDispatchOnce);
      makeTracksArrayOnce = v4->makeTracksArrayOnce;
      v4->makeTracksArrayOnce = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _movieOptionsDictionaryToFigAssetOptionsDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v5 = [v3 objectForKey:@"AVMovieReferenceRestrictionsKey"];
  v6 = figAssetCreationFlagsForAssetReferenceRestrictionsAsNumber(v5);
  ShouldPreferNominalDurations = AVAssetShouldPreferNominalDurations(v3, @"AVAssetPreferNominalDurationsKey");
  v8 = *MEMORY[0x1E695E4D0];
  [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971020]];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:v8 forKey:*MEMORY[0x1E6971A28]];
  [v4 setObject:v9 forKey:*MEMORY[0x1E6970FD8]];
  v10 = [v3 objectForKey:@"AVMovieShouldPrepareToOptimizeForExclusivePlaybackKey"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    [v4 setObject:v8 forKey:*MEMORY[0x1E69710A8]];
  }

  v12 = [v3 objectForKey:@"AVMovieShouldSupportAliasDataReferencesKey"];
  if (v12)
  {
    [v4 setObject:v12 forKey:*MEMORY[0x1E69710F8]];
  }

  v13 = [v3 objectForKey:0x1F0A8DA50];
  if (v13)
  {
    [v4 setObject:v13 forKey:*MEMORY[0x1E69710B0]];
  }

  v14 = v6 | 0x100;
  if (!ShouldPreferNominalDurations)
  {
    v14 = v6;
  }

  *a2 |= v14;

  return v4;
}

void sub_1961D8378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AVMovie;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _figOptionsFromAVMovieOptions(void *a1)
{
  v1 = a1;
  if (AVAssetShouldPreferNominalDurations(v1, @"AVAssetPreferNominalDurationsKey"))
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v1];
    [v2 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6971FF8]];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t _configureFigObjects(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1 && (v4 = *a1) != 0)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(v4, 0, 0, a1 + 1);
      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v35 = 0;
        v7 = _movieOptionsDictionaryToFigAssetOptionsDictionary(v3, &v35);
        v8 = *MEMORY[0x1E695E480];
        v6 = FigAssetRemoteCreateWithFormatReader();
        if (!v6)
        {
          cf = 0;
          CMBaseObject = FigAssetGetCMBaseObject();
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v10)
          {
            v10(CMBaseObject, *MEMORY[0x1E6971308], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v11 = FigAssetGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(v11, *MEMORY[0x1E6973820], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v13 = FigAssetGetCMBaseObject();
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(v13, *MEMORY[0x1E69711A8], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v15 = FigAssetGetCMBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v16)
          {
            v16(v15, *MEMORY[0x1E6973810], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v17 = FigAssetGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v18)
          {
            v18(v17, *MEMORY[0x1E6973838], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v19 = FigAssetGetCMBaseObject();
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v20)
          {
            v20(v19, *MEMORY[0x1E69711B0], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v21 = FigAssetGetCMBaseObject();
          v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v22)
          {
            v22(v21, *MEMORY[0x1E69712E0], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v23 = FigAssetGetCMBaseObject();
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v24(v23, *MEMORY[0x1E69712D8], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v25 = FigAssetGetCMBaseObject();
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v26)
          {
            v26(v25, *MEMORY[0x1E6971268], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v27 = FigAssetGetCMBaseObject();
          v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v28)
          {
            v28(v27, *MEMORY[0x1E6971310], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v29 = FigAssetGetCMBaseObject();
          v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v30)
          {
            v30(v29, *MEMORY[0x1E6971258], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v31 = FigAssetGetCMBaseObject();
          v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v32)
          {
            v32(v31, *MEMORY[0x1E6971248], v8, &cf);
          }

          if (cf)
          {
            CFRelease(cf);
            v6 = 0;
            cf = 0;
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }

    else
    {
      v7 = 0;
      v6 = 4294954514;
    }
  }

  else
  {
    v7 = 0;
    v6 = 4294954516;
  }

  return v6;
}

AVMutableMovieInternal *_createMutableMovieStorageWithFigObjects(uint64_t a1)
{
  v2 = objc_alloc_init(AVMutableMovieInternal);
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    trackWaitingSemaphore = v2->trackWaitingSemaphore;
    v2->trackWaitingSemaphore = v3;

    if (v2->trackWaitingSemaphore)
    {
      v5 = dispatch_semaphore_create(0);
      metadataWaitingSemaphore = v2->metadataWaitingSemaphore;
      v2->metadataWaitingSemaphore = v5;

      if (v2->metadataWaitingSemaphore)
      {
        v7 = *a1;
        if (*a1)
        {
          v7 = CFRetain(v7);
        }

        v2->figMutableMovie = v7;
        v8 = *(a1 + 8);
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        v2->formatReader = v8;
        v9 = *(a1 + 16);
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v2->figAsset = v9;
        v10 = objc_alloc_init(AVDispatchOnce);
        makeTracksArrayOnce = v2->makeTracksArrayOnce;
        v2->makeTracksArrayOnce = v10;
      }
    }
  }

  return v2;
}

void sub_1961DA838(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1961DAB84(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void mutableMovieNotificationHandler(uint64_t a1, void *a2, const void *a3, uint64_t a4, void *a5)
{
  v10 = a2;
  if (v10)
  {
    if (a3)
    {
      v7 = CFEqual(a3, *MEMORY[0x1E6970EC0]);
      if (a5)
      {
        if (v7)
        {
          v8 = [a5 objectForKey:*MEMORY[0x1E6971160]];
          v9 = v8;
          if (v8)
          {
            if ([v8 isEqualToString:*MEMORY[0x1E6971308]])
            {
              [v10 _signalTracksUpdated];
            }

            if (([v9 isEqualToString:*MEMORY[0x1E69711B0]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69712E0]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69712D8]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E6971268]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E6971310]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E6971258]) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E6971248]))
            {
              [v10 _signalMetadataUpdated];
            }
          }
        }
      }
    }
  }
}

void sub_1961DAFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AVMutableMovie;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  *v3 = *x8_0;
  *(v3 + 16) = *(x8_0 + 16);

  return [a1 _figMutableMovie];
}

uint64_t __runningAnInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  runningAnInternalBuild_internalBuild = result;
  return result;
}

void __getDisplayScale_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v2 = v0;
    [v0 floatValue];
    *&sMaxDisplayScale = v1;
  }
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v6 = aspectRatio.height;
  v7 = aspectRatio.width;
  v16 = boundingRect.size.width / aspectRatio.width;
  v8 = boundingRect.size.height / aspectRatio.height;
  MidX = CGRectGetMidX(boundingRect);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);
  v11 = fmin(v16, v8);
  v12 = v7 * v11;
  v13 = v6 * v11;
  v14 = MidY + v6 * v11 * -0.5;
  v15 = MidX + v12 * -0.5;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

void sub_1961E6420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void avcks_didProvideKeyRequest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a6];
  [a1 didProvideKeyRequestWithBoss:a2 keySpecifier:a3 requestID:a4 renewalRequest:0 supportsOfflineKey:a5 != 0 originatingRecipientIdentifier:v13];

  objc_autoreleasePoolPop(v12);
}

void avcks_didProvideRenewalKeyRequest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a6];
  [a1 didProvideKeyRequestWithBoss:a2 keySpecifier:a3 requestID:a4 renewalRequest:1 supportsOfflineKey:a5 != 0 originatingRecipientIdentifier:v13];

  objc_autoreleasePoolPop(v12);
}

void avcks_didUpdatePersistableKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  [a1 _handleUpdateToPersistentKey:a4 forKeyIdentifier:FigContentKeySpecifierGetIdentifier()];

  objc_autoreleasePoolPop(v6);
}

void avcks_contentKeyRequestDidSucceed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  [a1 contentKeyRequestDidSucceedWithBoss:a2 keySpecifier:a3 requestID:a4 cryptor:a5];

  objc_autoreleasePoolPop(v10);
}

void avcks_contentKeyRequestDidFail(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  [objc_msgSend(a1 keyRequestByID:{a4), "_handleKeyResponseError:", a5}];
  [a1 removeResourcesForID:a4];

  objc_autoreleasePoolPop(v8);
}

void avcks_externalProtectionStateChangedCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  [a1 externalProtectionStateChangedCallbackWithBoss:a2 keySpecifier:a3];

  objc_autoreleasePoolPop(v6);
}

void sub_1961E739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_1961E7DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1961E8568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961EA050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961EAB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961EC188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961EC430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void customURLHandlerHandleRequestCallback_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  v15 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 _handleRequest:a3 withRequestID:a4 fromHandler:a2 willHandleRequest:&v15];
    v13 = 0;
    v14 = v15;
  }

  else
  {
    customURLHandlerHandleRequestCallback_cold_1_0(&v16);
    v14 = 0;
    v13 = v16;
  }

  a5(a6, v14, v13);
  objc_autoreleasePoolPop(v12);
}

void sub_1961EC7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1961EE088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1961EE1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void avckrg_keyResponseErrorCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a1 "_contentKeySession")];
  }

  else
  {
    avckrg_keyResponseErrorCallback_cold_1();
  }

  objc_autoreleasePoolPop(v8);
}

void avckrg_keyResponseSuccessfullyProcessedCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a1 "_contentKeySession")];
  }

  else
  {
    avckrg_keyResponseSuccessfullyProcessedCallback_cold_1();
  }

  objc_autoreleasePoolPop(v6);
}

void avckrg_persistentKeyUpdatedCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a1 "_contentKeySession")];
  }

  else
  {
    avckrg_persistentKeyUpdatedCallback_cold_1();
  }

  objc_autoreleasePoolPop(v6);
}

void avckrg_secureStopDidFinalizeRecordCallback(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a1 "_contentKeySession")];
  }

  else
  {
    avckrg_secureStopDidFinalizeRecordCallback_cold_1();
  }

  objc_autoreleasePoolPop(v2);
}

void avckrg_externalProtectionStateChangedCallback(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a1 "_contentKeySession")];
  }

  else
  {
    avckrg_externalProtectionStateChangedCallback_cold_1();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1961EE7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

BOOL AVSampleBufferAttachContentKey(CMSampleBufferRef sbuf, AVContentKey *contentKey, NSError **outError)
{
  v3 = [(AVContentKey *)contentKey _cryptorForFormatDescription:CMSampleBufferGetFormatDescription(sbuf) error:outError];
  if (v3)
  {
    FigSampleBufferSetDecryptor();
  }

  return v3 != 0;
}

void __clientCanDecryptContentKey_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.coremedia.allow-fps-attachment", 0);
  clientCanDecryptContentKey_browserEngineAllowedToDecrypt = FigIsSecTaskGPUExtensionOfBrowserEngine() | (v1 == *MEMORY[0x1E695E4D0]);
  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v12 = *(*(*(v8 + 40) + 8) + 48);

  return [v12 createCryptorIfNecessaryForIdentifier:a1 initializationData:0 formatDescription:0 hlsMethod:v9 error:va];
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return [AVContentKeyRequest _prepareCryptor:v4 forRenewal:0 andReturnKeyRequestID:va isInchargeOfKeyRequest:0 error:va1];
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return [v3 issueContentKeyRequestWithCustomURLHandler:v1 identifier:a1 requestInfo:v2 requestID:v4 providesPersistableKey:0];
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return PKDPersistentKeyIsForCTRModeDecryption();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return [a1 initWithContentKeySession:v7 reportGroup:a4 identifier:v9 contentIdentifier:v10 keyIDFromInitializationData:a7 initializationData:v8 preloadingRequestOptions:? providesPersistableKey:?];
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return [v3 _sendFinishLoadingForPreloadedKeyRequest:v2 withRequestID:v4 fromHandler:v1 error:a1];
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return [v27 countByEnumeratingWithState:&a17 objects:&a27 count:16];
}

BOOL OUTLINED_FUNCTION_24(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_25(signed int a1, uint64_t a2, void *a3)
{

  return AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(a1, 0, a3, 1);
}

uint64_t OUTLINED_FUNCTION_26()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void sub_1961EFBCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 120));
  _Unwind_Resume(a1);
}

void sub_1961F00A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961F0318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961F058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1961F0934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

SEL __AVRouteDetectorShouldAppBeConsideredForeground_block_invoke()
{
  AVRouteDetectorShouldAppBeConsideredForeground_uiApplicationClass = NSClassFromString(&cfstr_Uiapplication.isa);
  AVRouteDetectorShouldAppBeConsideredForeground_sharedApplicationSelector = NSSelectorFromString(&cfstr_Sharedapplicat.isa);
  result = NSSelectorFromString(&cfstr_Applicationsta.isa);
  AVRouteDetectorShouldAppBeConsideredForeground_applicationStateSelector = result;
  return result;
}

Class initDADiscoveryConfiguration()
{
  if (DeviceAccessLibrary_sOnce != -1)
  {
    initDADiscoveryConfiguration_cold_1();
  }

  result = objc_getClass("DADiscoveryConfiguration");
  classDADiscoveryConfiguration = result;
  getDADiscoveryConfigurationClass = DADiscoveryConfigurationFunction;
  return result;
}

void *__DeviceAccessLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/DeviceAccess.framework/DeviceAccess", 2);
  DeviceAccessLibrary_sLib = result;
  return result;
}

Class initDADiscovery()
{
  if (DeviceAccessLibrary_sOnce != -1)
  {
    initDADiscoveryConfiguration_cold_1();
  }

  result = objc_getClass("DADiscovery");
  classDADiscovery = result;
  getDADiscoveryClass = DADiscoveryFunction;
  return result;
}

uint64_t _figManifoldDiscoveredNewTrackInStream(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = AVStringForOSType(a3);

  return [a2 _figManifold:a1 discoveredNewTrackID:a4 mediaType:v7];
}

uint64_t sub_1961F4E98()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1961F68E8();
  sub_1961FA8C8(KeyPath, v1, v65);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v2;
  sub_1961F666C(v65, 0x74416E6F69746361, 0xEF646E456D657449, isUniquelyReferenced_nonNull_native);
  v4 = *&v85[0];
  v5 = swift_getKeyPath();
  sub_1961FA8C8(v5, v1, v66);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v4;
  sub_1961F666C(v66, 0xD000000000000016, 0x80000001962575C0, v6);
  v7 = *&v85[0];
  v8 = swift_getKeyPath();
  sub_1961FA8C8(v8, v1, v67);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v7;
  sub_1961F666C(v67, 0xD00000000000002ALL, 0x8000000196257600, v9);
  v10 = *&v85[0];
  v11 = swift_getKeyPath();
  sub_1961FA8C8(v11, v1, v68);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v10;
  sub_1961F666C(v68, 0xD000000000000023, 0x8000000196257660, v12);
  v13 = *&v85[0];
  v14 = swift_getKeyPath();
  sub_1961FA8C8(v14, v1, v69);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v13;
  sub_1961F666C(v69, 0xD000000000000024, 0x80000001962576B0, v15);
  v16 = *&v85[0];
  v17 = swift_getKeyPath();
  sub_1961FA8C8(v17, v1, v70);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v16;
  sub_1961F666C(v70, 0x49746E6572727563, 0xEB000000006D6574, v18);
  v19 = *&v85[0];
  v20 = swift_getKeyPath();
  sub_1961FA8C8(v20, v1, v71);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v19;
  sub_1961F666C(v71, 0x52746C7561666564, 0xEB00000000657461, v21);
  v22 = *&v85[0];
  v23 = swift_getKeyPath();
  sub_1961FA8C8(v23, v1, v72);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v22;
  sub_1961F666C(v72, 0x726F727265, 0xE500000000000000, v24);
  v25 = *&v85[0];
  v26 = swift_getKeyPath();
  sub_1961FA8C8(v26, v1, v73);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v25;
  sub_1961F666C(v73, 0xD00000000000001CLL, 0x80000001962577A0, v27);
  v28 = *&v85[0];
  v29 = swift_getKeyPath();
  sub_1961FA8C8(v29, v1, v74);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v28;
  sub_1961F666C(v74, 0xD000000000000018, 0x8000000196257190, v30);
  v31 = *&v85[0];
  v32 = swift_getKeyPath();
  sub_1961FA8C8(v32, v1, v75);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v31;
  sub_1961F666C(v75, 0x646574754D7369, 0xE700000000000000, v33);
  v34 = *&v85[0];
  v35 = swift_getKeyPath();
  sub_1961FA8C8(v35, v1, v76);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v34;
  sub_1961F666C(v76, 0xD000000000000033, 0x80000001962571B0, v36);
  v37 = *&v85[0];
  v38 = swift_getKeyPath();
  sub_1961FA8C8(v38, v1, v77);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v37;
  sub_1961F666C(v77, 0xD000000000000027, 0x80000001962578C0, v39);
  v40 = *&v85[0];
  v41 = swift_getKeyPath();
  sub_1961FA8C8(v41, v1, v78);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v40;
  sub_1961F666C(v78, 1702125938, 0xE400000000000000, v42);
  v43 = *&v85[0];
  v44 = swift_getKeyPath();
  sub_1961FA8C8(v44, v1, v79);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v43;
  sub_1961F666C(v79, 0xD000000000000016, 0x8000000196257940, v45);
  v46 = *&v85[0];
  v47 = swift_getKeyPath();
  sub_1961FA8C8(v47, v1, v80);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v46;
  sub_1961F666C(v80, 0x6C43656372756F73, 0xEB000000006B636FLL, v48);
  v49 = *&v85[0];
  v50 = swift_getKeyPath();
  sub_1961FA8C8(v50, v1, v81);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v49;
  sub_1961F666C(v81, 0x737574617473, 0xE600000000000000, v51);
  v52 = *&v85[0];
  v53 = swift_getKeyPath();
  sub_1961FA8C8(v53, v1, v82);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v52;
  sub_1961F666C(v82, 0xD000000000000011, 0x80000001962579E0, v54);
  v55 = *&v85[0];
  v56 = swift_getKeyPath();
  sub_1961FA8C8(v56, v1, v83);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v55;
  sub_1961F666C(v83, 0xD00000000000002FLL, 0x8000000196257A20, v57);
  v58 = *&v85[0];
  v59 = swift_getKeyPath();
  sub_1961FA8C8(v59, v1, v84);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v85[0] = v58;
  sub_1961F666C(v84, 0x74754F6F65646976, 0xEB00000000747570, v60);
  v61 = *&v85[0];
  v62 = swift_getKeyPath();
  sub_1961FA8C8(v62, v1, v85);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1961F666C(v85, 0x656D756C6F76, 0xE600000000000000, v63);
  qword_1EAEFD4F8 = v61;
  return result;
}

id sub_1961F5550@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionAtItemEnd];
  *a2 = result;
  return result;
}

id sub_1961F5598@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowsExternalPlayback];
  *a2 = result;
  return result;
}

id sub_1961F55E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 appliesMediaSelectionCriteriaAutomatically];
  *a2 = result;
  return result;
}

id sub_1961F5628@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audiovisualBackgroundPlaybackPolicy];
  *a2 = result;
  return result;
}

id sub_1961F5670@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticallyWaitsToMinimizeStalling];
  *a2 = result;
  return result;
}

id sub_1961F56B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

id sub_1961F56F4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 defaultRate];
  *a2 = v4;
  return result;
}

id sub_1961F573C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 error];
  *a2 = result;
  return result;
}

id sub_1961F5778@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 externalPlaybackVideoGravity];
  *a2 = result;
  return result;
}

id sub_1961F57C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExternalPlaybackActive];
  *a2 = result;
  return result;
}

id sub_1961F57FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMuted];
  *a2 = result;
  return result;
}

id sub_1961F5844@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 outputObscuredDueToInsufficientExternalProtection];
  *a2 = result;
  return result;
}