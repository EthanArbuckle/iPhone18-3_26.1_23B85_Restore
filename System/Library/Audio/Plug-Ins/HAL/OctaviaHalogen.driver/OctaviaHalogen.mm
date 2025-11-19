void sub_F0C(const void *a1)
{
  if (!qword_20070)
  {
    qword_20070 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E0040DA3EDBD3uLL);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = dispatch_queue_create("com.apple.coremedia.Stevenote", 0);
    v4 = qword_20070;
    *qword_20070 = v3;
    if (a1)
    {
      v5 = CFRetain(a1);
      v4 = qword_20070;
    }

    else
    {
      v5 = 0;
    }

    *(v4 + 104) = v5;
    BKSDisplayServicesSetCloneRotationDisabled();
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    notify_register_dispatch("com.apple.mobile.demo.mode-1", (qword_20070 + 36), *qword_20070, &stru_1CDB8);
    notify_register_dispatch("com.apple.mobile.demo.mode-2", (qword_20070 + 40), *qword_20070, &stru_1CDD8);
    notify_register_dispatch("com.apple.mobile.demo.mode-3", (qword_20070 + 44), *qword_20070, &stru_1CDF8);
    notify_register_dispatch("com.apple.mobile.demo.mode-4", (qword_20070 + 48), *qword_20070, &stru_1CE18);
    if (!*(qword_20070 + 68))
    {
      AssertionID[0] = 0;
      IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"coremedia-stevenote", AssertionID);
      *(qword_20070 + 68) = AssertionID[0];
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    v8 = qword_20070;
    *(qword_20070 + 96) = CFPreferenceNumberWithDefault != 0;
    if (CFPreferenceNumberWithDefault)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      if (!sub_E88C())
      {
        *AssertionID = 21;
        v24 = 13;
        v25 = 1;
        v26 = 0;
        v27 = 0;
        v28 = 60000;
        v29 = 0u;
        v30 = 0u;
        v31 = 60000;
        v32 = 0u;
        v33 = 0u;
        if (sub_E9B0(AssertionID))
        {
          *(qword_20070 + 32) = 1;
        }
      }

      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = qword_20070;
    }

    if (!*(v8 + 8) && !*(v8 + 12))
    {
      ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
      v12 = qword_20070;
      *(qword_20070 + 8) = ServiceWithPrimaryPort;
      if (!ServiceWithPrimaryPort || !IOServiceOpen(ServiceWithPrimaryPort, mach_task_self_, 0, (v12 + 12)) && !*(qword_20070 + 12))
      {
        sub_EA4C();
      }
    }

    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*(qword_20070 + 12))
    {
      IOAccessoryManagerSetUSBCurrentLimitBase();
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, qword_20070, sub_16E0, @"com.apple.coremedia.Stevenote-HUD.changed", 0, 0);
    sub_16E0();
    *(qword_20070 + 72) = -1;
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v15, qword_20070, sub_E6B0, @"com.apple.coremedia.Stevenote3D.changed", 0, 0);
    sub_E6B0();
    sub_1814();
  }
}

void sub_1624(uint64_t a1)
{
  destinationBuffer = 0;
  sourceBytes = a1;
  CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, 0, 8uLL, kCFAllocatorDefault, 0, 0, 8uLL, 1u, &destinationBuffer);
  CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 8uLL);
  FigTransportGetRemoteRootObject();
  NeroTransportSendAsyncMessage();
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }
}

void sub_16E0()
{
  CFPreferencesSynchronize(@"com.apple.coremedia", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v1 = CFPreferenceNumberWithDefault != 0;
  v2 = qword_20070;
  if (*(qword_20070 + 64) != v1)
  {
    *(qword_20070 + 64) = v1;
    if (CFPreferenceNumberWithDefault)
    {
      if (!*(v2 + 16) && !*(v2 + 24))
      {
        v3 = IONotificationPortCreate(kIOMainPortDefault);
        v4 = qword_20070;
        *(qword_20070 + 16) = v3;
        IONotificationPortSetDispatchQueue(v3, *v4);
        IOServiceAddInterestNotification(*(qword_20070 + 16), *(qword_20070 + 8), "IOGeneralInterest", sub_2134, 0, (qword_20070 + 24));
      }

      if (qword_20088 != -1)
      {
        sub_EAAC();
      }

      v5 = qword_20090;
      v6 = qword_20070;
      *(qword_20070 + 56) = qword_20090;
      if (v5)
      {
        SCDynamicStoreSetDispatchQueue(v5, *v6);
      }
    }

    else
    {
      sub_E788();
    }

    sub_1814();
  }
}

void sub_1814()
{
  if (!qword_20070)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (qword_20098 != -1)
    {
      sub_EAC0();
    }

    if (qword_200A0)
    {
      CFDictionaryAddValue(Mutable, @"DeviceUniqueID", qword_200A0);
    }

    if (qword_200A8)
    {
      CFDictionaryAddValue(Mutable, @"DeviceModel", qword_200A8);
    }

    if (qword_200B0)
    {
      CFDictionaryAddValue(Mutable, @"DeviceColor", qword_200B0);
    }

    if (qword_200B8)
    {
      CFDictionaryAddValue(Mutable, @"DeviceEnclosureColor", qword_200B8);
    }

    if (qword_200C0)
    {
      CFDictionaryAddValue(Mutable, @"iOS Build", qword_200C0);
    }

    v1 = sub_E548();
    if (v1)
    {
      CFDictionaryAddValue(Mutable, @"DeviceIP", v1);
    }

    valuePtr = 0;
    if (*(qword_20070 + 8))
    {
      if (!IOAccessoryManagerGetUSBCurrentLimit())
      {
        v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v2)
        {
          CFDictionaryAddValue(Mutable, @"Device Current", v2);
        }

        goto LABEL_22;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    v2 = 0;
LABEL_22:
    if (*(qword_20070 + 64))
    {
      v3 = &kCFBooleanTrue;
    }

    else
    {
      v3 = &kCFBooleanFalse;
    }

    CFDictionaryAddValue(Mutable, @"Enable ATV HUD", *v3);
    if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
    {
      FigTransportGetRemoteRootObject();
      NeroTransportSendAsyncMessage();
    }

    goto LABEL_27;
  }

  v1 = 0;
  v2 = 0;
LABEL_27:
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1A88()
{
  if (qword_20070)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, qword_20070, @"com.apple.coremedia.Stevenote-HUD.changed", 0);
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v2, qword_20070, @"com.apple.coremedia.Stevenote3D.changed", 0);
    v3 = objc_autoreleasePoolPush();
    v4 = qword_20070;
    if (*(qword_20070 + 88))
    {
      CFRunLoopGetMain();
      IOHIDEventSystemClientUnscheduleWithRunLoop();
      IOHIDEventSystemClientUnregisterEventCallback();
      v4 = qword_20070;
      v5 = *(qword_20070 + 88);
      if (v5)
      {
        CFRelease(v5);
        v4 = qword_20070;
        *(qword_20070 + 88) = 0;
      }
    }

    [*(v4 + 80) stopDeviceMotionUpdates];

    *(qword_20070 + 80) = 0;
    objc_autoreleasePoolPop(v3);
    sub_E788();
    for (i = 36; i != 52; i += 4)
    {
      notify_cancel(*(qword_20070 + i));
    }

    dispatch_sync(*qword_20070, &stru_1CE58);
    BKSDisplayServicesSetCloneRotationDisabled();
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = qword_20070;
    v9 = *(qword_20070 + 68);
    if (v9)
    {
      IOPMAssertionRelease(v9);
      v8 = qword_20070;
    }

    *(v8 + 68) = 0;
    if (*(v8 + 96))
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v31 = 0;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      if (sub_E88C())
      {
        if (*(qword_20070 + 32))
        {
          v18 = 0x100000015;
          if (sub_E9B0(&v18))
          {
            *(qword_20070 + 32) = 0;
          }
        }
      }

      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = qword_20070;
    }

    v10 = *(v8 + 12);
    if (v10)
    {
      IOServiceClose(v10);
      v8 = qword_20070;
      *(qword_20070 + 12) = 0;
    }

    v11 = *(v8 + 8);
    if (v11)
    {
      IOObjectRelease(v11);
      *(qword_20070 + 8) = 0;
    }

    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    dispatch_release(*qword_20070);
    v13 = qword_20070;
    if (*(qword_20070 + 104))
    {
      CFRelease(*(qword_20070 + 104));
      v13 = qword_20070;
      *(qword_20070 + 104) = 0;
    }

    free(v13);
    qword_20070 = 0;
  }
}

uint64_t sub_2088(uint64_t result, uint64_t a2, void *a3, BOOL *a4)
{
  *a3 = 0;
  *a4 = result == 1852125503;
  return result;
}

uint64_t sub_20AC()
{
  if (qword_20080 != -1)
  {
    sub_EAD4();
  }

  return byte_20078;
}

void sub_2134(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -469794795)
  {
    sub_1814();
  }
}

void sub_214C(id a1)
{
  qword_20090 = SCDynamicStoreCreate(kCFAllocatorDefault, @"AddIPAddressListChangeCallbackSCF", sub_2254, 0);
  if (!qword_20090)
  {
    return;
  }

  Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
  v3 = NetworkServiceEntity;
  if (Mutable)
  {
    v4 = NetworkServiceEntity == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    CFArrayAppendValue(Mutable, NetworkServiceEntity);
    SCDynamicStoreSetNotificationKeys(qword_20090, 0, Mutable);
    goto LABEL_12;
  }

  if (NetworkServiceEntity)
  {
LABEL_12:
    CFRelease(v3);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!Mutable)
  {
    return;
  }

LABEL_9:

  CFRelease(Mutable);
}

void sub_2258(id a1)
{
  qword_200A0 = MGCopyAnswer();
  ModelSpecificName = CelestialGetModelSpecificName();
  if (ModelSpecificName)
  {
    ModelSpecificName = CFRetain(ModelSpecificName);
  }

  qword_200A8 = ModelSpecificName;
  qword_200B0 = MGCopyAnswer();
  qword_200B8 = MGCopyAnswer();
  qword_200C0 = MGCopyAnswer();
}

void sub_22E0()
{
  if (IOHIDEventGetIntegerValue() == 12 && IOHIDEventGetIntegerValue())
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    if (IntegerValue == 233)
    {
      sub_EAE8();
    }

    else if (IntegerValue == 234)
    {
      sub_EB78();
    }
  }
}

uint64_t sub_235C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    [v2 resetLines];
  }

  *(a1 + 24) = 0;
  return 0;
}

uint64_t sub_2390(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (!*(a1 + 16))
  {
    return -1;
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @" ";
  }

  v6 = objc_alloc_init(NSAutoreleasePool);
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  v7 = [*(a1 + 16) addLine:a2 withColorIndex:*(a1 + 24)];
  [*(a1 + 16) setValue:v5 atIndex:v7];
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9 <= 16)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 24) = v10;
  [v8 setNeedsDisplay];
  +[CATransaction commit];
  [v6 drain];
  return v7;
}

uint64_t sub_246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v6 = objc_alloc_init(NSAutoreleasePool);
    +[CATransaction begin];
    [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
    [*(a1 + 16) setValue:a3 atIndex:a2];
    [*(a1 + 16) setNeedsDisplay];
    +[CATransaction commit];
    [v6 drain];
  }

  return 0;
}

void sub_2518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = [v1 getValues];
    if (v2)
    {
      v3 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v2, @" ");
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void sub_2574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = [v1 getLabels];
    if (v2)
    {
      v3 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v2, @" ");
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

void sub_25D0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_2CA8;
  block[3] = &unk_1CFF8;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
}

void sub_2648()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  free(*(DerivedStorage + 32));
  v1 = *(DerivedStorage + 24);

  dispatch_release(v1);
}

__CFString *sub_2698(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroAudioSink %p>", a1);
  return Mutable;
}

uint64_t sub_26F0(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, kFigEndpointAudioSinkProperty_BufferDurationMS))
  {
    return 4294954512;
  }

  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (DerivedStorage + 8));
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t sub_2768(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, kFigEndpointAudioSinkProperty_BufferDurationMS))
  {
    return 4294954512;
  }

  CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 8));
  return 0;
}

uint64_t sub_27D0(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*DerivedStorage);
  v5 = *&StreamBasicDescription->mBitsPerChannel;
  v6 = *&StreamBasicDescription->mBytesPerPacket;
  *a2 = *&StreamBasicDescription->mSampleRate;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  return 0;
}

uint64_t sub_2870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 24);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_2A84;
  v9[3] = &unk_1CF90;
  v9[4] = a1;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v7, v9);
  return 0;
}

uint64_t sub_290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_2B1C;
  block[3] = &unk_1CFB0;
  block[4] = DerivedStorage;
  block[5] = a3;
  block[6] = a1;
  dispatch_sync(v6, block);
  return 0;
}

uint64_t sub_299C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!*(DerivedStorage + 17))
  {
    v8 = *(DerivedStorage + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_2BA4;
    block[3] = &unk_1CFD8;
    block[4] = &v11;
    block[5] = a1;
    block[6] = a3;
    block[7] = DerivedStorage;
    block[8] = a2;
    dispatch_sync(v8, block);
    v7 = v12[3];
  }

  if (a3 > v7)
  {
    bzero((a2 + v7), a3 - v7);
  }

  _Block_object_dispose(&v11, 8);
  return 0;
}

uint64_t sub_2A84(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = *(result + 64);
  v4 = 40;
  if (v3 < *(result + 48))
  {
    v4 = 56;
  }

  v5 = *(result + v4) - v3;
  v6 = *(a1 + 40);
  if (v5 >= 0x4000)
  {
    v7 = v6[8];
  }

  else
  {
    v6[8] = 0;
    v5 = v6[7];
    v7 = 0;
    if (v5 < 0x4000)
    {
      v5 = 0x8000;
      v6[7] = 0x8000;
    }
  }

  **(a1 + 48) = v6[4] + v7;
  **(a1 + 56) = v5;
  return result;
}

void *sub_2B1C(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64) + result[5];
  *(v2 + 64) = v4;
  if (v4 > v3)
  {
    *(v2 + 48) = v4;
  }

  if (v4 == *(v2 + 40))
  {
    *(v2 + 64) = 0;
  }

  if (*(v2 + 17))
  {
    result = CMBaseObjectGetDerivedStorage();
    v5 = result[6];
    v6 = v5 - result[7];
    if (result[8] >= v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = result[8];
    }

    v8 = v6 + v7;
    v9 = v1[4];
    if (v8 >= *(v9 + 12))
    {
      *(v9 + 17) = 0;
    }
  }

  return result;
}

void *sub_2BA4(void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result[6];
  v4 = v3 - result[7];
  if (result[8] >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result[8];
  }

  v6 = v4 + v5;
  if (a1[6] < v6)
  {
    v6 = a1[6];
  }

  *(*(a1[4] + 8) + 24) = v6;
  v7 = *(*(a1[4] + 8) + 24);
  if (v7)
  {
    v8 = a1[7];
    v10 = v8[6];
    v9 = v8[7];
    v11 = 1;
    do
    {
      v12 = v10 - v9;
      if (v12 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v12;
      }

      result = memcpy((a1[8] + *(*(a1[4] + 8) + 24) - v7), (v8[4] + v9), v13);
      v8 = a1[7];
      v9 = v8[7] + v13;
      v8[7] = v9;
      v10 = v8[6];
      if (v9 == v10)
      {
        v10 = v8[8];
        if (v9 <= v10)
        {
          v8[6] = 0;
          v8[7] = 0;
          v8[8] = 0;
          return result;
        }

        v9 = 0;
        v8[6] = v10;
        v8[7] = 0;
      }

      v7 -= v13;
      v14 = (v7 != 0) & v11;
      v11 = 0;
    }

    while ((v14 & 1) != 0);
  }

  return result;
}

uint64_t sub_2CA8(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 17) = 1;
  *(v1 + 12) = 28800;
  return result;
}

uint64_t sub_2CC8(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, const void *a6, void *a7)
{
  if (a6)
  {
    FigHALAudioStreamGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      return v12;
    }

    v12 = FigHALAudioObjectMapperAddMapping();
    if (v12)
    {
      return v12;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0;
      *(DerivedStorage + 16) = a3;
      *(DerivedStorage + 8) = a5;
      if (a4)
      {
        v14 = CFRetain(a4);
      }

      else
      {
        v14 = 0;
      }

      *(DerivedStorage + 24) = v14;
      *(DerivedStorage + 48) = CFRetain(a6);
      v15 = CMBaseObjectGetDerivedStorage();
      v16 = *(*(v15 + 48) + 88);
      if (v16 && CFDataGetLength(v16) >= 0x38)
      {
        BytePtr = CFDataGetBytePtr(*(*(v15 + 48) + 88));
        v23 = *(BytePtr + 8);
        v24 = *(BytePtr + 24);
        v18 = *(BytePtr + 5);
        v19 = *(CMBaseObjectGetDerivedStorage() + 48);
        *(v19 + 16) = v18;
        *(v19 + 40) = v24;
        *(v19 + 24) = v23;
      }

      else
      {
        fig_log_get_emitter();
        v22 = FigSignalErrorAtGM();
        if (v22)
        {
          return v22;
        }
      }

      v20 = 0;
      *a7 = 0;
    }
  }

  else
  {
    sub_EFF0();
    return 0;
  }

  return v20;
}

void sub_2E98()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[6];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[6] = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }
}

uint64_t sub_2F5C(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_3080(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 48) + 88)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 48) + 88)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_31D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 <= 1935894637)
  {
    if (v12 <= 1885762591)
    {
      if (v12 != 1650682995)
      {
        if (v12 != 1668047219)
        {
          if (v12 != 1819569763)
          {
            return result;
          }

          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
            *a7 = 0;
            return result;
          }

          return 561211770;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = 1634956402;
          goto LABEL_35;
        }

        return 561211770;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v14 = 1634689642;
      goto LABEL_35;
    }

    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v14 = *(DerivedStorage + 40);
        goto LABEL_35;
      }

      goto LABEL_23;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v17 = *(DerivedStorage + 48);
      v18 = *(v17 + 16);
      v19 = *(v17 + 32);
      a7[4] = *(v17 + 48);
      *a7 = v18;
      *(a7 + 1) = v19;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1936092531)
  {
    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = *(DerivedStorage + 16);
          goto LABEL_35;
        }

        return 561211770;
      }

      if (v12 != 1952805485)
      {
        return result;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v14 = 1936747378;
LABEL_35:
      *a7 = v14;
      return result;
    }

    goto LABEL_25;
  }

  if (v12 == 1935894638 || v12 == 1935960434)
  {
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    result = 0;
    v14 = 1;
    goto LABEL_35;
  }

  if (v12 == 1936092513)
  {
LABEL_23:
    v15 = 56 * (CFDataGetLength(*(*(DerivedStorage + 48) + 88)) / 0x38uLL);
    *a6 = v15;
    if (v15 <= a5)
    {
      BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 48) + 88));
      memcpy(a7, BytePtr, v15);
      return 0;
    }

    return 561211770;
  }

  return result;
}

