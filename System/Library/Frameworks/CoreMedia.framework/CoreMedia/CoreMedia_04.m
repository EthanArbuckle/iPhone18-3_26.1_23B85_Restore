uint64_t FigRingBufferGetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

CFTypeID OUTLINED_FUNCTION_1_13()
{

  return CFGetTypeID(v0);
}

uint64_t fbs_SetupSmallReadBuffer(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x133) != 0)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v6 = FigSimpleMutexCreate();
  *(a1 + 4112) = v6;
  if (v6)
  {
    result = 0;
    *(a1 + 4120) = 1;
  }

  else
  {
    fbs_SetupSmallReadBuffer_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigByteStreamCreateFromOpenFileWithFlags(unsigned int *a1, uint64_t a2, char a3, CFTypeRef *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  cf = 0;
  ClassID = CMByteStreamGetClassID();
  v13 = CMDerivedObjectCreate(a2, &kFigFileByteStreamVTable, ClassID, &cf, v9, v10, v11, v12);
  if (v13)
  {
LABEL_9:
    v17 = v13;
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  *(DerivedStorage + 8) = a1;
  FigByteStreamStatsSetupWorker((DerivedStorage + 4152));
  *DerivedStorage = 0;
  *(DerivedStorage + 4220) = 0;
  *(DerivedStorage + 4216) = -1;
  if ((a3 & 2) == 0 || (bzero(buffer, 0x400uLL), *(DerivedStorage + 4220) = 1, DarwinFileDesc = FigFileGetDarwinFileDesc(a1), fcntl(DarwinFileDesc, 50, buffer) != -1) && (v16 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], buffer, 1024, 0), (*DerivedStorage = v16) != 0))
  {
    if ((a3 & 1) == 0 || (v13 = fbs_SetupSmallReadBuffer(DerivedStorage + 24, 0), !v13))
    {
      v17 = 0;
      *a4 = cf;
      return v17;
    }

    goto LABEL_9;
  }

  v17 = 4294954422;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t FigFileByteStreamEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = *CMBaseObjectGetDerivedStorage(a2);
  v5 = *DerivedStorage;

  return FigCFEqual(v5, v4);
}

__CFString *FigFileByteStreamCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = CFCopyDescription(*DerivedStorage);
  if (v3)
  {
    v4 = v3;
    CFStringAppendFormat(Mutable, 0, @"<FigFileByteStream %p>{%@}", DerivedStorage, v3);
    CFRelease(v4);
  }

  return Mutable;
}

size_t FigFileByteStreamSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!CFEqual(a2, @"FBS_IOPolicy"))
  {
    return 4294954512;
  }

  if (a3 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a3)))
  {
    CFNumberGetValue(a3, kCFNumberIntType, (DerivedStorage + 4216));
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDB8uLL, "<<< FigByteStream_File >>>", 0x26F, v3, v10, v11);
  }
}

uint64_t FigFileByteStreamReadAndCreateBlockBuffer(const void *a1, size_t a2, uint64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  v10 = CFGetAllocator(a1);

  return CMCreateContiguousBlockBufferFromStream(a1, v10, a2, a3, a4, a5);
}

size_t FigFileByteStreamSynchronize(uint64_t a1, char a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage(a1) + 8);

  return FigFileForkSynchronize(v3, a2 & 1);
}

size_t FigFileByteStreamPreallocateStorageSpace(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage(a1) + 8);

  return FigFileForkPreallocateStorageSpace(v7, a2, a3 & 2, a4);
}

size_t plugin_CreateStandardPluginObjectInternal(const __CFAllocator *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  cf = 0;
  ClassID = FigHALAudioPluginGetClassID();
  v17 = CMDerivedObjectCreate(a1, &kFigHALAudioPluginVTable, ClassID, &cf, v13, v14, v15, v16);
  if (v17)
  {
    v21 = v17;
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  DerivedStorage[1] = a2;
  DerivedStorage[4] = a4;
  DerivedStorage[5] = a5;
  v19 = MEMORY[0x1E695E9C0];
  DerivedStorage[3] = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage[2] = dispatch_queue_create("FigHALStandardPluginDeviceManagementQueue", 0);
  DerivedStorage[9] = CFArrayCreateMutable(a1, 0, v19);
  DerivedStorage[10] = CFArrayCreateMutable(a1, 0, v19);
  v20 = dispatch_queue_create("FigHALStandardPluginEndpointManagementQueue", 0);
  DerivedStorage[6] = v20;
  DerivedStorage[7] = a3;
  if (!DerivedStorage[3])
  {
    v23 = 796;
LABEL_16:
    plugin_CreateStandardPluginObjectInternal_cold_1(v23, &v25);
    v21 = v25;
    goto LABEL_17;
  }

  if (!DerivedStorage[2])
  {
    v23 = 797;
    goto LABEL_16;
  }

  if (!DerivedStorage[9])
  {
    v23 = 798;
    goto LABEL_16;
  }

  if (!DerivedStorage[10])
  {
    v23 = 799;
    goto LABEL_16;
  }

  if (!v20)
  {
    v23 = 800;
    goto LABEL_16;
  }

  v21 = FigHALAudioObjectMapperAddPluginObjectMapping(a2, cf);
  if (!v21)
  {
    *a6 = cf;
    return v21;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void plugin_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[9] = 0;
  }

  v5 = DerivedStorage[10];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[10] = 0;
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[6] = 0;
  }

  v7 = DerivedStorage[8];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[8] = 0;
  }
}

CFStringRef plugin_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __plugin_CopyDebugDescription_block_invoke;
  block[3] = &unk_1E749EFA0;
  block[4] = &v16;
  block[5] = DerivedStorage;
  dispatch_sync(v2, block);
  v3 = *(DerivedStorage + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __plugin_CopyDebugDescription_block_invoke_2;
  v6[3] = &unk_1E749EFC8;
  v6[5] = &v8;
  v6[6] = DerivedStorage;
  v6[4] = &v12;
  dispatch_sync(v3, v6);
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigHALStandardPlugin: %ld devices %ld activated endpoints %ld audio streams", v17[3], v13[3], v9[3]);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v4;
}

uint64_t plugin_HasProperty(uint64_t a1, int *a2)
{
  v2 = *a2;
  result = 1;
  if (*a2 <= 1819107690)
  {
    v4 = v2 == 1668047219;
    v5 = 1684370979;
  }

  else
  {
    v4 = v2 == 1819107691 || v2 == 1870098020;
    v5 = 1969841252;
  }

  if (!v4 && v2 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t plugin_GetPropertyDataSize(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v4 == 1668047219)
    {
      return 4;
    }

    if (v4 != 1684370979)
    {
      return 0;
    }

LABEL_9:
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v6 = *(DerivedStorage + 16);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __plugin_GetPropertyDataSize_block_invoke;
    v8[3] = &unk_1E749EFF0;
    v8[4] = &v9;
    v8[5] = DerivedStorage;
    dispatch_sync(v6, v8);
    v5 = (4 * *(v10 + 6));
    _Block_object_dispose(&v9, 8);
    return v5;
  }

  switch(v4)
  {
    case 1819107691:
      return 8;
    case 1870098020:
      goto LABEL_9;
    case 1969841252:
      return 4;
    default:
      return 0;
  }
}

uint64_t plugin_GetPropertyData(uint64_t a1, int *a2, int a3, uint64_t a4, unsigned int a5, _DWORD *a6, _DWORD *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v14 = 0;
  v15 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v15 != 1668047219)
    {
      if (v15 != 1684370979)
      {
        return v14;
      }

LABEL_11:
      v22 = 0;
      v23 = &v22;
      v24 = 0x2000000000;
      v25 = 0;
      v17 = *(DerivedStorage + 16);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __plugin_GetPropertyData_block_invoke;
      v20[3] = &unk_1E749F018;
      v21 = a5;
      v20[4] = &v22;
      v20[5] = DerivedStorage;
      v20[6] = a7;
      dispatch_sync(v17, v20);
      *a6 = 4 * *(v23 + 6);
      _Block_object_dispose(&v22, 8);
      return 0;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      v14 = 0;
      *a7 = 1634757735;
      return v14;
    }

    return 561211770;
  }

  switch(v15)
  {
    case 1819107691:
      *a6 = 8;
      if (a5 >= 8)
      {
        v14 = 0;
        *a7 = @"Apple Inc.";
        return v14;
      }

      return 561211770;
    case 1870098020:
      goto LABEL_11;
    case 1969841252:
      if (a5 <= 3)
      {
        plugin_GetPropertyData_cold_3(&v22);
      }

      else if (a3 == 8)
      {
        if (a4)
        {
          v16 = *(DerivedStorage + 16);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __plugin_GetPropertyData_block_invoke_2;
          block[3] = &__block_descriptor_tmp_14_1;
          block[4] = DerivedStorage;
          block[5] = a4;
          block[6] = a7;
          dispatch_sync(v16, block);
          v14 = 0;
          *a6 = 4;
          return v14;
        }

        plugin_GetPropertyData_cold_2(&v22);
      }

      else
      {
        plugin_GetPropertyData_cold_1(&v22);
      }

      return v22;
  }

  return v14;
}

uint64_t plugin_Initialize(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *DerivedStorage = a2;
  v5 = DerivedStorage[5];
  if (v5)
  {
    v12 = 0;
    v5(*MEMORY[0x1E695E480], DerivedStorage[1], a2, &v12);
    if (v12)
    {
      v6 = DerivedStorage[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __plugin_Initialize_block_invoke;
      block[3] = &__block_descriptor_tmp_15;
      block[4] = DerivedStorage;
      block[5] = v12;
      dispatch_sync(v6, block);
      CFRelease(v12);
    }
  }

  v7 = DerivedStorage[6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __plugin_Initialize_block_invoke_2;
  v10[3] = &unk_1E749F080;
  v10[4] = &v13;
  v10[5] = a1;
  dispatch_sync(v7, v10);
  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

void ActivatedEndpointsChangedNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage(a2) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ActivatedEndpointsChangedNotificationCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_17_1;
  block[4] = a2;
  dispatch_async(v3, block);
}

void EndpointStreamsChangedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  CFRetain(a4);
  v7 = *(DerivedStorage + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __EndpointStreamsChangedNotificationCallback_block_invoke;
  v8[3] = &__block_descriptor_tmp_18_0;
  v8[4] = a2;
  v8[5] = a4;
  dispatch_async(v7, v8);
}

void PeruseAudioStreamsForEndpoint(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  theArray = 0;
  v5 = *MEMORY[0x1E695E480];
  if (!FigEndpointCopyStreamsForTypeAndSubType(a2, *MEMORY[0x1E695E480], @"Audio", 0, &theArray))
  {
    if (!theArray)
    {
      return;
    }

    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      MutableCopy = CFArrayCreateMutableCopy(v5, Count, theArray);
      if (MutableCopy)
      {
        v8 = MutableCopy;
        v9 = *(DerivedStorage + 80);
        if (v9)
        {
          v10 = CFArrayGetCount(v9);
          if (v10 >= 1)
          {
            v11 = v10;
            for (i = 0; i != v11; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
              v25.length = CFArrayGetCount(v8);
              v25.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v25, ValueAtIndex);
              if (FirstIndexOfValue != -1)
              {
                CFArrayRemoveValueAtIndex(v8, FirstIndexOfValue);
              }
            }
          }
        }

        v15 = CFArrayGetCount(v8);
        if (v15 >= 1)
        {
          v16 = v15;
          for (j = 0; j != v16; ++j)
          {
            v18 = CFArrayGetValueAtIndex(v8, j);
            v19 = CMBaseObjectGetDerivedStorage(a1);
            v24 = 0;
            if (!(v19[4])(v5, v19[1], *v19, a2, v18, 0, &v24))
            {
              v20 = v19[2];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __CreateDeviceForEndpointStream_block_invoke;
              block[3] = &__block_descriptor_tmp_19_1;
              block[4] = v19;
              block[5] = v24;
              block[6] = a1;
              dispatch_sync(v20, block);
              FigHALAudioPropertySendChanges(*v19, 1, 2, "#vedbolg");
            }

            CFArrayAppendValue(*(DerivedStorage + 80), v18);
            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterAddListener(DefaultLocalCenter, a1, EndpointStreamDissociationNotificationCallback, @"EndpointStreamNotification_Dissociated", v18);
          }
        }

        CFRelease(v8);
      }

      else
      {
        PeruseAudioStreamsForEndpoint_cold_1();
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void __EndpointStreamsChangedNotificationCallback_block_invoke(uint64_t a1)
{
  PeruseAudioStreamsForEndpoint(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void EndpointStreamDissociationNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  CFRetain(a4);
  v7 = *(DerivedStorage + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __EndpointStreamDissociationNotificationCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_21_0;
  block[4] = a2;
  block[5] = a4;
  block[6] = DerivedStorage;
  dispatch_async(v7, block);
}

void __CreateDeviceForEndpointStream_block_invoke(uint64_t a1)
{
  CFArrayAppendValue(*(*(a1 + 32) + 24), *(a1 + 40));
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener(DefaultLocalCenter, *(a1 + 48), DeviceUnpluggedNotificationCallback, @"FigHALAudioDeviceUnplugged", *(a1 + 40));
  v3 = *(a1 + 40);

  CFRelease(v3);
}

void DeviceUnpluggedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  v7 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __DeviceUnpluggedNotificationCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a2;
  block[5] = a4;
  block[6] = DerivedStorage;
  dispatch_sync(v7, block);
  FigHALAudioPropertySendChanges(*DerivedStorage, 1, 2, "#vedbolg");
}

void __DeviceUnpluggedNotificationCallback_block_invoke(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener(DefaultLocalCenter, *(a1 + 32), DeviceUnpluggedNotificationCallback, @"FigHALAudioDeviceUnplugged", *(a1 + 40));
  v3 = *(*(a1 + 48) + 24);
  v8.length = CFArrayGetCount(v3);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v8, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    v5 = FirstIndexOfValue;
    v6 = *(*(a1 + 48) + 24);

    CFArrayRemoveValueAtIndex(v6, v5);
  }
}

void __EndpointStreamDissociationNotificationCallback_block_invoke(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener(DefaultLocalCenter, *(a1 + 32), EndpointStreamDissociationNotificationCallback, @"EndpointStreamNotification_Dissociated", *(a1 + 40));
  v3 = *(*(a1 + 48) + 80);
  v7.length = CFArrayGetCount(v3);
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v7, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(*(a1 + 48) + 80), FirstIndexOfValue);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t FigMachPortReleaseReceiveRight_(mach_port_name_t name, const char *a2, char *a3, char *a4, uint64_t a5)
{
  if (!name)
  {
    return 0;
  }

  v9 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
  v10 = v9;
  if (v9)
  {
    FigSignalErrorAt(v9, 0, "returned by mach_port_mod_refs while releasing mach port receive right", a2, a3, a4, a5);
  }

  return v10;
}

uint64_t FigMachPortReleaseSendRight_(mach_port_name_t name, const char *a2, char *a3, char *a4, uint64_t a5)
{
  v9 = mach_port_deallocate(*MEMORY[0x1E69E9A60], name);
  v10 = v9;
  if (v9)
  {
    FigSignalErrorAt(v9, 0, "returned by mach_port_deallocate while releasing mach port send right", a2, a3, a4, a5);
  }

  return v10;
}

uint64_t FigMachPortHolderGetTypeID()
{
  if (FigMachPortHolderGetTypeID_sRegisterFigMachPortHolderTypeOnce != -1)
  {
    FigMachPortHolderGetTypeID_cold_1();
  }

  return sFigMachPortHolderID;
}

uint64_t registerFigMachPortHolderType()
{
  result = _CFRuntimeRegisterClass();
  sFigMachPortHolderID = result;
  return result;
}

uint64_t FigMachPortHolderGetPort(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t FigMachPortHolderCreateWithMachSendRight(uint64_t a1, mach_port_name_t a2, void *a3)
{
  if (a2 + 1 <= 1)
  {
    FigMachPortHolderCreateWithMachSendRight_cold_5(&v8);
  }

  else if (a3)
  {
    if (FigMachPortHolderGetTypeID_sRegisterFigMachPortHolderTypeOnce != -1)
    {
      FigMachPortHolderGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      result = mach_port_mod_refs(*MEMORY[0x1E69E9A60], a2, 0, 1);
      if (!result)
      {
        v6[4] = a2;
        *a3 = v6;
        return result;
      }

      FigMachPortHolderCreateWithMachSendRight_cold_2(v6, &v8);
    }

    else
    {
      FigMachPortHolderCreateWithMachSendRight_cold_3(&v8);
    }
  }

  else
  {
    FigMachPortHolderCreateWithMachSendRight_cold_4(&v8);
  }

  return v8;
}

uint64_t FigMachPortHolder_Finalize(uint64_t a1)
{
  result = FigMachPortReleaseSendRight_(*(a1 + 16), 0, 0, 0, 0);
  *(a1 + 16) = 0;
  return result;
}

__CFString *FigMachPortHolder_CopyDescription(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigMachPortHolderRef %p> %d", a1, a1[4]);
  return Mutable;
}

BOOL FigNetworkHistoryAreAnyRequestsActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v3 = *(CMBaseObjectGetDerivedStorage(a1) + 80) != 0x7FFFFFFFFFFFFFFFLL;
  FigSimpleMutexUnlock(*DerivedStorage);
  return v3;
}

uint64_t FigNetworkHistoryGetActiveLatencyRange(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigNetworkHistoryBeginImmutabilty(a1);
  FigSimpleMutexLock(*DerivedStorage);
  FirstRequestEntryAfterTime = fnh_getFirstRequestEntryAfterTime(a1, a2);
  v10 = 0;
  for (i = 0x7FFFFFFFFFFFFFFFLL; FirstRequestEntryAfterTime; FirstRequestEntryAfterTime = fnh_getFirstRequestEntryAfterTime(a1, *FirstRequestEntryAfterTime + 1))
  {
    v12 = FirstRequestEntryAfterTime[2];
    v13 = v12 - *FirstRequestEntryAfterTime;
    if (v13 >= i)
    {
      v14 = i;
    }

    else
    {
      v14 = v12 - *FirstRequestEntryAfterTime;
    }

    if (v13 <= v10)
    {
      v13 = v10;
    }

    if (v12 >= 1)
    {
      v10 = v13;
      i = v14;
    }
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  result = FigNetworkHistoryEndImmutability(a1);
  if (i == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = i;
  }

  *a3 = v16;
  *a4 = v10;
  return result;
}

uint64_t FigNetworkHistoryBeginImmutabilty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  ++*(v3 + 112);
  FigSimpleMutexUnlock(*DerivedStorage);
  return 0;
}

uint64_t FigNetworkHistoryEndImmutability(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v11 = *(v3 + 112);
  if (v11 <= 0)
  {
    FigNetworkHistoryEndImmutability_cold_1(&v14, v4, v5, v6, v7, v8, v9, v10);
    v12 = v14;
  }

  else
  {
    *(v3 + 112) = v11 - 1;
    if (*(CMBaseObjectGetDerivedStorage(a1) + 112) <= 0)
    {
      fnh_runAllEnqueuedCommands(a1, 0);
    }

    v12 = 0;
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return v12;
}

uint64_t FigNetworkHistoryRequestBecameActive(const void *a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = CFGetAllocator(a1);
  v8 = MEMORY[0x19A8D7200](v7, 96, 0x10A0040E1FD2CC8, 0);
  v16 = v8;
  if (v8)
  {
    v8[4] = 0u;
    v8[5] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = 0u;
    v8[1] = 0u;
  }

  else if (!FigNetworkHistoryRequestBecameActive_cold_1(&v34, v9, v10, v11, v12, v13, v14, v15))
  {
    return v34;
  }

  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != a1)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistoryRequestBecameActive(Global, a2, v16 + 64);
  }

  v18 = *(DerivedStorage + 32);
  if (v18)
  {
    FigNetworkHistoryRequestBecameActive(v18, a2, v16 + 72);
  }

  FigSimpleMutexLock(*DerivedStorage);
  v19 = CMBaseObjectGetDerivedStorage(a1);
  if (*(v19 + 136))
  {
    v20 = v19;
    v21 = CFGetAllocator(a1);
    v22 = MEMORY[0x19A8D7200](v21, 104, 0x10A004015D77774, 0);
    v30 = v22;
    if (v22)
    {
      *v22 = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 96) = 0;
      *(v22 + 80) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 32) = 0u;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0;
      *(v22 + 72) = v22 + 64;
      v31.f64[0] = NAN;
      v31.f64[1] = NAN;
      *(v22 + 8) = vnegq_f64(v31);
    }

    else if (!FigNetworkHistoryRequestBecameActive_cold_2(0, v23, v24, v25, v26, v27, v28, v29))
    {
      goto LABEL_12;
    }

    FigNetworkHistoryRequestBecameActive_cold_3(v30, v16, a2, v20);
  }

LABEL_12:
  v32 = fnh_runOrEnqueueCommand(a1, fnh_requestBecameActiveCommand, v16, a2, 0, 0, 0);
  FigSimpleMutexUnlock(*DerivedStorage);
  if (a3 && !v32)
  {
    *a3 = v16;
  }

  return v32;
}

uint64_t FigNetworkHistoryGetGlobal()
{
  if (fnh_ensureGlobalNetworkHistoryIsSetup_onceToken != -1)
  {
    FigNetworkHistoryGetGlobal_cold_1();
  }

  FigSimpleMutexLock(gNetworkHistoryAccessorMutex);
  if (!gNetworkHistory)
  {
    FigNetworkHistoryGetGlobal_cold_2();
  }

  FigSimpleMutexUnlock(gNetworkHistoryAccessorMutex);
  return gNetworkHistory;
}

uint64_t fnh_runOrEnqueueCommand(const void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(CMBaseObjectGetDerivedStorage(a1) + 112) < 1)
  {
    v28[0] = a1;
    v28[1] = a3;
    v28[2] = a4;
    v28[3] = a5;
    v28[4] = a7;
    v29 = a6;
    v30 = 0;
    a2(v28);
    return 0;
  }

  else
  {
    CMBaseObjectGetDerivedStorage(a1);
    v15 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E0040ED623487uLL);
    if (v15)
    {
      v23 = v15;
      if (a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = 0;
      }

      *v15 = v24;
      if (a1)
      {
        v26 = CFRetain(a1);
      }

      else
      {
        v26 = 0;
      }

      result = 0;
      v23[1] = v26;
      v23[2] = a3;
      v23[3] = a4;
      v23[4] = a5;
      v23[5] = a7;
      *(v23 + 12) = a6;
      v23[7] = 0;
      v27 = *(DerivedStorage + 128);
      v23[8] = v27;
      *v27 = v23;
      *(DerivedStorage + 128) = v23 + 7;
    }

    else
    {
      fnh_runOrEnqueueCommand_cold_1(v28, v16, v17, v18, v19, v20, v21, v22);
      return LODWORD(v28[0]);
    }
  }

  return result;
}

