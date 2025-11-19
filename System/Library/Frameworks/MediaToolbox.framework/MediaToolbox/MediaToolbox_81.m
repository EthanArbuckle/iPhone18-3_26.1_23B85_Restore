uint64_t FigNSHTTPCreateSerializedObjectFromNSSecureCoding(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v2 encodeObject:a1 forKey:*MEMORY[0x1E696A508]];
  v3 = [v2 encodedData];

  return v3;
}

void FigNSHTTPInitWithSerializedObject(void *a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a2 error:0];
  [a1 initWithCoder:v3];
  [v3 finishDecoding];
}

void FigHTTPStopAndReleaseTimer(dispatch_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*a1);
    *a1 = 0;
  }
}

void FigHTTPRescheduleTimer(double a1, uint64_t a2, NSObject *a3)
{
  if (a1 == 0.0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = (a1 * 1000000000.0);
  }

  v5 = dispatch_time(0, v4);

  dispatch_source_set_timer(a3, v5, 0x7FFFFFFFFFFFFFFFuLL, 0x989680uLL);
}

uint64_t FigHTTPCreateTimer(const void *a1, uint64_t a2, NSObject *a3, dispatch_object_t *a4, double a5)
{
  FigHTTPStopAndReleaseTimer(a4);
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a3);
  *a4 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = malloc_type_calloc(1uLL, 0x18uLL, 0xC00407E72882DuLL);
    if (v12)
    {
      v13 = v12;
      v14 = CFRetain(a1);
      *v13 = a2;
      v13[1] = v14;
      v13[2] = v11;
      dispatch_retain(v11);
      dispatch_set_context(v11, v13);
      dispatch_source_set_cancel_handler_f(v11, figHTTPDispatchTimerCanceledCallback);
      dispatch_source_set_event_handler_f(v11, figHTTPDispatchTimerEventCallback);
      v15 = dispatch_time(0, (a5 * 1000000000.0));
      dispatch_source_set_timer(v11, v15, 0x7FFFFFFFFFFFFFFFuLL, 0x989680uLL);
      dispatch_resume(v11);
      return 0;
    }

    else
    {
      FigHTTPCreateTimer_cold_1(&v17);
      return v17;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void figHTTPDispatchTimerCanceledCallback(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    dispatch_release(*(a1 + 16));

    free(a1);
  }
}

uint64_t figHTTPDispatchTimerEventCallback(uint64_t result)
{
  if (result)
  {
    return (*result)(*(result + 16), *(result + 8));
  }

  return result;
}

uint64_t FigHTTPSchedulerCreateLocal(const void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8D3660](&FigHTTPSchedulerCreateLocal_sInitOnce, shouldUseGlobalHTTPSchedulerGetPrefOnce);
  if (gShouldUseGlobalHTTPScheduler)
  {
    return 0;
  }

  snprintf(__str, 0x40uLL, "com.apple.coremedia.networkbuffering.bytepump.%p", a1);
  return FigDispatchQueueCreateWithPriority();
}

uint64_t shouldUseGlobalHTTPSchedulerGetPrefOnce()
{
  result = FigGetCFPreferenceNumberWithDefault();
  gShouldUseGlobalHTTPScheduler = result;
  return result;
}

NSObject *FigHTTPSchedulerRetain(dispatch_object_t object)
{
  GlobalNetworkBufferingQueue = object;
  if (!object)
  {
    GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  }

  dispatch_retain(GlobalNetworkBufferingQueue);
  return GlobalNetworkBufferingQueue;
}

void FigHTTPSchedulerRelease(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

uint64_t FigCFHTTPCreateURLReplacingQueryComponent(uint64_t a1, const __CFString *a2, const __CFString **a3)
{
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (a3)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
        if (CFStringGetLength(v4) <= 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = v4;
        }

        [v7 setPercentEncodedQuery:v8];
        v9 = [v7 URL];
        if (v9)
        {
          v4 = CFRetain(v9);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = 4294954633;
        }

        objc_autoreleasePoolPop(v6);
      }

      else
      {
        FigCFHTTPCreateURLReplacingQueryComponent_cold_1(&v12);
        v4 = 0;
        v10 = v12;
      }
    }

    else
    {
      FigCFHTTPCreateURLReplacingQueryComponent_cold_2(&v13);
      v10 = v13;
    }
  }

  else
  {
    FigCFHTTPCreateURLReplacingQueryComponent_cold_3(&v14);
    v4 = 0;
    v10 = v14;
  }

  *a3 = v4;
  return v10;
}

id FigCFHTTPCopyQueryValueForKey(uint64_t a1, const __CFString *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_msgSend(MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:{1), "queryItems", 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (CFStringCompare(a2, [v10 name], 1uLL) == kCFCompareEqualTo)
        {
          v11 = [v10 value];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v4);
  return v11;
}

__CFArray *FigCFHTTPCopyQueryParams(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v4 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [objc_msgSend(MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:{1), "queryItems"}];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = CFStringCreateWithFormat(v2, 0, @"%@=", [v10 name]);
          if (!v11 || (v12 = v11, ![v10 value]))
          {
            FigCFHTTPCopyQueryParams_cold_1();
            goto LABEL_13;
          }

          CFArrayAppendValue(Mutable, v12);
          CFArrayAppendValue(Mutable, [v10 value]);
          CFRelease(v12);
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    FigCFHTTPCopyQueryParams_cold_2();
  }

  return Mutable;
}

uint64_t FigCFHTTPCopyQueryParamsAsDict(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigCFHTTPCopyQueryParamsAsDict_cold_2(&v23);
    return v23;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCFHTTPCopyQueryParamsAsDict_cold_1(&v23);
    return v23;
  }

  v6 = Mutable;
  context = objc_autoreleasePoolPush();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [objc_msgSend(MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:{1), "queryItems"}];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = CFStringCreateWithFormat(v4, 0, @"%@", [v12 name]);
        if (!v13 || (v14 = CFStringCreateWithFormat(v4, 0, @"%@", [v12 value])) == 0)
        {
          fig_log_get_emitter();
          v16 = FigSignalErrorAtGM();
          objc_autoreleasePoolPop(context);
          CFRelease(v6);
          if (v13)
          {
            CFRelease(v13);
          }

          return v16;
        }

        v15 = v14;
        CFDictionaryAddValue(v6, v13, v14);
        CFRelease(v13);
        CFRelease(v15);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  *a2 = v6;
  objc_autoreleasePoolPop(context);
  return 0;
}

uint64_t FigCFHTTPCreateURLWithQueryParam(const __CFURL *a1, const __CFString *a2, uint64_t a3, const __CFString **a4)
{
  if (!a1)
  {
    FigCFHTTPCreateURLWithQueryParam_cold_2(&v18);
    return v18;
  }

  String = CFURLCopyQueryString(a1, 0);
  v9 = String;
  if (String && CFStringGetLength(String) >= 1)
  {
    StringMinusParam = FigCFHTTPCreateQueryStringMinusParam(v9, a2);
    Length = CFStringGetLength(StringMinusParam);
    v12 = *MEMORY[0x1E695E480];
    if (Length < 1)
    {
      v13 = CFStringCreateWithFormat(v12, 0, @"%@%@", a2, a3);
    }

    else
    {
      v13 = CFStringCreateWithFormat(v12, 0, @"%@&%@%@", StringMinusParam, a2, a3);
    }

    v14 = v13;
    if (StringMinusParam)
    {
      CFRelease(StringMinusParam);
    }
  }

  else
  {
    v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", a2, a3);
  }

  if (v14)
  {
    Component = FigCFHTTPCreateURLReplacingQueryComponent(a1, v14, a4);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigCFHTTPCreateURLWithQueryParam_cold_1(&v17);
  Component = v17;
  if (v9)
  {
LABEL_12:
    CFRelease(v9);
  }

LABEL_13:
  if (v14)
  {
    CFRelease(v14);
  }

  return Component;
}

CFMutableStringRef FigCFHTTPCreateQueryStringMinusParam(const __CFString *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (MutableCopy)
  {
    v7 = v5 < Length;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 0;
    do
    {
      v18.location = v8;
      v18.length = Length;
      if (CFStringCompareWithOptions(MutableCopy, theString, v18, 0))
      {
        if (v5 >= 1)
        {
          do
          {
            v9 = v5;
            CharacterAtIndex = CFStringGetCharacterAtIndex(MutableCopy, v8++);
            --v5;
          }

          while (v9 >= 2 && CharacterAtIndex != 38);
        }
      }

      else
      {
        v11 = v8;
        v12 = Length;
        if (v8 >= 1)
        {
          v13 = CFStringGetCharacterAtIndex(MutableCopy, v8 - 1);
          if (v13 == 38)
          {
            v11 = v8 - 1;
          }

          else
          {
            v11 = v8;
          }

          if (v13 == 38)
          {
            v12 = Length + 1;
          }

          else
          {
            v12 = Length;
          }
        }

        if (v12 + v11 < v8 + v5)
        {
          do
          {
            v14 = v11 + v12;
            v15 = CFStringGetCharacterAtIndex(MutableCopy, v11 + v12++);
          }

          while (v14 + 1 < v8 + v5 && v15 != 38);
          if (v15 == 38)
          {
            v12 -= CFStringGetCharacterAtIndex(MutableCopy, v11) == 38;
          }
        }

        v17.location = v11;
        v17.length = v12;
        CFStringDelete(MutableCopy, v17);
        v5 -= v12;
      }
    }

    while (v5 >= Length);
  }

  return MutableCopy;
}

uint64_t FigCFHTTPCreateURLMinusQueryParam(const __CFURL *a1, const __CFString *a2, const __CFString **a3)
{
  String = CFURLCopyQueryString(a1, 0);
  if (String)
  {
    v7 = String;
    if (CFStringGetLength(String) < 1)
    {
      v12 = CFRetain(a1);
      Component = 0;
      *a3 = v12;
    }

    else
    {
      StringMinusParam = FigCFHTTPCreateQueryStringMinusParam(v7, a2);
      if (StringMinusParam)
      {
        v9 = StringMinusParam;
        Component = FigCFHTTPCreateURLReplacingQueryComponent(a1, StringMinusParam, a3);
        CFRelease(v9);
      }

      else
      {
        FigCFHTTPCreateURLMinusQueryParam_cold_1(&v14);
        Component = v14;
      }
    }

    CFRelease(v7);
  }

  else
  {
    v11 = CFRetain(a1);
    Component = 0;
    *a3 = v11;
  }

  return Component;
}

uint64_t FigCFHTTPCreatePropertyListFromJSON(uint64_t a1, CFTypeRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1 && (v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a1 options:0 error:0]) != 0)
  {
    v6 = 0;
    *a2 = CFRetain(v5);
  }

  else
  {
    v6 = 4294954410;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t FigCFHTTPCreatePercentEncodedString(void *a1, int a2, void *a3)
{
  v6 = 4294954516;
  v7 = objc_autoreleasePoolPush();
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v8 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        goto LABEL_14;
      case 5:
        v8 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        goto LABEL_14;
      case 6:
        v8 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
        goto LABEL_14;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v8 = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
        goto LABEL_14;
      case 2:
        v8 = [MEMORY[0x1E696AB08] URLPasswordAllowedCharacterSet];
        goto LABEL_14;
      case 3:
        v8 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
LABEL_14:
        v6 = 0;
        *a3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v8];
        break;
    }
  }

  objc_autoreleasePoolPop(v7);
  return v6;
}

uint64_t OUTLINED_FUNCTION_4_164(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t FigCaptionRendererTriggerSetTimebase(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      fcrTrigger_setTimebase(a1, a2);
      result = 0;
      *(a1 + 88) = 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigCaptionRendererTriggerSetTimebase_cold_1(&v4);
    return v4;
  }

  return result;
}

void fcrTrigger_setTimebase(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  if (v2 != cf)
  {
    if (v2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v5 = *(a1 + 80);
      *(a1 + 80) = cf;
      CFRetain(cf);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(a1 + 80) = cf;
      CFRetain(cf);
    }

    if (*(a1 + 80))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigNotificationCenterAddWeakListener();
    }
  }
}

CMTime *FigCaptionRendererTriggerGetCurrentTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v2 + 16);
  if (!a1)
  {
    return FigCaptionRendererTriggerGetCurrentTime_cold_2();
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    return FigCaptionRendererTriggerGetCurrentTime_cold_1();
  }

  return CMTimebaseGetTime(a2, v3);
}

uint64_t FigCaptionRendererTriggerSetCurrentTime(uint64_t a1, CMTime *a2)
{
  if (!a1)
  {
    FigCaptionRendererTriggerSetCurrentTime_cold_2(&v5);
    return LODWORD(v5.value);
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    FigCaptionRendererTriggerSetCurrentTime_cold_1(&v5);
    return LODWORD(v5.value);
  }

  if (*(a1 + 88))
  {
    return 0;
  }

  v5 = *a2;
  return CMTimebaseSetTime(v3, &v5);
}

uint64_t FigCaptionRendererTriggerSetRate(uint64_t a1, Float64 a2)
{
  if (a1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      if (!*(a1 + 88))
      {
        CMTimebaseSetRate(v3, a2);
      }

      return 0;
    }

    else
    {
      FigCaptionRendererTriggerSetRate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigCaptionRendererTriggerSetRate_cold_2(&v6);
    return v6;
  }
}

double FigCaptionRendererTriggerGetRate(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerGetRate_cold_2();
    return 0.0;
  }

  v1 = *(a1 + 80);
  if (!v1)
  {
    FigCaptionRendererTriggerGetRate_cold_1();
    return 0.0;
  }

  return CMTimebaseGetRate(v1);
}

uint64_t FigCaptionRendererTriggerStart(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerStart_cold_2(&v7);
    return LODWORD(v7.value);
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    FigCaptionRendererTriggerStart_cold_1(&v7);
    return LODWORD(v7.value);
  }

  if (!*(a1 + 88))
  {
    v3 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    *(a1 + 52) = *MEMORY[0x1E6960CC0];
    v5 = *(v3 + 16);
    *(a1 + 68) = v5;
    *&v7.value = v4;
    v7.epoch = v5;
    CMTimebaseSetTime(v2, &v7);
  }

  return 0;
}

uint64_t FigCaptionRendererTriggerResume(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerResume_cold_3(&v4);
    return LODWORD(v4.value);
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    FigCaptionRendererTriggerResume_cold_2(&v4);
    return LODWORD(v4.value);
  }

  if (!*(a1 + 90))
  {
    FigCaptionRendererTriggerResume_cold_1(&v4);
    return LODWORD(v4.value);
  }

  if (!*(a1 + 88))
  {
    v4 = *(a1 + 52);
    CMTimebaseSetTime(v2, &v4);
    CMTimebaseSetRate(*(a1 + 80), 1.0);
  }

  result = 0;
  *(a1 + 90) = 0;
  return result;
}

uint64_t FigCaptionRendererTriggerPause(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerPause_cold_3(&v4);
    return LODWORD(v4.value);
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    FigCaptionRendererTriggerPause_cold_2(&v4);
    return LODWORD(v4.value);
  }

  if (*(a1 + 90))
  {
    FigCaptionRendererTriggerPause_cold_1(&v4);
    return LODWORD(v4.value);
  }

  if (!*(a1 + 88))
  {
    CMTimebaseSetRate(v2, 0.0);
    CMTimebaseGetTime(&v4, *(a1 + 80));
    *(a1 + 52) = v4;
  }

  result = 0;
  *(a1 + 90) = 1;
  return result;
}

uint64_t FigCaptionRendererTriggerStop(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerStop_cold_2(&v3);
    return LODWORD(v3.value);
  }

  if (FigCaptionRendererTimerIsOn(*(a1 + 40)))
  {
    FigCaptionRendererTimerStop(*(a1 + 40));
  }

  if (!*(a1 + 80))
  {
    FigCaptionRendererTriggerStop_cold_1(&v3);
    return LODWORD(v3.value);
  }

  if (!*(a1 + 88))
  {
    CMTimeMake(&v3, 0, 1);
    *(a1 + 52) = v3;
    CMTimebaseSetRate(*(a1 + 80), 0.0);
  }

  return 0;
}

uint64_t FigCaptionRendererTriggerManualTrigger(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerManualTrigger_cold_2(&v5);
    return LODWORD(v5.value);
  }

  if (!*(a1 + 80))
  {
    FigCaptionRendererTriggerManualTrigger_cold_1(&v5);
    return LODWORD(v5.value);
  }

  if (*(a1 + 24))
  {
    result = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = *(a1 + 24);
    CMTimebaseGetTime(&v5, *(a1 + 80));
    v4(0, &v5, v3);
    CFRelease(v3);
  }

  return 0;
}

NSObject *FigCaptionRendererTriggerScheduleEvent(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v9 = 0;
  if (a1)
  {
    result = *(a1 + 104);
    if (result)
    {
      context[0] = a1;
      context[1] = a2;
      v6 = *a3;
      v7 = *(a3 + 2);
      v8 = &v9;
      dispatch_sync_f(result, context, scheduleEventDo);
      return v9;
    }
  }

  else
  {
    FigCaptionRendererTriggerScheduleEvent_cold_1(context);
    return LODWORD(context[0]);
  }

  return result;
}

void scheduleEventDo(uint64_t *a1)
{
  v2 = *a1;
  v11 = *(a1 + 2);
  v3 = *(v2 + 80);
  if (v3)
  {
    if (CMTimebaseGetRate(v3) != 0.0 && !FigCaptionRendererTimerIsOn(*(v2 + 40)))
    {
      FigCaptionRendererTimerStart(*(v2 + 40));
    }

    time = v11;
    Seconds = CMTimeGetSeconds(&time);
    memset(&v9, 0, sizeof(v9));
    CMTimebaseGetTime(&v9, *(v2 + 80));
    time = v9;
    v8 = Seconds - CMTimeGetSeconds(&time);
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v8);
    CFArrayAppendValue(*(v2 + 96), v5);
    CFRelease(v5);
    value = 0;
  }

  else
  {
    scheduleEventDo_cold_1(&time);
    value = time.value;
  }

  v7 = a1[5];
  if (v7)
  {
    *v7 = value;
  }
}

uint64_t RegisterFigCaptionRendererTriggerClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererTriggerID = result;
  return result;
}

double FigCaptionRendererTriggerInit(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t FigCaptionRendererTrigger_Finalize(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 104) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (*(a1 + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (!*(a1 + 88))
    {
      CMTimebaseSetRate(*(a1 + 80), 0.0);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 16) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

__CFString *FigCaptionRendererTriggerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererTrigger %p>", a1);
  return Mutable;
}

void fcrTrigger_timebaseRateChanged(uint64_t a1, uint64_t a2)
{
  Rate = CMTimebaseGetRate(*(a2 + 80));
  if (Rate == 0.0 && !*(a2 + 90))
  {

    FigCaptionRendererTriggerPause(a2);
  }

  else if (Rate != 0.0 && *(a2 + 90))
  {

    FigCaptionRendererTriggerResume(a2);
  }
}

void onTimerTimeoutDo(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 90))
  {
    if (!CFArrayGetCount(*(v2 + 96)) && FigCaptionRendererTimerIsOn(*(v2 + 40)))
    {
      FigCaptionRendererTimerStop(*(v2 + 40));
    }

    if (CFArrayGetCount(*(v2 + 96)) >= 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 96), v3);
        valuePtr.value = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
        if (*&valuePtr.value <= 0.0)
        {
          CFArrayRemoveValueAtIndex(*(v2 + 96), v3);
          v5 = 1;
        }

        else
        {
          *&valuePtr.value = *&valuePtr.value + *(v2 + 48) / -1000.0;
          v8 = CFNumberCreate(v6, kCFNumberCGFloatType, &valuePtr);
          CFArraySetValueAtIndex(*(v2 + 96), v3, v8);
          CFRelease(v8);
          ++v4;
        }

        v3 = v4;
      }

      while (CFArrayGetCount(*(v2 + 96)) > v4);
      if (v5 && *(v2 + 24))
      {
        v9 = *(v2 + 80);
        if (v9)
        {
          memset(&valuePtr, 0, sizeof(valuePtr));
          CMTimebaseGetTime(&valuePtr, v9);
          v10 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v10)
          {
            v11 = v10;
            v12 = *(v2 + 24);
            v13 = valuePtr;
            v12(0, &v13, v10);
            CFRelease(v11);
          }
        }

        else
        {
          onTimerTimeoutDo_cold_1();
        }
      }
    }
  }

  free(a1);
}

uint64_t FigStreamingCacheGetTypeID()
{
  if (sRegisterFigStreamingCacheTypeOnce != -1)
  {
    FigStreamingCacheGetTypeID_cold_1();
  }

  return sFigStreamingCacheID;
}

uint64_t RegisterFigStreamingCacheType()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamingCacheID = result;
  return result;
}

uint64_t FigStreamingCacheSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetProperty_cold_3(&v12);
    return v12;
  }

  if (!a2)
  {
    FigStreamingCacheSetProperty_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetProperty_cold_1(&v10);
    v8 = v10;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"FSC_MinOverlappedDuration"))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberDoubleType, (a1 + 80));