uint64_t sub_3478(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *a2;
  if (*a2 != 1885762592 && v10 != 1936092532)
  {
    if (v10 != 1935762292)
    {
      v12 = 2003332927;
      goto LABEL_16;
    }

    if (a5 == 4)
    {
      v13 = *a6 != 0;
      if (*(DerivedStorage + 40) != v13)
      {
        *(DerivedStorage + 40) = v13;
        FigHALAudioPropertySendOneChange();
      }

      v12 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v12 = 561211770;
    goto LABEL_16;
  }

  if (a5 != 40)
  {
    goto LABEL_14;
  }

  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 4);
  v12 = FigHALAudioConfigChangeCreateRecord();
  if (!v12)
  {
    *&dword_10 = v15;
    *&stru_20.cmd = v16;
    *&stru_20.segname[8] = v17;
    FigHALAudioConfigChangeSendRequest();
  }

LABEL_16:
  FigHALAudioConfigChangeDisposeRecord();
  return v12;
}

uint64_t sub_35C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 == 1768321645)
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 48);
    v7 = *(a3 + 16);
    v6 = *(a3 + 32);
    *(v5 + 48) = *(a3 + 48);
    *(v5 + 16) = v7;
    *(v5 + 32) = v6;
    FigHALAudioPropertySendChanges();
    v8 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
  }

  FigHALAudioConfigChangeDisposeRecord();
  return v8;
}

uint64_t sub_369C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v3)
  {
    return 4294954514;
  }

  v4 = kFigEndpointStreamProperty_AudioSink;

  return v3(CMBaseObject, v4, 0);
}

uint64_t sub_3764(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 48);
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);
    *(a2 + 32) = *(v4 + 48);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return 0;
}

uint64_t sub_37A4(uint64_t a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  FigVirtualDisplaySinkGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      CFDictionaryGetValue(a2, kFigVirtualDisplaySinkProperty_IsValeria);
      *(DerivedStorage + 320) = FigCFEqual();
      CFDictionaryGetValue(a2, kFigVirtualDisplaySinkProperty_ShouldUseStevenoteJPEG);
      *(DerivedStorage + 336) = FigCFEqual();
    }

    *(DerivedStorage + 160) = xmmword_16720;
    sub_39E4();
    v9 = *(DerivedStorage + 40);
    v10.i64[0] = v9;
    v10.i64[1] = SHIDWORD(v9);
    *(DerivedStorage + 176) = vcvtq_f64_s64(v10);
    *(DerivedStorage + 200) = 0;
    *(DerivedStorage + 192) = FVDUtilsCreateDisplayUUID();
    *(DerivedStorage + 296) = -1;
    LOBYTE(keyExistsAndHasValidFormat.value) = 0;
    v11 = CMBaseObjectGetDerivedStorage();
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"octavia_max_pending_frames", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (LOBYTE(keyExistsAndHasValidFormat.value))
    {
      *(v11 + 296) = AppIntegerValue;
    }

    CMTimeMake(&keyExistsAndHasValidFormat, 2, 30);
    *(DerivedStorage + 340) = keyExistsAndHasValidFormat;
    v13 = CMBaseObjectGetDerivedStorage();
    valuePtr = 0.0;
    v14 = CFPreferencesCopyAppValue(@"octavia_max_queue_duration", @"com.apple.coremedia");
    if (v14)
    {
      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v15, kCFNumberFloat32Type, &valuePtr);
        v17 = v13 + 340;
        if (valuePtr <= 0.0)
        {
          *v17 = *&kCMTimeInvalid.value;
          epoch = kCMTimeInvalid.epoch;
        }

        else
        {
          CMTimeMakeWithSeconds(&keyExistsAndHasValidFormat, valuePtr, 1000000);
          *v17 = *&keyExistsAndHasValidFormat.value;
          epoch = keyExistsAndHasValidFormat.epoch;
        }

        *(v17 + 16) = epoch;
      }

      CFRelease(v15);
    }

    if (a3)
    {
      v19 = CFRetain(a3);
    }

    else
    {
      v19 = 0;
    }

    *(DerivedStorage + 392) = v19;
    *a4 = 0;
  }

  return v7;
}

void sub_39E4()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 160);
  v2 = *(DerivedStorage + 168);
  if (!sub_EF8() && !*(DerivedStorage + 320))
  {
    v24 = (DerivedStorage + 40);
    v25 = v1;
    v26 = v2;
    v27 = *(DerivedStorage + 160) / *(DerivedStorage + 168);
    if (v27 >= 1.5)
    {
      v28 = &unk_16788;
    }

    else
    {
      v28 = &unk_167F8;
    }

    v29 = &v28[16 * (FVDUtilsH264EncoderSupports1080p60() == 0)];
    if (*v29 <= v25 && *(v29 + 1) <= v26)
    {
      *v24 = *v29;
    }

    else
    {
      *(DerivedStorage + 40) = v25;
      *(DerivedStorage + 44) = v26;
      *(DerivedStorage + 48) = 100;
    }

    v34 = 3;
    if (v27 >= 1.5)
    {
      v34 = 5;
    }

    v35 = v28 + 32;
    v23 = 1;
    do
    {
      if (*v35 <= v25)
      {
        v36 = *(v35 + 1);
        if (v36 <= v26 && (*v35 != *v24 || v36 != *(DerivedStorage + 44)))
        {
          v24[v23++] = *v35;
        }
      }

      v35 += 16;
      --v34;
    }

    while (v34);
    goto LABEL_34;
  }

  width = CGSizeZero.width;
  height = CGSizeZero.height;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFPreferencesCopyValue(@"octavia_mirroring_resolution", @"com.apple.coremedia", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v6) >= 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFStringGetTypeID())
        {
          width = CFStringGetIntValue(v9);
        }
      }

      v11 = CFArrayGetValueAtIndex(v6, 1);
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFStringGetTypeID())
        {
          height = CFStringGetIntValue(v12);
        }
      }
    }

    CFRelease(v6);
  }

  v14 = width;
  v15 = height;
  if (width)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = *(DerivedStorage + 168);
    v18 = sub_EF8();
    v19 = *(DerivedStorage + 336);
    if (CelestialIsAppleTV())
    {
      if (!IOMobileFramebufferGetSecondaryDisplay())
      {
LABEL_22:
        v42 = CGSizeZero;
        if (IOMobileFramebufferGetDisplaySize())
        {
          goto LABEL_23;
        }

        if (v42.height >= v42.width)
        {
          v30 = v42.width;
        }

        else
        {
          v30 = v42.height;
        }

        if (v42.height <= v42.width)
        {
          v31 = v42.width;
        }

        else
        {
          v31 = v42.height;
        }

        if (!v19 && v17 >= 2160.0 && v18 && FVDUtilsHEVCEncoderSupports4K60())
        {
          v20 = 1;
          v15 = 2160;
          v14 = 3840;
          goto LABEL_24;
        }

        v32 = fabs(v31 / v30 + -1.33333333);
        if (v32 >= 0.1 || v30 <= 1200.0)
        {
          v38 = v42.height;
          v37 = v42.width;
          if (!v18)
          {
            goto LABEL_80;
          }

          if (v32 < 0.1)
          {
            goto LABEL_80;
          }

          v39 = 720.0;
          if (v30 <= 720.0)
          {
            goto LABEL_80;
          }

          v40 = 1080.0;
          if (v30 <= 1080.0)
          {
            v40 = v30;
          }

          if (!v19)
          {
            v39 = v40;
          }

          v37 = v39 * v42.width / v30;
          v41 = v39 * v42.height;
        }

        else
        {
          if (v18 && v19)
          {
            v33 = 900.0;
          }

          else
          {
            v33 = dbl_16730[FVDUtilsH264EncoderSupports1080p60() == 0];
          }

          v37 = v33 * v42.width / v30;
          v41 = v33 * v42.height;
        }

        v38 = v41 / v30;
LABEL_80:
        v14 = (v37 + 0.5) & 0xFFFFFFFE;
        v15 = (v38 + 0.5) & 0xFFFFFFFE;
        v20 = 1;
LABEL_24:
        if (!v20)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    else if (!IOMobileFramebufferGetMainDisplay())
    {
      goto LABEL_22;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

LABEL_25:
  if (v14 <= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v14;
  }

  if (*(DerivedStorage + 320))
  {
    v22 = v21;
  }

  else
  {
    v22 = v14;
  }

  if (!*(DerivedStorage + 320))
  {
    v21 = v15;
  }

  *(DerivedStorage + 40) = v22;
  *(DerivedStorage + 44) = v21;
  *(DerivedStorage + 48) = 0x100000064;
  v23 = 1;
LABEL_34:
  *(DerivedStorage + 152) = v23;
}

uint64_t sub_3DD8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 8))
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject();
      if (FigBaseObject)
      {
        v3 = FigBaseObject;
        v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v4)
        {
          v4(v3);
        }
      }
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      CMBufferQueueReset(v5);
    }
  }

  return 0;
}

void sub_3E8C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sub_3DD8();
  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[26];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[26] = 0;
  }

  v4 = DerivedStorage[47];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[47] = 0;
  }

  v5 = DerivedStorage[48];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[48] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    _Block_release(v7);
    DerivedStorage[4] = 0;
  }

  v8 = DerivedStorage[24];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[24] = 0;
  }

  v9 = DerivedStorage[38];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[38] = 0;
  }

  v10 = DerivedStorage[41];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[41] = 0;
  }

  v11 = DerivedStorage[49];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[49] = 0;
  }
}

__CFString *sub_3F6C(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = &unk_16B76;
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVirtualDisplaySink %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @"renderPipeline %@", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t sub_4040(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (LOBYTE(DerivedStorage->width))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v8 = DerivedStorage;
  if (CFEqual(kFigVirtualDisplaySinkProperty_DeviceInfo, a2))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFDictionaryGetTypeID())
      {
        v27 = CGSizeZero;
        Value = CFDictionaryGetValue(a3, kFigVirtualDisplaySinkDeviceInfoKey_Overscanned);
        if (Value)
        {
          v11 = Value;
          v12 = CFGetTypeID(Value);
          if (v12 == CFBooleanGetTypeID())
          {
            LOBYTE(v8[12].height) = CFBooleanGetValue(v11);
          }
        }

        v13 = CFDictionaryGetValue(a3, kFigVirtualDisplaySinkDeviceInfoKey_DisplaySizeInPixels);
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFDictionaryGetTypeID())
          {
            CGSizeMakeWithDictionaryRepresentation(v14, &v27);
          }
        }

        if (v27.width > 0.0 && v27.height > 0.0)
        {
          v8[10] = v27;
          sub_39E4();
          height = v8[2].height;
          v17.i64[0] = SLODWORD(height);
          v17.i64[1] = SHIDWORD(height);
          v8[11] = vcvtq_f64_s64(v17);
        }
      }
    }

    return 0;
  }

  if (CFEqual(kFigVirtualDisplaySinkProperty_VirtualDisplayModeSize, a2))
  {
    if (a3)
    {
      v18 = CFGetTypeID(a3);
      if (v18 == CFDictionaryGetTypeID())
      {
        CGSizeMakeWithDictionaryRepresentation(a3, v8 + 11);
      }
    }

    return 0;
  }

  if (CFEqual(kFigVirtualDisplaySinkProperty_FPSInfo, a2))
  {
    if (a3)
    {
      v19 = CFGetTypeID(a3);
      if (v19 == CFArrayGetTypeID())
      {
        sub_4444(a1, a3);
      }
    }

    return 0;
  }

  if (CFEqual(kFigVirtualDisplaySinkProperty_FPS, a2))
  {
    if (a3)
    {
      v20 = CFGetTypeID(a3);
      if (v20 == CFArrayGetTypeID())
      {
        sub_456C(a1, a3);
      }
    }

    return 0;
  }

  if (CFEqual(kFigVirtualDisplaySinkProperty_Bitrate, a2))
  {
    if (a3)
    {
      v21 = CFGetTypeID(a3);
      if (v21 == CFNumberGetTypeID())
      {
        sub_4644(a1, a3);
      }
    }

    return 0;
  }

  if (CFEqual(kFigVirtualDisplaySinkProperty_Timestamps, a2))
  {
    if (a3)
    {
      v22 = CFGetTypeID(a3);
      if (v22 == CFArrayGetTypeID())
      {
        width = v8[24].width;
        *&v8[24].width = a3;
LABEL_37:
        CFRetain(a3);
        if (width != 0.0)
        {
          CFRelease(*&width);
        }

        return 0;
      }
    }

    return 0;
  }

  if (!CFEqual(kFigVirtualDisplaySinkProperty_TimestampInfo, a2))
  {
    if (CFEqual(kFigVirtualDisplaySinkProperty_UseEncryption, a2) || CFEqual(kFigVirtualDisplaySinkProperty_SubmitSurfaceTimestamp, a2) || CFEqual(kFigVirtualDisplaySinkProperty_ExtraInfo, a2))
    {
      return 0;
    }

    if (!CFEqual(kFigVirtualDisplaySinkProperty_NetworkInfo, a2))
    {
      return 4294954512;
    }

    if (!a3)
    {
      return 0;
    }

    v26 = CFGetTypeID(a3);
    if (v26 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    width = v8[20].height;
    *&v8[20].height = a3;
    goto LABEL_37;
  }

  if (!a3)
  {
    return 0;
  }

  v24 = CFGetTypeID(a3);
  if (v24 != CFArrayGetTypeID())
  {
    return 0;
  }

  v25 = v8[23].height;
  *&v8[23].height = a3;
  CFRetain(a3);
  if (v25 != 0.0)
  {
    CFRelease(*&v25);
  }

  result = 0;
  LOBYTE(v8[23].width) = 1;
  return result;
}

void sub_4444(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 304);
  if (v4)
  {
    sub_235C(v4);
    *(DerivedStorage + 312) = -1;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = kFigVirtualDisplaySinkFPSInfoKey_Name;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v10, v8);
            if (Value)
            {
              v13 = Value;
              v14 = CFGetTypeID(Value);
              if (v14 == CFStringGetTypeID())
              {
                sub_2390(*(DerivedStorage + 304), v13, 0);
              }
            }
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }

    *(DerivedStorage + 312) = sub_2390(*(DerivedStorage + 304), @"A-Mbp", 0);
    v15 = *(DerivedStorage + 304);

    sub_2574(v15);
  }
}

void sub_456C(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    v4 = DerivedStorage;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFNumberGetTypeID())
          {
            v11 = CFStringCreateWithFormat(0, 0, @"%@", v9);
            sub_246C(*(v4 + 304), i, v11);
            if (v11)
            {
              CFRelease(v11);
            }
          }
        }
      }
    }
  }
}

void sub_4644(uint64_t a1, const __CFNumber *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    v4 = DerivedStorage;
    valuePtr = 0.0;
    if (CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr))
    {
      v5 = CFStringCreateWithFormat(0, 0, @"%.2f", valuePtr * 0.000000953674316);
      sub_246C(*(v4 + 304), *(v4 + 312), v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    sub_2518(*(v4 + 304));
  }
}

uint64_t sub_46E0(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v5 = DerivedStorage;
    v6 = _Block_copy(a3);
    v7 = *(v5 + 24);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_5944;
    v9[3] = &unk_1D218;
    v9[4] = v6;
    v10 = 0;
    dispatch_async(v7, v9);
  }

  return 0;
}

uint64_t sub_477C(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = _Block_copy(a2);
    v6 = *(v4 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_598C;
    block[3] = &unk_1D240;
    block[4] = v5;
    dispatch_async(v6, block);
  }

  return 0;
}

