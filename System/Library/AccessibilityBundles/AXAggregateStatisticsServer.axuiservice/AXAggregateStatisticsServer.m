void sub_1454(id a1)
{
  qword_24C20 = objc_alloc_init(AXAggregateStatisticsServer);

  _objc_release_x1();
}

void sub_1614(id a1)
{
  qword_24C30 = objc_alloc_init(AXAggregateStatistics);

  _objc_release_x1();
}

id sub_1E8C(uint64_t a1)
{
  v4 = @"overlay";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_1F40(uint64_t a1)
{
  v5 = @"enabled";
  v1 = [*(a1 + 32) vocabularyEntries];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 count] != 0);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_2018(uint64_t a1)
{
  v4 = @"disabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_20CC(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSAssistiveTouchScannerEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_2184(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSAssistiveTouchEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_223C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSZoomTouchEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_22F4(uint64_t a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2888(uint64_t a1)
{
  v7[0] = @"HasCustomTone";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[0] = v2;
  v7[1] = @"HasCustomHaptic";
  v3 = [NSNumber numberWithBool:*(a1 + 41)];
  v7[2] = @"Detector";
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id sub_2BE4(uint64_t a1)
{
  v14[0] = @"category";
  v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v15[0] = v13;
  v14[1] = @"isEnabled";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isEnabled]);
  v15[1] = v2;
  v14[2] = @"isModelReady";
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isModelReady]);
  v15[2] = v3;
  v14[3] = @"modelFailed";
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) modelFailed]);
  v15[3] = v4;
  v14[4] = @"isTrainingComplete";
  if ([*(a1 + 32) isModelReady] & 1) != 0 || (objc_msgSend(*(a1 + 32), "modelFailed"))
  {
    v5 = 0;
    v6 = &__kCFBooleanTrue;
  }

  else
  {
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isTrainingComplete]);
    v5 = 1;
  }

  v15[4] = v6;
  v14[5] = @"hasCustomHaptic";
  v7 = +[AXSDSettings sharedInstance];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 hasCustomHapticForKshotDetector:*(a1 + 32)]);
  v15[5] = v8;
  v14[6] = @"hasCustomTone";
  v9 = +[AXSDSettings sharedInstance];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 hasCustomToneForKshotDetector:*(a1 + 32)]);
  v15[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:7];

  if (v5)
  {
  }

  return v11;
}

id sub_3074(uint64_t a1)
{
  v7[0] = @"HasCustomTone";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[0] = v2;
  v7[1] = @"HasCustomHaptic";
  v3 = [NSNumber numberWithBool:*(a1 + 41)];
  v7[2] = @"Detector";
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_332C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3348(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3360(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 source];
  v4 = [v3 isEqualToString:SCATSwitchSourceSound];

  if (v4)
  {
    v5 = [v8 accessibilityEventUsage];
    if ((v5 - 1) <= 0xD)
    {
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = *(&off_1D938 + (v5 - 1));
    }
  }
}

void sub_3B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_3B80(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 source];
  v4 = [v3 isEqualToString:SCATSwitchSourceBackTap];

  if (v4)
  {
    if ([v5 accessibilityEventUsage] == &dword_0 + 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    if ([v5 accessibilityEventUsage] == &dword_0 + 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

id sub_3C34(uint64_t a1)
{
  v8[0] = @"enabled";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"client";
  v8[2] = @"doubletap";
  v4 = [NSNumber numberWithBool:*(a1 + 41)];
  v9[2] = v4;
  v8[3] = @"tripletap";
  v5 = [NSNumber numberWithBool:*(a1 + 42)];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id sub_3D4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"action";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_3DD0(uint64_t a1)
{
  v4 = @"backtapUsageCount";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_4468(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"peopleDetectionEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_452C(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"doorDetectionEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_45F0(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"doorDetectionDecorations"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_46B4(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"doorDetectionAttributes"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_4778(uint64_t a1)
{
  v22[0] = @"approach";
  v21 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 containsString:@"0"]);
  v23[0] = v20;
  v22[1] = @"color";
  v19 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 containsString:@"1"]);
  v23[1] = v18;
  v22[2] = @"doorHandle";
  v17 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 containsString:@"2"]);
  v23[2] = v16;
  v22[3] = @"openMethod";
  v15 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 containsString:@"3"]);
  v23[3] = v14;
  v22[4] = @"openState";
  v13 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 containsString:@"4"]);
  v23[4] = v12;
  v22[5] = @"shape";
  v2 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 containsString:@"5"]);
  v23[5] = v3;
  v22[6] = @"size";
  v4 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 containsString:@"6"]);
  v23[6] = v5;
  v22[7] = @"window";
  v6 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 containsString:@"7"]);
  v23[7] = v7;
  v22[8] = @"material";
  v8 = [*(a1 + 32) valueForKey:@"selectedAttributes"];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 containsString:@"8"]);
  v23[8] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:9];

  return v10;
}

