uint64_t AppleNVMeNamespaceAccessFindServiceByNSType(int a1, io_object_t *a2, CFTimeInterval a3)
{
  if ((a1 - 1) > 0xD)
  {
    return 3758097090;
  }

  else
  {
    return AppleNVMeNamespaceAccessFindServiceByName((&sNVMeEmbeddedNamespaceTypeNames)[a1], a2, a3);
  }
}

uint64_t AppleNVMeNamespaceAccessFindServiceByName(const char *a1, io_object_t *a2, CFTimeInterval a3)
{
  notification = 0;
  *a2 = 0;
  v6 = IOServiceMatching("AppleNVMeNamespaceDevice");
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(v6, @"IOPropertyMatch", Mutable);
  CFRelease(Mutable);
  v8 = CFStringCreateWithCString(0, a1, 0x8000100u);
  CFDictionarySetValue(Mutable, v8, *MEMORY[0x277CBED28]);
  v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (v9)
  {
    v10 = v9;
    if (IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", v6, AppleNVMeNamespaceAccessMatchingServiceCallback, a2, &notification))
    {
      v11 = 3758097088;
      fprintf(*MEMORY[0x277D85DF8], "%s IOServiceAddMatchingNotification () failed\n", "AppleNVMeNamespaceAccessFindServiceByName");
    }

    else
    {
      AppleNVMeNamespaceAccessMatchingServiceCallback(a2, notification);
      if (*a2)
      {
        v11 = 0;
      }

      else
      {
        Current = CFRunLoopGetCurrent();
        RunLoopSource = IONotificationPortGetRunLoopSource(v10);
        CFRunLoopAddSource(Current, RunLoopSource, @"WaitForNVMeNSAccessService");
        CFRunLoopRunInMode(@"WaitForNVMeNSAccessService", a3, 1u);
        if (*a2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 3758097110;
        }
      }
    }

    IONotificationPortDestroy(v10);
    if (notification)
    {
      IOObjectRelease(notification);
    }
  }

  else
  {
    v11 = 3758097088;
    fprintf(*MEMORY[0x277D85DF8], "%s IONotificationPortCreate () failed\n", "AppleNVMeNamespaceAccessFindServiceByName");
  }

  return v11;
}

uint64_t AppleNVMeNamespaceAccessMatchingServiceCallback(io_object_t *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      if (!*a1)
      {
        IOObjectRetain(v5);
        *a1 = v5;
      }

      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AppleNVMeNamespaceAccessOpenConection(io_service_t a1, io_connect_t *connect)
{
  if (a1)
  {
    return IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, connect);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t AppleNVMeNamespaceAccessGetBlockSize(mach_port_t a1, void *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  v3 = IOConnectCallMethod(a1, 2u, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (v3)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s failed, kernResult = 0x%x \n", "AppleNVMeNamespaceAccessGetBlockSize", v3);
  }

  else
  {
    *a2 = output[0];
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AppleNVMeNamespaceAccessGetBlockCount(mach_port_t a1, void *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  v3 = IOConnectCallMethod(a1, 3u, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (v3)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s failed, kernResult = 0x%x \n", "AppleNVMeNamespaceAccessGetBlockCount", v3);
  }

  else
  {
    *a2 = output[0];
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AppleNVMeNamespaceAccessReadData(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a4;
  input[2] = a3;
  v4 = IOConnectCallMethod(a1, 0, input, 3u, 0, 0, 0, 0, 0, 0);
  if (v4)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s failed, kernResult = 0x%x \n", "AppleNVMeNamespaceAccessReadData", v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AppleNVMeNamespaceAccessWriteData(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a4;
  input[2] = a3;
  v4 = IOConnectCallMethod(a1, 1u, input, 3u, 0, 0, 0, 0, 0, 0);
  if (v4)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s failed, kernResult = 0x%x \n", "AppleNVMeNamespaceAccessWriteData", v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AppleNVMeNamespaceAccessUnmapRange(mach_port_t a1, uint64_t a2, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  v3 = IOConnectCallMethod(a1, 4u, input, 2u, 0, 0, 0, 0, 0, 0);
  if (v3)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s failed, kernResult = 0x%x \n", "AppleNVMeNamespaceAccessUnmapRange", v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL AppleNVMeDeviceSupportsPanicLogAccess()
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v0 = *MEMORY[0x277CD2898];
  v1 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/arm-io/ans");
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"role", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = CFStringCreateFromExternalRepresentation(v3, CFProperty, 0x600u);
      if (v6)
      {
        CFStringGetCString(v6, v11, 20, 0x600u);
        v7 = LODWORD(v11[0]) ^ 0x32534E41 | BYTE4(v11[0]);
        CFRelease(v5);
        IOObjectRelease(v2);
        if (!v7)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      CFRelease(v5);
    }

    IOObjectRelease(v2);
  }

LABEL_5:
  v8 = IORegistryEntryFromPath(v0, "IODeviceTree:/arm-io/apcie/pci-bridge0/s3e");
  if (!v8)
  {
    result = AppleNVMeDeviceHasAVP();
    goto LABEL_8;
  }

  IOObjectRelease(v8);
LABEL_7:
  result = 1;
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, io_object_t a11)
{

  return AppleNVMeNamespaceAccessFindServiceByNSType(8, &a11, 120.0);
}

uint64_t AppleNVMePanicLogGetSize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  v17 = 0;
  *connect = 0;
  *a1 = 0;
  v9 = OUTLINED_FUNCTION_0(a1, a2, a3, a4, a5, a6, a7, a8, v14, connect[0], connect[1]);
  v10 = 1;
  if (!connect[1] || v9)
  {
LABEL_10:
    v12 = connect[0];
    goto LABEL_11;
  }

  v11 = AppleNVMeNamespaceAccessOpenConection(connect[1], connect);
  v12 = connect[0];
  v10 = 2;
  if (connect[0] && !v11)
  {
    v10 = 3;
    if (!AppleNVMeNamespaceAccessGetBlockSize(connect[0], &v17) && v17 && !AppleNVMeNamespaceAccessGetBlockCount(connect[0], &v16) && v16)
    {
      v10 = 0;
      *a1 = v17 * v16;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (v12)
  {
    IOServiceClose(v12);
  }

  if (connect[1])
  {
    IOObjectRelease(connect[1]);
  }

  return v10;
}

uint64_t AppleNVMeReadPanicLogData(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v22 = 0;
  *connect = 0;
  v8 = 6;
  if (!a2 || !a4)
  {
    goto LABEL_24;
  }

  v10 = a3;
  v13 = OUTLINED_FUNCTION_0(a1, a2, a3, a4, a5, a6, a7, a8, v19, connect[0], connect[1]);
  v8 = 1;
  if (!connect[1] || v13)
  {
    goto LABEL_21;
  }

  v14 = AppleNVMeNamespaceAccessOpenConection(connect[1], connect);
  v15 = connect[0];
  v8 = 2;
  if (connect[0] && !v14)
  {
    v8 = 3;
    if (!AppleNVMeNamespaceAccessGetBlockSize(connect[0], &v22) && v22 && !AppleNVMeNamespaceAccessGetBlockCount(connect[0], &v21) && v21)
    {
      v16 = v22 * v21;
      if (v22 * v21 < v10)
      {
        v10 = v22 * v21;
      }

      if (AppleNVMeNamespaceAccessReadData(connect[0], a2, 0, v10))
      {
        v8 = 4;
      }

      else
      {
        if (AppleNVMeDeviceHasAVP())
        {
          v17 = v16;
        }

        else
        {
          v17 = v22;
        }

        if (AppleNVMeNamespaceAccessUnmapRange(connect[0], 0, v17))
        {
          v8 = 5;
        }

        else
        {
          if (a1)
          {
            *a1 = AppleNVMePanicLogSourcePath;
          }

          v8 = 0;
          *a4 = v10;
        }
      }
    }

LABEL_21:
    v15 = connect[0];
  }

  if (v15)
  {
    IOServiceClose(v15);
  }

LABEL_24:
  if (connect[1])
  {
    IOObjectRelease(connect[1]);
  }

  return v8;
}

BOOL AppleNVMeDeviceHasAVP()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/product/util");
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}