uint64_t sub_4814(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  valuePtr = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v121.origin.x = a4;
  v121.origin.y = a5;
  v121.size.width = a6;
  v121.size.height = a7;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v121);
  v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v24 = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 176));
  v26 = *(DerivedStorage + 176);
  v25 = *(DerivedStorage + 184);
  if (a11 > v25 || a10 > v26)
  {
    v28 = v25 / a11;
    if (v25 / a11 >= v26 / a10)
    {
      v28 = v26 / a10;
    }

    a11 = a11 * v28;
    a10 = a10 * v28;
    a8 = (v26 - a10) * 0.5;
    a9 = (v25 - a11) * 0.5;
  }

  if (*(DerivedStorage + 320))
  {
    v29 = a4;
  }

  else
  {
    v29 = a8;
  }

  if (*(DerivedStorage + 320))
  {
    v30 = a5;
  }

  else
  {
    v30 = a9;
  }

  if (*(DerivedStorage + 320))
  {
    v31 = a6;
  }

  else
  {
    v31 = a10;
  }

  if (*(DerivedStorage + 320))
  {
    v32 = a7;
  }

  else
  {
    v32 = a11;
  }

  v33 = CGRectCreateDictionaryRepresentation(*&v29);
  v34 = v33;
  if (*(DerivedStorage + 8))
  {
    cf = 0;
    goto LABEL_22;
  }

  v88 = DictionaryRepresentation;
  v91 = v33;
  v87 = a1;
  v62 = v24;
  memset(&v97, 0, sizeof(v97));
  CMTimeMake(&v97, 3, 30);
  memset(&v96, 0, sizeof(v96));
  CMTimeMake(&v96, 5, 30);
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  v120.value = v97.value;
  flags = v97.flags;
  v120.timescale = v97.timescale;
  epoch = v97.epoch;
  sourceClock = v96.value;
  v66 = v96.flags;
  timescale = v96.timescale;
  cfa = v96.epoch;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  memset(time, 0, sizeof(time));
  if (FormatDescription)
  {
    *v111 = kFigRenderPipelineOption_FormatDescription;
    *time = CFRetain(FormatDescription);
    v67 = 1;
  }

  else
  {
    v67 = 0;
  }

  if ((flags & 0x1D) == 1)
  {
    *(v111 | (8 * v67)) = kFigRenderPipelineOption_PreparedQueueLowWaterLevel;
    v98.value = v120.value;
    v98.timescale = v120.timescale;
    v98.flags = flags;
    v98.epoch = epoch;
    *(time & 0xFFFFFFFFFFFFFFF7 | (8 * (v67++ & 1))) = CMTimeCopyAsDictionary(&v98, kCFAllocatorDefault);
  }

  v24 = v62;
  a1 = v87;
  DictionaryRepresentation = v88;
  if ((v66 & 0x1D) == 1)
  {
    *&v111[8 * v67] = kFigRenderPipelineOption_PreparedQueueHighWaterLevel;
    v98.value = sourceClock;
    v98.timescale = timescale;
    v98.flags = v66;
    v98.epoch = cfa;
    *&time[8 * v67] = CMTimeCopyAsDictionary(&v98, kCFAllocatorDefault);
    v68 = v67 + 1;
    cf = CFDictionaryCreate(kCFAllocatorDefault, v111, time, v68, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_62;
  }

  v68 = v67;
  v69 = kCFAllocatorDefault;
  cf = CFDictionaryCreate(kCFAllocatorDefault, v111, time, v67, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v67)
  {
LABEL_62:
    v70 = time;
    do
    {
      if (*v70)
      {
        CFRelease(*v70);
      }

      ++v70;
      --v68;
    }

    while (v68);
    v69 = kCFAllocatorDefault;
  }

  v71 = FigOctaviaVideoRenderPipelineCreate();
  if (v71)
  {
    v60 = v71;
    v34 = v91;
    goto LABEL_75;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject();
  v73 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  v34 = v91;
  if (v73)
  {
    v73(FigBaseObject, kFigRenderPipelineProperty_VideoEnqueueResetsSystemSleepTimer, kCFBooleanTrue);
  }

  v74 = FigRenderPipelineGetFigBaseObject();
  v75 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v75)
  {
    v60 = 4294954514;
    goto LABEL_75;
  }

  v76 = v75(v74, kFigRenderPipelineProperty_SourceSampleBufferQueue, v69, DerivedStorage + 16);
  if (v76)
  {
    v60 = v76;
    goto LABEL_75;
  }

  v78 = FigRenderPipelineGetFigBaseObject();
  v79 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v79)
  {
    v79(v78, kFigRenderPipelineProperty_ObeyEmptyMediaMarkers, kCFBooleanTrue);
  }

  v80 = FigRenderPipelineGetFigBaseObject();
  v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v81)
  {
    v81(v80, kFigRenderPipelineProperty_RenderEmptyMedia, kCFBooleanFalse);
  }

  LODWORD(v98.value) = 0;
  LOBYTE(v120.value) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  value = v98.value;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v120.value))
  {
    v84 = value;
  }

  else
  {
    v84 = value & 0xFFFFFFFE;
  }

  if (v84)
  {
    *time = 136315138;
    *&time[4] = "octaviaSink_PushFrame";
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v34 = v91;
LABEL_22:
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a2, 0);
  if (SampleAttachmentsArray)
  {
    v36 = SampleAttachmentsArray;
    Count = CFArrayGetCount(SampleAttachmentsArray);
    if (Count >= 1)
    {
      v38 = Count;
      v89 = v34;
      v85 = v24;
      v86 = a1;
      v39 = 0;
      Mutable = 0;
      v41 = kVTSampleAttachmentKey_RequireAcknowledgementToken;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v36, v39);
        v43 = CFDictionaryGetValue(ValueAtIndex, v41);
        if (v43)
        {
          v44 = v43;
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            if (!Mutable)
            {
              v60 = 4294954510;
              v24 = v85;
              a1 = v86;
              v34 = v89;
              goto LABEL_75;
            }
          }

          CFArrayAppendValue(Mutable, v44);
        }

        ++v39;
      }

      while (v38 != v39);
      v24 = v85;
      a1 = v86;
      v34 = v89;
      if (!Mutable)
      {
        goto LABEL_33;
      }

      v45 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v45)
      {
        v46 = v45;
        CFDictionaryAddValue(v45, kFigVirtualDisplaySinkFramesAcknowledgedKey_Tokens, Mutable);
        sub_60D0(v86, kFigVirtualDisplaySinkEvent_FramesAcknowledged, v46);
        CFRelease(Mutable);
        CFRelease(v46);
        goto LABEL_33;
      }

      CFRelease(Mutable);
      v60 = 4294954510;
LABEL_75:
      v61 = cf;
      sub_60D0(a1, kFigVirtualDisplaySinkEvent_ForceKeyFrame, 0);
      if (!DictionaryRepresentation)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

LABEL_33:
  CMSetAttachment(a2, kFigSampleBufferAttachmentKey_SourceRect, DictionaryRepresentation, 1u);
  CMSetAttachment(a2, kFigSampleBufferAttachmentKey_DestRect, v34, 1u);
  CMSetAttachment(a2, kFigSampleBufferAttachmentKey_VirtualDisplaySizeForDestRect, v24, 1u);
  CMSetAttachment(a2, kFigSampleBufferAttachmentKey_SymmetricTransform, v23, 1u);
  if (*(DerivedStorage + 384))
  {
    v47 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v48 = v47;
    if (*(DerivedStorage + 368))
    {
      v49 = *(DerivedStorage + 376);
      if (v49)
      {
        CFDictionarySetValue(v47, kFigVirtualDisplaySinkProperty_TimestampInfo, v49);
        *(DerivedStorage + 368) = 0;
      }
    }

    CFDictionarySetValue(v48, kFigVirtualDisplaySinkProperty_Timestamps, *(DerivedStorage + 384));
    CMSetAttachment(a2, kCMSampleBufferAttachmentKey_ClientTimingInfo, v48, 1u);
    if (v48)
    {
      CFRelease(v48);
    }
  }

  if (!*(DerivedStorage + 208))
  {
    v50 = v34;
    v51 = *(DerivedStorage + 8);
    CMBaseObjectGetDerivedStorage();
    timebaseOut = 0;
    sourceClock = 0;
    v90 = *&kCMTimeInvalid.value;
    *&v98.value = *&kCMTimeInvalid.value;
    v52 = kCMTimeInvalid.epoch;
    v98.epoch = v52;
    v97 = kCMTimeZero;
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&v97, CFPreferenceNumberWithDefault, 60);
    *time = v97;
    CMTimeConvertScale(v111, time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v97 = *v111;
    v54 = FigRenderPipelineGetFigBaseObject();
    v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v55 && !v55(v54, kFigRenderPipelineProperty_PreferredClock, kCFAllocatorDefault, &sourceClock))
    {
      v56 = CMTimebaseCreateWithSourceClock(kCFAllocatorDefault, sourceClock, &timebaseOut);
      v57 = timebaseOut;
      if (!v56)
      {
        allocator = FigRenderPipelineGetFigBaseObject();
        v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v58)
        {
          v58(allocator, kFigRenderPipelineProperty_Timebase, v57);
        }

        CMClockGetTime(&v98, sourceClock);
        v96 = v98;
        v120 = v98;
        v59 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v59)
        {
          *v111 = v96;
          *time = v120;
          v59(v51, v111, time, 1.0, 1.0);
        }

        v57 = timebaseOut;
        *(DerivedStorage + 208) = sourceClock;
        *(DerivedStorage + 216) = v97;
      }

      if (v57)
      {
        CFRelease(v57);
      }
    }

    *(DerivedStorage + 240) = v90;
    *(DerivedStorage + 256) = v52;
    *(DerivedStorage + 264) = v90;
    *(DerivedStorage + 280) = v52;
    *(DerivedStorage + 288) = 0;
    v34 = v50;
  }

  v60 = sub_59D0(a1, a2);
  if (v60)
  {
    goto LABEL_75;
  }

  v61 = cf;
  if (DictionaryRepresentation)
  {
LABEL_76:
    CFRelease(DictionaryRepresentation);
  }

LABEL_77:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  return v60;
}

uint64_t sub_5420()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[1])
  {
    FigBaseObject = FigRenderPipelineGetFigBaseObject();
    if (FigBaseObject)
    {
      v2 = FigBaseObject;
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }
    }
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CMBufferQueueReset(v4);
  }

  v5 = DerivedStorage[1];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[1] = 0;
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[2] = 0;
  }

  v7 = DerivedStorage[26];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[26] = 0;
  }

  return 0;
}

uint64_t sub_54FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(CMBaseObject, a2, kCFAllocatorDefault, &v14);
    v8 = v14;
  }

  else
  {
    v9 = 4294954514;
  }

  v10 = *(DerivedStorage + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_6384;
  v12[3] = &unk_1D290;
  v13 = v9;
  v12[4] = a4;
  v12[5] = v8;
  dispatch_async(v10, v12);
  return v9;
}

uint64_t sub_562C(uint64_t a1, const __CFString *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFStringCompare(kFigVirtualDisplaySinkAction_ClearScreen, a2, 1uLL) == kCFCompareEqualTo && DerivedStorage[1] && DerivedStorage[2] && (HostTimeClock = CMClockGetHostTimeClock(), CMClockGetTime(&v16, HostTimeClock), v18 = 0, (v16.flags & 0x1D) == 1))
  {
    *&sampleTimingArray.duration.value = *&kCMTimeZero.value;
    sampleTimingArray.duration.epoch = kCMTimeZero.epoch;
    sampleTimingArray.presentationTimeStamp = v16;
    sampleTimingArray.decodeTimeStamp = kCMTimeInvalid;
    v8 = CMSampleBufferCreate(kCFAllocatorDefault, 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v18);
    if (!v8)
    {
      CMSetAttachment(v18, kCMSampleBufferAttachmentKey_EmptyMedia, kCFBooleanTrue, 1u);
      CMSetAttachment(v18, kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately, kCFBooleanTrue, 1u);
    }

    v13 = v18;
    if (v18)
    {
      sub_59D0(a1, v18);
      CFRelease(v13);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v9 = _Block_copy(a4);
    v10 = DerivedStorage[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_63E4;
    block[3] = &unk_1D2B8;
    block[4] = v9;
    v15 = v8;
    dispatch_async(v10, block);
  }

  return v8;
}

uint64_t sub_581C(uint64_t a1, NSObject *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    a2 = &_dispatch_main_q;
  }

  dispatch_retain(a2);
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(DerivedStorage + 24) = a2;
  return 0;
}

uint64_t sub_5870(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = _Block_copy(a2);
  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    _Block_release(v5);
  }

  *(DerivedStorage + 32) = v4;
  return 0;
}

opaqueCMBufferQueue *sub_58B8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 352) & 1) == 0)
  {
    return 0;
  }

  v2 = DerivedStorage;
  result = *(DerivedStorage + 16);
  if (result)
  {
    v3 = (v2 + 340);
    memset(&v6, 0, sizeof(v6));
    CMBufferQueueGetDuration(&v6, result);
    time1 = v6;
    v4 = *v3;
    return (CMTimeCompare(&time1, &v4) >= 0);
  }

  return result;
}

void sub_5944(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void sub_598C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t sub_59D0(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  if (*(DerivedStorage + 208))
  {
    v5 = DerivedStorage;
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    memset(&v42, 0, sizeof(v42));
    CMSampleBufferGetOutputPresentationTimeStamp(&v42, a2);
    v36 = *&kCMTimeInvalid.value;
    *&v41.value = *&kCMTimeInvalid.value;
    epoch = kCMTimeInvalid.epoch;
    v41.epoch = epoch;
    memset(&v40, 0, sizeof(v40));
    HostTimeClock = CMClockGetHostTimeClock();
    v8 = *(v5 + 208);
    time = v42;
    CMSyncConvertTime(&v40, &time, HostTimeClock, v8);
    v39 = v40;
    v38 = kCMTimeZero;
    v37 = v38;
    if (*(v5 + 252))
    {
      time = v42;
      rhs = *(v5 + 240);
      CMTimeSubtract(&v41, &time, &rhs);
      time = v41;
      *&rhs.value = xmmword_16848;
      rhs.epoch = 0;
      if (CMTimeCompare(&time, &rhs) < 0)
      {
        time = *(v5 + 264);
        rhs = v41;
        CMTimeAdd(&v39, &time, &rhs);
        time = v39;
        rhs = v40;
        CMTimeSubtract(&v38, &time, &rhs);
        time = v38;
        *&rhs.value = xmmword_16860;
        rhs.epoch = 0;
        if (CMTimeCompare(&time, &rhs) < 1)
        {
          time = v38;
          *&rhs.value = xmmword_16878;
          rhs.epoch = 0;
          if (CMTimeCompare(&time, &rhs) < 0)
          {
            rhs = v39;
            *&hostTime.value = xmmword_16860;
            hostTime.epoch = 0;
            CMTimeAdd(&time, &rhs, &hostTime);
            v39 = time;
          }
        }

        else
        {
          time = v41;
          *&rhs.value = xmmword_16860;
          rhs.epoch = 0;
          if (CMTimeCompare(&time, &rhs) < 1)
          {
            sub_F4AC(v5, a1);
          }

          else
          {
            rhs = v39;
            *&hostTime.value = xmmword_16860;
            hostTime.epoch = 0;
            CMTimeSubtract(&time, &rhs, &hostTime);
            v39 = time;
            *(v5 + 288) = 0;
          }
        }
      }
    }

    v12 = v5 + 264;
    time = v39;
    rhs = *(v5 + 264);
    CMTimeSubtract(&v37, &time, &rhs);
    if (*(v5 + 320))
    {
      time = v37;
      *&rhs.value = xmmword_16890;
      rhs.epoch = 0;
      if (CMTimeCompare(&time, &rhs) < 0)
      {
        if (*(v5 + 32))
        {
          sub_60D0(a1, kFigVirtualDisplaySinkEvent_DropNextFrame, 0);
        }

        *&rhs.value = *v12;
        rhs.epoch = *(v5 + 280);
        *&hostTime.value = xmmword_16860;
        hostTime.epoch = 0;
        CMTimeAdd(&time, &rhs, &hostTime);
        v39 = time;
      }
    }

    v33 = a1;
    if (a2)
    {
      v13 = *(v5 + 208);
      if (v13)
      {
        v14 = kCMSampleBufferAttachmentKey_ClientTimingInfo;
        v15 = CMGetAttachment(a2, kCMSampleBufferAttachmentKey_ClientTimingInfo, 0);
        if (v15)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          if (v17 == CFDictionaryGetTypeID())
          {
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v16);
            v19 = kFigVirtualDisplaySinkProperty_Timestamps;
            Value = CFDictionaryGetValue(v16, kFigVirtualDisplaySinkProperty_Timestamps);
            if (Value && (v21 = Value, v22 = CFGetTypeID(Value), v22 == CFArrayGetTypeID()))
            {
              v34 = epoch;
              target = a2;
              Count = CFArrayGetCount(v21);
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
              if (CFArrayGetCount(v21) >= 1)
              {
                v25 = 0;
                do
                {
                  valuePtr[0] = 0;
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, v25);
                  if (ValueAtIndex)
                  {
                    v27 = ValueAtIndex;
                    v28 = CFGetTypeID(ValueAtIndex);
                    if (v28 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v27, kCFNumberSInt64Type, valuePtr);
                      if (valuePtr[0] >= 1)
                      {
                        memset(&time, 0, sizeof(time));
                        CMClockMakeHostTimeFromSystemUnits(&time, valuePtr[0]);
                        memset(&rhs, 0, sizeof(rhs));
                        v29 = CMClockGetHostTimeClock();
                        hostTime = time;
                        CMSyncConvertTime(&rhs, &hostTime, v29, v13);
                        hostTime = rhs;
                        CMClockConvertHostTimeToSystemUnits(&hostTime);
                        FigHostTimeToNanoseconds();
                      }

                      FigCFArrayAppendInt64();
                    }
                  }

                  ++v25;
                }

                while (v25 < CFArrayGetCount(v21));
              }

              CFDictionarySetValue(MutableCopy, v19, Mutable);
              a2 = target;
              CMSetAttachment(target, v14, MutableCopy, 1u);
              epoch = v34;
            }

            else
            {
              Mutable = 0;
            }

            v12 = v5 + 264;
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }
      }
    }

    *(v5 + 240) = v42;
    v30 = *&v39.value;
    *v12 = *&v39.value;
    v31 = v39.epoch;
    *(v12 + 16) = v39.epoch;
    *&time.value = v30;
    time.epoch = v31;
    rhs = *(v5 + 216);
    CMTimeAdd(&sampleTimingArray.presentationTimeStamp, &time, &rhs);
    CMTimeMake(&time, 1, 60);
    sampleTimingArray.duration = time;
    *&sampleTimingArray.decodeTimeStamp.value = v36;
    sampleTimingArray.decodeTimeStamp.epoch = epoch;
    v32 = CMSampleBufferCreateCopyWithNewTiming(kCFAllocatorDefault, a2, 1, &sampleTimingArray, &sampleBufferOut);
    if (!v32)
    {
      v32 = sub_618C(v33, sampleBufferOut);
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    return v32;
  }

  else
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a2, 1u);
    if (SampleAttachmentsArray)
    {
      v10 = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      if (v10)
      {
        CFDictionarySetValue(v10, kCMSampleAttachmentKey_DisplayImmediately, kCFBooleanTrue);
      }
    }

    return sub_618C(a1, a2);
  }
}

void sub_60D0(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    v7 = _Block_copy(v6);
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(DerivedStorage + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_6318;
    block[3] = &unk_1D268;
    block[4] = v7;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v8, block);
  }
}