LABEL_15:
        v8 = 0;
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, @"FSC_IsDonor"))
  {
    goto LABEL_15;
  }

  if (!a3 || (v7 = CFGetTypeID(a3), v7 != CFBooleanGetTypeID()) || (*(a1 + 220) & 2) != 0 || !*(a1 + 136))
  {
LABEL_16:
    v8 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v8 = 0;
  *(a1 + 144) = CFBooleanGetValue(a3);
LABEL_17:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    FigStreamingCacheCopyProperty_cold_5(&v13);
    return v13;
  }

  if (!a2)
  {
    FigStreamingCacheCopyProperty_cold_4(&v13);
    return v13;
  }

  if (!a4)
  {
    FigStreamingCacheCopyProperty_cold_3(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyProperty_cold_1(&v13);
    goto LABEL_26;
  }

  if (!CFEqual(a2, @"FSC_DownloadDestinationURL"))
  {
    if (CFEqual(a2, @"FSC_IsDiskBacked"))
    {
      v8 = 0;
      if ((*(a1 + 220) & 2) != 0)
      {
        v9 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      v10 = *v9;
LABEL_14:
      *a4 = v10;
      goto LABEL_15;
    }

    if (CFEqual(a2, @"FSC_CacheBundleURL"))
    {
      v7 = *(a1 + 56);
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (!CFEqual(a2, @"FSC_OfflineInterstitialURLs"))
    {
      if (!CFEqual(a2, @"FSC_OfflineInterstitialListJSONs"))
      {
        v8 = 4294954512;
        goto LABEL_15;
      }

      v13 = 0;
      v12 = *(a1 + 280);
      if (v12)
      {
        v8 = sc_CopyDataForCategory(v12, &v13);
        v10 = v13;
      }

      else
      {
        v10 = 0;
        v8 = 0;
      }

      goto LABEL_14;
    }

    FigStreamingCacheCopyProperty_cold_2(a1, a4, &v13);
LABEL_26:
    v8 = v13;
    goto LABEL_15;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
LABEL_7:
    v7 = CFRetain(v7);
  }

LABEL_8:
  v8 = 0;
  *a4 = v7;
LABEL_15:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheSetMasterPlaylist(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheSetMasterPlaylist_cold_1(&v10);
      v8 = v10;
    }

    else
    {
      v6 = *(a1 + 120);
      *(a1 + 120) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(a1 + 160);
      *(a1 + 160) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if ((*(a1 + 220) & 2) != 0)
      {
        CFRetain(a1);
        dispatch_async_f(*(a1 + 240), a1, sc_WriteMasterPlaylistToDiskDispatchFunction);
      }

      v8 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigStreamingCacheSetMasterPlaylist_cold_2(&v11);
    return v11;
  }

  return v8;
}

uint64_t sc_WriteMasterPlaylistToDiskDispatchFunction(void *a1)
{
  v8 = 0;
  FigSimpleMutexLock();
  if (sc_UpgradePersistentStoreForWriting(a1, &v8))
  {
    goto LABEL_8;
  }

  if (!a1[15])
  {
    v2 = 0;
    goto LABEL_6;
  }

  if (!sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore(a1))
  {
    v2 = a1[15];
LABEL_6:
    v3 = a1[35];
    v4 = a1[20];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v5)
    {
      v7 = v5(v3, @"NetworkPlaylist", @"master.m3u8", v4, v2);
      sc_RestorePersistentStoreLockStatus(a1, v8);
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  sc_RestorePersistentStoreLockStatus(a1, v8);
LABEL_8:
  sc_SendDiskWriteErrorNotification();
LABEL_9:
  FigSimpleMutexUnlock();
  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheCopyMasterPlaylist(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v17 = 0;
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyMasterPlaylist_cold_3(&v19);
LABEL_36:
    v10 = v19;
    goto LABEL_30;
  }

  if (!(a2 | a3))
  {
    FigStreamingCacheCopyMasterPlaylist_cold_2(&v19);
    goto LABEL_36;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyMasterPlaylist_cold_1(&v19);
    v10 = v19;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    v6 = *(a1 + 120);
    if (v6)
    {
      goto LABEL_21;
    }

    if ((*(a1 + 220) & 2) == 0 || (v7 = *(a1 + 280)) == 0)
    {
LABEL_20:
      v6 = *(a1 + 120);
      if (!v6)
      {
LABEL_22:
        *a2 = v6;
LABEL_23:
        if (a3)
        {
          v15 = *(a1 + 160);
          if (v15)
          {
            v15 = CFRetain(v15);
          }

          v10 = 0;
          *a3 = v15;
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_21:
      v6 = CFRetain(v6);
      goto LABEL_22;
    }

    if (*(a1 + 128))
    {
LABEL_27:
      v10 = 0;
      goto LABEL_28;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v8)
    {
      v9 = v8(v7, @"NetworkPlaylist", a1 + 128, 0, &cf, &v17);
      if (v9 != -16913)
      {
        v10 = v9;
        if (v9)
        {
          goto LABEL_28;
        }

        v11 = *(a1 + 160);
        v12 = cf;
        *(a1 + 160) = cf;
        if (v12)
        {
          CFRetain(v12);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        v13 = *(a1 + 120);
        v14 = v17;
        *(a1 + 120) = v17;
        if (v14)
        {
          CFRetain(v14);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      goto LABEL_20;
    }

    v10 = 4294954514;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

uint64_t FigStreamingCacheCopyStreamNetworkURL(uint64_t a1, CFURLRef *a2)
{
  if (!a1)
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_3(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_1(&v8);
LABEL_13:
    v6 = v8;
    goto LABEL_6;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = CFURLCreateWithString(AllocatorForMedia, *(a1 + 24), 0);
  *a2 = v5;
  if (!v5)
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_2(&v8);
    goto LABEL_13;
  }

  v6 = 0;
LABEL_6:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigStreamingCacheAddMediaMap(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  valuePtr = a5;
  if (!a1)
  {
    FigStreamingCacheAddMediaMap_cold_9(&v22);
    return v22;
  }

  if (!a2)
  {
    FigStreamingCacheAddMediaMap_cold_8(&v22);
    return v22;
  }

  if (!a3)
  {
    FigStreamingCacheAddMediaMap_cold_7(&v22);
    return v22;
  }

  if (a4 < 0)
  {
    FigStreamingCacheAddMediaMap_cold_6(&v22);
    return v22;
  }

  if (!a6)
  {
    FigStreamingCacheAddMediaMap_cold_5(&v22);
    return v22;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v12 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", a3, a4, valuePtr);
  if (!v12)
  {
    FigStreamingCacheAddMediaMap_cold_4(&v22);
    return v22;
  }

  v13 = v12;
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v14)
  {
    FigStreamingCacheAddMediaMap_cold_3();
    return v22;
  }

  v15 = v14;
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheAddMediaMap_cold_1(&v22);
    goto LABEL_28;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    while (v16 != a2)
    {
      v16 = *(v16 + 8);
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    CFDictionaryAddValue(*(v16 + 144), v13, a6);
    CFDictionaryAddValue(*(v16 + 152), v15, a6);
    if ((*(a1 + 220) & 2) == 0)
    {
      goto LABEL_16;
    }

    v18 = malloc_type_malloc(0x40uLL, 0x10600402F6BEFCEuLL);
    if (v18)
    {
      v19 = v18;
      *v18 = CFRetain(a1);
      v19[1] = a2;
      v19[3] = CFRetain(a3);
      v19[4] = a4;
      v19[5] = CFRetain(v15);
      v19[6] = CFRetain(v13);
      dispatch_async_f(*(a1 + 240), v19, sc_WriteMediaMapToDiskDispatchFunction);
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }

    FigStreamingCacheAddMediaMap_cold_2(&v22);
LABEL_28:
    v17 = v22;
    goto LABEL_17;
  }

LABEL_12:
  v17 = FigSignalErrorAtGM();
LABEL_17:
  FigSimpleMutexUnlock();
  CFRelease(v13);
  CFRelease(v15);
  return v17;
}

uint64_t sc_WriteMediaMapToDiskDispatchFunction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  value = 0;
  cf = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  FigSimpleMutexLock();
  if (*(v2 + 272))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v8 = *(v2 + 168);
    if (v8)
    {
      while (v8 != v3)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      v9 = CFRetain(*(v8 + 128));
    }

    else
    {
LABEL_5:
      v9 = 0;
    }

    MapBBufFromStreamMediaMapDictionary = sc_GetMapBBufFromStreamMediaMapDictionary(v8, v7, v6, 0, &cf);
    if (MapBBufFromStreamMediaMapDictionary)
    {
      v13 = MapBBufFromStreamMediaMapDictionary;
LABEL_14:
      FigSimpleMutexUnlock();
      if (!v13)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

    FigSimpleMutexUnlock();
    if (v9)
    {
      v11 = cf;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v12 || v12(v9, v11, v4, v5, v6, &value))
      {
        goto LABEL_26;
      }

      FigSimpleMutexLock();
      if (*(v2 + 272))
      {
        sc_WriteMediaMapToDiskDispatchFunction_cold_1(&v20);
        v13 = v20;
      }

      else
      {
        v13 = stream_SetNeedsToCommitPersistentStreamInfo(v8);
        if (!v13)
        {
          CFDictionarySetValue(*(v8 + 160), v7, value);
          CFDictionarySetValue(*(v8 + 168), v6, value);
          CFDictionaryRemoveValue(*(v8 + 144), v7);
          CFDictionaryRemoveValue(*(v8 + 152), v6);
        }
      }

      goto LABEL_14;
    }
  }

  sc_WriteMediaMapToDiskDispatchFunction_cold_2(&v20);
  v9 = 0;
  if (!v20)
  {
LABEL_15:
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  FigSimpleMutexLock();
  if (!*(v2 + 272))
  {
    sc_SendDiskWriteErrorNotification();
  }

  FigSimpleMutexUnlock();
  if (v9)
  {
LABEL_16:
    CFRelease(v9);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  v14 = a1[5];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[3];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[6];
  if (v16)
  {
    CFRelease(v16);
  }

  free(a1);
  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheCopyMediaMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = 0;
  valuePtr = a5;
  if (!a1)
  {
    FigStreamingCacheCopyMediaMap_cold_8(&v25);
    return v25;
  }

  if (!a2)
  {
    FigStreamingCacheCopyMediaMap_cold_7(&v25);
    return v25;
  }

  if (!a3)
  {
    FigStreamingCacheCopyMediaMap_cold_6(&v25);
    return v25;
  }

  if (a4 < 0)
  {
    FigStreamingCacheCopyMediaMap_cold_5(&v25);
    return v25;
  }

  if (!a6)
  {
    FigStreamingCacheCopyMediaMap_cold_4(&v25);
    return v25;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v12 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", a3, a4);
  if (!v12)
  {
    FigStreamingCacheCopyMediaMap_cold_3(&v25);
    return v25;
  }

  v13 = v12;
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v14)
  {
    FigStreamingCacheCopyMediaMap_cold_2();
    return v25;
  }

  v15 = v14;
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyMediaMap_cold_1(&v25);
    v18 = v25;
    goto LABEL_18;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    while (v16 != a2)
    {
      v16 = *(v16 + 8);
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    MapBBufFromStreamMediaMapDictionary = sc_GetMapBBufFromStreamMediaMapDictionary(v16, v13, v15, &v23, a6);
    if (!MapBBufFromStreamMediaMapDictionary)
    {
      if (*a6 || (*(a1 + 220) & 2) == 0)
      {
        v18 = 0;
        goto LABEL_18;
      }

      Value = CFDictionaryGetValue(*(v16 + 160), v13);
      v23 = v13;
      if (Value)
      {
        v18 = Value;
      }

      else
      {
        v18 = CFDictionaryGetValue(*(v16 + 168), v15);
        v23 = v15;
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      v21 = *(v16 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (!v22)
      {
        v18 = 4294954514;
        goto LABEL_18;
      }

      MapBBufFromStreamMediaMapDictionary = v22(v21, v18, a6);
    }
  }

  else
  {
LABEL_12:
    MapBBufFromStreamMediaMapDictionary = FigSignalErrorAtGM();
  }

  v18 = MapBBufFromStreamMediaMapDictionary;
LABEL_18:
  FigSimpleMutexUnlock();
  CFRelease(v13);
  CFRelease(v15);
  return v18;
}

uint64_t sc_GetMapBBufFromStreamMediaMapDictionary(uint64_t a1, const void *a2, const void *a3, void *a4, void *a5)
{
  if (!a5)
  {
    sc_GetMapBBufFromStreamMediaMapDictionary_cold_1(&v14);
    return v14;
  }

  v8 = a2;
  Value = CFDictionaryGetValue(*(a1 + 144), a2);
  if (!Value)
  {
    *a5 = 0;
LABEL_6:
    v12 = CFDictionaryGetValue(*(a1 + 152), a3);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a5 = v12;
    v8 = a3;
    goto LABEL_9;
  }

  v11 = CFRetain(Value);
  *a5 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t FigStreamingCacheRemoveMediaMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = a5;
  if (!a1)
  {
    FigStreamingCacheRemoveMediaMap_cold_6(&v22);
    return v22;
  }

  if (!a3)
  {
    FigStreamingCacheRemoveMediaMap_cold_5(&v22);
    return v22;
  }

  if (a4 < 0)
  {
    FigStreamingCacheRemoveMediaMap_cold_4(&v22);
    return v22;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", a3, a4, valuePtr);
  if (!v10)
  {
    FigStreamingCacheRemoveMediaMap_cold_3(&v22);
    return v22;
  }

  v11 = v10;
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v12)
  {
    FigStreamingCacheRemoveMediaMap_cold_2();
    return v22;
  }

  v13 = v12;
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheRemoveMediaMap_cold_1(&v22);
    v15 = v22;
  }

  else
  {
    v14 = *(a1 + 168);
    if (v14)
    {
      while (v14 != a2)
      {
        v14 = *(v14 + 8);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      CFDictionaryRemoveValue(*(v14 + 144), v11);
      CFDictionaryRemoveValue(*(v14 + 152), v13);
      if ((*(a1 + 220) & 2) != 0)
      {
        Value = CFDictionaryGetValue(*(v14 + 160), v11);
        if (!Value || (v18 = CFRetain(Value)) == 0)
        {
          v19 = CFDictionaryGetValue(*(v14 + 168), v13);
          if (v19)
          {
            v18 = CFRetain(v19);
          }

          else
          {
            v18 = 0;
          }
        }

        CFDictionaryRemoveValue(*(v14 + 160), v11);
        CFDictionaryRemoveValue(*(v14 + 168), v13);
        v20 = malloc_type_malloc(0x40uLL, 0x10600402F6BEFCEuLL);
        *v20 = CFRetain(a1);
        v20[1] = a2;
        v20[6] = CFRetain(v11);
        v20[5] = CFRetain(v13);
        if (v18)
        {
          v20[7] = CFRetain(v18);
          dispatch_async_f(*(a1 + 240), v20, sc_DeleteMediaMapFromDiskDispatchFunction);
          FigSimpleMutexUnlock();
          CFRelease(v18);
        }

        else
        {
          v20[7] = 0;
          dispatch_async_f(*(a1 + 240), v20, sc_DeleteMediaMapFromDiskDispatchFunction);
          FigSimpleMutexUnlock();
        }

        v15 = 0;
        goto LABEL_12;
      }

      v15 = 0;
    }

    else
    {
LABEL_10:
      v15 = FigSignalErrorAtGM();
    }
  }

  FigSimpleMutexUnlock();
LABEL_12:
  CFRelease(v11);
  CFRelease(v13);
  return v15;
}

uint64_t sc_DeleteMediaMapFromDiskDispatchFunction(uint64_t *a1)
{
  v2 = *a1;
  FigSimpleMutexLock();
  if (*(v2 + 272))
  {
    sc_DeleteMediaMapFromDiskDispatchFunction_cold_1();
    goto LABEL_6;
  }

  v3 = *(v2 + 168);
  if (!v3)
  {
LABEL_5:
    FigSignalErrorAtGM();
LABEL_6:
    FigSimpleMutexUnlock();
    goto LABEL_11;
  }

  while (v3 != a1[1])
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  v4 = CFRetain(*(v3 + 128));
  FigSimpleMutexUnlock();
  v5 = a1[7];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v6(v4, v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_11:
  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
  }

  free(a1);

  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheCopyCompletedMediaStreamURLs(uint64_t a1, CFArrayRef *a2, CFArrayRef *a3)
{
  if (!a1)
  {
    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_7(&v35);
    Mutable = 0;
    v10 = 0;
    v13 = v35;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

  if (!(a2 | a3))
  {
    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_6(&v35);
    return v35;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_1(&v35);
    Mutable = 0;
    v10 = 0;
    v13 = v35;
    goto LABEL_17;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
    Mutable = 0;
    v10 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  v35 = 0;
  v34 = 0;
  v32 = 0;
  cf = 0;
  if (*(a1 + 280))
  {
    v6 = sc_UpgradePersistentStoreForWriting(a1, &v34);
    if (v6)
    {
      v13 = v6;
      Mutable = 0;
      v10 = 0;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = FigGetAllocatorForMedia();
        v10 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
        if (v10)
        {
          v11 = *(a1 + 280);
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v12)
          {
            v16 = v12(v11, &v35);
            if (!v16)
            {
              v17 = 0;
              v18 = *MEMORY[0x1E695E738];
              while (1)
              {
                Count = v35;
                if (v35)
                {
                  Count = CFArrayGetCount(v35);
                }

                if (v17 >= Count)
                {
                  v13 = 0;
                  goto LABEL_11;
                }

                v31 = 0;
                ValueAtIndex = CFArrayGetValueAtIndex(v35, v17);
                v21 = *(a1 + 280);
                v22 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (!v22)
                {
                  goto LABEL_10;
                }

                v16 = v22(v21, ValueAtIndex, &v31);
                if (v16)
                {
                  break;
                }

                if (v31)
                {
                  v23 = *(a1 + 280);
                  v24 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                  if (!v24)
                  {
                    goto LABEL_10;
                  }

                  v16 = v24(v23, ValueAtIndex, &cf);
                  if (v16)
                  {
                    break;
                  }

                  if (!cf)
                  {
                    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_2(&v36);
                    goto LABEL_57;
                  }

                  v25 = *(a1 + 280);
                  v26 = *(*(CMBaseObjectGetVTable() + 16) + 80);
                  if (!v26)
                  {
                    goto LABEL_10;
                  }

                  v16 = v26(v25, ValueAtIndex, &v32);
                  if (v16)
                  {
                    break;
                  }

                  if (v32)
                  {
                    v27 = v32;
                  }

                  else
                  {
                    v27 = v18;
                  }

                  CFArrayAppendValue(Mutable, cf);
                  CFArrayAppendValue(v10, v27);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v32)
                {
                  CFRelease(v32);
                  v32 = 0;
                }

                ++v17;
              }
            }

            v13 = v16;
          }

          else
          {
LABEL_10:
            v13 = 4294954514;
          }

          goto LABEL_11;
        }

        FigStreamingCacheCopyCompletedMediaStreamURLs_cold_3(&v36);
      }

      else
      {
        FigStreamingCacheCopyCompletedMediaStreamURLs_cold_4(&v36);
        v10 = 0;
      }

LABEL_57:
      v13 = v36;
    }

LABEL_11:
    sc_RestorePersistentStoreLockStatus(a1, v34);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_13;
  }

  FigStreamingCacheCopyCompletedMediaStreamURLs_cold_5(&v36);
  v10 = 0;
  Mutable = 0;
  v13 = v36;
LABEL_13:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v35)
  {
    CFRelease(v35);
  }

LABEL_17:
  FigSimpleMutexUnlock();
  if (!v13)
  {
LABEL_18:
    if (a2)
    {
      v14 = FigGetAllocatorForMedia();
      if (Mutable)
      {
        Copy = CFArrayCreateCopy(v14, Mutable);
      }

      else
      {
        Copy = CFArrayCreate(v14, 0, 0, MEMORY[0x1E695E9C0]);
      }

      *a2 = Copy;
    }

    if (a3)
    {
      v28 = FigGetAllocatorForMedia();
      if (v10)
      {
        v29 = CFArrayCreateCopy(v28, v10);
      }

      else
      {
        v29 = CFArrayCreate(v28, 0, 0, MEMORY[0x1E695E9C0]);
      }

      *a3 = v29;
    }
  }

LABEL_50:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v13;
}

uint64_t FigStreamingCacheCleanupStreamsForPersisting(uint64_t a1, void *a2)
{
  v20 = 0;
  if (!a1)
  {
    FigStreamingCacheCleanupStreamsForPersisting_cold_3(&v21);
    return v21;
  }

  if (!a2)
  {
    FigStreamingCacheCleanupStreamsForPersisting_cold_2(&v21);
    return v21;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCleanupStreamsForPersisting_cold_1(&v21);
    v17 = 0;
    v6 = v21;
    goto LABEL_34;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
    FigSimpleMutexUnlock();
    v18 = MEMORY[0x1E695E4D0];
    goto LABEL_37;
  }

  v4 = sc_UpgradePersistentStoreForWriting(a1, &v20);
  if (v4)
  {
    v6 = v4;
    FigSimpleMutexUnlock();
    return v6;
  }

  v5 = *(a1 + 168);
  if (!v5)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_33;
  }

  v7 = 1;
  while (1)
  {
    LOBYTE(v21) = 0;
    if (!stream_EnsurePersistentStreamInfo(v5, &v21))
    {
      break;
    }

LABEL_31:
    v5 = *(v5 + 8);
    if (!v5)
    {
      v6 = 0;
      goto LABEL_33;
    }
  }

  if (*(v5 + 121))
  {
    if ((*(a1 + 220) & 2) != 0)
    {
      if (stream_UpgradePersistentStreamInfoForWriting(v5))
      {
        goto LABEL_28;
      }

      v8 = *(a1 + 280);
      v9 = *(v5 + 136);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v10)
      {
        v10(v8, v9);
      }

      v11 = *(v5 + 128);
      if (v11)
      {
        CFRelease(v11);
        *(v5 + 128) = 0;
      }

      v12 = *(v5 + 136);
      if (v12)
      {
        CFRelease(v12);
        *(v5 + 136) = 0;
      }

      *(v5 + 176) = 0;
    }

    v13 = *(v5 + 24);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = v13[1];
      }

      while (v13);
      while (1)
      {
        segment_EvictEntry(v14, 0, 1);
        v15 = *(v5 + 24);
        if (!v15)
        {
          break;
        }

        do
        {
          v14 = v15;
          v15 = v15[1];
        }

        while (v15);
      }
    }
  }

  else if (!*(v5 + 120))
  {
    v7 = 0;
  }

LABEL_28:
  if (!v21)
  {
    goto LABEL_31;
  }

  if (!*(v5 + 128))
  {
    goto LABEL_31;
  }

  v16 = stream_UnlockPersistentStreamInfoForAnything(v5);
  if (!v16)
  {
    goto LABEL_31;
  }

  v6 = v16;
LABEL_33:
  sc_RestorePersistentStoreLockStatus(a1, v20);
  v17 = v7 == 0;
LABEL_34:
  FigSimpleMutexUnlock();
  if (!v6)
  {
    v18 = MEMORY[0x1E695E4D0];
    if (v17)
    {
      v18 = MEMORY[0x1E695E4C0];
    }

LABEL_37:
    v6 = 0;
    *a2 = *v18;
  }

  return v6;
}

uint64_t sc_UpgradePersistentStoreForWriting(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 220) & 2) == 0)
  {
    v8 = 2388;
LABEL_14:
    sc_UpgradePersistentStoreForWriting_cold_1(v8, &v9);
    v3 = v9;
    goto LABEL_15;
  }

  if (!*(a1 + 280))
  {
    v8 = 2389;
    goto LABEL_14;
  }

  if (!a2)
  {
    v8 = 2390;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = *(a1 + 288);
  *a2 = v4;
  if ((*(a1 + 220) & 2) == 0 || (v4 & 2) != 0)
  {
    return v3;
  }

  FigGetUpTimeNanoseconds();
  v5 = *(a1 + 280);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    FigGetUpTimeNanoseconds();
    return 4294954514;
  }

  v3 = v6(v5, 1, 0);
  FigGetUpTimeNanoseconds();
  if (!v3)
  {
    *(a1 + 288) |= 3u;
    return v3;
  }

LABEL_15:
  if (v3 == -16914)
  {
    *(a1 + 288) &= 0xFFFFFFFC;
    return 4294950382;
  }

  return v3;
}

uint64_t FigStreamingCacheFlushIO(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    FigStreamingCacheFlushIO_cold_3(&v12);
    return v12;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheFlushIO_cold_1(&v10);
    v6 = v10;
    goto LABEL_11;
  }

  v4 = *(a1 + 256) + 1;
  *(a1 + 256) = v4;
  if ((*(a1 + 220) & 2) != 0)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
    if (!v7)
    {
      FigStreamingCacheFlushIO_cold_2(&v11);
      v6 = v11;
      goto LABEL_11;
    }

    v8 = v7;
    *v7 = CFRetain(a1);
    v8[1] = v4;
    dispatch_async_f(*(a1 + 240), v8, sc_FlushIOCompleteDispatchFunction);
    if (!a2)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = sc_PostFlushIOCompletedNotification();
    v6 = v5;
    if (!a2 || v5)
    {
      goto LABEL_11;
    }
  }

  v6 = 0;
  *a2 = v4;
LABEL_11:
  FigSimpleMutexUnlock();
  return v6;
}

void sc_FlushIOCompleteDispatchFunction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  FigSimpleMutexLock();
  if (*(v2 + 272))
  {
    sc_FlushIOCompleteDispatchFunction_cold_1();
  }

  else
  {
    v4 = *(v2 + 168);
    while (v4)
    {
      v5 = v4;
      v4 = *(v4 + 8);
      if (*(v5 + 128))
      {
        if (!stream_UpgradePersistentStreamInfoForWriting(v5))
        {
          stream_CommitPersistentStreamInfoIfNecessary(v5);
          if (*(v5 + 120))
          {
            if (!*(v5 + 121))
            {
              stream_DowngradePersistentStreamInfoForReading(v5);
            }
          }
        }
      }
    }

    if (v3 != -1)
    {
      sc_PostFlushIOCompletedNotification();
    }
  }

  FigSimpleMutexUnlock();
  FigDeferCFRelease();

  free(a1);
}

uint64_t sc_PostFlushIOCompletedNotification()
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    sc_PostFlushIOCompletedNotification_cold_1();
    return v2;
  }

  else
  {
    sc_PostFlushIOCompletedNotification_cold_2(&v3);
    return v3;
  }
}

uint64_t FigStreamingCacheFlushIOSync(uint64_t a1)
{
  if (!a1)
  {
    FigStreamingCacheFlushIOSync_cold_2(&v10);
    v3 = 0;
    v4 = v10;
    goto LABEL_6;
  }

  v2 = a1 + 16;
  FigSimpleMutexLock();
  if (!*(v2 + 256) && (*(a1 + 220) & 2) != 0)
  {
    dispatch_retain(*(a1 + 240));
    v6 = *(a1 + 240);
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
    if (v7)
    {
      v3 = v7;
      *v7 = CFRetain(a1);
      v3[1] = -1;
      FigSimpleMutexUnlock();
      if (!v6)
      {
        goto LABEL_5;
      }

      dispatch_sync_f(v6, v3, sc_FlushIOCompleteDispatchFunction);
      v4 = 0;
    }

    else
    {
      v8 = FigStreamingCacheFlushIOSync_cold_1(v2, v6, &v9);
      v4 = v9;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    dispatch_release(v6);
LABEL_11:
    v3 = 0;
    goto LABEL_6;
  }

  FigSimpleMutexUnlock();
  v3 = 0;
LABEL_5:
  v4 = 0;
LABEL_6:
  free(v3);
  return v4;
}

uint64_t FigStreamingCacheInvalidate(uint64_t a1)
{
  if (a1)
  {
    figStreamingCacheInvalidate(a1);
  }

  return 0;
}

uint64_t figStreamingCacheInvalidate(uint64_t a1)
{
  if (dword_1EAF17CD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*(a1 + 272))
  {
    *(a1 + 272) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if ((*(a1 + 220) & 2) != 0)
    {
      if (*(a1 + 240))
      {
        FigSimpleMutexUnlock();
        dispatch_sync_f(*(a1 + 240), 0, sc_EmptyDispatchFunc);
        FigSimpleMutexLock();
        v3 = *(a1 + 168);
        if (v3)
        {
          do
          {
            v4 = *(v3 + 8);
            if (*(v3 + 128))
            {
              stream_CommitPersistentStreamInfoIfNecessary(v3);
            }

            v3 = v4;
          }

          while (v4);
        }
      }

      v5 = *(a1 + 280);
      if (v5)
      {
        if ((*(a1 + 220) & 2) != 0 && !*(a1 + 40))
        {
          FigShared_CheckIntoDiskCache(*(a1 + 32));
          v5 = *(a1 + 280);
        }

        FigBaseObject = FigHLSPersistentStoreGetFigBaseObject(v5);
        if (FigBaseObject)
        {
          v7 = FigBaseObject;
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v8)
          {
            v8(v7);
          }
        }
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 32) = 0;
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 40) = 0;
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 24) = 0;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 48) = 0;
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 56) = 0;
    }

    v14 = *(a1 + 280);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 280) = 0;
    }

    v15 = *(a1 + 120);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 120) = 0;
    }

    v16 = *(a1 + 128);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 128) = 0;
    }

    v17 = *(a1 + 160);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 160) = 0;
    }

    v18 = *(a1 + 232);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 232) = 0;
    }

    v19 = *(a1 + 224);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 224) = 0;
    }

    v20 = *(a1 + 136);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 136) = 0;
    }

    v21 = *(a1 + 296);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 296) = 0;
    }

    v22 = *(a1 + 248);
    if (v22)
    {
      dispatch_release(v22);
      *(a1 + 248) = 0;
    }

    v23 = *(a1 + 168);
    while (v23)
    {
      v24 = v23;
      v23 = v23[1];
      v25 = v24[3];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = v25[1];
        }

        while (v25);
        do
        {
          started = MediaSegmentStartTimeList_RB_NEXT(v26);
          segment_EvictEntry(v26, 1, 0);
          v26 = started;
        }

        while (started);
      }

      if (v24[4])
      {
        figStreamingCacheInvalidate_cold_1();
      }

      if (v24[3])
      {
        figStreamingCacheInvalidate_cold_2();
      }

      v28 = v24[9];
      if (v28)
      {
        CFRelease(v28);
        v24[9] = 0;
      }

      v29 = v24[8];
      if (v29)
      {
        CFRelease(v29);
        v24[8] = 0;
      }

      v30 = v24[13];
      if (v30)
      {
        CFRelease(v30);
        v24[13] = 0;
      }

      v31 = v24[11];
      if (v31)
      {
        CFRelease(v31);
        v24[11] = 0;
      }

      v32 = v24[14];
      if (v32)
      {
        CFRelease(v32);
        v24[14] = 0;
      }

      v33 = v24[6];
      if (v33)
      {
        CFRelease(v33);
        v24[6] = 0;
      }

      v34 = v24[17];
      if (v34)
      {
        CFRelease(v34);
        v24[17] = 0;
      }

      v35 = v24[18];
      if (v35)
      {
        CFRelease(v35);
        v24[18] = 0;
      }

      v36 = v24[19];
      if (v36)
      {
        CFRelease(v36);
        v24[19] = 0;
      }

      v37 = v24[20];
      if (v37)
      {
        CFRelease(v37);
        v24[20] = 0;
      }

      v38 = v24[21];
      if (v38)
      {
        CFRelease(v38);
        v24[21] = 0;
      }

      v39 = v24[16];
      if (v39)
      {
        v40 = FigHLSPersistentStreamInfoGetFigBaseObject(v39);
        if (v40)
        {
          v41 = v40;
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v42)
          {
            v42(v41);
          }
        }

        v43 = v24[16];
        if (v43)
        {
          CFRelease(v43);
        }
      }

      free(v24);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigStreamingCacheSetCryptKey(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetCryptKey_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheSetCryptKey_cold_3(&v8);
    return v8;
  }

  if (!a3)
  {
    FigStreamingCacheSetCryptKey_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetCryptKey_cold_1(&v8);
    v6 = v8;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    v6 = sc_writeMetadataToDisk(a1, a2, a3, @"ContentCryptKey");
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t sc_writeMetadataToDisk(dispatch_queue_t *a1, const void *a2, const void *a3, const void *a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = malloc_type_malloc(0x20uLL, 0x60040DC1F003FuLL);
        if (a1)
        {
          v9 = CFRetain(a1);
        }

        else
        {
          v9 = 0;
        }

        *v8 = v9;
        v8[1] = CFRetain(a2);
        v8[2] = CFRetain(a3);
        v8[3] = CFRetain(a4);
        dispatch_async_f(a1[30], v8, sc_WriteMetadataToDiskDispatchFunction);
        return 0;
      }

      else
      {
        sc_writeMetadataToDisk_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      sc_writeMetadataToDisk_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    sc_writeMetadataToDisk_cold_3(&v13);
    return v13;
  }
}

