uint64_t IOUSBLibFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    IOUSBDeviceClass::alloc(v4);
  }

  v5 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v6 = CFEqual(a2, v5);
  if (v6)
  {

    IOUSBInterfaceClass::alloc(v6);
  }

  return 0;
}

void IOUSBIUnknown::factoryAddRef(IOUSBIUnknown *this)
{
  if (!atomic_fetch_add(&IOUSBIUnknown::factoryRefCount, 1u))
  {
    v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x45u, 0x47u, 0xA8u, 0xAAu, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xA9u, 0xBDu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    CFRetain(v2);

    CFPlugInAddInstanceForFactory(v2);
  }
}

void IOUSBIUnknown::factoryRelease(IOUSBIUnknown *this)
{
  if (atomic_fetch_add(&IOUSBIUnknown::factoryRefCount, 0xFFFFFFFF) == 1)
  {
    v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x45u, 0x47u, 0xA8u, 0xAAu, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xA9u, 0xBDu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    CFPlugInRemoveInstanceForFactory(v2);

    CFRelease(v2);
  }
}

void IOUSBIUnknown::IOUSBIUnknown(IOUSBIUnknown *this, void *a2)
{
  *this = off_C200;
  *(this + 2) = 1;
  *(this + 2) = a2;
  *(this + 3) = this;
  IOUSBIUnknown::factoryAddRef(this);
}

uint64_t IOUSBIUnknown::release(atomic_uint *this)
{
  v1 = atomic_fetch_add(this + 2, 0xFFFFFFFF) - 1;
  if (this && !v1)
  {
    (*(*this + 8))(this);
  }

  return v1;
}

uint64_t IOUSBIUnknown::GetIOUSBLibVersion(IOUSBIUnknown *this, NumVersion *a2, NumVersion *a3)
{
  v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/Extensions/IOUSBHostFamily.kext", kCFURLPOSIXPathStyle, 1u);
  v6 = CFBundleCreate(kCFAllocatorDefault, v5);
  CFBundleGetVersionNumber(v6);
  VersionNumber = CFBundleGetVersionNumber(v6);
  if (!VersionNumber)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, kCFBundleVersionKey);
    VersionNumber = IOUSBIUnknown::_versionNumberFromString(ValueForInfoDictionaryKey, ValueForInfoDictionaryKey);
  }

  CFRelease(v5);
  CFRelease(v6);
  v9 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/Extensions/IOUSBHostFamily.kext/PlugIns/IOUSBLib.bundle", kCFURLPOSIXPathStyle, 1u);
  v10 = CFBundleCreate(kCFAllocatorDefault, v9);
  CFBundleGetVersionNumber(v10);
  v11 = CFBundleGetVersionNumber(v10);
  if (!v11)
  {
    v12 = CFBundleGetValueForInfoDictionaryKey(v10, kCFBundleVersionKey);
    v11 = IOUSBIUnknown::_versionNumberFromString(v12, v12);
  }

  CFRelease(v9);
  CFRelease(v10);
  if (a2)
  {
    *a2 = v11;
  }

  if (a3)
  {
    *a3 = VersionNumber;
  }

  return 0;
}

uint64_t IOUSBIUnknown::_versionNumberFromString(IOUSBIUnknown *this, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if ((Length - 21) < 0xFFFFFFFFFFFFFFECLL)
  {
    return 0;
  }

  v5 = Length;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v6;
  v22[1] = v6;
  v7 = v22;
  v24.location = 0;
  v24.length = Length;
  CFStringGetCharacters(theString, v24, v22);
  v8 = v22[0];
  if ((LOWORD(v22[0]) - 58) >= 0xFFF6u)
  {
    v11 = v22 + 1;
    v12 = -1;
    do
    {
      v13 = *v11++;
      ++v12;
    }

    while (v13 != 46);
    v14 = 0;
    v7 = v22 + 1;
    while (1)
    {
      v15 = *(v7 - 1);
      if (v15 == 46)
      {
        break;
      }

      v14 += (v15 - 48) * __exp10(v12);
      ++v7;
      --v12;
      if (!--v5)
      {
        v16 = 0;
        v9 = (v14 / 0x64) << 24;
        v10 = (v14 + 65436 * (v14 / 0x64)) << 16;
        goto LABEL_26;
      }
    }

    v9 = (v14 / 0x64) << 24;
    v10 = (v14 + 65436 * (v14 / 0x64)) << 16;
    if (v5 >= 2)
    {
      --v5;
      v8 = *v7;
      goto LABEL_14;
    }

    v16 = 0;
LABEL_26:
    v18 = 0x8000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
LABEL_14:
    v17 = v8 - 49;
    if ((v17 & 0xFFFC) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = (v17 << 13) + 0x2000;
    }

    if (v5 >= 3 && (v19 = v7[2], (v19 - 58) >= 0xFFFFFFF6))
    {
      v16 = v19 - 48;
      if (v5 != 3)
      {
        v20 = v7[3];
        if ((v20 - 58) >= 0xFFFFFFF6)
        {
          v16 = v20 + 10 * v16 - 48;
          if (v5 != 4)
          {
            v21 = v7[4];
            if ((v21 - 58) >= 0xFFFFFFF6)
            {
              v16 = v21 + 10 * v16 - 48;
            }
          }
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }

  if (v16 >= 0xFF)
  {
    v16 = 255;
  }

  return v10 + v18 + v9 + v16;
}

void IOUSBDeviceClass::IOUSBDeviceClass(IOUSBDeviceClass *this)
{
  IOUSBIUnknown::IOUSBIUnknown(this, &IOUSBDeviceClass::sIOCFPlugInInterfaceV1);
  *v1 = off_C250;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 93) = 0;
  *(v1 + 32) = &IOUSBDeviceClass::sUSBDeviceInterface;
}

{
  IOUSBIUnknown::IOUSBIUnknown(this, &IOUSBDeviceClass::sIOCFPlugInInterfaceV1);
  *v1 = off_C250;
  *(v1 + 40) = v1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 93) = 0;
  *(v1 + 32) = &IOUSBDeviceClass::sUSBDeviceInterface;
}

void IOUSBDeviceClass::~IOUSBDeviceClass(IOUSBDeviceClass *this)
{
  *this = off_C250;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 93);
    if (*(this + 93))
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 14) + 8 * v4);
        if (v5)
        {
          free(v5);
          v3 = *(this + 93);
        }

        ++v4;
      }

      while (v4 < v3);
      v2 = *(this + 14);
    }

    free(v2);
    *(this + 14) = 0;
  }

  v6 = *(this + 14);
  if (v6)
  {
    IOServiceClose(v6);
    *(this + 14) = 0;
  }

  v7 = *(this + 12);
  if (v7)
  {
    IOObjectRelease(v7);
    *(this + 12) = 0;
  }

  v8 = *(this + 13);
  if (v8)
  {
    IOObjectRelease(v8);
    *(this + 13) = 0;
  }

  v9 = *(this + 8);
  if (v9)
  {
    IONotificationPortDestroy(v9);
    *(this + 8) = 0;
  }

  IOUSBIUnknown::~IOUSBIUnknown(this);
}

{
  IOUSBDeviceClass::~IOUSBDeviceClass(this);

  operator delete();
}

uint64_t IOUSBDeviceClass::queryInterface(IOUSBDeviceClass *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)))
  {
    v8 = this + 16;
    v9 = *this;
LABEL_4:
    *a3 = v8;
    (*(v9 + 24))(this);
    goto LABEL_5;
  }

  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x5Cu, 0x81u, 0x87u, 0xD0u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0x8Bu, 0x45u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  if (CFEqual(v5, v12))
  {
    goto LABEL_20;
  }

  v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x15u, 0x2Fu, 0xC4u, 0x96u, 0x48u, 0x91u, 0x11u, 0xD5u, 0x9Du, 0x52u, 0, 0xAu, 0x27u, 0x80u, 0x1Eu, 0x86u);
  if (CFEqual(v5, v13))
  {
    goto LABEL_20;
  }

  v14 = CFUUIDGetConstantUUIDWithBytes(0, 0x3Cu, 0x9Eu, 0xE1u, 0xEBu, 0x24u, 2u, 0x11u, 0xB2u, 0x8Eu, 0x7Eu, 0, 0xAu, 0x27u, 0x80u, 0x1Eu, 0x86u);
  if (CFEqual(v5, v14))
  {
    goto LABEL_20;
  }

  v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xC8u, 9u, 0xB8u, 0xD8u, 8u, 0x84u, 0x11u, 0xD7u, 0xBBu, 0x96u, 0, 3u, 0x93u, 0x3Eu, 0x3Eu, 0x3Eu);
  if (CFEqual(v5, v15) || (v16 = CFUUIDGetConstantUUIDWithBytes(0, 0xFEu, 0x2Fu, 0xD5u, 0x2Fu, 0x3Bu, 0x5Au, 0x47u, 0x3Bu, 0x97u, 0x7Bu, 0xADu, 0x99u, 0, 0x1Eu, 0xB3u, 0xEDu), CFEqual(v5, v16)) || (v17 = CFUUIDGetConstantUUIDWithBytes(0, 0x39u, 0x61u, 4u, 0xF7u, 0x94u, 0x3Du, 0x48u, 0x93u, 0x90u, 0xF1u, 0x69u, 0xBDu, 0x6Cu, 0xF5u, 0xC2u, 0xEBu), CFEqual(v5, v17)) || (v18 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, 0x87u, 0x8Bu, 0x8Bu, 0x77u, 5u, 0x7Cu, 0x8Cu, 0xE0u, 0xCEu), CFEqual(v5, v18)) || (v19 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x81u, 0x24u, 0x93u, 0xDCu, 0x91u, 0x89u, 0x4Cu, 0x11u, 0xB1u, 0x36u, 0xC6u, 0x10u, 8u, 0x6Fu, 0xAEu, 0x41u), CFEqual(v5, v19)) || (v20 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xA3u, 0x3Cu, 0xF0u, 0x47u, 0x4Bu, 0x5Bu, 0x48u, 0xE2u, 0xB5u, 0x7Du, 2u, 7u, 0xFCu, 0xEAu, 0xE1u, 0x3Bu), CFEqual(v5, v20)) || (v21 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x4Au, 0xACu, 0x1Bu, 0x2Eu, 0x24u, 0xC2u, 0x47u, 0x6Au, 0x96u, 0x4Du, 0x91u, 0x33u, 0x35u, 0x34u, 0xF2u, 0xCCu), CFEqual(v5, v21)) || (v22 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x56u, 0xADu, 8u, 0x9Du, 0x87u, 0x8Du, 0x4Bu, 0xEAu, 0xA1u, 0xF5u, 0x2Cu, 0x8Du, 0xC4u, 0x3Eu, 0x8Au, 0x98u), CFEqual(v5, v22)))
  {
LABEL_20:
    v8 = this + 32;
    v9 = *this;
    goto LABEL_4;
  }

  *a3 = 0;
LABEL_5:
  if (*a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2147483652;
  }

  CFRelease(v5);
  return v10;
}