uint64_t sub_618C(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = sub_E7EC();
  if (v5)
  {
    CMSetAttachment(a2, kFigVirtualDisplaySinkAttachment_Quaternion, v5, 1u);
  }

  if (*(DerivedStorage + 352))
  {
    memset(&v13, 0, sizeof(v13));
    CMBufferQueueGetDuration(&v13, *(DerivedStorage + 16));
    time1 = v13;
    v11 = *(DerivedStorage + 340);
    if (CMTimeCompare(&time1, &v11) < 0)
    {
      v8 = 1;
LABEL_10:
      *(DerivedStorage + 364) = v8;
      goto LABEL_11;
    }

    if (*(DerivedStorage + 32))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      FigCFDictionarySetInt32();
      sub_60D0(a1, kFigVirtualDisplaySinkEvent_DropNextFrame, Mutable);
      CFRelease(Mutable);
      v7 = *(DerivedStorage + 364);
      if (v7 <= 30)
      {
        v8 = 2 * v7;
      }

      else
      {
        v8 = 60;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  if (*(DerivedStorage + 296) >= 1 && CMBufferQueueGetBufferCount(*(DerivedStorage + 16)) >= *(DerivedStorage + 296))
  {
    v9 = 0;
    if (!v5)
    {
      return v9;
    }

    goto LABEL_14;
  }

  v9 = CMBufferQueueEnqueue(*(DerivedStorage + 16), a2);
  if (v5)
  {
LABEL_14:
    CFRelease(v5);
  }

  return v9;
}

void sub_6318(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_6384(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_63E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 0);
    v3 = *(a1 + 32);

    _Block_release(v3);
  }
}

uint64_t sub_6440(uint64_t a1, NSObject *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a2 != 0) == (a3 != 0))
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 8);
    if (v7 != a2)
    {
      if (v7)
      {
        dispatch_release(v7);
        *(v6 + 8) = 0;
      }

      if (a2)
      {
        *(v6 + 8) = a2;
        dispatch_retain(a2);
      }
    }

    _Block_release(*(v6 + 16));
    v8 = _Block_copy(a3);
    result = 0;
    *(v6 + 16) = v8;
  }

  else
  {
    sub_F748(&v10);
    return v10;
  }

  return result;
}

void sub_64E8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  _Block_release(*(DerivedStorage + 16));
  *(DerivedStorage + 16) = 0;
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *sub_6558(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroAudioSource %p>", a1);
  return Mutable;
}

void sub_65B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&sampleTimingArray.duration.value = *&kCMTimeInvalid.value;
  sampleTimingArray.duration.epoch = kCMTimeInvalid.epoch;
  sampleTimingArray.presentationTimeStamp = sampleTimingArray.duration;
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  cf = 0;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*DerivedStorage);
  v6 = StreamBasicDescription;
  if (StreamBasicDescription->mFormatID == 1819304813)
  {
    v7 = (StreamBasicDescription->mFormatFlags >> 5) & 1;
  }

  else
  {
    v7 = 1;
  }

  CMTimeMake(&sampleTimingArray.presentationTimeStamp, v3, StreamBasicDescription->mSampleRate);
  CMTimeMake(&v11, 1, v6->mSampleRate);
  sampleTimingArray.duration = v11;
  mBytesPerPacket = v6->mBytesPerPacket;
  v11.value = mBytesPerPacket;
  DataLength = CMBlockBufferGetDataLength(v2);
  if (v7)
  {
    sampleSizeArray = 0;
  }

  else
  {
    sampleSizeArray = &v11;
  }

  if (!CMSampleBufferCreate(kCFAllocatorDefault, v2, 1u, 0, 0, *DerivedStorage, DataLength / mBytesPerPacket, 1, &sampleTimingArray, v7 ^ 1u, sampleSizeArray, &cf))
  {
    (*(*(DerivedStorage + 16) + 16))();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void sub_6728()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  NeroTransportUnregisterObject();
  *(DerivedStorage + 24) = 0;
  _Block_release(*(DerivedStorage + 8));
  *(DerivedStorage + 8) = 0;
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sub_678C(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroMessenger %p>", a1);
  return Mutable;
}

uint64_t sub_67E4(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  _Block_release(*(DerivedStorage + 8));
  *(DerivedStorage + 8) = _Block_copy(a2);
  return 0;
}

uint64_t sub_6824(uint64_t a1, void *a2)
{
  cf = 0;
  Shared = FigNeroEndpointManagerGetShared(&cf);
  v4 = cf;
  if (Shared)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (cf)
    {
      v4 = CFRetain(cf);
    }

    *a2 = v4;
  }

  return Shared;
}

uint64_t sub_6880(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  v29 = 0;
  dictionaryRepresentation = 0;
  if (!a6)
  {
    sub_1001C();
    v26 = 0;
    goto LABEL_24;
  }

  FigHALAudioStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    goto LABEL_29;
  }

  v12 = FigHALAudioObjectMapperAddMapping();
  if (v12)
  {
    goto LABEL_29;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = v29;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 8) = a5;
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  *(DerivedStorage + 24) = v14;
  *(DerivedStorage + 72) = CFRetain(a6);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v26 = 4294954514;
    goto LABEL_24;
  }

  v12 = v16(CMBaseObject, kFigEndpointStreamProperty_OutputLatency, kCFAllocatorDefault, &dictionaryRepresentation);
  if (v12)
  {
LABEL_29:
    v26 = v12;
    goto LABEL_24;
  }

  CMTimeMakeFromDictionary(v31, dictionaryRepresentation);
  *(DerivedStorage + 32) = *v31;
  *(DerivedStorage + 48) = *&v31[16];
  v17 = cf;
  v18 = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v19 = *(*(v18 + 72) + 88);
  if (!v19)
  {
    sub_FFC0(&v33);
    goto LABEL_33;
  }

  Length = CFDataGetLength(v19);
  if (Length <= 0x37)
  {
    sub_FF64(&v33);
LABEL_33:
    v26 = v33;
    if (!v33)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v21 = Length / 0x38;
  BytePtr = CFDataGetBytePtr(*(*(v18 + 72) + 88));
  v23 = 0;
  v24 = BytePtr + 28;
  do
  {
    if (*(v24 - 5) == 1819304813)
    {
      v25 = *v24;
      if (*v24 <= 2u)
      {
        if (v25 > *&v31[28] || v25 == *&v31[28] && *(v24 + 1) > v32)
        {
          *v31 = *(v24 - 28);
          *&v31[16] = *(v24 - 12);
          v32 = *(v24 + 4);
          *v31 = *(v24 + 12);
        }

        v23 = 1;
      }
    }

    v24 += 56;
    --v21;
  }

  while (v21);
  if (v23)
  {
    v26 = sub_FCD4(v17, v31);
    if (!v26)
    {
LABEL_22:
      *a7 = cf;
      cf = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 4294950405;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v26;
}

void sub_6B5C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[9];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[9] = 0;
  }

  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }
}

uint64_t sub_6C24(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_6D48(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 72) + 88)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 72) + 88)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_6E98(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 <= 1935894637)
  {
    if (v12 <= 1885762591)
    {
      if (v12 != 1650682995)
      {
        if (v12 != 1668047219)
        {
          if (v12 != 1819569763)
          {
            return result;
          }

          v14 = *(*(DerivedStorage + 72) + 16);
          v22 = *(DerivedStorage + 32);
          CMTimeConvertScale(&v23, &v22, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          value = v23.value;
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
            *a7 = value;
            return result;
          }

          return 561211770;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v16 = 1634956402;
          goto LABEL_37;
        }

        return 561211770;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v16 = 1634689642;
      goto LABEL_37;
    }

    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v16 = *(DerivedStorage + 64);
        goto LABEL_37;
      }

      goto LABEL_23;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v19 = *(DerivedStorage + 72);
      v20 = *(v19 + 16);
      v21 = *(v19 + 32);
      a7[4] = *(v19 + 48);
      *a7 = v20;
      *(a7 + 1) = v21;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1936092531)
  {
    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v16 = *(DerivedStorage + 16);
          goto LABEL_37;
        }

        return 561211770;
      }

      if (v12 != 1952805485)
      {
        return result;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v16 = 1936747378;
LABEL_37:
      *a7 = v16;
      return result;
    }

    goto LABEL_25;
  }

  switch(v12)
  {
    case 1935894638:
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v16 = 1;
      goto LABEL_37;
    case 1935960434:
      *a6 = 4;
      if (a5 >= 4)
      {
        result = 0;
        *a7 = 0;
        return result;
      }

      return 561211770;
    case 1936092513:
LABEL_23:
      v17 = 56 * (CFDataGetLength(*(*(DerivedStorage + 72) + 88)) / 0x38uLL);
      *a6 = v17;
      if (v17 <= a5)
      {
        BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 72) + 88));
        memcpy(a7, BytePtr, v17);
        return 0;
      }

      return 561211770;
  }

  return result;
}

uint64_t sub_7194(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *a2;
  if (*a2 != 1885762592 && v10 != 1936092532)
  {
    if (v10 != 1935762292)
    {
      v12 = 2003332927;
      goto LABEL_16;
    }

    if (a5 == 4)
    {
      v13 = *a6 != 0;
      if (*(DerivedStorage + 64) != v13)
      {
        *(DerivedStorage + 64) = v13;
        FigHALAudioPropertySendOneChange();
      }

      v12 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v12 = 561211770;
    goto LABEL_16;
  }

  if (a5 != 40)
  {
    goto LABEL_14;
  }

  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 4);
  v12 = FigHALAudioConfigChangeCreateRecord();
  if (!v12)
  {
    *&dword_10 = v15;
    *&stru_20.cmd = v16;
    *&stru_20.segname[8] = v17;
    FigHALAudioConfigChangeSendRequest();
  }

LABEL_16:
  FigHALAudioConfigChangeDisposeRecord();
  return v12;
}

uint64_t sub_72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 == 1868984941)
  {
    sub_FCD4(a1, a3 + 16);
    FigHALAudioPropertySendChanges();
    v6 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
  }

  FigHALAudioConfigChangeDisposeRecord();
  return v6;
}

uint64_t sub_73A8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 56);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 56) = 0;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(CMBaseObject, kFigEndpointStreamProperty_AudioSource, 0);
  }

  return 0;
}

uint64_t sub_7458(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 72);
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);
    *(a2 + 32) = *(v4 + 48);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return 0;
}

uint64_t sub_74A8(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, void *a5)
{
  if (a5)
  {
    FigEndpointGetClassID();
    v9 = CMDerivedObjectCreate();
    if (!v9)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = dispatch_queue_create("NeroEndpoint.queue", 0);
      *(DerivedStorage + 24) = v11;
      if (!v11)
      {
        return 4294950575;
      }

      v12 = dispatch_queue_create("NeroEndpoint.notification", 0);
      *(DerivedStorage + 32) = v12;
      if (!v12)
      {
        return 4294950575;
      }

      if (a2)
      {
        v13 = CFRetain(a2);
      }

      else
      {
        v13 = 0;
      }

      *(DerivedStorage + 16) = v13;
      if (a3)
      {
        Value = CFDictionaryGetValue(a3, kFigTransportDiscoveryDeviceInfoKey_DeviceRef);
        if (Value)
        {
          Value = CFRetain(Value);
        }

        *(DerivedStorage + 40) = Value;
      }

      v15 = a4 ? CFRetain(a4) : 0;
      *(DerivedStorage + 48) = v15;
      *(DerivedStorage + 4) = 0;
      *(DerivedStorage + 6) = 0;
      *(DerivedStorage + 8) = 0;
      v16 = CFUUIDCreate(kCFAllocatorDefault);
      if (v16)
      {
        v17 = v16;
        *(DerivedStorage + 56) = CFUUIDCreateString(kCFAllocatorDefault, v16);
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v9 = 0;
        *a5 = 0;
        CFRelease(v17);
      }

      else
      {
        return 4294950575;
      }
    }
  }

  else
  {
    sub_116F0(v20);
    return v20[0];
  }

  return v9;
}

void sub_7724(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_77D0;
  block[3] = &unk_1D608;
  v9 = a2;
  block[4] = a1;
  block[5] = a3;
  dispatch_async(v7, block);
}

void sub_77D0(uint64_t a1)
{
  sub_1007C(*(a1 + 32), *(a1 + 48));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_782C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 24);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_78C8;
  v9[3] = &unk_1D630;
  v10 = a2;
  v9[5] = a1;
  v9[6] = a3;
  v9[4] = a4;
  dispatch_sync(v8, v9);
}

uint64_t sub_78DC(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_79A0;
  v8[3] = &unk_1D658;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v8[7] = a2;
  dispatch_sync(v5, v8);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_79A0(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  *(v3 + 3) = 1;
  v4 = sub_10574(v2, *(a1 + 56));
  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(v5 + 4) = 1;
  }

  if (*(v5 + 5))
  {
    sub_7A1C(*(a1 + 48), 1, kFigEndpointNotification_CameraPreviewStreamChanged);
    *(*(a1 + 40) + 5) = 0;
  }
}

void sub_7A1C(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 104);
  CFRetain(a1);
  v8 = *(DerivedStorage + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_8968;
  v9[3] = &unk_1D970;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v7;
  v9[7] = a3;
  dispatch_async(v8, v9);
}

void sub_7AC8(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[4];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[4] = 0;
  }

  sub_10EAC(a1);
  v4 = DerivedStorage[5];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[5] = 0;
  }

  v5 = DerivedStorage[6];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[6] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[7];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[7] = 0;
  }
}

__CFString *sub_7B48(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroEndpoint %p>", a1);
  return Mutable;
}

uint64_t sub_7BA0()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 88))
  {
    v1 = result;
    result = NeroTransportSendAsyncMessage();
    *(v1 + 88) = 0;
  }

  return result;
}

void sub_7BE4(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*(DerivedStorage + 98))
  {
    if (*(DerivedStorage + 1) || *(DerivedStorage + 2))
    {
      sub_20A4();
      if (*(DerivedStorage + 1))
      {
        v13 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (*(DerivedStorage + 2))
    {
      SBSSetStatusBarShowsOverridesForRecording();
    }

    if (*(DerivedStorage + 1))
    {
      sub_1A88();
      v13 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 98) = 0;
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(DerivedStorage + 64);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 64) = 0;
    }
  }

  else if (!*(DerivedStorage + 3))
  {
    goto LABEL_19;
  }

  if (*(DerivedStorage + 32))
  {
    v9 = *(DerivedStorage + 104);
    CFRetain(a1);
    v10 = *(DerivedStorage + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_8250;
    block[3] = &unk_1D750;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = v9;
    dispatch_async(v10, block);
  }

LABEL_19:
  *(DerivedStorage + 8) &= ~1uLL;
}

void sub_8020(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[9];
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(v3);
    }

    v5 = DerivedStorage[9];
    if (v5)
    {
      CFRelease(v5);
      DerivedStorage[9] = 0;
    }

    if (DerivedStorage[4])
    {
      v6 = DerivedStorage[13];
      CFRetain(a1);
      v7 = DerivedStorage[4];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = sub_83A8;
      v8[3] = &unk_1D770;
      v8[4] = a1;
      v8[5] = v6;
      dispatch_async(v7, v8);
    }
  }

  DerivedStorage[1] &= ~2uLL;
}