uint64_t FigStreamingCacheCopyCryptKey(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyCryptKey_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopyCryptKey_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopyCryptKey_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyCryptKey_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"ContentCryptKey", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheSetChapterArtwork(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetChapterArtwork_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheSetChapterArtwork_cold_3(&v8);
    return v8;
  }

  if (!a3)
  {
    FigStreamingCacheSetChapterArtwork_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetChapterArtwork_cold_1(&v8);
    v6 = v8;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    v6 = sc_writeMetadataToDisk(a1, a2, a3, @"ChapterArtwork");
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigStreamingCacheCopyChapterArtwork(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyChapterArtwork_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopyChapterArtwork_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopyChapterArtwork_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyChapterArtwork_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"ChapterArtwork", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheSetSessionData(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheSetSessionData_cold_1(&v8);
      v6 = v8;
    }

    else if ((*(a1 + 220) & 2) != 0)
    {
      v6 = sc_writeMetadataToDisk(a1, a2, a3, @"SessionData");
    }

    else
    {
      v6 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigStreamingCacheSetSessionData_cold_2(&v9);
    return v9;
  }

  return v6;
}

uint64_t FigStreamingCacheCopySessionData(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopySessionData_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopySessionData_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopySessionData_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopySessionData_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"SessionData", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheHintPlaybackTime(uint64_t a1, double a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheHintPlaybackTime_cold_1(&v8);
      v6 = v8;
    }

    else
    {
      if (!*(a1 + 217))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 200);
      if (*(a1 + 220))
      {
        if (v4 <= a2)
        {
          v5 = a2;
        }

        else
        {
          v5 = *(a1 + 200);
        }

        if (*(a1 + 208) >= v5)
        {
          a2 = v5;
        }

        else
        {
          a2 = *(a1 + 208);
        }
      }

      if (a2 < v4 || a2 > *(a1 + 208))
      {
        FigStreamingCacheHintPlaybackTime_cold_2(&v9);
        v6 = v9;
      }

      else
      {
LABEL_13:
        v6 = 0;
        *(a1 + 192) = a2;
        *(a1 + 216) = 1;
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigStreamingCacheHintPlaybackTime_cold_3(&v10);
    return v10;
  }

  return v6;
}

uint64_t FigStreamingCacheSetCacheTimeRange(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    if (a2 > a3)
    {
      FigStreamingCacheSetCacheTimeRange_cold_2(&v15);
      return v15;
    }

    else
    {
      FigSimpleMutexLock();
      if (*(a1 + 272))
      {
        FigStreamingCacheSetCacheTimeRange_cold_1(&v14);
        i = v14;
      }

      else
      {
        *(a1 + 200) = a2;
        *(a1 + 208) = a3;
        *(a1 + 217) = 1;
        for (i = *(a1 + 168); i; i = *(i + 8))
        {
          if (*(i + 121))
          {
            v7 = *(i + 24);
            if (v7)
            {
              v8 = *(i + 24);
              do
              {
                v9 = v8;
                v8 = *(v8 + 8);
              }

              while (v8);
              while (*(v9 + 120) + *(v9 + 128) <= *(a1 + 200))
              {
                segment_EvictEntry(v9, 0, 1);
                v7 = *(i + 24);
                if (!v7)
                {
                  goto LABEL_20;
                }

                v10 = *(i + 24);
                do
                {
                  v9 = v10;
                  v10 = *(v10 + 8);
                }

                while (v10);
              }

              do
              {
                v11 = v7;
                v7 = *(v7 + 16);
              }

              while (v7);
              while (*(v11 + 120) >= *(a1 + 208))
              {
                segment_EvictEntry(v11, 0, 1);
                v12 = *(i + 24);
                if (!v12)
                {
                  break;
                }

                do
                {
                  v11 = v12;
                  v12 = *(v12 + 16);
                }

                while (v12);
              }
            }
          }

LABEL_20:
          ;
        }
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    FigStreamingCacheSetCacheTimeRange_cold_3(&v16);
    return v16;
  }

  return i;
}

uint64_t FigStreamingCacheCreateMediaStream(uint64_t a1, uint64_t a2, __CFSet *a3, const void *a4, int a5, char a6, void *a7)
{
  v18 = 0;
  v17 = 0;
  if (a1)
  {
    if (a3)
    {
      if ((a5 & 0x80000000) == 0)
      {
        if (!a7)
        {
          FigStreamingCacheCreateMediaStream_cold_2(&v19);
          return v19;
        }

        FigSimpleMutexLock();
        if (*(a1 + 272))
        {
          FigStreamingCacheCreateMediaStream_cold_1(&v19);
          v15 = v19;
        }

        else
        {
          v14 = sc_CreateAndAddStreamEntry(a1, a2, a3, a4, a5, a6, &v17, &v18);
          if (!v14)
          {
            if ((*(a1 + 220) & 2) == 0)
            {
              v15 = 0;
              goto LABEL_9;
            }

            v14 = stream_EnsurePersistentStreamInfo(v18, 0);
          }

          v15 = v14;
        }

LABEL_9:
        FigSimpleMutexUnlock();
        if (!a7)
        {
          return v15;
        }

        goto LABEL_10;
      }

      FigStreamingCacheCreateMediaStream_cold_3(&v19);
    }

    else
    {
      FigStreamingCacheCreateMediaStream_cold_4(&v19);
    }
  }

  else
  {
    FigStreamingCacheCreateMediaStream_cold_5(&v19);
  }

  v15 = v19;
  if (!a7)
  {
    return v15;
  }

LABEL_10:
  if (!v15)
  {
    *a7 = v18;
  }

  return v15;
}

uint64_t sc_CreateAndAddStreamEntry(void *a1, uint64_t a2, __CFSet *a3, const void *a4, int a5, char a6, char *a7, void *a8)
{
  v8 = a7;
  v9 = a1;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  if (!a1)
  {
    sc_CreateAndAddStreamEntry_cold_10(v49);
    v16 = 0;
    v10 = 0;
LABEL_49:
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
LABEL_58:
    if (v32)
    {
      if (v16)
      {
        free(v16);
      }

      v17 = 0;
      if (v10)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v17 = 0;
    v20 = 0;
LABEL_15:
    v21 = a8;
    if (!a8)
    {
      goto LABEL_30;
    }

LABEL_29:
    *v21 = v16;
    goto LABEL_30;
  }

  v10 = a3;
  if (!a3)
  {
    sc_CreateAndAddStreamEntry_cold_9(v49);
    v16 = 0;
LABEL_48:
    v9 = 0;
    goto LABEL_49;
  }

  if (a5 < 0)
  {
    sc_CreateAndAddStreamEntry_cold_8(v49);
LABEL_47:
    v16 = 0;
    v10 = 0;
    goto LABEL_48;
  }

  if (!a8)
  {
    sc_CreateAndAddStreamEntry_cold_7(v49);
    goto LABEL_47;
  }

  v14 = a2;
  DWORD2(v40) = a2;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  LODWORD(v42) = a5;
  LOBYTE(v49[0]) = 0;
  v15 = a1[21];
  if (v15)
  {
    v16 = 0;
    do
    {
      if (sc_MatchMediaStreamWithAttributes(v15, a2, v39, v49))
      {
        v16 = v15;
      }

      if (LOBYTE(v49[0]))
      {
        break;
      }

      v15 = v15[1];
    }

    while (v15);
    if (v16)
    {
      v8 = a7;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v9 = 0;
      v10 = 0;
      if (*(v16 + 14) == -1)
      {
        *(v16 + 14) = v14;
      }

      v20 = 1;
      goto LABEL_15;
    }
  }

  v16 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E004082C26414uLL);
  if (!v16)
  {
    sc_CreateAndAddStreamEntry_cold_6(v49);
LABEL_52:
    v10 = 0;
    v9 = 0;
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
    v8 = a7;
    goto LABEL_58;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  cf = CFSetCreateMutable(AllocatorForMedia, 0, 0);
  if (!cf)
  {
    sc_CreateAndAddStreamEntry_cold_5(v49);
    goto LABEL_52;
  }

  v23 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    sc_CreateAndAddStreamEntry_cold_4(v49);
    v9 = 0;
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
    v10 = cf;
    v8 = a7;
    goto LABEL_58;
  }

  v24 = FigGetAllocatorForMedia();
  v34 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v34)
  {
    sc_CreateAndAddStreamEntry_cold_3(v49);
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
    v10 = cf;
    v8 = a7;
    v9 = Mutable;
    goto LABEL_58;
  }

  v25 = FigGetAllocatorForMedia();
  v18 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v18)
  {
    sc_CreateAndAddStreamEntry_cold_2(v49);
LABEL_57:
    v32 = v49[0];
    v10 = cf;
    v8 = a7;
    v19 = v34;
    v9 = Mutable;
    goto LABEL_58;
  }

  v26 = FigGetAllocatorForMedia();
  v27 = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v27)
  {
    sc_CreateAndAddStreamEntry_cold_1(v49);
    goto LABEL_57;
  }

  v17 = v27;
  v16[6] = CFRetain(cf);
  v16[18] = CFRetain(Mutable);
  v16[19] = CFRetain(v34);
  v16[20] = CFRetain(v18);
  v16[21] = CFRetain(v17);
  *(v16 + 14) = v14;
  v16[8] = CFRetain(v10);
  if (a4)
  {
    v28 = CFRetain(a4);
  }

  else
  {
    v28 = 0;
  }

  v20 = 0;
  v16[9] = v28;
  *(v16 + 20) = a5;
  *(v16 + 84) = a6;
  *v16 = v9;
  *(v16 + 121) = 1;
  v16[3] = 0;
  v16[4] = 0;
  v29 = v9[21];
  v16[1] = v29;
  v30 = v29 == 0;
  v31 = (v29 + 16);
  if (v30)
  {
    v31 = v9 + 22;
  }

  *v31 = v16 + 1;
  v9[21] = v16;
  v16[2] = v9 + 21;
  v8 = a7;
  v21 = a8;
  v9 = Mutable;
  v10 = cf;
  v19 = v34;
  if (a8)
  {
    goto LABEL_29;
  }

LABEL_30:
  v32 = 0;
  if (v8)
  {
    *v8 = v20;
  }

  if (v10)
  {
LABEL_33:
    CFRelease(v10);
  }

LABEL_34:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v32;
}

uint64_t FigStreamingCacheCopyAllStreamsMetadata(uint64_t a1, __CFArray **a2)
{
  value = 0;
  if (!a1)
  {
    FigStreamingCacheCopyAllStreamsMetadata_cold_5(&v20);
LABEL_33:
    v17 = v20;
    goto LABEL_26;
  }

  if (!a2)
  {
    FigStreamingCacheCopyAllStreamsMetadata_cold_4(&v20);
    goto LABEL_33;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyAllStreamsMetadata_cold_1(&v20);
    Mutable = 0;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = *(a1 + 168);
      if (v6)
      {
        v7 = MEMORY[0x1E695E9E8];
        v8 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          v9 = FigGetAllocatorForMedia();
          v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], v7);
          if (!v10)
          {
            FigStreamingCacheCopyAllStreamsMetadata_cold_2(&v20);
            goto LABEL_36;
          }

          v11 = v10;
          v12 = *(v6 + 64);
          if (v12)
          {
            CFDictionaryAddValue(v10, @"SMD_URL", v12);
          }

          v13 = *(v6 + 72);
          if (v13)
          {
            CFDictionaryAddValue(v11, @"SMD_StableStreamIdentifier", v13);
          }

          if (*(v6 + 84))
          {
            CFDictionaryAddValue(v11, @"SMD_MediaIsCompressible", v8);
          }

          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          sc_CopyPlaylistForStream(a1, v6, &value);
          if (v14)
          {
            break;
          }

          v15 = value;
          if (value)
          {
            CFDictionaryAddValue(v11, @"SMD_PlaylistData", value);
          }

          v16 = *(v6 + 112);
          if (v16)
          {
            CFDictionaryAddValue(v11, @"SMD_HTTPResponseHeaders", v16);
          }

          CFArrayAppendValue(Mutable, v11);
          CFRelease(v11);
          if (v15)
          {
            CFRelease(v15);
            value = 0;
          }

          v6 = *(v6 + 8);
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        v17 = v14;
      }

      else
      {
LABEL_22:
        v17 = 0;
        *a2 = Mutable;
      }

      goto LABEL_23;
    }

    FigStreamingCacheCopyAllStreamsMetadata_cold_3(&v20);
  }

LABEL_36:
  v17 = v20;
LABEL_23:
  FigSimpleMutexUnlock();
  if (v17 && Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_26:
  if (value)
  {
    CFRelease(value);
  }

  return v17;
}

unint64_t MediaSegmentStartTimeList_RB_NEXT(unint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 8);
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (!result || *(result + 8) != v3)
    {
      do
      {
        result = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (!result)
        {
          break;
        }

        v4 = v3 == *(result + 16);
        v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(uint64_t a1, int a2, uint64_t *a3, CFTypeRef *a4, void *a5, double *a6, double a7)
{
  v7 = a6;
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a6)
        {
          FigSimpleMutexLock();
          if (*(a1 + 272))
          {
            FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_1(v29);
            v15 = 0;
            v24 = v29[0];
          }

          else
          {
            v14 = *(a1 + 168);
            if (v14)
            {
              v28 = v7;
              v15 = 0;
              v16 = 0;
              v17 = 0.0;
              do
              {
                LOBYTE(v29[0]) = 0;
                if ((*(a1 + 220) & 2) == 0 || !stream_EnsurePersistentStreamInfo(v14, v29))
                {
                  if (*(v14 + 56) == a2)
                  {
                    v18 = *(v14 + 24);
                    if (v18)
                    {
                      while (1)
                      {
                        v19 = *(v18 + 120);
                        if (v19 <= a7 && v19 + *(v18 + 128) > a7)
                        {
                          break;
                        }

                        if (v19 >= a7)
                        {
                          v20 = 8;
                        }

                        else
                        {
                          v20 = 16;
                        }

                        v18 = *(v18 + v20);
                        if (!v18)
                        {
                          goto LABEL_22;
                        }
                      }

                      LastSegmentOfContiguousRangeContainingSegment = stream_GetLastSegmentOfContiguousRangeContainingSegment(v18, 1);
                      v22 = *(LastSegmentOfContiguousRangeContainingSegment + 120);
                      if (*(LastSegmentOfContiguousRangeContainingSegment + 128) + v22 - a7 > v17)
                      {
                        v17 = *(LastSegmentOfContiguousRangeContainingSegment + 128) + v22 - a7;
                        v15 = v14;
                      }

                      if (*(v14 + 80) > v16)
                      {
                        v16 = *(v14 + 80);
                      }
                    }
                  }

LABEL_22:
                  if ((*(a1 + 220) & 2) != 0)
                  {
                    if (LOBYTE(v29[0]))
                    {
                      v23 = stream_UnlockPersistentStreamInfoForAnything(v14);
                      if (v23)
                      {
                        v24 = v23;
                        goto LABEL_34;
                      }
                    }
                  }
                }

                v14 = *(v14 + 8);
              }

              while (v14);
              if (v15 && v16 > *(v15 + 80))
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                v7 = v28;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v24 = 0;
                goto LABEL_37;
              }

              v24 = 0;
LABEL_34:
              v7 = v28;
LABEL_37:
              FigSimpleMutexUnlock();
              if (v24)
              {
                return v24;
              }

              goto LABEL_38;
            }

            v15 = 0;
            v24 = 0;
          }

          v17 = 0.0;
          goto LABEL_37;
        }

        FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_2(v29);
      }

      else
      {
        FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_3(v29);
      }
    }

    else
    {
      FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_4(v29);
    }
  }

  else
  {
    FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime_cold_5(v29);
  }

  v15 = 0;
  v24 = v29[0];
  v17 = 0.0;
  if (v29[0])
  {
    return v24;
  }

LABEL_38:
  *a3 = v15;
  if (v15)
  {
    *a4 = CFRetain(*(v15 + 64));
    *v7 = v17;
    if (a5)
    {
      v26 = *(v15 + 72);
      if (v26)
      {
        v26 = CFRetain(v26);
      }

      goto LABEL_44;
    }
  }

  else
  {
    *a4 = 0;
    *v7 = v17;
    if (a5)
    {
      v26 = 0;
LABEL_44:
      *a5 = v26;
    }
  }

  return v24;
}

unint64_t stream_GetLastSegmentOfContiguousRangeContainingSegment(unint64_t a1, int a2)
{
  v2 = a1;
  if ((*(a1 + 160) & 5) == 1)
  {
    for (i = MediaSegmentStartTimeList_RB_NEXT(a1); i; v2 = v5)
    {
      if ((*(v2 + 160) & 5) != 1)
      {
        break;
      }

      v5 = i;
      if (a2)
      {
        if ((*(i + 160) & 1) == 0)
        {
          break;
        }
      }

      i = MediaSegmentStartTimeList_RB_NEXT(i);
    }
  }

  return v2;
}