void fnh_requestBecameActiveCommand(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  CMBaseObjectGetDerivedStorage(v3);
  if (*(CMBaseObjectGetDerivedStorage(v3) + 80) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = DerivedStorage[1];
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification(v5, DefaultLocalCenter, @"NetworkHistoryNotification_NetworkBecameActive", v3, 0, 0, v7, v8);
  }

  fnh_purgeExpiredListEntriesOnQueue(v3, v1);
  v9 = DerivedStorage + 7;
  v10 = (DerivedStorage + 6);
  v11 = **(DerivedStorage[7] + 8);
  *v2 = v1;
  if (v11)
  {
    while (*v11 > v1)
    {
      v11 = **(v11[11] + 8);
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v10 = (v11 + 10);
  }

LABEL_8:
  v12 = *v10;
  v2[10] = *v10;
  if (v12)
  {
    v9 = (v12 + 88);
  }

  *v9 = v2 + 10;
  *v10 = v2;
  v2[11] = v10;
  v13 = DerivedStorage[10];
  v14 = DerivedStorage[11] + 1;
  if (v13 >= v1)
  {
    v13 = v1;
  }

  DerivedStorage[10] = v13;
  DerivedStorage[11] = v14;
}

size_t fnh_setRequestSentTimestampCommand(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a1[1];
  v9 = a1[2];
  if (*v8 > v9)
  {
    return fnh_setRequestSentTimestampCommand_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  result = CMBaseObjectGetDerivedStorage(*a1);
  v8[1] = v9;
  return result;
}

uint64_t fnh_setRequestLatencyCommand(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[4];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  if (*v2 > v3)
  {
    return fnh_setRequestLatencyCommand_cold_2(DerivedStorage, v6, v7, v8, v9, v10, v11, v12);
  }

  if (v2[1] > v3)
  {
    return fnh_setRequestLatencyCommand_cold_1(DerivedStorage, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = DerivedStorage;
  CMBaseObjectGetDerivedStorage(v1);
  v2[2] = v3;
  if (v2[6] < v4)
  {
    v2[6] = v4;
  }

  result = fnh_updateEarliestActiveRequestFirstBytesSentTimestamp(v1, v3);
  ++*(v13 + 96);
  return result;
}

uint64_t FigNetworkHistoryGetFirstBandwidthSampleAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v14 = 0;
  FigSimpleMutexLock(*DerivedStorage);
  FirstBytesReceivedEntryAfterTime = fnh_getFirstBytesReceivedEntryAfterTime(a1, a2, a4, &v14, 0);
  active = fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(a1, FirstBytesReceivedEntryAfterTime, v14, a3, a4, a5);
  FigSimpleMutexUnlock(*DerivedStorage);
  return active;
}

uint64_t FigNetworkHistoryGetNextValidLatencySample(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v8 = CMBaseObjectGetDerivedStorage(a1);
  v9 = 0;
  if (a2 && *(v8 + 112) >= 1)
  {
    while (1)
    {
      v10 = a2[2];
      if (v10 >= 1)
      {
        break;
      }

      v9 = 0;
      a2 = a2[10];
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v11 = a2[5];
    *a4 = v10 - *a2;
    a4[1] = v11;
    a4[2] = a2[10];
    v9 = 1;
  }

LABEL_7:
  FigSimpleMutexUnlock(*DerivedStorage);
  return v9;
}

uint64_t FigNetworkHistoryGetFirstActiveTimestamp(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (*(CMBaseObjectGetDerivedStorage(a1) + 112) <= 0)
  {
    fnh_purgeExpiredListEntriesOnQueue(a1, a2);
  }

  if (*(CMBaseObjectGetDerivedStorage(a1) + 80) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = (DerivedStorage + 80);
    goto LABEL_7;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
LABEL_7:
    v6 = *v5;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  FigSimpleMutexUnlock(*DerivedStorage);
  return v6;
}

void fnh_purgeExpiredListEntriesOnQueue(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    v6 = DerivedStorage;
    v7 = a2 - *(DerivedStorage + 16);
    v8 = (DerivedStorage + 56);
    do
    {
      v9 = v5[10];
      v10 = v5[3];
      if (v10)
      {
        v11 = v10 < v7;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = v5[11];
        v13 = v9 + 11;
        if (!v9)
        {
          v13 = v8;
        }

        *v13 = v12;
        *v12 = v9;
        v14 = CFGetAllocator(a1);
        CFAllocatorDeallocate(v14, v5);
        --*(v6 + 88);
      }

      v5 = v9;
    }

    while (v9);
  }

  v15 = CMBaseObjectGetDerivedStorage(a1);
  v16 = *(v15 + 64);
  if (v16)
  {
    v17 = v15;
    v18 = a2 - *(v15 + 16);
    v19 = (v15 + 72);
    do
    {
      if (v18 <= v16[1])
      {
        break;
      }

      CMBaseObjectGetDerivedStorage(a1);
      v20 = v16[6];
      v21 = v16[7];
      v22 = (v20 + 56);
      if (!v20)
      {
        v22 = v19;
      }

      *v22 = v21;
      *v21 = v20;
      v23 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v23, v16);
      v16 = *(v17 + 64);
    }

    while (v16);
  }
}

size_t FigNetworkHistoricalPredictorCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  v36 = *byte_1F0B72528;
  if (a4)
  {
    FigThreadRunOnce(&FigNetworkPredictorGetClassID_sRegisterFigNetworkPredictorBaseTypeOnce, RegisterFigNetworkPredictorBaseType);
    v15 = CMDerivedObjectCreate(a1, &kFigNetworkHistoricalVTable, sFigNetworkPredictorClassID, &cf, v11, v12, v13, v14);
    if (v15)
    {
      v34 = v15;
      goto LABEL_15;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    if (a2)
    {
      v17 = CFRetain(a2);
    }

    else
    {
      v17 = 0;
    }

    *DerivedStorage = v17;
    v18 = FigSimpleMutexCreate();
    DerivedStorage[1] = v18;
    if (v18)
    {
      v26 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], &v36);
      DerivedStorage[2] = v26;
      if (v26)
      {
        v34 = 0;
        *a4 = cf;
        return v34;
      }

      FigNetworkHistoricalPredictorCreate_cold_1(&v38, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      FigNetworkHistoricalPredictorCreate_cold_2(&v38, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    FigNetworkHistoricalPredictorCreate_cold_3(&v38, a2, a3, 0, a5, a6, a7, a8);
  }

  v34 = v38;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v34;
}

uint64_t FigNetworkHistoryDisableThrottleDetection(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (!*(DerivedStorage + 42))
  {
    CMBaseObjectGetDerivedStorage(a1);
    *(DerivedStorage + 42) = 1;
  }

  v3 = *DerivedStorage;

  return FigSimpleMutexUnlock(v3);
}

size_t RegisterFigNetworkHistoryBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigNetworkHistoryClassDesc, ClassID, 1, &sFigNetworkHistoryClassID, v1, v2, v3, v4);
}

uint64_t FigNetworkHistoryGetCFTypeID()
{
  FigThreadRunOnce(&FigNetworkHistoryGetClassID_sRegisterFigNetworkHistoryBaseTypeOnce, RegisterFigNetworkHistoryBaseType);
  v0 = sFigNetworkHistoryClassID;

  return CMBaseClassGetCFTypeID(v0);
}

size_t FigNetworkHistoryCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (a3)
  {
    fig_note_initialize_category_with_default_work_cf(&gFigNetworkHistoryTrace[1], @"fnh_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, gFigNetworkHistoryTrace);
    fig_note_initialize_category_with_default_work_cf(algn_1EAF1CDC8, @"fnh_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, &qword_1EAF1CDC0);
    FigThreadRunOnce(&FigNetworkHistoryGetClassID_sRegisterFigNetworkHistoryBaseTypeOnce, RegisterFigNetworkHistoryBaseType);
    v15 = CMDerivedObjectCreate(a1, &kNetworkHistory_VTable, sFigNetworkHistoryClassID, &cf, v11, v12, v13, v14);
    if (v15)
    {
      v48 = v15;
      goto LABEL_14;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    v17 = FigSimpleMutexCreate();
    *DerivedStorage = v17;
    if (v17)
    {
      v25 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.networkhistory.notification", 0, 0);
      *(DerivedStorage + 8) = v25;
      if (v25)
      {
        *(DerivedStorage + 120) = 0;
        *(DerivedStorage + 128) = DerivedStorage + 120;
        *(DerivedStorage + 48) = 0;
        *(DerivedStorage + 56) = DerivedStorage + 48;
        *(DerivedStorage + 64) = 0;
        *(DerivedStorage + 184) = 0;
        *(DerivedStorage + 192) = DerivedStorage + 184;
        *(DerivedStorage + 160) = 0;
        *(DerivedStorage + 168) = DerivedStorage + 160;
        *(DerivedStorage + 144) = 0x7FFFFFFFFFFFFFFFLL;
        *(DerivedStorage + 16) = xmmword_197165570;
        *(DerivedStorage + 72) = DerivedStorage + 64;
        *(DerivedStorage + 80) = 0x7FFFFFFFFFFFFFFFLL;
        *(DerivedStorage + 40) = 257;
        *(DerivedStorage + 88) = 0;
        if (a2)
        {
          FigCFDictionaryGetInt64IfPresent(a2, @"NetworkHistoryCreateOption_MaxWindowSize", DerivedStorage + 16, v28, v29, v30, v31, v32, cf, v51, v52, v53, v54, v55, v56, v57, v58, v59);
          FigCFDictionaryGetInt64IfPresent(a2, @"NetworkHistoryCreateOption_BytesReceivedMaxResolution", DerivedStorage + 24, v33, v34, v35, v36, v37, cf, v51, v52, v53, v54, v55, v56, v57, v58, v59);
          FigCFDictionaryGetBooleanIfPresent(a2, @"NetworkHistoryCreateOption_EnableLogging", DerivedStorage + 40, v38, v39, v40, v41, v42, cf, v51, v52, v53, v54, v55, v56, v57, v58, v59);
          FigCFDictionaryGetBooleanIfPresent(a2, @"NetworkHistoryCreateOption_ContributesToGlobalHistory", DerivedStorage + 41, v43, v44, v45, v46, v47, cf, v51, v52, v53, v54, v55, v56, v57, v58, v59);
        }

        CMBaseObjectGetDerivedStorage(cf);
        v48 = 0;
        *a3 = cf;
        return v48;
      }

      FigNetworkHistoryCreate_cold_1(&v51 + 1, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      FigNetworkHistoryCreate_cold_2(&v51 + 1, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    FigNetworkHistoryCreate_cold_3(&v51 + 1, a2, 0, a4, a5, a6, a7, a8);
  }

  v48 = HIDWORD(v51);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v48;
}

size_t RegisterFigNetworkPredictorBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigNetworkPredictorClassDesc, ClassID, 1, &sFigNetworkPredictorClassID, v1, v2, v3, v4);
}

uint64_t FigNetworkPredictorGetCFTypeID()
{
  FigThreadRunOnce(&FigNetworkPredictorGetClassID_sRegisterFigNetworkPredictorBaseTypeOnce, RegisterFigNetworkPredictorBaseType);
  v0 = sFigNetworkPredictorClassID;

  return CMBaseClassGetCFTypeID(v0);
}

uint64_t FigNetworkHistoryCopySerializedRecordData(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a3)
  {
    v13 = DerivedStorage;
    *a3 = 0;
    FigSimpleMutexLock(*DerivedStorage);
    if (*(v13 + 137))
    {
      v19 = 4294949563;
    }

    else if (*(v13 + 136) && (v14 = (12 * (*(v13 + 156) + *(v13 + 152)) + 24 * (*(v13 + 176) + *(v13 + 200)) + 24), (v15 = MEMORY[0x19A8D7200](a2, v14, 0x100004077774924, 0)) != 0))
    {
      v16 = v15;
      *v15 = 0x34E574852;
      v17 = *(v13 + 156) + *(v13 + 152);
      *(v15 + 16) = *(v13 + 176) + *(v13 + 200);
      *(v15 + 20) = v17;
      *(v15 + 8) = *(v13 + 144) / 0x3E8uLL;
      v21 = 24;
      fnh_writeSerializedRecordDataForRequestEntryList(v13, v16, v16, &v21);
      fnh_writeSerializedRecordDataForRequestEntryList(v13, v16, v16, &v21);
      v18 = CFDataCreateWithBytesNoCopy(a2, v16, v14, a2);
      if (!v18)
      {
        FigNetworkHistoryCopySerializedRecordData_cold_1(v13, a2, v16, &v22);
        return v22;
      }

      v19 = 0;
      *a3 = v18;
    }

    else
    {
      v19 = 0;
    }

    FigSimpleMutexUnlock(*v13);
  }

  else
  {
    FigNetworkHistoryCopySerializedRecordData_cold_2(&v23, v6, v7, v8, v9, v10, v11, v12);
    return v23;
  }

  return v19;
}

uint64_t fnh_writeSerializedRecordDataForRequestEntryList(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(result + 184);
  if (v4)
  {
    v5 = *(a2 + 8);
    v6 = *a4;
    do
    {
      v7 = ((*v4 >> 3) * 0x20C49BA5E353F7CFuLL) >> 64;
      v8 = *v4 / 0x3E8uLL;
      if (!v5)
      {
        *(a2 + 8) = v8;
        v5 = v7 >> 4;
      }

      v9 = (a3 + v6);
      *v9 = v8 - v5;
      v10 = v4[6];
      v11 = v4[10];
      v9[4] = v4[3] / 0x3E8uLL - v5;
      v9[5] = v11;
      v12 = v4[1];
      v13 = v4[2];
      v14 = v13 == 0x7FFFFFFFFFFFFFFFLL;
      v15 = v13 / 0x3E8 - v5;
      if (v14)
      {
        v15 = 0x7FFFFFFF;
      }

      v9[2] = v15;
      v9[3] = v10;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFF;
      }

      else
      {
        v16 = v12 / 0x3E8 - v5;
      }

      v9[1] = v16;
      v6 += 24;
      for (i = v4[8]; i; i = *(i + 48))
      {
        v18 = (a3 + v6);
        v19 = *(i + 24);
        *v18 = *i / 0x3E8uLL - v5;
        v18[1] = v19;
        v18[2] = *(i + 40);
        v6 += 12;
      }

      v4 = v4[11];
    }

    while (v4);
  }

  return result;
}

uint64_t FigNetworkHistoryEnableRecord(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  if (*(v3 + 136) != 1)
  {
    *(v3 + 136) = 1;
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return 0;
}

uint64_t FigNetworkHistoryDisableRecord(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  if (*(v3 + 136))
  {
    *(v3 + 136) = 0;
    fnh_freeAllRecordRequestEntries(a1);
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return 0;
}

uint64_t fnh_updateEarliestActiveRequestFirstBytesSentTimestamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  *(DerivedStorage + 80) = 0x7FFFFFFFFFFFFFFFLL;
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    v6 = DerivedStorage;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v8 = *v5;
      if (v5[3] < *v5)
      {
        BytesSentTimestampForRequestEntry = fnh_firstBytesSentTimestampForRequestEntry(v5, a2);
        if (BytesSentTimestampForRequestEntry < v4)
        {
          v4 = BytesSentTimestampForRequestEntry;
        }

        if (v8 < v7)
        {
          v7 = v8;
        }

        *(v6 + 80) = v7;
      }

      v5 = v5[10];
    }

    while (v5);
  }

  return v4;
}

uint64_t fnh_firstBytesSentTimestampForRequestEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = *a1;
  }

  v3 = *(a1 + 16);
  if (v3 < 1)
  {
    v10 = v2 + 250000000;
    if ((a2 - *a1) <= 0x1DCD6500)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = v2 + (v3 - v2) / 2;
    v6 = v3 - 500000 * v4;
    if (v4 >= 1)
    {
      v7 = v6 >= v2;
      v8 = v6 == v2;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (!v8 && v7)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t fnh_createBytesReceivedEntry(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = MEMORY[0x19A8D7200](a1, 64, 0x10A004033F072BFLL, 0);
  if (v5)
  {
    v13 = v5;
    result = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = a2;
    *(v13 + 8) = a2;
    *(v13 + 16) = a2;
    *a3 = v13;
  }

  else
  {
    fnh_createBytesReceivedEntry_cold_1(&v15, v6, v7, v8, v9, v10, v11, v12);
    return v15;
  }

  return result;
}

void fnh_runAllEnqueuedCommands(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v5 = *(DerivedStorage + 120);
  if (v5)
  {
    v6 = (DerivedStorage + 128);
    do
    {
      v7 = *(v5 + 7);
      v8 = v7;
      if (!a2)
      {
        CMBaseObjectGetDerivedStorage(a1);
        v9 = *v5;
        v10 = *(v5 + 8);
        v11 = *(v5 + 40);
        v15[1] = *(v5 + 24);
        v15[2] = v11;
        v15[0] = v10;
        v9(v15);
        v8 = *(v5 + 7);
      }

      v12 = *(v5 + 8);
      v13 = v8 + 64;
      if (!v8)
      {
        v13 = v6;
      }

      *v13 = v12;
      *v12 = v8;
      v14 = *(v5 + 1);
      if (v14)
      {
        CFRelease(v14);
      }

      free(v5);
      v5 = v7;
    }

    while (v7);
  }
}

size_t fnh_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  fnh_runAllEnqueuedCommands(a1, 1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  for (i = *(v3 + 48); i; i = *(v3 + 48))
  {
    v5 = i[10];
    v6 = i[11];
    v7 = (v5 + 88);
    if (!v5)
    {
      v7 = (v3 + 56);
    }

    *v7 = v6;
    *v6 = v5;
    v8 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v8, i);
  }

  *(v3 + 88) = 0;
  v9 = CMBaseObjectGetDerivedStorage(a1);
  v10 = *(v9 + 64);
  if (v10)
  {
    v11 = v9;
    v12 = (v9 + 72);
    do
    {
      v13 = v10[6];
      v14 = v10[7];
      v15 = (v13 + 56);
      if (!v13)
      {
        v15 = v12;
      }

      *v15 = v14;
      *v14 = v13;
      v16 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v16, v10);
      v10 = *(v11 + 64);
    }

    while (v10);
  }

  fnh_freeAllRecordRequestEntries(a1);
  v17 = *(DerivedStorage + 32);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 104);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 8);
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = *DerivedStorage;

  return FigSimpleMutexDestroy(v20);
}

const void *fnh_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (FigCFEqual(@"FigNetworkHistoryProperty_GroupHistory", a2))
  {
    if (a3)
    {
      FigThreadRunOnce(&FigNetworkHistoryGetClassID_sRegisterFigNetworkHistoryBaseTypeOnce, RegisterFigNetworkHistoryBaseType);
      CFTypeID = CMBaseClassGetCFTypeID(sFigNetworkHistoryClassID);
      if (CFTypeID == CFGetTypeID(a3))
      {
        v10 = *(DerivedStorage + 32);
        *(DerivedStorage + 32) = a3;
        CFRetain(a3);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      a3 = 0;
    }
  }

  else
  {
    a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE10uLL, "<<<< FigNetworkHistory >>>>", 0x6B5, v3, v7, v8);
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return a3;
}

void fnh_freeAllRecordRequestEntries(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  for (i = *(DerivedStorage + 160); i; i = *(DerivedStorage + 160))
  {
    v4 = i[11];
    v5 = i[12];
    v6 = (v4 + 96);
    if (!v4)
    {
      v6 = (DerivedStorage + 168);
    }

    *v6 = v5;
    *v5 = v4;
    fnh_freeRecordRequestEntry(a1, i);
  }

  *(DerivedStorage + 176) = 0;
  for (j = *(DerivedStorage + 184); j; j = *(DerivedStorage + 184))
  {
    v8 = j[11];
    v9 = j[12];
    v10 = (v8 + 96);
    if (!v8)
    {
      v10 = (DerivedStorage + 192);
    }

    *v10 = v9;
    *v9 = v8;
    fnh_freeRecordRequestEntry(a1, j);
  }

  *(DerivedStorage + 200) = 0;
  *(DerivedStorage + 137) = 0;
  *(DerivedStorage + 152) = 0;
}

void fnh_freeRecordRequestEntry(CFTypeRef cf, void *a2)
{
  for (i = a2[8]; i; i = a2[8])
  {
    v5 = i[6];
    v6 = i[7];
    v7 = (v5 + 56);
    if (!v5)
    {
      v7 = a2 + 9;
    }

    *v7 = v6;
    *v6 = v5;
    v8 = CFGetAllocator(cf);
    CFAllocatorDeallocate(v8, i);
  }

  v9 = CFGetAllocator(cf);

  CFAllocatorDeallocate(v9, a2);
}

uint64_t fnh_globalNetworkHistoryOnce()
{
  result = FigSimpleMutexCreate();
  gNetworkHistoryAccessorMutex = result;
  return result;
}

size_t fnhp_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 8);

  return FigSimpleMutexDestroy(v3);
}

uint64_t fnhp_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!CFEqual(a2, @"NetworkPredictorProperty_History"))
  {
    return 4294949566;
  }

  if (*DerivedStorage)
  {
    v7 = CFRetain(*DerivedStorage);
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a4 = v7;
  return result;
}

CFIndex fnhp_makeSafeBandwidthMultiplier(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  *v72 = *(a1 + 112);
  *v73 = v4;
  *v74 = *(a1 + 144);
  memset(__s2, 0, sizeof(__s2));
  v5 = *(a1 + 96);
  *theArray = *(a1 + 80);
  *v71 = v5;
  result = memcmp(theArray, __s2, 0x50uLL);
  if (result)
  {
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(theArray[0], *(a1 + 72), v7, v8, v9, v10, v11, v12, v13);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(theArray[1], *a2, v14, v15, v16, v17, v18, v19, v20);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(v71[0], *(a2 + 8) / *a2, v21, v22, v23, v24, v25, v26, v27);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(v71[1], *(a2 + 8) / sqrt(*(a2 + 48)), v28, v29, v30, v31, v32, v33, v34);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(v72[1], *(a2 + 32), v35, v36, v37, v38, v39, v40, v41);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(v73[0], *(a2 + 40) / *(a2 + 32), v42, v43, v44, v45, v46, v47, v48);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(v73[1], *(a2 + 40) / sqrt(*(a2 + 48)), v49, v50, v51, v52, v53, v54, v55);
    fnhp_makeSafeBandwidthMultiplierForSingleVariable(v74[0], *(a2 + 48), v56, v57, v58, v59, v60, v61, v62);
    return fnhp_makeSafeBandwidthMultiplierForSingleVariable(v72[0], *(a2 + 16) / *a2, v63, v64, v65, v66, v67, v68, v69);
  }

  return result;
}

uint64_t fnhp_getStartTimestamp(uint64_t a1, uint64_t LastActiveTimestamp, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 160))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    LastActiveTimestamp = FigNetworkHistoryGetLastActiveTimestamp(*DerivedStorage, LastActiveTimestamp);
  }

  return (LastActiveTimestamp - fnhp_getWindowSize(a1, *(a3 + 16))) / a4 * a4;
}

uint64_t fnhp_getWindowSize(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2 <= 0)
  {
    return *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 16);
  }

  return a2;
}

double fnhp_constantWeightForBandwidthSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1.0;
  if ((*(a4 + 8) & 4) != 0)
  {
    v5 = *(a1 + 32);
    v6 = v5 >> 10;
    if (v5 >> 10 <= 1)
    {
      v6 = 1;
    }

    if (v5 < 1)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

double fnhp_bwSampleVarianceLimitingAtMean(double result, double a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

CFNumberRef fnhp_createBandwidthPredictionCacheKey(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 5);
  valuePtr[1] = 0;
  v7 = 0u;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  valuePtr[0] = v2;
  valuePtr[2] = v3;
  if (v2 == 4)
  {
    v8 = v4;
  }

  v20 = a2;
  valuePtr[0] = CFHashBytes();
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, valuePtr);
}

CFIndex fnhp_makeSafeBandwidthMultiplierForSingleVariable(CFArrayRef theArray, long double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  v11 = 0;
  v12 = 0.0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v11 < result; result = 0)
  {
    v15 = 0.0;
    if (FigCFArrayGetDoubleAtIndex(theArray, v11, &v15, a5, a6, a7, a8, a9))
    {
      v14 = v15;
      v12 = v12 + v14 * pow(a2, v11);
    }

    ++v11;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

double fnhp_linearTimeWeightForBandwidthSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a1 + 8) - a2) / 1000000000.0;
  if ((*(a4 + 8) & 4) != 0)
  {
    v5 = *(a1 + 32);
    v6 = v5 >> 10;
    if (v5 >> 10 <= 1)
    {
      v6 = 1;
    }

    if (v5 < 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v4 = v4 * v7;
  }

  return fmax(v4, 0.0);
}

double fnhp_quadraticTimeWeightForBandwidthSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a1 + 8) - a2) / 1000000000.0;
  v5 = v4 * v4;
  if ((*(a4 + 8) & 4) != 0)
  {
    v6 = *(a1 + 32);
    v7 = v6 >> 10;
    if (v6 >> 10 <= 1)
    {
      v7 = 1;
    }

    if (v6 < 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v5 = v5 * v8;
  }

  return fmax(v5, 0.0);
}

double fnhp_quadraticTimeWeightWithHighPassUtilizationFilterForBandwidthSample(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1[1] - a2) / 1000000000.0;
  v6 = v5 * v5;
  if ((*(a4 + 8) & 4) != 0)
  {
    v7 = a1[4];
    v8 = v7 >> 10;
    if (v7 >> 10 <= 1)
    {
      v8 = 1;
    }

    if (v7 < 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v6 = v6 * v9;
  }

  v10 = fmax(v6, 0.0);
  v11 = *(a4 + 40);
  if (v11 > 0.0)
  {
    v12 = *a5 + -0.01;
    v10 = v10 * (v12 / (exp(-(*(a4 + 48) * (a1[6] / *(a5 + 8) - v11))) + 1.0) + 0.01);
  }

  return fmax(v10, 0.0);
}

double fnhp_logisticTimeWeightForBandwidthSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 10000000.0 / (exp(((*(a1 + 8) - a2) / (a3 - a2) + -0.916666667) * -25.0) + 1.0);
  if ((*(a4 + 8) & 4) != 0)
  {
    v7 = *(a1 + 32);
    v8 = v7 >> 10;
    if (v7 >> 10 <= 1)
    {
      v8 = 1;
    }

    if (v7 < 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v6 = v6 * v9;
  }

  return fmax(v6, 0.0);
}

void *OUTLINED_FUNCTION_5_6()
{

  return memcpy(&STACK[0x2B8], v0, 0xE0uLL);
}

void *OUTLINED_FUNCTION_6_6(void *a1)
{

  return memcpy(a1, v1, 0xE0uLL);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return fnh_runOrEnqueueCommand(v3, v0, v2, v1, 0, 0, 0);
}

void *OUTLINED_FUNCTION_10_2()
{

  return memcpy(&STACK[0x2D0], v0, 0xE0uLL);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x2A8] = v67;

  return fnhp_constantLatencyPredictionAlgorithm(a18, v68, &a67, &a23);
}