void sub_8144(uint64_t a1)
{
  v4 = 0;
  sub_81C4(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t sub_81C4(const void *a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return sub_1174C();
  }

  v7 = Mutable;
  FigCFDictionarySetInt64();
  result = FigCFDictionarySetInt64();
  *a4 = v7;
  return result;
}

void sub_8250(uint64_t a1)
{
  v4 = 0;
  sub_82F8(*(a1 + 40), 1, 0, *(a1 + 48), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

uint64_t sub_82F8(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return sub_117AC();
  }

  v8 = Mutable;
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  result = FigCFDictionarySetInt64();
  *a5 = v8;
  return result;
}

void sub_83A8(uint64_t a1)
{
  v4 = 0;
  sub_82F8(*(a1 + 32), 2, 0, *(a1 + 40), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

CFStringRef sub_8430()
{
  if (qword_200E8 != -1)
  {
    sub_1180C();
  }

  v1 = qword_200F8;

  return CFBundleCopyLocalizedString(v1, @"plou", @"plou", @"Localizable");
}

uint64_t sub_8488(uint64_t a1)
{
  result = FigCFNumberCreateUInt64();
  **(a1 + 32) = result;
  return result;
}

void sub_84C8(id a1)
{
  qword_200F0 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/Library/Audio/Plug-Ins/HAL/VirtualAudio.plugin", kCFURLPOSIXPathStyle, 1u);
  v1 = CFBundleCreate(kCFAllocatorDefault, qword_200F0);
  qword_200F8 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  v2 = qword_200F0;
  if (qword_200F0)
  {

    CFRelease(v2);
  }
}

uint64_t sub_8550(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v10 = *(DerivedStorage + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_11178;
  block[3] = &unk_1D810;
  block[4] = a1;
  block[5] = a2;
  block[6] = a4;
  block[7] = DerivedStorage;
  block[8] = a5;
  dispatch_async(v10, block);
  return 0;
}

uint64_t sub_8604(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v8 = *(DerivedStorage + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_11288;
  v10[3] = &unk_1D850;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = DerivedStorage;
  v10[7] = a4;
  dispatch_async(v8, v10);
  return 0;
}

void sub_86A8(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_86F0(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_8738(uint64_t a1)
{
  v4 = 0;
  sub_81C4(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

void sub_87B8(uint64_t a1)
{
  v4 = 0;
  sub_82F8(*(a1 + 40), 1, 1, *(a1 + 48), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

void sub_8860(uint64_t a1)
{
  v4 = 0;
  sub_81C4(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

void sub_88E0(uint64_t a1)
{
  v4 = 0;
  sub_82F8(*(a1 + 32), 2, 1, *(a1 + 40), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

void sub_8968(uint64_t a1)
{
  v4 = 0;
  sub_82F8(*(a1 + 32), *(a1 + 40), 1, *(a1 + 48), &v4);
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = v4;
  CMNotificationCenterPostNotification();
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t sub_8A40()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL sub_8AD8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigNeroEndpointManagerGetShared(void *a1)
{
  if (qword_20100 == -1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_12AB8();
  if (a1)
  {
LABEL_3:
    *a1 = qword_20148;
  }

LABEL_4:
  if (!dword_20140)
  {
    return 0;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return dword_20140;
}

uint64_t FigNeroEndpointManagerForCameraPreviewGetShared(void *a1)
{
  if (qword_20108 == -1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_12ACC();
  if (a1)
  {
LABEL_3:
    *a1 = qword_20118;
  }

LABEL_4:
  if (!dword_20110)
  {
    return 0;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return dword_20110;
}

void sub_8DE0(id a1)
{
  if (qword_20148)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = 0;
    qword_20118 = qword_20148;
  }

  else
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (FigGetCFPreferenceNumberWithDefault())
    {
      FigEndpointManagerGetClassID();
      v3 = CMDerivedObjectCreate();
      if (!v3)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v5 = dispatch_queue_create("NeroEndpointManager.queue", 0);
        *(DerivedStorage + 8) = v5;
        if (v5)
        {
          dispatch_async(v5, &stru_1DDD0);
          v6 = dispatch_queue_create("NeroEndpointManager.notification", 0);
          *(DerivedStorage + 16) = v6;
          if (v6)
          {
            v3 = 0;
            qword_20118 = 0;
          }

          else
          {
            v3 = -16711;
          }
        }

        else
        {
          v3 = -16711;
        }
      }
    }

    else
    {
      v3 = -12782;
    }
  }

  dword_20110 = v3;
}

void sub_90DC(const void *a1, int a2, const __CFDictionary *a3, const void *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (a2)
  {
    v12 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = 0;
    if (!a5)
    {
LABEL_12:
      if (sub_74A8(kCFAllocatorDefault, v12, a3, a4, v11 + 6))
      {
        goto LABEL_13;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (!v11[2])
      {
        goto LABEL_13;
      }

      CFRetain(a1);
      v14 = v11[2];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 0x40000000;
      v16[2] = sub_A11C;
      v16[3] = &unk_1DD30;
      v16[4] = a1;
      v15 = v16;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a5)
    {
      sub_969C();
      v12 = 0;
      goto LABEL_12;
    }

    v12 = 0;
  }

  if (!sub_74A8(kCFAllocatorDefault, v12, a3, a4, (DerivedStorage + 56)))
  {
    sub_78DC(v11[7], 1);
  }

  if (v11[2])
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
    CFRetain(a1);
    v14 = v11[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_A0C4;
    block[3] = &unk_1DD10;
    block[4] = a1;
    block[5] = Mutable;
    v15 = block;
LABEL_10:
    dispatch_async(v14, v15);
  }

LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }
}

__CFString *sub_9330(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroEndpointManager %p>", a1);
  return Mutable;
}

uint64_t sub_9388(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ValeriaConnected"))
  {
    if (!a3 || (v7 = CFGetTypeID(a3), v7 != CFBooleanGetTypeID()))
    {
      sub_12AE0();
      return 0;
    }

    v8 = *(DerivedStorage + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_9908;
    block[3] = &unk_1DBD0;
    block[4] = a3;
    block[5] = a1;
    v9 = block;
LABEL_5:
    dispatch_async(v8, v9);
    return 0;
  }

  if (CFEqual(a2, kFigEndpointManagerNeroProperty_CustomEndpoint))
  {
    if (qword_20130 != -1)
    {
      sub_12BD4();
    }

    if (byte_20138)
    {
      return 0;
    }

    v11 = CFUUIDCreate(kCFAllocatorDefault);
    v12 = CFUUIDCreateString(kCFAllocatorDefault, v11);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v14 = Mutable;
    v15 = @"publishing";
    if (!a3)
    {
      v15 = @"unpublishing";
    }

    CFStringAppendFormat(Mutable, 0, @"%@ a CustomEndpoint: { UUID: %@ displaySourceRef: %@ }", v15, v12, a3);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = *(DerivedStorage + 8);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = sub_996C;
    v17[3] = &unk_1DC30;
    v17[4] = v14;
    v17[5] = a3;
    v17[6] = a1;
    v9 = v17;
    goto LABEL_5;
  }

  return 4294954512;
}

void sub_969C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_20128 != -1)
  {
    sub_12BE8();
  }

  if ((byte_20120 & 1) == 0 && *(DerivedStorage + 64))
  {
    NeroTransportStopAcceptingConnections();
    FigTransportGetLocalRootObject();
    NeroTransportUnregisterObject();
    NeroTransportInvalidate();
    v1 = *(DerivedStorage + 64);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 64) = 0;
    }
  }
}

void sub_971C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/AppleInternal/Applications/Stevenote.app/Stevenote", kCFURLPOSIXPathStyle, 0);
    if (v3)
    {
      v4 = v3;
      if (FigFileDoesFileExist())
      {
        byte_20120 = 1;
      }

      CFRelease(v4);
    }

    CFRelease(v2);
  }
}

void sub_97B4(id a1)
{
  if (FigCFWeakReferenceTableCreate())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    __break(1u);
  }
}

void sub_9908(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2 == kCFBooleanTrue)
  {
    sub_12628(v1);
  }

  else
  {
    sub_127D8(v1);
  }
}

void sub_9928(id a1)
{
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    byte_20138 = 1;
  }
}

void sub_996C(void *a1)
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v4 = a1[5];
  v3 = a1[6];
  if (v4)
  {
    sub_90DC(v3, 0, 0, v4, 1);
  }

  else
  {
    sub_9BB0(v3, 1);
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_9BB0(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (a2)
  {
    v6 = *(DerivedStorage + 56);
    if (v6)
    {
      *(DerivedStorage + 56) = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(v6);
      }

      CFRelease(v6);
      if (*(v5 + 16))
      {
        CFRetain(a1);
        v8 = *(v5 + 16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_9E68;
        block[3] = &unk_1DC90;
        block[4] = a1;
        dispatch_async(v8, block);
      }
    }
  }

  else
  {
    v9 = *(DerivedStorage + 48);
    if (v9)
    {
      *(DerivedStorage + 48) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v10)
      {
        v10(v9);
      }

      CFRelease(v9);
      if (*(v5 + 16))
      {
        CFRetain(a1);
        v11 = *(v5 + 16);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 0x40000000;
        v12[2] = sub_9F60;
        v12[3] = &unk_1DCB0;
        v12[4] = a1;
        dispatch_async(v11, v12);
      }
    }

    sub_9FD4();
  }
}

void sub_9DFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 48);
  if (v7)
  {

    sub_782C(v7, a2, a3, a4);
  }
}

void sub_9E68(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_9EBC(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a2);
    v6 = *(v5 + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_A060;
    v7[3] = &unk_1DCD0;
    v7[4] = a1;
    v7[5] = a2;
    dispatch_async(v6, v7);
  }
}

void sub_9F60(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_9FD4()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigIsAirplaydEnabled() || !FigServer_IsAirplayd())
  {
    if (qword_20128 != -1)
    {
      sub_12BE8();
    }

    if ((byte_20120 & 1) == 0 && !*(DerivedStorage + 64))
    {
      sub_12824();

      NeroTransportStartAcceptingConnections();
    }
  }
}

void sub_A060(uint64_t a1)
{
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_A0C4(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_A11C(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_A170(uint64_t a1)
{
  v2 = AudioServerPlugInRegisterRemote();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v2)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    sub_12190(*(a1 + 40), 5);
  }

  CFRelease(*(a1 + 40));
}

void sub_A434()
{
  if (qword_20158 != -1)
  {
    sub_12BFC();
  }

  v0 = FigCFWeakReferenceTableCopyValue();
  if (v0)
  {
    v1 = v0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    sub_12190(v1, 5);
    CFRelease(v1);
  }
}

uint64_t sub_A5E8()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_A60C(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_A61C()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFUUIDRef sub_A650(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, UInt8 a11)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11), a11);
}

BOOL sub_A690(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t sub_A6B0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t sub_A6F0()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void sub_A708()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[5];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[5] = 0;
  }

  sub_13518();
  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[7] = 0;
  }

  v6 = DerivedStorage[8];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[8] = 0;
  }

  v7 = DerivedStorage[9];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[9] = 0;
  }

  v8 = DerivedStorage[4];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[4] = 0;
  }
}

__CFString *sub_A7B8(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroEndpointScreenStream %p>", a1);
  return Mutable;
}

uint64_t sub_A818(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v8 = *(DerivedStorage + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_A9E8;
  v10[3] = &unk_1DEB8;
  v10[4] = DerivedStorage;
  v10[5] = a3;
  v10[6] = a1;
  v10[7] = a4;
  dispatch_async(v8, v10);
  return 0;
}

uint64_t sub_A8BC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v8 = *(DerivedStorage + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_AB78;
  v10[3] = &unk_1DEF8;
  v10[4] = DerivedStorage;
  v10[5] = a3;
  v10[6] = a1;
  v10[7] = a4;
  dispatch_async(v8, v10);
  return 0;
}

uint64_t sub_A960(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_AD00;
  v5[3] = &unk_1DF38;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

void sub_A9E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    v3 = -16762;
    goto LABEL_9;
  }

  if (*(v2 + 1))
  {
    goto LABEL_4;
  }

  v4 = *(v2 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v3 = v5(v4);
    if (!v3)
    {
      v2 = *(a1 + 32);
LABEL_4:
      v3 = 0;
      *(v2 + 1) = 1;
    }
  }

  else
  {
    v3 = -12782;
  }

LABEL_9:
  if (*(a1 + 40))
  {
    CFRetain(*(a1 + 48));
    v6 = *(*(a1 + 32) + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_AB34;
    v7[3] = &unk_1DE98;
    v8 = *(a1 + 40);
    v10 = v3;
    v9 = *(a1 + 56);
    dispatch_async(v6, v7);
  }

  CFRelease(*(a1 + 48));
}

void sub_AB34(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_AB78(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    v3 = -16762;
    goto LABEL_9;
  }

  if (!*(v2 + 1))
  {
LABEL_7:
    v3 = 0;
    *(v2 + 1) = 0;
    goto LABEL_9;
  }

  v4 = *(v2 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v3 = v5(v4);
    if (v3)
    {
      goto LABEL_9;
    }

    v2 = *(a1 + 32);
    goto LABEL_7;
  }

  v3 = -12782;
LABEL_9:
  if (*(a1 + 40))
  {
    CFRetain(*(a1 + 48));
    v6 = *(*(a1 + 32) + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_ACBC;
    v7[3] = &unk_1DED8;
    v8 = *(a1 + 40);
    v10 = v3;
    v9 = *(a1 + 56);
    dispatch_async(v6, v7);
  }

  CFRelease(*(a1 + 48));
}

void sub_ACBC(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_AD00(uint64_t a1)
{
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (!*v4)
  {
    v6[5] = v1;
    v6[6] = v2;
    sub_1366C(v4, a1, v5, v6);
  }
}

void sub_AD40(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t sub_AD94()
{

  return FigCFEqual();
}

void sub_ADB8(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t sub_ADD0(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5, void *a6)
{
  if (!a2)
  {
    v19 = 804;
LABEL_19:
    sub_13E4C(v19, block);
    return LODWORD(block[0]);
  }

  if (!a3)
  {
    v19 = 805;
    goto LABEL_19;
  }

  if (!a6)
  {
    v19 = 806;
    goto LABEL_19;
  }

  FigEndpointStreamGetClassID();
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = dispatch_queue_create("NeroEndpointAudioStream.notification", 0);
    *(DerivedStorage + 32) = v13;
    if (v13 && (v14 = FigDispatchQueueCreateWithPriority(), (*(DerivedStorage + 40) = v14) != 0))
    {
      *(DerivedStorage + 104) = dispatch_queue_create("NeroEndpointAudioStream.silentAudioQueue", 0);
      *(DerivedStorage + 16) = CFRetain(a2);
      *(DerivedStorage + 24) = CFRetain(a3);
      *(DerivedStorage + 48) = a4;
      *(DerivedStorage + 96) = a5;
      if (a5)
      {
        CFRetain(a5);
      }

      CFDictionaryGetValue(a2, @"deviceName");
      if (FigCFEqual())
      {
        *(DerivedStorage + 1) = 1;
        v15 = CMBaseObjectGetDerivedStorage();
        v16 = *(v15 + 104);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_BD1C;
        block[3] = &unk_1E168;
        block[4] = v15;
        dispatch_async(v16, block);
      }

      v17 = CMBaseObjectGetDerivedStorage();
      if (*v17)
      {
        v11 = 4294950534;
      }

      else
      {
        v11 = 0;
        if (!v17[2])
        {
          v17[2] = 1;
        }
      }

      *a6 = 0;
    }

    else
    {
      return 4294950535;
    }
  }

  return v11;
}

uint64_t sub_AFD8(uint64_t a1, _DWORD *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  destination = 0.0;
  if (*DerivedStorage)
  {
    v5 = v17;
    *(v17 + 6) = -16762;
  }

  else
  {
    v4 = *(DerivedStorage + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_B128;
    v10[3] = &unk_1DF90;
    v10[5] = &v12;
    v10[6] = DerivedStorage;
    v10[4] = &v16;
    dispatch_sync(v4, v10);
    v5 = v17;
    if (!*(v17 + 6))
    {
      v6 = CMBlockBufferCopyDataBytes(v13[3], 0, 8uLL, &destination);
      v5 = v17;
      *(v17 + 6) = v6;
      if (a2)
      {
        if (!v6)
        {
          *a2 = (destination + 0.5);
        }
      }
    }
  }

  v7 = v13[3];
  if (v7)
  {
    CFRelease(v7);
    v5 = v17;
  }

  v8 = *(v5 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

uint64_t sub_B128(uint64_t a1)
{
  result = NeroTransportSendSyncMessageCreatingReply();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_B178(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  theDict = 0;
  if (*DerivedStorage)
  {
    *(v28 + 6) = -16762;
  }

  else
  {
    v8 = DerivedStorage;
    v9 = CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, a2, 0x28uLL, kCFAllocatorNull, 0, 0, 0x28uLL, 0, &blockBufferOut);
    *(v28 + 6) = v9;
    if (!v9)
    {
      v10 = *(v8 + 5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_B3D0;
      block[3] = &unk_1DFB8;
      block[6] = v8;
      block[7] = blockBufferOut;
      block[4] = &v27;
      block[5] = &v22;
      dispatch_sync(v10, block);
      if (!*(v28 + 6))
      {
        CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
        *(v28 + 6) = CFTypeFromSerializedAtomDataBlockBuffer;
        if (!CFTypeFromSerializedAtomDataBlockBuffer)
        {
          Value = CFDictionaryGetValue(theDict, @"Error");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, v28 + 3);
            if (!*(v28 + 6))
            {
              v13 = CFDictionaryGetValue(theDict, @"DefaultAudioChannelLayout");
              v14 = CFDictionaryGetValue(theDict, @"PreferredAudioChannelLayout");
              if (v13)
              {
                v15 = CFRetain(v13);
              }

              else
              {
                v15 = 0;
              }

              *a3 = v15;
              if (v14)
              {
                v16 = CFRetain(v14);
              }

              else
              {
                v16 = 0;
              }

              *a4 = v16;
            }
          }

          else
          {
            *(v28 + 6) = -16760;
          }
        }
      }
    }
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  v17 = v23[3];
  if (v17)
  {
    CFRelease(v17);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  v18 = *(v28 + 6);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v27, 8);
  return v18;
}

uint64_t sub_B3D0(uint64_t a1)
{
  result = NeroTransportSendSyncMessageCreatingReply();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_B420()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  destination = 0;
  if (!*(DerivedStorage + 64))
  {
    LODWORD(v3) = 0;
    v2 = 0;
    goto LABEL_12;
  }

  SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
  if (SampleBufferFromSerializedAtomDataBlockBuffer)
  {
    goto LABEL_3;
  }

  v4 = *(DerivedStorage + 64);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v5)
  {
    LODWORD(v3) = 0;
    goto LABEL_11;
  }

  SampleBufferFromSerializedAtomDataBlockBuffer = v5(v4, &destination, &v17);
  if (SampleBufferFromSerializedAtomDataBlockBuffer)
  {
LABEL_3:
    v2 = SampleBufferFromSerializedAtomDataBlockBuffer;
    LODWORD(v3) = 0;
    goto LABEL_12;
  }

  v3 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) += CMSampleBufferGetNumSamples(0);
  DataBuffer = CMSampleBufferGetDataBuffer(0);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  if (v17 < DataLength)
  {
    v2 = 4294950536;
    goto LABEL_12;
  }

  v8 = DataLength;
  v9 = CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, destination);
  if (v9)
  {
    v2 = v9;
    goto LABEL_12;
  }

  v14 = *(DerivedStorage + 64);
  v15 = destination;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v16)
  {
LABEL_11:
    v2 = 4294954514;
    goto LABEL_12;
  }

  v2 = v16(v14, v15, v8, v3);
  if (!v2)
  {
    destination = 0;
    return v2;
  }

LABEL_12:
  v10 = destination;
  if (destination)
  {
    v11 = *(DerivedStorage + 64);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v12)
    {
      v12(v11, v10, 0, v3);
    }
  }

  return v2;
}

void sub_B694()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[4];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[4] = 0;
  }

  sub_B79C();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[7] = 0;
  }

  v3 = DerivedStorage[10];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[10] = 0;
  }

  v4 = DerivedStorage[11];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[11] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[5];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[5] = 0;
  }

  v8 = DerivedStorage[13];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[13] = 0;
  }
}

__CFString *sub_B744(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroEndpointAudioStream %p>", a1);
  return Mutable;
}

void sub_B79C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 104);
  if (v1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_B818;
    block[3] = &unk_1E068;
    block[4] = DerivedStorage;
    dispatch_sync(v1, block);
  }
}

OpaqueAudioQueue *sub_B818(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = AudioQueueDispose(result, 1u);
    *(*(a1 + 32) + 8) = 0;
  }

  return result;
}

CFDictionaryRef sub_B854(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = kCMTimeZero;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), @"BufferAheadInterval");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    Value = (valuePtr * 1000.0);
  }

  CMTimeMake(&v10, Value, 1000);
  v8 = v10;
  result = CMTimeCopyAsDictionary(&v8, a2);
  *a3 = result;
  return result;
}

CFDictionaryRef sub_B904(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = kCMTimeZero;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), @"ScreenLatency");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    Value = (valuePtr * 1000.0);
  }

  CMTimeMake(&v10, Value, 1000);
  v8 = v10;
  result = CMTimeCopyAsDictionary(&v8, a2);
  *a3 = result;
  return result;
}

void sub_B9B4()
{
  CMBaseObjectGetDerivedStorage();
  if (!FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer())
  {
    NeroTransportSendAsyncMessage();
  }
}