uint64_t IOUSBDeviceClass::probe(IOUSBDeviceClass *this, const __CFDictionary *a2, io_object_t object, int *a4)
{
  v4 = 3758097090;
  if (object && (IOObjectConformsTo(object, "IOUSBHostDevice") || IOObjectConformsTo(object, "IOUSBDevice")))
  {
    return 0;
  }

  return v4;
}

uint64_t IOUSBDeviceClass::start(IOUSBDeviceClass *this, const __CFDictionary *a2, io_object_t object)
{
  properties = 0;
  *(this + 12) = object;
  IOObjectRetain(object);
  result = IOServiceOpen(object, mach_task_self_, 1u, this + 14);
  if (!result)
  {
    if (!*(this + 14))
    {
      return 3758097088;
    }

    *(this + 121) = 1;
    result = IORegistryEntryCreateCFProperties(*(this + 12), &properties, 0, 0);
    if (!result)
    {
      result = properties;
      if (properties)
      {
        v6 = CFGetTypeID(properties);
        if (v6 != CFDictionaryGetTypeID())
        {
          return 0;
        }

        v55 = 0xAAAAAAAAAAAAAAAALL;
        Value = CFDictionaryGetValue(properties, @"bDeviceClass");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v8, kCFNumberLongLongType, &v55);
            *(this + 81) = v55;
          }
        }

        v10 = CFDictionaryGetValue(properties, @"bDeviceSubClass");
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v11, kCFNumberLongLongType, &v55);
            *(this + 82) = v55;
          }
        }

        v13 = CFDictionaryGetValue(properties, @"bDeviceProtocol");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v14, kCFNumberLongLongType, &v55);
            *(this + 83) = v55;
          }
        }

        v16 = CFDictionaryGetValue(properties, @"idVendor");
        if (v16)
        {
          v17 = v16;
          v18 = CFGetTypeID(v16);
          if (v18 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v17, kCFNumberLongLongType, &v55);
            *(this + 42) = v55;
          }
        }

        v19 = CFDictionaryGetValue(properties, @"idProduct");
        if (v19)
        {
          v20 = v19;
          v21 = CFGetTypeID(v19);
          if (v21 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v20, kCFNumberLongLongType, &v55);
            *(this + 43) = v55;
          }
        }

        v22 = CFDictionaryGetValue(properties, @"bcdDevice");
        if (v22)
        {
          v23 = v22;
          v24 = CFGetTypeID(v22);
          if (v24 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v23, kCFNumberLongLongType, &v55);
            *(this + 44) = v55;
          }
        }

        v25 = CFDictionaryGetValue(properties, @"iManufacturer");
        if (v25 && (v26 = v25, v27 = CFGetTypeID(v25), v27 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v26, kCFNumberLongLongType, &v55);
          v28 = v55;
        }

        else
        {
          v28 = 0;
        }

        *(this + 90) = v28;
        v29 = CFDictionaryGetValue(properties, @"iProduct");
        if (v29 && (v30 = v29, v31 = CFGetTypeID(v29), v31 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v30, kCFNumberLongLongType, &v55);
          v32 = v55;
        }

        else
        {
          v32 = 0;
        }

        *(this + 91) = v32;
        v33 = CFDictionaryGetValue(properties, @"iSerialNumber");
        if (v33 && (v34 = v33, v35 = CFGetTypeID(v33), v35 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v34, kCFNumberLongLongType, &v55);
          v36 = v55;
        }

        else
        {
          v36 = 0;
        }

        *(this + 92) = v36;
        v37 = CFDictionaryGetValue(properties, @"bNumConfigurations");
        if (v37 && (v38 = v37, v39 = CFGetTypeID(v37), v39 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v38, kCFNumberLongLongType, &v55);
          v40 = v55;
        }

        else
        {
          v40 = 0;
        }

        *(this + 93) = v40;
        v41 = CFDictionaryGetValue(properties, @"Device Speed");
        if (v41)
        {
          v42 = v41;
          v43 = CFGetTypeID(v41);
          if (v43 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v42, kCFNumberLongLongType, &v55);
            *(this + 100) = v55;
          }
        }

        if (*(this + 100) <= 2u)
        {
          v44 = 250;
        }

        else
        {
          v44 = 450;
        }

        *(this + 24) = v44;
        v45 = CFDictionaryGetValue(properties, @"kUSBAddress");
        if (v45 && (v46 = v45, v47 = CFGetTypeID(v45), v47 == CFNumberGetTypeID()) || (v48 = *(this + 13)) != 0 && (CFProperty = IORegistryEntryCreateCFProperty(v48, @"kUSBAddress", kCFAllocatorDefault, 0)) != 0 && (v46 = CFProperty, v50 = CFGetTypeID(CFProperty), v50 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v46, kCFNumberLongLongType, &v55);
          *(this + 47) = v55;
        }

        v51 = CFDictionaryGetValue(properties, @"locationID");
        if (v51)
        {
          v52 = v51;
          v53 = CFGetTypeID(v51);
          if (v53 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v52, kCFNumberLongLongType, &v55);
            *(this + 26) = v55;
          }
        }

        *(this + 120) = 0;
        if (!*(this + 93))
        {
LABEL_60:
          CFRelease(properties);
          return 0;
        }

        v54 = malloc_type_malloc(8 * *(this + 93), 0x2004093837F09uLL);
        *(this + 14) = v54;
        if (v54)
        {
          bzero(v54, 8 * *(this + 93));
          IOUSBDeviceClass::CacheConfigDescriptor(this);
          goto LABEL_60;
        }

        return 3758097085;
      }
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::CacheConfigDescriptor(IOUSBDeviceClass *this)
{
  if (*(this + 93))
  {
    v2 = 0;
    while (1)
    {
      outputStruct = -1431655766;
      *&v3 = 0xAAAAAAAAAAAAAAAALL;
      *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14 = v3;
      v13 = v3;
      input = v2;
      v4 = *(this + 14);
      outputStructCnt = 4;
      v5 = IOConnectCallMethod(v4, 4u, &input, 1u, 0, 0, 0, 0, &outputStruct, &outputStructCnt);
      if (v5)
      {
        return v5;
      }

      input = v2;
      outputStructCnt = HIWORD(outputStruct);
      v6 = malloc_type_malloc(HIWORD(outputStruct) + 2, 0x10000408EEE02DCuLL);
      v7 = IOConnectCallMethod(*(this + 14), 4u, &input, 1u, 0, 0, 0, 0, v6, &outputStructCnt);
      if (v7)
      {
        break;
      }

      *(v6 + outputStructCnt) = 0;
      *(v6 + outputStructCnt + 1) = 0;
      *(*(this + 14) + 8 * v2++) = v6;
      if (v2 >= *(this + 93))
      {
        goto LABEL_6;
      }
    }

    v8 = v7;
    free(v6);
  }

  else
  {
LABEL_6:
    v8 = 0;
    *(this + 120) = 1;
  }

  return v8;
}

uint64_t IOUSBDeviceClass::stop(IOUSBDeviceClass *this)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  if (*(this + 80) == 1)
  {
    return (*(*this + 112))();
  }

  return 0;
}

uint64_t IOUSBDeviceClass::GetDeviceClass(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 81);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceSubClass(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 82);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceProtocol(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 83);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceVendor(IOUSBDeviceClass *this, unsigned __int16 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 42);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceProduct(IOUSBDeviceClass *this, unsigned __int16 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 43);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceReleaseNumber(IOUSBDeviceClass *this, unsigned __int16 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 44);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceAddress(IOUSBDeviceClass *this, unsigned __int16 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 47);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceBusPowerAvailable(IOUSBDeviceClass *this, unsigned int *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 24);
  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceSpeed(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 100);
  return result;
}

uint64_t IOUSBDeviceClass::GetNumberOfConfigurations(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 93);
  return result;
}

uint64_t IOUSBDeviceClass::GetLocationID(IOUSBDeviceClass *this, unsigned int *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 26);
  return result;
}

uint64_t IOUSBDeviceClass::USBDeviceGetManufacturerStringIndex(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 90);
  return result;
}

uint64_t IOUSBDeviceClass::USBDeviceGetProductStringIndex(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 91);
  return result;
}

uint64_t IOUSBDeviceClass::USBDeviceGetSerialNumberStringIndex(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 92);
  return result;
}

uint64_t IOUSBDeviceClass::GetConfigurationDescriptorPtr(IOUSBDeviceClass *this, unsigned int a2, IOUSBConfigurationDescriptor **a3)
{
  if (*(this + 121) != 1)
  {
    return 3758097088;
  }

  if (*(this + 93) <= a2)
  {
    return 3758112854;
  }

  if (*(this + 120))
  {
    LODWORD(result) = 0;
  }

  else
  {
    LODWORD(result) = IOUSBDeviceClass::CacheConfigDescriptor(this);
  }

  v7 = *(*(this + 14) + 8 * a2);
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

  *a3 = v7;
  return result;
}