double OUTLINED_FUNCTION_14_0()
{
  STACK[0x210] = 0;
  result = 0.0;
  *&STACK[0x200] = 0u;
  return result;
}

uint64_t FigTransportConnectionXPCSetCurrentConnection(uint64_t a1)
{
  if (_MergedGlobals_17 != -1)
  {
    FigTransportConnectionXPCSetCurrentConnection_cold_1();
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    FigSimpleMutexLock(qword_1ED4CC590);
    if (qword_1ED4CC578)
    {
      CFRelease(qword_1ED4CC578);
    }

    qword_1ED4CC578 = FigCFWeakReferenceHolderCreateWithReferencedObject(a1);
    if (qword_1ED4CC588)
    {
      _Block_release(qword_1ED4CC588);
    }

    qword_1ED4CC588 = FigTransportConnectionUSBCopyEventHandler(a1);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __FigTransportConnectionXPCSetCurrentConnection_block_invoke;
    v4[3] = &__block_descriptor_tmp_16;
    v4[4] = &qword_1ED4CC578;
    v3 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
    if (v3)
    {
      v3(a1, 0, v4);
    }

    return FigSimpleMutexUnlock(qword_1ED4CC590);
  }

  return result;
}

size_t FigTransportXPCConnectionServerStart()
{
  v22 = *MEMORY[0x1E69E9840];
  v16[0] = 1;
  v16[1] = ntcxpc_handleClientMessage;
  v16[2] = 0;
  v16[4] = 0;
  v16[5] = 0;
  v16[3] = ntcxpc_verifyConnection;
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = FigXPCServerStart("com.apple.coremedia.nerotransportconnectionxpc", v16, 0, &FigTransportXPCConnectionServerStart_sNTCServer);
  if (!v0)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v15, &type);
    v2 = v15;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v4 = v2;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v17 = 136315138;
      v18 = "FigTransportXPCConnectionServerStart";
      v5 = _os_log_send_and_compose_impl();
      LOBYTE(v2) = v15;
    }

    else
    {
      v5 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v5, v5 != v21, v2, 0, v3);
    return 0;
  }

  v6 = v0;
  v15 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v15, &type);
  v9 = v15;
  if (os_log_type_enabled(v8, type))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFE;
  }

  if (v11)
  {
    v17 = 136315394;
    v18 = "FigTransportXPCConnectionServerStart";
    v19 = 1024;
    v20 = v6;
    v12 = _os_log_send_and_compose_impl();
    v13 = v15;
  }

  else
  {
    v13 = v9;
    v12 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v12, v12 != v21, v13, 0, v10);
  return v6;
}

BOOL ntcxpc_verifyConnection(_xpc_connection_s *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  pid = xpc_connection_get_pid(a1);
  HasEntitlement = FigXPCConnectionHasEntitlement(a1, "com.apple.coremedia.nerotransportconnectionxpc.allow");
  if (!HasEntitlement)
  {
    v11[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v11, &type);
    v5 = v11[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v11[1] = 136315394;
      v12 = "ntcxpc_verifyConnection";
      v13 = 1024;
      v14 = pid;
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v5) = v11[0];
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v8, v8 != &v15, v5, 0, v6);
  }

  return HasEntitlement;
}

uint64_t __ntcxpc_getReceiver_block_invoke()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CC590 = result;
  return result;
}

uint64_t FigScheduledIOGetTypeID()
{
  FigThreadRunOnce(&FigScheduledIOGetClassID_sRegisterFigScheduledIOBaseTypeOnce, RegisterFigScheduledIOBaseType);
  v0 = sFigScheduledIOClassID;

  return CMBaseClassGetCFTypeID(v0);
}

size_t RegisterFigScheduledIOBatchBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigScheduledIOBatchClassDesc, ClassID, 1, &sFigScheduledIOBatchClassID, v1, v2, v3, v4);
}

uint64_t FigScheduledIOBatchGetTypeID()
{
  FigThreadRunOnce(&FigScheduledIOGetClassID_sRegisterFigScheduledIOBaseTypeOnce, RegisterFigScheduledIOBaseType);
  v0 = sFigScheduledIOClassID;

  return CMBaseClassGetCFTypeID(v0);
}

uint64_t FigReadSchedulerCopyForByteStream(uint64_t a1, int a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigReadSchedulerCopyForByteStream_cold_7(__str);
    return *__str;
  }

  v3 = a3;
  if (!a3)
  {
    FigReadSchedulerCopyForByteStream_cold_6(__str);
    return *__str;
  }

  if (rsRegistry_OneTimeInitialization_sRSRegistryInitOnce != -1)
  {
    FigReadSchedulerCopyForByteStream_cold_1();
  }

  v5 = CFRetain(*MEMORY[0x1E695E738]);
  BYTE2(v53) = 0;
  FigCFDictionaryGetBooleanIfPresent(a2, @"readSchedulerCreationOption_NonRealTime", &v53 + 2, v6, v7, v8, v9, v10, v47, v49, v51, v53, *__str, *&__str[8], v55, *(&v55 + 1), v56[0], v56[1]);
  v11 = BYTE2(v53);
  FigSimpleMutexLock(gRSRegistry_0);
  Value = CFDictionaryGetValue(gRSRegistry_1, v5);
  v13 = MEMORY[0x1E695E480];
  if (Value)
  {
    v14 = CFRetain(Value);
    if (v14)
    {
      v15 = v14;
      v16 = CFDictionaryGetValue(v14, (v11 != 0));
      if (v16)
      {
        v17 = FigCFWeakReferenceHolderCopyReferencedObject(v16);
        if (v17)
        {
          v18 = v17;
LABEL_35:
          v44 = 0;
          goto LABEL_36;
        }
      }

LABEL_11:
      v19 = *v13;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *v56 = 0u;
      v57 = 0u;
      *__str = 0u;
      v55 = 0u;
      if (qword_1ED4CC5B0 != -1)
      {
        FigReadSchedulerCopyForByteStream_cold_2();
      }

      Instance = _CFRuntimeCreateInstance();
      if (!Instance)
      {
        FigReadSchedulerCopyForByteStream_cold_4(&v53 + 1);
        v44 = HIDWORD(v53);
LABEL_53:
        v18 = 0;
LABEL_36:
        *v3 = v18;
        FigSimpleMutexUnlock(gRSRegistry_0);
        if (!v5)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      v18 = Instance;
      *(Instance + 16) = 0;
      BYTE3(v53) = 0;
      FigCFDictionaryGetBooleanIfPresent(a2, @"readSchedulerCreationOption_NonRealTime", &v53 + 3, v21, v22, v23, v24, v25, v48, v50, v3, v53, *__str, *&__str[8], v55, *(&v55 + 1), v56[0], v56[1]);
      v26 = 49;
      if (BYTE3(v53))
      {
        v27 = 49;
      }

      else
      {
        v27 = 4;
      }

      if (!BYTE3(v53))
      {
        v26 = 4;
      }

      snprintf((v18 + 400), 0x10uLL, "%p-%02d", v18, v26);
      Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v29 = CFStringCreateWithFormat(v19, 0, @"ReadScheduler-%s", v18 + 400);
      CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", v29);
      *(v18 + 104) = CMMemoryPoolCreate(Mutable);
      if (v29)
      {
        CFRelease(v29);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v30 = *(v18 + 104);
      if (v30)
      {
        Allocator = CMMemoryPoolGetAllocator(v30);
        *(v18 + 112) = Allocator;
        if (Allocator)
        {
          CFRetain(Allocator);
          snprintf(__str, 0x100uLL, "com.apple.coremedia.readscheduler.%s.internal", (v18 + 400));
          v32 = FigDispatchQueueCreateWithPriority(__str, 0, 4);
          *(v18 + 56) = v32;
          if (v32)
          {
            snprintf(__str, 0x100uLL, "com.apple.coremedia.readscheduler.%s.requests", (v18 + 400));
            v33 = dispatch_queue_create_with_target_V2(__str, 0, *(v18 + 56));
            *(v18 + 64) = v33;
            if (v33)
            {
              snprintf(__str, 0x100uLL, "com.apple.coremedia.readscheduler.%s.callbacks", (v18 + 400));
              v34 = FigDispatchQueueCreateWithPriority(__str, 0, 4);
              *(v18 + 72) = v34;
              if (v34)
              {
                *(v18 + 376) = 0;
                snprintf(__str, 0x100uLL, "com.apple.coremedia.readscheduler.%s.reads", (v18 + 400));
                v35 = FigDispatchQueueCreateWithPriority(__str, 0, v27);
                *(v18 + 120) = v35;
                if (v35)
                {
                  v36 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
                  *(v18 + 24) = v36;
                  if (v36)
                  {
                    v37 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
                    *(v18 + 32) = v37;
                    v3 = v52;
                    if (v37)
                    {
                      v38 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
                      *(v18 + 40) = v38;
                      if (v38)
                      {
                        v39 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
                        *(v18 + 48) = v39;
                        if (v39)
                        {
                          *(v18 + 88) = xmmword_1971655E0;
                          v40 = *MEMORY[0x1E69E9AC8];
                          *(v18 + 392) = *MEMORY[0x1E69E9AC8];
                          *(v18 + 388) = 0x200000 / v40;
                          v41 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v18 + 64));
                          *(v18 + 80) = v41;
                          if (v41)
                          {
                            v42 = FigCFWeakReferenceHolderCreateWithReferencedObject(v18);
                            dispatch_set_context(*(v18 + 80), v42);
                            dispatch_source_set_event_handler_f(*(v18 + 80), readScheduler_DeadlineTimerHandler);
                            dispatch_source_set_cancel_handler_f(*(v18 + 80), readScheduler_DeadlineTimerCancelCallback);
                            dispatch_resume(*(v18 + 80));
                            v43 = FigCFWeakReferenceHolderCreateWithReferencedObject(v18);
                            CFDictionarySetValue(v15, (v11 != 0), v43);
                            CFDictionarySetValue(gRSRegistry_1, v5, v15);
                            CFRelease(v43);
                            goto LABEL_35;
                          }

                          v46 = 654;
                        }

                        else
                        {
                          v46 = 646;
                        }
                      }

                      else
                      {
                        v46 = 644;
                      }
                    }

                    else
                    {
                      v46 = 642;
                    }

                    goto LABEL_52;
                  }

                  v46 = 640;
                }

                else
                {
                  v46 = 636;
                }
              }

              else
              {
                v46 = 618;
              }
            }

            else
            {
              v46 = 614;
            }
          }

          else
          {
            v46 = 605;
          }
        }

        else
        {
          v46 = 597;
        }
      }

      else
      {
        v46 = 595;
      }

      v3 = v52;
LABEL_52:
      FigReadSchedulerCopyForByteStream_cold_3(v46, v18, &v53 + 1);
      v44 = HIDWORD(v53);
      goto LABEL_53;
    }
  }

  v15 = CFDictionaryCreateMutable(*v13, 2, 0, MEMORY[0x1E695E9E8]);
  if (v15)
  {
    goto LABEL_11;
  }

  FigReadSchedulerCopyForByteStream_cold_5(__str);
  v44 = *__str;
  if (v5)
  {
LABEL_37:
    CFRelease(v5);
  }

LABEL_38:
  if (v15)
  {
    CFRelease(v15);
  }

  return v44;
}

uint64_t rsBatch_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigReadSchedulerCreateBatch(void *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigReadSchedulerCreateBatch_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    FigReadSchedulerCreateBatch_cold_1(&v9);
    return v9;
  }

  v4 = CFGetAllocator(a1);
  v5 = rsBatch_Create(v4, &cf);
  v6 = cf;
  if (v5)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigCFWeakReferenceStore(cf + 2, a1);
    *a2 = v6;
  }

  return v5;
}

uint64_t rsBatch_Create(const __CFAllocator *a1, void *a2)
{
  if (_MergedGlobals_18 != -1)
  {
    rsBatch_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 52) = 0;
    *(Instance + 48) = 0;
    v6 = dispatch_group_create();
    v5[5] = v6;
    if (v6)
    {
      v7 = FigSimpleMutexCreate();
      v5[3] = v7;
      if (v7)
      {
        Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
        v5[4] = Mutable;
        if (Mutable)
        {
          result = 0;
          *a2 = v5;
          return result;
        }

        v10 = 975;
      }

      else
      {
        v10 = 973;
      }
    }

    else
    {
      v10 = 971;
    }

    rsBatch_Create_cold_2(v10, v5, &v11);
    return v11;
  }

  else
  {
    rsBatch_Create_cold_3(&v12);
    return v12;
  }
}

uint64_t FigReadSchedulerBatchAddReadWithDeadline(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  value = 0;
  if (!a1)
  {
    FigReadSchedulerBatchAddReadWithDeadline_cold_6(&v27);
    return v27;
  }

  FigSimpleMutexLock(*(a1 + 24));
  if (*(a1 + 52))
  {
    FigReadSchedulerBatchAddReadWithDeadline_cold_1(&v27);
LABEL_21:
    v23 = v27;
    FigSimpleMutexUnlock(*(a1 + 24));
    return v23;
  }

  if (!a3)
  {
    FigReadSchedulerBatchAddReadWithDeadline_cold_5(&v27);
    goto LABEL_21;
  }

  if (!a5)
  {
    FigReadSchedulerBatchAddReadWithDeadline_cold_4(&v27);
    goto LABEL_21;
  }

  if (!a9)
  {
    FigReadSchedulerBatchAddReadWithDeadline_cold_3(&v27);
    goto LABEL_21;
  }

  v20 = FigCFWeakReferenceLoadAndRetain((a1 + 16));
  if (!v20)
  {
    FigReadSchedulerBatchAddReadWithDeadline_cold_2(&v27);
    goto LABEL_21;
  }

  v21 = v20;
  v22 = CFGetAllocator(v20);
  v23 = rsRequest_Create(v22, v21, a2, a3, a4, a5, a6, 0, a7, a8, a9, a10, a11, &value);
  v24 = value;
  if (!v23 && (CFSetAddValue(*(a1 + 32), value), a12))
  {
    *a12 = v24[4];
    FigSimpleMutexUnlock(*(a1 + 24));
  }

  else
  {
    FigSimpleMutexUnlock(*(a1 + 24));
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v24);
LABEL_13:
  CFRelease(v21);
  return v23;
}

uint64_t rsRequest_Create(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (qword_1ED4CC5C0 != -1)
  {
    rsRequest_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v22 = Instance;
    Instance[2] = a2;
    Instance[3] = a3;
    Instance[4] = FigAtomicIncrement64(&gNextRequestID);
    if (a7)
    {
      v23 = CFRetain(a7);
    }

    else
    {
      v23 = 0;
    }

    v22[5] = v23;
    v24 = CFRetain(a4);
    result = 0;
    v22[7] = a5;
    v22[8] = a6;
    v22[6] = v24;
    *(v22 + 104) = a8;
    v22[11] = a9;
    v22[12] = a10;
    v22[14] = a11;
    v22[15] = a12;
    v22[16] = a13;
    *a14 = v22;
  }

  else
  {
    rsRequest_Create_cold_2(&v26);
    return v26;
  }

  return result;
}

uint64_t FigReadSchedulerBatchAddBackgroundRead(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  value = 0;
  if (!a1)
  {
    FigReadSchedulerBatchAddBackgroundRead_cold_6(&v26);
    return v26;
  }

  FigSimpleMutexLock(*(a1 + 24));
  if (*(a1 + 52))
  {
    FigReadSchedulerBatchAddBackgroundRead_cold_1(&v26);
LABEL_21:
    v22 = v26;
    FigSimpleMutexUnlock(*(a1 + 24));
    return v22;
  }

  if (!a3)
  {
    FigReadSchedulerBatchAddBackgroundRead_cold_5(&v26);
    goto LABEL_21;
  }

  if (!a5)
  {
    FigReadSchedulerBatchAddBackgroundRead_cold_4(&v26);
    goto LABEL_21;
  }

  if (!a8)
  {
    FigReadSchedulerBatchAddBackgroundRead_cold_3(&v26);
    goto LABEL_21;
  }

  v19 = FigCFWeakReferenceLoadAndRetain((a1 + 16));
  if (!v19)
  {
    FigReadSchedulerBatchAddBackgroundRead_cold_2(&v26);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = CFGetAllocator(v19);
  v22 = rsRequest_Create(v21, v20, a2, a3, a4, a5, a6, 1, a7, 0, a8, a9, a10, &value);
  v23 = value;
  if (!v22 && (CFSetAddValue(*(a1 + 32), value), a11))
  {
    *a11 = v23[4];
    FigSimpleMutexUnlock(*(a1 + 24));
  }

  else
  {
    FigSimpleMutexUnlock(*(a1 + 24));
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v23);
LABEL_13:
  CFRelease(v20);
  return v22;
}

uint64_t FigReadSchedulerBatchCommit(uint64_t a1)
{
  if (!a1)
  {
    FigReadSchedulerBatchCommit_cold_3(&v10);
    return v10;
  }

  FigSimpleMutexLock(*(a1 + 24));
  if (*(a1 + 52))
  {
    v6 = 0;
LABEL_11:
    FigSimpleMutexUnlock(*(a1 + 24));
    return v6;
  }

  v2 = FigCFWeakReferenceLoadAndRetain((a1 + 16));
  if (!v2)
  {
    FigReadSchedulerBatchCommit_cold_2(&v9);
    v6 = v9;
    goto LABEL_11;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v4)
  {
    v5 = v4;
    v4[1] = CFRetain(a1);
    *v5 = CFRetain(v3);
    *(a1 + 52) = 1;
    dispatch_group_enter(*(a1 + 40));
    dispatch_async_f(v3[8], v5, readScheduler_HandleBatchCommit);
    v6 = 0;
  }

  else
  {
    FigReadSchedulerBatchCommit_cold_1(&v8);
    v6 = v8;
  }

  FigSimpleMutexUnlock(*(a1 + 24));
  CFRelease(v3);
  return v6;
}

void readScheduler_HandleBatchCommit(uint64_t a1)
{
  Count = CFSetGetCount(*(*(a1 + 8) + 32));
  v3 = *a1;
  if (Count)
  {
    CFArrayAppendValue(v3[6], *(a1 + 8));
    CFSetApplyFunction(*(*(a1 + 8) + 32), readScheduler_BatchRequestIngestApplierFunction, *a1);
    readScheduler_IssueReadsAndScheduleWakeup(*a1);
  }

  else
  {
    readScheduler_CompleteBatch(v3, *(a1 + 8));
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 8));

  free(a1);
}

uint64_t FigReadSchedulerBatchCancel(uint64_t a1)
{
  if (!a1)
  {
    FigReadSchedulerBatchCancel_cold_3(&v12);
    return v12;
  }

  FigSimpleMutexLock(*(a1 + 24));
  if (*(a1 + 52) == 2)
  {
    v8 = 0;
LABEL_14:
    FigSimpleMutexUnlock(*(a1 + 24));
    return v8;
  }

  v2 = FigCFWeakReferenceLoadAndRetain((a1 + 16));
  if (!v2)
  {
    FigReadSchedulerBatchCancel_cold_2(&v11);
    v8 = v11;
    goto LABEL_14;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v4)
  {
    v5 = v4;
    v4[1] = CFRetain(a1);
    *v5 = CFRetain(v3);
    if (*(a1 + 52))
    {
      v6 = v3[7];
      v7 = readScheduler_HandleCommittedBatchCancellation;
    }

    else
    {
      *(a1 + 52) = 1;
      dispatch_group_enter(*(a1 + 40));
      v6 = v3[7];
      v7 = readScheduler_HandleOpenBatchCancellation;
    }

    dispatch_async_f(v6, v5, v7);
    v8 = 0;
  }

  else
  {
    FigReadSchedulerBatchCancel_cold_1(&v10);
    v8 = v10;
  }

  FigSimpleMutexUnlock(*(a1 + 24));
  CFRelease(v3);
  return v8;
}

void readScheduler_HandleOpenBatchCancellation(CFTypeRef *a1)
{
  Count = CFSetGetCount(*(a1[1] + 4));
  v3 = *a1;
  if (Count)
  {
    CFArrayAppendValue(v3[6], a1[1]);
    v4 = CFGetAllocator(*(a1[1] + 4));
    Copy = CFSetCreateCopy(v4, *(a1[1] + 4));
    v6 = *a1;
    *(a1[1] + 48) = 1;
    CFSetApplyFunction(Copy, readScheduler_CancelRequestApplierFunction, v6);
  }

  else
  {
    readScheduler_CompleteBatch(v3, a1[1]);
    Copy = 0;
  }

  CFRelease(*a1);
  CFRelease(a1[1]);
  free(a1);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

void readScheduler_HandleCommittedBatchCancellation(CFTypeRef *a1)
{
  if (CFSetGetCount(*(a1[1] + 4)))
  {
    readScheduler_RemoveMatchingRequestsFromReadArray(*(*a1 + 4), *(a1[1] + 4));
    readScheduler_RemoveMatchingRequestsFromReadArray(*(*a1 + 5), *(a1[1] + 4));
    v2 = *a1;
    v3 = *(a1[1] + 4);
    Count = CFArrayGetCount(*(*a1 + 3));
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2[3], i);
        v8 = CFArrayGetCount(ValueAtIndex[6]);
        if (v8 >= 1)
        {
          v9 = v8;
          v10 = 0;
          do
          {
            v11 = CFArrayGetValueAtIndex(ValueAtIndex[6], v10);
            if (CFSetContainsValue(v3, v11))
            {
              CFArrayRemoveValueAtIndex(ValueAtIndex[6], v10);
              --v9;
            }

            else
            {
              ++v10;
            }
          }

          while (v10 < v9);
        }

        if (!CFArrayGetCount(ValueAtIndex[6]))
        {
          *(ValueAtIndex + 114) = 1;
        }
      }
    }

    v12 = CFGetAllocator(*(a1[1] + 4));
    Copy = CFSetCreateCopy(v12, *(a1[1] + 4));
    v14 = *a1;
    *(a1[1] + 48) = 1;
    CFSetApplyFunction(Copy, readScheduler_CancelRequestApplierFunction, v14);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(*a1);
  CFRelease(a1[1]);
  free(a1);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

uint64_t FigReadSchedulerBatchExpedite(uint64_t a1)
{
  if (!a1)
  {
    FigReadSchedulerBatchExpedite_cold_3(&v12);
    return v12;
  }

  FigSimpleMutexLock(*(a1 + 24));
  if (*(a1 + 52) == 2)
  {
    v8 = 0;
LABEL_14:
    FigSimpleMutexUnlock(*(a1 + 24));
    return v8;
  }

  v2 = FigCFWeakReferenceLoadAndRetain((a1 + 16));
  if (!v2)
  {
    FigReadSchedulerBatchExpedite_cold_2(&v11);
    v8 = v11;
    goto LABEL_14;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v4)
  {
    v5 = v4;
    v4[1] = CFRetain(a1);
    *v5 = CFRetain(v3);
    if (*(a1 + 52))
    {
      v6 = v3[8];
      v7 = readScheduler_HandleCommittedBatchExpedite;
    }

    else
    {
      *(a1 + 52) = 1;
      dispatch_group_enter(*(a1 + 40));
      v6 = v3[8];
      v7 = readScheduler_HandleOpenBatchExpedite;
    }

    dispatch_async_f(v6, v5, v7);
    v8 = 0;
  }

  else
  {
    FigReadSchedulerBatchExpedite_cold_1(&v10);
    v8 = v10;
  }

  FigSimpleMutexUnlock(*(a1 + 24));
  CFRelease(v3);
  return v8;
}