uint64_t sub_BA40(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v8 = *(DerivedStorage + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_BB88;
  v10[3] = &unk_1E0C8;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = DerivedStorage;
  v10[7] = a4;
  dispatch_async(v8, v10);
  return 0;
}

uint64_t sub_BAE4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v8 = *(DerivedStorage + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_13CAC;
  v10[3] = &unk_1E108;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = DerivedStorage;
  v10[7] = a4;
  dispatch_async(v8, v10);
  return 0;
}

void sub_BB88(uint64_t a1)
{
  v2 = sub_13C0C();
  if (*(a1 + 40))
  {
    v3 = v2;
    CFRetain(*(a1 + 32));
    v4 = *(*(a1 + 48) + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_BC40;
    v5[3] = &unk_1E0A8;
    v6 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v8 = v3;
    v7 = *(a1 + 56);
    dispatch_async(v4, v5);
  }

  CFRelease(*(a1 + 32));
}

void sub_BC40(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_BC84(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_BCC8(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t sub_BD1C(uint64_t a1)
{
  inFormat.mSampleRate = 44100.0;
  *&inFormat.mFormatID = xmmword_168C0;
  *&inFormat.mBytesPerFrame = xmmword_168D0;
  result = AudioQueueNewOutput(&inFormat, nullsub_3, 0, 0, 0, 0, (*(a1 + 32) + 8));
  if (!result)
  {
    return AudioQueueStart(*(*(a1 + 32) + 8), 0);
  }

  return result;
}

void sub_BDCC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v1 = DerivedStorage[3];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[6];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[6] = 0;
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[7] = 0;
  }

  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[11] = 0;
  }

  v6 = DerivedStorage[10];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[10] = 0;
  }

  v7 = DerivedStorage[8];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[8] = 0;
  }

  v8 = DerivedStorage[9];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[9] = 0;
  }
}

uint64_t sub_BF10()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  *(DerivedStorage + 100) = 1;
  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v2)
    {
      v2(v1);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v3);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  return FigHALAudioObjectMapperRemoveMapping();
}

uint64_t sub_C084(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

BOOL sub_C138(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 1819173228)
  {
    if (v3 <= 1935763059)
    {
      if (v3 > 1853059699)
      {
        if (v3 > 1870098019)
        {
          if (v3 == 1870098020)
          {
            return 1;
          }

          v5 = 1919512167;
        }

        else
        {
          if (v3 == 1853059700)
          {
            return 1;
          }

          v5 = 1869180523;
        }
      }

      else
      {
        if (v3 <= 1836411235)
        {
          if (v3 != 1819173229)
          {
            v4 = 1819569763;
            goto LABEL_43;
          }

          return 1;
        }

        if (v3 == 1836411236)
        {
          return 1;
        }

        v5 = 1853059619;
      }

LABEL_58:
      if (v3 != v5)
      {
        return result;
      }

      return 1;
    }

    if (v3 > 1937007733)
    {
      if (v3 > 1953653101)
      {
        if (v3 == 1969841184)
        {
          return 1;
        }

        v5 = 1953653102;
      }

      else
      {
        if (v3 == 1937007734)
        {
          return 1;
        }

        v5 = 1937009955;
      }

      goto LABEL_58;
    }

    if (v3 > 1936876643)
    {
      if (v3 != 1936876644)
      {
        v4 = 1936879204;
LABEL_43:
        if (v3 != v4)
        {
          return result;
        }
      }
    }

    else if (v3 != 1935763060)
    {
      v4 = 1936092276;
      goto LABEL_43;
    }

LABEL_44:
    v8 = a2[1];
    return v8 == 1768845428 || v8 == 1869968496;
  }

  if (v3 > 1684236337)
  {
    if (v3 > 1735354733)
    {
      if (v3 > 1818850925)
      {
        if (v3 == 1818850926)
        {
          return 1;
        }

        v5 = 1819107691;
      }

      else
      {
        if (v3 == 1735354734)
        {
          return 1;
        }

        v5 = 1751737454;
      }

      goto LABEL_58;
    }

    if (v3 > 1698775858)
    {
      if (v3 == 1698775859)
      {
        return 1;
      }

      v5 = 1718839674;
      goto LABEL_58;
    }

    if (v3 != 1684236338)
    {
      v4 = 1684434036;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (v3 > 1668047218)
  {
    if (v3 > 1668575851)
    {
      if (v3 == 1668575852)
      {
        return 1;
      }

      v5 = 1668641652;
    }

    else
    {
      if (v3 == 1668047219)
      {
        return 1;
      }

      v5 = 1668049764;
    }

    goto LABEL_58;
  }

  if (v3 == 1634429294 || v3 == 1634759532 || v3 == 1650682995)
  {
    return 1;
  }

  return result;
}

const __CFData *sub_C420(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1819569762)
  {
    if (v5 <= 1935763059)
    {
      if (v5 <= 1853059699)
      {
        v16 = 1819569763;
        v17 = 4;
        if (v5 == 1853059619)
        {
          v22 = 32;
        }

        else
        {
          v22 = 0;
        }

        if (v5 == 1836411236)
        {
          v21 = 8;
        }

        else
        {
          v21 = v22;
        }

LABEL_76:
        if (v5 == v16)
        {
          return v17;
        }

        else
        {
          return v21;
        }
      }

      if (v5 <= 1870098019)
      {
        v16 = 1853059700;
        v17 = 8;
        v18 = 1869180523;
LABEL_47:
        v20 = v5 == v18;
        v21 = 4;
        goto LABEL_74;
      }

      if (v5 != 1870098020)
      {
        v19 = 1919512167;
LABEL_65:
        if (v5 == v19)
        {
          return &dword_4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      if (v5 <= 1937007733)
      {
        if (v5 > 1936876643)
        {
          if (v5 == 1936876644)
          {
            result = *(*(DerivedStorage + 64) + 56);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            if (v5 != 1936879204)
            {
              return result;
            }

            result = *(*(DerivedStorage + 64) + 64);
            if (!result)
            {
              return result;
            }
          }

          return CFDataGetLength(result);
        }

        v16 = 1935763060;
        v17 = 4;
        v18 = 1936092276;
        goto LABEL_47;
      }

      if (v5 > 1953653101)
      {
        v16 = 1953653102;
        v17 = 4;
        v23 = 1969841184;
LABEL_73:
        v20 = v5 == v23;
        v21 = 8;
LABEL_74:
        if (!v20)
        {
          v21 = 0;
        }

        goto LABEL_76;
      }

      if (v5 == 1937007734)
      {
        return &dword_4;
      }

      if (v5 != 1937009955)
      {
        return result;
      }
    }

    v24 = a2[1];
    if (v24 != 1869968496)
    {
      if (v24 == 1768845428)
      {
        return (4 * (*(DerivedStorage + 80) != 0));
      }

      if (v24 != 1735159650)
      {
        return 0;
      }

      if (*(DerivedStorage + 80))
      {
        return &dword_8;
      }

      return &dword_4;
    }

    return &dword_4;
  }

  if (v5 <= 1684434035)
  {
    if (v5 <= 1668047218)
    {
      if (v5 != 1634429294 && v5 != 1634759532 && v5 != 1650682995)
      {
        return result;
      }

      return &dword_4;
    }

    if (v5 <= 1668641651)
    {
      if (v5 != 1668047219)
      {
        v19 = 1668049764;
        goto LABEL_65;
      }

      return &dword_4;
    }

    v16 = 1668641652;
    v17 = 24;
    v23 = 1684236338;
    goto LABEL_73;
  }

  if (v5 == 1819173229)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 1819107691)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  if (v5 == 1818850926)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (v5 == 1751737454)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (v5 <= 1819107690)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == 1735354734)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  if (v5 == 1718839674)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  if (v5 == 1698775859)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  if (v5 == 1684434036)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  if (v5 <= 1718839673)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v5 <= 1751737453)
  {
    return v15;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_C7C4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  if (*a2 == 1853059700)
  {
    v10 = DerivedStorage;
    memset(__s2, 0, 40);
    v11 = *(DerivedStorage + 64);
    v12 = *(v11 + 32);
    v29 = *(v11 + 16);
    v30 = v12;
    v31 = *(v11 + 48);
    if (a5 == 8)
    {
      v13 = *a6;
      if (*a6 == *&v29)
      {
LABEL_19:
        v25 = 0;
      }

      else
      {
        CMBaseObject = FigHALAudioStreamGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v16 = v15(CMBaseObject, kFigHALAudioStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &v33);
          if (v16)
          {
            v25 = v16;
          }

          else
          {
            v17 = v33;
            Length = CFDataGetLength(v33);
            if (Length < 0x70)
            {
              v25 = 4294950405;
            }

            else
            {
              v19 = Length / 0x38;
              BytePtr = CFDataGetBytePtr(v17);
              v21 = 0;
              do
              {
                if (*(BytePtr + 5) <= v13 && *(BytePtr + 6) >= v13)
                {
                  v21 = BytePtr;
                  if (*(BytePtr + 7) == HIDWORD(v30))
                  {
                    v21 = BytePtr;
                    if (*(BytePtr + 8) >= v31)
                    {
                      v21 = BytePtr;
                      goto LABEL_14;
                    }
                  }
                }

                BytePtr += 56;
                --v19;
              }

              while (v19);
              if (!v21)
              {
                v25 = 1970171760;
                goto LABEL_23;
              }

LABEL_14:
              *__s2 = v13;
              v22 = *(v21 + 24);
              *(__s2 + 8) = *(v21 + 8);
              *(&__s2[1] + 8) = v22;
              if (!memcmp(&v29, __s2, 0x28uLL))
              {
                goto LABEL_19;
              }

              v23 = *(v10 + 88);
              v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v24)
              {
                v24(v23);
              }

              v25 = FigHALAudioConfigChangeCreateRecord();
              v26 = v34;
              if (!v25)
              {
                v27 = __s2[1];
                *(v34 + 16) = __s2[0];
                *(v26 + 32) = v27;
                *(v26 + 48) = *&__s2[2];
                FigHALAudioConfigChangeSendRequest();
                v34 = 0;
              }
            }
          }
        }

        else
        {
          v25 = 4294954514;
        }
      }
    }

    else
    {
      v25 = 561211770;
    }
  }

  else
  {
    v25 = 2003332927;
  }

LABEL_23:
  FigHALAudioConfigChangeDisposeRecord();
  if (v33)
  {
    CFRelease(v33);
  }

  return v25;
}

CMTimeValue sub_CAC8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = kCMTimeZero.value;
  dictionaryRepresentation = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(CMBaseObject, @"screenLatency", kCFAllocatorDefault, &dictionaryRepresentation);
    v5 = dictionaryRepresentation;
    if (!v4)
    {
      CMTimeMakeFromDictionary(&v9, dictionaryRepresentation);
      v11 = *&v9.timescale;
      v6 = *(*(DerivedStorage + 64) + 16);
      time = v9;
      CMTimeConvertScale(&v9, &time, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v9.value;
      v5 = dictionaryRepresentation;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return value;
}

CFTypeRef sub_CBE4()
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1868984941)
  {
    v9 = *(DerivedStorage + 88);
    v10 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (v10)
    {
      v11 = v10(v9, 1868984941, a3);
    }

    else
    {
      v11 = 4294954514;
    }

    FigHALAudioPropertySendChanges();
    return v11;
  }

  if (a2 == 1768321645)
  {
    v6 = *(DerivedStorage + 80);
    if (!v6)
    {
      return 0;
    }

    v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (v7)
    {

      return v7(v6, 1768321645, a3);
    }

    return 4294954514;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_CE44()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 100))
  {
    if (sub_15290(v21))
    {
      return 0;
    }

    v15 = v21[0];
    goto LABEL_15;
  }

  v2 = *(DerivedStorage + 96);
  if (v2)
  {
LABEL_3:
    *(v1 + 96) = v2 + 1;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  v4 = *(DerivedStorage + 64);
  v5 = *(v4 + 32);
  *(v4 + 96) = *(v4 + 16);
  *(v4 + 112) = v5;
  *(v4 + 128) = *(v4 + 48);
  v6 = *(DerivedStorage + 64);
  v7 = *(v6 + 120);
  v8 = *(v6 + 96);
  *(v6 + 152) = v8;
  *(v6 + 156) = v7;
  *(v6 + 160) = v8;
  *(v6 + 172) = 0;
  if (*(v6 + 104) == 1819304813)
  {
    *(v6 + 108) |= 0x40u;
  }

  v9 = *(DerivedStorage + 88);
  v10 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10(v9);
  if (v11)
  {
    goto LABEL_24;
  }

  v12 = *(v1 + 80);
  if (v12)
  {
    v13 = *(*(CMBaseObjectGetVTable() + 24) + 32);
    if (v13)
    {
      v11 = v13(v12);
      if (!v11)
      {
        goto LABEL_11;
      }

LABEL_24:
      v15 = v11;
      goto LABEL_15;
    }

LABEL_14:
    v15 = 4294954514;
    goto LABEL_15;
  }

LABEL_11:
  v14 = FigEndpointStreamResumeSync();
  if (!v14 || (v15 = v14, v14 == -16764))
  {
    *(*(v1 + 64) + 196) = 1;
    v2 = *(v1 + 96);
    goto LABEL_3;
  }

LABEL_15:
  v16 = *(v1 + 88);
  v17 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v17)
  {
    v17(v16);
  }

  v18 = *(v1 + 80);
  if (v18)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 24) + 40);
    if (v19)
    {
      v19(v18);
    }
  }

  return v15;
}

uint64_t sub_D1E4()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 96);
  if (v1 < 2)
  {
    if (v1 != 1)
    {
      v3 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 96) = 0;
  dispatch_sync(*(DerivedStorage + 72), &stru_1E2B0);
  v4 = FigEndpointStreamSuspendSync();
  if (v4 == -16764)
  {
    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  v5 = *(DerivedStorage + 88);
  v6 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v6)
  {
    v6(v5);
  }

  v7 = *(DerivedStorage + 80);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 24) + 40);
    if (v8)
    {
      v8(v7);
    }
  }

  *(*(DerivedStorage + 64) + 196) = 0;
LABEL_14:
  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v3;
}

uint64_t sub_D518()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 64) + 196))
  {
    return 0;
  }

  else
  {
    return 1937010544;
  }
}

uint64_t sub_D54C()
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 64) + 196))
  {
    return 0;
  }

  else
  {
    return 1937010544;
  }
}

void sub_D584(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 64);
  v6 = *(v3 + 160);
  if (*(v3 + 196))
  {
    v4 = DerivedStorage;
    sub_AFD8(*(DerivedStorage + 56), &v6);
    if (v6)
    {
      v5 = *(v4 + 64);
      if (v6 != *(v5 + 160))
      {
        *(v5 + 160) = v6;
      }
    }
  }

  CFRelease(*(a1 + 32));
}

double sub_D624(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
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

void sub_D648(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_D700(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  CFDataGetBytes(v2, v4, v1);
}

uint64_t _nlc_connect(_DWORD *a1)
{
  *sp = 0;
  bootstrap_look_up(bootstrap_port, "com.apple.NetworkLinkConditioner", sp);
  if (bootstrap_look_up(bootstrap_port, "com.apple.NetworkLinkConditioner", sp))
  {
    puts("NLCd : Bootstrap failure");
    return 100;
  }

  else
  {
    v3 = nlc_connect(sp[0], a1, a1 + 1, &sp[1]);
    if (v3)
    {
      mach_error("nlc_connect:", v3);
    }

    return sp[1];
  }
}

uint64_t _nlc_disconnect(uint64_t a1)
{
  v4 = 0;
  v2 = nlc_disconnect(*a1, *(a1 + 4), &v4);
  if (v2)
  {
    mach_error("nlc_disconnect:", v2);
  }

  mach_port_deallocate(mach_task_self_, *a1);
  return v4;
}

uint64_t _nlc_start_simulation(uint64_t a1, __int128 *a2)
{
  v17 = 0;
  *(a2 + 1) = 0;
  v3 = a2[11];
  v28 = a2[10];
  v29 = v3;
  v30 = a2[12];
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v5 = a2[9];
  v26 = a2[8];
  v27 = v5;
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[4];
  v23 = v7;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = nlc_simulate(*a1, &v18, 0xD0u, *(a1 + 4), &v17);
  if (v9)
  {
    mach_error("_nlc_start_simulation:", v9);
  }

  v10 = v29;
  a2[10] = v28;
  a2[11] = v10;
  a2[12] = v30;
  v11 = v25;
  a2[6] = v24;
  a2[7] = v11;
  v12 = v27;
  a2[8] = v26;
  a2[9] = v12;
  v13 = v21;
  a2[2] = v20;
  a2[3] = v13;
  v14 = v23;
  a2[4] = v22;
  a2[5] = v14;
  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
  return v17;
}

uint64_t _nlc_stop_simulation(uint64_t a1, __int128 *a2)
{
  v17 = 0;
  *(a2 + 1) = 1;
  v3 = a2[11];
  v28 = a2[10];
  v29 = v3;
  v30 = a2[12];
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v5 = a2[9];
  v26 = a2[8];
  v27 = v5;
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[4];
  v23 = v7;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = nlc_stop_simulation(*a1, &v18, 0xD0u, *(a1 + 4), &v17);
  if (v9)
  {
    mach_error("_nlc_stop_simulation:", v9);
  }

  v10 = v29;
  a2[10] = v28;
  a2[11] = v10;
  a2[12] = v30;
  v11 = v25;
  a2[6] = v24;
  a2[7] = v11;
  v12 = v27;
  a2[8] = v26;
  a2[9] = v12;
  v13 = v21;
  a2[2] = v20;
  a2[3] = v13;
  v14 = v23;
  a2[4] = v22;
  a2[5] = v14;
  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
  return v17;
}

uint64_t _nlc_get_status(uint64_t a1, _DWORD *a2)
{
  a2[1] = 2;
  __n = 208;
  v4 = *(a2 + 11);
  v14[10] = *(a2 + 10);
  v14[11] = v4;
  v14[12] = *(a2 + 12);
  v5 = *(a2 + 7);
  v14[6] = *(a2 + 6);
  v14[7] = v5;
  v6 = *(a2 + 9);
  v14[8] = *(a2 + 8);
  v14[9] = v6;
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v8 = *(a2 + 5);
  v14[4] = *(a2 + 4);
  v14[5] = v8;
  v9 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v9;
  bzero(__src, 0x400uLL);
  status = nlc_get_status(*a1, v14, 0xD0u, __src, &__n, *(a1 + 4), &__n + 1);
  if (status)
  {
    mach_error("_nlc_get_status:", status);
  }

  memcpy(a2, __src, __n);
  return HIDWORD(__n);
}

uint64_t nlc_connect(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v19, 0, sizeof(v19));
  *&reply_port_12[4] = 0u;
  reply_port = 0;
  v8 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v8;
  v14 = 5395;
  *reply_port_12 = 0x9D4C00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v14);
    v9 = reply_port_8;
  }

  else
  {
    v9 = v8;
  }

  v10 = mach_msg(&v14, 3, 0x18u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v10)
    {
      if (*&reply_port_12[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&reply_port_12[4] == 40368)
      {
        if (v14 < 0)
        {
          v11 = 4294966996;
          if (*&reply_port_12[8] == 1 && reply_port == 56 && !reply_port_4 && HIWORD(v19[0]) << 16 == 1114112)
          {
            v11 = 0;
            v12 = v19[3];
            *a2 = *&reply_port_12[12];
            *a3 = v12;
            *a4 = v19[4];
            return v11;
          }
        }

        else if (reply_port == 36)
        {
          v11 = 4294966996;
          if (*&reply_port_12[16])
          {
            if (reply_port_4)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&reply_port_12[16];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  return v11;
}

uint64_t nlc_disconnect(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x9D4D00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 40369)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t nlc_simulate(mach_port_t a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5)
{
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = NDR_record;
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v18) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port + v10 + 36) = a4;
    v11 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v11;
    reply_port.msgh_bits = 5395;
    *&reply_port.msgh_voucher_port = 0x9D4E00000000;
    if (&_voucher_mach_msg_set)
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v11;
    }

    v13 = mach_msg(&reply_port, 3, v10 + 40, 0x30u, msgh_local_port, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (reply_port.msgh_id == 40370)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v5 = v18;
            if (!v18)
            {
              *a5 = DWORD1(v18);
              return v5;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v18 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
    return v5;
  }

  return 4294966989;
}

uint64_t nlc_stop_simulation(mach_port_t a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5)
{
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v17 = NDR_record;
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v18) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port + v10 + 36) = a4;
    v11 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v11;
    reply_port.msgh_bits = 5395;
    *&reply_port.msgh_voucher_port = 0x9D4F00000000;
    if (&_voucher_mach_msg_set)
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v11;
    }

    v13 = mach_msg(&reply_port, 3, v10 + 40, 0x30u, msgh_local_port, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v5;
    }

    if (reply_port.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (reply_port.msgh_id == 40371)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v5 = v18;
            if (!v18)
            {
              *a5 = DWORD1(v18);
              return v5;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v18 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(&reply_port);
    return v5;
  }

  return 4294966989;
}