uint64_t FigStreamingCacheMediaStreamSetPlaylist(uint64_t a1, void *a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamSetPlaylist_cold_3(&v17);
    return v17;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamSetPlaylist_cold_2(&v16);
    return v16;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamSetPlaylist_cold_1(&v15);
    v9 = v15;
    goto LABEL_8;
  }

  v8 = *(a1 + 168);
  if (!v8)
  {
LABEL_7:
    v9 = FigSignalErrorAtGM();
LABEL_8:
    FigSimpleMutexUnlock();
    return v9;
  }

  while (v8 != a2)
  {
    v8 = v8[1];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v10 = v8[11];
  v8[11] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = v8[14];
  v8[14] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if ((*(a1 + 220) & 2) != 0)
  {
    CFRetain(a1);
    dispatch_async_f(*(a1 + 240), v8, stream_WriteMediaPlaylistToDiskDispatchFunction);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t FigStreamingCacheMediaStreamCopyPlaylist(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyPlaylist_cold_3(&v15);
    return v15;
  }

  if (!(a3 | a4))
  {
    FigStreamingCacheMediaStreamCopyPlaylist_cold_1(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyPlaylist_cold_2(&v14);
    v9 = v14;
  }

  else
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      while (v8 != a2)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      if (a3)
      {
        sc_CopyPlaylistForStream(a1, v8, a3);
        v9 = v12;
        if (a4 && !v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (a4)
        {
LABEL_10:
          v10 = *(v8 + 112);
          if (v10)
          {
            v10 = CFRetain(v10);
          }

          v9 = 0;
          *a4 = v10;
          goto LABEL_14;
        }

        v9 = 0;
      }
    }

    else
    {
LABEL_7:
      v9 = FigSignalErrorAtGM();
    }
  }

LABEL_14:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigStreamingCacheMediaStreamSetNetworkURL(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamSetNetworkURL_cold_1(&v11);
    v8 = v11;
    goto LABEL_14;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v9 = *(v6 + 64);
    *(v6 + 64) = a3;
    CFRetain(a3);
    if (v9)
    {
      CFRelease(v9);
    }

    if ((*(a1 + 220) & 2) == 0)
    {
      goto LABEL_13;
    }

    stream_SetPropertyForPersistentStreamInfoUpgradingToWritingIfNecessary(v6, @"StreamInfoMediaPlaylistNetworkURL", *(v6 + 64));
    if (!v7)
    {
      if (*(v6 + 120) && !*(v6 + 121))
      {
        stream_DowngradePersistentStreamInfoForReading(v6);
      }

LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }
  }

  else
  {
LABEL_8:
    v7 = FigSignalErrorAtGM();
  }

  v8 = v7;
LABEL_14:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheMediaStreamCopyNetworkURL(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_4(&v10);
    return v10;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_3(&v10);
    return v10;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_2(&v10);
    return v10;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyNetworkURL_cold_1(&v10);
    v7 = v10;
  }

  else
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      while (v6 != a2)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      v8 = *(v6 + 64);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      v7 = 0;
      *a3 = v8;
    }

    else
    {
LABEL_8:
      v7 = FigSignalErrorAtGM();
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigStreamingCacheMediaStreamReserveSpaceForByteSize(uint64_t a1, uint64_t a2, const void *a3, double a4)
{
  v12 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_4(&v13);
    return v13;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_3(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_1(&v13);
  }

  else
  {
    if (!*(a1 + 216) || (v8 = *(a1 + 112), v8 <= 0.0) || v8 + *(a1 + 192) > a4)
    {
      v9 = *(a1 + 168);
      if (v9)
      {
        while (v9 != a2)
        {
          v9 = *(v9 + 8);
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        CFDictionarySetValue(*(a1 + 232), *(v9 + 56), 0);
        if (sc_HasEnoughAvailableBackingMemory(a1, a3, &v12) || sc_GetBackingForMediaStreamAtTime(a1, v9, v12, a4))
        {
          CFDictionarySetValue(*(a1 + 232), *(v9 + 56), a3);
          v10 = 0;
        }

        else
        {
          v10 = 4294951055;
        }
      }

      else
      {
LABEL_10:
        v10 = FigSignalErrorAtGM();
      }

      goto LABEL_13;
    }

    FigStreamingCacheMediaStreamReserveSpaceForByteSize_cold_2(&v13);
  }

  v10 = v13;
LABEL_13:
  FigSimpleMutexUnlock();
  return v10;
}

BOOL sc_HasEnoughAvailableBackingMemory(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  context = 0;
  CFDictionaryApplyFunction(*(a1 + 232), sc_ComputeTotalReservedSizeFunc, &context);
  if ((*(a1 + 220) & 2) == 0)
  {
    v6 = *(a1 + 72);
    if (v6 >= 1)
    {
      result = v6 >= (*(a1 + 184) + a2 + context);
      if (!a3)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_6:
    result = 1;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(a1 + 40))
  {
    goto LABEL_6;
  }

  result = FigShared_ReserveDiskCacheBacking(*(a1 + 32), *(a1 + 48), *(a1 + 184) + a2 + context) == 0;
  if (!a3)
  {
    return result;
  }

LABEL_9:
  if (result)
  {
    a2 = 0;
  }

  else if ((*(a1 + 220) & 2) == 0)
  {
    a2 = *(a1 + 184) + a2 + context - *(a1 + 72);
  }

  *a3 = a2;
  return result;
}

uint64_t FigStreamingCacheMediaStreamGetMediaSegmentAtTime(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_4(&v13);
LABEL_25:
    i = 0;
LABEL_26:
    v9 = v13;
    if (v13)
    {
      return v9;
    }

    goto LABEL_20;
  }

  i = a2;
  if (!a2)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_3(&v13);
    goto LABEL_26;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_2(&v13);
    goto LABEL_25;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtTime_cold_1(&v13);
    i = 0;
    v9 = v13;
  }

  else
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      while (v8 != i)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      for (i = *(v8 + 24); i; i = *(i + v11))
      {
        v10 = *(i + 120);
        if (v10 <= a4 && v10 + *(i + 128) > a4)
        {
          break;
        }

        v11 = v10 >= a4 ? 8 : 16;
      }

      if (i)
      {
        v9 = 0;
      }

      else
      {
        v9 = 4294951053;
      }
    }

    else
    {
LABEL_8:
      v9 = FigSignalErrorAtGM();
      i = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (!v9)
  {
LABEL_20:
    *a3 = i;
  }

  return v9;
}

uint64_t FigStreamingCacheMediaStreamGetMediaSegmentAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  if (!a1)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_6(&v25);
LABEL_26:
    v14 = 0;
    LOBYTE(v9) = 0;
LABEL_27:
    v13 = v25;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_5(&v25);
    goto LABEL_26;
  }

  v9 = a3;
  if (!a3)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_4(&v25);
    v14 = 0;
    goto LABEL_27;
  }

  if (a4 < 0)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_3(&v25);
    goto LABEL_26;
  }

  if (!a6)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_2(&v25);
    LOBYTE(v9) = 0;
    v13 = v25;
    if (!a5)
    {
      return v13;
    }

    goto LABEL_20;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamGetMediaSegmentAtOffset_cold_1(&v25);
    v14 = 0;
    LOBYTE(v9) = 0;
    v13 = v25;
  }

  else
  {
    v12 = *(a1 + 168);
    if (v12)
    {
      while (v12 != a2)
      {
        v12 = *(v12 + 8);
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      *(&v19 + 1) = v9;
      *&v20 = a4;
      v15 = MediaSegmentOffsetList_RB_FIND((v12 + 32), v18);
      v14 = v15;
      if (v15)
      {
        v13 = 0;
        LOBYTE(v9) = v15[20] & 1;
      }

      else
      {
        LOBYTE(v9) = 0;
        v13 = 4294951053;
      }
    }

    else
    {
LABEL_10:
      v13 = FigSignalErrorAtGM();
      v14 = 0;
      LOBYTE(v9) = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (a6)
  {
LABEL_15:
    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    *a6 = v16;
  }

LABEL_19:
  if (a5)
  {
LABEL_20:
    *a5 = v9;
  }

  return v13;
}

void *MediaSegmentOffsetList_RB_FIND(void **a1, void *a2)
{
  for (i = *a1; i; i = i[v5])
  {
    started = segment_SortByURLAndStartOffset(a2, i);
    if (started < 0)
    {
      v5 = 4;
    }

    else
    {
      if (!started)
      {
        return i;
      }

      v5 = 5;
    }
  }

  return i;
}

uint64_t FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  valuePtr = a3;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  if (!a1)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_5(&v23);
LABEL_23:
    v12 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_4(&v23);
    goto LABEL_23;
  }

  if (!a5)
  {
    FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_3(&v23);
    goto LABEL_23;
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v9)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_1(&v23);
      v12 = 0;
      v13 = 0;
      v11 = v23;
    }

    else
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        while (v10 != a2)
        {
          v10 = *(v10 + 8);
          if (!v10)
          {
            goto LABEL_9;
          }
        }

        *(&v17 + 1) = v9;
        v14 = MediaSegmentMediaSequenceNumberList_RB_FIND((v10 + 40), v16);
        v12 = v14;
        if (v14)
        {
          v11 = 0;
          v13 = *(v14 + 160) & 1;
        }

        else
        {
          v13 = 0;
          v11 = 4294951053;
        }
      }

      else
      {
LABEL_9:
        v11 = FigSignalErrorAtGM();
        v12 = 0;
        v13 = 0;
      }
    }

    FigSimpleMutexUnlock();
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber_cold_2(&v23);
  v12 = 0;
LABEL_25:
  v13 = 0;
  v11 = v23;
  if (!v23)
  {
LABEL_14:
    *a5 = v12;
  }

LABEL_15:
  if (a4)
  {
    *a4 = v13;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t MediaSegmentMediaSequenceNumberList_RB_FIND(uint64_t *a1, uint64_t a2)
{
  for (i = *a1; i; i = *(i + v5))
  {
    v4 = CFNumberCompare(*(a2 + 104), *(i + 104), 0);
    if (v4 < 0)
    {
      v5 = 56;
    }

    else
    {
      if (!v4)
      {
        return i;
      }

      v5 = 64;
    }
  }

  return i;
}

uint64_t FigStreamingCacheMediaStreamCopyCachedTimeRanges(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v30 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_6(&range);
    return LODWORD(range.start.value);
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_5(&range);
    return LODWORD(range.start.value);
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_4(&range);
    return LODWORD(range.start.value);
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_1(&range);
    goto LABEL_41;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = Mutable;
      if ((*(a1 + 220) & 2) != 0)
      {
        v24 = stream_EnsurePersistentStreamInfo(v6, &v30);
        if (v24)
        {
          goto LABEL_34;
        }
      }

      v11 = *(v6 + 24);
      if (v11)
      {
        do
        {
          started = v11;
          v11 = *(v11 + 8);
        }

        while (v11);
        do
        {
          memset(&range, 0, sizeof(range));
          memset(&v28, 0, sizeof(v28));
          memset(&v27, 0, sizeof(v27));
          if (*(started + 160))
          {
            CMTimeMakeWithSeconds(&v28, *(started + 120), 1000);
            LastSegmentOfContiguousRangeContainingSegment = stream_GetLastSegmentOfContiguousRangeContainingSegment(started, 1);
            v13 = LastSegmentOfContiguousRangeContainingSegment;
            v15 = *(LastSegmentOfContiguousRangeContainingSegment + 120);
            if (*(LastSegmentOfContiguousRangeContainingSegment + 160))
            {
              v15 = v15 + *(LastSegmentOfContiguousRangeContainingSegment + 128);
            }

            CMTimeMakeWithSeconds(&v27, v15 - *(started + 120), 1000);
            v25.start = v28;
            duration = v27;
            CMTimeRangeMake(&range, &v25.start, &duration);
            v16 = FigGetAllocatorForMedia();
            v25 = range;
            v17 = CMTimeRangeCopyAsDictionary(&v25, v16);
            if (!v17)
            {
              v24 = FigSignalErrorAtGM();
              goto LABEL_34;
            }

            v18 = v17;
            CFArrayAppendValue(v10, v17);
            CFRelease(v18);
          }

          else
          {
            v13 = started;
          }

          started = MediaSegmentStartTimeList_RB_NEXT(v13);
        }

        while (started);
      }

      if (!CFArrayGetCount(v10))
      {
        v19 = FigGetAllocatorForMedia();
        v20 = *(MEMORY[0x1E6960CA8] + 16);
        *&range.start.value = *MEMORY[0x1E6960CA8];
        *&range.start.epoch = v20;
        *&range.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
        v21 = CMTimeRangeCopyAsDictionary(&range, v19);
        if (!v21)
        {
          FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_2(&range);
          value_low = LODWORD(range.start.value);
          goto LABEL_26;
        }

        v22 = v21;
        CFArrayAppendValue(v10, v21);
        CFRelease(v22);
      }

      if ((*(a1 + 220) & 2) != 0 && v30 && (v24 = stream_UnlockPersistentStreamInfoForAnything(v6), v24))
      {
LABEL_34:
        value_low = v24;
      }

      else
      {
        value_low = 0;
        *a3 = CFRetain(v10);
      }

LABEL_26:
      CFRelease(v10);
      goto LABEL_27;
    }

    FigStreamingCacheMediaStreamCopyCachedTimeRanges_cold_3(&range);
LABEL_41:
    value_low = LODWORD(range.start.value);
    goto LABEL_27;
  }

LABEL_8:
  value_low = FigSignalErrorAtGM();
LABEL_27:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigStreamingCacheMediaStreamMarkComplete(uint64_t a1, _BYTE *a2)
{
  v14 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamMarkComplete_cold_4(&v15);
    return v15;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamMarkComplete_cold_3(&v15);
    return v15;
  }

  FigStreamingCacheFlushIOSync(a1);
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamMarkComplete_cold_1(&v15);
    v6 = v15;
    goto LABEL_19;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
    goto LABEL_24;
  }

  v4 = *(a1 + 168);
  if (!v4)
  {
LABEL_8:
    v5 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  while (v4 != a2)
  {
    v4 = *(v4 + 1);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (v4[120])
  {
LABEL_24:
    v6 = 0;
    goto LABEL_19;
  }

  v5 = sc_UpgradePersistentStoreForWriting(a1, &v14);
  if (!v5)
  {
    v7 = *(a1 + 280);
    v8 = *(v4 + 17);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9(v7, v8, 1);
    if (!v10)
    {
      if ((*(*v4 + 220) & 2) != 0 && (v4[176] & 2) == 0)
      {
        FigStreamingCacheMediaStreamMarkComplete_cold_2(&v15);
        v6 = v15;
        goto LABEL_18;
      }

      FigBaseObject = FigHLSPersistentStreamInfoGetFigBaseObject(*(v4 + 16));
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v12)
      {
LABEL_17:
        v6 = 4294954514;
LABEL_18:
        sc_RestorePersistentStoreLockStatus(a1, v14);
        goto LABEL_19;
      }

      v10 = v12(FigBaseObject, @"StreamInfoCompleteState", *MEMORY[0x1E695E4D0]);
      if (!v10)
      {
        v6 = stream_SetNeedsToCommitPersistentStreamInfo(v4);
        if (!v6)
        {
          v4[120] = 1;
        }

        goto LABEL_18;
      }
    }

    v6 = v10;
    goto LABEL_18;
  }

LABEL_9:
  v6 = v5;
LABEL_19:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t stream_SetNeedsToCommitPersistentStreamInfo(_BYTE *a1)
{
  if ((*(*a1 + 220) & 2) != 0 && (a1[176] & 2) == 0)
  {
    v6 = v1;
    v7 = v2;
    stream_SetNeedsToCommitPersistentStreamInfo_cold_1(&v5);
    return v5;
  }

  else
  {
    v3 = 0;
    a1[122] = 1;
  }

  return v3;
}

uint64_t FigStreamingCacheMediaStreamIsComplete(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamIsComplete_cold_4(&v9);
    return v9;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamIsComplete_cold_3(&v9);
    return v9;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamIsComplete_cold_2(&v9);
    return v9;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamIsComplete_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      while (v6 != a2)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      v7 = 0;
      *a3 = *(v6 + 120);
    }

    else
    {
LABEL_8:
      v7 = FigSignalErrorAtGM();
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigStreamingCacheMediaStreamIsWritableToDisk(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_4(&v10);
    return v10;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_3(&v10);
    return v10;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_2(&v10);
    return v10;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamIsWritableToDisk_cold_1(&v10);
    v7 = v10;
  }

  else
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      while (v6 != a2)
      {
        v6 = *(v6 + 8);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      if (*(v6 + 128))
      {
        if ((*(*v6 + 220) & 2) != 0)
        {
          v8 = (*(v6 + 176) >> 1) & 1;
        }

        else
        {
          LOBYTE(v8) = 1;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      v7 = 0;
      *a3 = v8;
    }

    else
    {
LABEL_8:
      v7 = FigSignalErrorAtGM();
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigStreamingCacheMediaStreamSetPersistent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E695E4D0] != a3;
  if (*MEMORY[0x1E695E4D0] == a3)
  {
    v4 = kFigHLSPersistentStreamInfoEvictionPolicy_Persists;
  }

  else
  {
    v4 = kFigHLSPersistentStreamInfoEvictionPolicy_EvictionByMaxStreamSize;
  }

  v13 = 0;
  if (!a1)
  {
    FigStreamingCacheMediaStreamSetPersistent_cold_4(&v14);
    return v14;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamSetPersistent_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamSetPersistent_cold_1(&v14);
    goto LABEL_31;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
LABEL_26:
    v10 = 0;
    goto LABEL_24;
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    v8 = *v4;
    while (v7 != a2)
    {
      v7 = *(v7 + 8);
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    if (*(v7 + 121) != v3)
    {
      if ((*(*v7 + 220) & 2) == 0 || (*(v7 + 176) & 2) != 0)
      {
        v9 = sc_UpgradePersistentStoreForWriting(a1, &v13);
        if (!v9)
        {
          stream_SetPropertyForPersistentStreamInfoUpgradingToWritingIfNecessary(v7, @"StreamInfoEvictionPolicy", v8);
          v10 = v11;
          if (!v11)
          {
            if (*(v7 + 120) && !*(v7 + 121))
            {
              stream_DowngradePersistentStreamInfoForReading(v7);
            }

            *(v7 + 121) = v3;
          }

          sc_RestorePersistentStoreLockStatus(a1, v13);
          goto LABEL_24;
        }

        goto LABEL_13;
      }

      FigStreamingCacheMediaStreamSetPersistent_cold_2(&v14);
LABEL_31:
      v10 = v14;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_12:
  v9 = FigSignalErrorAtGM();
LABEL_13:
  v10 = v9;
LABEL_24:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigStreamingCacheMediaStreamCopyPersistent(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_4(&v10);
    return v10;
  }

  if (!a2)
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_3(&v10);
    return v10;
  }

  if (!a3)
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_2(&v10);
    return v10;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaStreamCopyPersistent_cold_1(&v10);
    v7 = v10;
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
LABEL_12:
    v8 = MEMORY[0x1E695E4C0];
LABEL_14:
    v7 = 0;
    *a3 = *v8;
    goto LABEL_15;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    if (!*(v6 + 121))
    {
      v8 = MEMORY[0x1E695E4D0];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = FigSignalErrorAtGM();
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigStreamingCacheMediaStreamCreateMediaSegment(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v19 = 0;
  valuePtr = a5;
  if (!a6)
  {
    FigStreamingCacheMediaStreamCreateMediaSegment_cold_2(&v21);
    return v21;
  }

  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v15)
  {
    FigStreamingCacheMediaStreamCreateMediaSegment_cold_1(&v21);
    return v21;
  }

  v16 = v15;
  v17 = sc_CreateMediaSegment(a1, a2, a3, a4, v15, 1, &v19, a7, a8);
  if (!v17)
  {
    *a6 = v19;
  }

  CFRelease(v16);
  return v17;
}

uint64_t sc_CreateMediaSegment(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, int a6, unint64_t *a7, double a8, double a9)
{
  v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v177 = 0u;
  memset(v176, 0, sizeof(v176));
  if (!a1)
  {
    sc_CreateMediaSegment_cold_11(&v175);
    return v175;
  }

  if (!a2)
  {
    sc_CreateMediaSegment_cold_10(&v175);
    return v175;
  }

  if (!a3)
  {
    sc_CreateMediaSegment_cold_9(&v175);
    return v175;
  }

  if (a4 < 0)
  {
    sc_CreateMediaSegment_cold_8(&v175);
    return v175;
  }

  if (a9 <= 0.0)
  {
    sc_CreateMediaSegment_cold_7(&v175);
    return v175;
  }

  v14 = a7;
  if (!a7)
  {
    sc_CreateMediaSegment_cold_6(&v175);
    return v175;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    sc_CreateMediaSegment_cold_1(&v175);
    goto LABEL_329;
  }

  if (a6 && *(a1 + 217))
  {
    if (*(a1 + 200) > a8)
    {
      sc_CreateMediaSegment_cold_3(&v175);
    }

    else
    {
      if (*(a1 + 208) >= a8)
      {
        goto LABEL_12;
      }

      sc_CreateMediaSegment_cold_2(&v175);
    }

LABEL_329:
    v21 = v175;
    goto LABEL_315;
  }

LABEL_12:
  v18 = a9 + 0.0000111111111;
  if (*(a1 + 216))
  {
    v19 = *(a1 + 112);
    if (v19 > 0.0 && v18 + a8 > v19 + *(a1 + 192))
    {
      sc_CreateMediaSegment_cold_4(&v175);
      goto LABEL_329;
    }
  }

  v20 = *(a1 + 168);
  if (!v20)
  {
    goto LABEL_18;
  }

  while (v20 != a2)
  {
    v20 = *(v20 + 8);
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  *(&v177 + 1) = a3;
  *&v178 = a4;
  *(&v179 + 1) = a8;
  for (i = *(v20 + 24); i; i = *(i + v24))
  {
    v23 = a8 - *(i + 120);
    if (v23 >= 0.0)
    {
      if (v23 <= 0.0)
      {
        v21 = 4294951052;
        goto LABEL_315;
      }

      v24 = 16;
    }

    else
    {
      v24 = 8;
    }
  }

  v25 = (v20 + 32);
  v26 = MediaSegmentOffsetList_RB_FIND((v20 + 32), v176);
  if (v26)
  {
    v27 = v26;
    v174 = a5;
    v28 = v14;
    v29 = 0;
    for (j = 0; ; ++j)
    {
      Count = v27[17];
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (j >= Count || v29)
      {
        break;
      }

      v175 = 0;
      FigCFArrayGetDoubleAtIndex();
      v29 = vabdd_f64(0.0, a8) < 2.22044605e-16;
    }

    v14 = v28;
    v25 = (v20 + 32);
    a5 = v174;
    if (!v29)
    {
LABEL_18:
      v21 = FigSignalErrorAtGM();
      goto LABEL_315;
    }
  }

  v32 = malloc_type_calloc(1uLL, 0xA8uLL, 0x1060040A1004B64uLL);
  if (!v32)
  {
    sc_CreateMediaSegment_cold_5(&v175);
    goto LABEL_329;
  }

  v33 = v32;
  v32[11] = CFRetain(a3);
  *(v33 + 96) = a4;
  if (a5)
  {
    v34 = CFRetain(a5);
  }

  else
  {
    v34 = 0;
  }

  *(v33 + 104) = v34;
  *(v33 + 120) = a8;
  *(v33 + 128) = v18;
  *v33 = v20;
  *(v33 + 80) = 1;
  v35 = *(v20 + 24);
  CFSetAddValue(*(v20 + 48), v33);
  v36 = *(v20 + 24);
  if (v36)
  {
    v37 = *(v20 + 24);
    v38 = (v20 + 24);
    do
    {
      v39 = v37;
      v40 = *(v33 + 120) - *(v37 + 120);
      v41 = v40 < 0.0;
      if (v40 >= 0.0)
      {
        v42 = 16;
        if (v40 == 0.0)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v42 = 8;
      }

      v37 = *(v39 + v42);
    }

    while (v37);
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v38 = (v20 + 24);
  }

  if (*(v33 + 24))
  {
    v43 = v39 | 1;
  }

  else
  {
    v43 = v39;
  }

  v44 = (v43 & 0xFFFFFFFFFFFFFFFELL);
  v45 = v43 | 1;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(v33 + 24) = v43 | 1;
  v46 = v38;
  v47 = v33;
  if (v39)
  {
    if (v41)
    {
      v46 = (v39 + 8);
    }

    else
    {
      v46 = (v39 + 16);
    }

    v47 = v36;
  }

  *v46 = v33;
  if (v44)
  {
    v48 = v33;
    do
    {
      v49 = v44[3];
      if ((v49 & 1) == 0)
      {
        break;
      }

      v50 = (v49 & 0xFFFFFFFFFFFFFFFELL);
      v51 = *((v49 & 0xFFFFFFFFFFFFFFFELL) + 8);
      if (v51 == v44)
      {
        v56 = v50[2];
        if (!v56 || (v57 = *(v56 + 24), (v57 & 1) == 0))
        {
          v58 = v44[2];
          if (v58 == v48)
          {
            v63 = *(v58 + 8);
            v44[2] = v63;
            if (v63)
            {
              v64 = v45 | 1;
              if ((*(v63 + 24) & 1) == 0)
              {
                v64 = v44;
              }

              *(v63 + 24) = v64;
              v65 = v44[3];
            }

            else
            {
              v65 = v49;
            }

            *(v58 + 24) = v65 & 0xFFFFFFFFFFFFFFFELL | *(v58 + 24) & 1;
            if ((v65 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v73 = v44[3];
              v74 = v73 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v73 & 0xFFFFFFFFFFFFFFFELL) + 8) == v44)
              {
                *(v74 + 8) = v58;
              }

              else
              {
                *(v74 + 16) = v58;
              }
            }

            else
            {
              *v38 = v58;
              v73 = v44[3];
              v47 = v58;
            }

            *(v58 + 8) = v44;
            if (v73)
            {
              v58 = v48 | 1;
            }

            v44[3] = v58;
            v51 = v50[1];
            v59 = *(v48 + 24) & 0xFFFFFFFFFFFFFFFELL;
            v55 = v44;
          }

          else
          {
            v59 = v49 & 0xFFFFFFFFFFFFFFFELL;
            v55 = v48;
            v48 = v44;
          }

          *(v48 + 24) = v59;
          v75 = v50[3] | 1;
          v50[3] = v75;
          v76 = *(v51 + 16);
          v50[1] = v76;
          if (v76)
          {
            if (*(v76 + 24))
            {
              v77 = v49;
            }

            else
            {
              v77 = v49 & 0xFFFFFFFFFFFFFFFELL;
            }

            *(v76 + 24) = v77;
            v75 = v50[3];
          }

          *(v51 + 24) = v75 & 0xFFFFFFFFFFFFFFFELL | *(v51 + 24) & 1;
          if ((v75 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v78 = v50[3];
            v79 = v78 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v78 & 0xFFFFFFFFFFFFFFFELL) + 8) == v50)
            {
              *(v79 + 8) = v51;
            }

            else
            {
              *(v79 + 16) = v51;
            }
          }

          else
          {
            *v38 = v51;
            v78 = v50[3];
            v47 = v51;
          }

          *(v51 + 16) = v50;
          if (v78)
          {
            v68 = v51 | 1;
          }

          else
          {
            v68 = v51;
          }

          goto LABEL_121;
        }

        *(v56 + 24) = v57 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        if (!v51 || (v52 = *(v51 + 24), (v52 & 1) == 0))
        {
          v53 = v44[1];
          if (v53 == v48)
          {
            v60 = *(v53 + 16);
            v44[1] = v60;
            if (v60)
            {
              v61 = v45 | 1;
              if ((*(v60 + 24) & 1) == 0)
              {
                v61 = v44;
              }

              *(v60 + 24) = v61;
              v62 = v44[3];
            }

            else
            {
              v62 = v49;
            }

            *(v53 + 24) = v62 & 0xFFFFFFFFFFFFFFFELL | *(v53 + 24) & 1;
            if ((v62 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v66 = v44[3];
              v67 = v66 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v66 & 0xFFFFFFFFFFFFFFFELL) + 8) == v44)
              {
                *(v67 + 8) = v53;
              }

              else
              {
                *(v67 + 16) = v53;
              }
            }

            else
            {
              *v38 = v53;
              v66 = v44[3];
              v47 = v53;
            }

            *(v53 + 16) = v44;
            if (v66)
            {
              v53 = v48 | 1;
            }

            v44[3] = v53;
            v54 = *(v48 + 24) & 0xFFFFFFFFFFFFFFFELL;
            v55 = v44;
          }

          else
          {
            v54 = v49 & 0xFFFFFFFFFFFFFFFELL;
            v55 = v48;
            v48 = v44;
          }

          *(v48 + 24) = v54;
          v68 = v50[2];
          v69 = v50[3] | 1;
          v50[3] = v69;
          v70 = *(v68 + 8);
          v50[2] = v70;
          if (v70)
          {
            if ((*(v70 + 24) & 1) == 0)
            {
              v49 &= ~1uLL;
            }

            *(v70 + 24) = v49;
            v69 = v50[3];
          }

          *(v68 + 24) = v69 & 0xFFFFFFFFFFFFFFFELL | *(v68 + 24) & 1;
          if ((v69 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v71 = v50[3];
            v72 = v71 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v71 & 0xFFFFFFFFFFFFFFFELL) + 8) == v50)
            {
              *(v72 + 8) = v68;
            }

            else
            {
              *(v72 + 16) = v68;
            }
          }

          else
          {
            *v38 = v68;
            v71 = v50[3];
            v47 = v68;
          }

          *(v68 + 8) = v50;
          if (v71)
          {
            v68 |= 1uLL;
          }

LABEL_121:
          v50[3] = v68;
          goto LABEL_122;
        }

        *(v51 + 24) = v52 & 0xFFFFFFFFFFFFFFFELL;
      }

      v44[3] &= ~1uLL;
      v50[3] |= 1uLL;
      v55 = v49 & 0xFFFFFFFFFFFFFFFELL;
LABEL_122:
      v45 = *(v55 + 24);
      v48 = v55;
      v44 = (v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    while ((v45 & 0xFFFFFFFFFFFFFFFELL) != 0);
  }

  *(v47 + 24) &= ~1uLL;
LABEL_124:
  v80 = *v25;
  if (*v25)
  {
    do
    {
      v81 = v80;
      started = segment_SortByURLAndStartOffset(v33, v80);
      if ((started & 0x80000000) != 0)
      {
        v83 = 32;
      }

      else
      {
        if (!started)
        {
          goto LABEL_208;
        }

        v83 = 40;
      }

      v80 = *(v81 + v83);
    }

    while (v80);
    LODWORD(v80) = started >> 31;
  }

  else
  {
    v81 = 0;
  }

  if (*(v33 + 48))
  {
    v84 = v81 | 1;
  }

  else
  {
    v84 = v81;
  }

  v85 = v84 | 1;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = v84 | 1;
  if (v80)
  {
    v86 = (v81 + 32);
  }

  else
  {
    v86 = (v81 + 40);
  }

  if (!v81)
  {
    v86 = v25;
  }

  *v86 = v33;
  v87 = (v84 & 0xFFFFFFFFFFFFFFFELL);
  if ((v84 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v88 = v33;
    do
    {
      v89 = v87[6];
      if ((v89 & 1) == 0)
      {
        break;
      }

      v90 = (v89 & 0xFFFFFFFFFFFFFFFELL);
      v91 = *((v89 & 0xFFFFFFFFFFFFFFFELL) + 32);
      if (v91 == v87)
      {
        v96 = v90[5];
        if (!v96 || (v97 = *(v96 + 48), (v97 & 1) == 0))
        {
          v98 = v87[5];
          if (v98 == v88)
          {
            v103 = *(v98 + 32);
            v87[5] = v103;
            if (v103)
            {
              v104 = v85 | 1;
              if ((*(v103 + 48) & 1) == 0)
              {
                v104 = v87;
              }

              *(v103 + 48) = v104;
              v105 = v87[6];
            }

            else
            {
              v105 = v89;
            }

            *(v98 + 48) = v105 & 0xFFFFFFFFFFFFFFFELL | *(v98 + 48) & 1;
            if ((v105 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v114 = v87[6];
              v115 = v114 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v114 & 0xFFFFFFFFFFFFFFFELL) + 32) == v87)
              {
                *(v115 + 32) = v98;
              }

              else
              {
                *(v115 + 40) = v98;
              }
            }

            else
            {
              *v25 = v98;
              v114 = v87[6];
            }

            *(v98 + 32) = v87;
            if (v114)
            {
              v98 = v88 | 1;
            }

            v87[6] = v98;
            v91 = v90[4];
            v99 = *(v88 + 48) & 0xFFFFFFFFFFFFFFFELL;
            v95 = v87;
          }

          else
          {
            v99 = v89 & 0xFFFFFFFFFFFFFFFELL;
            v95 = v88;
            v88 = v87;
          }

          *(v88 + 48) = v99;
          v116 = v90[6] | 1;
          v90[6] = v116;
          v117 = *(v91 + 40);
          v90[4] = v117;
          if (v117)
          {
            if ((*(v117 + 48) & 1) == 0)
            {
              v89 &= ~1uLL;
            }

            *(v117 + 48) = v89;
            v116 = v90[6];
          }

          *(v91 + 48) = v116 & 0xFFFFFFFFFFFFFFFELL | *(v91 + 48) & 1;
          if ((v116 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v118 = v90[6];
            v119 = v118 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v118 & 0xFFFFFFFFFFFFFFFELL) + 32) == v90)
            {
              *(v119 + 32) = v91;
            }

            else
            {
              *(v119 + 40) = v91;
            }
          }

          else
          {
            *v25 = v91;
            v118 = v90[6];
          }

          *(v91 + 40) = v90;
          if (v118)
          {
            v113 = v91 | 1;
          }

          else
          {
            v113 = v91;
          }

          goto LABEL_205;
        }

        *(v96 + 48) = v97 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        if (!v91 || (v92 = *(v91 + 48), (v92 & 1) == 0))
        {
          v93 = v87[4];
          if (v93 == v88)
          {
            v100 = *(v93 + 40);
            v87[4] = v100;
            if (v100)
            {
              v101 = v85 | 1;
              if ((*(v100 + 48) & 1) == 0)
              {
                v101 = v87;
              }

              *(v100 + 48) = v101;
              v102 = v87[6];
            }

            else
            {
              v102 = v89;
            }

            *(v93 + 48) = v102 & 0xFFFFFFFFFFFFFFFELL | *(v93 + 48) & 1;
            if ((v102 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v106 = v87[6];
              v107 = v106 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v106 & 0xFFFFFFFFFFFFFFFELL) + 32) == v87)
              {
                *(v107 + 32) = v93;
              }

              else
              {
                *(v107 + 40) = v93;
              }
            }

            else
            {
              *v25 = v93;
              v106 = v87[6];
            }

            *(v93 + 40) = v87;
            if (v106)
            {
              v93 = v88 | 1;
            }

            v87[6] = v93;
            v94 = *(v88 + 48) & 0xFFFFFFFFFFFFFFFELL;
            v95 = v87;
          }

          else
          {
            v94 = v89 & 0xFFFFFFFFFFFFFFFELL;
            v95 = v88;
            v88 = v87;
          }

          *(v88 + 48) = v94;
          v108 = v90[5];
          v109 = v90[6] | 1;
          v90[6] = v109;
          v110 = *(v108 + 32);
          v90[5] = v110;
          if (v110)
          {
            if ((*(v110 + 48) & 1) == 0)
            {
              v89 &= ~1uLL;
            }

            *(v110 + 48) = v89;
            v109 = v90[6];
          }

          *(v108 + 48) = v109 & 0xFFFFFFFFFFFFFFFELL | *(v108 + 48) & 1;
          if ((v109 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v111 = v90[6];
            v112 = v111 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v111 & 0xFFFFFFFFFFFFFFFELL) + 32) == v90)
            {
              *(v112 + 32) = v108;
            }

            else
            {
              *(v112 + 40) = v108;
            }
          }

          else
          {
            *v25 = v108;
            v111 = v90[6];
          }

          *(v108 + 32) = v90;
          if (v111)
          {
            v113 = v108 | 1;
          }

          else
          {
            v113 = v108;
          }