void readScheduler_HandleOpenBatchExpedite(const void **a1)
{
  Count = CFSetGetCount(*(a1[1] + 4));
  v3 = *a1;
  if (Count)
  {
    v4 = CFGetAllocator(v3);
    Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(*(*a1 + 6), a1[1]);
    CFSetApplyFunction(*(a1[1] + 4), readScheduler_BatchRequestIngestApplierFunction, *a1);
    readScheduler_RemoveAndCollectMatchingReadsToExpediteFromReadArray(*(*a1 + 4), *(a1[1] + 4), Mutable);
    readScheduler_RemoveAndCollectMatchingReadsToExpediteFromReadArray(*(*a1 + 5), *(a1[1] + 4), Mutable);
    v7.length = CFArrayGetCount(Mutable);
    v7.location = 0;
    CFArrayApplyFunction(Mutable, v7, readScheduler_ExpediteReadsArrayApplierFunction, *a1);
  }

  else
  {
    readScheduler_CompleteBatch(v3, a1[1]);
    Mutable = 0;
  }

  CFRelease(*a1);
  CFRelease(a1[1]);
  free(a1);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void readScheduler_HandleCommittedBatchExpedite(uint64_t a1)
{
  if (CFSetGetCount(*(*(a1 + 8) + 32)))
  {
    v2 = CFGetAllocator(*a1);
    Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      readScheduler_RemoveAndCollectMatchingReadsToExpediteFromReadArray(*(*a1 + 32), *(*(a1 + 8) + 32), Mutable);
      readScheduler_RemoveAndCollectMatchingReadsToExpediteFromReadArray(*(*a1 + 40), *(*(a1 + 8) + 32), Mutable);
      if (CFArrayGetCount(Mutable))
      {
        v5.length = CFArrayGetCount(Mutable);
        v5.location = 0;
        CFArrayApplyFunction(Mutable, v5, readScheduler_ExpediteReadsArrayApplierFunction, *a1);
      }

      else
      {
        readScheduler_CompleteBatch(*a1, *(a1 + 8));
      }
    }

    else
    {
      readScheduler_HandleCommittedBatchExpedite_cold_1();
    }
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 8));
  free(a1);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t FigReadSchedulerBatchAwaitCompletion(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock(*(a1 + 24));
    v2 = *(a1 + 52);
    FigSimpleMutexUnlock(*(a1 + 24));
    if (v2)
    {
      dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
      if (*(a1 + 48))
      {
        FigReadSchedulerBatchAwaitCompletion_cold_1(&v4);
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      FigReadSchedulerBatchAwaitCompletion_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigReadSchedulerBatchAwaitCompletion_cold_3(&v6);
    return v6;
  }
}

uint64_t readScheduler_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigReadSchedulerGetNewClientID(uint64_t a1, unint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = FigAtomicIncrement64(&FigReadSchedulerGetNewClientID_sNextClientID);
      result = 0;
      *a2 = v3;
    }

    else
    {
      FigReadSchedulerGetNewClientID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigReadSchedulerGetNewClientID_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigReadSchedulerRequestReadWithDeadline(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  cf = 0;
  if (!a1)
  {
    FigReadSchedulerRequestReadWithDeadline_cold_5(&v25);
    return v25;
  }

  if (!a3)
  {
    FigReadSchedulerRequestReadWithDeadline_cold_4(&v25);
    return v25;
  }

  if (!a5)
  {
    FigReadSchedulerRequestReadWithDeadline_cold_3(&v25);
    return v25;
  }

  if (!a9)
  {
    FigReadSchedulerRequestReadWithDeadline_cold_2(&v25);
    return v25;
  }

  v19 = CFGetAllocator(a1);
  v20 = rsRequest_Create(v19, a1, a2, a3, a4, a5, a6, 0, a7, a8, a9, a10, a11, &cf);
  v21 = cf;
  if (!v20)
  {
    FigReadSchedulerRequestReadWithDeadline_cold_1(a12, a1, cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v20;
}

void readScheduler_HandleReadRequest(void *a1)
{
  v2 = a1[2];
  readScheduler_IngestRequest(v2, a1);
  readScheduler_IssueReadsAndScheduleWakeup(v2);
  CFRelease(a1);

  CFRelease(v2);
}

uint64_t FigReadSchedulerRequestBackgroundRead(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  cf = 0;
  if (!a1)
  {
    FigReadSchedulerRequestBackgroundRead_cold_5(&v24);
    return v24;
  }

  if (!a3)
  {
    FigReadSchedulerRequestBackgroundRead_cold_4(&v24);
    return v24;
  }

  if (!a5)
  {
    FigReadSchedulerRequestBackgroundRead_cold_3(&v24);
    return v24;
  }

  if (!a8)
  {
    FigReadSchedulerRequestBackgroundRead_cold_2(&v24);
    return v24;
  }

  v19 = CFGetAllocator(a1);
  v20 = rsRequest_Create(v19, a1, a2, a3, a4, a5, a6, 1, a7, 0, a8, a9, a10, &cf);
  v21 = cf;
  if (!v20)
  {
    FigReadSchedulerRequestReadWithDeadline_cold_1(a11, a1, cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v20;
}

uint64_t FigReadSchedulerCancelRequest(dispatch_queue_t *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
      if (v4)
      {
        v5 = v4;
        *v4 = CFRetain(a1);
        v5[1] = a2;
        dispatch_async_f(a1[8], v5, readScheduler_HandleCancelOneRequestJob);
        return 0;
      }

      else
      {
        FigReadSchedulerCancelRequest_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigReadSchedulerCancelRequest_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigReadSchedulerCancelRequest_cold_3(&v9);
    return v9;
  }
}

void readScheduler_HandleCancelOneRequestJob(uint64_t *a1)
{
  v2 = readScheduler_RemoveAndRetainRequestFromReadArray(*(*a1 + 32), a1[1]);
  if (v2 || (v2 = readScheduler_RemoveAndRetainRequestFromReadArray(*(*a1 + 40), a1[1])) != 0)
  {
    v3 = v2;
LABEL_4:
    v3[27] = -17785;
    readScheduler_HandleFailedRequest(*a1, v3);
    CFRelease(v3);
    goto LABEL_5;
  }

  v4 = *a1;
  v5 = a1[1];
  Count = CFArrayGetCount(*(*a1 + 24));
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 24), v8);
      v10 = CFArrayGetCount(ValueAtIndex[6]);
      if (v10 < 1)
      {
LABEL_14:
        v3 = 0;
      }

      else
      {
        v11 = v10;
        v12 = 0;
        while (1)
        {
          v13 = CFArrayGetValueAtIndex(ValueAtIndex[6], v12);
          if (v13[4] == v5)
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_14;
          }
        }

        v3 = CFRetain(v13);
        CFArrayRemoveValueAtIndex(ValueAtIndex[6], v12);
      }

      if (!CFArrayGetCount(ValueAtIndex[6]))
      {
        *(ValueAtIndex + 114) = 1;
      }

      ++v8;
    }

    while (v8 < v7 && !v3);
    if (v3)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  CFRelease(*a1);

  free(a1);
}

void readScheduler_HandleExpediteSingleRequestJob(uint64_t a1)
{
  v2 = CFGetAllocator(*a1);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  if (!readScheduler_RemoveAndCollectReadForRequestToExpediteFromReadArray(*(*a1 + 32), *(a1 + 8), *(*(a1 + 16) + 32), Mutable) && !readScheduler_RemoveAndCollectReadForRequestToExpediteFromReadArray(*(*a1 + 40), *(a1 + 8), *(*(a1 + 16) + 32), Mutable))
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(*(a1 + 16) + 32);
    Count = CFArrayGetCount(*(*a1 + 24));
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4[3], v9);
        v11 = CFArrayGetCount(ValueAtIndex[6]);
        if (v11 >= 1)
        {
          break;
        }

LABEL_9:
        if (++v9 == v8)
        {
          goto LABEL_12;
        }
      }

      v12 = v11;
      v13 = 0;
      while (1)
      {
        v14 = CFArrayGetValueAtIndex(ValueAtIndex[6], v13);
        if (v14[4] == v5)
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_9;
        }
      }

      CFSetAddValue(v6, v14);
    }
  }

LABEL_12:
  v15 = CFSetGetCount(*(*(a1 + 16) + 32));
  v16 = *a1;
  if (v15)
  {
    CFArrayAppendValue(v16[6], *(a1 + 16));
    v18.length = CFArrayGetCount(Mutable);
    v18.location = 0;
    CFArrayApplyFunction(Mutable, v18, readScheduler_ExpediteReadsArrayApplierFunction, *a1);
  }

  else
  {
    readScheduler_CompleteBatch(v16, *(a1 + 16));
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  free(a1);

  CFRelease(Mutable);
}

void readScheduler_HandleCancelAllClientRequestsJob(const void **a1)
{
  readScheduler_RemoveAndCollectClientRequestsFromReadArray(*(*a1 + 4), a1[2], *(a1[1] + 4));
  readScheduler_RemoveAndCollectClientRequestsFromReadArray(*(*a1 + 5), a1[2], *(a1[1] + 4));
  v2 = a1[2];
  v3 = *a1;
  v4 = *(a1[1] + 4);
  Count = CFArrayGetCount(*(*a1 + 3));
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3[3], i);
      v9 = CFArrayGetCount(ValueAtIndex[6]);
      if (v9 >= 1)
      {
        v10 = v9;
        v11 = 0;
        do
        {
          v12 = CFArrayGetValueAtIndex(ValueAtIndex[6], v11);
          if (v12[3] == v2)
          {
            CFSetAddValue(v4, v12);
            CFArrayRemoveValueAtIndex(ValueAtIndex[6], v11);
            --v10;
          }

          else
          {
            ++v11;
          }
        }

        while (v11 < v10);
      }

      if (!CFArrayGetCount(ValueAtIndex[6]))
      {
        *(ValueAtIndex + 114) = 1;
      }
    }
  }

  v13 = CFSetGetCount(*(a1[1] + 4));
  v14 = *a1;
  if (v13)
  {
    CFArrayAppendValue(*(v14 + 48), a1[1]);
    v15 = CFGetAllocator(*(a1[1] + 4));
    Copy = CFSetCreateCopy(v15, *(a1[1] + 4));
    CFSetApplyFunction(Copy, readScheduler_CancelRequestApplierFunction, *a1);
  }

  else
  {
    readScheduler_CompleteBatch(v14, a1[1]);
    Copy = 0;
  }

  CFRelease(*a1);
  CFRelease(a1[1]);
  free(a1);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

void readScheduler_HandleExpediteAllClientRequestsJob(uint64_t a1)
{
  v2 = CFGetAllocator(*a1);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  readScheduler_RemoveAndCollectClientReadsToExpediteFromReadArray(*(*a1 + 32), *(a1 + 16), *(*(a1 + 8) + 32), Mutable);
  readScheduler_RemoveAndCollectClientReadsToExpediteFromReadArray(*(*a1 + 40), *(a1 + 16), *(*(a1 + 8) + 32), Mutable);
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = *(*(a1 + 8) + 32);
  Count = CFArrayGetCount(*(*a1 + 24));
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5[3], i);
      v11 = CFArrayGetCount(ValueAtIndex[6]);
      if (v11 >= 1)
      {
        v12 = v11;
        for (j = 0; j != v12; ++j)
        {
          v14 = CFArrayGetValueAtIndex(ValueAtIndex[6], j);
          if (v14[3] == v4)
          {
            CFSetAddValue(v6, v14);
          }
        }
      }
    }
  }

  v15 = CFSetGetCount(*(*(a1 + 8) + 32));
  v16 = *a1;
  if (v15)
  {
    CFArrayAppendValue(v16[6], *(a1 + 8));
    v18.length = CFArrayGetCount(Mutable);
    v18.location = 0;
    CFArrayApplyFunction(Mutable, v18, readScheduler_ExpediteReadsArrayApplierFunction, *a1);
  }

  else
  {
    readScheduler_CompleteBatch(v16, *(a1 + 8));
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 8));
  free(a1);

  CFRelease(Mutable);
}

CFMutableDictionaryRef rsRegistry_PerformInitialization()
{
  gRSRegistry_0 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gRSRegistry_1 = result;
  return result;
}

void readScheduler_DeadlineTimerHandler(id *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    dispatch_source_set_timer(v1[10], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v2[11] = 0x7FFFFFFFFFFFFFFFLL;
    readScheduler_IssueReadsAndScheduleWakeup(v2);

    CFRelease(v2);
  }
}

void readScheduler_DeadlineTimerCancelCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void readScheduler_IssueReadsAndScheduleWakeup(uint64_t a1)
{
  for (i = 0; i != 4; ++i)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    Count = CFArrayGetCount(*(a1 + 32));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v6);
        if (ValueAtIndex[10] - *(a1 + 96) <= UpTimeNanoseconds)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }

      v8 = CFRetain(ValueAtIndex);
      CFArrayRemoveValueAtIndex(*(a1 + 32), v6);
      if (v8)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    v9 = CFArrayGetCount(*(a1 + 40));
    if (v9 < 1)
    {
      break;
    }

    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = CFArrayGetValueAtIndex(*(a1 + 40), v11);
      if (!v12[113])
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_15;
      }
    }

    v8 = CFRetain(v12);
    CFArrayRemoveValueAtIndex(*(a1 + 40), v11);
    if (!v8)
    {
      break;
    }

LABEL_14:
    readScheduler_IssueOneRead(a1, v8);
    CFRelease(v8);
  }

LABEL_15:
  if (CFArrayGetCount(*(a1 + 32)) && (v13 = CFArrayGetValueAtIndex(*(a1 + 32), 0)) != 0 && (v14 = v13[10] - *(a1 + 96), v14 < *(a1 + 88)))
  {
    v15 = v14 - FigGetUpTimeNanoseconds();
    if (v15 >= 1)
    {
      v16 = dispatch_time(0, v15);
      *(a1 + 88) = v14;
      dispatch_source_set_timer(*(a1 + 80), v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      goto LABEL_20;
    }

LABEL_21:
    CFRetain(a1);
    v17 = 120;
    if (*(a1 + 380) > 3)
    {
      v18 = readScheduler_LetReadsProgress;
    }

    else
    {
      v17 = 64;
      v18 = readScheduler_CallIssueReadsAndScheduleWakeup;
    }

    v19 = *(a1 + v17);

    dispatch_async_f(v19, a1, v18);
  }

  else
  {
LABEL_20:
    if (CFArrayGetCount(*(a1 + 40)) != *(a1 + 384))
    {
      goto LABEL_21;
    }
  }
}

void readScheduler_LetReadsProgress(dispatch_queue_t *a1)
{
  CFRetain(a1);
  dispatch_async_f(a1[8], a1, readScheduler_CallIssueReadsAndScheduleWakeup);

  CFRelease(a1);
}

void readScheduler_CallIssueReadsAndScheduleWakeup(const void *a1)
{
  readScheduler_IssueReadsAndScheduleWakeup();

  CFRelease(a1);
}

void readScheduler_IssueOneRead(uint64_t a1, void *a2)
{
  CFArrayAppendValue(*(a1 + 24), a2);
  FigAtomicIncrement32((a1 + 380));
  v4 = a1 + 120;
  if (*(a1 + 376))
  {
    v5 = 0;
    v6 = 0;
    v7 = (a1 + 176);
    v8 = 0x7FFFFFFF;
    while (*(v7 - 1) != a2[4])
    {
      v10 = *v7;
      v7 += 16;
      v9 = v10;
      if (v10 < v8)
      {
        v6 = v5;
        v8 = v9;
      }

      if (++v5 == 4)
      {
        goto LABEL_9;
      }
    }

    v6 = v5;
LABEL_9:
    v4 += v6 << 6;
  }

  a2[3] = v4;
  FigAtomicIncrement32((v4 + 56));
  *(a2[3] + 48) = a2[4];
  CFRetain(a1);
  CFRetain(a2);
  v11 = *a2[3];

  dispatch_async_f(v11, a2, readScheduler_PerformRead);
}

void readScheduler_PerformRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(a1 + 114))
  {
    *(a1 + 64) = 0;
    goto LABEL_44;
  }

  v6 = *(a1 + 24);
  v7 = (a1 + 96);
  v8 = *(a1 + 104) - *(a1 + 96);
  v9 = *(v5 + 392);
  theBuffer = 0;
  dataPointerOut = 0;
  v37 = (a1 + 96);
  if (*(v6 + 8))
  {
    v10 = FigCFWeakReferenceLoadAndRetain((v6 + 32));
    if (*(a1 + 32) == v10 && (v11 = *v7, v12 = *(v6 + 16), v13 = __OFSUB__(*v7, v12), v14 = *v7 - v12, v14 < 0 == v13) && (v15 = *(v6 + 24), v11 <= v15))
    {
      if (*(a1 + 104) < v15)
      {
        v15 = *(a1 + 104);
      }

      v34 = v15 - v11;
      v18 = v34 + 1;
      v35 = *(v5 + 392);
      v17 = v35 * v14;
      v16 = (v34 + 1) * v35;
      if (v34 == v8)
      {
        v36 = CFGetAllocator(v5);
        DataPointer = CMBlockBufferCreateWithBufferReference(v36, *(v6 + 8), v17, v16, 0, &theBuffer);
        if (DataPointer)
        {
          goto LABEL_51;
        }

        v23 = theBuffer;
        if (theBuffer)
        {
          v21 = 0;
          v22 = 0;
LABEL_14:
          v24 = *(a1 + 88) + *(v5 + 392) * v18;
          v25 = CFRetain(v23);
          v26 = 0;
          if (!v10)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v10 = 0;
  }

  v19 = v9 + v9 * v8;
  DataPointer = FigMemoryPoolCreateBlockBuffer(*(v5 + 104), v19, &theBuffer, a4);
  if (!DataPointer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (!DataPointer)
    {
      v21 = dataPointerOut;
      if (!v16)
      {
LABEL_13:
        v22 = v19 - v16;
        v23 = theBuffer;
        goto LABEL_14;
      }

      DataPointer = CMBlockBufferCopyDataBytes(*(v6 + 8), v17, v16, dataPointerOut);
      if (!DataPointer)
      {
        v21 = &dataPointerOut[v16];
        dataPointerOut += v16;
        goto LABEL_13;
      }
    }
  }

LABEL_51:
  v26 = DataPointer;
  v16 = 0;
  v22 = 0;
  v24 = 0;
  v21 = 0;
  v25 = 0;
  if (v10)
  {
LABEL_15:
    CFRelease(v10);
  }

LABEL_16:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v26)
  {
    goto LABEL_42;
  }

  if (v22)
  {
    dataPointerOut = 0;
    v27 = *(a1 + 32);
    v28 = *(*(CMBaseObjectGetVTable(v27) + 16) + 8);
    if (v28)
    {
      v26 = (v28)(v27, v22, v24, v21, &dataPointerOut);
      v28 = dataPointerOut;
    }

    else
    {
      v26 = -12782;
    }

    v29 = v22 <= v28;
    if (v22 > v28)
    {
      bzero(&v28[v21], v22 - v28);
      if (v16)
      {
        v30 = v26 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v26 = 0;
      }

      v28 = dataPointerOut;
    }

    v16 += v28;
    if (!v16)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v26 = 0;
  v29 = 1;
  if (v16)
  {
LABEL_33:
    *(a1 + 40) = CFRetain(v25);
    *(a1 + 72) = v16;
    if (v29)
    {
      if (v22)
      {
        FigCFWeakReferenceStore((v6 + 32), *(a1 + 32));
        v31 = *(v6 + 8);
        v32 = *(a1 + 40);
        *(v6 + 8) = v32;
        if (v32)
        {
          CFRetain(v32);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        *(v6 + 16) = *v37;
      }
    }

    else
    {
      FigCFWeakReferenceStore((v6 + 32), 0);
      v33 = *(v6 + 8);
      if (v33)
      {
        CFRelease(v33);
        *(v6 + 8) = 0;
      }
    }
  }

LABEL_42:
  *(a1 + 64) = v26;
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_44:
  FigAtomicDecrement32((v5 + 380));
  FigAtomicDecrement32((*(a1 + 24) + 56));
  CFRetain(v5);
  CFRetain(a1);
  dispatch_async_f(*(v5 + 56), a1, readScheduler_HandleOneCompletedRead);
  CFRelease(a1);
  CFRelease(v5);
}

void readScheduler_HandleOneCompletedRead(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 24);
  v23.length = CFArrayGetCount(v4);
  v23.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v23, a1);
  CFArrayRemoveValueAtIndex(*(v3 + 24), FirstIndexOfValue);
  Count = CFArrayGetCount(*(a1 + 48));
  if (Count)
  {
    v7 = Count;
    if (Count >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
        appended = *(a1 + 64);
        if (!appended)
        {
          v11 = *(ValueAtIndex + 7) - *(a1 + 88);
          if (v11 >= *(a1 + 72))
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBA8AuLL, "<< FigReadScheduler >>", 0x54E, v1, v14, v15);
          }

          else
          {
            v12 = *(ValueAtIndex + 5);
            if (v12)
            {
              if (CMBlockBufferIsEmpty(v12))
              {
                appended = CMBlockBufferAppendBufferReference(*(ValueAtIndex + 5), *(a1 + 40), v11, *(ValueAtIndex + 8), 0);
              }

              else
              {
                v21 = 0;
                dataPointerOut = 0;
                appended = CMBlockBufferAssureBlockMemory(*(ValueAtIndex + 5));
                if (!appended)
                {
                  appended = CMBlockBufferGetDataPointer(*(a1 + 40), v11, &v21, 0, &dataPointerOut);
                  if (!appended)
                  {
                    appended = CMBlockBufferReplaceDataBytes(dataPointerOut, *(ValueAtIndex + 5), 0, *(ValueAtIndex + 8));
                  }
                }
              }
            }

            else
            {
              v16 = CFGetAllocator(ValueAtIndex);
              appended = CMBlockBufferCreateWithBufferReference(v16, *(a1 + 40), v11, *(ValueAtIndex + 8), 0, ValueAtIndex + 5);
            }
          }
        }

        *(ValueAtIndex + 27) = appended;
      }
    }

    v17 = *(a1 + 48);
    *(a1 + 48) = 0;
    v18 = CFArrayGetCount(v17);
    CFRetain(v17);
    dispatch_async_f(*(v3 + 72), v17, readScheduler_DispatchFulfilledRequestsCallbacks);
    if (v18 >= 1)
    {
      for (j = 0; j != v18; ++j)
      {
        v20 = CFArrayGetValueAtIndex(v17, j);
        readScheduler_UpdateBatches(v3, v20, 0);
      }
    }

    CFRelease(v17);
  }

  CFRelease(a1);
  CFRelease(v3);
}

void readScheduler_DispatchFulfilledRequestsCallbacks(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      readScheduler_CallRequestCallback(ValueAtIndex);
    }
  }

  CFRelease(a1);
}

void readScheduler_UpdateBatches(uint64_t a1, const void *a2, int a3)
{
  Count = CFArrayGetCount(*(a1 + 48));
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v8);
      v10 = ValueAtIndex;
      if (a3 && CFSetContainsValue(ValueAtIndex[4], a2))
      {
        *(v10 + 48) = 1;
      }

      CFSetRemoveValue(*(v10 + 32), a2);
      if (CFSetGetCount(*(v10 + 32)))
      {
        ++v8;
      }

      else
      {
        readScheduler_CompleteBatch(a1, v10);
        CFArrayRemoveValueAtIndex(*(a1 + 48), v8);
        --v7;
      }
    }

    while (v8 < v7);
  }
}

void readScheduler_CallRequestCallback(uint64_t a1)
{
  (*(a1 + 112))(*(a1 + 32), *(a1 + 120), *(a1 + 128), *(a1 + 40), *(a1 + 64), *(a1 + 108));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }
}

void readScheduler_CompleteBatch(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock(*(a2 + 24));
  *(a2 + 52) = 2;
  CFSetRemoveAllValues(*(a2 + 32));
  FigSimpleMutexUnlock(*(a2 + 24));
  CFRetain(a2);
  v4 = *(a1 + 72);

  dispatch_async_f(v4, a2, readScheduler_NotifyCompletedBatch);
}

void readScheduler_NotifyCompletedBatch(dispatch_group_t *a1)
{
  dispatch_group_leave(a1[5]);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"readSchedulerNotification_BatchCompleted", a1, 0);

  CFRelease(a1);
}

double rsBatch_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

id rsBatch_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 40) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 24));

  return FigCFWeakReferenceStore((a1 + 16), 0);
}

__CFString *rsBatch_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  v4 = *(a1 + 52);
  v5 = "Completed";
  if (v4 == 1)
  {
    v5 = "Committed";
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = "Open";
  }

  if (*(a1 + 48))
  {
    v7 = "and Cancelled";
  }

  else
  {
    v7 = "";
  }

  Count = CFSetGetCount(*(a1 + 32));
  CFStringAppendFormat(Mutable, 0, @"RSBatch %p RC %d State %s%s req %d", a1, v3, v6, v7, Count);
  CFSetApplyFunction(*(a1 + 32), rsBatch_RequestSetDebugDescApplierFunction, Mutable);
  return Mutable;
}

void rsBatch_RequestSetDebugDescApplierFunction(const void *a1, __CFString *a2)
{
  v3 = CFCopyDescription(a1);
  CFStringAppendFormat(a2, 0, @"\n\t%@", v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t rsRequest_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double rsRequest_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void rsRequest_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }
}

__CFString *rsRequest_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 104);
  v5 = CFGetRetainCount(a1);
  if (v4)
  {
    if ((*(a1 + 88) & 0x100000000) != 0)
    {
      v6 = "Latched ";
    }

    else
    {
      v6 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"RSRequest %p RC %d Background %sreqID %lld clientID %lld %zd bytes @ %lld [%lld:%lld]", a1, v5, v6, *(a1 + 32), *(a1 + 24), *(a1 + 64), *(a1 + 56), *(a1 + 72), *(a1 + 80));
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"RSRequest %p RC %d reqID %lld clientID %lld %zd bytes @ %lld [%lld:%lld] time %lld", a1, v5, *(a1 + 32), *(a1 + 24), *(a1 + 64), *(a1 + 56), *(a1 + 72), *(a1 + 80), *(a1 + 96));
  }

  return Mutable;
}