uint64_t nlc_get_status(mach_port_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5, int a6, _DWORD *a7)
{
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__n = 0u;
  v27 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v25 = NDR_record;
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(__n[0]) = a3;
    v14 = (a3 + 3) & 0xFFC;
    *(&reply_port + v14 + 36) = a6;
    v15 = mig_get_reply_port();
    reply_port.msgh_remote_port = a1;
    reply_port.msgh_local_port = v15;
    reply_port.msgh_bits = 5395;
    *&reply_port.msgh_voucher_port = 0x9D5000000000;
    if (&_voucher_mach_msg_set)
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v15;
    }

    v17 = mach_msg(&reply_port, 3, v14 + 40, 0x434u, msgh_local_port, 0, 0);
    v7 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
      return v7;
    }

    if (v17)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v7;
    }

    if (reply_port.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (reply_port.msgh_id == 40372)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size - 1069 <= 0xFFFFFBFE)
        {
          if (LODWORD(__n[0]))
          {
            v18 = reply_port.msgh_remote_port == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && reply_port.msgh_size == 36)
          {
            v7 = LODWORD(__n[0]);
          }

          else
          {
            v7 = 4294966996;
          }

          goto LABEL_28;
        }

        if (!reply_port.msgh_remote_port)
        {
          v7 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_28;
          }

          v21 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) <= 0x400)
          {
            v7 = 4294966996;
            if (reply_port.msgh_size - 44 >= HIDWORD(__n[0]))
            {
              v22 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port.msgh_size == v22 + 44)
              {
                v23 = &reply_port + v22 - 1024;
                memcpy(a4, &__n[1], HIDWORD(__n[0]));
                v7 = 0;
                *a5 = v21;
                *a7 = *(v23 + 266);
                return v7;
              }
            }

            goto LABEL_28;
          }
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(&reply_port);
    return v7;
  }

  return 4294966989;
}

__CFDictionary *sub_E548()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return Mutable;
  }

  v10 = 0;
  if (getifaddrs(&v10) == -1)
  {
    return Mutable;
  }

  v1 = v10;
  if (!v10)
  {
    v8 = 0;
    goto LABEL_17;
  }

  do
  {
    if (v1->ifa_addr->sa_family != 2)
    {
      goto LABEL_14;
    }

    if ((v1->ifa_flags & 9) != 1)
    {
      goto LABEL_14;
    }

    ifa_name = v1->ifa_name;
    if (!strncmp("awdl", ifa_name, 4uLL))
    {
      goto LABEL_14;
    }

    v3 = CFStringCreateWithCString(kCFAllocatorDefault, ifa_name, 0);
    v4.s_addr = *&v1->ifa_addr->sa_data[2];
    v5 = inet_ntoa(v4);
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0);
    v7 = v6;
    if (v6 && v3)
    {
      CFDictionaryAddValue(Mutable, v3, v6);
    }

    else if (!v6)
    {
      goto LABEL_12;
    }

    CFRelease(v7);
LABEL_12:
    if (v3)
    {
      CFRelease(v3);
    }

LABEL_14:
    v1 = v1->ifa_next;
  }

  while (v1);
  v8 = v10;