uint64_t IOUSBDeviceClass::SetConfiguration(IOUSBDeviceClass *this, unsigned int a2)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = 1;
      result = IOConnectCallScalarMethod(*(this + 14), 2u, input, 2u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::SetConfigurationV2(IOUSBDeviceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(*(this + 14), 2u, input, 2u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::GetConfiguration(IOUSBDeviceClass *this, unsigned __int8 *a2)
{
  result = 3758097088;
  outputCnt = 1;
  if (*(this + 121) == 1)
  {
    output = 0;
    result = IOConnectCallScalarMethod(*(this + 14), 3u, 0, 0, &output, &outputCnt);
    if (result)
    {
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      *a2 = output;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::CreateDeviceAsyncEventSource(IOUSBDeviceClass *this, __CFRunLoopSource **a2)
{
  v4 = *(this + 9);
  if (v4)
  {
    goto LABEL_2;
  }

  result = 3758097085;
  if (!*(this + 8))
  {
    result = (*(*this + 88))(this, 0);
    if (!result)
    {
      v4 = *(this + 9);
      result = 3758097085;
      if (v4)
      {
        if (a2)
        {
LABEL_2:
          CFRetain(v4);
          result = 0;
          *a2 = *(this + 9);
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

IONotificationPort *IOUSBDeviceClass::CreateDeviceAsyncPort(IOUSBDeviceClass *this, unsigned int *a2)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    v5 = *(this + 8);
    if (v5)
    {
      if (a2)
      {
        MachPort = IONotificationPortGetMachPort(v5);
        result = 0;
        *a2 = MachPort;
        return result;
      }

      return 0;
    }

    result = IONotificationPortCreate(kIOMainPortDefault);
    *(this + 8) = result;
    if (!result)
    {
      return result;
    }

    *(this + 9) = IONotificationPortGetRunLoopSource(result);
    if (a2)
    {
      *a2 = IONotificationPortGetMachPort(*(this + 8));
    }

    if (*(this + 80) != 1)
    {
      return 0;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v7;
    v14 = v7;
    *reference = v7;
    v12 = v7;
    outputCnt = 0;
    v8 = *(this + 14);
    v9 = IONotificationPortGetMachPort(*(this + 8));
    result = IOConnectCallAsyncScalarMethod(v8, 0xFu, v9, reference, 1u, 0, 0, 0, &outputCnt);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::GetDeviceAsyncPort(IOUSBDeviceClass *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return IONotificationPortGetMachPort(v1);
  }

  else
  {
    return 268435459;
  }
}

uint64_t IOUSBDeviceClass::USBDeviceOpen(IOUSBDeviceClass *this, unsigned int a2)
{
  v2 = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80))
    {
      return 0;
    }

    v5 = *(this + 13);
    if (v5)
    {
      waitTime[0] = 5;
      IOServiceWaitQuiet(v5, waitTime);
    }

    outputCnt = 0;
    input = a2;
    v2 = IOConnectCallScalarMethod(*(this + 14), 0, &input, 1u, 0, &outputCnt);
    if (!v2)
    {
      *(this + 80) = 1;
      if ((*(this + 120) & 1) == 0)
      {
        v12 = IOUSBDeviceClass::CacheConfigDescriptor(this);
        if (v12)
        {
          v2 = v12;
          (*(*this + 112))(this);
          return v2;
        }
      }

      v7 = *(this + 8);
      if (!v7)
      {
        return 0;
      }

      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v8;
      v18 = v8;
      *&waitTime[0].tv_sec = v8;
      v16 = v8;
      v9 = *(this + 14);
      MachPort = IONotificationPortGetMachPort(v7);
      v11 = IOConnectCallAsyncScalarMethod(v9, 0xFu, MachPort, waitTime, 1u, 0, 0, 0, &outputCnt);
      v2 = v11;
      if (v11 && v11 != 268435459)
      {
        (*(*this + 112))(this);
      }
    }

    if (v2 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
      return 3758097088;
    }
  }

  return v2;
}

uint64_t IOUSBDeviceClass::USBDeviceClose(IOUSBDeviceClass *this)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80) == 1)
    {
      *(this + 80) = 0;
      result = IOConnectCallScalarMethod(*(this + 14), 1u, 0, 0, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::ResetDevice(IOUSBDeviceClass *this)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80) == 1)
    {
      result = IOConnectCallScalarMethod(*(this + 14), 9u, 0, 0, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::USBDeviceReEnumerate(IOUSBDeviceClass *this, unsigned int a2)
{
  result = 3758097088;
  v5 = *(this + 121);
  if ((a2 & 0x60000000) != 0)
  {
    if (!*(this + 121))
    {
      return result;
    }

    if ((a2 & 0x40000000) != 0)
    {
      waitTime = 5;
      IOServiceWaitQuiet(*(this + 12), &waitTime);
    }
  }

  else
  {
    if (!*(this + 121))
    {
      return result;
    }

    if (*(this + 80) != 1)
    {
      return 3758097101;
    }
  }

  waitTime = a2;
  result = IOConnectCallScalarMethod(*(this + 14), 0xCu, &waitTime, 1u, 0, 0);
  if (result == 268435459)
  {
    *(this + 80) = 0;
    *(this + 121) = 0;
    return 3758097088;
  }

  else if ((a2 & 0x40000000) != 0 && !result)
  {
    v6 = 5;
    IOServiceWaitQuiet(*(this + 12), &v6);
    return 0;
  }

  return result;
}

uint64_t IOUSBDeviceClass::USBDeviceSuspend(IOUSBDeviceClass *this, unsigned int a2)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80) == 1)
    {
      v4 = a2;
      result = IOConnectCallScalarMethod(*(this + 14), 0xAu, &v4, 1u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::USBDeviceAbortPipeZero(IOUSBDeviceClass *this)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80) == 1)
    {
      result = IOConnectCallScalarMethod(*(this + 14), 0xBu, 0, 0, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::GetUSBDeviceInformation(IOUSBDeviceClass *this, unsigned int *a2)
{
  result = 3758097088;
  outputCnt = 1;
  if (*(this + 121) == 1)
  {
    output = 0;
    result = IOConnectCallScalarMethod(*(this + 14), 0x10u, 0, 0, &output, &outputCnt);
    if (result)
    {
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      *a2 = output;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::RequestExtraPower(IOUSBDeviceClass *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  result = 3758097088;
  outputCnt = 1;
  if (*(this + 121) == 1)
  {
    input[0] = a2;
    input[1] = a3;
    output = 0;
    result = IOConnectCallScalarMethod(*(this + 14), 0x11u, input, 2u, &output, &outputCnt);
    if (result)
    {
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      *a4 = output;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::ReturnExtraPower(IOUSBDeviceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    input[0] = a2;
    input[1] = a3;
    result = IOConnectCallScalarMethod(*(this + 14), 0x12u, input, 2u, 0, 0);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::GetExtraPowerAllocated(IOUSBDeviceClass *this, unsigned int a2, unsigned int *a3)
{
  result = 3758097088;
  outputCnt = 1;
  if (*(this + 121) == 1)
  {
    output = 0;
    input = a2;
    result = IOConnectCallScalarMethod(*(this + 14), 0x13u, &input, 1u, &output, &outputCnt);
    if (result)
    {
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      *a3 = output;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::GetBandwidthAvailableForDevice(IOUSBDeviceClass *this, unsigned int *a2)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      v4 = *(this + 100);
      if (v4 <= 4)
      {
        result = 0;
        *a2 = *&a0[4 * v4];
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::RegisterForNotification(IOUSBDeviceClass *this, unint64_t a2, void (*a3)(void *, int, void *, void *), void *a4, unint64_t *a5)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80))
    {
      v7 = 7;
    }

    else
    {
      v7 = 13;
    }

    return (v7 - 536870208);
  }

  return result;
}

uint64_t IOUSBDeviceClass::UnregisterNotification(IOUSBDeviceClass *this)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80))
    {
      v3 = 7;
    }

    else
    {
      v3 = 13;
    }

    return (v3 - 536870208);
  }

  return result;
}

uint64_t IOUSBDeviceClass::AcknowledgeNotification(IOUSBDeviceClass *this)
{
  result = 3758097088;
  if (*(this + 121) == 1)
  {
    if (*(this + 80))
    {
      v3 = 7;
    }

    else
    {
      v3 = 13;
    }

    return (v3 - 536870208);
  }

  return result;
}

uint64_t IOUSBDeviceClass::DeviceRequest(IOUSBDeviceClass *this, IOUSBDevRequestTO *a2)
{
  v2 = 3758097088;
  outputCnt = 1;
  if (*(this + 121) == 1)
  {
    bmRequestType = a2->bmRequestType;
    v6 = bmRequestType;
    input[0] = 0;
    input[1] = bmRequestType;
    wValue = a2->wValue;
    input[2] = a2->bRequest;
    input[3] = wValue;
    wLength = a2->wLength;
    input[4] = a2->wIndex;
    input[5] = wLength;
    outputStruct = a2->pData;
    input[6] = outputStruct;
    completionTimeout = a2->completionTimeout;
    if (!completionTimeout)
    {
      completionTimeout = a2->noDataTimeout;
    }

    input[7] = completionTimeout;
    a2->wLenDone = 0;
    v13 = wLength;
    if (v6 < 0)
    {
      output = 0;
      v11 = IOConnectCallMethod(*(this + 14), 7u, input, 8u, 0, 0, &output, &outputCnt, outputStruct, &v13);
      if (!v11)
      {
        a2->wLenDone = v13;
      }

      if (output)
      {
        return 3758097128;
      }

      v2 = v11;
    }

    else
    {
      v2 = IOConnectCallMethod(*(this + 14), 6u, input, 8u, outputStruct, wLength, 0, 0, 0, 0);
      if (!v2)
      {
        a2->wLenDone = a2->wLength;
        return v2;
      }

      a2->wLenDone = 0;
    }

    if (v2 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
      return 3758097088;
    }
  }

  return v2;
}

uint64_t IOUSBDeviceClass::DeviceRequestAsync(IOUSBDeviceClass *this, IOUSBDevRequestTO *a2, void (*a3)(void *, int, void *), void *a4)
{
  outputCnt = 1;
  v5 = *(this + 8);
  if (!v5)
  {
    v16 = 16479;
    return v16 | 0xE0000000;
  }

  v6 = 3758097088;
  if (*(this + 121) == 1)
  {
    bmRequestType = a2->bmRequestType;
    v8 = bmRequestType;
    input[0] = 0;
    input[1] = bmRequestType;
    wValue = a2->wValue;
    input[2] = a2->bRequest;
    input[3] = wValue;
    wLength = a2->wLength;
    input[4] = a2->wIndex;
    input[5] = wLength;
    input[6] = a2->pData;
    completionTimeout = a2->completionTimeout;
    if (!completionTimeout)
    {
      completionTimeout = a2->noDataTimeout;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v24 = v12;
    v25 = v12;
    output = 0xAAAAAAAAAAAAAAAALL;
    input[7] = completionTimeout;
    reference[1] = a3;
    v22 = a4;
    v13 = *(this + 14);
    MachPort = IONotificationPortGetMachPort(v5);
    v15 = v8 < 0 ? IOConnectCallAsyncScalarMethod(v13, 7u, MachPort, reference, 3u, input, 8u, &output, &outputCnt) : IOConnectCallAsyncScalarMethod(v13, 6u, MachPort, reference, 3u, input, 8u, 0, 0);
    v6 = v15;
    if (v15 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
      v16 = 704;
      return v16 | 0xE0000000;
    }
  }

  return v6;
}

uint64_t IOUSBDeviceClass::CreateInterfaceIterator(IOUSBDeviceClass *this, uint16x4_t *a2, unsigned int *a3)
{
  result = 3758097088;
  outputCnt = 1;
  if (*(this + 121) == 1)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    v6 = vmovl_u16(*a2);
    *&v7 = v6.u32[0];
    *(&v7 + 1) = v6.u32[1];
    v8 = v7;
    *&v7 = v6.u32[2];
    *(&v7 + 1) = v6.u32[3];
    v12 = v7;
    *input = v8;
    result = IOConnectCallScalarMethod(*(this + 14), 8u, input, 4u, &output, &outputCnt);
    if (result)
    {
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 121) = 0;
        return 3758097088;
      }
    }

    else
    {
      *a3 = output;
    }
  }

  return result;
}

uint64_t IOUSBDeviceClass::GetBusFrameNumber(IOUSBDeviceClass *this, unint64_t *a2, UnsignedWide *a3)
{
  v3 = 3758097088;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 121) == 1)
  {
    outputStructCnt = 16;
    v7 = IOConnectCallStructMethod(*(this + 14), 5u, 0, 0, &outputStruct, &outputStructCnt);
    if (v7 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
    }

    else
    {
      v3 = v7;
      if (!v7)
      {
        v8 = v12;
        *a2 = outputStruct;
        *a3 = v8;
      }
    }
  }

  return v3;
}

uint64_t IOUSBDeviceClass::GetBusMicroFrameNumber(IOUSBDeviceClass *this, unint64_t *a2, UnsignedWide *a3)
{
  v3 = 3758097088;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 121) == 1)
  {
    outputStructCnt = 16;
    v7 = IOConnectCallStructMethod(*(this + 14), 0xDu, 0, 0, &outputStruct, &outputStructCnt);
    if (v7 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
    }

    else
    {
      v3 = v7;
      if (!v7)
      {
        v8 = v12;
        *a2 = outputStruct;
        *a3 = v8;
      }
    }
  }

  return v3;
}

uint64_t IOUSBDeviceClass::GetBusFrameNumberWithTime(IOUSBDeviceClass *this, unint64_t *a2, UnsignedWide *a3)
{
  v3 = 3758097088;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 121) == 1)
  {
    outputStructCnt = 16;
    v7 = IOConnectCallStructMethod(*(this + 14), 0xEu, 0, 0, &outputStruct, &outputStructCnt);
    if (v7 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 121) = 0;
    }

    else
    {
      v3 = v7;
      if (!v7)
      {
        v8 = v12;
        *a2 = outputStruct;
        *a3 = v8;
      }
    }
  }

  return v3;
}

uint64_t IOUSBDeviceClass::deviceDeviceRequest(IOUSBDeviceClass *this, _DWORD *a2, IOUSBDevRequest *a3)
{
  *&v9[4] = 0xAAAAAAAAAAAAAAAALL;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v7 = *(a2 + 1);
  v8 = a2[4];
  *v9 = 5000;
  result = (*(**(this + 1) + 248))(*(this + 1), v6, a3);
  a2[4] = v8;
  return result;
}

uint64_t IOUSBDeviceClass::deviceDeviceRequestAsync(IOUSBDeviceClass *this, _DWORD *a2, IOUSBDevRequest *a3, void (*a4)(void *, int, void *), void *a5)
{
  *&v10[4] = 0xAAAAAAAAAAAAAAAALL;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 1);
  v9 = a2[4];
  *v10 = 5000;
  return (*(**(this + 1) + 256))(*(this + 1), v7, a3, a4, a5);
}

void IOUSBInterfaceClass::IOUSBInterfaceClass(IOUSBInterfaceClass *this)
{
  IOUSBIUnknown::IOUSBIUnknown(this, &IOUSBInterfaceClass::sIOCFPlugInInterfaceV1);
  *v1 = off_C410;
  *(v1 + 90) = 0;
  *(v1 + 94) = 0;
  *(v1 + 100) = 0;
  *(v1 + 104) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 73) = 0u;
  *(v1 + 116) = 0;
  *(v1 + 108) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 32) = &IOUSBInterfaceClass::sUSBInterfaceInterface;
  *(v1 + 40) = v1;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
}