id sub_4B24(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"pointSpeakEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_4BE8(uint64_t a1)
{
  v6[0] = @"under";
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) integerForKey:@"pointSpeakFingerLocation"] == 0);
  v6[1] = @"above";
  v7[0] = v2;
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) integerForKey:@"pointSpeakFingerLocation"] == &dword_0 + 1);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_4CF8(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"textDetectionEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_4DBC(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"objectUnderstandingEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_4E80(uint64_t a1)
{
  v4 = @"detectLanguages";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:?]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_4F3C(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"savedActivityForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_5000(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"switchedActivityForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_50C4(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"readerModeEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_5188(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"readerModeSpeechEnabledForAnalytics"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_5294(id a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[AVSSettings avsFeatureEnabled]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_5354(id a1)
{
  v5 = @"numberOfEnrolledCommands";
  v1 = +[AVSStore shortcuts];
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1 count]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_5440(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isNameRecognitionEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_5560(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 accessibilityReaderEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_5638(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 accessibilityReaderAutomaticallyStartSpeaking]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_5A08(uint64_t a1)
{
  v7[0] = @"name";
  v2 = [*(a1 + 32) name];
  v8[0] = v2;
  v7[1] = @"vendorId";
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) vendorId]);
  v8[1] = v3;
  v7[2] = @"productId";
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) productId]);
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id sub_5B28(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonMap];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) buttonMap];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [*(a1 + 32) buttonMap];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v9 stringValue];
        [v3 setObject:v11 forKeyedSubscript:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

NSDictionary *__cdecl sub_5CBC(id a1)
{
  v7[0] = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchMouseKeysEnabled]);
  v7[1] = @"optionToggleEnabled";
  v8[0] = v2;
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 assistiveTouchMouseKeysOptionToggleEnabled]);
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

NSDictionary *__cdecl sub_5DDC(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchMouseDwellControlEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_605C(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedChar:_AXSPointerAllowAppCustomizationEnabled(), @"allowAppCustomization"];
  v18[0] = v2;
  v17[1] = @"inertia";
  v3 = [NSNumber numberWithUnsignedChar:_AXSPointerInertiaEnabled()];
  v18[1] = v3;
  v17[2] = @"effectScaling";
  v4 = [NSNumber numberWithUnsignedChar:_AXSPointerEffectScalingEnabled()];
  v18[2] = v4;
  v17[3] = @"sizeMultiplier";
  _AXSPointerSizeMultiplier();
  v5 = [NSNumber numberWithFloat:?];
  v18[3] = v5;
  v17[4] = @"increasedContrast";
  v6 = [NSNumber numberWithUnsignedChar:_AXSPointerIncreasedContrastEnabled()];
  v18[4] = v6;
  v17[5] = @"autoHideEnabled";
  v7 = [NSNumber numberWithUnsignedChar:_AXSPointerAutoHideEnabled()];
  v18[5] = v7;
  v17[6] = @"scaleWithZoom";
  v8 = [NSNumber numberWithUnsignedChar:_AXSPointerScaleWithZoomLevelEnabled()];
  v18[6] = v8;
  v17[7] = @"strokeColor";
  v9 = *(a1 + 40) - 1;
  if (v9 > 5)
  {
    v10 = @"None";
  }

  else
  {
    v10 = *(&off_1D9A8 + v9);
  }

  v18[7] = v10;
  v17[8] = @"doubleTapDragMode";
  v11 = [*(a1 + 32) globalDevicePreferences];
  v12 = [v11 doubleTapDragMode];
  v13 = @"disabled";
  if (v12 == &dword_0 + 1)
  {
    v13 = @"without drag lock";
  }

  if (v12 == &dword_0 + 2)
  {
    v13 = @"with drag lock";
  }

  v18[8] = v13;
  v14 = v13;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:9];

  return v15;
}