LABEL_17:
  freeifaddrs(v8);
  if (!CFDictionaryGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void sub_E6B0()
{
  CFPreferencesSynchronize(@"com.apple.coremedia", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (*(qword_20070 + 72) != CFPreferenceNumberWithDefault)
  {
    *(qword_20070 + 72) = CFPreferenceNumberWithDefault;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (!FigCreateBlockBufferCopyingMemoryBlock())
    {
      FigTransportGetRemoteRootObject();
      NeroTransportSendAsyncMessage();
    }
  }
}

uint64_t sub_E788()
{
  v0 = qword_20070;
  v1 = *(qword_20070 + 56);
  if (v1)
  {
    SCDynamicStoreSetDispatchQueue(v1, 0);
    v0 = qword_20070;
  }

  *(v0 + 56) = 0;
  v2 = *(v0 + 16);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    v0 = qword_20070;
    *(qword_20070 + 16) = 0;
  }

  result = *(v0 + 24);
  if (result)
  {
    result = IOObjectRelease(result);
    *(qword_20070 + 24) = 0;
  }

  return result;
}

CFDataRef sub_E7EC()
{
  if (!qword_20070)
  {
    return 0;
  }

  v0 = objc_autoreleasePoolPush();
  v1 = *(qword_20070 + 80);
  if (v1 && (v2 = [v1 deviceMotion]) != 0 && (v3 = objc_msgSend(v2, "attitude")) != 0)
  {
    [v3 quaternion];
    v10[0] = v4;
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v8 = CFDataCreate(kCFAllocatorDefault, v10, 32);
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v8;
}

BOOL sub_E88C()
{
  bzero(v8, 0xC8uLL);
  v7 = 0x200000015;
  result = sub_E9B0(&v7);
  if (result)
  {
    v1 = 0;
    LOBYTE(v2) = 1;
    while (1)
    {
      while (1)
      {
        v3 = v2;
        memcpy(__dst, &v8[25 * v1], sizeof(__dst));
        if (v3)
        {
          break;
        }

        v4 = &__dst[28];
        if ((__dst[0] & 4) != 0)
        {
          goto LABEL_5;
        }

LABEL_10:
        LOBYTE(v2) = 0;
        v1 = 1;
        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }

      v4 = &__dst[64];
      if ((__dst[0] & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_5:
      if (v4[2] != 0.0)
      {
        return 1;
      }

      v2 = *(v4 + 3);
      if (v2)
      {
        return 1;
      }

      v5 = *v4;
      v6 = (*v4 == 0) & v3;
      v1 = 1;
      if ((v6 & 1) == 0)
      {
        return LODWORD(v5) != 0;
      }
    }
  }

  return result;
}

BOOL sub_E9B0(_BOOL8 result)
{
  v3 = 0;
  if (result)
  {
    v1 = result;
    if (_nlc_connect(&v3) == 1)
    {
      v2 = *(v1 + 4);
      if (v2)
      {
        if (v2 == 1)
        {
          _nlc_stop_simulation(&v3, v1);
        }

        else if (v2 == 2)
        {
          _nlc_get_status(&v3, v1);
        }
      }

      else
      {
        _nlc_start_simulation(&v3, v1);
      }

      return _nlc_disconnect(&v3) == 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_EAE8()
{
  *(qword_20070 + 72) ^= 1u;
  if (!FigCreateBlockBufferCopyingMemoryBlock())
  {
    FigTransportGetRemoteRootObject();
    NeroTransportSendAsyncMessage();
  }
}

void sub_EB78()
{
  v0 = sub_E7EC();
  if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
  {
    FigTransportGetRemoteRootObject();
    NeroTransportSendAsyncMessage();
  }

  if (v0)
  {
    CFRelease(v0);
  }
}

uint64_t sub_EC04(uint64_t a1, const AudioStreamBasicDescription *a2, void *a3)
{
  if (!a3)
  {
    return 4294950504;
  }

  FigEndpointAudioSinkGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMAudioFormatDescriptionCreate(kCFAllocatorDefault, a2, 0, 0, 0, 0, 0, DerivedStorage);
  if (!v6)
  {
    *(DerivedStorage + 40) = 0x20000;
    *(DerivedStorage + 32) = malloc_type_malloc(0x20000uLL, 0xA605AEF5uLL);
    *(DerivedStorage + 24) = dispatch_queue_create("com.apple.coremedia.neroaudiosink", 0);
    sub_25D0();
    *a3 = 0;
  }

  return v6;
}

uint64_t sub_ED08(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    return 4294950405;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
  {
    return 4294954509;
  }

  v8 = *(*(v7 + 48) + 88);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t sub_ED8C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 48);
  *(v2 + 136) = 0;
  result = sub_EC04(kCFAllocatorDefault, (v2 + 16), (DerivedStorage + 32));
  if (!result)
  {
    v4 = *(v1 + 32);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = kFigEndpointStreamProperty_AudioSink;

      return v6(CMBaseObject, v7, v4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t sub_EE78(uint64_t a1, int a2, unsigned int a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 48);
  if (!*(v10 + 196))
  {
    return 1937010544;
  }

  if (a2 == 1919246692)
  {
    v11 = *(DerivedStorage + 32);
    if (v11)
    {
      *(v10 + 136) = *(a4 + 80) + a3;
      v12 = *(v10 + 156) * a3;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v13 || (result = v13(v11, a5, v12, 0), result))
      {
        bzero(a5, v12);
        return 0;
      }
    }

    else
    {
      return 561214578;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t sub_EFF0()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_F058(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v9 = DerivedStorage;
    if (CFEqual(kFigVirtualDisplaySinkProperty_Type, a2))
    {
      v10 = @"Octavia";
LABEL_15:
      v13 = CFRetain(v10);
      result = 0;
      *a4 = v13;
      return result;
    }

    if (CFEqual(kFigVirtualDisplaySinkProperty_IsStevenote, a2))
    {
      v11 = sub_EF8();
      v12 = &kCFBooleanTrue;
      if (!v11)
      {
        v12 = &kCFBooleanFalse;
      }

LABEL_14:
      v10 = *v12;
      goto LABEL_15;
    }

    if (CFEqual(kFigVirtualDisplaySinkProperty_IsValeria, a2))
    {
      v12 = &kCFBooleanTrue;
      if (!v9[320])
      {
        v12 = &kCFBooleanFalse;
      }

      goto LABEL_14;
    }

    v14 = kFigVirtualDisplaySinkProperty_DeviceInfo;
    if (!CFEqual(a2, kFigVirtualDisplaySinkProperty_DeviceInfo) && !CFEqual(a2, kFigVirtualDisplaySinkProperty_DisplayInfo))
    {
      return 4294954512;
    }

    v15 = v9[200];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      return 4294954510;
    }

    v17 = Mutable;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(v9 + 11));
    if (!DictionaryRepresentation)
    {
      return 4294954510;
    }

    v19 = DictionaryRepresentation;
    if (CFEqual(a2, v14))
    {
      CFDictionarySetValue(v17, kFigVirtualDisplaySinkDeviceInfoKey_DisplaySizeInPixels, v19);
      v20 = kFigVirtualDisplaySinkDeviceInfoKey_Overscanned;
      v21 = &kCFBooleanFalse;
      if (v15)
      {
        v21 = &kCFBooleanTrue;
      }

      v22 = *v21;
      goto LABEL_25;
    }

    v26 = 0;
    v27 = 0;
    result = sub_F364(a1, v15, &v27, &v26);
    if (result)
    {
      return result;
    }

    v23 = v26;
    v24 = v27;
    if (v27 && v26)
    {
      CFDictionarySetValue(v17, kFigVirtualDisplaySinkDeviceInfoKey_ColorModes, v27);
      CFDictionarySetValue(v17, kFigVirtualDisplaySinkDeviceInfoKey_TimingModes, v23);
    }

    else if (!v27)
    {
LABEL_34:
      if (v23)
      {
        CFRelease(v23);
      }

      v25 = &kCFBooleanFalse;
      if (!v9[320])
      {
        v25 = &kCFBooleanTrue;
      }

      CFDictionarySetValue(v17, kFigVirtualDisplaySinkDeviceInfoKey_RotationSupport, *v25);
      v22 = *(v9 + 24);
      if (!v22)
      {
        goto LABEL_26;
      }

      v20 = kFigVirtualDisplaySinkDeviceInfoKey_DisplayUUID;
LABEL_25:
      CFDictionarySetValue(v17, v20, v22);
LABEL_26:
      CFRelease(v19);
      result = 0;
      *a4 = v17;
      return result;
    }

    CFRelease(v24);
    goto LABEL_34;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_F364(uint64_t a1, uint64_t a2, CFMutableArrayRef *a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  result = 4294954510;
  if (Mutable && v8)
  {
    if (*(DerivedStorage + 152) < 1)
    {
      result = 0;
      *a3 = Mutable;
      *a4 = v8;
    }

    else
    {
      FigDisplayModes_BuildColorAndTimingModes();
      return 4294954510;
    }
  }

  return result;
}

void sub_F4AC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 288))
  {
    if (*(a1 + 32))
    {
      sub_60D0(a2, kFigVirtualDisplaySinkEvent_DropNextFrame, 0);
    }

    *(a1 + 288) = 1;
  }
}

uint64_t sub_F508(uint64_t a1, const AudioStreamBasicDescription *a2, void *a3)
{
  if (!a3)
  {
    return 4294950525;
  }

  FigEndpointAudioSourceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMMemoryPoolCreate(0);
  *(DerivedStorage + 24) = v8;
  if (!v8)
  {
    return 4294950526;
  }

  Allocator = CMMemoryPoolGetAllocator(v8);
  *(DerivedStorage + 32) = Allocator;
  if (!Allocator)
  {
    return 4294950526;
  }

  CFRetain(Allocator);
  v6 = CMAudioFormatDescriptionCreate(kCFAllocatorDefault, a2, 0, 0, 0, 0, 0, DerivedStorage);
  if (!v6)
  {
    *a3 = 0;
  }

  return v6;
}

uint64_t sub_F5FC(const void *a1, const void *a2, size_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  if (!a2)
  {
    return 4294950525;
  }

  v9 = DerivedStorage;
  if (*(DerivedStorage + 8) && *(DerivedStorage + 16))
  {
    v10 = CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, 0, a3, kCFAllocatorDefault, 0, 0, a3, 1u, &blockBufferOut);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = CMBlockBufferReplaceDataBytes(a2, blockBufferOut, 0, a3);
      if (!v11)
      {
        CFRetain(a1);
        CFRetain(blockBufferOut);
        v12 = *(v9 + 8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_65B0;
        block[3] = &unk_1D3E0;
        block[4] = a1;
        block[5] = blockBufferOut;
        block[6] = a4;
        dispatch_async(v12, block);
      }
    }
  }

  else
  {
    v11 = 4294950524;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

uint64_t sub_F748(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_F7AC(uint64_t a1, const void *a2, void *a3)
{
  v3 = 4294954516;
  if (a2 && a3)
  {
    FigEndpointMessengerGetClassID();
    BBufFromPointer = CMDerivedObjectCreate();
    if (BBufFromPointer)
    {
      return BBufFromPointer;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = CFRetain(a2);
    *DerivedStorage = dispatch_queue_create("NeroMessenger", 0);
    NeroTransportRegisterObject();
    BBufFromPointer = FigTransportCreateBBufFromPointer();
    if (BBufFromPointer)
    {
      return BBufFromPointer;
    }

    FigTransportGetRemoteRootObject();
    BBufFromPointer = NeroTransportSendSyncMessageCreatingReply();
    if (BBufFromPointer)
    {
      return BBufFromPointer;
    }

    else
    {
      v3 = CMBlockBufferCopyDataBytes(0, 0, 8uLL, DerivedStorage + 3);
      if (!v3)
      {
        *a3 = 0;
      }
    }
  }

  return v3;
}

void sub_F940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    if (a3)
    {
      if (FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
      {
        return;
      }

      v6 = *(DerivedStorage + 8);
    }

    (*(v6 + 16))(v6, a2, 0);
  }
}

uint64_t sub_F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return NeroTransportSendAsyncMessage();
  }

  result = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (!result)
  {
    return NeroTransportSendAsyncMessage();
  }

  return result;
}

uint64_t *FigOctaviaHALPlugin_Create(uint64_t a1, const void *a2)
{
  if (FigIsAirplaydEnabled() && !FigServer_IsAirplayd())
  {
    return 0;
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = &qword_200C8;
  qword_200C8 = FigHALPluginDriverGetInterface();
  if (FigHALAudioObjectMapperCreate() || FigHALAudioCreateStandardPluginObject())
  {
    return 0;
  }

  FigAtomicIncrement32();
  return v4;
}

uint64_t sub_FB60(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    return 4294950405;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
  {
    return 4294954509;
  }

  v8 = *(*(v7 + 72) + 88);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t sub_FBE4()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 64))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 72);
  *(v2 + 144) = 0;
  result = sub_F508(kCFAllocatorDefault, (v2 + 96), (DerivedStorage + 56));
  if (!result)
  {
    v4 = *(v1 + 56);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = kFigEndpointStreamProperty_AudioSource;

      return v6(CMBaseObject, v7, v4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t sub_FCD4(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v19 = 0;
  cf = 0;
  v17 = *(a2 + 32);
  v5 = *(a2 + 16);
  v16[0] = *a2;
  v6 = v16[0];
  v16[1] = v5;
  v7 = *(DerivedStorage + 72);
  *(v7 + 48) = v17;
  *(v7 + 16) = v6;
  *(v7 + 32) = v5;
  if (*(a2 + 8) == 1819304813)
  {
    HIDWORD(v16[0]) |= 0x40u;
  }

  v8 = sub_B178(*(DerivedStorage + 24), v16, &v19, &cf);
  if (!v8)
  {
    v9 = *(v4 + 72);
    v10 = *(v9 + 56);
    v11 = v19;
    *(v9 + 56) = v19;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v12 = *(v4 + 72);
    v13 = *(v12 + 64);
    v14 = cf;
    *(v12 + 64) = cf;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t sub_FDD0(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 72);
  if (!*(v10 + 196))
  {
    return 1937010544;
  }

  if (a2 == 1919513701)
  {
    if (*(DerivedStorage + 64))
    {
      v11 = *(a4 + 144);
      *(v10 + 144) = v11 + a3;
      v12 = *(v10 + 156);
      v13 = *(DerivedStorage + 56);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v14)
      {

        return v14(v13, a5, v12 * a3, v11);
      }

      else
      {
        return 4294954514;
      }
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

uint64_t sub_FF64(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_7498();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_FFC0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_7498();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1001C()
{
  fig_log_get_emitter();
  sub_7498();

  return FigSignalErrorAtGM();
}

void sub_1007C(const void *a1, int a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    if (a2 == 1684628836 || (sub_8AC0(), v5))
    {

      sub_7BE4(a1);
    }

    else
    {
      sub_8AC0();
      if (v5)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v7 = sub_8A40();
        if (os_log_type_enabled(v7, BYTE3(type)))
        {
          v8 = HIDWORD(type);
        }

        else
        {
          v8 = HIDWORD(type) & 0xFFFFFFFE;
        }

        if (v8)
        {
          v9 = *DerivedStorage;
          v10 = *(DerivedStorage + 8);
          v37 = 136315906;
          v38 = "nendpoint_displayWasAttached";
          v39 = 2048;
          v40 = a1;
          v41 = 1024;
          v42 = v9;
          v43 = 2048;
          v44 = v10;
          LODWORD(v35) = 38;
          v34 = &v37;
          sub_8AB0();
          _os_log_send_and_compose_impl();
        }

        sub_8A04();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (!*DerivedStorage && !*(DerivedStorage + 8) && !FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
        {
          DerivedStorage[1] = CFDictionaryContainsKey(0, @"Stevenote");
          CFDictionaryGetValue(0, @"Valeria");
          v11 = FigCFEqual();
          DerivedStorage[2] = v11;
          if (DerivedStorage[1])
          {
            sub_F0C(*(DerivedStorage + 2));
            v12 = sub_8A40();
            if (sub_8AD8(v12, v13, v14, v15, v16, v17, v18, v19, v34, v35, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
            {
              v20 = v2;
            }

            else
            {
              v20 = v2 & 0xFFFFFFFE;
            }

            if (v20)
            {
              sub_8A88();
              sub_8AB0();
              _os_log_send_and_compose_impl();
              v2 = HIDWORD(type);
            }

            sub_8A04();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v11 = DerivedStorage[2];
          }

          if (v11 && FigGetCFPreferenceNumberWithDefault())
          {
            SBSSetStatusBarShowsOverridesForRecording();
          }

          if (DerivedStorage[1] || DerivedStorage[2])
          {
            sub_20A4();
            if (DerivedStorage[1])
            {
              v21 = sub_8A40();
              if (sub_8AD8(v21, v22, v23, v24, v25, v26, v27, v28, v34, v35, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
              {
                v29 = v2;
              }

              else
              {
                v29 = v2 & 0xFFFFFFFE;
              }

              if (v29)
              {
                sub_8A88();
                sub_8AB0();
                _os_log_send_and_compose_impl();
              }

              sub_8A04();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          DerivedStorage[98] = 1;
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          v31 = MutableCopy;
          if (DerivedStorage[3])
          {
            CFDictionarySetValue(MutableCopy, @"CameraPreview", kCFBooleanTrue);
          }

          if (sub_12C10(kCFAllocatorDefault, v31, *(DerivedStorage + 6), *(DerivedStorage + 2), DerivedStorage + 8))
          {
            goto LABEL_45;
          }

          if (*(DerivedStorage + 4))
          {
            if (DerivedStorage[4])
            {
              v32 = *(DerivedStorage + 13);
              CFRetain(a1);
              sub_8A68();
              v46 = 0x40000000;
              v47 = sub_87B8;
              v48 = &unk_1D8B0;
              v49 = DerivedStorage;
              v50 = a1;
              v51 = v32;
              dispatch_async(v33, block);
LABEL_44:
              *(DerivedStorage + 1) |= 1uLL;
LABEL_45:
              if (v31)
              {
                CFRelease(v31);
              }

              return;
            }
          }

          else if (DerivedStorage[4])
          {
            goto LABEL_44;
          }

          DerivedStorage[5] = 1;
          goto LABEL_44;
        }
      }
    }
  }
}

void sub_104C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v10 = 0;
  if (*DerivedStorage)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 4294955260;
    if (DerivedStorage[1])
    {
      sub_2088(a2, a3, &cf, &v10);
      v9 = cf;
      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294955260;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  (*(a4 + 16))(a4, v8, v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_10574(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294950573;
  }

  v5 = DerivedStorage;
  if (DerivedStorage[96])
  {
    return 0;
  }

  if (DerivedStorage[1])
  {
    valuePtr = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    sub_8A04();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ++*(v5 + 13);
  *(v5 + 14) = a2;
  block[17] = _NSConcreteStackBlock;
  block[18] = 0x40000000;
  block[19] = sub_113EC;
  block[20] = &unk_1D8D0;
  block[21] = a1;
  block[11] = a1;
  block[12] = _NSConcreteStackBlock;
  block[13] = 0x40000000;
  block[14] = sub_116E0;
  block[15] = &unk_1D8F0;
  block[16] = a1;
  sub_8A68();
  block[8] = 0x40000000;
  block[9] = sub_116E8;
  block[10] = &unk_1D910;
  if (*(v5 + 2))
  {
    if (v5[2])
    {
      v5[97] = 1;
    }

LABEL_8:
    v7 = NeroTransportRegisterObjectWithFlags();
    if (v7)
    {
      return v7;
    }

    v5[96] = 1;
    if (*(v5 + 4) && !v5[3])
    {
      v22 = *(v5 + 13);
      CFRetain(a1);
      v23 = *(v5 + 4);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_8860;
      block[3] = &unk_1D930;
      block[4] = a1;
      block[5] = 0;
      block[6] = v22;
      dispatch_async(v23, block);
    }

    return 0;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v29[0] = 0;
  cf = 0;
  if (*(v9 + 16))
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    v12 = 0;
  }

  else
  {
    v10 = v9;
    v11 = CFPreferencesCopyValue(@"neroendpoint_ip", @"com.apple.coremedia", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v12 = v11;
    if (!v11 || (v13 = CFGetTypeID(v11), v13 != CFStringGetTypeID()))
    {
      if (*(v10 + 48))
      {
        CMBaseObject = FigVirtualDisplaySourceGetCMBaseObject();
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v21(CMBaseObject, @"Destination", kCFAllocatorDefault, v29);
          if (v29[0])
          {
            v14 = FigTransportConnectionIDSCreate();
            if (v14)
            {
              goto LABEL_25;
            }
          }
        }
      }

      goto LABEL_24;
    }

    v14 = FigTransportConnectionTCPCreate();
    if (v14)
    {
LABEL_25:
      v8 = v14;
      goto LABEL_26;
    }

    v15 = NeroTransportConnectionGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v14 = v16(v15, kFigTransportConnectionTCPProperty_IPAddress, v12);
      if (!v14)
      {
        valuePtr = FigGetCFPreferenceNumberWithDefault();
        if (valuePtr >= 1)
        {
          v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
          v18 = NeroTransportConnectionGetCMBaseObject();
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v19)
          {
            v19(v18, kFigTransportConnectionTCPProperty_Port, v17);
          }

          CFRelease(v17);
        }

LABEL_24:
        v14 = NeroTransportCreate();
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    v8 = 4294954514;
  }

LABEL_26:
  if (v29[0])
  {
    CFRelease(v29[0]);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    FigTransportGetLocalRootObject();
    v7 = NeroTransportRegisterObject();
    if (v7)
    {
      return v7;
    }

    v7 = NeroTransportConnectToReceiver();
    if (v7)
    {
      return v7;
    }

    v5[97] = 1;
    goto LABEL_8;
  }

  return v8;
}

uint64_t sub_10B90(uint64_t a1, const void *a2, uint64_t a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, kFigEndpointProperty_Type))
  {
    v7 = &kFigEndpointType_Nero;
LABEL_3:
    v8 = *v7;
LABEL_4:
    v9 = CFRetain(v8);
LABEL_5:
    v10 = v9;
LABEL_6:
    result = 0;
    *a4 = v10;
    return result;
  }

  if (*DerivedStorage)
  {
    return 4294950573;
  }

  if (CFEqual(a2, kFigEndpointProperty_Streams))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      return 4294950575;
    }

    v13 = Mutable;
    v14 = *(DerivedStorage + 64);
    if (v14)
    {
      CFArrayAppendValue(Mutable, v14);
    }

    v15 = *(DerivedStorage + 72);
    if (v15)
    {
      CFArrayAppendValue(v13, v15);
    }

    result = 0;
    *a4 = v13;
    return result;
  }

  if (CFEqual(a2, kFigEndpointProperty_ID))
  {
    v8 = *(DerivedStorage + 56);
    if (!v8)
    {
      v10 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, kFigEndpointProperty_TransportType))
  {
    v7 = &kFigEndpointTransportType_USB;
    goto LABEL_3;
  }

  if (CFEqual(a2, kFigEndpointProperty_Model))
  {
    v16 = *(DerivedStorage + 1);
    v17 = @"Stevenote";
    goto LABEL_23;
  }

  if (CFEqual(a2, kFigEndpointProperty_Name))
  {
    if (!*(DerivedStorage + 1))
    {
      v9 = sub_8430();
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  if (CFEqual(a2, kFigEndpointProperty_IsActivated))
  {
    v7 = &kCFBooleanTrue;
    v18 = *(DerivedStorage + 96);
    goto LABEL_31;
  }

  if (!CFEqual(a2, kFigEndpointProperty_Messenger))
  {
    if (CFEqual(a2, @"subType"))
    {
      if (*(DerivedStorage + 2))
      {
        v8 = @"Valeria";
        goto LABEL_4;
      }

      if (!*(DerivedStorage + 1))
      {
        v16 = *(DerivedStorage + 80);
        v17 = @"Messalina";
LABEL_23:
        if (v16)
        {
          v8 = v17;
        }

        else
        {
          v8 = @"Nero";
        }

        goto LABEL_4;
      }

LABEL_28:
      v8 = @"Stevenote";
      goto LABEL_4;
    }

    if (CFEqual(a2, kFigEndpointProperty_AutoconnectEnabled))
    {
      v7 = &kCFBooleanTrue;
      goto LABEL_3;
    }

    if (CFEqual(a2, kFigEndpointProperty_ActivatedFeatures))
    {
      sub_89E4();
      sub_8ACC();
      v20[2] = sub_8488;
      v20[3] = &unk_1D790;
      v20[4] = a4;
      v20[5] = DerivedStorage;
      dispatch_sync(v19, v20);
      return 0;
    }

    if (!CFEqual(a2, kFigEndpointProperty_ForceMirroringOnly))
    {
      return 4294954512;
    }

    v7 = &kCFBooleanTrue;
    if (*(DerivedStorage + 1))
    {
      goto LABEL_3;
    }

    v18 = *(DerivedStorage + 2);
LABEL_31:
    if (!v18)
    {
      v7 = &kCFBooleanFalse;
    }

    goto LABEL_3;
  }

  v8 = *(DerivedStorage + 120);
  if (v8)
  {
    goto LABEL_4;
  }

  result = sub_F7AC(kCFAllocatorDefault, *(DerivedStorage + 16), (DerivedStorage + 120));
  if (!result)
  {
    v8 = *(DerivedStorage + 120);
    goto LABEL_4;
  }

  return result;
}

void sub_10EAC(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 112);
    v6 = (DerivedStorage + 104);
    v5 = *(DerivedStorage + 104);
    if (*(DerivedStorage + 1))
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      sub_8A04();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    sub_7BA0();
    if (*(v3 + 16))
    {
      if (*(v3 + 97))
      {
        NeroTransportDisconnectFromReceiver();
      }

      FigTransportGetLocalRootObject();
      NeroTransportUnregisterObject();
      NeroTransportUnregisterObject();
      NeroTransportInvalidate();
      v8 = *(v3 + 16);
      if (v8)
      {
        CFRelease(v8);
        *(v3 + 16) = 0;
      }
    }

    sub_7BE4(a1);
    sub_8020(a1);
    *(v3 + 96) = 0;
    *(v3 + 4) = 0;
    *(v3 + 8) = 0;
    *v6 = 0;
    v6[1] = 0;
    if (*(v3 + 32))
    {
      CFRetain(a1);
      v9 = sub_8A1C();
      v11 = 0x40000000;
      v12 = sub_8144;
      v13 = &unk_1D730;
      v14 = a1;
      v15 = v4;
      v16 = v5;
      dispatch_async(v9, block);
    }
  }
}

uint64_t sub_110E4(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    v4 = *(DerivedStorage + 120);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 120) = 0;
    }

    CFRetain(a1);
    sub_89E4();
    sub_8ACC();
    v7[2] = sub_11334;
    v7[3] = &unk_1D890;
    v7[4] = v3;
    v7[5] = a1;
    dispatch_sync(v5, v7);
  }

  return 0;
}

void sub_11178(uint64_t a1)
{
  v2 = sub_10574(*(a1 + 32), *(a1 + 40));
  if (*(a1 + 48))
  {
    v3 = v2;
    v4 = *(*(a1 + 56) + 104);
    CFRetain(*(a1 + 32));
    sub_89E4();
    sub_8ACC();
    v8[2] = sub_86A8;
    v8[3] = &unk_1D7F0;
    v5 = *(a1 + 32);
    v8[4] = *(a1 + 48);
    v8[5] = v5;
    v8[6] = 0;
    v8[7] = v4;
    v9 = v3;
    v8[8] = *(a1 + 64);
    dispatch_async(v6, v8);
    if (!v3)
    {
      *(*(a1 + 56) + 4) = 1;
    }
  }

  v7 = *(a1 + 56);
  if (*(v7 + 5))
  {
    sub_7A1C(*(a1 + 32), 1, kFigEndpointNotification_StreamsChanged);
    v7 = *(a1 + 56);
    *(v7 + 5) = 0;
  }

  if (*(v7 + 6))
  {
    sub_7A1C(*(a1 + 32), 2, kFigEndpointNotification_StreamsChanged);
    *(*(a1 + 56) + 6) = 0;
  }

  CFRelease(*(a1 + 32));
}

void sub_11288(uint64_t a1)
{
  sub_10EAC(*(a1 + 32));
  if (*(a1 + 40))
  {
    v2 = *(a1 + 48);
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    CFRetain(*(a1 + 32));
    sub_89E4();
    sub_8ACC();
    v6[2] = sub_86F0;
    v6[3] = &unk_1D830;
    v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v8 = v4;
    v9 = v3;
    v11 = 0;
    v10 = *(a1 + 56);
    dispatch_async(v5, v6);
  }

  CFRelease(*(a1 + 32));
}

void sub_11334(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 104);
  v3 = *(v2 + 112);
  sub_10EAC(*(a1 + 40));
  if (*(*(a1 + 32) + 32))
  {
    CFRetain(*(a1 + 40));
    v5 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_8738;
    block[3] = &unk_1D870;
    block[4] = *(a1 + 40);
    block[5] = v3;
    block[6] = v4;
    dispatch_async(v5, block);
  }

  CFRelease(*(a1 + 40));
}

void sub_113EC(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3)
{
  v5 = *(a1 + 32);
  destination = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    return;
  }

  sub_8AC0();
  if (v6)
  {
    v17 = 0;
    value = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*DerivedStorage)
    {
      goto LABEL_40;
    }

    v9 = DerivedStorage;
    if (!*(DerivedStorage + 88) || *(DerivedStorage + 72) || FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
    {
      goto LABEL_40;
    }

    if (CFDictionaryGetValueIfPresent(v17, @"inputFormats", &value))
    {
      *(v9 + 80) = 1;
    }

    v10 = *(v9 + 56);
    v11 = CFDictionaryGetValue(v17, @"deviceUID");
    *(v9 + 56) = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (sub_ADD0(kCFAllocatorDefault, v17, *(v9 + 56), *(v9 + 88), *(v9 + 16), (v9 + 72)))
    {
      goto LABEL_40;
    }

    if (*(v9 + 32))
    {
      if (*(v9 + 4))
      {
        v12 = *(v9 + 104);
        CFRetain(v5);
        v13 = sub_8A1C();
        cf[1] = 0x40000000;
        cf[2] = sub_88E0;
        cf[3] = &unk_1D950;
        cf[4] = v5;
        cf[5] = v12;
        dispatch_async(v13, cf);
LABEL_39:
        *(v9 + 8) |= 2uLL;
LABEL_40:
        if (v17)
        {
          CFRelease(v17);
        }

        return;
      }
    }

    else if (*(v9 + 4))
    {
      goto LABEL_39;
    }

    *(v9 + 6) = 1;
    goto LABEL_39;
  }

  if (a2 == 1684628836)
  {
LABEL_17:

    sub_8020(v5);
    return;
  }

  if (a2 != 1700885554)
  {
    sub_8AC0();
    if (!v6)
    {
      if (a2 != 1651470958)
      {
        return;
      }

      if (a3)
      {
        CMBlockBufferCopyDataBytes(a3, 0, 4uLL, &destination);
      }

      cf[0] = 0;
      v17 = 0;
      v7 = (CMBaseObjectGetDerivedStorage() + 88);
      if (*v7)
      {
        sub_7BA0();
      }

      if (!FigTransportCreateBBufFromPointer())
      {
        FigTransportGetRemoteRootObject();
        if (!NeroTransportSendSyncMessageCreatingReply() && CMBlockBufferGetDataLength(v17) == 8)
        {
          CMBlockBufferCopyDataBytes(v17, 0, 8uLL, v7);
        }
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      goto LABEL_40;
    }

    goto LABEL_17;
  }

  CMBaseObjectGetDerivedStorage();

  sub_B420();
}