LABEL_205:
          v90[6] = v113;
          goto LABEL_206;
        }

        *(v91 + 48) = v92 & 0xFFFFFFFFFFFFFFFELL;
      }

      v87[6] &= ~1uLL;
      v90[6] |= 1uLL;
      v95 = v89 & 0xFFFFFFFFFFFFFFFELL;
LABEL_206:
      v85 = *(v95 + 48);
      v88 = v95;
      v87 = (v85 & 0xFFFFFFFFFFFFFFFELL);
    }

    while ((v85 & 0xFFFFFFFFFFFFFFFELL) != 0);
  }

  *(*v25 + 48) &= ~1uLL;
LABEL_208:
  if (a5)
  {
    v122 = *(v20 + 40);
    v121 = (v20 + 40);
    v120 = v122;
    if (v122)
    {
      do
      {
        v123 = v120;
        v124 = CFNumberCompare(*(v33 + 104), *(v120 + 104), 0);
        if ((v124 & 0x80000000) != 0)
        {
          v125 = 56;
        }

        else
        {
          if (!v124)
          {
            goto LABEL_293;
          }

          v125 = 64;
        }

        v120 = *(v123 + v125);
      }

      while (v120);
      v120 = (v124 >> 31) & 1;
    }

    else
    {
      v123 = 0;
    }

    if (*(v33 + 72))
    {
      v126 = v123 | 1;
    }

    else
    {
      v126 = v123;
    }

    v127 = v126 | 1;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    *(v33 + 72) = v126 | 1;
    if (v120)
    {
      v128 = (v123 + 56);
    }

    else
    {
      v128 = (v123 + 64);
    }

    if (!v123)
    {
      v128 = v121;
    }

    *v128 = v33;
    v129 = (v126 & 0xFFFFFFFFFFFFFFFELL);
    if ((v126 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v130 = v33;
      do
      {
        v131 = v129[9];
        if ((v131 & 1) == 0)
        {
          break;
        }

        v132 = (v131 & 0xFFFFFFFFFFFFFFFELL);
        v133 = *((v131 & 0xFFFFFFFFFFFFFFFELL) + 56);
        if (v133 == v129)
        {
          v138 = v132[8];
          if (!v138 || (v139 = *(v138 + 72), (v139 & 1) == 0))
          {
            v140 = v129[8];
            if (v140 == v130)
            {
              v145 = *(v140 + 56);
              v129[8] = v145;
              if (v145)
              {
                v146 = v127 | 1;
                if ((*(v145 + 72) & 1) == 0)
                {
                  v146 = v129;
                }

                *(v145 + 72) = v146;
                v147 = v129[9];
              }

              else
              {
                v147 = v131;
              }

              *(v140 + 72) = v147 & 0xFFFFFFFFFFFFFFFELL | *(v140 + 72) & 1;
              if ((v147 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v156 = v129[9];
                v157 = v156 & 0xFFFFFFFFFFFFFFFELL;
                if (*((v156 & 0xFFFFFFFFFFFFFFFELL) + 56) == v129)
                {
                  *(v157 + 56) = v140;
                }

                else
                {
                  *(v157 + 64) = v140;
                }
              }

              else
              {
                *v121 = v140;
                v156 = v129[9];
              }

              *(v140 + 56) = v129;
              if (v156)
              {
                v140 = v130 | 1;
              }

              v129[9] = v140;
              v133 = v132[7];
              v141 = *(v130 + 72) & 0xFFFFFFFFFFFFFFFELL;
              v137 = v129;
            }

            else
            {
              v141 = v131 & 0xFFFFFFFFFFFFFFFELL;
              v137 = v130;
              v130 = v129;
            }

            *(v130 + 72) = v141;
            v158 = v132[9] | 1;
            v132[9] = v158;
            v159 = *(v133 + 64);
            v132[7] = v159;
            if (v159)
            {
              if ((*(v159 + 72) & 1) == 0)
              {
                v131 &= ~1uLL;
              }

              *(v159 + 72) = v131;
              v158 = v132[9];
            }

            *(v133 + 72) = v158 & 0xFFFFFFFFFFFFFFFELL | *(v133 + 72) & 1;
            if ((v158 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v160 = v132[9];
              v161 = v160 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v160 & 0xFFFFFFFFFFFFFFFELL) + 56) == v132)
              {
                *(v161 + 56) = v133;
              }

              else
              {
                *(v161 + 64) = v133;
              }
            }

            else
            {
              *v121 = v133;
              v160 = v132[9];
            }

            *(v133 + 64) = v132;
            if (v160)
            {
              v155 = v133 | 1;
            }

            else
            {
              v155 = v133;
            }

            goto LABEL_290;
          }

          *(v138 + 72) = v139 & 0xFFFFFFFFFFFFFFFELL;
        }

        else
        {
          if (!v133 || (v134 = *(v133 + 72), (v134 & 1) == 0))
          {
            v135 = v129[7];
            if (v135 == v130)
            {
              v142 = *(v135 + 64);
              v129[7] = v142;
              if (v142)
              {
                v143 = v127 | 1;
                if ((*(v142 + 72) & 1) == 0)
                {
                  v143 = v129;
                }

                *(v142 + 72) = v143;
                v144 = v129[9];
              }

              else
              {
                v144 = v131;
              }

              *(v135 + 72) = v144 & 0xFFFFFFFFFFFFFFFELL | *(v135 + 72) & 1;
              if ((v144 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v148 = v129[9];
                v149 = v148 & 0xFFFFFFFFFFFFFFFELL;
                if (*((v148 & 0xFFFFFFFFFFFFFFFELL) + 56) == v129)
                {
                  *(v149 + 56) = v135;
                }

                else
                {
                  *(v149 + 64) = v135;
                }
              }

              else
              {
                *v121 = v135;
                v148 = v129[9];
              }

              *(v135 + 64) = v129;
              if (v148)
              {
                v135 = v130 | 1;
              }

              v129[9] = v135;
              v136 = *(v130 + 72) & 0xFFFFFFFFFFFFFFFELL;
              v137 = v129;
            }

            else
            {
              v136 = v131 & 0xFFFFFFFFFFFFFFFELL;
              v137 = v130;
              v130 = v129;
            }

            *(v130 + 72) = v136;
            v150 = v132[8];
            v151 = v132[9] | 1;
            v132[9] = v151;
            v152 = *(v150 + 56);
            v132[8] = v152;
            if (v152)
            {
              if ((*(v152 + 72) & 1) == 0)
              {
                v131 &= ~1uLL;
              }

              *(v152 + 72) = v131;
              v151 = v132[9];
            }

            *(v150 + 72) = v151 & 0xFFFFFFFFFFFFFFFELL | *(v150 + 72) & 1;
            if ((v151 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v153 = v132[9];
              v154 = v153 & 0xFFFFFFFFFFFFFFFELL;
              if (*((v153 & 0xFFFFFFFFFFFFFFFELL) + 56) == v132)
              {
                *(v154 + 56) = v150;
              }

              else
              {
                *(v154 + 64) = v150;
              }
            }

            else
            {
              *v121 = v150;
              v153 = v132[9];
            }

            *(v150 + 56) = v132;
            if (v153)
            {
              v155 = v150 | 1;
            }

            else
            {
              v155 = v150;
            }

LABEL_290:
            v132[9] = v155;
            goto LABEL_291;
          }

          *(v133 + 72) = v134 & 0xFFFFFFFFFFFFFFFELL;
        }

        v129[9] &= ~1uLL;
        v132[9] |= 1uLL;
        v137 = v131 & 0xFFFFFFFFFFFFFFFELL;
LABEL_291:
        v127 = *(v137 + 72);
        v130 = v137;
        v129 = (v127 & 0xFFFFFFFFFFFFFFFELL);
      }

      while ((v127 & 0xFFFFFFFFFFFFFFFELL) != 0);
    }

    *(*v121 + 72) &= ~1uLL;
  }

LABEL_293:
  if (!v35)
  {
    v166 = 6;
LABEL_313:
    *(v33 + 160) |= v166;
    goto LABEL_314;
  }

  v162 = MediaSegmentStartTimeList_RB_PREV(v33);
  if (v162 && (v163 = *(v33 + 120), *(v162 + 120) + *(v162 + 128) >= v163))
  {
    v167 = *(v162 + 160);
    if ((v167 & 4) == 0 || (*(v162 + 160) = v167 & 0xFFFFFFFB, (v168 = MediaSegmentStartTimeList_RB_NEXT(v33)) != 0) && v163 + *(v33 + 128) >= *(v168 + 120))
    {
      v165 = 0;
      v164 = 1;
    }

    else
    {
      v164 = 0;
      v165 = 0;
    }
  }

  else
  {
    v164 = 1;
    v165 = 1;
  }

  v169 = MediaSegmentStartTimeList_RB_NEXT(v33);
  if (!v169)
  {
    goto LABEL_312;
  }

  v170 = *(v33 + 120);
  if (v170 + *(v33 + 128) < *(v169 + 120))
  {
    goto LABEL_312;
  }

  v171 = *(v169 + 160);
  if ((v171 & 2) != 0)
  {
    *(v169 + 160) = v171 & 0xFFFFFFFD;
    v172 = MediaSegmentStartTimeList_RB_PREV(v33);
    if (!v172 || *(v172 + 120) + *(v172 + 128) < v170)
    {
      v165 = 1;
    }
  }

  if (!v164)
  {
LABEL_312:
    v166 = 4;
    goto LABEL_313;
  }

  if (v165)
  {
    v166 = 2;
    goto LABEL_313;
  }

LABEL_314:
  v21 = 0;
  *v14 = v33;
LABEL_315:
  FigSimpleMutexUnlock();
  return v21;
}

uint64_t FigStreamingCacheMediaSegmentGetLength(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          FigSimpleMutexLock();
          if (*(a1 + 272))
          {
            FigStreamingCacheMediaSegmentGetLength_cold_1(&v17);
          }

          else
          {
            v10 = *(a1 + 168);
            if (!v10)
            {
LABEL_9:
              v11 = FigSignalErrorAtGM();
              v12 = 0;
              goto LABEL_14;
            }

            while (v10 != a2)
            {
              v10 = *(v10 + 8);
              if (!v10)
              {
                goto LABEL_9;
              }
            }

            if (CFSetContainsValue(*(v10 + 48), a3))
            {
              v11 = 0;
              v13 = a3[14];
              v14 = v13 >= a4;
              v15 = v13 - a4;
              if (v14)
              {
                v12 = v15;
              }

              else
              {
                v12 = 0;
              }

LABEL_14:
              FigSimpleMutexUnlock();
              if (v11)
              {
                return v11;
              }

              goto LABEL_15;
            }

            FigStreamingCacheMediaSegmentGetLength_cold_2(&v17);
          }

          v12 = 0;
          v11 = v17;
          goto LABEL_14;
        }

        FigStreamingCacheMediaSegmentGetLength_cold_3(&v17);
      }

      else
      {
        FigStreamingCacheMediaSegmentGetLength_cold_4(&v17);
      }
    }

    else
    {
      FigStreamingCacheMediaSegmentGetLength_cold_5(&v17);
    }
  }

  else
  {
    FigStreamingCacheMediaSegmentGetLength_cold_6(&v17);
  }

  v12 = 0;
  v11 = v17;
  if (v17)
  {
    return v11;
  }

LABEL_15:
  if ((v12 & 0x8000000000000000) != 0)
  {
    FigStreamingCacheMediaSegmentGetLength_cold_7(&v17);
    return v17;
  }

  else
  {
    v11 = 0;
    *a5 = v12;
  }

  return v11;
}

uint64_t FigStreamingCacheMediaSegmentCopyBytes(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, size_t a4, size_t a5, BOOL *a6, CMBlockBufferRef *a7)
{
  blockBufferOut = 0;
  if (!a1)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_9(&v31);
    return v31;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_8(&v31);
    return v31;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_7(&v31);
    return v31;
  }

  if (!a5)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_6(&v31);
    return v31;
  }

  if (!a7)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_5(&v31);
    return v31;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_1(&v31);