void readScheduler_IngestRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = *(a1 + 392);
  *(a2 + 72) = (v4 & -v5) / v5;
  v6 = (a2 + 72);
  *(a2 + 80) = ((v4 + v5 + *(a2 + 64) - 1) & -v5) / v5 - 1;
  v7 = *(a2 + 96);
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count < 1)
  {
LABEL_8:
    v12 = 40;
    if (!*(a2 + 104))
    {
      v12 = 32;
    }

    v13 = *(a1 + v12);
    if (*(a2 + 80) - *(a2 + 72) < *(a1 + 388))
    {
      v14 = CFArrayGetCount(v13);
      if (v14 >= 1)
      {
        v15 = v14;
        v16 = 0;
        while (1)
        {
          v45 = 0uLL;
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
          if (*(a2 + 48) == ValueAtIndex[4])
          {
            v18 = ValueAtIndex;
            if (readScheduler_CombinePageRanges(a1, ValueAtIndex + 12, v6, &v45) == 1)
            {
              break;
            }
          }

          if (v15 == ++v16)
          {
            goto LABEL_16;
          }
        }

        v43 = v45;
        if (*(&v45 + 1) <= v18[13])
        {
          v24 = 2 * (v45 < v18[12]);
        }

        else
        {
          v24 = (2 * (v45 < v18[12])) | 4;
        }

        *(v18 + 6) = v45;
        v18[11] = *(v18[2] + 392) * v43;
        readScheduler_AddRequestToRead(v18, a2);
        if (v7 >= v18[10])
        {
          v21 = 0;
          v23 = 1;
        }

        else
        {
          v21 = CFRetain(v18);
          CFArrayRemoveValueAtIndex(v13, v16);
          v18[10] = v7;
          v23 = 1;
          if (v21)
          {
            v25 = 0;
LABEL_25:
            v26 = CFArrayGetCount(v13);
            if (v26 < 1)
            {
              v28 = 0;
            }

            else
            {
              v27 = v26;
              v28 = 0;
              while (1)
              {
                v29 = CFArrayGetValueAtIndex(v13, v28);
                v30 = *(v21 + 80);
                v31 = v29[10];
                if (v30 < v31)
                {
                  break;
                }

                if (v30 == v31)
                {
                  v32 = v29;
                  v33 = *(CFArrayGetValueAtIndex(*(v21 + 48), 0) + 4);
                  if (v33 < *(CFArrayGetValueAtIndex(v32[6], 0) + 4))
                  {
                    break;
                  }
                }

                if (v27 == ++v28)
                {
                  v28 = v27;
                  break;
                }
              }
            }

            CFArrayInsertValueAtIndex(v13, v28, v21);
            if (v25)
            {
              v16 = -1;
            }

            else
            {
              v16 = v28;
            }

            goto LABEL_36;
          }

          v16 = -1;
        }

LABEL_36:
        if (v23 && v24)
        {
          while (1)
          {
            v34 = CFArrayGetValueAtIndex(v13, v16);
            v35 = CFArrayGetCount(v13);
            if (v35 < 1)
            {
              break;
            }

            v36 = v35;
            while (1)
            {
              v37 = 0;
              while (1)
              {
                if (v16 != v37)
                {
                  v45 = 0uLL;
                  v38 = CFArrayGetValueAtIndex(v13, v37);
                  if (v34[4] == v38[4])
                  {
                    v39 = v38;
                    if (readScheduler_CombinePageRanges(a1, v38 + 12, v34 + 12, &v45) == 1)
                    {
                      break;
                    }
                  }
                }

                if (v36 == ++v37)
                {
                  goto LABEL_51;
                }
              }

              if (v37 < v16)
              {
                break;
              }

              readScheduler_CombineReads(v13, v34, v39, &v45, v37);
              v34 = CFArrayGetValueAtIndex(v13, v16);
              v36 = CFArrayGetCount(v13);
              if (v36 <= 0)
              {
                goto LABEL_51;
              }
            }

            v40 = *(&v45 + 1);
            v44 = v45;
            v42 = *(v39 + 96);
            v41 = *(v39 + 104);
            readScheduler_CombineReads(v13, v39, v34, &v45, v16);
            v16 = v37;
            if (v40 <= v41)
            {
              v16 = v37;
              if (v44 >= v42)
              {
                break;
              }
            }
          }
        }

LABEL_51:
        if (v21)
        {

          CFRelease(v21);
        }

        return;
      }
    }

LABEL_16:
    v19 = CFGetAllocator(a1);
    if (qword_1ED4CC5D0 != -1)
    {
      readScheduler_IngestRequest_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v21 = Instance;
      Mutable = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
      *(v21 + 48) = Mutable;
      if (Mutable)
      {
LABEL_20:
        *(v21 + 16) = a1;
        *(v21 + 56) = FigAtomicIncrement64(&gNextReadID);
        *(v21 + 80) = v7;
        *(v21 + 32) = CFRetain(*(a2 + 48));
        *(v21 + 96) = *v6;
        *(v21 + 88) = *(*(v21 + 16) + 392) * *(a2 + 72);
        if (*(a2 + 104))
        {
          *(v21 + 112) = 1;
          if (*(a2 + 92))
          {
            *(v21 + 113) = 1;
            FigAtomicIncrement32((a1 + 384));
          }

          else
          {
            *(v21 + 113) = 0;
          }
        }

        readScheduler_AddRequestToRead(v21, a2);
        v23 = 0;
        v24 = 0;
        v25 = 1;
        goto LABEL_25;
      }

      readScheduler_IngestRequest_cold_2(v21, &v45);
    }

    else
    {
      readScheduler_IngestRequest_cold_3(&v45);
    }

    if (v45)
    {
      *(a2 + 108) = v45;

      readScheduler_HandleFailedRequest(a1, a2);
      return;
    }

    v21 = 0;
    goto LABEL_20;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    v11 = CFArrayGetValueAtIndex(*(a1 + 24), v10);
    if (*(a2 + 48) == v11[4] && *v6 >= v11[12] && *(a2 + 80) <= v11[13] && !*(v11 + 114))
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_8;
    }
  }

  readScheduler_AddRequestToRead(v11, a2);
}

uint64_t readScheduler_CombinePageRanges(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = *a3;
  if (*a3 <= *a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = *a3;
  }

  if (*a3 >= *a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (*a3 < *a2)
  {
    v7 = a3;
  }

  else
  {
    v4 = *a2;
    v7 = a2;
  }

  if (*a3 == *a2)
  {
    *a4 = v5;
    v8 = v6[1];
    if (v7[1] > v8)
    {
      v8 = v7[1];
    }
  }

  else
  {
    v9 = v7[1];
    if (v9 >= v5 - 1)
    {
      *a4 = v4;
      v8 = v6[1];
      if (v9 > v8)
      {
        v8 = v9;
      }
    }

    else
    {
      if (v5 - v9 > 2)
      {
        return 0;
      }

      *a4 = v4;
      v8 = v6[1];
    }
  }

  a4[1] = v8;
  if (v8 - v4 < *(a1 + 388))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void readScheduler_AddRequestToRead(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 48));
  while ((Count & 0x8000000000000000) == 0)
  {
    v5 = Count;
    if (Count)
    {
      v6 = *(a2 + 32);
      --Count;
      if (v6 <= *(CFArrayGetValueAtIndex(*(a1 + 48), v5 - 1) + 4))
      {
        continue;
      }
    }

    CFArrayInsertValueAtIndex(*(a1 + 48), v5, a2);
    break;
  }

  if (*(a2 + 104) && (*(a2 + 92) & 1) == 0 && *(a1 + 112) && *(a1 + 113))
  {
    *(a1 + 113) = 0;
    v7 = (*(a1 + 16) + 384);

    FigAtomicDecrement32(v7);
  }
}

void readScheduler_HandleFailedRequest(uint64_t a1, _DWORD *cf)
{
  v4 = cf[27] == -17785;
  CFRetain(cf);
  dispatch_async_f(*(a1 + 72), cf, readScheduler_DispatchRequestCallback);

  readScheduler_UpdateBatches(a1, cf, v4);
}

uint64_t rsRead_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double rsRead_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void rsRead_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }
}

__CFString *rsRead_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  Count = CFArrayGetCount(*(a1 + 48));
  v5 = *(a1 + 112);
  v6 = CFGetRetainCount(a1);
  if (v5)
  {
    if (*(a1 + 113))
    {
      v7 = "Latched ";
    }

    else
    {
      v7 = "";
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(v8 + 40);
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    CFStringAppendFormat(Mutable, 0, @"RSRead %p RC %d Background %sreadID %lld context %d BS %@ @ %lld [%lld:%lld] numReqs %d\n", a1, v6, v7, *(a1 + 56), v9, *(a1 + 32), *(a1 + 88), *(a1 + 96), *(a1 + 104), Count);
  }

  else
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(v10 + 40);
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }

    CFStringAppendFormat(Mutable, 0, @"RSRead %p RC %d readID %lld context %d BS %@ @ %lld [%lld:%lld] time %lld numReqs %d\n", a1, v6, *(a1 + 56), v11, *(a1 + 32), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 80), Count);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
      v14 = CFCopyDescription(ValueAtIndex);
      CFStringAppendFormat(Mutable, 0, @"\t%2d. %@\n", i, v14);
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  return Mutable;
}

void readScheduler_DispatchRequestCallback(const void *a1)
{
  readScheduler_CallRequestCallback(a1);

  CFRelease(a1);
}

void readScheduler_CombineReads(__CFArray *a1, uint64_t a2, uint64_t a3, _OWORD *a4, CFIndex a5)
{
  Count = CFArrayGetCount(*(a3 + 48));
  if (Count >= 1)
  {
    v11 = Count;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 48), i);
      readScheduler_AddRequestToRead(a2, ValueAtIndex);
    }
  }

  CFArrayRemoveAllValues(*(a3 + 48));
  if (*(a3 + 112) && *(a3 + 113))
  {
    *(a3 + 113) = 0;
    FigAtomicDecrement32((*(a3 + 16) + 384));
  }

  *(a2 + 96) = *a4;
  *(a2 + 88) = *(*(a2 + 16) + 392) * *a4;

  CFArrayRemoveValueAtIndex(a1, a5);
}

void readScheduler_RemoveMatchingRequestsFromReadArray(const __CFArray *a1, const __CFSet *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      v8 = CFArrayGetCount(ValueAtIndex[6]);
      if (v8 >= 1)
      {
        v9 = v8;
        v10 = 0;
        do
        {
          v11 = CFArrayGetValueAtIndex(ValueAtIndex[6], v10);
          if (CFSetContainsValue(a2, v11))
          {
            CFArrayRemoveValueAtIndex(ValueAtIndex[6], v10);
            --v9;
          }

          else
          {
            ++v10;
          }
        }

        while (v10 < v9);
      }

      if (CFArrayGetCount(ValueAtIndex[6]))
      {
        ++v6;
      }

      else
      {
        CFArrayRemoveValueAtIndex(a1, v6);
        --v5;
      }
    }

    while (v6 < v5);
  }
}

void readScheduler_RemoveAndCollectMatchingReadsToExpediteFromReadArray(const __CFArray *a1, const __CFSet *a2, __CFArray *a3)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      v10 = CFArrayGetCount(ValueAtIndex[6]);
      if (v10 < 1)
      {
LABEL_7:
        ++v8;
      }

      else
      {
        v11 = v10;
        v12 = 0;
        while (1)
        {
          v13 = CFArrayGetValueAtIndex(ValueAtIndex[6], v12);
          if (CFSetContainsValue(a2, v13))
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_7;
          }
        }

        CFArrayAppendValue(a3, ValueAtIndex);
        CFArrayRemoveValueAtIndex(a1, v8);
        --v7;
      }
    }

    while (v8 < v7);
  }
}

double readScheduler_Init(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void readScheduler_Finalize(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = a1[10];
    if (v3)
    {
      dispatch_release(v3);
      a1[10] = 0;
    }
  }

  v4 = (a1 + 19);
  v5 = 4;
  do
  {
    FigCFWeakReferenceStore(v4, 0);
    v6 = *(v4 - 3);
    if (v6)
    {
      CFRelease(v6);
      *(v4 - 3) = 0;
    }

    v7 = *(v4 - 4);
    if (v7)
    {
      dispatch_release(v7);
      *(v4 - 4) = 0;
    }

    v4 += 8;
    --v5;
  }

  while (v5);
  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }

  v9 = a1[3];
  if (v9)
  {
    CFRelease(v9);
    a1[3] = 0;
  }

  v10 = a1[4];
  if (v10)
  {
    CFRelease(v10);
    a1[4] = 0;
  }

  v11 = a1[5];
  if (v11)
  {
    CFRelease(v11);
    a1[5] = 0;
  }

  v12 = a1[6];
  if (v12)
  {
    CFRelease(v12);
    a1[6] = 0;
  }

  v13 = a1[14];
  if (v13)
  {
    CFRelease(v13);
    a1[14] = 0;
  }

  v14 = a1[13];
  if (v14)
  {
    CFRelease(v14);
    a1[13] = 0;
  }

  v15 = a1[8];
  if (v15)
  {
    dispatch_release(v15);
    a1[8] = 0;
  }

  v16 = a1[9];
  if (v16)
  {
    dispatch_release(v16);
    a1[9] = 0;
  }

  v17 = a1[7];
  if (v17)
  {
    dispatch_release(v17);
    a1[7] = 0;
  }
}

__CFString *readScheduler_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = FigCFCopyCompactDescription(*(a1 + 16));
  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigReadScheduler %p(%d) %s: sched=%@ background=%@ inFlight=%@ batches=%@ inProg=%d info={%@}", a1, v5, a1 + 400, *(a1 + 32), *(a1 + 40), *(a1 + 24), *(a1 + 48), *(a1 + 380), v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

CFTypeRef readScheduler_RemoveAndRetainRequestFromReadArray(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v8 = CFArrayGetCount(ValueAtIndex[6]);
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        v11 = CFArrayGetValueAtIndex(ValueAtIndex[6], v10);
        if (v11[4] == a2)
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_9;
        }
      }

      v12 = CFRetain(v11);
      CFArrayRemoveValueAtIndex(ValueAtIndex[6], v10);
      if (v12)
      {
        break;
      }
    }

LABEL_9:
    if (++v6 == v5)
    {
      return 0;
    }
  }

  if (!CFArrayGetCount(ValueAtIndex[6]))
  {
    CFArrayRemoveValueAtIndex(a1, v6);
  }

  return v12;
}

uint64_t readScheduler_RemoveAndCollectReadForRequestToExpediteFromReadArray(const __CFArray *a1, uint64_t a2, __CFSet *a3, __CFArray *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    v12 = CFArrayGetCount(ValueAtIndex[6]);
    if (v12 >= 1)
    {
      break;
    }

LABEL_7:
    if (++v10 == v9)
    {
      return 0;
    }
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    v15 = CFArrayGetValueAtIndex(ValueAtIndex[6], v14);
    if (v15[4] == a2)
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_7;
    }
  }

  CFSetAddValue(a3, v15);
  CFArrayAppendValue(a4, ValueAtIndex);
  CFArrayRemoveValueAtIndex(a1, v10);
  return 1;
}

void readScheduler_RemoveAndCollectClientRequestsFromReadArray(const __CFArray *a1, uint64_t a2, __CFSet *a3)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      v10 = CFArrayGetCount(ValueAtIndex[6]);
      if (v10 >= 1)
      {
        v11 = v10;
        v12 = 0;
        do
        {
          v13 = CFArrayGetValueAtIndex(ValueAtIndex[6], v12);
          if (v13[3] == a2)
          {
            CFSetAddValue(a3, v13);
            CFArrayRemoveValueAtIndex(ValueAtIndex[6], v12);
            --v11;
          }

          else
          {
            ++v12;
          }
        }

        while (v12 < v11);
      }

      if (CFArrayGetCount(ValueAtIndex[6]))
      {
        ++v8;
      }

      else
      {
        CFArrayRemoveValueAtIndex(a1, v8);
        --v7;
      }
    }

    while (v8 < v7);
  }
}

void readScheduler_RemoveAndCollectClientReadsToExpediteFromReadArray(const __CFArray *a1, uint64_t a2, __CFSet *a3, __CFArray *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      v11 = CFArrayGetCount(ValueAtIndex[6]);
      v12 = v11 - 1;
      if (v11 < 1)
      {
LABEL_12:
        ++v9;
      }

      else
      {
        v13 = v11;
        v14 = 0;
        v15 = 1;
        do
        {
          while (1)
          {
            v16 = CFArrayGetValueAtIndex(ValueAtIndex[6], v14);
            if (v16[3] != a2)
            {
              break;
            }

            CFSetAddValue(a3, v16);
            v15 = 0;
            if (v12 == v14++)
            {
              goto LABEL_13;
            }
          }

          ++v14;
        }

        while (v13 != v14);
        if (v15)
        {
          goto LABEL_12;
        }

LABEL_13:
        CFArrayAppendValue(a4, ValueAtIndex);
        CFArrayRemoveValueAtIndex(a1, v9);
        --v8;
      }
    }

    while (v9 < v8);
  }
}

void *OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3 | 0x102004000000000;

  return malloc_type_calloc(1uLL, 0x18uLL, v4);
}

uint64_t FigNTPClientGetTypeID()
{
  if (sRegisterFigNTPClientTypeOnce != -1)
  {
    FigNTPClientGetTypeID_cold_1();
  }

  return sFigNTPClientID;
}

uint64_t RegisterFigNTPClientIDType()
{
  result = _CFRuntimeRegisterClass();
  sFigNTPClientID = result;
  return result;
}

size_t FigNTPClientCreate(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigNTPTrace[1], @"figntp_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v4, 0, gFigNTPTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CDE8, @"figntp_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CDE0);
  if (dword_1EAF1CDE8)
  {
    v24[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CDE0, 1, v24, &type);
    v8 = v24[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v24[1] = 136315138;
      v25 = "FigNTPClientCreate";
      v11 = _os_log_send_and_compose_impl();
      LOBYTE(v8) = v24[0];
    }

    else
    {
      v11 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CDE0, 1u, 1, v11, v11 != &v26, v8, 0, v9);
  }

  if (a2)
  {
    if (sRegisterFigNTPClientTypeOnce != -1)
    {
      FigNTPClientCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v13 = Instance;
      *(Instance + 16) = 0;
      *(Instance + 24) = 0;
      *(Instance + 32) = 0;
      CFPreferenceOrOptionNumberWithDefault = FigGetCFPreferenceOrOptionNumberWithDefault(0, @"ntp_timeout", @"com.apple.coremedia", 1);
      *(v13 + 80) = 0;
      *(v13 + 40) = FigDispatchQueueCreateWithPriority("com.apple.coremedia.figntpclient", 0, 0);
      *(v13 + 56) = FigDispatchQueueCreateWithPriority("com.apple.coremedia.figntpclient_dns", 0, 0);
      CFRetain(v13);
      v15 = *(v13 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigNTPClientCreate_block_invoke;
      block[3] = &__block_descriptor_tmp_17;
      v22 = 5;
      block[4] = CFPreferenceOrOptionNumberWithDefault;
      block[5] = v13;
      dispatch_async(v15, block);
      result = 0;
      *a2 = v13;
      return result;
    }

    v17 = qword_1EAF1CDE0;
    v18 = v2;
    v19 = 4294951425;
    v20 = 392;
  }

  else
  {
    v17 = qword_1EAF1CDE0;
    v18 = v2;
    v19 = 4294951426;
    v20 = 386;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v19, "<<<< FigNTP >>>>", v20, v18, v5, v6);
}

void __FigNTPClientCreate_block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  MEMORY[0x1EEE9AC00]();
  v4 = &(&v58)[-2 * v3];
  v70 = 0;
  v5 = FigCopyCFPreferenceAppValueOrOptionCFTypeWithDefault(0, @"ntp_hostname", @"com.apple.coremedia", @"time.apple.com");
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(v5, 0x8000100u, &v70);
  *(*(a1 + 40) + 48) = dispatch_semaphore_create(0);
  *(*(a1 + 40) + 72) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  LODWORD(v7) = *(a1 + 48);
  if (v7 >= 1)
  {
    v59 = v5;
    v8 = 0;
    v9 = (1000000 * v2) >> 1;
    v62 = 1000000 * v2 / 0x1E8480uLL;
    v63 = 1000 * v9;
    v61 = v9 - 1000000 * v62;
    v10 = v4;
    *&v6 = 136315394;
    v60 = v6;
    v58 = v4;
    do
    {
      v11 = *(a1 + 40);
      v71 = 0;
      v12 = dispatch_time(0, v63);
      v72 = 0;
      v73[0] = &v72;
      v73[1] = 0x6800000000;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      AddrInfo = DNSServiceGetAddrInfo(&v71, 0x10000u, 0, 1u, CStringPtrAndBufferToFree, figNTPClient_addressInfoCallBack, v11);
      if (AddrInfo)
      {
        __FigNTPClientCreate_block_invoke_cold_1(v73, AddrInfo, v14, v15, v16, v17, v18, v19);
      }

      else
      {
        v20 = DNSServiceSetDispatchQueue(v71, v11[7]);
        if (v20)
        {
          __FigNTPClientCreate_block_invoke_cold_2(v73, v20, v21, v22, v23, v24, v25, v26);
        }

        else
        {
          dispatch_semaphore_wait(v11[6], v12);
          v27 = v11[7];
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 0x40000000;
          *&block[16] = __figNTPClient_sntp_unicast_block_invoke;
          v80 = &unk_1E749F280;
          v88 = v8;
          v89 = 123;
          v90 = 0;
          v81 = &v72;
          v82 = v11;
          v83 = v62;
          v84 = v61;
          v85 = 0;
          v86 = figntp_gettime;
          v87 = v71;
          dispatch_sync(v27, block);
        }
      }

      v28 = *(v73[0] + 56);
      v66 = *(v73[0] + 40);
      v67 = v28;
      v29 = *(v73[0] + 88);
      v68 = *(v73[0] + 72);
      v69 = v29;
      v65 = *(v73[0] + 24);
      _Block_object_dispose(&v72, 8);
      v30 = v68;
      v10[2] = v67;
      v10[3] = v30;
      v10[4] = v69;
      v31 = v66;
      *v10 = v65;
      v10[1] = v31;
      v32 = *v10;
      if (v32)
      {
        LODWORD(v65) = 0;
        LOBYTE(v71) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CDE0, 0, &v65, &v71);
        v34 = v65;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v71))
        {
          v36 = v34;
        }

        else
        {
          v36 = v34 & 0xFFFFFFFE;
        }

        if (v36)
        {
          v37 = sntp_result_strings[v32];
          *block = v60;
          *&block[4] = "FigNTPClientCreate_block_invoke";
          *&block[12] = 2082;
          *&block[14] = v37;
          v38 = _os_log_send_and_compose_impl();
          LOBYTE(v34) = v65;
        }

        else
        {
          v38 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CDE0, 0, 1, v38, v38 != &v72, v34, 0, v35);
      }

      ++v8;
      v7 = *(a1 + 48);
      v10 += 5;
    }

    while (v8 < v7);
    v4 = v58;
    v5 = v59;
  }

  v39 = sntp_clock_select(v4, v7);
  if (v39)
  {
    v40 = *(a1 + 40);
    *(v40 + 16) = sntp_calc_offset(v39);
    *(v40 + 24) = v41;
    v42 = *(a1 + 40);
    v43 = *(v42 + 24);
    *(v42 + 16) -= 2208988800;
    v44 = sntp_datestamp_subsecs_to_nsec(v43);
    v45 = *(a1 + 40);
    *(v45 + 32) = v44;
    *(v45 + 80) = 1;
    if (dword_1EAF1CDE8)
    {
      LODWORD(v65) = 0;
      LOBYTE(v71) = 0;
      v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CDE0, 1, &v65, &v71);
      v47 = v65;
      if (os_log_type_enabled(v46, v71))
      {
        v49 = v47;
      }

      else
      {
        v49 = v47 & 0xFFFFFFFE;
      }

      if (v49)
      {
        *block = 136315138;
        *&block[4] = "FigNTPClientCreate_block_invoke";
        v50 = _os_log_send_and_compose_impl();
        LOBYTE(v47) = v65;
      }

      else
      {
        v50 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CDE0, 1u, 1, v50, v50 != &v72, v47, 0, v48);
      v45 = *(a1 + 40);
    }
  }

  else
  {
    LODWORD(v65) = 0;
    LOBYTE(v71) = 0;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CDE0, 0, &v65, &v71);
    v52 = v65;
    if (os_log_type_enabled(v51, v71))
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 & 0xFFFFFFFE;
    }

    if (v54)
    {
      *block = 136315138;
      *&block[4] = "FigNTPClientCreate_block_invoke";
      v55 = _os_log_send_and_compose_impl();
      LOBYTE(v52) = v65;
    }

    else
    {
      v55 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CDE0, 0, 1, v55, v55 != &v72, v52, 0, v53);
    v45 = *(a1 + 40);
    *(v45 + 80) = 2;
  }

  v56 = *(v45 + 72);
  if (v56)
  {
    CFRelease(v56);
    v45 = *(a1 + 40);
  }

  v57 = *(v45 + 48);
  if (v57)
  {
    dispatch_release(v57);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  free(v70);
  CFRelease(*(a1 + 40));
}