NSDictionary *__cdecl sub_62EC(id a1)
{
  v7[0] = @"speakUnderPointerEnabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSVoiceOverSpeakUnderPointerEnabled()];
  v7[1] = @"cursorOption";
  v8[0] = v1;
  v2 = _AXSPointerVoiceOverCursorOption();
  v3 = @"Ignore";
  if (v2 == 1)
  {
    v3 = @"Follow";
  }

  if (v2 == 2)
  {
    v3 = @"Move";
  }

  v8[1] = v3;
  v4 = v3;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

NSDictionary *__cdecl sub_63F4(id a1)
{
  v7 = @"style";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchMouseZoomPanningStyle];
  v3 = @"Continuous";
  if (v2 == &dword_0 + 1)
  {
    v3 = @"Centered";
  }

  if (v2 == &dword_0 + 2)
  {
    v3 = @"Edges";
  }

  v8 = v3;
  v4 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_66CC(id a1)
{
  v1 = [NSUserDefaults alloc];
  v2 = [v1 initWithSuiteName:AX_SpringBoardBundleName];
  v3 = [v2 BOOLForKey:@"SBDisableCaptureButton"];

  v4 = [NSNumber numberWithInt:v3 ^ 1];
  v5 = __UIAccessibilitySafeClass();

  v6 = &__kCFBooleanTrue;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  v10 = @"enabled";
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  return v8;
}

id sub_6800(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKey:@"systemOverlay.halfPressGestureEnabled"];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &__kCFBooleanTrue;
  }

  v3 = __UIAccessibilitySafeClass();
  v6 = @"enabled";
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

id sub_68F8(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKey:@"systemOverlay.swipeToPresentEnabled"];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &__kCFBooleanTrue;
  }

  v3 = __UIAccessibilitySafeClass();
  v6 = @"enabled";
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

NSDictionary *__cdecl sub_69F0(id a1)
{
  v5 = @"sensitivity";
  v1 = +[AXSettings sharedInstance];
  [v1 cameraButtonSensitivity];
  v2 = [NSNumber numberWithDouble:?];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_6AC4(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKey:@"systemOverlay.menuToggleMaxIntervalMilliseconds"];
  v2 = [v1 intValue];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 500;
  }

  v7 = @"doubleLightPressSpeed";
  v4 = [NSNumber numberWithInt:v3];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

id sub_6BA0(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKey:@"systemOverlay.doubleClickMaxIntervalMilliseconds"];
  v2 = [v1 intValue];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 400;
  }

  v7 = @"doubleClickSpeed";
  v4 = [NSNumber numberWithInt:v3];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