void IOUSBInterfaceClass::~IOUSBInterfaceClass(IOUSBInterfaceClass *this)
{
  *this = off_C410;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = *(this + 104);
    if (*(this + 104))
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 17) + 8 * v4);
        if (v5)
        {
          free(v5);
          v3 = *(this + 104);
        }

        ++v4;
      }

      while (v4 < v3);
      v2 = *(this + 17);
    }

    free(v2);
    *(this + 17) = 0;
    *(this + 144) = 0;
  }

  v6 = *(this + 15);
  if (v6)
  {
    IOServiceClose(v6);
    *(this + 15) = 0;
    *(this + 147) = 0;
  }

  v7 = *(this + 12);
  if (v7)
  {
    IOObjectRelease(v7);
    *(this + 12) = 0;
  }

  v8 = *(this + 13);
  if (v8)
  {
    IOObjectRelease(v8);
    *(this + 13) = 0;
  }

  v9 = *(this + 14);
  if (v9)
  {
    IOObjectRelease(v9);
    *(this + 14) = 0;
  }

  v10 = *(this + 8);
  if (v10)
  {
    IONotificationPortDestroy(v10);
    *(this + 8) = 0;
  }

  IOUSBIUnknown::~IOUSBIUnknown(this);
}

{
  IOUSBInterfaceClass::~IOUSBInterfaceClass(this);

  operator delete();
}

uint64_t IOUSBInterfaceClass::queryInterface(IOUSBInterfaceClass *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)))
  {
    v8 = this + 16;
    v9 = *this;
LABEL_4:
    *a3 = v8;
    (*(v9 + 24))(this);
    goto LABEL_5;
  }

  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x73u, 0xC9u, 0x7Au, 0xE8u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xB1u, 0xD0u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  if (CFEqual(v5, v12))
  {
    goto LABEL_26;
  }

  v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x49u, 0x23u, 0xACu, 0x4Cu, 0x48u, 0x96u, 0x11u, 0xD5u, 0x92u, 8u, 0, 0xAu, 0x27u, 0x80u, 0x1Eu, 0x86u);
  if (CFEqual(v5, v13))
  {
    goto LABEL_26;
  }

  v14 = CFUUIDGetConstantUUIDWithBytes(0, 0x1Cu, 0x43u, 0x83u, 0x56u, 0x74u, 0xC4u, 0x11u, 0xD5u, 0x92u, 0xE6u, 0, 0xAu, 0x27u, 0x80u, 0x1Eu, 0x86u);
  if (CFEqual(v5, v14))
  {
    goto LABEL_26;
  }

  v15 = CFUUIDGetConstantUUIDWithBytes(0, 0x8Fu, 0xDBu, 0x84u, 0x55u, 0x74u, 0xA6u, 0x11u, 0xD6u, 0x97u, 0xB1u, 0, 0x30u, 0x65u, 0xD3u, 0x60u, 0x8Eu);
  if (CFEqual(v5, v15))
  {
    goto LABEL_26;
  }

  v16 = CFUUIDGetConstantUUIDWithBytes(0, 0x6Cu, 0x79u, 0x8Au, 0x6Eu, 0xD6u, 0xE9u, 0x11u, 0xD6u, 0xADu, 0xD6u, 0, 3u, 0x93u, 0x3Eu, 0x3Eu, 0x3Eu);
  if (CFEqual(v5, v16))
  {
    goto LABEL_26;
  }

  v17 = CFUUIDGetConstantUUIDWithBytes(0, 0xC6u, 0x3Du, 0x3Cu, 0x92u, 8u, 0x84u, 0x11u, 0xD7u, 0x96u, 0x92u, 0, 3u, 0x93u, 0x3Eu, 0x3Eu, 0x3Eu);
  if (CFEqual(v5, v17))
  {
    goto LABEL_26;
  }

  v18 = CFUUIDGetConstantUUIDWithBytes(0, 0x77u, 0xDu, 0xE6u, 0xCu, 0x2Fu, 0xE8u, 0x11u, 0xD8u, 0xA5u, 0x82u, 0, 3u, 0x93u, 0xDCu, 0xB1u, 0xD0u);
  if (CFEqual(v5, v18))
  {
    goto LABEL_26;
  }

  v19 = CFUUIDGetConstantUUIDWithBytes(0, 0x64u, 0xBAu, 0xBDu, 0xD2u, 0xFu, 0x6Bu, 0x4Bu, 0x4Fu, 0x8Eu, 0x3Eu, 0xDCu, 0x36u, 4u, 0x69u, 0x87u, 0xADu);
  if (CFEqual(v5, v19))
  {
    goto LABEL_26;
  }

  v20 = CFUUIDGetConstantUUIDWithBytes(0, 0xBCu, 0xEAu, 0xADu, 0xDCu, 0x88u, 0x4Du, 0x4Fu, 0x27u, 0x83u, 0x40u, 0x36u, 0xD6u, 0x9Fu, 0xABu, 0x90u, 0xF6u);
  if (CFEqual(v5, v20))
  {
    goto LABEL_26;
  }

  v21 = CFUUIDGetConstantUUIDWithBytes(0, 0x56u, 0x30u, 0x1Du, 0xF2u, 0x72u, 0xDEu, 0x40u, 0x4Bu, 0x91u, 0xEDu, 0xEDu, 0x30u, 0xBFu, 0x70u, 0x51u, 0x21u);
  if (CFEqual(v5, v21) || (v22 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Au, 0x41u, 0x5Au, 0x15u, 0x1Au, 0x7Bu, 0x4Bu, 0x5Bu, 0x86u, 0x9Cu, 0x69u, 0x4Fu, 0xEEu, 0xCu, 0x6Cu, 0x6Bu), CFEqual(v5, v22)) || (v23 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Cu, 0xDu, 0x38u, 0xC3u, 0xB0u, 0x93u, 0x4Eu, 0xA7u, 0x80u, 0x9Bu, 9u, 0xFBu, 0x5Du, 0xDDu, 0xACu, 0x16u), CFEqual(v5, v23)) || (v24 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Au, 0xE4u, 0x4Du, 0x3Fu, 0xEBu, 0x45u, 0x48u, 0x7Fu, 0x8Eu, 0x8Eu, 0xB9u, 0x3Bu, 0x99u, 0xF8u, 0xEAu, 0x9Eu), CFEqual(v5, v24)) || (v25 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 8u, 0x15u, 0x1Au, 0x89u, 0x80u, 0x81u, 0x40u, 0x87u, 0x8Fu, 0x9Eu, 0xAu, 0xFEu, 0xDFu, 0xDBu, 0x5Du, 0x9Fu), CFEqual(v5, v25)) || (v26 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x17u, 0xF9u, 0xE5u, 0x9Cu, 0xB0u, 0xA1u, 0x40u, 0x1Du, 0x9Au, 0xC0u, 0x8Du, 0xE2u, 0x7Au, 0xC6u, 4u, 0x7Eu), CFEqual(v5, v26)) || (v27 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x33u, 0xA8u, 0x5Du, 0xB0u, 0xCu, 0x3Bu, 0x43u, 0x28u, 0x8Fu, 2u, 0xFDu, 0xA8u, 0x1Bu, 0x11u, 0x7Fu, 0x4Cu), CFEqual(v5, v27)) || (v28 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x87u, 0x52u, 0x66u, 0x3Bu, 0xC0u, 0x7Bu, 0x4Bu, 0xAEu, 0x95u, 0x84u, 0x22u, 3u, 0x2Fu, 0xABu, 0x9Cu, 0x5Au), CFEqual(v5, v28)))
  {
LABEL_26:
    v8 = this + 32;
    v9 = *this;
    goto LABEL_4;
  }

  *a3 = 0;
LABEL_5:
  if (*a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2147483652;
  }

  CFRelease(v5);
  return v10;
}

uint64_t IOUSBInterfaceClass::probe(IOUSBInterfaceClass *this, const __CFDictionary *a2, io_object_t object, int *a4)
{
  v4 = 3758097090;
  if (object && (IOObjectConformsTo(object, "IOUSBHostInterface") || IOObjectConformsTo(object, "IOUSBInterface")))
  {
    return 0;
  }

  return v4;
}