unint64_t figntp_gettime()
{
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC, &v3);
  v0 = sntp_datestamp_from_timespec(v3.tv_sec);
  return sntp_timestamp_from_datestamp(v0, v1);
}

uint64_t FigNTPGetTimeOfDay(uint64_t a1, _OWORD *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2800000000;
  v10 = 0;
  v11 = 0;
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigNTPGetTimeOfDay_block_invoke;
  v6[3] = &unk_1E749F258;
  v6[5] = &v12;
  v6[6] = a1;
  v6[4] = &v7;
  dispatch_sync(v3, v6);
  if (a2)
  {
    *a2 = *(v8 + 3);
  }

  v4 = *(v13 + 6);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

void __FigNTPGetTimeOfDay_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = *(a1[6] + 80);
  if (v10)
  {
    if (v10 == 1)
    {
      if (clock_gettime(_CLOCK_MONOTONIC, (*(a1[4] + 8) + 24)))
      {
        *(*(a1[5] + 8) + 24) = -15874;
      }

      else
      {
        v17 = a1[6];
        v18 = *(v17 + 16);
        *(*(a1[4] + 8) + 24) += v18;
        v19 = *(a1[4] + 8);
        v20 = *(v19 + 32);
        v21 = *(v17 + 32);
        if (v18 < 0)
        {
          v22 = v20 - v21;
        }

        else
        {
          v22 = v20 + v21;
        }

        *(v19 + 32) = v22;
      }
    }

    else
    {
      *(*(a1[5] + 8) + 24) = -15873;
      if (dword_1EAF1CDE8)
      {
        v24[0] = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CDE0, 1, v24, &type);
        v12 = v24[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v15 = a1[6];
          v24[1] = 136315394;
          v25 = "FigNTPGetTimeOfDay_block_invoke";
          v26 = 2048;
          v27 = v15;
          v16 = _os_log_send_and_compose_impl();
          LOBYTE(v12) = v24[0];
        }

        else
        {
          v16 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CDE0, 1u, 1, v16, v16 != &v28, v12, 0, v13);
      }
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDE0, 0xFFFFC200uLL, "<<<< FigNTP >>>>", 0x1FA, v8, a7, a8);
  }
}

unint64_t FigNTPTimestampFromTimeOfDayTime(CMTime *a1)
{
  v5 = *a1;
  Seconds = CMTimeGetSeconds(&v5);
  sntp_datestamp_from_double(Seconds + 2208988800.0);
  return sntp_timestamp_from_datestamp(v2, v3);
}

CMTime *FigTimeOfDayTimeFromNTPTimestamp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sntp_timestamp_to_datestamp(a1);
  v5 = sntp_datestamp_to_double(v3, v4);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;

  return CMTimeMake(a2, ((v5 + -2208988800.0) * 1000000.0), 1000000);
}

double figNTPClient_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigNTPClient_Finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

CFStringRef FigNTPClient_CopyFormattingDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"FigNTPClient");
}

CFStringRef FigNTPClient_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"FigNTPClient");
}

void __figNTPClient_sntp_unicast_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 64))
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      v3 = *(*(a1 + 40) + 72);
    }

    else
    {
      Count = 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v3, *(a1 + 80) % Count);
    *&v17.sa_len = 512;
    *&v17.sa_data[10] = 0;
    *&v17.sa_data[2] = FigCFNumberGetUInt64(ValueAtIndex);
    *v17.sa_data = bswap32(*(a1 + 84)) >> 16;
    v6 = socket(2, 2, 17);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 88) == 1 && (*&v16.sa_len = 2063598080, *&v16.sa_data[6] = 0, bind(v6, &v16, 0x10u)))
      {
        v8 = *(*(a1 + 32) + 8);
        v9 = 3;
      }

      else
      {
        if (!connect(v7, &v17, 0x10u))
        {
          sntp_client_exchange(v7, (a1 + 48), *(a1 + 64), v15);
          v10 = *(*(a1 + 32) + 8);
          v11 = v15[4];
          v12 = v15[3];
          v13 = v15[2];
          v14 = v15[0];
          *(v10 + 40) = v15[1];
          *(v10 + 56) = v13;
          *(v10 + 72) = v12;
          *(v10 + 88) = v11;
          *(v10 + 24) = v14;
          *(*(*(a1 + 32) + 8) + 84) = *&v17.sa_data[2];
          goto LABEL_15;
        }

        v8 = *(*(a1 + 32) + 8);
        v9 = 4;
      }

      *(v8 + 24) = v9;
LABEL_15:
      close(v7);
      goto LABEL_16;
    }

    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_16:
  DNSServiceRefDeallocate(*(a1 + 72));
}

uint64_t FigSandboxRegistrationRemoteGetTypeID()
{
  if (qword_1ED4CC5E8 != -1)
  {
    FigSandboxRegistrationRemoteGetTypeID_cold_1();
  }

  return qword_1ED4CC5F0;
}

uint64_t RegisterFigSandboxRegistrationRemoteType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CC5F0 = result;
  return result;
}

uint64_t FigSandboxRegistrationRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        FigSandboxRegistrationRemoteGetObjectID_cold_1(&v4);
        return v4;
      }

      else
      {
        result = 0;
        *a2 = *(a1 + 40);
      }
    }

    else
    {
      FigSandboxRegistrationRemoteGetObjectID_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigSandboxRegistrationRemoteGetObjectID_cold_3(&v6);
    return v6;
  }

  return result;
}

double figSandboxRegistrationRemoteInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figSandboxRegistrationRemoteFinalize(uint64_t a1)
{
  v12 = 0;
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*(a1 + 32))
      {
        v3 = CFRetain(v2);
        v4 = CFRetain(*(a1 + 32));
        v5 = *(a1 + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __figSandboxRegistrationRemoteFinalize_block_invoke;
        block[3] = &__block_descriptor_tmp_18;
        block[4] = v4;
        block[5] = v3;
        dispatch_async(v5, block);
      }
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    FigXPCRemoteClientDisassociateObject(*(a1 + 56), v6);
    if (!*(a1 + 48))
    {
      FigXPCCreateBasicMessage(0x646F6F6Du, *(a1 + 40), &v12);
      FigXPCRemoteClientSendSyncMessage(*(a1 + 56), v12);
    }
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 56) = 0;
  }

  FigXPCRelease(v12);
  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 32) = 0;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    dispatch_release(v10);
  }
}

__CFString *figSandboxRegistrationRemoteCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSandboxRegistrationRemote %p> objectID %lld", a1, a1[5]);
  return Mutable;
}

void __figSandboxRegistrationRemoteFinalize_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

size_t __remoteSandboxReg_copyRemoteClientForProcess_block_invoke(uint64_t a1)
{
  if (FigRemote_ShouldConnectToMediaplaybackd())
  {
    result = remoteSandboxReg_createRemoteClientForProcess(*(a1 + 32), &qword_1ED4CC600);
  }

  else
  {
    result = remoteSandboxReg_copyRemoteClientForProcess(2, &qword_1ED4CC600);
  }

  _MergedGlobals_19 = result;
  return result;
}

size_t remoteSandboxReg_createRemoteClientForProcess(int a1, unint64_t **a2)
{
  v5 = remoteSandboxReg_PlaybackProcessDied;
  if (a1 == 1)
  {
    goto LABEL_4;
  }

  if (a1 == 2)
  {
    v5 = remoteSandboxReg_CameraCaptureProcessDied;
LABEL_4:
    v13[0] = 1;
    v13[1] = remoteSandboxReg_DeadConnectionCallback;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v5;
    memset(&v13[5], 0, 24);
    ShouldConnectToMediaplaybackd = FigRemote_ShouldConnectToMediaplaybackd();
    v7 = "com.apple.coremedia.mediaplaybackd.sandboxserver.xpc";
    if (a1 != 1)
    {
      v7 = "com.apple.coremedia.sandboxserver.xpc";
    }

    if (ShouldConnectToMediaplaybackd)
    {
      v8 = v7;
    }

    else
    {
      v8 = "com.apple.coremedia.sandboxserver.xpc";
    }

    return FigXPCRemoteClientCreate(v8, v13, 0, a2);
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0x12B, v2, v11, v12);
}

size_t __remoteSandboxReg_copyRemoteClientForProcess_block_invoke_2(uint64_t a1)
{
  result = remoteSandboxReg_createRemoteClientForProcess(*(a1 + 32), &qword_1ED4CC610);
  dword_1ED4CC5E4 = result;
  return result;
}

void *svReader_appendKeyAndValue(void *result, CFTypeRef cf, CFTypeRef a3)
{
  v4 = result;
  if (*result)
  {
    result = CFRetain(cf);
    *(*v4 + 8 * v4[2]) = result;
  }

  if (v4[1])
  {
    result = CFRetain(a3);
    v5 = v4[2];
    *(v4[1] + 8 * v5) = result;
  }

  else
  {
    v5 = v4[2];
  }

  v4[2] = v5 + 1;
  return result;
}

uint64_t FigExternalSphericalBridge_ParseVersion1Properties(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, CFTypeRef cf, uint64_t a6)
{
  if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()))
  {
    FigExternalSphericalBridge_ParseVersion1Properties_cold_4(&v24);
    return v24;
  }

  if (!a4)
  {
    FigExternalSphericalBridge_ParseVersion1Properties_cold_3(&v24);
    return v24;
  }

  v21[0] = a2;
  v21[1] = a3;
  v22 = *a4;
  v23 = a6;
  StringValue = FigCFDictionaryGetStringValue(cf);
  if (!StringValue || CFStringCompare(@"true", StringValue, 0))
  {
    FigExternalSphericalBridge_ParseVersion1Properties_cold_2(&v24);
    return v24;
  }

  v13 = FigCFDictionaryGetStringValue(cf);
  if (!v13 || CFStringCompare(v13, @"equirectangular", 0))
  {
    FigExternalSphericalBridge_ParseVersion1Properties_cold_1(&v24);
    return v24;
  }

  v14 = FigCFDictionaryGetStringValue(cf);
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  if (CFStringCompare(v14, @"mono", 0) == kCFCompareEqualTo)
  {
    goto LABEL_12;
  }

  if (CFStringCompare(v15, @"top-bottom", 0) == kCFCompareEqualTo)
  {
    svReader_appendKeyAndValue(v21, @"ProjectionKind", @"Equirectangular");
    v18 = kFigFormatDescriptionViewPackingKind_OverUnder;
LABEL_15:
    svReader_appendKeyAndValue(v21, @"ViewPackingKind", *v18);
    v19 = *MEMORY[0x1E695E4D0];
    svReader_appendKeyAndValue(v21, @"HasLeftStereoEyeView", *MEMORY[0x1E695E4D0]);
    v16 = @"HasRightStereoEyeView";
    v17 = v19;
    goto LABEL_16;
  }

  if (CFStringCompare(v15, @"left-right", 0) == kCFCompareEqualTo)
  {
    svReader_appendKeyAndValue(v21, @"ProjectionKind", @"Equirectangular");
    v18 = kFigFormatDescriptionViewPackingKind_SideBySide;
    goto LABEL_15;
  }

LABEL_12:
  v16 = @"ProjectionKind";
  v17 = @"Equirectangular";
LABEL_16:
  svReader_appendKeyAndValue(v21, v16, v17);
  result = 0;
  *a4 = v22;
  return result;
}

uint64_t parseSphericalChildBoxes(unsigned __int8 *a1, uint64_t (**a2)(unsigned __int8 *, uint64_t), uint64_t a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v13 = 0;
    do
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v13, 0);
      if (CurrentAtomTypeAndDataLength || ((v9 = a2, v13 == *a2) || (v9 = a2 + 2, v13 == *(a2 + 4))) && (CurrentAtomTypeAndDataLength = v9[1](a1, a3), CurrentAtomTypeAndDataLength))
      {
        v11 = CurrentAtomTypeAndDataLength;
        goto LABEL_11;
      }

      Atom = FigAtomStreamAdvanceToNextAtom(a1);
    }

    while (!Atom);
    if (Atom == -12890)
    {
      v11 = 0;
    }

    else
    {
      v11 = Atom;
    }

LABEL_11:
    CFRelease(v7);
  }

  else
  {
    parseSphericalChildBoxes_cold_1(&v14);
    return v14;
  }

  return v11;
}

uint64_t OUTLINED_FUNCTION_1_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  *(v5 - 40) = a2;
  a5 = 0;
  a3 = 0;

  return FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &a5, &a3);
}

uint64_t FigHALAudioStreamGetClassID()
{
  if (FigHALAudioStreamGetClassID_sRegisterFigHALAudioStreamClassOnce != -1)
  {
    FigHALAudioStreamGetClassID_cold_1();
  }

  return FigHALAudioStreamGetClassID_sFigHALAudioStreamClassID;
}

size_t __FigHALAudioStreamGetClassID_block_invoke()
{
  ClassID = FigHALAudioDeviceGetClassID();

  return FigBaseClassRegisterClass(&FigHALAudioStreamGetClassID_sFigHALAudioStreamClassDesc, ClassID, 0, &FigHALAudioStreamGetClassID_sFigHALAudioStreamClassID, v1, v2, v3, v4);
}

uint64_t FigCaptionDataCreateMutableCopy(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  theArray = 0;
  v49 = 0;
  valuePtr = 0;
  value = 0;
  cf = 0;
  attrName = 0;
  if (!a3)
  {
    FigCaptionDataCreateMutableCopy_cold_5(&v43);
LABEL_62:
    Mutable = 0;
LABEL_64:
    v21 = 0;
LABEL_65:
    location_low = LODWORD(v43.location);
    goto LABEL_40;
  }

  if (!a2)
  {
    FigCaptionDataCreateMutableCopy_cold_4(&v43);
    goto LABEL_62;
  }

  Mutable = CFAttributedStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    FigCaptionDataCreateMutableCopy_cold_3(&v43);
    goto LABEL_64;
  }

  v6 = *(*(CMBaseObjectGetVTable(a2) + 16) + 8);
  if (v6)
  {
    v7 = v6(a2);
  }

  else
  {
    v7 = &stru_1F0B78830;
  }

  v51.location = 0;
  v51.length = 0;
  theString = v7;
  CFAttributedStringReplaceString(Mutable, v51, v7);
  v8 = *MEMORY[0x1E695E480];
  v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigThreadRunOnce(&fmcd_getCaptionPropertyKeys_sCaptionPropertyKeysOnce, fmcd_initializeCaptionPropertyKeys);
  v10 = sCaptionPropertyKeys;
  if (CFArrayGetCount(sCaptionPropertyKeys))
  {
    v11 = 0;
    do
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
      CMBaseObject = FigCaptionDataGetCMBaseObject(a2);
      v14 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
      if (!v14)
      {
        goto LABEL_36;
      }

      v15 = v14(CMBaseObject, ValueAtIndex, v8, &cf);
      if (v15)
      {
        goto LABEL_68;
      }

      if (cf)
      {
        v16 = CFArrayGetValueAtIndex(v10, v11);
        CFDictionaryAddValue(v9, v16, cf);
      }
    }

    while (++v11 < CFArrayGetCount(v10));
  }

  v17 = FigCaptionDataGetCMBaseObject(a2);
  v18 = *(*(CMBaseObjectGetVTable(v17) + 8) + 48);
  if (!v18)
  {
LABEL_36:
    v21 = 0;
LABEL_37:
    location_low = 4294954514;
    goto LABEL_38;
  }

  v15 = v18(v17, @"StylePropertyKeysInUse", v8, &theArray);
  if (v15)
  {
LABEL_68:
    location_low = v15;
    v21 = 0;
  }

  else
  {
    v38 = a3;
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v40 = v20;
        v22 = CFArrayGetValueAtIndex(theArray, v20);
        Length = CFStringGetLength(theString);
        if (Length)
        {
          break;
        }

LABEL_34:
        v20 = v40 + 1;
        if (v40 + 1 == Count)
        {
          goto LABEL_56;
        }
      }

      v24 = Length;
      v25 = 0;
      while (1)
      {
        v43.location = 0;
        v43.length = 0;
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v26 = *(*(CMBaseObjectGetVTable(a2) + 16) + 24);
        if (!v26)
        {
          goto LABEL_37;
        }

        v27 = v26(a2, v25, v22, a1, &value, &v43);
        if (v27)
        {
          goto LABEL_66;
        }

        if (value)
        {
          CFAttributedStringSetAttribute(Mutable, v43, v22, value);
          if (v19)
          {
            CFRelease(v19);
            attrName = 0;
          }

          if (v21)
          {
            CFRelease(v21);
          }

          fmcd_createStylePropertyRunIDKey(v22, &attrName);
          v21 = CFNumberCreate(v8, kCFNumberCFIndexType, &valuePtr);
          if (!v21)
          {
            FigCaptionDataCreateMutableCopy_cold_1(&v50);
            location_low = v50;
            goto LABEL_38;
          }

          v19 = attrName;
          CFAttributedStringSetAttribute(Mutable, v43, attrName, v21);
          ++valuePtr;
        }

        v25 += v43.length;
        if (v25 == v24)
        {
          goto LABEL_34;
        }
      }
    }

    v21 = 0;
LABEL_56:
    ClassID = FigCaptionDataGetClassID();
    v27 = CMDerivedObjectCreate(a1, &kFigCaptionDataVTable, ClassID, &v49, v31, v32, v33, v34);
    if (!v27)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(v49);
      v36 = valuePtr;
      DerivedStorage[1] = v9;
      DerivedStorage[2] = v36;
      *DerivedStorage = Mutable;
      v37 = FigSimpleMutexCreate();
      DerivedStorage[3] = v37;
      if (v37)
      {
        location_low = 0;
        Mutable = 0;
        *v38 = v49;
        v49 = 0;
        goto LABEL_40;
      }

      FigCaptionDataCreateMutableCopy_cold_2(&v43);
      Mutable = 0;
      goto LABEL_65;
    }

LABEL_66:
    location_low = v27;
  }

LABEL_38:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (attrName)
  {
    CFRelease(attrName);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return location_low;
}

CFStringRef fmcd_createStylePropertyRunIDKey(uint64_t a1, CFStringRef *a2)
{
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", a1, @"_InternalUseOnly_StyleRunID");
  if (!result)
  {
    return fmcd_createStylePropertyRunIDKey_cold_1();
  }

  *a2 = result;
  return result;
}

size_t FigCaptionDataCreateMutable(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  if (a2)
  {
    ClassID = FigCaptionDataGetClassID();
    v9 = CMDerivedObjectCreate(a1, &kFigCaptionDataVTable, ClassID, &cf, v5, v6, v7, v8);
    if (v9)
    {
      v14 = v9;
      goto LABEL_17;
    }

    if (cf)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    }

    else
    {
      DerivedStorage = 0;
    }

    Mutable = CFAttributedStringCreateMutable(a1, 0);
    *DerivedStorage = Mutable;
    if (Mutable)
    {
      v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      DerivedStorage[1] = v12;
      if (v12)
      {
        v13 = FigSimpleMutexCreate();
        DerivedStorage[3] = v13;
        if (v13)
        {
          v14 = 0;
          *a2 = cf;
          return v14;
        }

        FigCaptionDataCreateMutable_cold_1(&v17);
      }

      else
      {
        FigCaptionDataCreateMutable_cold_2(&v17);
      }
    }

    else
    {
      FigCaptionDataCreateMutable_cold_3(&v17);
    }
  }

  else
  {
    FigCaptionDataCreateMutable_cold_4(&v17);
  }

  v14 = v17;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

CFArrayRef fmcd_initializeCaptionPropertyKeys()
{
  v1[13] = *MEMORY[0x1E69E9840];
  v1[0] = @"Region";
  v1[1] = @"Animation";
  v1[2] = @"TextAlign";
  v1[3] = @"MultiRowAlign";
  v1[4] = @"SourceInformation";
  v1[5] = @"LinePadding";
  v1[6] = @"LineHeight";
  v1[7] = @"BackgroundColor";
  v1[8] = @"FillLineGap";
  v1[9] = @"Hidden";
  v1[10] = @"RubyAlign";
  v1[11] = @"RubyPosition";
  v1[12] = @"RubyReserve";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v1, 13, MEMORY[0x1E695E9C0]);
  sCaptionPropertyKeys = result;
  return result;
}

BOOL fmcd_Equal(char *a1, char *a2)
{
  if (a1)
  {
    ClassID = FigCaptionDataGetClassID();
    if (!CMBaseObjectIsMemberOfClass(a1, ClassID))
    {
      fmcd_Equal_cold_1();
      return 0;
    }
  }

  if (a2)
  {
    v5 = FigCaptionDataGetClassID();
    if (!CMBaseObjectIsMemberOfClass(a2, v5))
    {
      fmcd_Equal_cold_2();
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v7 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
    if (v7)
    {
      v8 = v7(a1);
    }

    else
    {
      v8 = &stru_1F0B78830;
    }

    v9 = *(*(CMBaseObjectGetVTable(a2) + 16) + 8);
    if (v9)
    {
      v10 = v9(a2);
    }

    else
    {
      v10 = &stru_1F0B78830;
    }

    return FigCFEqual(v8, v10) != 0;
  }

  return result;
}

size_t fmcd_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  result = FigSimpleMutexDestroy(*(DerivedStorage + 24));
  *(DerivedStorage + 24) = 0;
  return result;
}

__CFString *fmcd_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CaptionText = fmcd_GetCaptionText(a1);
  CFStringAppendFormat(Mutable, 0, @"\tCaptionData: %p text<%@>", a1, CaptionText);
  return Mutable;
}

uint64_t fmcd_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_11:
    fmcd_CopyProperty_cold_6(&v28);
    return LODWORD(v28.location);
  }

  DerivedStorage = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!a4)
  {
    fmcd_CopyProperty_cold_5(&v28);
    return LODWORD(v28.location);
  }

  if (CFEqual(a2, @"Text"))
  {
    v9 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
    if (v9)
    {
      v10 = v9(a1);
      if (!v10)
      {
        v11 = 0;
LABEL_36:
        location_low = 0;
        *a4 = v11;
        return location_low;
      }
    }

    else
    {
      v10 = &stru_1F0B78830;
    }

    v11 = CFRetain(v10);
    goto LABEL_36;
  }

  if (!CFEqual(a2, @"StylePropertyKeysInUse"))
  {
    v13 = CFEqual(a2, @"CaptionPropertyKeysInUse");
    v14 = *(DerivedStorage + 8);
    if (!v13)
    {
      Value = CFDictionaryGetValue(v14, a2);
      v11 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      goto LABEL_36;
    }

    Count = CFDictionaryGetCount(v14);
    v16 = Count;
    if (Count)
    {
      if ((Count - 0x2000000000000000) < 0xE000000000000001 || (v17 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL)) == 0)
      {
        fmcd_CopyProperty_cold_3(&v28);
        return LODWORD(v28.location);
      }
    }

    else
    {
      v17 = 0;
    }

    CFDictionaryGetKeysAndValues(*(DerivedStorage + 8), v17, 0);
    v11 = CFArrayCreate(a3, v17, v16, MEMORY[0x1E695E9C0]);
    free(v17);
    if (v11)
    {
      goto LABEL_36;
    }

    fmcd_CopyProperty_cold_4(&v28);
    return LODWORD(v28.location);
  }

  FigSimpleMutexLock(*(DerivedStorage + 24));
  if (a1)
  {
    v12 = CMBaseObjectGetDerivedStorage(a1);
  }

  else
  {
    v12 = 0;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Mutable)
  {
    v20 = Mutable;
    Length = CFAttributedStringGetLength(*v12);
    if (Length)
    {
      v22 = Length;
      v23 = 0;
      do
      {
        v28.location = 0;
        v28.length = 0;
        Attributes = CFAttributedStringGetAttributes(*v12, v23, &v28);
        CFDictionaryApplyFunction(Attributes, fmcd_collectKeys, v20);
        v23 = v28.length + v28.location;
      }

      while (v28.length + v28.location != v22);
    }

    v25 = CFSetGetCount(v20);
    v11 = CFArrayCreateMutable(a3, v25, MEMORY[0x1E695E9C0]);
    if (v11)
    {
      CFSetApplyFunction(v20, fmcd_addKeyToArray, v11);
      location_low = 0;
    }

    else
    {
      fmcd_CopyProperty_cold_1(&v28);
      location_low = LODWORD(v28.location);
    }

    CFRelease(v20);
  }

  else
  {
    fmcd_CopyProperty_cold_2(&v28);
    v11 = 0;
    location_low = LODWORD(v28.location);
  }

  FigSimpleMutexUnlock(*(DerivedStorage + 24));
  if (!location_low)
  {
    goto LABEL_36;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return location_low;
}