LABEL_45:
    v16 = v31;
    goto LABEL_12;
  }

  v14 = *(a1 + 168);
  if (!v14)
  {
LABEL_10:
    v15 = FigSignalErrorAtGM();
LABEL_11:
    v16 = v15;
    goto LABEL_12;
  }

  while (v14 != a2)
  {
    v14 = *(v14 + 8);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v18 = CFSetContainsValue(*(v14 + 48), a3);
  if (!v18)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_4(&v31);
    goto LABEL_45;
  }

  v19 = a3[14];
  if (v19 <= a4)
  {
    FigStreamingCacheMediaSegmentCopyBytes_cold_2(&v31);
    goto LABEL_45;
  }

  if (a5 + a4 <= v19)
  {
    v20 = a5;
  }

  else
  {
    v20 = v19 - a4;
  }

  v21 = v20 + a4 < v19;
  v22 = a3 + 19;
  if (a3[19])
  {
LABEL_20:
    v28 = v21;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v15 = CMBlockBufferCreateWithBufferReference(AllocatorForMedia, *v22, a4, v20, 0, &blockBufferOut);
    if (!v15)
    {
      if (v20 + a4 >= v19 && (a3[20] & 0x20) != 0 && *v22)
      {
        CFRelease(*v22);
        *v22 = 0;
      }

      *a7 = blockBufferOut;
      v16 = 0;
      if (a6)
      {
        *a6 = v28;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v24 = *a3;
  if ((*(**a3 + 220) & 2) != 0 && (*(v24 + 176) & 1) == 0)
  {
    v29 = v20 + a4 < v19;
    v18 = FigStreamingCacheMediaSegmentCopyBytes_cold_3(&v31);
    v16 = v31;
    if (v31)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  if ((a3[20] & 0x20) == 0)
  {
    goto LABEL_30;
  }

  v29 = v20 + a4 < v19;
  v25 = *(v24 + 16);
  v27 = a3[18];
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v26)
  {
    v16 = 4294954514;
    goto LABEL_12;
  }

  v18 = v26(v25, v27, a3 + 19);
  v16 = v18;
  if (!v18)
  {
LABEL_33:
    v21 = v29;
    if (*v22)
    {
      goto LABEL_20;
    }

LABEL_30:
    FigBytePumpGetFigBaseObject(v18);
    v16 = 4294951049;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t FigStreamingCacheMediaSegmentAppendBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMBlockBufferRef theBuffer, size_t a6, size_t a7)
{
  blockBufferOut = 0;
  v36 = 0;
  customBlockSource.version = 0;
  customBlockSource.refCon = 0;
  customBlockSource.AllocateBlock = sc_AllocateSegmentBlock;
  customBlockSource.FreeBlock = sc_FreeSegmentBlock;
  if (!a1)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_12(&v37);
    return v37;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_11(&v37);
    return v37;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_10(&v37);
    return v37;
  }

  if (!theBuffer)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_9(&v37);
    return v37;
  }

  if (!a7)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_8(&v37);
    return v37;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (DataLength <= a6 || a7 + a6 > DataLength)
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_7(&v37);
    goto LABEL_64;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentAppendBytes_cold_1(&v37);
    goto LABEL_64;
  }

  v15 = *(a1 + 168);
  if (v15)
  {
    while (v15 != a2)
    {
      v15 = *(v15 + 8);
      if (!v15)
      {
        goto LABEL_12;
      }
    }

    if ((*(*v15 + 220) & 2) != 0 && (*(v15 + 176) & 2) == 0)
    {
      FigStreamingCacheMediaSegmentAppendBytes_cold_2(&v37);
    }

    else if (CFSetContainsValue(*(v15 + 48), a3))
    {
      if (*(a3 + 112) == a4)
      {
        if ((*(a3 + 160) & 1) == 0)
        {
          Value = CFDictionaryGetValue(*(a1 + 232), *(v15 + 56));
          v19 = &Value[-a7];
          if (Value < a7)
          {
            CFDictionarySetValue(*(a1 + 232), *(v15 + 56), 0);
            if (!sc_HasEnoughAvailableBackingMemory(a1, a7, &v36) && !sc_GetBackingForMediaStreamAtTime(a1, v15, v36, *(a3 + 120)) && ((*(a1 + 220) & 2) != 0 || !*(a1 + 216) || *(a3 + 120) - *(a1 + 192) >= *(a1 + 104)))
            {
              goto LABEL_12;
            }

            v19 = 0;
          }

          if (!*(a3 + 152))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            Empty = CMBlockBufferCreateEmpty(AllocatorForMedia, 0, 0, (a3 + 152));
            if (Empty)
            {
              goto LABEL_13;
            }
          }

          v21 = *(a1 + 264);
          if (v21)
          {
            v21 = CFRetain(v21);
          }

          customBlockSource.refCon = v21;
          v22 = FigGetAllocatorForMedia();
          Empty = CMBlockBufferCreateContiguous(v22, theBuffer, 0, &customBlockSource, a6, a7, 2u, &blockBufferOut);
          if (Empty)
          {
            goto LABEL_13;
          }

          Empty = CMBlockBufferAppendBufferReference(*(a3 + 152), blockBufferOut, 0, 0, 0);
          if (Empty)
          {
            goto LABEL_13;
          }

          if ((*(a1 + 220) & 2) != 0 || !*(a1 + 136))
          {
LABEL_68:
            *(a3 + 160) |= 0x10u;
            *(a3 + 112) += a7;
            *(a1 + 184) += a7;
            CFDictionarySetValue(*(a1 + 232), *(v15 + 56), v19);
            v17 = 0;
            goto LABEL_69;
          }

          v23 = *(a1 + 152);
          v24 = a7 - v23;
          if (a7 >= v23)
          {
            v25 = a7 - v23;
          }

          else
          {
            v25 = 0;
          }

          if (v25 < 1)
          {
            goto LABEL_66;
          }

          v26 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
          v27 = v26;
          if (v26)
          {
            *v26 = a1;
            v26[1] = v25;
            v28 = FigSimpleMutexCreate();
            v27[2] = v28;
            if (!v28)
            {
              free(v27);
              v27 = 0;
            }
          }

          if (FigMemoryDemandIssueSync_onceToken == -1)
          {
            if (!v27)
            {
              goto LABEL_66;
            }
          }

          else
          {
            FigStreamingCacheMediaSegmentAppendBytes_cold_5();
            if (!v27)
            {
              goto LABEL_66;
            }
          }

          v29 = FigSimpleMutexTryLock();
          if (v29)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            FigSimpleMutexLock();
            v24 = v27[1];
            FigSimpleMutexUnlock();
            FigSimpleMutexUnlock();
          }

          FigSimpleMutexDestroy();
          free(v27);
          if (v29)
          {
            v30 = v25 - v24;
            if (v25 < v24)
            {
              v30 = 0;
            }

            v31 = v30 >= v25;
            v32 = v30 - v25;
            if (!v31)
            {
              v32 = 0;
            }

            goto LABEL_67;
          }

LABEL_66:
          v32 = *(a1 + 152) - a7;
LABEL_67:
          *(a1 + 152) = v32;
          goto LABEL_68;
        }

        FigStreamingCacheMediaSegmentAppendBytes_cold_4(&v37);
      }

      else
      {
        FigStreamingCacheMediaSegmentAppendBytes_cold_3(&v37);
      }
    }

    else
    {
      FigStreamingCacheMediaSegmentAppendBytes_cold_6(&v37);
    }

LABEL_64:
    v17 = v37;
    goto LABEL_69;
  }

LABEL_12:
  Empty = FigSignalErrorAtGM();
LABEL_13:
  v17 = Empty;
LABEL_69:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  FigSimpleMutexUnlock();
  return v17;
}

void sc_AllocateSegmentBlock()
{
  CFAllocatorGetDefault();

  JUMPOUT(0x19A8CC720);
}

void sc_FreeSegmentBlock(const void *a1, void *a2, uint64_t a3)
{
  Default = CFAllocatorGetDefault();
  CFAllocatorDeallocate(Default, a2);
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    FigSimpleMutexLock();
    if (!*(v8 + 272) && (*(v8 + 220) & 2) == 0)
    {
      *(v8 + 184) -= a3;
    }

    FigSimpleMutexUnlock();
    CFRelease(v8);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigStreamingCacheMediaSegmentMarkComplete(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_8(&v30);
    return v30;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_7(&v30);
    return v30;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_6(&v30);
    return v30;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentMarkComplete_cold_1(&v30);
    goto LABEL_56;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if ((*(*v6 + 220) & 2) != 0 && (*(v6 + 176) & 2) == 0)
    {
      FigStreamingCacheMediaSegmentMarkComplete_cold_2(&v30);
      goto LABEL_56;
    }

    v9 = CFSetContainsValue(*(v6 + 48), a3);
    if (v9)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      FigStreamingCacheMediaSegmentMarkComplete_cold_5(&v30);
      goto LABEL_56;
    }

    a3[40] |= 1u;
    v7 = stream_SetNeedsToCommitPersistentStreamInfo(v6);
    if (!v7)
    {
      if ((*(a1 + 220) & 2) != 0)
      {
        ++a3[20];
        a3[40] |= 0x80u;
        segment_LockDuplicateMediaSegments(v6, a3);
        CFRetain(a1);
        dispatch_async_f(*(a1 + 240), a3, segment_WriteDataToDiskDispatchFunction);
      }

      v11 = *(*v6 + 168);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *(v6 + 56);
      while (1)
      {
        if (*(v11 + 56) == v12)
        {
          v13 = *(v6 + 80);
          if (*(v11 + 80) < v13)
          {
            break;
          }
        }

        v11 = *(v11 + 8);
        if (!v11)
        {
          goto LABEL_24;
        }
      }

      v15 = **v10;
      FirstSegmentOfContiguousRangeContainingSegment = stream_GetFirstSegmentOfContiguousRangeContainingSegment(v10);
      LastSegmentOfContiguousRangeContainingSegment = stream_GetLastSegmentOfContiguousRangeContainingSegment(v10, 0);
      v8 = 0;
      if (!FirstSegmentOfContiguousRangeContainingSegment || !LastSegmentOfContiguousRangeContainingSegment)
      {
        goto LABEL_25;
      }

      v18 = *(LastSegmentOfContiguousRangeContainingSegment + 120) + *(LastSegmentOfContiguousRangeContainingSegment + 128);
      v19 = *(FirstSegmentOfContiguousRangeContainingSegment + 120);
      v20 = v18 - v19;
      v21 = *(v15 + 88);
      v22 = v21 > 0.0 && v20 < v21;
      if (v22 || (v23 = *(v15 + 80), v20 < v23 + v23))
      {
LABEL_24:
        v8 = 0;
        goto LABEL_25;
      }

      v24 = v18 - v23;
      v25 = v19 + v23;
      if (v19 + v23 < v18 - v23)
      {
        v26 = *(a1 + 168);
        if (v26)
        {
          do
          {
            if (*(v26 + 56) == v12 && *(v26 + 80) < v13)
            {
              if (*(v26 + 121))
              {
                v27 = *(v26 + 24);
                if (v27)
                {
                  while (1)
                  {
                    v28 = *(v27 + 120);
                    if (v28 >= v25 && v28 + *(v27 + 128) <= v25 + v24 - v25)
                    {
                      break;
                    }

                    if (v28 >= v25)
                    {
                      v29 = 8;
                    }

                    else
                    {
                      v29 = 16;
                    }

                    v27 = *(v27 + v29);
                    if (!v27)
                    {
                      goto LABEL_46;
                    }
                  }

                  FigStreamingCacheMediaSegmentMarkComplete_cold_3(v27, *v26, v24, v25);
                }
              }
            }

LABEL_46:
            v8 = 0;
            v26 = *(v26 + 8);
          }

          while (v26);
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      FigStreamingCacheMediaSegmentMarkComplete_cold_4(&v30);
LABEL_56:
      v8 = v30;
      goto LABEL_25;
    }
  }

  else
  {
LABEL_8:
    v7 = FigSignalErrorAtGM();
  }

  v8 = v7;
LABEL_25:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t segment_WriteDataToDiskDispatchFunction(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[16];
  FigSimpleMutexLock();
  v4 = *(a1 + 40);
  if ((v4 & 0x40) != 0)
  {
    *(a1 + 40) = v4 & 0xFFFFFF7F;
    goto LABEL_28;
  }

  if ((*(*v2 + 220) & 2) == 0 || (v2[22] & 2) != 0)
  {
    v5 = 1;
  }

  else
  {
    FigSignalErrorAtGM();
    v5 = 0;
  }

  v6 = a1[19];
  if (v6)
  {
    CFRetain(v6);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  FigSimpleMutexUnlock();
  if (v5)
  {
    v8 = a1[19];
    v10 = *(a1 + 15);
    v9 = *(a1 + 16);
    v12 = a1[11];
    v11 = a1[12];
    v13 = (a1 + 18);
    v14 = a1[13];
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v16 = v15(v3, v8, v12, v11, v14, a1 + 18, v9, v10);
    }

    else
    {
      v16 = -12782;
    }

    FigSimpleMutexLock();
    *(a1 + 40) &= ~0x80u;
    v17 = a1[19];
    if (v17)
    {
      CFRelease(v17);
      if (!v3)
      {
LABEL_20:
        if (!v16)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    else if (!v3)
    {
      goto LABEL_20;
    }

    CFRelease(v3);
    if (!v16)
    {
LABEL_21:
      *(a1 + 40) = a1[20] & 0xFFFFFFCF | 0x20;
      if (a1[19])
      {
        FigDeferCFRelease();
        v13 = (a1 + 19);
LABEL_27:
        *v13 = 0;
        goto LABEL_28;
      }

      goto LABEL_28;
    }

LABEL_25:
    sc_SendDiskWriteErrorNotification();
    if (*v13)
    {
      CFRelease(*v13);
      goto LABEL_27;
    }

LABEL_28:
    segment_UpdateAndUnlockDuplicateMediaSegments(v2, a1);
    segment_UnlockEntry(a1, 0);
    FigSimpleMutexUnlock();
  }

  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheMediaSegmentIsComplete(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_6(&v11);
LABEL_19:
    LOBYTE(v6) = 0;
LABEL_20:
    v9 = v11;
    if (v11)
    {
      return v9;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_5(&v11);
    goto LABEL_19;
  }

  v6 = a3;
  if (!a3)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_4(&v11);
    goto LABEL_20;
  }

  if (!a4)
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_3(&v11);
    goto LABEL_19;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentIsComplete_cold_1(&v11);
  }

  else
  {
    v8 = *(a1 + 168);
    if (!v8)
    {
LABEL_9:
      v9 = FigSignalErrorAtGM();
      LOBYTE(v6) = 0;
      goto LABEL_12;
    }

    while (v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    if (CFSetContainsValue(*(v8 + 48), v6))
    {
      v9 = 0;
      LOBYTE(v6) = v6[160] & 1;
      goto LABEL_12;
    }

    FigStreamingCacheMediaSegmentIsComplete_cold_2(&v11);
  }

  LOBYTE(v6) = 0;
  v9 = v11;
LABEL_12:
  FigSimpleMutexUnlock();
  if (!v9)
  {
LABEL_13:
    *a4 = v6;
  }

  return v9;
}

uint64_t FigStreamingCacheMediaSegmentLock(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentLock_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentLock_cold_4(&v9);
    return v9;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentLock_cold_3(&v9);
    return v9;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentLock_cold_1(&v9);
    goto LABEL_18;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if (CFSetContainsValue(*(v6 + 48), a3))
    {
      ++a3[20];
      segment_LockDuplicateMediaSegments(v6, a3);
      v7 = 0;
      goto LABEL_9;
    }

    FigStreamingCacheMediaSegmentLock_cold_2(&v9);
LABEL_18:
    v7 = v9;
    goto LABEL_9;
  }

LABEL_8:
  v7 = FigSignalErrorAtGM();
LABEL_9:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t FigStreamingCacheMediaSegmentUnlock(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentUnlock_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentUnlock_cold_4(&v9);
    return v9;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentUnlock_cold_3(&v9);
    return v9;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentUnlock_cold_1(&v9);
    goto LABEL_18;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    while (v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    if (CFSetContainsValue(*(v6 + 48), a3))
    {
      segment_UpdateAndUnlockDuplicateMediaSegments(v6, a3);
      segment_UnlockEntry(a3, 0);
      v7 = 0;
      goto LABEL_9;
    }

    FigStreamingCacheMediaSegmentUnlock_cold_2(&v9);
LABEL_18:
    v7 = v9;
    goto LABEL_9;
  }

LABEL_8:
  v7 = FigSignalErrorAtGM();
LABEL_9:
  FigSimpleMutexUnlock();
  return v7;
}

void segment_UnlockEntry(uint64_t **value, int a2)
{
  v3 = *value;
  v4 = **value;
  v5 = *(value + 20) - 1;
  *(value + 20) = v5;
  if (a2 || !v5)
  {
    CFSetRemoveValue(v3[6], value);
    if ((*(v4 + 220) & 2) != 0)
    {
      *(v4 + 184) -= value[14];
      if ((~*(value + 40) & 0x60) == 0)
      {
        if (v3[16])
        {
          if (!stream_UpgradePersistentStreamInfoForWriting(v3))
          {
            v11 = v3[16];
            v12 = value[18];
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v13)
            {
              v13(v11, v12);
            }
          }
        }
      }
    }

    v6 = value[11];
    if (v6)
    {
      CFRelease(v6);
      value[11] = 0;
    }

    v7 = value[13];
    if (v7)
    {
      CFRelease(v7);
      value[13] = 0;
    }

    v8 = value[18];
    if (v8)
    {
      CFRelease(v8);
      value[18] = 0;
    }

    v9 = value[19];
    if (v9)
    {
      CFRelease(v9);
      value[19] = 0;
    }

    v10 = value[17];
    if (v10)
    {
      CFRelease(v10);
    }

    free(value);
  }

  else if (v5 == 1 && (~*(value + 40) & 0xC0) == 0)
  {
    *(v4 + 184) -= value[14];
    value[14] = 0;
  }
}

uint64_t FigStreamingCacheMediaSegmentSetDuplicateSegments(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!a1)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_7(&v20);
    return v20;
  }

  if (!a2)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_6(&v20);
    return v20;
  }

  if (!a3)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_5(&v20);
    return v20;
  }

  if (!a4)
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_4(&v20);
    return v20;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_1(&v20);
    goto LABEL_34;
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    while (v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    if (*(v8 + 121))
    {
LABEL_13:
      v9 = 0;
      goto LABEL_25;
    }

    if (CFSetContainsValue(*(v8 + 48), a3))
    {
      if (!*(a3 + 136))
      {
        Count = CFRetain(a4);
        *(a3 + 136) = Count;
        v20 = 0;
        v11 = *(a3 + 88);
        if (v11)
        {
          v12 = 0;
          v9 = 0;
          v13 = *(a3 + 128);
          v14 = *(a3 + 96);
          v15 = *(a3 + 104);
          v19 = 0.0;
          if (Count)
          {
            goto LABEL_23;
          }

          while (v12 < Count)
          {
            FigCFArrayGetDoubleAtIndex();
            if (v19 != *(a3 + 120))
            {
              v9 = sc_CreateMediaSegment(a1, a2, v11, v14, v15, 1, &v20, v19, v13);
              if (!v9)
              {
                v16 = v20;
                *(v20 + 160) |= *(a3 + 160) & 0xFFFFFFF9;
                v17 = *(a3 + 136);
                if (v17)
                {
                  v17 = CFRetain(v17);
                  v16 = v20;
                }

                v9 = 0;
                *(v16 + 136) = v17;
              }
            }

            ++v12;
            Count = *(a3 + 136);
            if (Count)
            {
LABEL_23:
              Count = CFArrayGetCount(Count);
            }
          }
        }

        else
        {
          FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_2(&v19);
          v9 = LODWORD(v19);
        }

        goto LABEL_25;
      }

      goto LABEL_13;
    }

    FigStreamingCacheMediaSegmentSetDuplicateSegments_cold_3(&v20);
LABEL_34:
    v9 = v20;
    goto LABEL_25;
  }

LABEL_9:
  v9 = FigSignalErrorAtGM();
LABEL_25:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigStreamingCacheSetInterstitialAssetList(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetInterstitialAssetList_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheSetInterstitialAssetList_cold_3(&v8);
    return v8;
  }

  if (!a3)
  {
    FigStreamingCacheSetInterstitialAssetList_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetInterstitialAssetList_cold_1(&v8);
    v6 = v8;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    v6 = sc_writeMetadataToDisk(a1, a2, a3, @"AssetList");
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigStreamingCacheCopyInterstitialAssetList(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyInterstitialAssetList_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"AssetList", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheSetExclusiveWriter(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if ((*(a1 + 220) & 2) == 0)
  {
    FigSimpleMutexUnlock();
    return 1;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17CD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4 != a2)
  {
    if (v4)
    {
      FigSimpleMutexUnlock();
      v6 = 0;
LABEL_8:
      CFRelease(v4);
      return v6;
    }

    v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v8 = v7;
    v9 = *(a1 + 296);
    *(a1 + 296) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 1;
  }

  FigSimpleMutexUnlock();
  v6 = 1;
  if (a2)
  {
    goto LABEL_8;
  }

  return v6;
}

void FigStreamingCacheClearExclusiveWriter(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if ((*(a1 + 220) & 2) != 0)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (dword_1EAF17CD8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      v6 = v4 == a2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      FigSimpleMutexUnlock();
LABEL_12:
      CFRelease(v4);
      return;
    }

    v7 = *(a1 + 296);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 296) = 0;
    }

    FigSimpleMutexUnlock();
    if (v4)
    {
      goto LABEL_12;
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

uint64_t FigStreamingCacheCreate(const __CFAllocator *a1, const __CFURL *a2, const __CFDictionary *a3, uint64_t *a4)
{
  v73[16] = *MEMORY[0x1E69E9840];
  valueCallBacks = *byte_1F0AFCEE0;
  if (!a4)
  {
    FigStreamingCacheCreate_cold_14(v73);
    return LODWORD(v73[0]);
  }

  if (!a2)
  {
    FigStreamingCacheCreate_cold_13(v73);
    return LODWORD(v73[0]);
  }

  if (sRegisterFigStreamingCacheTypeOnce != -1)
  {
    FigStreamingCacheGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigStreamingCacheCreate_cold_12(v73);
    return LODWORD(v73[0]);
  }

  v9 = Instance;
  v10 = FigReentrantMutexCreate();
  *(v9 + 16) = v10;
  if (!v10)
  {
    FigStreamingCacheCreate_cold_11(v73);
    goto LABEL_142;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  *(v9 + 232) = Mutable;
  if (!Mutable)
  {
    FigStreamingCacheCreate_cold_10(v73);
    goto LABEL_142;
  }

  v12 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], &valueCallBacks);
  *(v9 + 224) = v12;
  if (!v12)
  {
    FigStreamingCacheCreate_cold_9(v73);
    goto LABEL_142;
  }

  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 264) = v13;
  if (!v13)
  {
    FigStreamingCacheCreate_cold_8(v73);
    goto LABEL_142;
  }

  if (a3)
  {
    if (CFDictionaryGetValue(a3, @"FSC_Backing") == @"FSC_DiskBacking")
    {
      *(v9 + 220) |= 2u;
    }

    Value = CFDictionaryGetValue(a3, @"FSC_DiskCacheRepositoryURL");
    if (Value)
    {
      v15 = CFURLGetString(Value);
      *(v9 + 32) = CFRetain(v15);
      *(v9 + 220) |= 2u;
      if (dword_1EAF17CD8)
      {
        LODWORD(v63) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v63;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v19 = *(v9 + 32);
          *cf = 136315650;
          *&cf[4] = "FigStreamingCacheCreate";
          v65 = 2048;
          v66 = v9;
          v67 = 2112;
          v68 = v19;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v20 = CFDictionaryGetValue(a3, @"FSC_DownloadDestinationURL");
    if (v20)
    {
      v21 = CFRetain(v20);
      *(v9 + 40) = v21;
      if (v21)
      {
        *(v9 + 220) |= 2u;
        if (dword_1EAF17CD8)
        {
          LODWORD(v63) = 0;
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v23 = v63;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v25 = *(v9 + 40);
            *cf = 136315650;
            *&cf[4] = "FigStreamingCacheCreate";
            v65 = 2048;
            v66 = v9;
            v67 = 2112;
            v68 = v25;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      *(v9 + 40) = 0;
    }

    v26 = CFDictionaryGetValue(a3, @"FSC_UseURLPathAsCacheKey");
    v27 = *MEMORY[0x1E695E4D0];
    if (v26 == *MEMORY[0x1E695E4D0])
    {
      *(v9 + 64) |= 1u;
    }

    if (CFDictionaryGetValue(a3, @"FSC_UseURLWithoutQueryStringAsCacheKey") == v27)
    {
      *(v9 + 64) |= 2u;
    }
  }

  if (*(v9 + 32))
  {
    goto LABEL_147;
  }

  if (!*(v9 + 40))
  {
    v28 = CFPreferencesCopyAppValue(@"streamingCachePath", @"com.apple.coremedia");
    if (v28)
    {
      v29 = v28;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v29))
      {
        *(v9 + 32) = CFRetain(v29);
        *(v9 + 220) |= 2u;
      }

      CFRelease(v29);
    }
  }

  if (*(v9 + 32))
  {
LABEL_147:
    if (*(v9 + 40))
    {
      FigStreamingCacheCreate_cold_2(v73);
      goto LABEL_142;
    }
  }

  v31 = *(v9 + 220);
  *(v9 + 220) = v31 | 1;
  if ((v31 & 2) != 0)
  {
    *(v9 + 88) = xmmword_196E7C080;
    v32 = (v9 + 88);
    *(v9 + 104) = 0x4044000000000000;
    v33 = (v9 + 104);
    if (a3)
    {
      v73[0] = 0;
      *cf = 0;
      goto LABEL_49;
    }

LABEL_60:
    *(v9 + 24) = FigCFHTTPCreateURLString(a2);
LABEL_66:
    v43 = FigCFURLCreateCacheKey();
    *(v9 + 48) = v43;
    v42 = (v9 + 48);
    if (v43)
    {
      v38 = 0;
LABEL_68:
      *(v9 + 168) = 0;
      *(v9 + 176) = v9 + 168;
      v44 = dispatch_queue_create("com.apple.coremedia.streamingCache.notification", 0);
      *(v9 + 248) = v44;
      if (v44)
      {
        if ((*(v9 + 220) & 2) == 0)
        {
          goto LABEL_70;
        }

        v53 = dispatch_queue_create("com.apple.coremedia.streamingcache.ioqueue", 0);
        *(v9 + 240) = v53;
        if (v53)
        {
          v73[0] = 0;
          *cf = 0;
          if (*(v9 + 40))
          {
            v55 = FigCFURLDoesDirectoryExist() == 0;
            v56 = *(v9 + 40);
            if (v56)
            {
              v57 = CFRetain(v56);
            }

            else
            {
              v57 = 0;
            }

            *(v9 + 56) = v57;
            v54 = sc_EnsurePersistentStoreAtURL(v9, v57, v55);
            if (!v54)
            {
              v54 = sc_RestoreCache(v9);
            }
          }

          else
          {
            v54 = FigShared_CopyDiskCacheParams(*(v9 + 32));
            if (!v54)
            {
              if (!FigShared_CheckOutOfDiskCache(*(v9 + 32)))
              {
                if (sc_EnsurePersistentStoreAtURL(v9, *(v9 + 56), 1))
                {
                  v58 = *(v9 + 56);
                  if (v58)
                  {
                    CFRelease(v58);
                    *(v9 + 56) = 0;
                  }

                  if (*cf)
                  {
                    CFRelease(*cf);
                    *cf = 0;
                  }
                }

                else if (!sc_RestoreCache(v9))
                {
LABEL_113:
                  v60 = *v42;
                  v61 = *cf;
                  *v42 = *cf;
                  if (v61)
                  {
                    CFRetain(v61);
                  }

                  if (v60)
                  {
                    CFRelease(v60);
                  }

                  if (*cf)
                  {
                    CFRelease(*cf);
                    DiskCacheBundle = 0;
                    *cf = 0;
                  }

                  else
                  {
                    DiskCacheBundle = 0;
                  }

LABEL_120:
                  sc_UnlockPersistentStoreForAnything(v9);
                  if (*cf)
                  {
                    CFRelease(*cf);
                  }

                  if (v73[0])
                  {
                    CFRelease(v73[0]);
                  }

                  if (DiskCacheBundle == -16910 || DiskCacheBundle == -16914)
                  {
                    DiskCacheBundle = FigSignalErrorAtGM();
                  }

                  if (DiskCacheBundle)
                  {
LABEL_80:
                    if (!v38)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_81;
                  }

LABEL_70:
                  if (dword_1EAF17CD8)
                  {
                    LODWORD(v63) = 0;
                    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v46 = v63;
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = v46;
                    }

                    else
                    {
                      v47 = v46 & 0xFFFFFFFE;
                    }

                    if (v47)
                    {
                      v48 = "disk";
                      v49 = *(v9 + 48);
                      if ((*(v9 + 220) & 2) == 0)
                      {
                        v48 = "memory";
                      }

                      v50 = *(v9 + 72);
                      *cf = 136316162;
                      *&cf[4] = "FigStreamingCacheCreate";
                      v65 = 2048;
                      v66 = v9;
                      v67 = 2080;
                      v68 = v48;
                      v69 = 2112;
                      v70 = v49;
                      v71 = 2048;
                      v72 = v50;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  DiskCacheBundle = 0;
                  *a4 = v9;
                  v9 = 0;
                  goto LABEL_80;
                }
              }

LABEL_102:
              DiskCacheBundle = sc_CreateDiskCacheBundle(v9, v73[0], (v9 + 56));
              while (DiskCacheBundle)
              {
                if (DiskCacheBundle != 28)
                {
                  goto LABEL_120;
                }

                v63 = 0;
                if (FigShared_MakeRoomInDiskCache(*(v9 + 32)))
                {
                  v59 = 1;
                }

                else
                {
                  v59 = v63 < 1;
                }

                if (!v59)
                {
                  goto LABEL_102;
                }

                DiskCacheBundle = 28;
                if (!v63)
                {
                  goto LABEL_120;
                }
              }

              v54 = FigShared_CheckIntoAndOutOfDiskCache(*(v9 + 32));
              if (!v54)
              {
                goto LABEL_113;
              }
            }
          }

          DiskCacheBundle = v54;
          goto LABEL_120;
        }

        FigStreamingCacheCreate_cold_5(v73);
      }

      else
      {
        FigStreamingCacheCreate_cold_6(v73);
      }

      DiskCacheBundle = LODWORD(v73[0]);
      goto LABEL_80;
    }

    FigStreamingCacheCreate_cold_7(v73);
LABEL_142:
    DiskCacheBundle = LODWORD(v73[0]);
    goto LABEL_83;
  }

  *(v9 + 88) = xmmword_196E7C090;
  v32 = (v9 + 88);
  *(v9 + 72) = 0x2000000;
  *(v9 + 104) = 0x4044000000000000;
  v33 = (v9 + 104);
  if (!a3)
  {
    goto LABEL_60;
  }

  v73[0] = 0;
  *cf = 0;
  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(v9 + 72) = v73[0];
  }

LABEL_49:
  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v9 + 80) = *cf;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *v32 = *cf;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v9 + 96) = *cf;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *v33 = *cf;
  }

  v34 = CFDictionaryGetValue(a3, @"FSC_AddToDonorPool");
  if (v34)
  {
    v35 = CFRetain(v34);
    *(v9 + 136) = v35;
    if (v35)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }
  }

  else
  {
    *(v9 + 136) = 0;
  }

  v36 = CFDictionaryGetValue(a3, @"FSC_ClientName");
  *(v9 + 24) = FigCFHTTPCreateURLString(a2);
  if (!v36)
  {
    goto LABEL_66;
  }

  v37 = FigCFURLCreateCacheKey();
  if (!v37)
  {
    FigStreamingCacheCreate_cold_4(v73);
    goto LABEL_142;
  }

  v38 = v37;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v40 = CFStringCreateMutable(AllocatorForMedia, 0);
  if (v40)
  {
    v41 = v40;
    CFStringAppend(v40, v36);
    CFStringAppend(v41, @"-");
    CFStringAppend(v41, v38);
    *(v9 + 48) = v41;
    v42 = (v9 + 48);
    goto LABEL_68;
  }

  FigStreamingCacheCreate_cold_3(v73);
  DiskCacheBundle = LODWORD(v73[0]);