uint64_t IOUSBInterfaceClass::start(IOUSBInterfaceClass *this, const __CFDictionary *a2, io_object_t object)
{
  outputCnt = 1;
  *(this + 144) = 0;
  *(this + 16) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 12) = object;
  IOObjectRetain(object);
  result = IOServiceOpen(object, mach_task_self_, 1u, this + 15);
  if (!result)
  {
    v6 = *(this + 15);
    if (v6)
    {
      *(this + 147) = 1;
      output = 0;
      v7 = IOConnectCallScalarMethod(v6, 2u, 0, 0, &output, &outputCnt);
      v8 = output;
      if (v7)
      {
        v8 = 0;
      }

      *(this + 14) = v8;
      return IOUSBInterfaceClass::GetPropertyInfo(this);
    }

    else
    {
      return 3758097088;
    }
  }

  return result;
}

CFMutableDictionaryRef IOUSBInterfaceClass::GetPropertyInfo(IOUSBInterfaceClass *this)
{
  v56 = 0xAAAAAAAAAAAAAAAALL;
  properties = 0;
  result = IORegistryEntryCreateCFProperties(*(this + 12), &properties, 0, 0);
  if (!result)
  {
    if (properties)
    {
      Value = CFDictionaryGetValue(properties, @"bInterfaceClass");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v4, kCFNumberLongLongType, &v56);
          *(this + 81) = v56;
        }
      }

      v6 = CFDictionaryGetValue(properties, @"bInterfaceSubClass");
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v7, kCFNumberLongLongType, &v56);
          *(this + 82) = v56;
        }
      }

      v9 = CFDictionaryGetValue(properties, @"bInterfaceProtocol");
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v10, kCFNumberLongLongType, &v56);
          *(this + 83) = v56;
        }
      }

      v12 = CFDictionaryGetValue(properties, @"idVendor");
      if (v12)
      {
        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v13, kCFNumberLongLongType, &v56);
          *(this + 45) = v56;
        }
      }

      v15 = CFDictionaryGetValue(properties, @"idProduct");
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v16, kCFNumberLongLongType, &v56);
          *(this + 46) = v56;
        }
      }

      v18 = CFDictionaryGetValue(properties, @"bcdDevice");
      if (v18)
      {
        v19 = v18;
        v20 = CFGetTypeID(v18);
        if (v20 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v19, kCFNumberLongLongType, &v56);
          *(this + 47) = v56;
        }
      }

      v21 = CFDictionaryGetValue(properties, @"bConfigurationValue");
      if (v21)
      {
        v22 = v21;
        v23 = CFGetTypeID(v21);
        if (v23 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v22, kCFNumberLongLongType, &v56);
          *(this + 84) = v56;
        }
      }

      v24 = CFDictionaryGetValue(properties, @"bInterfaceNumber");
      if (v24)
      {
        v25 = v24;
        v26 = CFGetTypeID(v24);
        if (v26 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v25, kCFNumberLongLongType, &v56);
          *(this + 85) = v56;
        }
      }

      v27 = CFDictionaryGetValue(properties, @"bAlternateSetting");
      if (v27)
      {
        v28 = v27;
        v29 = CFGetTypeID(v27);
        if (v29 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v28, kCFNumberLongLongType, &v56);
          *(this + 86) = v56;
        }
      }

      v30 = CFDictionaryGetValue(properties, @"bNumEndpoints");
      if (v30)
      {
        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v31, kCFNumberLongLongType, &v56);
          *(this + 87) = v56;
        }
      }

      v33 = CFDictionaryGetValue(properties, @"iInterface");
      if (v33)
      {
        v34 = v33;
        v35 = CFGetTypeID(v33);
        if (v35 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v34, kCFNumberLongLongType, &v56);
          *(this + 88) = v56;
        }
      }

      v36 = CFDictionaryGetValue(properties, @"locationID");
      if (v36)
      {
        v37 = v36;
        v38 = CFGetTypeID(v36);
        if (v38 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v37, kCFNumberLongLongType, &v56);
          *(this + 25) = v56;
        }
      }

      v39 = CFDictionaryGetValue(properties, @"InterfaceDescriptor");
      if (v39)
      {
        v40 = v39;
        v41 = CFGetTypeID(v39);
        if (v41 == CFDataGetTypeID())
        {
          *(this + 16) = CFDataGetBytePtr(v40);
        }
      }

      CFRelease(properties);
      properties = 0;
    }

    result = IORegistryEntryCreateCFProperties(*(this + 14), &properties, 0, 0);
    if (!result)
    {
      result = properties;
      if (properties)
      {
        if (!*(this + 17))
        {
          v42 = CFDictionaryGetValue(properties, @"bNumConfigurations");
          if (v42 && (v43 = v42, v44 = CFGetTypeID(v42), v44 == CFNumberGetTypeID()))
          {
            CFNumberGetValue(v43, kCFNumberLongLongType, &v56);
            v45 = v56;
            *(this + 104) = v56;
            if (v45)
            {
              v46 = malloc_type_malloc(8 * v45, 0x2004093837F09uLL);
              *(this + 17) = v46;
              bzero(v46, 8 * *(this + 104));
            }
          }

          else
          {
            *(this + 104) = 0;
          }

          v47 = CFDictionaryGetValue(properties, @"kUSBIsochronousRequiresContiguous");
          *(this + 146) = (v47 && (v48 = v47, v49 = CFGetTypeID(v47), v49 == CFBooleanGetTypeID()) || (v50 = *(this + 13)) != 0 && (CFProperty = IORegistryEntryCreateCFProperty(v50, @"kUSBIsochronousRequiresContiguous", kCFAllocatorDefault, 0)) != 0 && (v48 = CFProperty, v52 = CFGetTypeID(CFProperty), v52 == CFBooleanGetTypeID())) && CFBooleanGetValue(v48) != 0;
          v53 = CFDictionaryGetValue(properties, @"Device Speed");
          if (v53)
          {
            v54 = v53;
            v55 = CFGetTypeID(v53);
            if (v55 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v54, kCFNumberLongLongType, &v56);
              *(this + 96) = v56;
            }
          }
        }

        CFRelease(properties);
        return 0;
      }
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::stop(IOUSBInterfaceClass *this)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  if (*(this + 80) == 1)
  {
    return (*(*this + 112))();
  }

  return 0;
}

uint64_t IOUSBInterfaceClass::GetInterfaceClass(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 81);
  return result;
}

uint64_t IOUSBInterfaceClass::GetInterfaceSubClass(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 82);
  return result;
}

uint64_t IOUSBInterfaceClass::GetInterfaceProtocol(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 83);
  return result;
}

uint64_t IOUSBInterfaceClass::GetInterfaceStringIndex(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 88);
  return result;
}

uint64_t IOUSBInterfaceClass::GetDeviceVendor(IOUSBInterfaceClass *this, unsigned __int16 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 45);
  return result;
}

uint64_t IOUSBInterfaceClass::GetDeviceProduct(IOUSBInterfaceClass *this, unsigned __int16 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 46);
  return result;
}

uint64_t IOUSBInterfaceClass::GetDeviceReleaseNumber(IOUSBInterfaceClass *this, unsigned __int16 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 47);
  return result;
}

uint64_t IOUSBInterfaceClass::GetConfigurationValue(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 84);
  return result;
}

uint64_t IOUSBInterfaceClass::GetInterfaceNumber(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 85);
  return result;
}

uint64_t IOUSBInterfaceClass::GetAlternateSetting(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 86);
  return result;
}

uint64_t IOUSBInterfaceClass::GetNumEndpoints(IOUSBInterfaceClass *this, unsigned __int8 *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 87);
  return result;
}

uint64_t IOUSBInterfaceClass::GetLocationID(IOUSBInterfaceClass *this, unsigned int *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 25);
  return result;
}

uint64_t IOUSBInterfaceClass::GetDevice(IOUSBInterfaceClass *this, unsigned int *a2)
{
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  result = 0;
  *a2 = *(this + 14);
  return result;
}