size_t fmcd_SetProperty(uint64_t a1, const void *a2, void *a3)
{
  if (!a1 || (DerivedStorage = CMBaseObjectGetDerivedStorage(a1)) == 0)
  {
    fmcd_SetProperty_cold_30(&v49);
    return LODWORD(v49);
  }

  if (!a2)
  {
    fmcd_SetProperty_cold_29(&v49);
    return LODWORD(v49);
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"Text"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFStringGetTypeID())
      {
        v10 = *(*(CMBaseObjectGetVTable(a1) + 16) + 16);
        if (!v10)
        {
          return 4294954514;
        }

        return v10(a1, a3);
      }

      fmcd_SetProperty_cold_1(&v49);
    }

    else
    {
      fmcd_SetProperty_cold_2(&v49);
    }

    return LODWORD(v49);
  }

  if (CFEqual(a2, @"Region"))
  {
    if (!a3)
    {
      fmcd_SetProperty_cold_4(&v49);
      return LODWORD(v49);
    }

    v12 = CFGetTypeID(a3);
    if (v12 != FigCaptionRegionGetTypeID())
    {
      fmcd_SetProperty_cold_3(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"Animation"))
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFStringGetTypeID())
      {
        fmcd_SetProperty_cold_5(&v49);
        return LODWORD(v49);
      }

      if (!CFEqual(a3, @"Animation_CharacterReveal") && !CFEqual(a3, @"Animation_None"))
      {
        fmcd_SetProperty_cold_6(&v49);
        return LODWORD(v49);
      }
    }

LABEL_15:
    CFDictionarySetValue(*(v8 + 8), a2, a3);
    return 0;
  }

  if (CFEqual(a2, @"TextAlign"))
  {
    if (!a3 || (v14 = CFGetTypeID(a3), v14 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_8(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (InitialValue = FigCaptionDynamicStyleGetInitialValue(a3), v16 = CFGetTypeID(InitialValue), v16 != CFStringGetTypeID()))
    {
      fmcd_SetProperty_cold_7(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"LinePadding"))
  {
    v49 = 0.0;
    if (a3 && (v17 = CFGetTypeID(a3), v17 == FigCaptionDynamicStyleGetTypeID()))
    {
      if (FigCaptionDynamicStyleGetInitialValue(a3) && (v18 = FigCaptionDynamicStyleGetInitialValue(a3), v19 = CFGetTypeID(v18), v19 == CFDictionaryGetTypeID()))
      {
        v20 = FigCaptionDynamicStyleGetInitialValue(a3);
        result = FigCaptionGeometryGetCellBasedDimensionFromDictionary(v20, &v49);
        if (result)
        {
          return result;
        }

        if (v49 >= 0.0)
        {
          goto LABEL_15;
        }

        fmcd_SetProperty_cold_9(&v50);
      }

      else
      {
        fmcd_SetProperty_cold_10(&v50);
      }
    }

    else
    {
      fmcd_SetProperty_cold_11(&v50);
    }

    return v50;
  }

  if (CFEqual(a2, @"LineHeight"))
  {
    if (!a3 || (v21 = CFGetTypeID(a3), v21 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_13(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v22 = FigCaptionDynamicStyleGetInitialValue(a3), v23 = CFGetTypeID(v22), v23 != CFDictionaryGetTypeID()))
    {
      fmcd_SetProperty_cold_12(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"MultiRowAlign"))
  {
    if (!a3 || (v24 = CFGetTypeID(a3), v24 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_15(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v25 = FigCaptionDynamicStyleGetInitialValue(a3), v26 = CFGetTypeID(v25), v26 != CFStringGetTypeID()))
    {
      fmcd_SetProperty_cold_14(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"SourceInformation"))
  {
    if (!a3 || (v27 = CFGetTypeID(a3), v27 != CFDictionaryGetTypeID()))
    {
      fmcd_SetProperty_cold_16(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"BackgroundColor"))
  {
    if (!a3 || (v28 = CFGetTypeID(a3), v28 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_18(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v29 = FigCaptionDynamicStyleGetInitialValue(a3), v30 = CFGetTypeID(v29), v30 != CGColorGetTypeID()))
    {
      fmcd_SetProperty_cold_17(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"FillLineGap"))
  {
    if (!a3 || (v31 = CFGetTypeID(a3), v31 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_20(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v32 = FigCaptionDynamicStyleGetInitialValue(a3), v33 = CFGetTypeID(v32), v33 != CFBooleanGetTypeID()))
    {
      fmcd_SetProperty_cold_19(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"Hidden"))
  {
    if (!a3 || (v34 = CFGetTypeID(a3), v34 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_22(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v35 = FigCaptionDynamicStyleGetInitialValue(a3), v36 = CFGetTypeID(v35), v36 != CFBooleanGetTypeID()))
    {
      fmcd_SetProperty_cold_21(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"RubyAlign"))
  {
    if (!a3 || (v37 = CFGetTypeID(a3), v37 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_24(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v38 = FigCaptionDynamicStyleGetInitialValue(a3), v39 = CFGetTypeID(v38), v39 != CFStringGetTypeID()))
    {
      fmcd_SetProperty_cold_23(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"RubyPosition"))
  {
    if (!a3 || (v40 = CFGetTypeID(a3), v40 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_26(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v41 = FigCaptionDynamicStyleGetInitialValue(a3), v42 = CFGetTypeID(v41), v42 != CFStringGetTypeID()))
    {
      fmcd_SetProperty_cold_25(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"RubyReserve"))
  {
    if (!a3 || (v43 = CFGetTypeID(a3), v43 != FigCaptionDynamicStyleGetTypeID()))
    {
      fmcd_SetProperty_cold_28(&v49);
      return LODWORD(v49);
    }

    if (!FigCaptionDynamicStyleGetInitialValue(a3) || (v44 = FigCaptionDynamicStyleGetInitialValue(a3), v45 = CFGetTypeID(v44), v45 != FigCaptionRubyReserveGetTypeID()))
    {
      fmcd_SetProperty_cold_27(&v49);
      return LODWORD(v49);
    }

    goto LABEL_15;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE10uLL, "<<<< FigMutableCaptionData >>>>", 0x20A, v3, v47, v48);
}

CFStringRef fmcd_GetCaptionText(uint64_t a1)
{
  if (a1 && (DerivedStorage = CMBaseObjectGetDerivedStorage(a1)) != 0)
  {
    v2 = DerivedStorage;
    if (*DerivedStorage)
    {
      FigSimpleMutexLock(*(DerivedStorage + 24));
      String = CFAttributedStringGetString(*v2);
      FigSimpleMutexUnlock(*(v2 + 24));
      return String;
    }

    fmcd_GetCaptionText_cold_1();
  }

  else
  {
    fmcd_GetCaptionText_cold_2();
  }

  return 0;
}

void fmcd_collectKeys(const __CFString *a1, uint64_t a2, __CFSet *a3)
{
  if (!CFStringHasSuffix(a1, @"_InternalUseOnly_StyleRunID"))
  {

    CFSetAddValue(a3, a1);
  }
}

size_t fmcd_SetCaptionText(const void *a1, const __CFString *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    if (a2)
    {
      v6 = DerivedStorage;
      v7 = CFGetAllocator(a1);
      Mutable = CFAttributedStringCreateMutable(v7, 0);
      if (Mutable)
      {
        v9 = Mutable;
        v18.location = 0;
        v18.length = 0;
        CFAttributedStringReplaceString(Mutable, v18, a2);
        v10 = *v6;
        *v6 = v9;
        CFRetain(v9);
        if (v10)
        {
          CFRelease(v10);
        }

        CFRelease(v9);
        return 0;
      }

      else
      {
        fmcd_SetCaptionText_cold_1(&v15);
        return v15;
      }
    }

    else
    {
      fmcd_SetCaptionText_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x141, v2, v13, v14);
  }
}

uint64_t fmcd_CopyStylePropertyAtIndex(uint64_t a1, CFIndex a2, const __CFString *a3, uint64_t a4, void *a5, CFRange *a6)
{
  if (!a1 || (DerivedStorage = CMBaseObjectGetDerivedStorage(a1), longestEffectiveRange.length = 0, v19 = 0, longestEffectiveRange.location = 0, v17 = 0uLL, !DerivedStorage))
  {
    fmcd_CopyStylePropertyAtIndex_cold_2(&v20);
    return v20;
  }

  if (a2 < 0 || (v11 = DerivedStorage, String = CFAttributedStringGetString(*DerivedStorage), CFStringGetLength(String) <= a2))
  {
    fmcd_CopyStylePropertyAtIndex_cold_1(&v20);
    return v20;
  }

  fmcd_createStylePropertyRunIDKey(a3, &v19);
  FigSimpleMutexLock(v11[3]);
  v13 = *v11;
  v14 = v19;
  v21.length = CFAttributedStringGetLength(*v11);
  v21.location = 0;
  CFAttributedStringGetAttributeAndLongestEffectiveRange(v13, a2, v14, v21, &longestEffectiveRange);
  AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(*v11, a2, a3, longestEffectiveRange, &v17);
  FigSimpleMutexUnlock(v11[3]);
  if (AttributeAndLongestEffectiveRange)
  {
    CFRetain(AttributeAndLongestEffectiveRange);
  }

  if (a5)
  {
    *a5 = AttributeAndLongestEffectiveRange;
    AttributeAndLongestEffectiveRange = 0;
  }

  if (a6)
  {
    *a6 = v17;
  }

  if (AttributeAndLongestEffectiveRange)
  {
    CFRelease(AttributeAndLongestEffectiveRange);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return 0;
}

size_t fmcd_SetStylePropertyInRange(uint64_t a1, const __CFString *a2, const void *a3, CFIndex a4, CFIndex a5)
{
  if (!a1 || (DerivedStorage = CMBaseObjectGetDerivedStorage(a1), attrName = 0, !DerivedStorage))
  {
    fmcd_SetStylePropertyInRange_cold_5(&v23);
    return v23;
  }

  if (!a2)
  {
    fmcd_SetStylePropertyInRange_cold_4(&v23);
    return v23;
  }

  if (!a3)
  {
    fmcd_SetStylePropertyInRange_cold_3(&v23);
    return v23;
  }

  if (a4 < 0 || (v11 = DerivedStorage, String = CFAttributedStringGetString(*DerivedStorage), a4 >= CFStringGetLength(String)))
  {
    fmcd_SetStylePropertyInRange_cold_1(&v23);
    return v23;
  }

  if (a4 + a5 < 0 || (v13 = CFAttributedStringGetString(*v11), a4 + a5 > CFStringGetLength(v13)))
  {
    fmcd_SetStylePropertyInRange_cold_2(&v23);
    return v23;
  }

  v24.location = a4;
  v24.length = a5;
  CFAttributedStringSetAttribute(*v11, v24, a2, a3);
  fmcd_createStylePropertyRunIDKey(a2, &attrName);
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, v11 + 2);
  if (!v14)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x27F, v5, v20, v21);
    v16 = attrName;
    if (!attrName)
    {
      return v17;
    }

    goto LABEL_11;
  }

  v15 = v14;
  v16 = attrName;
  v25.location = a4;
  v25.length = a5;
  CFAttributedStringSetAttribute(*v11, v25, attrName, v14);
  v11[2] = (v11[2] + 1);
  CFRelease(v15);
  v17 = 0;
  if (v16)
  {
LABEL_11:
    CFRelease(v16);
  }

  return v17;
}

uint64_t fmcd_RemoveStylePropertyInRange(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4)
{
  if (!a1 || (DerivedStorage = CMBaseObjectGetDerivedStorage(a1), attrName = 0, !DerivedStorage))
  {
    fmcd_RemoveStylePropertyInRange_cold_3(&v14);
    return v14;
  }

  if (a3 < 0 || (v8 = DerivedStorage, String = CFAttributedStringGetString(*DerivedStorage), a3 >= CFStringGetLength(String)))
  {
    fmcd_RemoveStylePropertyInRange_cold_1(&v14);
    return v14;
  }

  if (a3 + a4 < 0 || (v10 = CFAttributedStringGetString(*v8), a3 + a4 > CFStringGetLength(v10)))
  {
    fmcd_RemoveStylePropertyInRange_cold_2(&v14);
    return v14;
  }

  v15.location = a3;
  v15.length = a4;
  CFAttributedStringRemoveAttribute(*v8, v15, a2);
  fmcd_createStylePropertyRunIDKey(a2, &attrName);
  v11 = attrName;
  v16.location = a3;
  v16.length = a4;
  CFAttributedStringRemoveAttribute(*v8, v16, attrName);
  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

size_t FigVirtualCaptureCardRemoteCreate(uint64_t a1, CFTypeRef *a2)
{
  v15 = 0;
  cf = 0;
  xdict = 0;
  v4 = remoteVirtualCaptureCardClient_EnsureClientEstablished();
  if (v4 || (ClassID = FigVirtualCaptureCardGetClassID(), v4 = CMDerivedObjectCreate(a1, &kRemoteFigVirtualCaptureCard_VTable, ClassID, &cf, v6, v7, v8, v9), v4) || (DerivedStorage = CMBaseObjectGetDerivedStorage(cf), v4 = FigXPCCreateBasicMessage(0x63726538u, 0, &v15), v4) || (v4 = FigXPCRemoteClientSendSyncMessageCreatingReply(gFigVirtualCaptureCardRemoteClient, v15, &xdict), v4))
  {
    v12 = v4;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
    *DerivedStorage = uint64;
    v12 = FigXPCRemoteClientAssociateObject(gFigVirtualCaptureCardRemoteClient, cf, uint64);
    if (!v12)
    {
      *a2 = cf;
      cf = 0;
      goto LABEL_7;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_7:
  FigXPCRelease(v15);
  FigXPCRelease(xdict);
  FigXPCRemoteClientKillServerOnTimeout(gFigVirtualCaptureCardRemoteClient, v12, "FigVirtualCaptureCardRemoteCreate", 0);
  return v12;
}

uint64_t remoteVirtualCaptureCardClient_EnsureClientEstablished()
{
  v3 = 0;
  v4[0] = &v3;
  v4[1] = 0x2000000000;
  v5 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __remoteVirtualCaptureCardClient_EnsureClientEstablished_block_invoke;
  v2[3] = &unk_1E749F360;
  v2[4] = &v3;
  if (remoteVirtualCaptureCardClient_EnsureClientEstablished_gFigVirtualCaptureCardRemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteVirtualCaptureCardClient_EnsureClientEstablished_gFigVirtualCaptureCardRemoteClientSetupOnce, v2);
  }

  if (gFigVirtualCaptureCardRemoteClient)
  {
    v0 = *(v4[0] + 24);
  }

  else
  {
    remoteVirtualCaptureCardClient_EnsureClientEstablished_cold_1(v4, &v6);
    v0 = v6;
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t remoteVirtualCaptureCardClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *(result + 9) = 1;
  return result;
}

__CFString *remoteFigVirtualCaptureCard_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVirtualCaptureCardRemote %p retainCount: %ld allocator: %p objectID %016llx", a1, v5, v6, *DerivedStorage);
  return Mutable;
}

uint64_t remoteVirtualCaptureCardClient_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteVirtualCaptureCardClient_GetObjectID_cold_1(&v7);
      return v7;
    }

    else if (*(DerivedStorage + 8))
    {
      remoteVirtualCaptureCardClient_GetObjectID_cold_2(&v8);
      return v8;
    }

    else
    {
      result = 0;
      *a2 = *v5;
    }
  }

  else
  {
    remoteVirtualCaptureCardClient_GetObjectID_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout(a1, v3, a3, 0);
}

uint64_t FigAV1BridgeParsingStateGetTypeID()
{
  if (_MergedGlobals_20 != -1)
  {
    FigAV1BridgeParsingStateGetTypeID_cold_1();
  }

  return qword_1ED4CC620;
}

uint64_t RegisterFigAV1BridgeParsingStateType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t locateSubsampleRangeForCBCS(OpaqueCMBlockBuffer *a1, uint64_t a2, size_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  totalLengthOut = 0;
  dataPointerOut = 0;
  blockBufferOut = 0;
  bzero(v32, 0x418uLL);
  v31 = 0;
  if (!a4)
  {
    locateSubsampleRangeForCBCS_cold_3(v37);
    goto LABEL_42;
  }

  if (!a1)
  {
    locateSubsampleRangeForCBCS_cold_2(v37);
    goto LABEL_42;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  if (!DataLength)
  {
    locateSubsampleRangeForCBCS_cold_1(v37);
    goto LABEL_42;
  }

  v17 = DataLength;
  if (CMBlockBufferIsRangeContiguous(a1, 0, 0))
  {
    v18 = CFRetain(a1);
    blockBufferOut = v18;
  }

  else
  {
    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], a1, *MEMORY[0x1E695E480], 0, 0, v17, 0, &blockBufferOut);
    if (DataPointer)
    {
LABEL_48:
      v25 = DataPointer;
      goto LABEL_43;
    }

    v18 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v18, 0, 0, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_48;
  }

  if (!a3)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

    locateSubsampleRangeForCBCS_cold_5(v37);
LABEL_42:
    v25 = v37[0];
    goto LABEL_43;
  }

  if (a3 + a2 > totalLengthOut)
  {
    locateSubsampleRangeForCBCS_cold_4(v37);
    goto LABEL_42;
  }

  totalLengthOut = a3;
  dataPointerOut += a2;
LABEL_19:
  v32[0] = malloc_type_malloc(0x48uLL, 0x1070040C633F987uLL);
  if (!v32[0])
  {
    v25 = 4294954584;
    goto LABEL_45;
  }

  v20 = totalLengthOut;
  if (totalLengthOut)
  {
    v21 = 0;
    v22 = dataPointerOut;
    while (1)
    {
      v37[0] = 0;
      v23 = FigAV1Bridge_parseOBU(v22, v20, v21, a4 + 3184, a4 + 16, a4 + 1504, v32, 0xFFFFFFFFLL, a5, v37, &v31);
      if (v23)
      {
        v25 = v23;
        goto LABEL_28;
      }

      v24 = totalLengthOut;
      if (totalLengthOut < v37[0])
      {
        goto LABEL_27;
      }

      if (!v37[0])
      {
        break;
      }

      if ((v31 & 8) == 0)
      {
        v22 = &dataPointerOut[v37[0]];
        v21 += v37[0];
        v20 = totalLengthOut - v37[0];
        totalLengthOut = v20;
        dataPointerOut = v22;
        if (v24 != v37[0])
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    v25 = 4294954582;
  }

  else
  {
LABEL_27:
    v25 = 0;
  }

LABEL_28:
  if (!v25)
  {
    v26 = v33;
    if (v33 - 1 <= 0x7FFFFFFD)
    {
      if (a6)
      {
        *a6 = v33;
      }

      v25 = 0;
      if (a8 && a9)
      {
        if (v26 >= a7)
        {
          v25 = 0;
          v27 = &v32[a7];
          *a8 = v27[3];
          *a9 = v27[67];
        }

        else
        {
          v25 = 4294954584;
        }
      }
    }
  }

LABEL_43:
  v28 = v32[0];
  if (v32[0])
  {
    v32[0] = 0;
    free(v28);
  }

LABEL_45:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v25;
}

size_t FigAV1Bridge_GetProfileTierLevelFromAV1CodecConfigurationRecord(char *a1, unint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  if (!a1)
  {
    FigAV1Bridge_GetProfileTierLevelFromAV1CodecConfigurationRecord_cold_3(&v22);
    return v22;
  }

  if (a2 > 3)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = Instance;
      v19 = 0;
      v17 = FigAV1Bridge_parseav1c(a1, a2, Instance + 3184, Instance + 16, Instance + 1504, &v19, &v21, v20);
      if (v17)
      {
        v18 = v17;
      }

      else if ((v21 & 0x20) != 0)
      {
        if (a3)
        {
          *a3 = v20[0];
        }

        if (a4)
        {
          *a4 = BYTE4(v20[0]);
        }

        v18 = 0;
        if (a5)
        {
          *a5 = BYTE8(v20[0]);
        }
      }

      else
      {
        v18 = 4294954584;
      }

      CFRelease(v16);
      return v18;
    }

    FigAV1Bridge_GetProfileTierLevelFromAV1CodecConfigurationRecord_cold_2(&v22);
    return v22;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xCFF, v5, v8, v9);
}

size_t FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord(char *a1, unint64_t a2, char *a3, _BYTE *a4, _BYTE *a5)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  if (!a1)
  {
    FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord_cold_3(&v25);
    return v25;
  }

  if (a2 > 3)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = Instance;
      v20 = 0;
      v17 = FigAV1Bridge_parseav1c(a1, a2, Instance + 3184, Instance + 16, Instance + 1504, &v20, &v24, &v21);
      if (v17)
      {
        v18 = v17;
      }

      else if ((v24 & 0x20) != 0)
      {
        if (a5)
        {
          *a5 = BYTE12(v21);
        }

        if (a4)
        {
          *a4 = BYTE12(v22);
        }

        if (a3)
        {
          if (v22)
          {
            v19 = 111;
          }

          else if (DWORD2(v22))
          {
            v19 = 110;
          }

          else if (DWORD1(v22))
          {
            v19 = 100;
          }

          else
          {
            v19 = 0;
          }

          v18 = 0;
          *a3 = v19;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 4294954584;
      }

      CFRelease(v16);
      return v18;
    }

    FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord_cold_2(&v25);
    return v25;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xD37, v5, v8, v9);
}

size_t FigAV1Bridge_GetColorRangeFromAV1CodecConfigurationRecord(char *a1, unint64_t a2, BOOL *a3)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  if (!a1)
  {
    FigAV1Bridge_GetColorRangeFromAV1CodecConfigurationRecord_cold_3(&v18);
    return v18;
  }

  if (a2 > 3)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v12 = Instance;
      v15 = 0;
      v13 = FigAV1Bridge_parseav1c(a1, a2, Instance + 3184, Instance + 16, Instance + 1504, &v15, &v17, v16);
      if (v13)
      {
        v14 = v13;
      }

      else if ((v17 & 2) != 0)
      {
        v14 = 0;
        if (a3)
        {
          *a3 = v12[13] > 0;
        }
      }

      else
      {
        v14 = 4294954584;
      }

      CFRelease(v12);
      return v14;
    }

    FigAV1Bridge_GetColorRangeFromAV1CodecConfigurationRecord_cold_2(&v18);
    return v18;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xD7B, v3, v6, v7);
}

size_t FigAV1Bridge_CreateParsingStateFromAV1FormatDescription(const opaqueCMFormatDescription *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      Extension = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
      if (Extension && (v4 = Extension, v5 = CFGetTypeID(Extension), v5 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v4, @"av1C")) != 0 && ((ValueAtIndex = Value, v8 = CFGetTypeID(Value), v8 != CFArrayGetTypeID()) || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v9 = CFGetTypeID(ValueAtIndex), v9 == CFDataGetTypeID()))
      {

        return FigAV1Bridge_CreateParsingStateFromAV1CodecConfigurationRecord(ValueAtIndex, a2);
      }

      else
      {
        FigAV1Bridge_CreateParsingStateFromAV1FormatDescription_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      FigAV1Bridge_CreateParsingStateFromAV1FormatDescription_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    FigAV1Bridge_CreateParsingStateFromAV1FormatDescription_cold_3(&v13);
    return v13;
  }
}

size_t FigAV1Bridge_CreateParsingStateFromAV1CodecConfigurationRecord(const __CFData *a1, void *a2)
{
  v15 = 0;
  if (!a1)
  {
    FigAV1Bridge_CreateParsingStateFromAV1CodecConfigurationRecord_cold_5(&v16);
    return v16;
  }

  if (!a2)
  {
    FigAV1Bridge_CreateParsingStateFromAV1CodecConfigurationRecord_cold_4(&v16);
    return v16;
  }

  Length = CFDataGetLength(a1);
  if (Length > 3)
  {
    v10 = Length;
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v12 = Instance;
      BytePtr = CFDataGetBytePtr(a1);
      v14 = 0;
      result = FigAV1Bridge_parseOBU(BytePtr, v10, 0, v12 + 3184, v12 + 16, v12 + 1504, 0, 2, 1, &v14, &v15);
      if (!result)
      {
        *a2 = v12;
        return result;
      }

      FigAV1Bridge_CreateParsingStateFromAV1CodecConfigurationRecord_cold_2(v12, &v16);
    }

    else
    {
      FigAV1Bridge_CreateParsingStateFromAV1CodecConfigurationRecord_cold_3(&v16);
    }

    return v16;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xDC6, v2, v7, v8);
}

size_t FigAV1Bridge_Getav1CStartAndLength(const __CFData *a1, const UInt8 **a2, unint64_t *a3)
{
  if (!a1)
  {
    FigAV1Bridge_Getav1CStartAndLength_cold_1(&v14);
    return v14;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length > 3)
  {
    if (a2)
    {
      *a2 = BytePtr;
    }

    v13 = 0;
    if (a3)
    {
      *a3 = Length;
    }

    return v13;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xDF3, v3, v10, v11);
}

size_t FigAV1Bridge_GetSeqOBU_VUI_NCLC(char *a1, unint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  if (!a1)
  {
    FigAV1Bridge_GetSeqOBU_VUI_NCLC_cold_3(&v22);
    return v22;
  }

  if (a2 > 3)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = Instance;
      v19 = 0;
      v17 = FigAV1Bridge_parseav1c(a1, a2, Instance + 3184, Instance + 16, Instance + 1504, &v19, &v21, v20);
      if (v17)
      {
        v18 = v17;
      }

      else if ((v21 & 2) != 0)
      {
        if (a3)
        {
          *a3 = v16[8];
        }

        if (a4)
        {
          *a4 = v16[9];
        }

        v18 = 0;
        if (a5)
        {
          *a5 = v16[10];
        }
      }

      else
      {
        v18 = 4294954584;
      }

      CFRelease(v16);
      return v18;
    }

    FigAV1Bridge_GetSeqOBU_VUI_NCLC_cold_2(&v22);
    return v22;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xE15, v5, v8, v9);
}

size_t FigAV1Bridge_GetSeqOBU_VUI_AspectRatio(char *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (!a1)
  {
    FigAV1Bridge_GetSeqOBU_VUI_AspectRatio_cold_3(&v20);
    return v20;
  }

  if (a2 > 3)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v14 = Instance;
      v17 = 0;
      v15 = FigAV1Bridge_parseav1c(a1, a2, Instance + 3184, Instance + 16, Instance + 1504, &v17, &v19, v18);
      if (v15)
      {
        v16 = v15;
      }

      else if ((v19 & 4) != 0)
      {
        if (a3)
        {
          *a3 = v14[435] * v14[487];
        }

        v16 = 0;
        if (a4)
        {
          *a4 = v14[437] * v14[488];
        }
      }

      else
      {
        v16 = 4294954584;
      }

      CFRelease(v14);
      return v16;
    }

    FigAV1Bridge_GetSeqOBU_VUI_AspectRatio_cold_2(&v20);
    return v20;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xE56, v4, v7, v8);
}

uint64_t FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence(uint64_t a1, unint64_t a2, CFIndex *a3, CFDataRef *a4)
{
  v20 = 0;
  if (!a1)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence_cold_6(&v21);
LABEL_31:
    v9 = 0;
LABEL_34:
    v12 = v21;
    goto LABEL_23;
  }

  v4 = a2;
  if (!a2)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence_cold_5(&v21);
    goto LABEL_31;
  }

  if (!a4)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence_cold_4(&v21);
    goto LABEL_31;
  }

  v7 = a1;
  if (a3)
  {
    *a3 = 0;
  }

  if (_MergedGlobals_20 != -1)
  {
    FigAV1BridgeParsingStateGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (!Instance)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence_cold_3(&v21);
    goto LABEL_34;
  }

  v10 = 0;
  *(Instance + 6584) = 0;
  while (1)
  {
    v21 = 0;
    v11 = FigAV1Bridge_parseOBU(v7, v4, v10, (v9 + 398), (v9 + 2), (v9 + 188), 0, 80, 0, &v21, &v20);
    if (v11)
    {
      v12 = v11;
      goto LABEL_16;
    }

    if (v4 < v21)
    {
      goto LABEL_15;
    }

    if (!v21)
    {
      break;
    }

    if ((v20 & 0x40) == 0)
    {
      v7 += v21;
      v10 += v21;
      v4 -= v21;
      if (v4)
      {
        continue;
      }
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 4294954582;
LABEL_16:
  if (!v12)
  {
    v13 = v9[821];
    if (v13)
    {
      if (a3)
      {
        *a3 = v13;
        v13 = v9[821];
        if (!v13)
        {
          v12 = 0;
          goto LABEL_23;
        }
      }

      v14 = *MEMORY[0x1E695E480];
      v15 = v9[823];
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v11);
      v17 = CFDataCreateWithBytesNoCopy(v14, v15, v13, GlobalCFAllocatorFigMalloc);
      if (v17)
      {
        v12 = 0;
        v9[823] = 0;
        *a4 = v17;
        goto LABEL_23;
      }

      FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence_cold_2(&v21);
      goto LABEL_34;
    }
  }

LABEL_23:
  v18 = v9[823];
  if (v18)
  {
    v9[823] = 0;
    free(v18);
  }

  CFRelease(v9);
  return v12;
}