LABEL_81:
  CFRelease(v38);
LABEL_82:
  if (v9)
  {
LABEL_83:
    CFRelease(v9);
  }

  return DiskCacheBundle;
}

void sc_FreeInterstitialAssetRecord(int a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  free(a2);
}

uint64_t sc_NoteMemoryDemand(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  FigSimpleMutexLock();
  if (*(a2 + 272))
  {
    sc_NoteMemoryDemand_cold_1();
  }

  else if (*(a2 + 144))
  {
    if (*a4 != a2)
    {
      FigSimpleMutexLock();
      v6 = a4[1];
      FigSimpleMutexUnlock();
      v7 = *(a2 + 168);
      if (v7)
      {
        if (v6 >= 1)
        {
          do
          {
            BackingForMediaStreamFromLaterSegments = sc_GetBackingForMediaStreamFromLaterSegments(a2, v7, v6, 0.0);
            FigSimpleMutexLock();
            v6 = a4[1] - BackingForMediaStreamFromLaterSegments;
            a4[1] = v6;
            FigSimpleMutexUnlock();
            v7 = *(v7 + 8);
            if (v7)
            {
              v9 = v6 <= 0;
            }

            else
            {
              v9 = 1;
            }
          }

          while (!v9);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

double figStreamingCacheInit(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t figStreamingCacheFinalize(uint64_t a1)
{
  if (dword_1EAF17CD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figStreamingCacheInvalidate(a1);
  v3 = *(a1 + 264);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 264) = 0;
  }

  v4 = *(a1 + 240);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 240) = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef figStreamingCacheCopyDebugDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigStreamingCache %p (%d) URL %@ currentCacheSize %lld playbackTime %.2f flags 0x%X]", a1, v3, *(a1 + 48), *(a1 + 184), *(a1 + 192), *(a1 + 220));
}

void sc_CopyDataApplierFunc(const void *a1, uint64_t a2, uint64_t a3)
{
  theBuffer = 0;
  cf = 0;
  v6 = *(a3 + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v7)
  {
    CFDataWithBlockBufferNoCopy = v7(v6, a2, &cf, &theBuffer);
    if (!CFDataWithBlockBufferNoCopy)
    {
      CMBlockBufferGetDataLength(theBuffer);
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      if (!CFDataWithBlockBufferNoCopy)
      {
        CFDictionaryAddValue(*(a3 + 16), a1, 0);
        goto LABEL_7;
      }
    }
  }

  else
  {
    CFDataWithBlockBufferNoCopy = -12782;
  }

  *a3 = CFDataWithBlockBufferNoCopy;
LABEL_7:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore(uint64_t a1)
{
  cf = 0;
  if ((*(a1 + 220) & 2) == 0)
  {
    sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore_cold_2(&v13);
LABEL_15:
    v6 = v13;
    goto LABEL_10;
  }

  if ((*(a1 + 288) & 2) == 0)
  {
    sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore_cold_1(&v13);
    goto LABEL_15;
  }

  v2 = *(a1 + 280);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBaseObject = FigHLSPersistentStoreGetFigBaseObject(v2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, @"MasterPlaylistNetworkURL", AllocatorForMedia, &cf);
  }

  if (FigCFEqual())
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 280);
    v8 = *(a1 + 24);
    v9 = FigHLSPersistentStoreGetFigBaseObject(v7);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v6 = v10(v9, @"MasterPlaylistNetworkURL", v8);
    }

    else
    {
      v6 = 4294954514;
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sc_SendDiskWriteErrorNotification()
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetInt32();
  }

  else
  {
    sc_SendDiskWriteErrorNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void stream_CreateStreamInfoCreateOptions(int a1, __CFDictionary **a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"StreamInfoDemandWriteAccess", *MEMORY[0x1E695E4D0]);
  }

  if (FigCFDictionaryGetCount() < 1)
  {
    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {
    *a2 = v6;
  }
}

uint64_t sc_RestoreMediaMapsFromDiskApplierFunction(const void *a1, const void *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v16[1] = 0;
  if (!v5)
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_6(v16);
LABEL_19:
    result = LODWORD(v16[0]);
    goto LABEL_14;
  }

  if (!v4)
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_5(v16);
    goto LABEL_19;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_1(v16);
    goto LABEL_19;
  }

  v9 = CFDictionaryGetTypeID();
  if (v9 != CFGetTypeID(a2))
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_2(v16);
    goto LABEL_19;
  }

  v10 = *(v5 + 168);
  if (!v10)
  {
LABEL_8:
    result = FigSignalErrorAtGM();
    goto LABEL_14;
  }

  while (v10 != v4)
  {
    v10 = *(v10 + 8);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v16[0] = 0;
  Value = CFDictionaryGetValue(a2, @"URL");
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_4(&v17);
LABEL_22:
    result = v17;
    goto LABEL_14;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", Value, v16[0]);
  if (!v14)
  {
    sc_RestoreMediaMapsFromDiskApplierFunction_cold_3(&v17);
    goto LABEL_22;
  }

  v15 = v14;
  CFDictionarySetValue(*(v10 + 160), v14, a1);
  if (FigCFDictionaryGetValueIfPresent())
  {
    FigCFDictionarySetValue();
  }

  CFRelease(v15);
  result = 0;
LABEL_14:
  *(a3 + 4) = result;
  return result;
}

void segment_EvictEntry(void *value, int a2, int a3)
{
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  memset(v184, 0, sizeof(v184));
  v3 = *(value + 40);
  if ((v3 & 8) != 0)
  {
    return;
  }

  v7 = *value;
  if (!a2)
  {
    if ((v3 & 2) != 0)
    {
      started = MediaSegmentStartTimeList_RB_NEXT(value);
      if (started)
      {
        if (*(value + 15) + *(value + 16) >= *(started + 120))
        {
          *(started + 160) |= 2u;
          v3 = *(value + 40);
        }
      }
    }

    if ((v3 & 4) != 0)
    {
      v9 = MediaSegmentStartTimeList_RB_PREV(value);
      if (v9)
      {
        if (*(v9 + 120) + *(v9 + 128) >= *(value + 15))
        {
          *(v9 + 160) |= 4u;
        }
      }
    }
  }

  *(&v184[5] + 8) = *(value + 11);
  v10 = *(value + 15);
  *(&v185 + 1) = v10;
  *(&v184[6] + 1) = value[13];
  v12 = v7 + 3;
  v11 = v7[3];
  if (v11)
  {
    do
    {
      v13 = v10 - v11[15];
      if (v13 >= 0.0)
      {
        if (v13 <= 0.0)
        {
          break;
        }

        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v11 = *&v11[v14];
    }

    while (v11);
    if (v11 == value)
    {
      v15 = value[2];
      if (value[1])
      {
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *(v15 + 8);
          }

          while (v15);
          v15 = *(v16 + 16);
          v17 = *(v16 + 24);
          v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
          if (v15)
          {
            if (*(v15 + 24))
            {
              v19 = v17 | 1;
            }

            else
            {
              v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
            }

            *(v15 + 24) = v19;
          }

          v20 = v7 + 3;
          if (v18)
          {
            v20 = (v18 + 8);
            if (*(v18 + 8) != v16)
            {
              v20 = (v18 + 16);
            }
          }

          LODWORD(v17) = v17 & 1;
          *v20 = v15;
          if ((*(v16 + 24) & 0xFFFFFFFFFFFFFFFELL) == value)
          {
            v18 = v16;
          }

          v21 = value[3];
          *(v16 + 8) = *(value + 1);
          *(v16 + 24) = v21;
          v22 = v7 + 3;
          v23 = value[3] & 0xFFFFFFFFFFFFFFFELL;
          if (v23)
          {
            v25 = *(v23 + 8);
            v24 = (v23 + 8);
            if (v25 == value)
            {
              v22 = v24;
            }

            else
            {
              v22 = v24 + 1;
            }
          }

          *v22 = v16;
          v27 = value[1];
          v26 = value[2];
          if (*(v27 + 24))
          {
            v28 = v16 | 1;
          }

          else
          {
            v28 = v16;
          }

          *(v27 + 24) = v28;
          if (v26)
          {
            if (*(v26 + 24))
            {
              v16 |= 1uLL;
            }

            *(v26 + 24) = v16;
          }

          goto LABEL_53;
        }

        v18 = value[3] & 0xFFFFFFFFFFFFFFFELL;
        v17 = value[3] & 1;
        v15 = value[1];
      }

      else
      {
        v18 = value[3] & 0xFFFFFFFFFFFFFFFELL;
        v17 = value[3] & 1;
        if (!v15)
        {
LABEL_49:
          v30 = v7 + 3;
          if (v18)
          {
            v30 = (v18 + 8);
            if (*(v18 + 8) != value)
            {
              v30 = (v18 + 16);
            }
          }

          *v30 = v15;
LABEL_53:
          if (!v17)
          {
            while (1)
            {
              v52 = v15;
              v15 = v18;
              if (v52)
              {
                v53 = v52[3];
                if (v53)
                {
                  break;
                }
              }

              v44 = *v12;
              if (v52 == *v12)
              {
                goto LABEL_143;
              }

              v31 = *(v15 + 8);
              if (v31 == v52)
              {
                v31 = *(v15 + 16);
                v38 = *(v31 + 24);
                if (v38)
                {
                  *(v31 + 24) = v38 & 0xFFFFFFFFFFFFFFFELL;
                  v39 = *(v15 + 24) | 1;
                  v40 = *(v31 + 8);
                  *(v15 + 16) = v40;
                  *(v15 + 24) = v39;
                  if (v40)
                  {
                    if (v40[3])
                    {
                      v41 = v15 | 1;
                    }

                    else
                    {
                      v41 = v15;
                    }

                    v40[3] = v41;
                    v39 = *(v15 + 24);
                  }

                  *(v31 + 24) = v39 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 24) & 1;
                  if ((v39 & 0xFFFFFFFFFFFFFFFELL) != 0)
                  {
                    v42 = *(v15 + 24);
                    v43 = v42 & 0xFFFFFFFFFFFFFFFELL;
                    if (v15 == *((v42 & 0xFFFFFFFFFFFFFFFELL) + 8))
                    {
                      *(v43 + 8) = v31;
                    }

                    else
                    {
                      *(v43 + 16) = v31;
                      v40 = *(v15 + 16);
                    }
                  }

                  else
                  {
                    *v12 = v31;
                    v42 = *(v15 + 24);
                    v44 = v31;
                  }

                  *(v31 + 8) = v15;
                  if (v42)
                  {
                    v31 |= 1uLL;
                  }

                  *(v15 + 24) = v31;
                  v31 = v40;
                }

                v49 = *(v31 + 8);
                if (v49)
                {
                  v50 = *(v49 + 24);
                  if (v50)
                  {
                    v51 = *(v31 + 16);
                    if (!v51 || (*(v51 + 24) & 1) == 0)
                    {
                      *(v49 + 24) = v50 & 0xFFFFFFFFFFFFFFFELL;
                      v59 = *(v31 + 24) | 1;
                      *(v31 + 24) = v59;
                      v60 = *(v49 + 16);
                      *(v31 + 8) = v60;
                      if (v60)
                      {
                        if (*(v60 + 24))
                        {
                          v61 = v31 | 1;
                        }

                        else
                        {
                          v61 = v31;
                        }

                        *(v60 + 24) = v61;
                        v59 = *(v31 + 24);
                      }

                      *(v49 + 24) = v59 & 0xFFFFFFFFFFFFFFFELL | *(v49 + 24) & 1;
                      if ((v59 & 0xFFFFFFFFFFFFFFFELL) != 0)
                      {
                        v62 = *(v31 + 24);
                        v63 = v62 & 0xFFFFFFFFFFFFFFFELL;
                        if (v31 == *((v62 & 0xFFFFFFFFFFFFFFFELL) + 8))
                        {
                          *(v63 + 8) = v49;
                        }

                        else
                        {
                          *(v63 + 16) = v49;
                        }
                      }

                      else
                      {
                        *v12 = v49;
                        v62 = *(v31 + 24);
                        v44 = v49;
                      }

                      *(v49 + 16) = v31;
                      if (v62)
                      {
                        v49 |= 1uLL;
                      }

                      *(v31 + 24) = v49;
                      v31 = *(v15 + 16);
                      v51 = *(v31 + 16);
                    }

LABEL_416:
                    *(v31 + 24) = *(v31 + 24) & 0xFFFFFFFFFFFFFFFELL | *(v15 + 24) & 1;
                    *(v15 + 24) &= ~1uLL;
                    if (v51)
                    {
                      *(v51 + 24) &= ~1uLL;
                    }

                    v64 = (v31 + 8);
                    v65 = *(v31 + 8);
                    *(v15 + 16) = v65;
                    if (v65)
                    {
                      goto LABEL_130;
                    }

                    goto LABEL_134;
                  }
                }

                v51 = *(v31 + 16);
                if (v51 && (*(v51 + 24) & 1) != 0)
                {
                  goto LABEL_416;
                }
              }

              else
              {
                v32 = *(v31 + 24);
                if (v32)
                {
                  *(v31 + 24) = v32 & 0xFFFFFFFFFFFFFFFELL;
                  v33 = *(v15 + 24) | 1;
                  *(v15 + 24) = v33;
                  v34 = *(v31 + 16);
                  *(v15 + 8) = v34;
                  if (v34)
                  {
                    if (v34[3])
                    {
                      v35 = v15 | 1;
                    }

                    else
                    {
                      v35 = v15;
                    }

                    v34[3] = v35;
                    v33 = *(v15 + 24);
                  }

                  *(v31 + 24) = v33 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 24) & 1;
                  if ((v33 & 0xFFFFFFFFFFFFFFFELL) != 0)
                  {
                    v36 = *(v15 + 24);
                    v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
                    if (v15 == *((v36 & 0xFFFFFFFFFFFFFFFELL) + 8))
                    {
                      *(v37 + 8) = v31;
                      v34 = *(v15 + 8);
                    }

                    else
                    {
                      *(v37 + 16) = v31;
                    }
                  }

                  else
                  {
                    *v12 = v31;
                    v36 = *(v15 + 24);
                    v44 = v31;
                  }

                  *(v31 + 16) = v15;
                  if (v36)
                  {
                    v31 |= 1uLL;
                  }

                  *(v15 + 24) = v31;
                  v31 = v34;
                }

                v45 = *(v31 + 8);
                if (v45)
                {
                  v46 = *(v45 + 24);
                  if (v46)
                  {
                    goto LABEL_100;
                  }
                }

                v47 = *(v31 + 16);
                if (v47)
                {
                  v48 = *(v47 + 24);
                  if (v48)
                  {
                    if (!v45)
                    {
                      goto LABEL_103;
                    }

                    v46 = *(v45 + 24);
LABEL_100:
                    if ((v46 & 1) == 0)
                    {
                      v47 = *(v31 + 16);
                      if (v47)
                      {
                        v48 = *(v47 + 24);
LABEL_103:
                        *(v47 + 24) = v48 & 0xFFFFFFFFFFFFFFFELL;
                      }

                      v54 = *(v31 + 24) | 1;
                      v55 = *(v47 + 8);
                      *(v31 + 16) = v55;
                      *(v31 + 24) = v54;
                      if (v55)
                      {
                        if (*(v55 + 24))
                        {
                          v56 = v31 | 1;
                        }

                        else
                        {
                          v56 = v31;
                        }

                        *(v55 + 24) = v56;
                        v54 = *(v31 + 24);
                      }

                      *(v47 + 24) = v54 & 0xFFFFFFFFFFFFFFFELL | *(v47 + 24) & 1;
                      if ((v54 & 0xFFFFFFFFFFFFFFFELL) != 0)
                      {
                        v57 = *(v31 + 24);
                        v58 = v57 & 0xFFFFFFFFFFFFFFFELL;
                        if (v31 == *((v57 & 0xFFFFFFFFFFFFFFFELL) + 8))
                        {
                          *(v58 + 8) = v47;
                        }

                        else
                        {
                          *(v58 + 16) = v47;
                        }
                      }

                      else
                      {
                        *v12 = v47;
                        v57 = *(v31 + 24);
                        v44 = v47;
                      }

                      *(v47 + 8) = v31;
                      if (v57)
                      {
                        v47 |= 1uLL;
                      }

                      *(v31 + 24) = v47;
                      v31 = *(v15 + 8);
                      v45 = *(v31 + 8);
                    }

                    *(v31 + 24) = *(v31 + 24) & 0xFFFFFFFFFFFFFFFELL | *(v15 + 24) & 1;
                    *(v15 + 24) &= ~1uLL;
                    if (v45)
                    {
                      *(v45 + 24) &= ~1uLL;
                    }

                    v64 = (v31 + 16);
                    v65 = *(v31 + 16);
                    *(v15 + 8) = v65;
                    if (v65)
                    {
LABEL_130:
                      if (*(v65 + 24))
                      {
                        v66 = v15 | 1;
                      }

                      else
                      {
                        v66 = v15;
                      }

                      *(v65 + 24) = v66;
                    }

LABEL_134:
                    v67 = *(v15 + 24);
                    *(v31 + 24) = v67 & 0xFFFFFFFFFFFFFFFELL | *(v31 + 24) & 1;
                    if ((v67 & 0xFFFFFFFFFFFFFFFELL) != 0)
                    {
                      v68 = *(v15 + 24);
                      v69 = v68 & 0xFFFFFFFFFFFFFFFELL;
                      if (v15 == *((v68 & 0xFFFFFFFFFFFFFFFELL) + 8))
                      {
                        *(v69 + 8) = v31;
                      }

                      else
                      {
                        *(v69 + 16) = v31;
                      }
                    }

                    else
                    {
                      *v12 = v31;
                      v68 = *(v15 + 24);
                      v44 = v31;
                    }

                    *v64 = v15;
                    if (v68)
                    {
                      v70 = v31 | 1;
                    }

                    else
                    {
                      v70 = v31;
                    }

                    *(v15 + 24) = v70;
                    v52 = v44;
LABEL_143:
                    if (!v52)
                    {
                      goto LABEL_146;
                    }

                    v53 = v52[3];
                    break;
                  }
                }
              }

              *(v31 + 24) |= 1uLL;
              v18 = *(v15 + 24) & 0xFFFFFFFFFFFFFFFELL;
            }

            v52[3] = v53 & 0xFFFFFFFFFFFFFFFELL;
          }

          goto LABEL_146;
        }
      }

      if (*(v15 + 24))
      {
        v29 = v18 + 1;
      }

      else
      {
        v29 = v18;
      }

      *(v15 + 24) = v29;
      goto LABEL_49;
    }
  }