uint64_t IOUSBInterfaceClass::CreateInterfaceAsyncEventSource(IOUSBInterfaceClass *this, __CFRunLoopSource **a2)
{
  v4 = *(this + 9);
  if (v4)
  {
    goto LABEL_2;
  }

  result = 3758097085;
  if (!*(this + 8))
  {
    result = (*(*this + 88))(this, 0);
    if (!result)
    {
      v4 = *(this + 9);
      result = 3758097085;
      if (v4)
      {
        if (a2)
        {
LABEL_2:
          CFRetain(v4);
          result = 0;
          *a2 = *(this + 9);
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

IONotificationPort *IOUSBInterfaceClass::CreateInterfaceAsyncPort(IOUSBInterfaceClass *this, unsigned int *a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    v5 = *(this + 8);
    if (v5)
    {
      if (a2)
      {
        MachPort = IONotificationPortGetMachPort(v5);
        result = 0;
        *a2 = MachPort;
        return result;
      }

      return 0;
    }

    result = IONotificationPortCreate(kIOMainPortDefault);
    *(this + 8) = result;
    if (!result)
    {
      return result;
    }

    *(this + 9) = IONotificationPortGetRunLoopSource(result);
    if (a2)
    {
      *a2 = IONotificationPortGetMachPort(*(this + 8));
    }

    if (*(this + 80) != 1)
    {
      return 0;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v7;
    v14 = v7;
    *reference = v7;
    v12 = v7;
    outputCnt = 0;
    v8 = *(this + 15);
    v9 = IONotificationPortGetMachPort(*(this + 8));
    result = IOConnectCallAsyncScalarMethod(v8, 0x13u, v9, reference, 1u, 0, 0, 0, &outputCnt);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetInterfaceAsyncPort(IOUSBInterfaceClass *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return IONotificationPortGetMachPort(v1);
  }

  else
  {
    return 268435459;
  }
}

uint64_t IOUSBInterfaceClass::USBInterfaceOpen(IOUSBInterfaceClass *this, unsigned int a2)
{
  v2 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80))
    {
      return 0;
    }

    v5 = *(this + 13);
    if (v5)
    {
      waitTime[0] = 5;
      IOServiceWaitQuiet(v5, waitTime);
    }

    outputCnt = 0;
    input = a2;
    v2 = IOConnectCallScalarMethod(*(this + 15), 0, &input, 1u, 0, &outputCnt);
    if (!v2)
    {
      *(this + 80) = 1;
      v7 = *(this + 8);
      if (!v7)
      {
        return 0;
      }

      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16 = v8;
      v17 = v8;
      *&waitTime[0].tv_sec = v8;
      v15 = v8;
      v9 = *(this + 15);
      MachPort = IONotificationPortGetMachPort(v7);
      v11 = IOConnectCallAsyncScalarMethod(v9, 0x13u, MachPort, waitTime, 1u, 0, 0, 0, &outputCnt);
      v2 = v11;
      if (v11 && v11 != 268435459)
      {
        (*(*this + 112))(this);
      }
    }

    if (v2 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return v2;
}

uint64_t IOUSBInterfaceClass::USBInterfaceClose(IOUSBInterfaceClass *this)
{
  v2 = 0;
  v5 = 0;
  *(this + 80) = 0;
  if (*(this + 147) == 1)
  {
    v2 = IOConnectCallScalarMethod(*(this + 15), 1u, 0, 0, 0, 0);
    if (v2 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v2 = 3758097088;
    }
  }

  os_unfair_lock_lock(this + 40);
  for (i = *(this + 19); i; i = *(this + 19))
  {
    *(this + 19) = *(i + 3);
    if (*i >= 2)
    {
      vm_deallocate(mach_task_self_, *(i + 1), *(i + 2));
    }

    else
    {
      IOConnectUnmapMemory64(*(this + 15), i[1], mach_task_self_, *(i + 1));
      v5 = i[1];
      IOConnectCallScalarMethod(*(this + 15), 0x10u, &v5, 1u, 0, 0);
    }

    free(i);
  }

  os_unfair_lock_unlock(this + 40);
  return v2;
}

uint64_t IOUSBInterfaceClass::RegisterDriver(IOUSBInterfaceClass *this)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    result = IOConnectCallScalarMethod(*(this + 15), 0x21u, 0, 0, 0, 0);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::SetAlternateInterface(IOUSBInterfaceClass *this, unsigned int a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      v4 = a2;
      result = IOConnectCallScalarMethod(*(this + 15), 3u, &v4, 1u, 0, 0);
      if (!result)
      {
        result = IOUSBInterfaceClass::GetPropertyInfo(this);
      }

      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetBusMicroFrameNumber(IOUSBInterfaceClass *this, unint64_t *a2, UnsignedWide *a3)
{
  v3 = 3758097088;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 147) == 1)
  {
    outputStructCnt = 16;
    v7 = IOConnectCallStructMethod(*(this + 15), 0x11u, 0, 0, &outputStruct, &outputStructCnt);
    if (v7 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
    }

    else
    {
      v3 = v7;
      if (!v7)
      {
        v8 = v12;
        *a2 = outputStruct;
        *a3 = v8;
      }
    }
  }

  return v3;
}

uint64_t IOUSBInterfaceClass::GetBusFrameNumber(IOUSBInterfaceClass *this, unint64_t *a2, UnsignedWide *a3)
{
  v3 = 3758097088;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 147) == 1)
  {
    outputStructCnt = 16;
    v7 = IOConnectCallStructMethod(*(this + 15), 4u, 0, 0, &outputStruct, &outputStructCnt);
    if (v7 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
    }

    else
    {
      v3 = v7;
      if (!v7)
      {
        v8 = v12;
        *a2 = outputStruct;
        *a3 = v8;
      }
    }
  }

  return v3;
}

uint64_t IOUSBInterfaceClass::GetBusFrameNumberWithTime(IOUSBInterfaceClass *this, unint64_t *a2, UnsignedWide *a3)
{
  v3 = 3758097088;
  outputStruct = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(this + 147) == 1)
  {
    outputStructCnt = 16;
    v7 = IOConnectCallStructMethod(*(this + 15), 0x12u, 0, 0, &outputStruct, &outputStructCnt);
    if (v7 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
    }

    else
    {
      v3 = v7;
      if (!v7)
      {
        v8 = v12;
        *a2 = outputStruct;
        *a3 = v8;
      }
    }
  }

  return v3;
}

uint64_t IOUSBInterfaceClass::GetFrameListTime(IOUSBInterfaceClass *this, unsigned int *a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (a2)
    {
      result = 0;
      if (*(this + 96) >= 2u)
      {
        v4 = 125;
      }

      else
      {
        v4 = 1000;
      }

      *a2 = v4;
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetBandwidthAvailable(IOUSBInterfaceClass *this, unsigned int *a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      v4 = *(this + 96);
      if (v4 <= 4)
      {
        result = 0;
        *a2 = *&a0_0[4 * v4];
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::SetIdlePolicy(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    input[0] = a2;
    input[1] = a3;
    result = IOConnectCallScalarMethod(*(this + 15), 0x19u, input, 2u, 0, 0);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::OverrideIdlePolicy(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    result = IOConnectCallScalarMethod(*(this + 15), 0x1Au, v6, 3u, 0, 0);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::SetDeviceIdlePolicy(IOUSBInterfaceClass *this, unsigned int a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    v4 = a2;
    result = IOConnectCallScalarMethod(*(this + 15), 0x22u, &v4, 1u, 0, 0);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::SetPipeIdlePolicy(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    input[0] = a2;
    input[1] = a3;
    result = IOConnectCallScalarMethod(*(this + 15), 0x23u, input, 2u, 0, 0);
    if (result == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetEndpointProperties(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  v7 = 3758097088;
  outputCnt = 3;
  if (*(this + 147) == 1)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    output = 0;
    v18 = 0;
    v19 = 0;
    v12 = IOConnectCallScalarMethod(*(this + 15), 0xEu, input, 3u, &output, &outputCnt);
    if (v12 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
    }

    else
    {
      v7 = v12;
      if (!v12)
      {
        v13 = v18;
        *a5 = output;
        *a6 = v13;
        *a7 = v19;
      }
    }
  }

  return v7;
}

uint64_t IOUSBInterfaceClass::GetEndpointPropertiesV3(IOUSBInterfaceClass *this, IOUSBEndpointProperties *outputStruct)
{
  result = 3758097088;
  v5 = 15;
  if (*(this + 147) == 1)
  {
    if (outputStruct->bVersion == 3)
    {
      bEndpointNumber = outputStruct->bEndpointNumber;
      input[0] = outputStruct->bAlternateSetting;
      input[1] = bEndpointNumber;
      input[2] = outputStruct->bDirection;
      input[3] = 3;
      result = IOConnectCallMethod(*(this + 15), 0x1Du, input, 4u, 0, 0, 0, 0, outputStruct, &v5);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::ControlRequest(IOUSBInterfaceClass *this, unsigned int a2, IOUSBDevRequestTO *a3)
{
  v3 = 3758097088;
  outputCnt = 1;
  if (*(this + 147) == 1)
  {
    bmRequestType = a3->bmRequestType;
    input[0] = a2;
    input[1] = bmRequestType;
    wValue = a3->wValue;
    input[2] = a3->bRequest;
    input[3] = wValue;
    wLength = a3->wLength;
    input[4] = a3->wIndex;
    input[5] = wLength;
    outputStruct = a3->pData;
    input[6] = outputStruct;
    completionTimeout = a3->completionTimeout;
    if (!completionTimeout)
    {
      completionTimeout = a3->noDataTimeout;
    }

    input[7] = completionTimeout;
    a3->wLenDone = 0;
    v14 = wLength;
    if (bmRequestType < 0)
    {
      output = 0;
      v11 = IOConnectCallMethod(*(this + 15), 0xCu, input, 8u, 0, 0, &output, &outputCnt, outputStruct, &v14);
      v12 = v14;
      if (v11)
      {
        v12 = 0;
      }

      a3->wLenDone = v12;
      if (output)
      {
        return 3758097128;
      }

      v3 = v11;
    }

    else
    {
      v3 = IOConnectCallMethod(*(this + 15), 0xBu, input, 8u, outputStruct, wLength, 0, 0, 0, 0);
      if (!v3)
      {
        a3->wLenDone = a3->wLength;
        return v3;
      }

      a3->wLenDone = 0;
    }

    if (v3 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      return 3758097088;
    }
  }

  return v3;
}

uint64_t IOUSBInterfaceClass::ControlRequestAsync(IOUSBInterfaceClass *this, unsigned int a2, IOUSBDevRequestTO *a3, void (*a4)(void *, int, void *), void *a5)
{
  outputCnt = 1;
  v6 = *(this + 8);
  if (!v6)
  {
    v17 = 16479;
    return v17 | 0xE0000000;
  }

  v7 = 3758097088;
  if (*(this + 147) == 1)
  {
    bmRequestType = a3->bmRequestType;
    input[0] = a2;
    input[1] = bmRequestType;
    v9 = bmRequestType;
    wValue = a3->wValue;
    input[2] = a3->bRequest;
    input[3] = wValue;
    wLength = a3->wLength;
    input[4] = a3->wIndex;
    input[5] = wLength;
    input[6] = a3->pData;
    completionTimeout = a3->completionTimeout;
    if (!completionTimeout)
    {
      completionTimeout = a3->noDataTimeout;
    }

    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v25 = v13;
    v26 = v13;
    output = 0xAAAAAAAAAAAAAAAALL;
    input[7] = completionTimeout;
    reference[1] = a4;
    v23 = a5;
    v14 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v6);
    v16 = v9 < 0 ? IOConnectCallAsyncScalarMethod(v14, 0xCu, MachPort, reference, 3u, input, 8u, &output, &outputCnt) : IOConnectCallAsyncScalarMethod(v14, 0xBu, MachPort, reference, 3u, input, 8u, 0, 0);
    v7 = v16;
    if (v16 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v17 = 704;
      return v17 | 0xE0000000;
    }
  }

  return v7;
}

uint64_t IOUSBInterfaceClass::ReadPipe(IOUSBInterfaceClass *this, unsigned int a2, void *outputStruct, unsigned int *a4, unsigned int a5, unsigned int a6)
{
  v6 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      v11 = *a4;
      input[0] = a2;
      input[1] = 0;
      input[2] = a6;
      input[3] = a5;
      input[4] = outputStruct;
      input[5] = v11;
      input[6] = 0;
      v9 = IOConnectCallMethod(*(this + 15), 6u, input, 7u, 0, 0, 0, 0, outputStruct, &v11);
      if (v9 == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
      }

      else
      {
        v6 = v9;
        if (!v9)
        {
          *a4 = v11;
        }
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v6;
}

uint64_t IOUSBInterfaceClass::ReadPipeAsync(IOUSBInterfaceClass *this, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, void (*a7)(void *, int, void *), void *a8)
{
  v9 = *(this + 8);
  if (!v9)
  {
    v14 = 16479;
    return v14 | 0xE0000000;
  }

  v10 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v20 = v11;
    v21 = v11;
    input[0] = a2;
    input[1] = 0;
    input[2] = a6;
    input[3] = a5;
    input[4] = a3;
    input[5] = a4;
    input[6] = 0;
    reference[1] = a7;
    v18 = a8;
    v12 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v9);
    v10 = IOConnectCallAsyncMethod(v12, 6u, MachPort, reference, 3u, input, 7u, 0, 0, 0, 0, 0, 0);
    if (v10 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v14 = 704;
      return v14 | 0xE0000000;
    }
  }

  return v10;
}

uint64_t IOUSBInterfaceClass::WritePipe(IOUSBInterfaceClass *this, unsigned int a2, void *inputStruct, size_t inputStructCnt, unsigned int a5, unsigned int a6)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = 0;
      input[2] = a6;
      input[3] = a5;
      input[4] = inputStruct;
      input[5] = inputStructCnt;
      input[6] = 1;
      result = IOConnectCallMethod(*(this + 15), 7u, input, 7u, inputStruct, inputStructCnt, 0, 0, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::WritePipeAsync(IOUSBInterfaceClass *this, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, void (*a7)(void *, int, void *), void *a8)
{
  v9 = *(this + 8);
  if (!v9)
  {
    v14 = 16479;
    return v14 | 0xE0000000;
  }

  v10 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v20 = v11;
    v21 = v11;
    input[0] = a2;
    input[1] = 0;
    input[2] = a6;
    input[3] = a5;
    input[4] = a3;
    input[5] = a4;
    input[6] = 1;
    reference[1] = a7;
    v18 = a8;
    v12 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v9);
    v10 = IOConnectCallAsyncMethod(v12, 7u, MachPort, reference, 3u, input, 7u, 0, 0, 0, 0, 0, 0);
    if (v10 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v14 = 704;
      return v14 | 0xE0000000;
    }
  }

  return v10;
}

uint64_t IOUSBInterfaceClass::GetPipeProperties(IOUSBInterfaceClass *this, unsigned int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  v7 = 3758097088;
  outputCnt = 5;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input = a2;
      *output = 0u;
      v21 = 0u;
      v22 = 0;
      v14 = IOConnectCallScalarMethod(*(this + 15), 5u, &input, 1u, output, &outputCnt);
      if (v14 == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
      }

      else
      {
        v7 = v14;
        if (!v14)
        {
          v15 = output[1];
          *a3 = output[0];
          *a4 = v15;
          v16 = WORD4(v21);
          *a5 = v21;
          *a6 = v16;
          *a7 = v22;
        }
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v7;
}

uint64_t IOUSBInterfaceClass::GetPipePropertiesV2(IOUSBInterfaceClass *this, unsigned int a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int16 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned __int16 *a10)
{
  result = 3758097088;
  outputCnt = 8;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input = a2;
      *output = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      result = IOConnectCallScalarMethod(*(this + 15), 0x1Bu, &input, 1u, output, &outputCnt);
      if (result)
      {
        *a3 = 0;
        *a4 = 0;
        *a5 = 0;
        *a6 = 0;
        *a7 = 0;
        *a8 = 0;
        *a9 = 0;
        *a10 = 0;
        if (result == 268435459)
        {
          *(this + 80) = 0;
          *(this + 147) = 0;
          return 3758097088;
        }
      }

      else
      {
        v18 = output[1];
        *a3 = output[0];
        *a4 = v18;
        v19 = WORD4(v24);
        *a5 = v24;
        *a6 = v19;
        LOBYTE(v19) = BYTE8(v25);
        *a7 = v25;
        *a8 = v19;
        v20 = WORD4(v26);
        *a9 = v26;
        *a10 = v20;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetPipePropertiesV3(IOUSBInterfaceClass *this, unsigned int a2, IOUSBEndpointProperties *outputStruct)
{
  result = 3758097088;
  v5 = 15;
  if (*(this + 147) == 1)
  {
    if (outputStruct->bVersion == 3)
    {
      input[0] = a2;
      input[1] = 3;
      result = IOConnectCallMethod(*(this + 15), 0x1Cu, input, 2u, 0, 0, 0, 0, outputStruct, &v5);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetPipeStatus(IOUSBInterfaceClass *this, unsigned int a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      v4 = a2;
      result = IOConnectCallScalarMethod(*(this + 15), 8u, &v4, 1u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::AbortPipe(IOUSBInterfaceClass *this, unsigned int a2)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = 0;
      result = IOConnectCallScalarMethod(*(this + 15), 9u, input, 2u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::ClearPipeStall(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(*(this + 15), 0xAu, input, 2u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::SetPipePolicy(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      v6[0] = a2;
      v6[1] = a3;
      v6[2] = a4;
      result = IOConnectCallScalarMethod(*(this + 15), 0xDu, v6, 3u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::SupportsStreams(IOUSBInterfaceClass *this, unsigned int a2, unsigned int *a3)
{
  v3 = 3758097088;
  outputCnt = 1;
  if (*(this + 147) == 1)
  {
    output = 0;
    input = a2;
    v6 = IOConnectCallScalarMethod(*(this + 15), 0x1Eu, &input, 1u, &output, &outputCnt);
    if (v6 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
    }

    else
    {
      v3 = v6;
      if (!v6)
      {
        *a3 = output;
      }
    }
  }

  return v3;
}

uint64_t IOUSBInterfaceClass::CreateStreams(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(*(this + 15), 0x1Fu, input, 2u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::GetConfiguredStreams(IOUSBInterfaceClass *this, unsigned int a2, unsigned int *a3)
{
  v3 = 3758097088;
  outputCnt = 1;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      output = 0;
      input = a2;
      v6 = IOConnectCallScalarMethod(*(this + 15), 0x20u, &input, 1u, &output, &outputCnt);
      if (v6 == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
      }

      else
      {
        v3 = v6;
        if (!v6)
        {
          *a3 = output;
        }
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v3;
}

uint64_t IOUSBInterfaceClass::ReadStreamsPipeTO(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, void *outputStruct, unsigned int *a5)
{
  v5 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      input[2] = 0;
      input[3] = 0;
      input[4] = outputStruct;
      input[5] = a5;
      input[6] = 0;
      v10 = *a5;
      v8 = IOConnectCallMethod(*(this + 15), 6u, input, 7u, 0, 0, 0, 0, outputStruct, &v10);
      if (v8 == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
      }

      else
      {
        v5 = v8;
        if (!v8)
        {
          *a5 = v10;
        }
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v5;
}

uint64_t IOUSBInterfaceClass::WriteStreamsPipeTO(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, void *inputStruct, size_t inputStructCnt)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      input[2] = 0;
      input[3] = 0;
      input[4] = inputStruct;
      input[5] = inputStructCnt;
      input[6] = 1;
      result = IOConnectCallMethod(*(this + 15), 7u, input, 7u, inputStruct, inputStructCnt, 0, 0, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::ReadStreamsPipeAsyncTO(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, void (*a8)(void *, int, void *), void *a9)
{
  v10 = *(this + 8);
  if (!v10)
  {
    v15 = 16479;
    return v15 | 0xE0000000;
  }

  v11 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v21 = v12;
    v22 = v12;
    input[0] = a2;
    input[1] = a3;
    input[2] = 0;
    input[3] = 0;
    input[4] = a4;
    input[5] = a5;
    input[6] = 0;
    reference[1] = a8;
    v19 = a9;
    v13 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v10);
    v11 = IOConnectCallAsyncScalarMethod(v13, 6u, MachPort, reference, 3u, input, 7u, 0, 0);
    if (v11 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v15 = 704;
      return v15 | 0xE0000000;
    }
  }

  return v11;
}

uint64_t IOUSBInterfaceClass::WriteStreamsPipeAsyncTO(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, void (*a8)(void *, int, void *), void *a9)
{
  v10 = *(this + 8);
  if (!v10)
  {
    v15 = 16479;
    return v15 | 0xE0000000;
  }

  v11 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v21 = v12;
    v22 = v12;
    input[0] = a2;
    input[1] = a3;
    input[2] = 0;
    input[3] = 0;
    input[4] = a4;
    input[5] = a5;
    input[6] = 1;
    reference[1] = a8;
    v19 = a9;
    v13 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v10);
    v11 = IOConnectCallAsyncScalarMethod(v13, 7u, MachPort, reference, 3u, input, 7u, 0, 0);
    if (v11 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v15 = 704;
      return v15 | 0xE0000000;
    }
  }

  return v11;
}

uint64_t IOUSBInterfaceClass::AbortStreamsPipe(IOUSBInterfaceClass *this, unsigned int a2, unsigned int a3)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) == 1)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(*(this + 15), 9u, input, 2u, 0, 0);
      if (result == 268435459)
      {
        *(this + 80) = 0;
        *(this + 147) = 0;
        return 3758097088;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::RegisterForNotification(IOUSBInterfaceClass *this, unint64_t a2, void (*a3)(void *, int, void *, void *), void *a4, unint64_t *a5)
{
  if (!*(this + 8))
  {
    return 3758112863;
  }

  result = 3758097090;
  if (a4)
  {
    if (a3)
    {
      if (a5)
      {
        result = 3758097088;
        if (*(this + 147) == 1)
        {
          if (*(this + 80) == 1)
          {
            return 3758097095;
          }

          else
          {
            return 3758097101;
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOUSBInterfaceClass::UnregisterNotification(IOUSBInterfaceClass *this)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80))
    {
      v3 = 7;
    }

    else
    {
      v3 = 13;
    }

    return (v3 - 536870208);
  }

  return result;
}

uint64_t IOUSBInterfaceClass::AcknowledgeNotification(IOUSBInterfaceClass *this)
{
  result = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80))
    {
      v3 = 7;
    }

    else
    {
      v3 = 13;
    }

    return (v3 - 536870208);
  }

  return result;
}

uint64_t IOUSBInterfaceClass::ReadIsochPipeAsync(IOUSBInterfaceClass *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, IOUSBIsocFrame *a6, void (*a7)(void *, int, void *), void *a8)
{
  v9 = *(this + 8);
  if (!v9)
  {
    v16 = 16479;
    return v16 | 0xE0000000;
  }

  v10 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    if (a5)
    {
      LODWORD(v11) = 0;
      v12 = a5;
      p_frReqCount = &a6->frReqCount;
      v14 = a5;
      do
      {
        v15 = *p_frReqCount;
        p_frReqCount += 4;
        v11 = (v11 + v15);
        --v14;
      }

      while (v14);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v25 = v17;
    v26 = v17;
    input[0] = a2;
    input[1] = a3;
    input[2] = v11;
    input[3] = a4;
    input[4] = v12;
    input[5] = a6;
    input[6] = 0;
    reference[1] = a7;
    v23 = a8;
    v18 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v9);
    v10 = IOConnectCallAsyncScalarMethod(v18, 0x14u, MachPort, reference, 3u, input, 7u, 0, 0);
    if (v10 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v16 = 704;
      return v16 | 0xE0000000;
    }
  }

  return v10;
}

uint64_t IOUSBInterfaceClass::WriteIsochPipeAsync(IOUSBInterfaceClass *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, IOUSBIsocFrame *a6, void (*a7)(void *, int, void *), void *a8)
{
  v9 = *(this + 8);
  if (!v9)
  {
    v16 = 16479;
    return v16 | 0xE0000000;
  }

  v10 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    if (a5)
    {
      LODWORD(v11) = 0;
      v12 = a5;
      p_frReqCount = &a6->frReqCount;
      v14 = a5;
      do
      {
        v15 = *p_frReqCount;
        p_frReqCount += 4;
        v11 = (v11 + v15);
        --v14;
      }

      while (v14);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v25 = v17;
    v26 = v17;
    input[0] = a2;
    input[1] = a3;
    input[2] = v11;
    input[3] = a4;
    input[4] = v12;
    input[5] = a6;
    input[6] = 1;
    reference[1] = a7;
    v23 = a8;
    v18 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v9);
    v10 = IOConnectCallAsyncScalarMethod(v18, 0x15u, MachPort, reference, 3u, input, 7u, 0, 0);
    if (v10 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v16 = 704;
      return v16 | 0xE0000000;
    }
  }

  return v10;
}

uint64_t IOUSBInterfaceClass::LowLatencyReadIsochPipeAsync(IOUSBInterfaceClass *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, IOUSBLowLatencyIsocFrame *a7, void (*a8)(void *, int, void *), void *a9)
{
  v10 = *(this + 8);
  if (!v10)
  {
    v17 = 16479;
    return v17 | 0xE0000000;
  }

  v11 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    if (a5)
    {
      LODWORD(v12) = 0;
      v13 = a5;
      p_frReqCount = &a7->frReqCount;
      v15 = a5;
      do
      {
        v16 = *p_frReqCount;
        p_frReqCount += 8;
        v12 = (v12 + v16);
        --v15;
      }

      while (v15);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v26 = v18;
    v27 = v18;
    input[0] = a2;
    input[1] = a3;
    input[2] = v12;
    input[3] = a4;
    input[4] = v13;
    input[5] = a7;
    input[6] = 0;
    reference[1] = a8;
    v24 = a9;
    v19 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v10);
    v11 = IOConnectCallAsyncScalarMethod(v19, 0x16u, MachPort, reference, 3u, input, 7u, 0, 0);
    if (v11 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v17 = 704;
      return v17 | 0xE0000000;
    }
  }

  return v11;
}

uint64_t IOUSBInterfaceClass::LowLatencyWriteIsochPipeAsync(IOUSBInterfaceClass *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, IOUSBLowLatencyIsocFrame *a7, void (*a8)(void *, int, void *), void *a9)
{
  v10 = *(this + 8);
  if (!v10)
  {
    v17 = 16479;
    return v17 | 0xE0000000;
  }

  v11 = 3758097088;
  if (*(this + 147) == 1)
  {
    if (*(this + 80) != 1)
    {
      return 3758097101;
    }

    if (a5)
    {
      LODWORD(v12) = 0;
      v13 = a5;
      p_frReqCount = &a7->frReqCount;
      v15 = a5;
      do
      {
        v16 = *p_frReqCount;
        p_frReqCount += 8;
        v12 = (v12 + v16);
        --v15;
      }

      while (v15);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v26 = v18;
    v27 = v18;
    input[0] = a2;
    input[1] = a3;
    input[2] = v12;
    input[3] = a4;
    input[4] = v13;
    input[5] = a7;
    input[6] = 1;
    reference[1] = a8;
    v24 = a9;
    v19 = *(this + 15);
    MachPort = IONotificationPortGetMachPort(v10);
    v11 = IOConnectCallAsyncScalarMethod(v19, 0x17u, MachPort, reference, 3u, input, 7u, 0, 0);
    if (v11 == 268435459)
    {
      *(this + 80) = 0;
      *(this + 147) = 0;
      v17 = 704;
      return v17 | 0xE0000000;
    }
  }

  return v11;
}

uint64_t IOUSBInterfaceClass::LowLatencyCreateBuffer(IOUSBInterfaceClass *this, void **a2, vm_size_t a3, unsigned int a4)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  *input = 0u;
  output = 0;
  outputCnt = 1;
  if (*(this + 147) != 1)
  {
    return 3758097088;
  }

  if (*(this + 80) != 1)
  {
    return 3758097101;
  }

  v6 = 3758097090;
  if (a2 && a3)
  {
    *a2 = 0;
    v9 = malloc_type_malloc(0x20uLL, 0x1020040A5B76CDFuLL);
    if (!v9)
    {
      return 3758097085;
    }

    v10 = v9;
    if (a4 > 1)
    {
      *(v9 + 2) = a3;
      *(v9 + 1) = 0;
      if (vm_allocate(mach_task_self_, v9 + 1, a3, 1))
      {
LABEL_18:
        free(v10);
        return 3758097085;
      }
    }

    else
    {
      if (a4)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      input[0] = v11;
      input[1] = a3;
      outputCnt = 1;
      output = 0;
      v12 = IOConnectCallScalarMethod(*(this + 15), 0xFu, input, 2u, &output, &outputCnt);
      if (v12)
      {
        v6 = v12;
        free(v10);
        return v6;
      }

      v15 = 0;
      atAddress = 0;
      if (IOConnectMapMemory64(*(this + 15), output, mach_task_self_, &atAddress, &v15, 1u))
      {
        input[0] = output;
        IOConnectCallScalarMethod(*(this + 15), 0x10u, input, 1u, 0, 0);
        goto LABEL_18;
      }

      v10[1] = output;
      v13 = v15;
      *(v10 + 1) = atAddress;
      *(v10 + 2) = v13;
    }

    *v10 = a4;
    os_unfair_lock_lock(this + 40);
    *(v10 + 3) = *(this + 19);
    *(this + 19) = v10;
    os_unfair_lock_unlock(this + 40);
    v6 = 0;
    *a2 = *(v10 + 1);
  }

  return v6;
}

uint64_t IOUSBInterfaceClass::LowLatencyDestroyBuffer(os_unfair_lock_s *this, void *a2)
{
  os_unfair_lock_lock(this + 40);
  v5 = this + 38;
  v4 = *&this[38]._os_unfair_lock_opaque;
  if (v4)
  {
    v6 = *&this[38]._os_unfair_lock_opaque;
    while (*&v6[2]._os_unfair_lock_opaque != a2)
    {
      v6 = *&v6[6]._os_unfair_lock_opaque;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    if (v4 != v6)
    {
      do
      {
        v8 = v4;
        v4 = *&v4[6]._os_unfair_lock_opaque;
      }

      while (v4 != v6);
      v5 = v8 + 6;
    }

    *&v5->_os_unfair_lock_opaque = *&v4[6]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 40);
    if (v6->_os_unfair_lock_opaque >= 2)
    {
      vm_deallocate(mach_task_self_, *&v6[2]._os_unfair_lock_opaque, *&v6[4]._os_unfair_lock_opaque);
    }

    else
    {
      IOConnectUnmapMemory64(this[15]._os_unfair_lock_opaque, v6[1]._os_unfair_lock_opaque, mach_task_self_, *&v6[2]._os_unfair_lock_opaque);
      os_unfair_lock_opaque = v6[1]._os_unfair_lock_opaque;
      IOConnectCallScalarMethod(this[15]._os_unfair_lock_opaque, 0x10u, &os_unfair_lock_opaque, 1u, 0, 0);
    }

    free(v6);
    return 0;
  }

  else
  {
LABEL_5:
    os_unfair_lock_unlock(this + 40);
    return 3758097136;
  }
}

uint64_t IOUSBInterfaceClass::CacheConfigDescriptor(IOUSBInterfaceClass *this)
{
  if (*(this + 104))
  {
    v2 = 0;
    do
    {
      outputStruct = -1431655766;
      *&v3 = 0xAAAAAAAAAAAAAAAALL;
      *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16 = v3;
      v15 = v3;
      input = v2;
      v4 = *(this + 15);
      outputStructCnt = 4;
      v5 = IOConnectCallMethod(v4, 0x18u, &input, 1u, 0, 0, 0, 0, &outputStruct, &outputStructCnt);
      if (v5)
      {
        return v5;
      }

      input = v2;
      outputStructCnt = HIWORD(outputStruct);
      v6 = malloc_type_malloc(HIWORD(outputStruct) + 2, 0x10000408EEE02DCuLL);
      v7 = IOConnectCallMethod(*(this + 15), 0x18u, &input, 1u, 0, 0, 0, 0, v6, &outputStructCnt);
      if (v7)
      {
        v10 = v7;
        free(v6);
        return v10;
      }

      *(v6 + outputStructCnt) = 0;
      *(v6 + outputStructCnt + 1) = 0;
      *(*(this + 17) + 8 * v2++) = v6;
      v8 = *(this + 104);
    }

    while (v2 < v8);
    *(this + 144) = 1;
    if (v8)
    {
      v9 = 0;
      while (*(*(*(this + 17) + 8 * v9) + 5) != *(this + 84))
      {
        if (v8 == ++v9)
        {
          return 0;
        }
      }

      v10 = 0;
      *(this + 145) = v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    *(this + 144) = 1;
  }

  return v10;
}

_BYTE *IOUSBInterfaceClass::NextDescriptor(IOUSBInterfaceClass *this, _BYTE *a2)
{
  if (*a2)
  {
    return &a2[*a2];
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *IOUSBInterfaceClass::FindNextDescriptor(IOUSBInterfaceClass *this, char *a2, int a3)
{
  v6 = *(*(this + 17) + 8 * *(this + 145));
  if (*(this + 144) != 1 || v6 == 0)
  {
    if ((*(*this + 432))(this))
    {
      return 0;
    }

    v6 = *(*(this + 17) + 8 * *(this + 145));
  }

  v8 = v6[1];
  if (!a2)
  {
    a2 = v6;
    goto LABEL_16;
  }

  if (a2 < v6 || a2 - v6 >= v8)
  {
    return 0;
  }

LABEL_16:
  while (1)
  {
    result = (*(*this + 448))(this, a2);
    v11 = !result || a2 == result;
    v12 = v11 || result - v6 >= v8;
    v13 = v12;
    if (v12 || !a3)
    {
      break;
    }

    a2 = result;
    if (result[1] == a3)
    {
      return result;
    }
  }

  if (v13)
  {
    return 0;
  }

  return result;
}

unsigned __int8 *IOUSBInterfaceClass::FindNextAssociatedDescriptor(IOUSBInterfaceClass *this, unsigned __int8 *a2, int a3)
{
  if (!*(this + 15) || (*(this + 144) & 1) == 0 && (*(*this + 432))(this))
  {
    return 0;
  }

  if (!a2)
  {
    do
    {
      v7 = (*(*this + 440))(this, a2, 4);
      a2 = v7;
    }

    while (v7 && v7[2] != *(this + 85));
  }

  do
  {
    v8 = (*(*this + 440))(this, a2, 0);
    a2 = v8;
    if (!v8)
    {
      break;
    }

    v9 = v8[1];
    if (v9 == 11 || a3 != 4 && v9 == 4 || v9 == 4 && v8[2] != *(this + 85))
    {
      return 0;
    }
  }

  while (a3 && v9 != a3);
  return a2;
}

uint64_t IOUSBInterfaceClass::interfaceControlRequest(IOUSBInterfaceClass *this, void *a2, int *a3, IOUSBDevRequest *a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v5 = a3[1];
  v8 = *a3;
  v9 = v5;
  v10 = *(a3 + 1);
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 5000;
  }

  v11 = a3[4];
  v12 = v6;
  LODWORD(v13) = 0;
  result = (*(**(this + 1) + 248))(*(this + 1));
  a3[4] = v11;
  return result;
}

uint64_t IOUSBInterfaceClass::interfaceControlRequestAsync(IOUSBInterfaceClass *this, void *a2, int *a3, IOUSBDevRequest *a4, void (*a5)(void *, int, void *), void *a6)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = a3[1];
  v9 = *a3;
  v10 = v6;
  v11 = *(a3 + 1);
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 5000;
  }

  v12 = a3[4];
  v13 = v7;
  LODWORD(v14) = 0;
  return (*(**(this + 1) + 256))(*(this + 1));
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}