uint64_t FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata(uint64_t a1, unint64_t a2, CFDataRef *a3)
{
  v18 = 0;
  if (!a1)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata_cold_6(&v19);
LABEL_26:
    v7 = 0;
LABEL_29:
    v10 = v19;
    goto LABEL_18;
  }

  v3 = a2;
  if (!a2)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata_cold_5(&v19);
    goto LABEL_26;
  }

  if (!a3)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata_cold_4(&v19);
    goto LABEL_26;
  }

  v5 = a1;
  if (_MergedGlobals_20 != -1)
  {
    FigAV1BridgeParsingStateGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (!Instance)
  {
    FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata_cold_3(&v19);
    goto LABEL_29;
  }

  v8 = 0;
  *(Instance + 6584) = 0;
  while (1)
  {
    v19 = 0;
    v9 = FigAV1Bridge_parseOBU(v5, v3, v8, (v7 + 398), (v7 + 2), (v7 + 188), 0, 144, 0, &v19, &v18);
    if (v9)
    {
      v10 = v9;
      goto LABEL_14;
    }

    if (v3 < v19)
    {
      goto LABEL_13;
    }

    if (!v19)
    {
      break;
    }

    if ((v18 & 0x80) == 0)
    {
      v5 += v19;
      v8 += v19;
      v3 -= v19;
      if (v3)
      {
        continue;
      }
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 4294954582;
LABEL_14:
  if (!v10)
  {
    v11 = v7[821];
    if (v11)
    {
      v12 = *MEMORY[0x1E695E480];
      v13 = v7[823];
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v9);
      v15 = CFDataCreateWithBytesNoCopy(v12, v13, v11, GlobalCFAllocatorFigMalloc);
      if (v15)
      {
        v10 = 0;
        v7[823] = 0;
        *a3 = v15;
        goto LABEL_18;
      }

      FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata_cold_2(&v19);
      goto LABEL_29;
    }
  }

LABEL_18:
  v16 = v7[823];
  if (v16)
  {
    v7[823] = 0;
    free(v16);
  }

  CFRelease(v7);
  return v10;
}

uint64_t FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU(CFDataRef theData, CFDataRef *a2)
{
  v2 = theData;
  v17 = 0;
  if (!theData)
  {
    FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU_cold_6(&v18);
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v2);
  if (!Length)
  {
    FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU_cold_5(&v18);
LABEL_27:
    v2 = 0;
    goto LABEL_30;
  }

  if (!a2)
  {
    FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU_cold_4(&v18);
    goto LABEL_27;
  }

  v6 = Length;
  if (_MergedGlobals_20 != -1)
  {
    FigAV1BridgeParsingStateGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    v8 = 0;
    *(Instance + 6528) = 0;
    while (1)
    {
      v18 = 0;
      v9 = FigAV1Bridge_parseOBU(BytePtr, v6, v8, v2 + 3184, v2 + 16, v2 + 1504, 0, 274, 0, &v18, &v17);
      if (v9)
      {
        v10 = v9;
        goto LABEL_14;
      }

      if (v6 < v18)
      {
        goto LABEL_13;
      }

      if (!v18)
      {
        break;
      }

      if ((v17 & 0x100) == 0)
      {
        BytePtr += v18;
        v8 += v18;
        v6 -= v18;
        if (v6)
        {
          continue;
        }
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v10 = 4294954582;
LABEL_14:
    if (v10 || (v11 = *(v2 + 816)) == 0)
    {
      *a2 = 0;
      goto LABEL_19;
    }

    v12 = *MEMORY[0x1E695E480];
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v9);
    v14 = CFDataCreateWithBytesNoCopy(v12, v11, 4, GlobalCFAllocatorFigMalloc);
    if (v14)
    {
      v10 = 0;
      *(v2 + 816) = 0;
      *a2 = v14;
      goto LABEL_19;
    }

    FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU_cold_2(&v18);
  }

  else
  {
    FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU_cold_3(&v18);
  }

LABEL_30:
  v10 = v18;
LABEL_19:
  v15 = *(v2 + 816);
  if (v15)
  {
    *(v2 + 816) = 0;
    free(v15);
  }

  CFRelease(v2);
  return v10;
}

uint64_t FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU(CFDataRef theData, CFDataRef *a2)
{
  v2 = theData;
  v17 = 0;
  if (!theData)
  {
    FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU_cold_6(&v18);
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v2);
  if (!Length)
  {
    FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU_cold_5(&v18);
LABEL_27:
    v2 = 0;
    goto LABEL_30;
  }

  if (!a2)
  {
    FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU_cold_4(&v18);
    goto LABEL_27;
  }

  v6 = Length;
  if (_MergedGlobals_20 != -1)
  {
    FigAV1BridgeParsingStateGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    v8 = 0;
    *(Instance + 6544) = 0;
    while (1)
    {
      v18 = 0;
      v9 = FigAV1Bridge_parseOBU(BytePtr, v6, v8, v2 + 3184, v2 + 16, v2 + 1504, 0, 530, 0, &v18, &v17);
      if (v9)
      {
        v10 = v9;
        goto LABEL_14;
      }

      if (v6 < v18)
      {
        goto LABEL_13;
      }

      if (!v18)
      {
        break;
      }

      if ((v17 & 0x200) == 0)
      {
        BytePtr += v18;
        v8 += v18;
        v6 -= v18;
        if (v6)
        {
          continue;
        }
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v10 = 4294954582;
LABEL_14:
    if (v10 || (v11 = *(v2 + 818)) == 0)
    {
      *a2 = 0;
      goto LABEL_19;
    }

    v12 = *MEMORY[0x1E695E480];
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(v9);
    v14 = CFDataCreateWithBytesNoCopy(v12, v11, 24, GlobalCFAllocatorFigMalloc);
    if (v14)
    {
      v10 = 0;
      *(v2 + 818) = 0;
      *a2 = v14;
      goto LABEL_19;
    }

    FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU_cold_2(&v18);
  }

  else
  {
    FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU_cold_3(&v18);
  }

LABEL_30:
  v10 = v18;
LABEL_19:
  v15 = *(v2 + 818);
  if (v15)
  {
    *(v2 + 818) = 0;
    free(v15);
  }

  CFRelease(v2);
  return v10;
}

size_t FigAV1Bridge_CopyOperatingPointIdcsFromAV1ConfigurationRecordConfigOBU(char *a1, unint64_t a2, CFMutableArrayRef *a3)
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  if (!a1)
  {
    FigAV1Bridge_CopyOperatingPointIdcsFromAV1ConfigurationRecordConfigOBU_cold_4(&v28);
    return v28;
  }

  if (!a3)
  {
    FigAV1Bridge_CopyOperatingPointIdcsFromAV1ConfigurationRecordConfigOBU_cold_3(&v28);
    return v28;
  }

  if (a2 > 3)
  {
    if (_MergedGlobals_20 != -1)
    {
      FigAV1BridgeParsingStateGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v12 = Instance;
      v25 = 0;
      v13 = FigAV1Bridge_parseav1c(a1, a2, Instance + 3184, Instance + 16, Instance + 1504, &v25, &v27, v26);
      if (v13)
      {
        v24 = v13;
      }

      else
      {
        if ((v27 & 2) != 0 && v12[14] >= 1)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 32, MEMORY[0x1E695E9C0]);
          if (v12[14] >= 1)
          {
            v21 = 0;
            v22 = v12 + 18;
            do
            {
              v23 = *v22;
              v22 += 7;
              FigCFArrayAppendInt(Mutable, v23, v14, v15, v16, v17, v18, v19);
              ++v21;
            }

            while (v21 < v12[14]);
          }

          v24 = 0;
        }

        else
        {
          Mutable = 0;
          v24 = 4294954584;
        }

        *a3 = Mutable;
      }

      CFRelease(v12);
      return v24;
    }

    FigAV1Bridge_CopyOperatingPointIdcsFromAV1ConfigurationRecordConfigOBU_cold_2(&v28);
    return v28;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xFA2, v3, v7, v8);
}

__CFString *FigAV1BridgeParsingState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigAV1BridgeParsingState %p", a1);
  return Mutable;
}

unint64_t av1_get_bits(uint64_t a1, unsigned int a2)
{
  if (a2 - 33 >= 0xFFFFFFE0)
  {
    v4 = *(a1 + 16);
    if (v4 >= a2)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v5 = 0;
      v6 = *(a1 + 40);
      v7 = *(a1 + 4);
      v8 = *(a1 + 24);
      do
      {
        v5 <<= 8;
        v4 += 8;
        *(a1 + 16) = v4;
        if (!v7)
        {
          *(a1 + 24) = v8 + 1;
          v5 |= *v8++;
        }

        if (v8 >= v6)
        {
          *a1 = v7;
          v7 = 1;
          *(a1 + 4) = 1;
        }
      }

      while (v4 < a2);
      v9 = *(a1 + 8) | (v5 << -v4);
    }

    v3 = 0;
    *(a1 + 16) = v4 - a2;
    *(a1 + 8) = v9 << a2;
    v2 = v9 >> -a2;
  }

  else
  {
    v2 = 0;
    v3 = -12714;
  }

  *a1 = v3;
  return v2;
}

unint64_t av1_get_uleb128(_DWORD *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    bits = av1_get_bits(a1, 8u);
    v3 |= (bits & 0x7F) << v2;
    if ((bits & 0x80) == 0)
    {
      break;
    }

    v5 = v2 >= 0x31;
    v2 += 7;
  }

  while (!v5);
  if (bits < 0 || HIDWORD(v3))
  {
    *a1 = -12714;
  }

  return v3;
}

uint64_t check_for_overrun(_DWORD *a1, unsigned int a2, int a3)
{
  if (*a1)
  {
    check_for_overrun_cold_1(&v7);
    return v7;
  }

  else
  {
    v3 = 8 * (a1[6] - a1[8]) - a1[4];
    v4 = v3 >= a2;
    v5 = v3 - a2;
    if (v4)
    {
      if (v5 <= 8 * a3)
      {
        return 0;
      }

      else
      {
        return 4294954584;
      }
    }

    else
    {
      check_for_overrun_cold_2(&v8);
      return v8;
    }
  }
}

uint64_t dav1d_submit_frame(uint64_t a1)
{
  v2 = *(a1 + 3312);
  v3 = *(a1 + 3304) + 40;
  *a1 = v3;
  *(a1 + 8) = v2;
  v4 = *(a1 + 3328);
  v5 = *(a1 + 3320);
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  if (picture_alloc_with_edges(a1 + 2264, *(v4 + 240), *(v4 + 244), v2, v3, v4, v5, *(a1 + 3336), *(a1 + 3352), a1 + 3376, *(a1 + 3368), 2 * *(v2 + 32) + 8))
  {
LABEL_2:
    v6 = a1 + 32;
    v7 = 7;
    do
    {
      if (*(v6 + 24))
      {
        dav1d_picture_unref_internal(v6);
      }

      v6 += 280;
      --v7;
    }

    while (v7);
    *(a1 + 2232) = 0u;
    *(a1 + 2248) = 0u;
    *(a1 + 2200) = 0u;
    *(a1 + 2216) = 0u;
    *(a1 + 2168) = 0u;
    *(a1 + 2184) = 0u;
    *(a1 + 2136) = 0u;
    *(a1 + 2152) = 0u;
    *(a1 + 2104) = 0u;
    *(a1 + 2120) = 0u;
    *(a1 + 2072) = 0u;
    *(a1 + 2088) = 0u;
    *(a1 + 2040) = 0u;
    *(a1 + 2056) = 0u;
    *(a1 + 2008) = 0u;
    *(a1 + 2024) = 0u;
    *(a1 + 1992) = 0u;
    result = dav1d_picture_unref_internal((a1 + 2264));
    *(a1 + 2948) = 0;
    return result;
  }

  *(a1 + 3400) = 0;
  *(a1 + 2540) = *(a1 + 6056);
  *(a1 + 6056) = 0;
  v9 = *(a1 + 24);
  *(a1 + 2536) = v9[69];
  v10 = v9[59];
  if (v10 == v9[60])
  {
    result = dav1d_picture_ref((a1 + 1992), (a1 + 2264));
    if (result)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = picture_alloc_with_edges(a1 + 1992, v10, *(a1 + 2332), *(a1 + 2264), *(a1 + 2456), *(a1 + 2272), *(a1 + 2448), *(a1 + 2464), *(a1 + 2472), *(a1 + 2408), *(a1 + 2480), *(a1 + 2340));
    if (result)
    {
      goto LABEL_2;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = *(a1 + 24);
  *(a1 + 3096) = (v13[59] + 3) >> 2;
  v14 = v13[61];
  *(a1 + 3100) = (v14 + 3) >> 2;
  v15 = ((v13[59] + 7) >> 2) & 0xFFFFFFFE;
  *(a1 + 3104) = v15;
  v16 = ((v14 + 7) >> 2) & 0xFFFFFFFE;
  *(a1 + 3108) = v16;
  v15 += 31;
  *(a1 + 3112) = v15 >> 5;
  *(a1 + 3116) = (v16 + 31) >> 5;
  v17 = *(*(a1 + 8) + 1012);
  v18 = 16 << v17;
  *(a1 + 3128) = 16 << v17;
  v17 += 4;
  *(a1 + 3124) = v17;
  *(a1 + 3120) = (v16 + v18 - 1) >> v17;
  *(a1 + 3088) = (v15 & 0xFFFFFFE0);
  *(a1 + 3288) = ~(-1 << *(a1 + 2068));
  v19 = v13[110];
  do
  {
    if ((v19 >> v12))
    {
      v20 = a1 + v11;
      if (*(a1 + v11 + 3448))
      {
        dav1d_picture_unref_internal((v20 + 3424));
      }

      result = dav1d_picture_ref((v20 + 3424), (a1 + 2264));
      *(v20 + 3696) = *(a1 + 2536);
      v21 = *(a1 + 24);
      if (v21)
      {
        *(a1 + v11 + 3440) = *(*(a1 + 3328) + 248);
      }

      v22 = a1 + v11;
      *(a1 + v11 + 3704) = *(a1 + 2672);
      if (!*(v21 + 464))
      {
        *(v22 + 3712) = *(a1 + 2544);
      }

      *(v22 + 3720) = *(a1 + 2704);
      *(v22 + 3732) = *(a1 + 2716);
    }

    ++v12;
    v11 += 328;
  }

  while (v11 != 2624);
  return result;
}

unint64_t read_frame_size(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int a5)
{
  if (a5)
  {
    v9 = 472;
    while (1)
    {
      result = av1_get_bits(a2, 1u);
      if (result)
      {
        break;
      }

      v9 += 4;
      if (v9 == 500)
      {
        goto LABEL_5;
      }
    }

    v12 = a1 + 328 * *(*(a1 + 3328) + v9);
    v13 = *(v12 + 3488);
    a3[60] = v13;
    a3[61] = *(v12 + 3492);
    v14 = *(v12 + 3432);
    a3[111] = *(v14 + 444);
    a3[112] = *(v14 + 448);
    if (a4[266])
    {
      result = av1_get_bits(a2, 1u);
      a3[114] = result != 0;
      if (result)
      {
        result = av1_get_bits(a2, 3u);
        a3[113] = result + 9;
        v15 = a3[60];
        v13 = (8 * v15 + ((result + 9) >> 1)) / (result + 9);
        if (v15 >= 16)
        {
          v15 = 16;
        }

        if (v13 <= v15)
        {
          v13 = v15;
        }

        goto LABEL_28;
      }

      v13 = a3[60];
    }

    else
    {
      a3[114] = 0;
    }

    a3[113] = 8;
LABEL_28:
    a3[59] = v13;
    return result;
  }

LABEL_5:
  if (a3[75])
  {
    a3[60] = av1_get_bits(a2, a4[248]) + 1;
    v11 = av1_get_bits(a2, a4[249]) + 1;
  }

  else
  {
    a3[60] = a4[1];
    v11 = a4[2];
  }

  a3[61] = v11;
  if (a4[266])
  {
    bits = av1_get_bits(a2, 1u);
    a3[114] = bits != 0;
    if (bits)
    {
      v17 = av1_get_bits(a2, 3u);
      a3[113] = v17 + 9;
      v18 = a3[60];
      v19 = (8 * v18 + ((v17 + 9) >> 1)) / (v17 + 9);
      if (v18 >= 16)
      {
        v18 = 16;
      }

      if (v19 <= v18)
      {
        v19 = v18;
      }

      goto LABEL_22;
    }
  }

  else
  {
    a3[114] = 0;
  }

  a3[113] = 8;
  v19 = a3[60];
LABEL_22:
  a3[59] = v19;
  result = av1_get_bits(a2, 1u);
  a3[115] = result;
  if (result)
  {
    a3[111] = av1_get_bits(a2, 0x10u) + 1;
    result = av1_get_bits(a2, 0x10u);
    a3[112] = result + 1;
  }

  else
  {
    *(a3 + 111) = *(a3 + 30);
  }

  return result;
}

unint64_t av1_get_uniform(_DWORD *a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    bits = 0;
    *a1 = -12714;
  }

  else
  {
    v3 = __clz(a2);
    v4 = (1 << -v3) - a2;
    bits = av1_get_bits(a1, v3 ^ 0x1F);
    if (bits >= v4)
    {
      return av1_get_bits(a1, 1u) - v4 + 2 * bits;
    }
  }

  return bits;
}

uint64_t av1_get_bits_subexp(_DWORD *a1, int a2, char a3)
{
  v4 = 1 << a3;
  v5 = (1 << a3) + a2;
  v6 = 2 << a3;
  if ((2 << a3) < 0x18)
  {
    v7 = 0;
LABEL_3:
    uniform = av1_get_uniform(a1, (v6 | 1) - v7);
    goto LABEL_11;
  }

  v7 = 0;
  if (av1_get_bits(a1, 1u))
  {
    v9 = 2;
    v10 = 8;
    while (1)
    {
      v7 += v10;
      if ((24 << (v9 - 2)) + v7 > v6)
      {
        goto LABEL_3;
      }

      v10 = 8 << (v9++ - 2);
      if (!av1_get_bits(a1, 1u))
      {
        goto LABEL_10;
      }
    }
  }

  v9 = 3;
LABEL_10:
  uniform = av1_get_bits(a1, v9);
LABEL_11:
  v11 = uniform + v7;
  v12 = 2 * v5;
  v13 = uniform + v7 + 1;
  v14 = v6 - v5 - (v13 >> 1);
  if (((uniform + v7) & 1) == 0)
  {
    v14 = v6 - v5 + ((uniform + v7) >> 1);
  }

  if (v11 <= 2 * (v6 - v5))
  {
    v15 = v14;
  }

  else
  {
    v15 = uniform + v7;
  }

  v16 = v6 - v15;
  v17 = v5 - (v13 >> 1);
  if ((v11 & 1) == 0)
  {
    v17 = v5 + (v11 >> 1);
  }

  if (v12 >= v11)
  {
    v11 = v17;
  }

  if (v12 > v6)
  {
    v11 = v16;
  }

  return v11 - v4;
}

uint64_t dav1d_picture_ref(void *a1, const void *a2)
{
  if (a1)
  {
    if (a1[3])
    {
      dav1d_picture_ref_cold_1(&v3);
      return v3;
    }

    else if (a2)
    {
      memcpy(a1, a2, 0x110uLL);
      return 0;
    }

    else
    {
      dav1d_picture_ref_cold_2(&v4);
      return v4;
    }
  }

  else
  {
    dav1d_picture_ref_cold_3(&v5);
    return v5;
  }
}

_OWORD *dav1d_picture_unref_internal(_OWORD *result)
{
  if (!result)
  {
    return dav1d_picture_unref_internal_cold_1();
  }

  result[15] = 0u;
  result[16] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  return result;
}

uint64_t picture_alloc_with_edges(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if ((a12 - 17) <= 0xFFFFFFEF)
  {
    picture_alloc_with_edges_cold_1(&v14);
    return v14;
  }

  else
  {
    result = 0;
    *(a1 + 64) = a2;
    *(a1 + 68) = a3;
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 144) = a10;
    *(a1 + 72) = *(a4 + 12);
    *(a1 + 76) = a12;
    *(a1 + 80) = xmmword_197165620;
    *(a1 + 96) = -1;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 184) = a7;
    *(a1 + 192) = a5;
    *(a1 + 200) = a8;
    *(a1 + 208) = a9;
    *(a1 + 216) = a11;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{

  return check_for_overrun((v17 - 144), a16, v16);
}

unint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return av1_get_bits(va, 2u);
}

unint64_t OUTLINED_FUNCTION_10_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return av1_get_bits(va, 3u);
}

unint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return av1_get_bits(va, 8u);
}

unint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return av1_get_bits(va, 7u);
}

unint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return av1_get_bits(va, 4u);
}