LABEL_146:
  v71 = v7 + 4;
  if (!v7[4] || MediaSegmentOffsetList_RB_FIND(v7 + 4, v184) != value)
  {
    goto LABEL_275;
  }

  v72 = value[5];
  if (value[4])
  {
    if (v72)
    {
      do
      {
        v73 = v72;
        v72 = *(v72 + 32);
      }

      while (v72);
      v72 = *(v73 + 40);
      v74 = *(v73 + 48);
      v75 = v74 & 0xFFFFFFFFFFFFFFFELL;
      if (v72)
      {
        if (*(v72 + 48))
        {
          v76 = v74 | 1;
        }

        else
        {
          v76 = v74 & 0xFFFFFFFFFFFFFFFELL;
        }

        *(v72 + 48) = v76;
      }

      v77 = v7 + 4;
      if (v75)
      {
        v77 = (v75 + 32);
        if (*(v75 + 32) != v73)
        {
          v77 = (v75 + 40);
        }
      }

      LODWORD(v74) = v74 & 1;
      *v77 = v72;
      if ((*(v73 + 48) & 0xFFFFFFFFFFFFFFFELL) == value)
      {
        v75 = v73;
      }

      v78 = value[6];
      *(v73 + 32) = *(value + 2);
      *(v73 + 48) = v78;
      v79 = v7 + 4;
      v80 = value[6] & 0xFFFFFFFFFFFFFFFELL;
      if (v80)
      {
        v82 = *(v80 + 32);
        v81 = (v80 + 32);
        if (v82 == value)
        {
          v79 = v81;
        }

        else
        {
          v79 = v81 + 1;
        }
      }

      *v79 = v73;
      v84 = value[4];
      v83 = value[5];
      if (*(v84 + 48))
      {
        v85 = v73 | 1;
      }

      else
      {
        v85 = v73;
      }

      *(v84 + 48) = v85;
      if (v83)
      {
        if (*(v83 + 48))
        {
          v73 |= 1uLL;
        }

        *(v83 + 48) = v73;
      }

      goto LABEL_183;
    }

    v75 = value[6] & 0xFFFFFFFFFFFFFFFELL;
    v74 = value[6] & 1;
    v72 = value[4];
    goto LABEL_175;
  }

  v75 = value[6] & 0xFFFFFFFFFFFFFFFELL;
  v74 = value[6] & 1;
  if (v72)
  {
LABEL_175:
    if (*(v72 + 48))
    {
      v86 = v75 + 1;
    }

    else
    {
      v86 = v75;
    }

    *(v72 + 48) = v86;
  }

  v87 = v7 + 4;
  if (v75)
  {
    v87 = (v75 + 32);
    if (*(v75 + 32) != value)
    {
      v87 = (v75 + 40);
    }
  }

  *v87 = v72;
LABEL_183:
  if (!v74)
  {
    while (1)
    {
      v109 = v72;
      v72 = v75;
      if (v109)
      {
        v110 = v109[6];
        if (v110)
        {
          break;
        }
      }

      v101 = *v71;
      if (v109 == *v71)
      {
        goto LABEL_272;
      }

      v88 = *(v72 + 32);
      if (v88 == v109)
      {
        v88 = *(v72 + 40);
        v95 = *(v88 + 48);
        if (v95)
        {
          *(v88 + 48) = v95 & 0xFFFFFFFFFFFFFFFELL;
          v96 = *(v72 + 48) | 1;
          v97 = *(v88 + 32);
          *(v72 + 40) = v97;
          *(v72 + 48) = v96;
          if (v97)
          {
            if (v97[6])
            {
              v98 = v72 | 1;
            }

            else
            {
              v98 = v72;
            }

            v97[6] = v98;
            v96 = *(v72 + 48);
          }

          *(v88 + 48) = v96 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 48) & 1;
          if ((v96 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v99 = *(v72 + 48);
            v100 = v99 & 0xFFFFFFFFFFFFFFFELL;
            if (v72 == *((v99 & 0xFFFFFFFFFFFFFFFELL) + 32))
            {
              *(v100 + 32) = v88;
            }

            else
            {
              *(v100 + 40) = v88;
              v97 = *(v72 + 40);
            }
          }

          else
          {
            *v71 = v88;
            v99 = *(v72 + 48);
            v101 = v88;
          }

          *(v88 + 32) = v72;
          if (v99)
          {
            v88 |= 1uLL;
          }

          *(v72 + 48) = v88;
          v88 = v97;
        }

        v106 = *(v88 + 32);
        if (v106)
        {
          v107 = *(v106 + 48);
          if (v107)
          {
            v108 = *(v88 + 40);
            if (!v108 || (*(v108 + 48) & 1) == 0)
            {
              *(v106 + 48) = v107 & 0xFFFFFFFFFFFFFFFELL;
              v116 = *(v88 + 48) | 1;
              *(v88 + 48) = v116;
              v117 = *(v106 + 40);
              *(v88 + 32) = v117;
              if (v117)
              {
                if (*(v117 + 48))
                {
                  v118 = v88 | 1;
                }

                else
                {
                  v118 = v88;
                }

                *(v117 + 48) = v118;
                v116 = *(v88 + 48);
              }

              *(v106 + 48) = v116 & 0xFFFFFFFFFFFFFFFELL | *(v106 + 48) & 1;
              if ((v116 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v119 = *(v88 + 48);
                v120 = v119 & 0xFFFFFFFFFFFFFFFELL;
                if (v88 == *((v119 & 0xFFFFFFFFFFFFFFFELL) + 32))
                {
                  *(v120 + 32) = v106;
                }

                else
                {
                  *(v120 + 40) = v106;
                }
              }

              else
              {
                *v71 = v106;
                v119 = *(v88 + 48);
                v101 = v106;
              }

              *(v106 + 40) = v88;
              if (v119)
              {
                v106 |= 1uLL;
              }

              *(v88 + 48) = v106;
              v88 = *(v72 + 40);
              v108 = *(v88 + 40);
            }

LABEL_424:
            *(v88 + 48) = *(v88 + 48) & 0xFFFFFFFFFFFFFFFELL | *(v72 + 48) & 1;
            *(v72 + 48) &= ~1uLL;
            if (v108)
            {
              *(v108 + 48) &= ~1uLL;
            }

            v121 = (v88 + 32);
            v122 = *(v88 + 32);
            *(v72 + 40) = v122;
            if (v122)
            {
              goto LABEL_260;
            }

            goto LABEL_264;
          }
        }

        v108 = *(v88 + 40);
        if (v108 && (*(v108 + 48) & 1) != 0)
        {
          goto LABEL_424;
        }
      }

      else
      {
        v89 = *(v88 + 48);
        if (v89)
        {
          *(v88 + 48) = v89 & 0xFFFFFFFFFFFFFFFELL;
          v90 = *(v72 + 48) | 1;
          *(v72 + 48) = v90;
          v91 = *(v88 + 40);
          *(v72 + 32) = v91;
          if (v91)
          {
            if (v91[6])
            {
              v92 = v72 | 1;
            }

            else
            {
              v92 = v72;
            }

            v91[6] = v92;
            v90 = *(v72 + 48);
          }

          *(v88 + 48) = v90 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 48) & 1;
          if ((v90 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v93 = *(v72 + 48);
            v94 = v93 & 0xFFFFFFFFFFFFFFFELL;
            if (v72 == *((v93 & 0xFFFFFFFFFFFFFFFELL) + 32))
            {
              *(v94 + 32) = v88;
              v91 = *(v72 + 32);
            }

            else
            {
              *(v94 + 40) = v88;
            }
          }

          else
          {
            *v71 = v88;
            v93 = *(v72 + 48);
            v101 = v88;
          }

          *(v88 + 40) = v72;
          if (v93)
          {
            v88 |= 1uLL;
          }

          *(v72 + 48) = v88;
          v88 = v91;
        }

        v102 = *(v88 + 32);
        if (v102)
        {
          v103 = *(v102 + 48);
          if (v103)
          {
            goto LABEL_230;
          }
        }

        v104 = *(v88 + 40);
        if (v104)
        {
          v105 = *(v104 + 48);
          if (v105)
          {
            if (!v102)
            {
              goto LABEL_233;
            }

            v103 = *(v102 + 48);
LABEL_230:
            if ((v103 & 1) == 0)
            {
              v104 = *(v88 + 40);
              if (v104)
              {
                v105 = *(v104 + 48);
LABEL_233:
                *(v104 + 48) = v105 & 0xFFFFFFFFFFFFFFFELL;
              }

              v111 = *(v88 + 48) | 1;
              v112 = *(v104 + 32);
              *(v88 + 40) = v112;
              *(v88 + 48) = v111;
              if (v112)
              {
                if (*(v112 + 48))
                {
                  v113 = v88 | 1;
                }

                else
                {
                  v113 = v88;
                }

                *(v112 + 48) = v113;
                v111 = *(v88 + 48);
              }

              *(v104 + 48) = v111 & 0xFFFFFFFFFFFFFFFELL | *(v104 + 48) & 1;
              if ((v111 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                v114 = *(v88 + 48);
                v115 = v114 & 0xFFFFFFFFFFFFFFFELL;
                if (v88 == *((v114 & 0xFFFFFFFFFFFFFFFELL) + 32))
                {
                  *(v115 + 32) = v104;
                }

                else
                {
                  *(v115 + 40) = v104;
                }
              }

              else
              {
                *v71 = v104;
                v114 = *(v88 + 48);
                v101 = v104;
              }

              *(v104 + 32) = v88;
              if (v114)
              {
                v104 |= 1uLL;
              }

              *(v88 + 48) = v104;
              v88 = *(v72 + 32);
              v102 = *(v88 + 32);
            }

            *(v88 + 48) = *(v88 + 48) & 0xFFFFFFFFFFFFFFFELL | *(v72 + 48) & 1;
            *(v72 + 48) &= ~1uLL;
            if (v102)
            {
              *(v102 + 48) &= ~1uLL;
            }

            v121 = (v88 + 40);
            v122 = *(v88 + 40);
            *(v72 + 32) = v122;
            if (v122)
            {
LABEL_260:
              if (*(v122 + 48))
              {
                v123 = v72 | 1;
              }

              else
              {
                v123 = v72;
              }

              *(v122 + 48) = v123;
            }

LABEL_264:
            v124 = *(v72 + 48);
            *(v88 + 48) = v124 & 0xFFFFFFFFFFFFFFFELL | *(v88 + 48) & 1;
            if ((v124 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v125 = *(v72 + 48);
              v126 = v125 & 0xFFFFFFFFFFFFFFFELL;
              if (v72 == *((v125 & 0xFFFFFFFFFFFFFFFELL) + 32))
              {
                *(v126 + 32) = v88;
              }

              else
              {
                *(v126 + 40) = v88;
              }
            }

            else
            {
              *v71 = v88;
              v125 = *(v72 + 48);
              v101 = v88;
            }

            *v121 = v72;
            if (v125)
            {
              v88 |= 1uLL;
            }

            *(v72 + 48) = v88;
            v109 = v101;
LABEL_272:
            if (!v109)
            {
              goto LABEL_275;
            }

            v110 = v109[6];
            break;
          }
        }
      }

      *(v88 + 48) |= 1uLL;
      v75 = *(v72 + 48) & 0xFFFFFFFFFFFFFFFELL;
    }

    v109[6] = v110 & 0xFFFFFFFFFFFFFFFELL;
  }

LABEL_275:
  if (value[13])
  {
    v127 = v7 + 5;
    if (v7[5])
    {
      if (MediaSegmentMediaSequenceNumberList_RB_FIND(v7 + 5, v184) == value)
      {
        v128 = value[8];
        if (value[7])
        {
          if (v128)
          {
            do
            {
              v129 = v128;
              v128 = *(v128 + 56);
            }

            while (v128);
            v128 = *(v129 + 64);
            v130 = *(v129 + 72);
            v131 = v130 & 0xFFFFFFFFFFFFFFFELL;
            if (v128)
            {
              if (*(v128 + 72))
              {
                v132 = v130 | 1;
              }

              else
              {
                v132 = v130 & 0xFFFFFFFFFFFFFFFELL;
              }

              *(v128 + 72) = v132;
            }

            v133 = v7 + 5;
            if (v131)
            {
              v133 = (v131 + 56);
              if (*(v131 + 56) != v129)
              {
                v133 = (v131 + 64);
              }
            }

            LODWORD(v130) = v130 & 1;
            *v133 = v128;
            if ((*(v129 + 72) & 0xFFFFFFFFFFFFFFFELL) == value)
            {
              v131 = v129;
            }

            v134 = value[9];
            *(v129 + 56) = *(value + 7);
            *(v129 + 72) = v134;
            v135 = v7 + 5;
            v136 = value[9] & 0xFFFFFFFFFFFFFFFELL;
            if (v136)
            {
              v138 = *(v136 + 56);
              v137 = (v136 + 56);
              if (v138 == value)
              {
                v135 = v137;
              }

              else
              {
                v135 = v137 + 1;
              }
            }

            *v135 = v129;
            v140 = value[7];
            v139 = value[8];
            if (*(v140 + 72))
            {
              v141 = v129 | 1;
            }

            else
            {
              v141 = v129;
            }

            *(v140 + 72) = v141;
            if (v139)
            {
              if (*(v139 + 72))
              {
                v129 |= 1uLL;
              }

              *(v139 + 72) = v129;
            }

            goto LABEL_313;
          }

          v131 = value[9] & 0xFFFFFFFFFFFFFFFELL;
          v130 = value[9] & 1;
          v128 = value[7];
        }

        else
        {
          v131 = value[9] & 0xFFFFFFFFFFFFFFFELL;
          v130 = value[9] & 1;
          if (!v128)
          {
LABEL_309:
            v143 = v7 + 5;
            if (v131)
            {
              v143 = (v131 + 56);
              if (*(v131 + 56) != value)
              {
                v143 = (v131 + 64);
              }
            }

            *v143 = v128;
LABEL_313:
            if (!v130)
            {
              while (1)
              {
                v165 = v128;
                v128 = v131;
                if (v165)
                {
                  v166 = v165[9];
                  if (v166)
                  {
                    break;
                  }
                }

                v157 = *v127;
                if (v165 == *v127)
                {
                  goto LABEL_402;
                }

                v144 = *(v128 + 56);
                if (v144 == v165)
                {
                  v144 = *(v128 + 64);
                  v151 = *(v144 + 72);
                  if (v151)
                  {
                    *(v144 + 72) = v151 & 0xFFFFFFFFFFFFFFFELL;
                    v152 = *(v128 + 72) | 1;
                    v153 = *(v144 + 56);
                    *(v128 + 64) = v153;
                    *(v128 + 72) = v152;
                    if (v153)
                    {
                      if (v153[9])
                      {
                        v154 = v128 | 1;
                      }

                      else
                      {
                        v154 = v128;
                      }

                      v153[9] = v154;
                      v152 = *(v128 + 72);
                    }

                    *(v144 + 72) = v152 & 0xFFFFFFFFFFFFFFFELL | *(v144 + 72) & 1;
                    if ((v152 & 0xFFFFFFFFFFFFFFFELL) != 0)
                    {
                      v155 = *(v128 + 72);
                      v156 = v155 & 0xFFFFFFFFFFFFFFFELL;
                      if (v128 == *((v155 & 0xFFFFFFFFFFFFFFFELL) + 56))
                      {
                        *(v156 + 56) = v144;
                      }

                      else
                      {
                        *(v156 + 64) = v144;
                        v153 = *(v128 + 64);
                      }
                    }

                    else
                    {
                      *v127 = v144;
                      v155 = *(v128 + 72);
                      v157 = v144;
                    }

                    *(v144 + 56) = v128;
                    if (v155)
                    {
                      v144 |= 1uLL;
                    }

                    *(v128 + 72) = v144;
                    v144 = v153;
                  }

                  v162 = *(v144 + 56);
                  if (v162)
                  {
                    v163 = *(v162 + 72);
                    if (v163)
                    {
                      v164 = *(v144 + 64);
                      if (!v164 || (*(v164 + 72) & 1) == 0)
                      {
                        *(v162 + 72) = v163 & 0xFFFFFFFFFFFFFFFELL;
                        v172 = *(v144 + 72) | 1;
                        *(v144 + 72) = v172;
                        v173 = *(v162 + 64);
                        *(v144 + 56) = v173;
                        if (v173)
                        {
                          if (*(v173 + 72))
                          {
                            v174 = v144 | 1;
                          }

                          else
                          {
                            v174 = v144;
                          }

                          *(v173 + 72) = v174;
                          v172 = *(v144 + 72);
                        }

                        *(v162 + 72) = v172 & 0xFFFFFFFFFFFFFFFELL | *(v162 + 72) & 1;
                        if ((v172 & 0xFFFFFFFFFFFFFFFELL) != 0)
                        {
                          v175 = *(v144 + 72);
                          v176 = v175 & 0xFFFFFFFFFFFFFFFELL;
                          if (v144 == *((v175 & 0xFFFFFFFFFFFFFFFELL) + 56))
                          {
                            *(v176 + 56) = v162;
                          }

                          else
                          {
                            *(v176 + 64) = v162;
                          }
                        }

                        else
                        {
                          *v127 = v162;
                          v175 = *(v144 + 72);
                          v157 = v162;
                        }

                        *(v162 + 64) = v144;
                        if (v175)
                        {
                          v162 |= 1uLL;
                        }

                        *(v144 + 72) = v162;
                        v144 = *(v128 + 64);
                        v164 = *(v144 + 64);
                      }

LABEL_433:
                      *(v144 + 72) = *(v144 + 72) & 0xFFFFFFFFFFFFFFFELL | *(v128 + 72) & 1;
                      *(v128 + 72) &= ~1uLL;
                      if (v164)
                      {
                        *(v164 + 72) &= ~1uLL;
                      }

                      v177 = (v144 + 56);
                      v178 = *(v144 + 56);
                      *(v128 + 64) = v178;
                      if (v178)
                      {
                        goto LABEL_390;
                      }

                      goto LABEL_394;
                    }
                  }

                  v164 = *(v144 + 64);
                  if (v164 && (*(v164 + 72) & 1) != 0)
                  {
                    goto LABEL_433;
                  }
                }

                else
                {
                  v145 = *(v144 + 72);
                  if (v145)
                  {
                    *(v144 + 72) = v145 & 0xFFFFFFFFFFFFFFFELL;
                    v146 = *(v128 + 72) | 1;
                    *(v128 + 72) = v146;
                    v147 = *(v144 + 64);
                    *(v128 + 56) = v147;
                    if (v147)
                    {
                      if (v147[9])
                      {
                        v148 = v128 | 1;
                      }

                      else
                      {
                        v148 = v128;
                      }

                      v147[9] = v148;
                      v146 = *(v128 + 72);
                    }

                    *(v144 + 72) = v146 & 0xFFFFFFFFFFFFFFFELL | *(v144 + 72) & 1;
                    if ((v146 & 0xFFFFFFFFFFFFFFFELL) != 0)
                    {
                      v149 = *(v128 + 72);
                      v150 = v149 & 0xFFFFFFFFFFFFFFFELL;
                      if (v128 == *((v149 & 0xFFFFFFFFFFFFFFFELL) + 56))
                      {
                        *(v150 + 56) = v144;
                        v147 = *(v128 + 56);
                      }

                      else
                      {
                        *(v150 + 64) = v144;
                      }
                    }

                    else
                    {
                      *v127 = v144;
                      v149 = *(v128 + 72);
                      v157 = v144;
                    }

                    *(v144 + 64) = v128;
                    if (v149)
                    {
                      v144 |= 1uLL;
                    }

                    *(v128 + 72) = v144;
                    v144 = v147;
                  }

                  v158 = *(v144 + 56);
                  if (v158)
                  {
                    v159 = *(v158 + 72);
                    if (v159)
                    {
                      goto LABEL_360;
                    }
                  }

                  v160 = *(v144 + 64);
                  if (v160)
                  {
                    v161 = *(v160 + 72);
                    if (v161)
                    {
                      if (!v158)
                      {
                        goto LABEL_363;
                      }

                      v159 = *(v158 + 72);
LABEL_360:
                      if ((v159 & 1) == 0)
                      {
                        v160 = *(v144 + 64);
                        if (v160)
                        {
                          v161 = *(v160 + 72);
LABEL_363:
                          *(v160 + 72) = v161 & 0xFFFFFFFFFFFFFFFELL;
                        }

                        v167 = *(v144 + 72) | 1;
                        v168 = *(v160 + 56);
                        *(v144 + 64) = v168;
                        *(v144 + 72) = v167;
                        if (v168)
                        {
                          if (*(v168 + 72))
                          {
                            v169 = v144 | 1;
                          }

                          else
                          {
                            v169 = v144;
                          }

                          *(v168 + 72) = v169;
                          v167 = *(v144 + 72);
                        }

                        *(v160 + 72) = v167 & 0xFFFFFFFFFFFFFFFELL | *(v160 + 72) & 1;
                        if ((v167 & 0xFFFFFFFFFFFFFFFELL) != 0)
                        {
                          v170 = *(v144 + 72);
                          v171 = v170 & 0xFFFFFFFFFFFFFFFELL;
                          if (v144 == *((v170 & 0xFFFFFFFFFFFFFFFELL) + 56))
                          {
                            *(v171 + 56) = v160;
                          }

                          else
                          {
                            *(v171 + 64) = v160;
                          }
                        }

                        else
                        {
                          *v127 = v160;
                          v170 = *(v144 + 72);
                          v157 = v160;
                        }

                        *(v160 + 56) = v144;
                        if (v170)
                        {
                          v160 |= 1uLL;
                        }

                        *(v144 + 72) = v160;
                        v144 = *(v128 + 56);
                        v158 = *(v144 + 56);
                      }

                      *(v144 + 72) = *(v144 + 72) & 0xFFFFFFFFFFFFFFFELL | *(v128 + 72) & 1;
                      *(v128 + 72) &= ~1uLL;
                      if (v158)
                      {
                        *(v158 + 72) &= ~1uLL;
                      }

                      v177 = (v144 + 64);
                      v178 = *(v144 + 64);
                      *(v128 + 56) = v178;
                      if (v178)
                      {
LABEL_390:
                        if (*(v178 + 72))
                        {
                          v179 = v128 | 1;
                        }

                        else
                        {
                          v179 = v128;
                        }

                        *(v178 + 72) = v179;
                      }

LABEL_394:
                      v180 = *(v128 + 72);
                      *(v144 + 72) = v180 & 0xFFFFFFFFFFFFFFFELL | *(v144 + 72) & 1;
                      if ((v180 & 0xFFFFFFFFFFFFFFFELL) != 0)
                      {
                        v181 = *(v128 + 72);
                        v182 = v181 & 0xFFFFFFFFFFFFFFFELL;
                        if (v128 == *((v181 & 0xFFFFFFFFFFFFFFFELL) + 56))
                        {
                          *(v182 + 56) = v144;
                        }

                        else
                        {
                          *(v182 + 64) = v144;
                        }
                      }

                      else
                      {
                        *v127 = v144;
                        v181 = *(v128 + 72);
                        v157 = v144;
                      }

                      *v177 = v128;
                      if (v181)
                      {
                        v144 |= 1uLL;
                      }

                      *(v128 + 72) = v144;
                      v165 = v157;
LABEL_402:
                      if (!v165)
                      {
                        goto LABEL_405;
                      }

                      v166 = v165[9];
                      break;
                    }
                  }
                }

                *(v144 + 72) |= 1uLL;
                v131 = *(v128 + 72) & 0xFFFFFFFFFFFFFFFELL;
              }

              v165[9] = v166 & 0xFFFFFFFFFFFFFFFELL;
            }

            goto LABEL_405;
          }
        }

        if (*(v128 + 72))
        {
          v142 = v131 + 1;
        }

        else
        {
          v142 = v131;
        }

        *(v128 + 72) = v142;
        goto LABEL_309;
      }
    }
  }

LABEL_405:
  v183 = value[20] & 0xFFFFFFF6;
  *(value + 40) = v183 | 8;
  if (a3)
  {
    if ((*(*v7 + 220) & 2) != 0)
    {
      *(value + 40) = v183 | 0x48;
    }
  }

  segment_UnlockEntry(value, a2);
}