id sub_6E04(uint64_t a1)
{
  v4 = @"appsNumber";
  v1 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_7BE8(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_7CA0(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverHintsEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_7D78(id a1)
{
  v5 = @"rate";
  v1 = +[AXSettings sharedInstance];
  [v1 voiceOverSpeakingRate];
  v2 = [NSNumber numberWithFloat:?];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_7E4C(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverPitchChangeEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_7F24(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverImageCaptionsEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_7FFC(id a1)
{
  v7[0] = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverAudioDuckingEnabled]);
  v7[1] = @"duckingMode";
  v8[0] = v2;
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v3 voiceOverMediaDuckingMode]);
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

id sub_811C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"gender";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_81A0(uint64_t a1)
{
  v6[0] = @"enabled";
  v2 = [NSNumber numberWithInt:_AXSAccessibilitySecureIntentProvider() != 0];
  v6[1] = @"typeIdentifier";
  v7[0] = v2;
  v3 = [NSNumber numberWithInteger:*(a1 + 32)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_828C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"filter";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8310(id a1)
{
  v4 = @"Enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSPhotosensitiveMitigationEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_83C8(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSHoverTextEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_8480(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"displayMode";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8504(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSHoverTextTypingEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_85BC(uint64_t a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8670(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSMonoAudioEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8728(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSZoomTouchEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_87E0(id a1)
{
  v8 = @"enabled";
  Current = CFAbsoluteTimeGetCurrent();
  v2 = +[AXSettings sharedInstance];
  [v2 lastSmartInvertColorsEnablement];
  v4 = Current - v3 < 86400.0 || _AXSInvertColorsEnabled() != 0;
  v5 = [NSNumber numberWithInt:v4];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v6;
}

NSDictionary *__cdecl sub_88EC(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSClosedCaptionsEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_89A4(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSEnhanceTextLegibilityEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8A5C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXDarkenSystemColors()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8B14(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSEnhanceBackgroundContrastEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8BCC(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSDifferentiateWithoutColorEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8C84(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSReduceMotionEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8D3C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSButtonShapesEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8DF4(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSAssistiveTouchScannerEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_8EAC(id a1)
{
  v6 = @"RecipesCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 switchControlRecipes];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

NSDictionary *__cdecl sub_8F94(id a1)
{
  v5 = @"ScanningStyle";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 switchControlScanningStyle]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_906C(id a1)
{
  v5 = @"TapBehavior";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 switchControlTapBehavior]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_9144(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchScannerSpeechEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_921C(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchScannerSoundEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_92F4(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchGroupElementsEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_93CC(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchScannerCursorHighVisibilityEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_94A4(uint64_t a1)
{
  v4 = @"SwitchesCount";
  v1 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_9560(uint64_t a1)
{
  v6[0] = @"isEnabled";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isEnabled]);
  v6[1] = @"gesture";
  v7[0] = v2;
  v3 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 32) accessibilityEventUsage]);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_9658(uint64_t a1)
{
  v6[0] = @"isEnabled";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isEnabled]);
  v6[1] = @"gesture";
  v7[0] = v2;
  v3 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 32) accessibilityEventUsage]);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_9750(uint64_t a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_9804(uint64_t a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_98B8(id a1)
{
  v5 = @"MultiDeviceCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 switchControlPlatformSwitchedCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_9990(uint64_t a1)
{
  v4 = @"enabled";
  v1 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) count] != 0);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_9A50(uint64_t a1)
{
  v5 = @"enabled";
  v1 = *(a1 + 40) == 1 && [*(a1 + 32) count] != 0;
  v2 = [NSNumber numberWithInt:v1];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_9B24(id a1)
{
  v5 = @"enabled";
  v1 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isClarityBoardEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_9BFC(id a1)
{
  v6 = @"numberOfApps";
  v1 = +[CLFSettings sharedInstance];
  v2 = [v1 applicationBundleIdentifiers];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

NSDictionary *__cdecl sub_9CE4(id a1)
{
  v6 = @"enabled";
  v1 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  if ([v1 isClarityBoardEnabled])
  {
    IsSiriAvailableInClarity = AXDeviceIsSiriAvailableInClarity();
  }

  else
  {
    IsSiriAvailableInClarity = 0;
  }

  v3 = [NSNumber numberWithInt:IsSiriAvailableInClarity];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

NSDictionary *__cdecl sub_9DCC(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSHearingAidComplianceEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_9E84(id a1)
{
  v8 = @"disabled";
  v1 = &_sl_dlopen_ptr;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 shouldStreamToLeftAid];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v1 = +[AXSettings sharedInstance];
    v4 = [v1 shouldStreamToRightAid] ^ 1;
  }

  v5 = [NSNumber numberWithInt:v4];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  if ((v3 & 1) == 0)
  {
  }

  return v6;
}

NSDictionary *__cdecl sub_9F90(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSEarpieceNoiseCancellationEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_A048(id a1)
{
  v6 = @"enabled";
  v1 = [sub_A12C() sharedInstance];
  v2 = [v1 pairedHearingAids];
  v3 = [NSNumber numberWithInt:v2 != 0];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

id sub_A12C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_24C88;
  v7 = qword_24C88;
  if (!qword_24C88)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_102D0;
    v3[3] = &unk_1D868;
    v3[4] = &v4;
    sub_102D0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDictionary *__cdecl sub_A20C(id a1)
{
  v5 = @"enabled";
  v1 = [sub_A12C() sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 multideviceAudioEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_A2E0(id a1)
{
  v5 = @"enabled";
  v1 = [sub_A12C() sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 multideviceSettingsEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_A3B4(id a1)
{
  v5 = @"ControlPanelCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 hearingAidControlPanelCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_A48C(id a1)
{
  v5 = @"HandoffCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 hearingAidHandOffCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_A700(id a1)
{
  qword_24C40 = [[NSArray alloc] initWithObjects:{@"UICTContentSizeCategoryXS", @"UICTContentSizeCategoryS", @"UICTContentSizeCategoryM", @"UICTContentSizeCategoryL", @"UICTContentSizeCategoryXL", @"UICTContentSizeCategoryXXL", @"UICTContentSizeCategoryXXXL", @"UICTContentSizeCategoryAccessibilityM", @"UICTContentSizeCategoryAccessibilityL", @"UICTContentSizeCategoryAccessibilityXL", @"UICTContentSizeCategoryAccessibilityXXL", @"UICTContentSizeCategoryAccessibilityXXXL", 0}];

  _objc_release_x1();
}

id sub_A7C0(uint64_t a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_A874(uint64_t a1)
{
  v4 = @"size";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_A93C(id a1)
{
  v6[0] = @"Enabled";
  _AXSSideButtonClickSpeed();
  v2 = [NSNumber numberWithInt:fabsf(v1 + -0.4) > 2.2204e-16];
  v6[1] = @"Speed";
  v7[0] = v2;
  _AXSSideButtonClickSpeed();
  v3 = [NSNumber numberWithFloat:?];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

NSDictionary *__cdecl sub_BC1C(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 voiceOverNavigateImagesOption] != &dword_0 + 1);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_BCF8(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverLargeCursorEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_BDD0(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverHandwritingEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_BEA8(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 voiceOverBrailleGesturesEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_BF80(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSVoiceOverTouchLanguageRotorItemsExist()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_C038(id a1)
{
  v6 = @"CustomPronunciationsCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 customPronunciationSubstitutions];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

id sub_C120(uint64_t a1)
{
  v4 = @"SiriPronunciationsCount";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_C1D4(id a1)
{
  v5 = @"BrailleOutput";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 voiceOverTouchBrailleDisplayOutputMode]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_C2AC(id a1)
{
  v5 = @"BrailleInput";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 voiceOverTouchBrailleDisplayInputMode]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_C384(uint64_t a1)
{
  v5 = @"BrailleTable";
  if (*(a1 + 32))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [NSNumber numberWithInt:v1];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_C444(id a1)
{
  v5 = @"BSIUsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 voiceOverBSIUsageCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_C51C(id a1)
{
  v5 = @"TypingMode";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v1 voiceOverTypingMode]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_C5F4(uint64_t a1)
{
  v4 = @"ModifierChoice";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_C6A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"voiceIdentifier";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_C72C(uint64_t a1)
{
  v6[0] = @"SpeakingRate";
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverSpeakingRate];
  v3 = [NSNumber numberWithFloat:?];
  v6[1] = @"voiceIdentifier";
  v7[0] = v3;
  v7[1] = *(a1 + 32);
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

NSDictionary *__cdecl sub_C814(id a1)
{
  v5 = @"Enabled";
  v1 = +[AXSDSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 soundDetectionEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_C8EC(uint64_t a1)
{
  v4[0] = @"DetectorEnabled";
  v4[1] = @"DetectorName";
  v1 = *(a1 + 32);
  v5[0] = &__kCFBooleanTrue;
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

NSDictionary *__cdecl sub_C984(id a1)
{
  v4 = @"Enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSHapticMusicEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_CA3C(uint64_t a1)
{
  v4 = @"Style";
  v1 = [NSNumber numberWithInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_CAF0(id a1)
{
  v5 = @"Intensity";
  v1 = +[AXSettings sharedInstance];
  [v1 hapticMusicIntensity];
  v2 = [NSNumber numberWithDouble:?];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_CBC4(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = AXLogHapticMusic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_108BC(v3, v4);
    }
  }
}

NSDictionary *__cdecl sub_CC1C(id a1)
{
  v5 = @"Enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 startupSoundEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_CCF4(id a1)
{
  v5 = @"resetCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 brokenHomeButtonCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_CDCC(uint64_t a1)
{
  v4 = @"rebooted";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) BOOLForKey:@"AXBrokenHomeButtonAlreadyRebootedOnce"]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_CE90(uint64_t a1)
{
  v4 = @"rebooted";
  v1 = [NSNumber numberWithUnsignedChar:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_CF44(id a1)
{
  v7 = @"mode";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 zoomCurrentLensMode];
  if ([v2 isEqualToString:AXZoomLensModeWindow])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [NSNumber numberWithInt:v3];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_D040(id a1)
{
  v6 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 zoomCurrentLensEffect];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:AXZoomLensEffectNone] ^ 1);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

NSDictionary *__cdecl sub_D134(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 zoomAlwaysUseWindowedZoomForTyping]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D20C(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 magnifierEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D2E4(id a1)
{
  v5 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 magnifierUsageCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D3BC(id a1)
{
  v6 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 voiceOverBrailleDisplays];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 count] != 0);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

NSDictionary *__cdecl sub_D4A8(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSGuidedAccessRequiresApplicationAccessibility()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_D560(id a1)
{
  v5 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 guidedAccessUsageCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D638(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 guidedAccessTimeLimitsUsageCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D710(id a1)
{
  v5 = @"enabled";
  if (_AXSAssistiveTouchEnabled())
  {
    v1 = _AXSAssistiveTouchScannerEnabled() == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = [NSNumber numberWithInt:v1];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D7DC(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 assistiveTouchCustomizationEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_D8B4(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSAssistiveTouchHardwareEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_D96C(id a1)
{
  v7 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchUsageCount];
  v3 = [v2 objectForKeyedSubscript:AXAssistiveTouchIconTypeHome];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 integerValue]);
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_DA78(id a1)
{
  v7 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchUsageCount];
  v3 = [v2 objectForKeyedSubscript:AXAssistiveTouchIconTypeLockScreen];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 integerValue]);
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_DB84(id a1)
{
  v11 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchUsageCount];
  v3 = [v2 objectForKeyedSubscript:AXAssistiveTouchIconTypeVolumeDown];
  v4 = [v3 integerValue];
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchUsageCount];
  v7 = [v6 objectForKeyedSubscript:AXAssistiveTouchIconTypeVolumeUp];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", &v4[[v7 integerValue]]);
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v9;
}

NSDictionary *__cdecl sub_DCE0(id a1)
{
  v7 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchUsageCount];
  v3 = [v2 objectForKeyedSubscript:AXAssistiveTouchIconTypeControlCenter];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 integerValue]);
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_DDEC(id a1)
{
  v7 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchUsageCount];
  v3 = [v2 objectForKeyedSubscript:AXAssistiveTouchIconTypeNotificationCenter];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 integerValue]);
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_DEF8(id a1)
{
  v7 = @"UsageCount";
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 assistiveTouchUsageCount];
  v3 = [v2 objectForKeyedSubscript:@"assistiveTouchOrbAction"];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 integerValue]);
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_E000(id a1)
{
  v5 = @"enabled";
  _AXSHomeClickSpeed();
  v2 = [NSNumber numberWithInt:fabsf(v1 + -0.35) > 2.2204e-16];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_E0D4(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSHomeButtonRestingUnlock()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_E18C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSVisualAlertEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_E244(id a1)
{
  v5 = @"Enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 pulseWidthMaximization]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_E31C(uint64_t a1)
{
  v7 = @"Enabled";
  v2 = +[AXSettings sharedInstance];
  if ([v2 pulseWidthMaximization])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = [NSNumber numberWithInt:v3];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

NSDictionary *__cdecl sub_E404(id a1)
{
  v5 = @"enabled";
  v1 = [sub_E4D8() sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 TTYHardwareEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_E4D8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_24C98;
  v7 = qword_24C98;
  if (!qword_24C98)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1049C;
    v3[3] = &unk_1D868;
    v3[4] = &v4;
    sub_1049C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_E5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDictionary *__cdecl sub_E5B8(id a1)
{
  v5 = @"enabled";
  v1 = [sub_E4D8() sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 TTYSoftwareEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_E68C(id a1)
{
  v5 = @"enabled";
  v1 = [sub_E4D8() sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 ttyShouldBeRealtime]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_E760(id a1)
{
  v5 = @"IncomingCallCount";
  v1 = [sub_E4D8() sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 incomingTTYCallCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_E834(id a1)
{
  v5 = @"OutgoingCallCount";
  v1 = [sub_E4D8() sharedInstance];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 outgoingTTYCallCount]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_E908(uint64_t a1)
{
  v4 = @"choice";
  v1 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_E9BC(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSReduceWhitePointEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_EA74(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSQuickSpeakEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_EB2C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSSpeakThisEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_EBE4(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSLetterFeedbackEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_EC9C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSWordFeedbackEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_ED54(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSQuickTypePredictionFeedbackEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_EE0C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSQuickSpeakHighlightTextEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_EEC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"voiceIdentifier";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_EF48(uint64_t a1)
{
  v6[0] = @"SpeakingRate";
  v2 = +[AXSettings sharedInstance];
  [v2 quickSpeakSpeakingRate];
  v3 = [NSNumber numberWithFloat:?];
  v6[1] = @"voiceIdentifier";
  v7[0] = v3;
  v7[1] = *(a1 + 32);
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

NSDictionary *__cdecl sub_F030(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 touchAccommodationsEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F108(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 touchAccommodationsHoldDurationEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F1E0(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 touchAccommodationsIgnoreRepeatEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F2B8(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 touchAccommodationsTapActivationMethod] != 0);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F394(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSForceTouchEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_F44C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSLowercaseKeyboardDisplayEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_F504(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 stickyKeysEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F5DC(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 stickyKeysShiftToggleEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F6B4(id a1)
{
  v4 = @"disabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSVibrationDisabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_F76C(id a1)
{
  v4 = @"disabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSShakeToUndoDisabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_F824(id a1)
{
  v5 = @"Enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 callAudioRoutingAutoAnswerEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_F8FC(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithInt:_AXSDefaultRouteForCall() != 0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_F9B8(id a1)
{
  v4 = @"disabled";
  v1 = [NSNumber numberWithInt:_AXSAllowOpaqueTouchGestures() == 0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_FA74(id a1)
{
  v5 = @"enabled";
  v1 = +[AXSettings sharedInstance];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 automaticAccessibilityEnabled]);
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

NSDictionary *__cdecl sub_FB4C(id a1)
{
  v4 = @"enabled";
  v1 = [NSNumber numberWithUnsignedChar:_AXSCommandAndControlEnabled()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_FC04(id a1, unint64_t a2)
{
  v4 = @"enabled";
  v2 = [NSNumber numberWithInt:a2 == 3];
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  AnalyticsSendEvent();
}

Class sub_FD48(uint64_t a1)
{
  sub_FDA0();
  result = objc_getClass("CACPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10934();
  }

  qword_24C50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_FDA0()
{
  v1[0] = 0;
  if (!qword_24C58)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_FE9C;
    v1[4] = &unk_1D8A0;
    v1[5] = v1;
    v2 = off_1D888;
    v3 = 0;
    qword_24C58 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_24C58)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_FE9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_24C58 = result;
  return result;
}

Class sub_FF10(uint64_t a1)
{
  sub_FDA0();
  result = objc_getClass("CACSpokenCommandPresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1095C();
  }

  qword_24C60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_FF68(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_24C70)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100A8;
    v5[4] = &unk_1D8A0;
    v5[5] = v5;
    v6 = off_1D8C0;
    v7 = 0;
    qword_24C70 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_24C70;
    if (qword_24C70)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_24C70;
LABEL_5:
  result = dlsym(v2, "RXObjectSetProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_24C68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_24C70 = result;
  return result;
}

void *sub_1011C(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_24C80)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1025C;
    v5[4] = &unk_1D8A0;
    v5[5] = v5;
    v6 = off_1D8D8;
    v7 = 0;
    qword_24C80 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_24C80;
    if (qword_24C80)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_24C80;
LABEL_5:
  result = dlsym(v2, "kSCROBrailleDisplayModelIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_24C78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1025C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_24C80 = result;
  return result;
}

Class sub_102D0(uint64_t a1)
{
  sub_10328();
  result = objc_getClass("HUHearingAidSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10984();
  }

  qword_24C88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10328()
{
  v3[0] = 0;
  if (!qword_24C90)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10428;
    v3[4] = &unk_1D8A0;
    v3[5] = v3;
    v4 = off_1D8F0;
    v5 = 0;
    qword_24C90 = _sl_dlopen();
  }

  v0 = qword_24C90;
  v1 = v3[0];
  if (!qword_24C90)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10428(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_24C90 = result;
  return result;
}

Class sub_1049C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_24CA0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_105E0;
    v4[4] = &unk_1D8A0;
    v4[5] = v4;
    v5 = off_1D908;
    v6 = 0;
    qword_24CA0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_24CA0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RTTSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_109AC();
  }

  qword_24C98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_105E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_24CA0 = result;
  return result;
}

Class sub_10654(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_24CB0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10798;
    v4[4] = &unk_1D8A0;
    v4[5] = v4;
    v5 = off_1D920;
    v6 = 0;
    qword_24CB0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_24CB0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_109D4();
  }

  qword_24CA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10798(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_24CB0 = result;
  return result;
}

void *sub_1080C(uint64_t a1)
{
  v2 = sub_10328();
  result = dlsym(v2, "AXHearingControlCenterBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_24CB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10884()
{
  dlerror();
  v0 = abort_report_np();
  return sub_108A8(v0);
}

void sub_108BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error booking statistics: %@", &v2, 0xCu);
}