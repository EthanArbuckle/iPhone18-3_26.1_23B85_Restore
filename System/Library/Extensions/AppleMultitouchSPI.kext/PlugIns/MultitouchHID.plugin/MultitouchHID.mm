uint64_t MTForceConfigGetTypeID()
{
  result = __kMTForceConfigTypeID;
  if (!__kMTForceConfigTypeID)
  {
    pthread_once(&__forceConfigTypeInit, __MTForceConfigRegister);
    return __kMTForceConfigTypeID;
  }

  return result;
}

uint64_t __MTForceConfigRegister()
{
  result = _CFRuntimeRegisterClass();
  __kMTForceConfigTypeID = result;
  return result;
}

uint64_t MTForceConfigCreate(int a1, int a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  if (!__kMTForceConfigTypeID)
  {
    pthread_once(&__forceConfigTypeInit, __MTForceConfigRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 1;
    *(Instance + 20) = a2;
    *(Instance + 24) = a1;
    *(Instance + 28) = 0;
    *(Instance + 160) = 0;
    *(Instance + 168) = 0;
    _MTForceConfigGenerateDefaultParams(Instance, v6);
  }

  return v7;
}

double _MTForceConfigGenerateDefaultParams(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 24);
  if (v2 <= 10)
  {
    if (v2 <= 4)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          return a2.n128_f64[0];
        }

        *(a1 + 29) = 2;
        *(a1 + 32) = xmmword_29D3D6240;
        a2 = xmmword_29D3D6250;
        goto LABEL_19;
      }

      *(a1 + 29) = 2;
LABEL_18:
      *(a1 + 32) = xmmword_29D3D6210;
      a2 = xmmword_29D3D6220;
LABEL_19:
      *(a1 + 96) = a2;
      return a2.n128_f64[0];
    }

    if (v2 != 5)
    {
      if (v2 != 10)
      {
        return a2.n128_f64[0];
      }

LABEL_12:
      *(a1 + 28) = 513;
      goto LABEL_18;
    }

LABEL_16:
    *(a1 + 29) = 3;
    *(a1 + 32) = xmmword_29D3D6210;
    *(a1 + 48) = 0x437F000043960000;
    *(a1 + 96) = xmmword_29D3D6220;
    a2.n128_u64[0] = 0x500000006;
    *(a1 + 112) = 0x500000006;
    return a2.n128_f64[0];
  }

  if (v2 <= 15)
  {
    if (v2 == 11)
    {
      *(a1 + 28) = 513;
      a2.n128_u64[0] = 0;
      *(a1 + 32) = xmmword_29D3D6230;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return a2.n128_f64[0];
    }

    if (v2 != 12)
    {
      return a2.n128_f64[0];
    }

    goto LABEL_12;
  }

  if (v2 == 16)
  {
    goto LABEL_16;
  }

  if (v2 == 17)
  {
    *(a1 + 29) = 3;
    *(a1 + 32) = xmmword_29D3D6210;
    *(a1 + 48) = 0x437F000043960000;
    *(a1 + 96) = xmmword_29D3D6220;
    a2.n128_u64[0] = 0x500000006;
    *(a1 + 112) = 0x500000006;
    *(a1 + 169) = 1;
  }

  return a2.n128_f64[0];
}

BOOL MTForceConfigSetActuationsForStage(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 29);
  if (v3 > a2)
  {
    *(a1 + 8 * a2 + 96) = a3;
  }

  return v3 > a2;
}

float MTForceConfigGetThresholdsForStage(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 8 * a2;
  result = *(v2 + 32);
  v4 = *(v2 + 36);
  return result;
}

double __MTForceConfigInit(_OWORD *a1)
{
  if (a1)
  {
    result = 0.0;
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
  }

  return result;
}

void MultitouchHIDClass::MultitouchHIDClass(MultitouchHIDClass *this)
{
  MultitouchIOHIDIUnknown::MultitouchIOHIDIUnknown(this, &MultitouchHIDClass::sIOCFPlugInInterfaceV1);
  *v1 = &unk_2A2411200;
  *(v1 + 32) = &MultitouchHIDClass::sIOHIDServiceInterface2;
  *(v1 + 40) = v1;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
}

{
  MultitouchIOHIDIUnknown::MultitouchIOHIDIUnknown(this, &MultitouchHIDClass::sIOCFPlugInInterfaceV1);
  *v1 = &unk_2A2411200;
  *(v1 + 32) = &MultitouchHIDClass::sIOHIDServiceInterface2;
  *(v1 + 40) = v1;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
}

void MultitouchHIDClass::~MultitouchHIDClass(MultitouchHIDClass *this)
{
  *this = &unk_2A2411200;
  MultitouchHIDClass::stop(this);

  MultitouchIOHIDIUnknown::~MultitouchIOHIDIUnknown(this);
}

{
  MultitouchHIDClass::~MultitouchHIDClass(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MultitouchHIDClass::queryInterface(MultitouchHIDClass *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v8)))
  {
    v9 = this + 16;
    v10 = *this;
LABEL_4:
    *a3 = v9;
    (*(v10 + 24))(this);
    goto LABEL_5;
  }

  v13 = CFUUIDGetConstantUUIDWithBytes(v6, 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
  if (CFEqual(v5, v13))
  {
    v9 = this + 32;
    v10 = *this;
    goto LABEL_4;
  }

  *a3 = 0;
LABEL_5:
  if (*a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2147483652;
  }

  CFRelease(v5);
  return v11;
}

uint64_t MultitouchHIDClass::probe(MultitouchHIDClass *this, const __CFDictionary *a2, int a3, int *a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return 3758097090;
  }
}

uint64_t MultitouchHIDClass::start(MultitouchHIDClass *this, const __CFDictionary *a2)
{
  *(this + 14) = 0;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 10) = MTDeviceCreateFromService();
  MTDeviceEnableBinaryFilters();
  v3 = *(this + 10);
  if (MTDeviceStart())
  {
    v4 = *(this + 6);
    if (v4)
    {
      MTSimpleHIDManager::release(v4);
      *(this + 6) = 0;
    }

    v5 = *(this + 10);
    if (v5)
    {
      CFRelease(v5);
      *(this + 10) = 0;
    }

    v6 = *(this + 14);
    if (v6)
    {
      IOObjectRelease(v6);
      *(this + 14) = 0;
    }

    return 3758097084;
  }

  v7 = *(this + 10);
  ParserType = MTDeviceGetParserType();
  v9 = *(this + 10);
  MTDeviceGetParserOptions();
  if (ParserType <= 999)
  {
    switch(ParserType)
    {
      case 1:
        v13 = *(this + 10);
        MTSimpleEmbeddedHIDManager::createManager();
      case 2:
        v17 = *(this + 10);
        MTSimpleEmbeddedHIDManagerV2::createManager();
      case 4:
        v11 = *(this + 10);
        MTSimpleEmbeddedStylusHIDManager::createManager();
    }
  }

  else if (ParserType > 1999)
  {
    if (ParserType == 2000)
    {
      v16 = *(this + 10);
      MTMouseHIDManager::createManager();
    }

    if (ParserType == 2001)
    {
      v12 = *(this + 10);
      MTMouseEmbeddedHIDManager::createManager();
    }
  }

  else
  {
    if (ParserType == 1000)
    {
      v15 = *(this + 10);
LABEL_24:
      MTTrackpadHIDManager::createManager();
    }

    if (ParserType == 1001)
    {
      v10 = *(this + 10);
      MTTrackpadEmbeddedHIDManager::createManager();
    }
  }

  if ((ParserType - 3000) <= 0x3E7)
  {
    v14 = *(this + 10);
    goto LABEL_24;
  }

  v19 = MTLoggingPlugin();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    MultitouchHIDClass::start(ParserType, v19);
  }

  return 3758097084;
}

uint64_t MultitouchHIDClass::stop(MultitouchHIDClass *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 536))(v2);
    MTSimpleHIDManager::release(*(this + 6));
    *(this + 6) = 0;
  }

  *(this + 8) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    dispatch_release(v3);
    *(this + 9) = 0;
  }

  if (*(this + 10))
  {
    MTDeviceStop();
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    IOObjectRelease(v4);
    *(this + 14) = 0;
  }

  return 0;
}

uint64_t MultitouchHIDClass::open(MultitouchHIDClass *this)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 544))(result);
  }

  return result;
}

uint64_t MultitouchHIDClass::close(MultitouchHIDClass *this)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 552))();
  }

  return result;
}

uint64_t MultitouchHIDClass::copyProperty(MultitouchHIDClass *this, const __CFString *a2)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 560))(result, a2);
  }

  return result;
}

uint64_t MultitouchHIDClass::setProperty(MultitouchHIDClass *this, const __CFString *a2, const void *a3)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 568))(result, a2, a3);
  }

  return result;
}

void *MultitouchHIDClass::setEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 48);
  if (result)
  {
    return MTSimpleHIDManager::setEventCallback(result, a2, a3, a4);
  }

  return result;
}

uint64_t MultitouchHIDClass::scheduleWithDispatchQueue(uint64_t this, dispatch_queue_s *a2)
{
  if (*(this + 48))
  {
    v3 = this;
    if (*(this + 80) && MTDeviceIsRunning() && !*(v3 + 72))
    {
      v4 = *(v3 + 80);
      MultitouchDispatchSource = MTDeviceCreateMultitouchDispatchSource();
      *(v3 + 64) = a2;
      *(v3 + 72) = MultitouchDispatchSource;
    }

    v6 = *(**(v3 + 48) + 576);

    return v6();
  }

  return this;
}

void MultitouchHIDClass::unscheduleFromDispatchQueue(MultitouchHIDClass *this, dispatch_queue_s *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 584))(v3, a2);
    v4 = *(this + 9);
    if (v4)
    {
      dispatch_source_cancel(v4);
      dispatch_release(*(this + 9));
      *(this + 9) = 0;
    }

    *(this + 8) = 0;
  }
}

uint64_t MultitouchHIDClass::copyEvent(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(*result + 608))();
  }

  return result;
}

uint64_t MultitouchHIDClass::setOutputEvent(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return (*(*v1 + 600))();
  }

  else
  {
    return 3758097112;
  }
}

uint64_t IOHIDPlugInFactory(uint64_t a1, const void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  if (!CFEqual(a2, v4))
  {
    result = 0;
    goto LABEL_23;
  }

  if (os_variant_allows_internal_security_policies())
  {
    v5 = IOHIDPreferencesCopyDomain();
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] == 2)
      {
        v7 = [v6 objectAtIndexedSubscript:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (([v7 hasPrefix:@"/System/Library"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"/AppleInternal/Library")))
        {
          v8 = [v6 objectAtIndexedSubscript:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = dlopen([v7 UTF8String], 5);
            if (v9)
            {
              v10 = dlsym(v9, [v8 UTF8String]);
              if (v10)
              {
                v11 = v10;
                if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v15 = v6;
                  _os_log_impl(&dword_29D381000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Using plugin override: %{public}@", buf, 0xCu);
                }

                goto LABEL_20;
              }

              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                IOHIDPlugInFactory_cold_1();
              }
            }

            else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              IOHIDPlugInFactory_cold_2();
            }
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_20:
  if (v11)
  {
    result = v11(a1, a2);
  }

  else
  {
    result = (MultitouchHIDClass::alloc)(a1, a2);
  }

LABEL_23:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void MultitouchIOHIDIUnknown::factoryAddRef(MultitouchIOHIDIUnknown *this)
{
  if (!MultitouchIOHIDIUnknown::factoryRefCount++)
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xCu, 0xB0u, 0xFBu, 0xB9u, 0x15u, 0xEAu, 0x11u, 0xDBu, 0xA9u, 0x3Cu, 0, 0x14u, 0x51u, 0xD4u, 0x71u, 0x83u);

    CFPlugInAddInstanceForFactory(v3);
  }
}

void MultitouchIOHIDIUnknown::factoryRelease(MultitouchIOHIDIUnknown *this)
{
  v2 = MultitouchIOHIDIUnknown::factoryRefCount--;
  if (MultitouchIOHIDIUnknown::factoryRefCount)
  {
    if (v2 <= 0)
    {
      MultitouchIOHIDIUnknown::factoryRefCount = 0;
    }
  }

  else
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xCu, 0xB0u, 0xFBu, 0xB9u, 0x15u, 0xEAu, 0x11u, 0xDBu, 0xA9u, 0x3Cu, 0, 0x14u, 0x51u, 0xD4u, 0x71u, 0x83u);

    CFPlugInRemoveInstanceForFactory(v3);
  }
}

void MultitouchIOHIDIUnknown::MultitouchIOHIDIUnknown(MultitouchIOHIDIUnknown *this, void *a2)
{
  *this = &unk_2A24112B0;
  *(this + 2) = 1;
  *(this + 2) = a2;
  *(this + 3) = this;
  MultitouchIOHIDIUnknown::factoryAddRef(this);
}

uint64_t MultitouchIOHIDIUnknown::addRef(MultitouchIOHIDIUnknown *this)
{
  v1 = (*(this + 2) + 1);
  *(this + 2) = v1;
  return v1;
}

uint64_t MultitouchIOHIDIUnknown::release(MultitouchIOHIDIUnknown *this)
{
  v1 = *(this + 2);
  v2 = (v1 - 1);
  if (v1 == 1)
  {
    *(this + 2) = 0;
    (*(*this + 8))(this);
  }

  else
  {
    *(this + 2) = v2;
  }

  return v2;
}

uint64_t mt_PrintHIDEvent(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    Children = IOHIDEventGetChildren();
    switch(IOHIDEventGetType())
    {
      case 1u:
        [@"\n" stringByPaddingToLength:a2 + 1 withString:@"\t" startingAtIndex:0];
        IOHIDEventGetVendorDefinedData();
        goto LABEL_166;
      case 2u:
        if (a2 >= 1)
        {
          v50 = a2;
          do
          {
            putchar(9);
            --v50;
          }

          while (v50);
        }

        IOHIDEventGetIntegerValue();
        printf("Button Mask: 0x%08X\n");
        goto LABEL_166;
      case 3u:
        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
        if (a2 >= 1)
        {
          v81 = a2;
          do
          {
            putchar(9);
            --v81;
          }

          while (v81);
        }

        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
        printf("Keyboard: (usagePage:0x%04X usage:0x%04X%s) %s %s\n");
        goto LABEL_166;
      case 4u:
        if (a2 >= 1)
        {
          v60 = a2;
          do
          {
            putchar(9);
            --v60;
          }

          while (v60);
        }

        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        printf("Translation: %fx, %fy");
        goto LABEL_111;
      case 5u:
        if (a2 >= 1)
        {
          v61 = a2;
          do
          {
            putchar(9);
            --v61;
          }

          while (v61);
        }

        IOHIDEventGetFloatValue();
        printf("Rotation: %f");
        goto LABEL_111;
      case 6u:
        if (a2 >= 1)
        {
          v38 = a2;
          do
          {
            putchar(9);
            --v38;
          }

          while (v38);
        }

        IOHIDEventGetFloatValue();
        v40 = v39;
        IOHIDEventGetFloatValue();
        v42 = v41;
        IOHIDEventGetFloatValue();
        v44 = v43;
        IntegerValue = IOHIDEventGetIntegerValue();
        v46 = " isPixels";
        if (!IntegerValue)
        {
          v46 = "";
        }

        printf("Scroll: (%f, %f, %f) %s", v40, v42, v44, v46);
        mt_PrintEventPhase();
        ScrollMomentum = IOHIDEventGetScrollMomentum();
        v48 = ScrollMomentum;
        if (ScrollMomentum)
        {
          printf(" PhaseMomentumContinue");
          if ((v48 & 2) == 0)
          {
LABEL_65:
            if ((v48 & 0x10) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_147;
          }
        }

        else if ((ScrollMomentum & 2) == 0)
        {
          goto LABEL_65;
        }

        printf(" PhaseMomentumStart");
        if ((v48 & 0x10) == 0)
        {
LABEL_66:
          if ((v48 & 4) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_148;
        }

LABEL_147:
        printf(" PhaseMomentumInterrupted");
        if ((v48 & 4) == 0)
        {
LABEL_67:
          if ((v48 & 8) == 0)
          {
            goto LABEL_153;
          }

          goto LABEL_149;
        }

LABEL_148:
        printf(" PhaseMomentumEnd");
        if ((v48 & 8) == 0)
        {
          goto LABEL_153;
        }

LABEL_149:
        printf(" PhaseMomentumWillBegin");
        goto LABEL_153;
      case 7u:
        if (a2 >= 1)
        {
          v51 = a2;
          do
          {
            putchar(9);
            --v51;
          }

          while (v51);
        }

        IOHIDEventGetFloatValue();
        printf("Scale Event: %f");
        goto LABEL_111;
      case 9u:
        if (a2 >= 1)
        {
          v52 = a2;
          do
          {
            putchar(9);
            --v52;
          }

          while (v52);
        }

        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        printf("Velocity: %f, %f\n");
        goto LABEL_166;
      case 0xAu:
        if (a2 >= 1)
        {
          v62 = a2;
          do
          {
            putchar(9);
            --v62;
          }

          while (v62);
        }

        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        printf("Orientation: %fr, %fa");
LABEL_111:
        if ((IOHIDEventGetEventFlags() & 1) == 0)
        {
          printf(" (Relative) ");
        }

        goto LABEL_152;
      case 0xBu:
        if (IOHIDEventGetIntegerValue())
        {
          mt_PrintDigitizerHandEvent(v3, a2);
        }

        else if (gPrintHIDShowPathEvents == 1)
        {
          mt_PrintDigitizerPathEvent(v3, a2);
        }

        goto LABEL_166;
      case 0xCu:
        IOHIDEventGetFloatValue();
        if (a2 >= 1)
        {
          v26 = a2;
          do
          {
            putchar(9);
            --v26;
          }

          while (v26);
        }

        printf("ALS Event (level: %f)\n");
        goto LABEL_166;
      case 0xDu:
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        if (a2 >= 1)
        {
          v49 = a2;
          do
          {
            putchar(9);
            --v49;
          }

          while (v49);
        }

        printf("Accelerometer Event (X: %f  Y: %f  Z: %f)\n");
        goto LABEL_166;
      case 0xEu:
        v28 = IOHIDEventGetIntegerValue();
        if (a2 >= 1)
        {
          v29 = a2;
          do
          {
            putchar(9);
            --v29;
          }

          while (v29);
        }

        printf("Proximity Event (");
        if ((v28 & 8) != 0)
        {
          printf(" Edge Stradding,");
          if ((v28 & 0x20) == 0)
          {
LABEL_42:
            if ((v28 & 0x10) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_136;
          }
        }

        else if ((v28 & 0x20) == 0)
        {
          goto LABEL_42;
        }

        printf(" Finger Touch,");
        if ((v28 & 0x10) == 0)
        {
LABEL_43:
          if ((v28 & 4) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_137;
        }

LABEL_136:
        printf(" Flat Finger Clasp,");
        if ((v28 & 4) == 0)
        {
LABEL_44:
          if ((v28 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_138;
        }

LABEL_137:
        printf(" Irregualar Objects,");
        if ((v28 & 1) == 0)
        {
LABEL_45:
          if ((v28 & 2) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_139;
        }

LABEL_138:
        printf(" Large Body Contact,");
        if ((v28 & 2) == 0)
        {
LABEL_46:
          if ((v28 & 0x40) == 0)
          {
            goto LABEL_47;
          }

          goto LABEL_140;
        }

LABEL_139:
        printf(" Large Body Farfield,");
        if ((v28 & 0x40) == 0)
        {
LABEL_47:
          if ((v28 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_141;
        }

LABEL_140:
        printf(" Receiver Proximity,");
        if ((v28 & 0x80) == 0)
        {
LABEL_48:
          if ((v28 & 0x100) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_142;
        }

LABEL_141:
        printf(" Small Objects Hovering,");
        if ((v28 & 0x100) == 0)
        {
LABEL_49:
          if ((v28 & 0x200) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_143;
        }

LABEL_142:
        printf(" Crude Receiver Proximity,");
        if ((v28 & 0x200) == 0)
        {
LABEL_50:
          if ((v28 & 0x400) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

LABEL_143:
        printf(" Receiver Proximity Monitoring,");
        if ((v28 & 0x400) != 0)
        {
LABEL_51:
          printf(" Crude Receiver Proximity Monitoring,");
        }

LABEL_52:
        v30 = ")";
LABEL_96:
        puts(v30);
        goto LABEL_166;
      case 0x10u:
        v5 = IOHIDEventGetIntegerValue();
        IOHIDEventGetFloatValue();
        v16 = v15;
        IOHIDEventGetFloatValue();
        v18 = v17;
        IOHIDEventGetFloatValue();
        v20 = v19;
        if (a2 >= 1)
        {
          v21 = a2;
          do
          {
            putchar(9);
            --v21;
          }

          while (v21);
        }

        v22 = v20;
        v23 = v18;
        v24 = v16;
        printf("Nav Swipe:");
        goto LABEL_133;
      case 0x11u:
        if (a2 >= 1)
        {
          v53 = a2;
          do
          {
            putchar(9);
            --v53;
          }

          while (v53);
        }

        IOHIDEventGetFloatValue();
        v55 = v54;
        IOHIDEventGetFloatValue();
        v57 = v56;
        v58 = IOHIDEventGetIntegerValue();
        printf("Mouse: %fx, %fy (buttonmask: 0x%08lX)", v55, v57, v58);
        if ((IOHIDEventGetEventFlags() & 1) == 0)
        {
          printf(" (Relative)");
        }

        if ((IOHIDEventGetEventFlags() & 0x100000) != 0)
        {
          printf(" (Injected)");
        }

        goto LABEL_153;
      case 0x16u:
        if (a2 >= 1)
        {
          v59 = a2;
          do
          {
            putchar(9);
            --v59;
          }

          while (v59);
        }

        v30 = "Zoom Toggle";
        goto LABEL_96;
      case 0x17u:
        v5 = IOHIDEventGetIntegerValue();
        IOHIDEventGetFloatValue();
        v67 = v66;
        IOHIDEventGetFloatValue();
        v69 = v68;
        IOHIDEventGetFloatValue();
        v71 = v70;
        if (a2 >= 1)
        {
          v72 = a2;
          do
          {
            putchar(9);
            --v72;
          }

          while (v72);
        }

        v22 = v71;
        v23 = v69;
        v24 = v67;
        printf("Dock Swipe:");
        goto LABEL_133;
      case 0x18u:
        v63 = IOHIDEventGetIntegerValue();
        v64 = IOHIDEventGetIntegerValue();
        if (a2 >= 1)
        {
          v65 = a2;
          do
          {
            putchar(9);
            --v65;
          }

          while (v65);
        }

        printf("Symbolic Hot Key: %d", v63);
        if (v64)
        {
          printf(" (CGSHotKey)");
        }

        else if (v63 == 1)
        {
          printf(" (DictionaryApp)");
        }

        goto LABEL_152;
      case 0x1Bu:
        v5 = IOHIDEventGetIntegerValue();
        IOHIDEventGetFloatValue();
        v7 = v6;
        IOHIDEventGetFloatValue();
        v9 = v8;
        IOHIDEventGetFloatValue();
        v11 = v10;
        if (a2 >= 1)
        {
          v12 = a2;
          do
          {
            putchar(9);
            --v12;
          }

          while (v12);
        }

        printf("Fluid Touch Gesture:");
        if (IOHIDEventGetType() != 27)
        {
          goto LABEL_131;
        }

        v13 = IOHIDEventGetIntegerValue();
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4u:
              printf(" DockSecondary");
              break;
            case 5u:
              printf(" NavPrimary");
              break;
            case 6u:
              printf(" NavSecondary");
              break;
            default:
LABEL_131:
              printf(" Flavor=0x%08X");
              break;
          }
        }

        else
        {
          switch(v13)
          {
            case 1u:
              printf(" NotifCntrPrimary");
              break;
            case 2u:
              printf(" NotifCntrSecondary");
              break;
            case 3u:
              printf(" DockPrimary");
              break;
            default:
              goto LABEL_131;
          }
        }

        v22 = v11;
        v23 = v9;
        v24 = v7;
LABEL_133:
        mt_PrintEventMotion();
        printf(" %+.2f%% (%+.2f%%, %+.2f%%)", (v24 * 100.0), (v23 * 100.0), (v22 * 100.0));
        mt_PrintSwipeMask(v5);
LABEL_152:
        mt_PrintEventPhase();
LABEL_153:
        putchar(10);
LABEL_166:
        if (Children && CFArrayGetCount(Children) >= 1)
        {
          v82 = 0;
          v83 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Children, v82);
            mt_PrintHIDEvent(ValueAtIndex, (a2 + 1));
            v82 = v83;
          }

          while (CFArrayGetCount(Children) > v83++);
        }

        result = fflush(*MEMORY[0x29EDCA620]);
        break;
      case 0x1Cu:
        v5 = IOHIDEventGetIntegerValue();
        IOHIDEventGetFloatValue();
        v32 = v31;
        IOHIDEventGetFloatValue();
        v34 = v33;
        IOHIDEventGetFloatValue();
        v36 = v35;
        if (a2 >= 1)
        {
          v37 = a2;
          do
          {
            putchar(9);
            --v37;
          }

          while (v37);
        }

        v22 = v36;
        v23 = v34;
        v24 = v32;
        printf("Boundary Scroll:");
        goto LABEL_133;
      case 0x20u:
        v73 = IOHIDEventGetIntegerValue();
        IOHIDEventGetFloatValue();
        v75 = v74;
        v76 = IOHIDEventGetIntegerValue();
        IOHIDEventGetFloatValue();
        v78 = v77;
        if (a2 >= 1)
        {
          v79 = a2;
          do
          {
            putchar(9);
            --v79;
          }

          while (v79);
        }

        printf("Force Gesture: %+.2f%% (stage %u) lean=%.2f", (v75 * 100.0), v76, v78);
        printf(" - ");
        if (v73 > 0x11)
        {
          printf("Some Behavior");
        }

        else
        {
          printf(off_29F34C4B8[v73 & 0x1F]);
        }

        printf(" - ");
        goto LABEL_152;
      case 0x26u:
        IOHIDEventGetFloatValue();
        IOHIDEventGetFloatValue();
        IOHIDEventGetIntegerValue();
        if (a2 >= 1)
        {
          v14 = a2;
          do
          {
            putchar(9);
            --v14;
          }

          while (v14);
        }

        printf("Keyboard Brightness Event (current level: %f, target level: %f, ramp length: %llul)\n");
        goto LABEL_166;
      case 0x29u:
        IOHIDEventGetTimeStamp();
        if (!dword_2A17A1EBC)
        {
          mach_timebase_info(&machAbsoluteTimeToTimeNano_sTimebaseInfo);
        }

        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        if (a2 >= 1)
        {
          v27 = a2;
          do
          {
            putchar(9);
            --v27;
          }

          while (v27);
        }

        printf("ForceStage Event: TS:%llu stage:%u transition:%s nextThresh:%0.2f pressedThresh:%0.2f releasedThresh:%0.2f force:%0.2f forceVel:%0.2f\n");
        goto LABEL_152;
      case 0x2Au:
        IOHIDEventGetTimeStamp();
        if (!dword_2A17A1EBC)
        {
          mach_timebase_info(&machAbsoluteTimeToTimeNano_sTimebaseInfo);
        }

        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
        IOHIDEventGetIntegerValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetIntegerValue();
        IOHIDEventGetDoubleValue();
        IOHIDEventGetDoubleValue();
        if (a2 >= 1)
        {
          v25 = a2;
          do
          {
            putchar(9);
            --v25;
          }

          while (v25);
        }

        printf("TouchSensitiveButton Event: (usagePage:0x%04X usage:0x%04X) TS:%llu touch:%d pos:(%0.2f,%0.2f) posDelta:(%0.4f,%0.4f) mask:0x%x majorRadius:%0.2f minorRadius:%0.2f - ");
        goto LABEL_152;
      default:
        if (a2 >= 1)
        {
          v80 = a2;
          do
          {
            putchar(9);
            --v80;
          }

          while (v80);
        }

        IOHIDEventGetType();
        printf("Other Event: 0x%08X\n");
        goto LABEL_166;
    }
  }

  return result;
}

uint64_t mt_PrintDigitizerHandEvent(uint64_t a1, int a2)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  EventFlags = IOHIDEventGetEventFlags();
  if (IOHIDEventGetIntegerValue() == 1 && (IntegerValue & 1) != 0)
  {
    putchar(10);
  }

  if (a2 >= 1)
  {
    do
    {
      putchar(9);
      --a2;
    }

    while (a2);
  }

  IOHIDEventGetFloatValue();
  v6 = v5;
  IOHIDEventGetFloatValue();
  v8 = v7;
  IOHIDEventGetFloatValue();
  printf("Hand Event (%6.3fx, %6.3fy)  force=%3.0fg\tMask: 0x%08X", v6, v8, v9, IntegerValue);
  if (IOHIDEventGetIntegerValue() == 1)
  {
    printf(", InRange ");
  }

  else
  {
    printf(", OutOfRange ");
  }

  if (IOHIDEventGetIntegerValue() == 1)
  {
    printf(" Touching");
  }

  else
  {
    printf(" UnTouch");
  }

  if ((IntegerValue & 2) != 0)
  {
    printf("  dTouch");
    if ((IntegerValue & 4) == 0)
    {
LABEL_14:
      if ((IntegerValue & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_46;
    }
  }

  else if ((IntegerValue & 4) == 0)
  {
    goto LABEL_14;
  }

  printf("  dPosition");
  if ((IntegerValue & 0x40) == 0)
  {
LABEL_15:
    if ((IntegerValue & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  printf(" dAttribute");
  if ((IntegerValue & 0x80) == 0)
  {
LABEL_16:
    if ((IntegerValue & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  printf("  Cancel");
  if ((IntegerValue & 0x200) == 0)
  {
LABEL_17:
    if ((IntegerValue & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  printf("  Resting");
  if ((IntegerValue & 0x400) == 0)
  {
LABEL_18:
    if ((IntegerValue & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  printf("  FromEdgeFlat");
  if ((IntegerValue & 0x800) == 0)
  {
LABEL_19:
    if ((IntegerValue & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  printf("  FromEdgeTip");
  if ((IntegerValue & 0x4000) == 0)
  {
LABEL_20:
    if ((IntegerValue & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  printf("  EdgePressPending");
  if ((IntegerValue & 0x8000) == 0)
  {
LABEL_21:
    if ((IntegerValue & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  printf("  EdgePressActive");
  if ((IntegerValue & 0x1000) == 0)
  {
LABEL_22:
    if ((IntegerValue & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  printf("  FromCorner");
  if ((IntegerValue & 0x2000) == 0)
  {
LABEL_23:
    if ((IntegerValue & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_54:
  printf("  SwipePending");
  if ((IntegerValue & 0x40000) != 0)
  {
LABEL_24:
    printf("  SwipeLocked");
  }

LABEL_25:
  if ((IntegerValue & 0xF000000) == 0)
  {
    goto LABEL_31;
  }

  if ((IntegerValue & 0x1000000) != 0)
  {
    printf("  SwipeUP");
    if ((IntegerValue & 0x2000000) == 0)
    {
LABEL_28:
      if ((IntegerValue & 0x4000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_64;
    }
  }

  else if ((IntegerValue & 0x2000000) == 0)
  {
    goto LABEL_28;
  }

  printf("  SwipeDOWN");
  if ((IntegerValue & 0x4000000) == 0)
  {
LABEL_29:
    if ((IntegerValue & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_64:
  printf("  SwipeLEFT");
  if ((IntegerValue & 0x8000000) != 0)
  {
LABEL_30:
    printf("  SwipeRIGHT");
  }

LABEL_31:
  if ((IntegerValue & 0x100) != 0)
  {
    printf("   GestureStarted");
    if ((IntegerValue & 8) == 0)
    {
LABEL_33:
      if ((IntegerValue & 0x20000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((IntegerValue & 8) == 0)
  {
    goto LABEL_33;
  }

  printf("   GestureEnded");
  if ((IntegerValue & 0x20000) != 0)
  {
LABEL_34:
    printf("   Tap");
  }

LABEL_35:
  v10 = IOHIDEventGetIntegerValue();
  if (v10)
  {
    printf(" GenerationCount=%u", v10);
  }

  if ((EventFlags & 0x20) != 0)
  {
    printf(" (Interpolated)");
    if ((EventFlags & 0x800) == 0)
    {
LABEL_39:
      if ((EventFlags & 0x4000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((EventFlags & 0x800) == 0)
  {
    goto LABEL_39;
  }

  printf(" (Extrapolated)");
  if ((EventFlags & 0x4000) != 0)
  {
LABEL_40:
    printf(" (Low Confidence Estimation)");
  }

LABEL_41:

  return putchar(10);
}

uint64_t mt_PrintDigitizerPathEvent(uint64_t a1, int a2)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  EventFlags = IOHIDEventGetEventFlags();
  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      putchar(9);
      --v6;
    }

    while (v6);
  }

  v7 = IntegerValue;
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  IOHIDEventGetFloatValue();
  if (IntegerValue)
  {
    IOHIDEventGetIntegerValue();
    printf("Path#%d: F%d (%6.9fx,%6.9fy,) ZA=%5.3f ZD=%5.3f GC=%ld");
  }

  else
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetIntegerValue();
    printf("Path#%d: F%d (%6.9fx,%6.9fy,%6.9fz) ZA=%5.3f ZD=%5.3f GC=%ld");
  }

  v8 = IOHIDEventGetIntegerValue();
  printf(" Mask=0x%08X", v8);
  v9 = (v8 & 2) == 0;
  if ((v8 & 2) != 0)
  {
    printf(" (%s", "dTouch");
    if ((v8 & 4) == 0)
    {
LABEL_9:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_9;
  }

  if ((v8 & 2) != 0)
  {
    printf(", %s");
  }

  else
  {
    printf(" (%s");
  }

  v9 = 0;
  if ((v8 & 0x40) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_29:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_33:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_37:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x200) == 0)
  {
LABEL_13:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_41:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x400) == 0)
  {
LABEL_14:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_45:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x800) == 0)
  {
LABEL_15:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_49:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x4000) == 0)
  {
LABEL_16:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_53:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x8000) == 0)
  {
LABEL_17:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_57:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x1000) == 0)
  {
LABEL_18:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_61:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x2000) == 0)
  {
LABEL_19:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_65:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  v9 = 0;
  if ((v8 & 0x40000) == 0)
  {
LABEL_20:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_21;
    }

LABEL_73:
    if (v9)
    {
      printf(" (%s");
    }

    else
    {
      printf(", %s");
    }

    if ((v8 & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_69:
  if (v9)
  {
    printf(" (%s");
  }

  else
  {
    printf(", %s");
  }

  LOBYTE(v9) = 0;
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_73;
  }

LABEL_21:
  if ((v8 & 8) != 0)
  {
    if (v9)
    {
      printf(" (%s");
      goto LABEL_81;
    }

LABEL_80:
    printf(", %s", "GestureEnded");
    goto LABEL_81;
  }

  if (!v9)
  {
LABEL_81:
    putchar(41);
  }

  if ((IOHIDEventGetPhase() & 0x80) != 0)
  {
    printf(" MayBegin");
  }

  if (IOHIDEventGetIntegerValue() == 1)
  {
    printf(" InRange");
  }

  else
  {
    printf(" OutOfRange");
  }

  if (IOHIDEventGetIntegerValue() == 1)
  {
    printf(" Touching");
  }

  else
  {
    printf(" UnTouch");
  }

  if ((EventFlags & 0x20) != 0)
  {
    printf(" Interpolated");
    if ((EventFlags & 0x800) == 0)
    {
LABEL_92:
      if ((EventFlags & 0x4000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }
  }

  else if ((EventFlags & 0x800) == 0)
  {
    goto LABEL_92;
  }

  printf(" Extrapolated");
  if ((EventFlags & 0x4000) != 0)
  {
LABEL_93:
    printf(" Low Confidence Estimation");
  }

LABEL_94:
  if (!IOHIDEventIsAbsolute())
  {
    printf(" Relative");
  }

  putchar(10);
  if (a2 >= 1)
  {
    do
    {
      putchar(9);
      --a2;
    }

    while (a2);
  }

  if (v7)
  {
    IOHIDEventGetFloatValue();
    v11 = v10;
    IOHIDEventGetFloatValue();
    v13 = v12;
    IOHIDEventGetFloatValue();
    v15 = v14;
    IOHIDEventGetFloatValue();
    v17 = v16;
    IOHIDEventGetFloatValue();
    return printf("\tangle=%6.3f minorRadius=%5.4f  majorRadius=%5.4f radiusAccuracy=%5.4f force=%3.0fg\n", v11, v13, v15, v17, v18);
  }

  else
  {
    IOHIDEventGetFloatValue();
    v21 = v20 * 180.0 / 3.14159265;
    IOHIDEventGetFloatValue();
    v23 = v22 * 180.0 / 3.14159265;
    IOHIDEventGetFloatValue();
    v25 = v24 * 180.0 / 3.14159265;
    IOHIDEventGetFloatValue();
    v27 = v26;
    putchar(9);
    printf("altitude=%.1f°", v21);
    mt_PrintStylusMask(a1, 0x8000);
    printf(" azimuth=%.1f°", v23);
    mt_PrintStylusMask(a1, 0x10000);
    printf(" roll=%.1f°", v25);
    mt_PrintStylusMask(a1, 0x800000);
    printf(" pressure=%.1fg", v27);
    mt_PrintStylusMask(a1, 1024);

    return putchar(10);
  }
}

uint64_t mt_PrintEventPhase()
{
  result = IOHIDEventGetPhase();
  v1 = result;
  if ((result & 0x80) != 0)
  {
    result = printf(" PhaseMayBegin");
    if ((v1 & 1) == 0)
    {
LABEL_3:
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((result & 1) == 0)
  {
    goto LABEL_3;
  }

  result = printf(" PhaseBegan");
  if ((v1 & 2) == 0)
  {
LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = printf(" PhaseEnded");
    if ((v1 & 8) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = printf(" PhaseChanged");
  if ((v1 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    return result;
  }

LABEL_11:

  return printf(" PhaseCancelled");
}

uint64_t mt_PrintRawHIDEvent(uint64_t result)
{
  if (result)
  {
    if (IOHIDEventGetType() == 11 && IOHIDEventGetIntegerValue() != 3)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v2 = dword_2A17A1EBC;
      if (!dword_2A17A1EBC)
      {
        mach_timebase_info(&machAbsoluteTimeToTimeNano_sTimebaseInfo);
        v2 = dword_2A17A1EBC;
      }

      v37 = TimeStamp / v2 * machAbsoluteTimeToTimeNano_sTimebaseInfo / 0x3E8;
      IOHIDEventGetFloatValue();
      *&v3 = v3;
      v36 = *&v3;
      IOHIDEventGetFloatValue();
      *&v4 = v4;
      v35 = *&v4;
      IOHIDEventGetFloatValue();
      *&v5 = v5;
      v34 = *&v5;
      IOHIDEventGetFloatValue();
      v7 = v6;
      IOHIDEventGetFloatValue();
      v9 = v8;
      IOHIDEventGetFloatValue();
      v11 = v10;
      IOHIDEventGetFloatValue();
      v13 = v12;
      IOHIDEventGetFloatValue();
      v15 = v14;
      IOHIDEventGetFloatValue();
      v17 = v16;
      IOHIDEventGetFloatValue();
      v19 = v18;
      IOHIDEventGetFloatValue();
      v21 = v20;
      IntegerValue = IOHIDEventGetIntegerValue();
      v23 = IOHIDEventGetIntegerValue();
      v24 = IOHIDEventGetIntegerValue();
      v25 = IOHIDEventGetIntegerValue();
      v26 = IOHIDEventGetIntegerValue();
      v27 = IOHIDEventGetIntegerValue();
      v28 = IOHIDEventGetIntegerValue();
      v29 = IOHIDEventGetIntegerValue();
      v30 = IOHIDEventGetIntegerValue();
      printf("path,%llu,%d,%d,%d,%d,%f,%f,%d,%d,0x%X,%f,%f,%d,%d,%f,%f,%f,%f,%f,%f,%f\n", v37, v30, IntegerValue, v23, v24, v36, v35, v26, v27, v25, v34, v7, v28, v29, v9, v11, v13, v15, v17, v19, v21);
    }

    result = IOHIDEventGetChildren();
    if (result)
    {
      v31 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v31, i);
          mt_PrintRawHIDEvent(ValueAtIndex);
          result = CFArrayGetCount(v31);
        }
      }
    }
  }

  return result;
}

uint64_t mt_PrintStylusMask(uint64_t a1, int a2)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v4 = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  v6 = result & a2;
  if ((result & a2) != 0)
  {
    result = printf(" (%s", "estimated");
  }

  if ((IntegerValue & a2) != 0)
  {
    if (v6)
    {
      printf(", %s");
    }

    else
    {
      printf(" (%s");
    }

    if ((v4 & a2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v4 & a2) == 0)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v6)
  {
LABEL_12:
    printf(", %s", "did update");
    goto LABEL_13;
  }

  printf(" (%s");
LABEL_13:

  return putchar(41);
}

uint64_t mt_PrintEventMotion()
{
  if (IOHIDEventGetType() == 16 || IOHIDEventGetType() == 23 || IOHIDEventGetType() == 27 || IOHIDEventGetType() == 28)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    switch(IntegerValue)
    {
      case 1:
        v1 = " Horiz";
        break;
      case 2:
        v1 = " Vert";
        break;
      case 3:
        v1 = " Scale";
        break;
      case 4:
        v1 = " Rotate";
        break;
      case 5:
        v1 = " Tap";
        break;
      case 6:
        v1 = " DoubleTap";
        break;
      case 7:
        v1 = " FromLeftEdge";
        break;
      case 8:
        v1 = " OffLeftEdge";
        break;
      case 9:
        v1 = " FromRightEdge";
        break;
      case 10:
        v1 = " OffRightEdge";
        break;
      case 11:
        v1 = " FromTopEdge";
        break;
      case 12:
        v1 = " OffTopEdge";
        break;
      case 13:
        v1 = " FromBottomEdge";
        break;
      case 14:
        v1 = " OffBottomEdge";
        break;
      default:
        return printf(" Motion=0x%08X", IntegerValue);
    }

    return printf(v1);
  }

  else
  {
    IntegerValue = 0;
    return printf(" Motion=0x%08X", IntegerValue);
  }
}

uint64_t mt_PrintSwipeMask(uint64_t result)
{
  v1 = result;
  if (result)
  {
    result = printf(" [SwipeUp]");
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((result & 2) == 0)
  {
    goto LABEL_3;
  }

  result = printf(" [SwipeDown]");
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = printf(" [SwipeLeft]");
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = printf(" [SwipeRight]");
  if ((v1 & 0x10) == 0)
  {
LABEL_6:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = printf(" [ScaleExpand]");
  if ((v1 & 0x20) == 0)
  {
LABEL_7:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = printf(" [RotateCW]");
    if ((v1 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = printf(" [ScaleContract]");
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v1 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:

  return printf(" [RotateCCW]");
}

double mt_MachAbsoluteTimeToSeconds(unint64_t a1)
{
  if (dword_2A17A1EAC)
  {
    v2 = *&mt_MachAbsoluteTimeToSeconds_timebaseFraction;
  }

  else
  {
    mach_timebase_info(&mt_MachAbsoluteTimeToSeconds_sTimebaseInfo);
    LODWORD(v3) = mt_MachAbsoluteTimeToSeconds_sTimebaseInfo;
    LODWORD(v4) = dword_2A17A1EAC;
    v2 = v3 * 0.000000001 / v4;
    mt_MachAbsoluteTimeToSeconds_timebaseFraction = *&v2;
  }

  return v2 * a1;
}

float invertRadiusSmoothing(int8x16_t a1, float a2, int8x16_t a3, int8x16_t a4)
{
  if (a2 != 0.0)
  {
    *a4.i32 = (*a1.i32 - a2) / a2;
    v4 = fabsf(*a4.i32);
    v5 = v4;
    if (*a3.i32 * 0.125 <= v4)
    {
      *a3.i64 = (*a3.i32 + 1.0);
      if (*a3.i64 * 0.0625 <= v5)
      {
        if (*a3.i64 * 0.125 > v5)
        {
          *a1.i32 = (*a4.i32 / (*a3.i64 * 0.5) + 1.0) * a2;
          return *a1.i32;
        }

        a3.i32[0] = 0.25;
        if (v4 >= 0.25)
        {
          return *a1.i32;
        }

        a1.i64[0] = 0x8000000080000000;
        a1.i64[1] = 0x8000000080000000;
        *a1.i32 = *vbslq_s8(a1, a3, a4).i32 + 1.0;
      }

      else
      {
        a1.i32[0] = 0.125;
        v6.i64[0] = 0x8000000080000000;
        v6.i64[1] = 0x8000000080000000;
        *a1.i32 = *vbslq_s8(v6, a1, a4).i32 + 1.0;
      }
    }

    else
    {
      *a1.i32 = (*a4.i32 / *a3.i32) + 1.0;
    }

    *a1.i32 = *a1.i32 * a2;
  }

  return *a1.i32;
}

float mthm_ComputeFingerEllipseTipOffset_mm(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8)
{
  if (*(a1 + 4))
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (*(a1 + 44) != 1 || a3[5].f32[0] == 0.0 && a3[5].f32[1] == 0.0)
  {
    v13 = a3[7].f32[1];
    v14 = a3[8].f32[0];
    v15 = a3[7].f32[0];
  }

  else
  {
    a5.i32[0] = a3[7].i32[1];
    v16 = *(a1 + 48);
    a7.i32[0] = v16;
    v13 = invertRadiusSmoothing(a5, a4[15], a7, a8);
    v17.i32[0] = a3[8].i32[0];
    v18.i32[0] = v16;
    v14 = invertRadiusSmoothing(v17, a4[16], v18, v19);
    v20.i32[0] = a3[7].i32[0];
    v21.i32[0] = v16;
    v15 = invertRadiusSmoothing(v20, a4[14], v21, v22);
  }

  v23 = v11;
  v24 = *a1;
  v25 = 0.0;
  v26 = *a1 - 1;
  if (*a1 <= 1)
  {
    if (!v24)
    {
      goto LABEL_30;
    }

    if (v24 == 1)
    {
      v29 = *(a1 + 16);
      v25 = -(*(a1 + 20) * v23);
    }
  }

  else
  {
    switch(v24)
    {
      case 2:
        v15 = v15 + 3.14159265;
        v25 = *(a1 + 20) * v23;
        v30 = -*(a1 + 16);
        break;
      case 3:
        if (v15 < 1.57079633)
        {
          v31 = v15 + 3.14159265;
          v15 = v31;
        }

        v25 = -*(a1 + 16);
        v32 = -(*(a1 + 20) * v23);
        break;
      case 4:
        if (v15 > 1.57079633)
        {
          v27 = v15 + 3.14159265;
          v15 = v27;
        }

        v25 = *(a1 + 16);
        v28 = *(a1 + 20) * v23;
        break;
    }
  }

  v33 = *(a1 + 32);
  if (v14 > v33)
  {
    v33 = v14;
  }

  v34 = *(a1 + 24) + v33;
  if (v13 > v34)
  {
    v35 = v13 - v34;
    if (v35 > *(a1 + 28))
    {
      v35 = *(a1 + 28);
    }

    v36 = *(a1 + 12) * v35;
    v25 = v25 + (v36 * __sincosf_stret(v15).__cosval);
  }

LABEL_30:
  v37 = *(a1 + 40);
  v38 = *(a1 + 41);
  __asm { FMOV            V1.2S, #1.0 }

  v44 = vminnm_f32(vmaxnm_f32(a3[4], 0), _D1);
  v45 = vminnm_f32(v44, vsub_f32(_D1, v44));
  v46 = MTSurfaceDimensions::convertSurfaceFractionToMillimeters(a2, 0, v45.f32[0], v45.f32[1]);
  v47 = *(a1 + 60);
  if (v26 > 1)
  {
    v48 = 1.0;
    v50 = *(a1 + 56);
    if (v50 != 0.0)
    {
      v48 = fmin((v46 / v50), 1.0);
    }
  }

  else
  {
    v48 = 1.0;
    if (v47 != 0.0)
    {
      v48 = fmin((v46 / v47), 1.0);
    }

    v49 = *(a1 + 56);
  }

  v51 = fabsf(v25);
  if (v37)
  {
    v51 = v25;
  }

  return v51 * v48;
}

float mthm_ComputeFingerEllipseTipOffsetFromPressure_mm(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 60);
  v4 = a1[8];
  result = 0.0;
  if (v3 > (a1[6] + v4))
  {
    if ((v3 - v4) <= a1[7])
    {
      v6 = v3 - v4;
    }

    else
    {
      v6 = a1[7];
    }

    return (v6 * __sincosf_stret(*(a3 + 56)).__cosval) + 0.0;
  }

  return result;
}

uint64_t MTSimpleEmbeddedStylusHIDManager::wasScheduledOnDispatchQueue(MTSimpleEmbeddedStylusHIDManager *this, NSObject *a2)
{
  v4 = *(this + 25);
  if (v4)
  {
    MTSLGLogger::registerControlInterface(v4, a2);
  }

  return MTSimpleHIDManager::wasScheduledOnDispatchQueue(this, a2);
}

void MTSimpleEmbeddedStylusHIDManager::wasUnscheduledFromDispatchQueue(NSObject **this, dispatch_queue_s *a2)
{
  MTSimpleHIDManager::wasUnscheduledFromDispatchQueue(this, a2);
  v3 = this[25];
  if (v3)
  {

    MTSLGLogger::unregisterControlInterface(v3);
  }
}

uint64_t MTSimpleEmbeddedStylusHIDManager::setDeviceUsages(MTSimpleEmbeddedStylusHIDManager *this)
{
  v14 = 32;
  valuePtr = 13;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    (*(*this + 568))(this, @"PrimaryUsagePage", v4);
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"DeviceUsagePage", v5);
    }

    CFRelease(v5);
  }

  v6 = CFNumberCreate(v2, kCFNumberSInt32Type, &v14);
  if (v6)
  {
    v7 = v6;
    (*(*this + 568))(this, @"PrimaryUsage", v6);
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"DeviceUsage", v7);
    }

    CFRelease(v7);
  }

  v8 = CFArrayCreateMutable(v2, 2, MEMORY[0x29EDB9000]);
  if (v8)
  {
    v9 = v8;
    if (Mutable)
    {
      CFArrayAppendValue(v8, Mutable);
    }

    (*(*this + 568))(this, @"DeviceUsagePairs", v9);
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  (*(*this + 80))(this);
  IsBuiltIn = MTDeviceIsBuiltIn();
  v11 = *MEMORY[0x29EDB8F00];
  if (IsBuiltIn)
  {
    v12 = *MEMORY[0x29EDB8F00];
  }

  else
  {
    v12 = *MEMORY[0x29EDB8EF8];
  }

  (*(*this + 568))(this, @"Built-In", v12);
  return (*(*this + 568))(this, @"DisplayIntegrated", v11);
}

uint64_t MTSimpleEmbeddedStylusHIDManager::setPluginDefaultProperties(MTSimpleEmbeddedStylusHIDManager *this)
{
  MTSimpleEmbeddedHIDManager::setPluginDefaultProperties(this);
  (*(*this + 80))(this);
  valuePtr = MTDeviceGetMaxHoverHeightValue();
  v2 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    (*(*this + 568))(this, @"MaxHoverHeight", v2);
    CFRelease(v3);
  }

  return (*(*this + 568))(this, @"HoverDisabled", *MEMORY[0x29EDB8EF8]);
}

uint64_t MTSimpleEmbeddedStylusHIDManager::setTouchMode(MTSimpleEmbeddedStylusHIDManager *this)
{
  (*(*this + 80))(this);
  MTDeviceUpdateUILockState();
  return 0;
}

void MTSimpleEmbeddedStylusHIDManager::sendHighNoiseEnvironmentDetection(MTSimpleEmbeddedStylusHIDManager *this, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  (*(*this + 80))(this);
  MTDeviceGetDeviceID();
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "exited";
    if (a2)
    {
      v5 = "entered";
    }

    *buf = 136446466;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = 0;
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "Sending high-noise environment %{public}s (deviceID 0x%llX)", buf, 0x16u);
  }

  *&buf[8] = 0;
  *&buf[1] = 0;
  buf[0] = a2;
  v6 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v8 = VendorDefinedEvent;
    (*(*this + 136))(this, VendorDefinedEvent, 0);
    CFRelease(v8);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void MTSimpleEmbeddedStylusHIDManager::~MTSimpleEmbeddedStylusHIDManager(MTSimpleEmbeddedStylusHIDManager *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

MTFingerToPathMap *MTHandMotion::MTHandMotion(MTFingerToPathMap *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  MTFingerToPathMap::MTFingerToPathMap(a1, 1);
  *v12 = &unk_2A2411598;
  *(v12 + 120) = a2;
  *(v12 + 128) = a3;
  *(v12 + 132) = a4;
  *(v12 + 380) = a5;
  *(v12 + 384) = a6;
  MTParameterFactory::initMotionExtractionParams(v12 + 144);
  MTHandMotion::clearHandMotion(a1, 1);
  return a1;
}

void MTHandMotion::~MTHandMotion(MTHandMotion *this)
{
  MTFingerToPathMap::~MTFingerToPathMap(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTHandMotion::printExtractedMotion(uint64_t a1, int a2, int a3, uint64_t a4)
{
  printf("%s %dM/%d fingers, %d<-->%d\n", *(a1 + 384), a3, a2, *(a1 + 80), *(a1 + 88));
  for (i = 3; i != 8; ++i)
  {
    v7 = *(a1 + 4 * i);
    if (v7)
    {
      printf("\tF%d %5.2fx %5.2fy %5.2fvx %5.2fvy\n", i - 2, *(a4 + 96 * v7 + 32), *(a4 + 96 * v7 + 36), *(a4 + 96 * v7 + 40), *(a4 + 96 * v7 + 44));
    }
  }

  return printf("\t%4.2fdx %4.2fdy %4.2fds %4.2fdr | %5.3f/%5.3fvx %5.3f/%5.3fvy %5.3f/%5.3fvs %5.3f/%5.3fvr\n", *(a1 + 192), *(a1 + 196), *(a1 + 200), *(a1 + 204), *(a1 + 284), *(a1 + 208), *(a1 + 288), *(a1 + 212), *(a1 + 292), *(a1 + 216), *(a1 + 296), *(a1 + 220));
}

void MTHandMotion::clearHandMotion(MTHandMotion *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    *(this + 61) = 0;
    *(this + 62) = 0;
    *(this + 10) = 0u;
    *(this + 11) = 0u;
  }

  *(this + 35) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 252) = _Q0;
  *(this + 67) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 34) = _Q0;
  *(this + 280) = 0;
  *(this + 29) = 0;
  *(this + 376) = 0;
  *(this + 46) = 0;
  MTFingerToPathMap::clearFingerPathMappings(this);
  v8 = MTLoggingPlugin();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    MTHandMotion::clearHandMotion(v2, v8);
  }
}

uint64_t MTHandMotion::outermostFingersAreWidelySeparated(MTHandMotion *this, unsigned int a2)
{
  v2 = *(this + 90);
  v3 = 0.0;
  if (v2 > 40.0)
  {
    v3 = 1.0;
    if (v2 < 50.0)
    {
      v3 = (v2 + -40.0) / 10.0;
    }
  }

  if ((v3 * *(this + 93)) > 0.9)
  {
    return 1;
  }

  if (v3 >= 1.0)
  {
    return a2;
  }

  return 0;
}

float MTHandMotion::computeSeparation_mm(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 68);
  v4 = *(a3 + 72);
  v5 = *(a2 + 68);
  v6 = *(a2 + 72);
  v7 = v4 - v6;
  v8 = vabds_f32(v4, v6);
  a1[88] = v8;
  if (v8 > a1[89])
  {
    a1[89] = v8;
  }

  v9 = v3 - v5;
  a1[87] = sqrtf((v7 * v7) + (v9 * v9));
  result = sqrtf(((v7 * 0.5) * (v7 * 0.5)) + (v9 * v9));
  a1[90] = result;
  return result;
}

__n128 MTHandMotion::computeSeparationVector(double a1, __n128 a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  a2.n128_u64[0] = vsub_f32(a5[4], a4[4]);
  v6 = a2;
  atan2f(-a2.n128_f32[1], a2.n128_f32[0]);
  return v6;
}

float MTHandMotion::computeInnerOuterSpeedSymmetry(uint64_t a1, float *a2, float *a3)
{
  v3 = a2[134];
  v4 = a2[132];
  v5 = a2[133];
  v6 = sqrtf((v4 * v4) + (v5 * v5));
  v7 = 1.0;
  if (v6 > 0.0)
  {
    v8 = a3[132];
    v9 = a3[133];
    v10 = sqrtf((v8 * v8) + (v9 * v9));
    if (v10 > 0.0)
    {
      v7 = ((v5 * v9) + (v4 * v8)) / (v6 * v10);
    }
  }

  result = 0.0;
  if (v3 > 20.0)
  {
    v12 = -1.0;
    if (v7 >= 0.0)
    {
      v12 = 1.0;
    }

    v13 = v7 <= 0.5;
    v14 = 1.5;
    if (v13)
    {
      v14 = v12;
    }

    return (sqrtf(v3 * a3[134]) / (((v3 + a3[134]) * 0.5) + 1.0)) * v14;
  }

  return result;
}

void MTHandMotion::extractHandMotion(MTHandMotion *this, const MTPathStates *a2, const MTParserPath *a3, const MTParserPath *a4, int a5)
{
  v47 = *MEMORY[0x29EDCA608];
  if (*(a2 + 1) - *(a2 + 2) == 0.0)
  {
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 1);
      MTAbsoluteTimeGetCurrent();
      *buf = 136316162;
      v38 = "[Error] ";
      v39 = 2080;
      v40 = "";
      v41 = 2080;
      v42 = "extractHandMotion";
      v43 = 2048;
      v44 = v11;
      v45 = 2048;
      v46 = v12;
      _os_log_impl(&dword_29D381000, v10, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Frame interval is zero! currentTimestamp = %g, currentHostTimestamp = %g", buf, 0x34u);
    }
  }

  v13 = *(a3 + 432);
  v14 = *(a3 + 91);
  v15 = *(a4 + 432);
  v16 = *(a4 + 91);
  *(this + 348) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 91) = *(this + 90);
  *(this + 90) = 0;
  v17 = *(a3 + 10);
  if (v17)
  {
    *(this + 26) = vadd_f32(*(a3 + 500), 0);
    *(this + 21) = vadd_f32(v13, *(a3 + 56));
    if (a5)
    {
      if (*(a3 + 34) && (v14 & 4) != 0)
      {
        *(this + 48) = *(a3 + 112) + 0.0;
        *(this + 49) = *(a3 + 113) + 0.0;
      }
    }
  }

  v18 = *(a4 + 10);
  if (v17 == v18 || !v18)
  {
    *(this + 22) = 0;
    goto LABEL_39;
  }

  v19 = *(a4 + 14) - *(a3 + 14);
  v20 = *(a4 + 15) - *(a3 + 15);
  v21 = sqrtf((v20 * v20) + (v19 * v19));
  v22 = atan2f(-v20, v19);
  v23 = *(a3 + 125);
  v24 = *(a3 + 126);
  v36 = *(a4 + 500);
  MTHandMotion::computeSeparation_mm(this, a3 + 24, a4 + 24);
  *(this + 44) = v21;
  *(this + 45) = v22;
  *(this + 21) = vmul_f32(vadd_f32(*(this + 168), vadd_f32(v15, *(a4 + 56))), 0x3F0000003F000000);
  v26.n128_u64[0] = vmul_f32(vadd_f32(v36, *(this + 208)), 0x3F0000003F000000);
  *(this + 26) = v26.n128_u64[0];
  v27 = *(this + 22);
  if (*(this + 20) == 1)
  {
    if (v27 != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v27 != 1)
  {
    goto LABEL_21;
  }

  v27 = *(this + 20);
LABEL_17:
  if (v27 > 0xF)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(this + v27 + 2);
  }

  *(this + 280) = MTHandMotion::computeInnerOuterSpeedSymmetry(v25, (*(a2 + 35) + 600 * *(this + 3)), (*(a2 + 35) + 600 * v28)) > 0.85;
LABEL_21:
  if (v21 > 0.0)
  {
    v26.n128_f32[0] = v20 / v21;
    *(this + 54) = (vmuls_lane_f32(v20 / v21, v36, 1) + (v36.f32[0] * (v19 / v21))) - ((v24 * (v20 / v21)) + (v23 * (v19 / v21)));
    *(this + 55) = ((v36.f32[0] * (v20 / v21)) - (v36.f32[1] * (v19 / v21))) - ((v23 * (v20 / v21)) - (v24 * (v19 / v21)));
    if (a5 && *(a4 + 34) && *(a3 + 34) && ((v14 | v16) & 4) != 0)
    {
      v29 = *(a3 + 38) - *(a4 + 38);
      v30 = *(a3 + 39) - *(a4 + 39);
      v31 = sqrtf((v30 * v30) + (v29 * v29));
      v32 = *(a3 + 112);
      v33 = *(a3 + 113);
      v34 = *(a4 + 448);
      *(this + 24) = vmul_f32(vadd_f32(v34, *(this + 192)), 0x3F0000003F000000);
      v26.n128_f32[0] = ((v34.f32[0] * v26.n128_f32[0]) - (v34.f32[1] * (v19 / v21))) - ((v32 * v26.n128_f32[0]) - (v33 * (v19 / v21)));
      *(this + 50) = v21 - v31;
      *(this + 51) = v26.n128_u32[0];
    }

    if ((*(a3 + 11) - 3) <= 1 && (*(a3 + 35) - 3) <= 1 && MTParserPath::isFingerContact(a3) && *(this + 101) >= 3u)
    {
      MTHandMotion::combineCentralFingerScaleRotate(this, a2, a3);
    }

    if ((*(this + 138) & 1) != 0 || *(this + 20) != 1 && *(this + 22) != 1 && (*(this + 139) & 1) != 0 || *(this + 101) > 2u || *(this + 376) == 1)
    {
      MTHandMotion::extractFastestFingerTranslation(this, a2, v26);
    }
  }

LABEL_39:
  v35 = *MEMORY[0x29EDCA608];
}

uint64_t MTHandMotion::combineCentralFingerScaleRotate(uint64_t this, const MTPathStates *a2, const MTParserPath *a3)
{
  v3 = *(this + 80) + 1;
  if (v3 < *(this + 88))
  {
    v6 = this;
    v7 = 0;
    v8 = *(a3 + 125);
    v9 = *(a3 + 126);
    v10 = this + 8;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if (v3 <= 0xF)
      {
        v13 = *(v10 + 4 * v3);
        if (v13 >= 1)
        {
          v14 = *(a2 + 35) + 600 * v13;
          if ((*(v14 + 44) - 3) <= 1 && (*(v14 + 140) - 3) <= 1)
          {
            this = MTParserPath::isFingerContact(v14);
            if (this)
            {
              v15 = *(v14 + 56) - *(a3 + 14);
              v16 = *(v14 + 60) - *(a3 + 15);
              v17 = *(v14 + 152) - *(a3 + 38);
              v18 = sqrtf((v16 * v16) + (v15 * v15));
              v11 = v11 + (v18 - sqrtf(((*(v14 + 156) - *(a3 + 39)) * (*(v14 + 156) - *(a3 + 39))) + (v17 * v17)));
              v12 = v12 + (((*(v14 + 504) * (v16 / v18)) + (*(v14 + 500) * (v15 / v18))) - ((v9 * (v16 / v18)) + (v8 * (v15 / v18))));
              ++v7;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 < *(v6 + 88));
    if (v7 > 0)
    {
      v19 = v11 / v7;
      v20 = v12 / v7;
      v21 = *(v6 + 200);
      if (fabsf(v19) > fabsf(v21))
      {
        *(v6 + 200) = (v19 + v21) * 0.5;
      }

      v22 = *(v6 + 216);
      if (fabsf(v20) > fabsf(v22))
      {
        *(v6 + 216) = (v20 + v22) * 0.5;
      }
    }
  }

  return this;
}

BOOL MTHandMotion::extractFastestFingerTranslation(_BOOL8 this, const MTPathStates *a2, __n128 a3)
{
  v4 = this;
  v5 = 0;
  v6 = this + 12;
  v7 = 0;
  a3.n128_u64[0] = 0;
  v16 = a3;
  v8 = 0;
  do
  {
    v9 = *(v6 + v5);
    if (v9 >= 1)
    {
      v10 = *(a2 + 35) + 600 * v9;
      if ((*(v10 + 44) - 3) <= 1)
      {
        this = MTParserPath::isFingerContact(v10);
        if (this)
        {
          v11 = *(v10 + 536) + 0.5;
          v12 = *(v4 + 128);
          if (v12 >= 1000 && v5 == 16 && v12 <= 0x7CF)
          {
            v13 = (v11 * 0.5) * 0.5;
            if (*(v4 + 101) > 4u)
            {
              v11 = v11 * 0.5;
            }

            else
            {
              v13 = *(v10 + 536) + 0.5;
            }
          }

          else
          {
            v13 = *(v10 + 536) + 0.5;
          }

          v14 = v16;
          v14.n128_f32[0] = v16.n128_f32[0] + v11;
          v16 = v14;
          v7 = vmla_n_f32(v7, *(v10 + 448), v13);
          v8 = vmla_n_f32(v8, *(v10 + 500), v13);
        }
      }
    }

    v5 += 4;
  }

  while (v5 != 20);
  if (v16.n128_f32[0] > 0.0)
  {
    v15 = vdup_lane_s32(v16.n128_u64[0], 0);
    v7 = vdiv_f32(v7, v15);
    v8 = vdiv_f32(v8, v15);
  }

  *(v4 + 192) = v7;
  *(v4 + 208) = v8;
  return this;
}

float MTHandMotion::getSpeedSymmetry(MTHandMotion *this, float a2, int a3)
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v5 = *(this + 68);

      return powf(v5, a2);
    }

    if (a3 == 2)
    {
      v5 = *(this + 67);

      return powf(v5, a2);
    }

LABEL_10:
    if ((*(this + 32) - 1000) > 0x3E7)
    {
      v5 = *(this + 64);
    }

    else
    {
      v5 = *(this + 65);
    }

    return powf(v5, a2);
  }

  if (a3 == 4)
  {
    v5 = *(this + 66);

    return powf(v5, a2);
  }

  if (a3 != 7)
  {
    goto LABEL_10;
  }

  return 1.0 - powf(*(this + 65), a2);
}

uint64_t MTHandMotion::fastest1FingerMask(MTHandMotion *this, const MTPathStates *a2, float *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = this + 12;
  do
  {
    v8 = *&v7[4 * v5];
    if (v8 >= 1)
    {
      v9 = *(a2 + 35) + 600 * v8;
      if ((*(v9 + 44) - 3) <= 1 && MTParserPath::isFingerContact(v9) && (*(v9 + 581) & 1) == 0)
      {
        v10 = *(v9 + 536);
        if (v10 > *a3)
        {
          v6 = (1 << v5);
          *a3 = v10;
        }
      }
    }

    ++v5;
  }

  while (v5 != 5);
  return v6;
}

uint64_t MTHandMotion::fastest2FpairMask(MTHandMotion *this, const MTPathStates *a2)
{
  v3 = 0;
  v4 = this + 16;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = *&v4[4 * v3];
    if (v8 >= 1)
    {
      v9 = *(a2 + 35) + 600 * v8;
      if ((*(v9 + 44) - 3) <= 1 && MTParserPath::isFingerContact(v9))
      {
        if (v3 + 2 <= 3)
        {
          if (!v3)
          {
            v7 = v7 + *(v9 + 536);
            goto LABEL_15;
          }

          if (v3 != 1)
          {
            goto LABEL_15;
          }

          v10 = *(v9 + 536);
          v7 = v7 + v10;
          goto LABEL_14;
        }

        if (v3 == 2)
        {
          v10 = *(v9 + 536);
          v5 = v5 + v10;
LABEL_14:
          v6 = v6 + v10;
          goto LABEL_15;
        }

        if (v3 == 3)
        {
          v5 = v5 + *(v9 + 536);
        }
      }
    }

LABEL_15:
    ++v3;
  }

  while (v3 != 4);
  if (v5 <= v6 || v5 <= v7)
  {
    v12 = 6;
  }

  else
  {
    v12 = 24;
  }

  if (v6 <= v5 || v6 <= v7)
  {
    return v12;
  }

  else
  {
    return 12;
  }
}

void MTHandMotion::computeSpeedSymmetry(MTHandMotion *this, const MTPathStates *a2, unsigned int a3, float a4, float a5)
{
  v9 = 0;
  v10 = this + 12;
  v11 = 0.0;
  v12 = 1.0;
  v13 = 0.0;
  do
  {
    v14 = *&v10[4 * v9];
    if (v14 >= 1)
    {
      v15 = *(a2 + 35) + 600 * v14;
      if ((*(v15 + 44) - 3) <= 1)
      {
        v16 = *(v15 + 536);
        if (MTParserPath::isFingerContact(v15))
        {
          v17 = v16 + 1.0;
          if ((a3 >> v9))
          {
            v12 = v12 * v17;
            v13 = v13 + v17;
            v11 = v11 + 1.0;
          }

          else if (a4 > 0.0 && (*(v15 + 581) & 1) == 0 && v17 <= a4)
          {
            v12 = v12 * powf(1.0 - (v17 / a4), a5);
          }
        }
      }
    }

    ++v9;
  }

  while (v9 != 5);
  if (v11 > 0.0)
  {
    pow(v12, 1.0 / v11);
  }
}

void MTHandMotion::computeSpeedSymmetries(MTHandMotion *this, const MTPathStates *a2, unsigned int a3)
{
  MTHandMotion::computeSpeedSymmetry(this, a2, 0x1Fu, 0.0, 1.0);
  *(this + 64) = v6;
  MTHandMotion::computeSpeedSymmetry(this, a2, a3, 0.0, 1.0);
  *(this + 65) = v7;
  v14 = 0.0;
  v8 = MTHandMotion::fastest1FingerMask(this, a2, &v14);
  v9 = v14;
  MTHandMotion::computeSpeedSymmetry(this, a2, v8, v14, 1.0);
  *(this + 68) = v10;
  v11 = MTHandMotion::fastest2FpairMask(this, a2);
  MTHandMotion::computeSpeedSymmetry(this, a2, v11, v9, 2.0);
  *(this + 67) = v12;
  MTHandMotion::computeSpeedSymmetry(this, a2, 0x1Eu, v9, 2.0);
  *(this + 66) = v13;
}

float MTHandMotion::computeTrackpadDominanceWeights(MTHandMotion *this, float *a2, float *a3)
{
  if ((*(this + 138) & 1) == 0 && ((result = *(this + 87), *(this + 20) == 1) || *(this + 22) == 1 || (*(this + 139) & 1) == 0) && (v4 = *(this + 101), v4 <= 2))
  {
    *a2 = 0.45;
    *a3 = 0.45;
  }

  else
  {
    result = *(this + 90);
    v4 = *(this + 101);
    *a2 = 0.45;
    *a3 = 0.45;
    if (v4 == 5)
    {
      goto LABEL_13;
    }
  }

  if (*(this + 20) != 1 && *(this + 22) != 1)
  {
    if (v4 >= 3)
    {
      v5 = 1036831949;
      goto LABEL_17;
    }

    if (result <= 55.0)
    {
      if (result <= 35.0)
      {
LABEL_23:
        result = *(this + 58);
        if (result < 0.0)
        {
          v7 = *(this + 57);
          if (v7 > 0.0)
          {
            v8 = fabsf(*(this + 56)) + fabsf(*(this + 59));
            result = v7 - result;
            if (result > 0.0 && v8 < result)
            {
              result = *a2 / (2.0 - ((v8 / result) * (v8 / result)));
              *a2 = result;
            }
          }
        }

        return result;
      }

      v6 = ((result + -35.0) / 20.0) + 0.45;
    }

    else
    {
      v6 = 1.45;
    }

    *a2 = v6;
    *a3 = v6;
    goto LABEL_23;
  }

  if (v4 < 4)
  {
    v5 = 1075629261;
    goto LABEL_17;
  }

  if ((*(this + 280) & 1) == 0)
  {
LABEL_13:
    v5 = 1069128090;
LABEL_17:
    *a2 = v5;
    *a3 = v5;
  }

  return result;
}

uint64_t MTHandMotion::computeMouseDominanceWeights(uint64_t this, float *a2, float *a3)
{
  *a2 = 1.1;
  *a3 = 1.2;
  if (*(this + 80) == 1 || *(this + 88) == 1)
  {
    *a2 = 1.4;
    *a3 = 1.6;
  }

  return this;
}

void MTHandMotion::clipMotionToDominantAxes(float32x2_t *this, float32x2_t a2, int a3)
{
  v6 = 1.0 - exp(-*&a2 / this[18].f32[0]);
  if ((this[17].i8[2] & 1) != 0 || this[10].i32[0] != 1 && this[11].i32[0] != 1 && (this[17].i8[3] & 1) != 0 || (v7 = 1.0, this[12].u8[5] >= 3u))
  {
    v7 = this[32].f32[0];
  }

  v8 = 1.0 - v6;
  v9 = this[26];
  v10 = this[27];
  v11 = vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v9, v6)), vcvtq_f64_f32(this[28]), v8);
  this[31].i32[1] = 1065353216;
  v12 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(vmul_n_f32(v10, v7), v6)), vcvtq_f64_f32(this[29]), v8));
  this[28] = vcvt_f32_f64(v11);
  this[29] = v12;
  v13 = (sqrtf(COERCE_FLOAT(vmul_f32(v9, v9).i32[1]) + (v9.f32[0] * v9.f32[0])) * v6) + v8 * this[30].f32[0];
  this[30].f32[0] = v13;
  v36 = 1065353216;
  v37 = 1065353216;
  v14 = this[16].i32[0] - 2000;
  if (v14 > 0x3E7)
  {
    MTHandMotion::computeTrackpadDominanceWeights(this, &v37, &v36);
    v15 = __PAIR64__(v36, v37);
  }

  else if (this[10].i32[0] == 1 || this[11].i32[0] == 1)
  {
    v15 = 0x3FCCCCCD3FB33333;
  }

  else
  {
    v15 = 0x3F99999A3F8CCCCDLL;
  }

  v16 = vmul_f32(vabs_f32(v12), v15);
  if (v16.f32[0] <= v16.f32[1])
  {
    v17 = v16.f32[1];
  }

  else
  {
    v17 = v16.f32[0];
  }

  *&this[35].i32[1] = *this[28].f32;
  if (!a3)
  {
    if (this[47].i8[0])
    {
      a3 = 3;
    }

    else
    {
      a3 = 0;
    }
  }

  if (v17 < v13)
  {
    if (v13 > 0.0)
    {
      this[31].f32[1] = v17 / v13;
    }

    if (this[19].i8[1] == 1)
    {
      *(&this[36] + 4) = 0;
    }

    if (this[19].i8[0] != 1)
    {
      goto LABEL_49;
    }

    if ((a3 & 4) == 0)
    {
      this[25].i32[0] = 0;
    }

    if ((a3 & 8) != 0)
    {
      goto LABEL_49;
    }

LABEL_43:
    this[25].i32[1] = 0;
    goto LABEL_49;
  }

  if (v17 > 0.0)
  {
    this[31].f32[1] = v13 / v17;
  }

  v18 = this[19].u8[1];
  if (v18 == 1)
  {
    *(&this[35] + 4) = 0;
  }

  v19 = this[19].u8[0];
  if ((a3 & 3) == 0 && this[19].i8[0])
  {
    this[24] = 0;
  }

  if (a3)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v16.f32[0] <= (v16.f32[1] * v20))
  {
    if (v16.f32[1] > (v16.f32[0] * v20))
    {
      if (v18)
      {
        this[36].i32[1] = 0;
      }

      if (v19)
      {
        this[25].i32[0] = 0;
      }
    }
  }

  else
  {
    if (v18)
    {
      this[37].i32[0] = 0;
    }

    if (v19)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  v21 = this[35].f32[1];
  if (v14 >= 0x3E8)
  {
    v23 = fabsf(v21);
  }

  else
  {
    v22 = 1.0 / tanf(0.38397);
    v23 = fabsf(v21);
    v24 = fabsf(this[36].f32[0]);
    if (v23 <= (v22 * v24))
    {
      if (v24 > (v22 * v23))
      {
        this[24].i32[0] = 0;
      }
    }

    else
    {
      this[24].i32[1] = 0;
    }

    v25 = fabsf(this[24].f32[0]);
    v26 = fabsf(this[24].f32[1]);
    if (v25 <= (v22 * v26))
    {
      if (v26 > (v22 * v25))
      {
        this[24].i32[0] = 0;
      }
    }

    else
    {
      this[24].i32[1] = 0;
    }
  }

  v27 = this[18].f32[1];
  v28 = 0.0;
  v29 = v23 < v27;
  v30 = 0.0;
  if (!v29)
  {
    if (v21 <= 0.0)
    {
      v30 = v21 + v27;
    }

    else
    {
      v30 = v21 - v27;
    }
  }

  this[35].f32[1] = v30;
  v31 = this[36].f32[0];
  if (fabsf(v31) >= v27)
  {
    if (v31 <= 0.0)
    {
      v28 = v27 + v31;
    }

    else
    {
      v28 = v31 - v27;
    }
  }

  this[36].f32[0] = v28;
  v32 = this[36].f32[1];
  v33 = 0.0;
  v34 = 0.0;
  if (fabsf(v32) >= v27)
  {
    if (v32 <= 0.0)
    {
      v34 = v27 + v32;
    }

    else
    {
      v34 = v32 - v27;
    }
  }

  this[36].f32[1] = v34;
  v35 = this[37].f32[0];
  if (fabsf(v35) >= v27)
  {
    if (v35 <= 0.0)
    {
      v33 = v27 + v35;
    }

    else
    {
      v33 = v35 - v27;
    }
  }

  this[37].f32[0] = v33;
  MTHandMotion::convertPixelDeltasTo_mm_s(this, a2);

  MTHandMotion::convertPixelVelocitiesTo_mm_s(this);
}

void MTHandMotion::convertPixelDeltasTo_mm_s(MTHandMotion *this, float32x2_t a2)
{
  v2 = *&a2;
  a2.i32[0] = *(this + 48);
  MTSurfaceDimensions::convertPixelDeltasToMillimetersPerSecond(*(this + 15), a2, *(this + 49), v2);
  *(this + 79) = v4;
  *(this + 80) = v5;
  *(this + 81) = MTSurfaceDimensions::convertPixelDeltaToMillimetersPerSecond(*(this + 15), *(this + 50), v2);
  *(this + 82) = MTSurfaceDimensions::convertPixelDeltaToMillimetersPerSecond(*(this + 15), *(this + 51), v2);
}

void MTHandMotion::convertPixelVelocitiesTo_mm_s(MTHandMotion *this)
{
  *(this + 83) = MTSurfaceDimensions::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 52));
  *(this + 84) = MTSurfaceDimensions::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 53));
  *(this + 85) = MTSurfaceDimensions::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 54));
  *(this + 86) = MTSurfaceDimensions::convertPixelVelocityToMillimetersPerSecond(*(this + 15), *(this + 55));
}

float32x2_t MTHandMotion::updateFastestFingerSpeed(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) - *(a2 + 16);
  v5 = 0.0;
  if (v4 <= 0.025)
  {
    v5 = *(a1 + 368);
  }

  v6 = *(a2 + 304);
  v7 = v4 / 0.00800000038;
  v8 = pow(dbl_29D3D6360[v6 > v5], v4 / 0.00800000038);
  *(a1 + 368) = (v6 * (1.0 - v8)) + (v8 * v5);
  v17 = exp2(-v7);
  LODWORD(v18) = *(a2 + 316);
  v9 = pow(0.949999988, v7);
  v10.f64[0] = v17;
  v10.f64[1] = v9;
  result = vcvt_f32_f64(v10);
  __asm { FMOV            V2.2S, #1.0 }

  *(a1 + 244) = vmla_f32(vmul_n_f32(vsub_f32(_D2, result), v18), *(a1 + 244), result);
  return result;
}

uint64_t MTHandMotion::makeCollectionEventMask(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 280) + 644);
  v3 = 31;
  do
  {
    v4 = v2[80];
    if ((*v2 - 5) < 0xFFFFFFFE || (v2[80] & 4) == 0)
    {
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(a1 + 140) |= 4u;
      if ((v4 & 0x2000) == 0)
      {
LABEL_8:
        if ((v4 & 0x800) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    *(a1 + 140) |= 0x2000u;
    if ((v4 & 0x800) == 0)
    {
LABEL_9:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_13:
    *(a1 + 140) |= 0x800u;
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v6 = *(a1 + 140) | v4 & 0xE040000;
    *(a1 + 140) = v6;
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 140) = v6 | 0x1000000;
    }

LABEL_16:
    if ((v4 & 0x40) != 0)
    {
      *(a1 + 140) |= 0x40u;
      if ((v4 & 0x4000) == 0)
      {
LABEL_18:
        if ((v4 & 0x8000) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        *(a1 + 140) |= 0x8000u;
        goto LABEL_20;
      }
    }

    else if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    *(a1 + 140) |= 0x4000u;
    if ((v4 & 0x8000) != 0)
    {
      goto LABEL_19;
    }

LABEL_20:
    v2 += 150;
    --v3;
  }

  while (v3);
  return *(a1 + 140);
}

uint64_t MTHandMotion::processHandMotion(float32x2_t *this, const MTPathStates *a2, int a3, int a4, int a5, float a6, int a7, unsigned int a8)
{
  if ((this[16].i32[0] - 1000) <= 0xBB7)
  {
    v15 = MTPathStates::restingTranslationCertainty(a2);
    this[46].f32[1] = v15;
    if (!a7)
    {
      v16 = *(a2 + 444);
      if (*(a2 + 96) - v16 == 2)
      {
        v17 = this[45].f32[0];
        v18 = 0.0;
        if (v17 > 40.0)
        {
          v18 = 1.0;
          if (v17 < 50.0)
          {
            v18 = (v17 + -40.0) / 10.0;
          }
        }

        v19 = v15 * v18;
        if (v18 < 1.0)
        {
          LOBYTE(v16) = 0;
        }

        if (v19 > 0.9)
        {
          LOBYTE(v16) = 1;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      this[47].i8[0] = v16;
    }
  }

  MTFingerToPathMap::updateFingerPathMappings(this, a2);
  if (a3 < 1)
  {
    MTHandMotion::clearHandMotion(this, 0);
    CollectionEventMask = 0;
    this[44].i32[1] = 0;
  }

  else
  {
    this[17].i32[1] = 0;
    MTHandMotion::updateFastestFingerSpeed(this, a2);
    MTHandMotion::computeSpeedSymmetries(this, a2, a8);
    this[34].f32[1] = MTPathStates::get_3F_IncludingThumbSpeedSymmetry(a2);
    if (a4 > a5)
    {
      this[28] = 0;
      this[29] = 0;
    }

    if (a4)
    {
      InnermostTouchingPath = MTFingerToPathMap::getInnermostTouchingPath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap::getOutermostTouchingPath(this, a2);
      v22 = this;
      v23 = a2;
      v24 = InnermostTouchingPath;
      v25 = 1;
    }

    else
    {
      InnermostInRangePath = MTFingerToPathMap::getInnermostInRangePath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap::getOutermostInRangePath(this, a2);
      v22 = this;
      v23 = a2;
      v24 = InnermostInRangePath;
      v25 = 0;
    }

    MTHandMotion::extractHandMotion(v22, v23, v24, OutermostTouchingPath, v25);
    MTHandMotion::clipMotionToDominantAxes(this, COERCE_FLOAT32X2_T(*(a2 + 1) - *(a2 + 2)), a7);
    if (this[24].f32[0] != 0.0 || this[24].f32[1] != 0.0 || this[25].f32[0] != 0.0 || this[25].f32[1] != 0.0)
    {
      this[20] = *(a2 + 8);
    }

    CollectionEventMask = MTHandMotion::makeCollectionEventMask(this, a2);
    this[17].i32[1] = CollectionEventMask;
  }

  MTPathStatesBasic::calculateCentroidOfPaths(a2, this + 23, v26);
  return CollectionEventMask;
}

uint64_t MTHandMotion::storeFeedbackFromMouse(uint64_t result, float a2, float a3)
{
  *(result + 108) = a2;
  *(result + 112) = a3;
  return result;
}

float MTHandMotion::getMouseMotionFeedback(MTHandMotion *this, int a2)
{
  v2 = *(this + 27);
  v3 = *(this + 28);
  if (a2 == 1)
  {
    v4 = v3 * 0.8;
    v5 = 0.7;
    return v4 + (v2 * v5);
  }

  if (!a2)
  {
    v4 = v3 * 0.7;
    v5 = 0.8;
    return v4 + (v2 * v5);
  }

  return hypotf(v2, v3);
}

uint64_t MTHandStatistics::MTHandStatistics(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  *a1 = &unk_2A24115D0;
  *(a1 + 24) = a2;
  *(a1 + 164) = a4;
  *(a1 + 168) = a5;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  MTHandStatistics::clear(a1, 0);
  return a1;
}

{
  *a1 = &unk_2A24115D0;
  *(a1 + 24) = a2;
  *(a1 + 164) = a4;
  *(a1 + 168) = a5;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  MTHandStatistics::clear(a1, 0);
  return a1;
}

double MTHandStatistics::clear(MTHandStatistics *this, int a2)
{
  if (a2)
  {
    *(this + 203) = *(this + 202);
    *(this + 77) = *(this + 76);
    *(this + 79) = *(this + 78);
    *(this + 192) = *(this + 191);
    *(this + 187) = *(this + 186);
    *(this + 194) = *(this + 193);
    *(this + 189) = *(this + 188);
    v2 = *(this + 298);
    *(this + 299) = v2;
    *(this + 303) = v2;
    *(this + 190) = *(this + 211);
    *(this + 78) = *(this + 77);
    v3 = *(this + 33);
    v4 = *(this + 316);
  }

  else
  {
    v4 = 0;
    *(this + 305) = 0;
    *(this + 51) = 0;
    *(this + 203) = 0;
    *(this + 192) = 0;
    *(this + 187) = 0;
    *(this + 194) = 0;
    *(this + 189) = 0;
    *(this + 77) = 0;
    *(this + 79) = 0;
    *(this + 299) = 0;
    *(this + 303) = 0;
    *(this + 78) = 0;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 18) = 0;
    *(this + 92) = 0;
    *(this + 22) = 0;
    *(this + 197) = 0;
    *(this + 212) = 0;
    *(this + 32) = 0;
    *(this + 33) = 0;
    v3 = 0;
    *(this + 35) = 0;
    *(this + 36) = 0;
  }

  *(this + 34) = v3;
  *(this + 317) = v4;
  *(this + 201) = 0;
  *(this + 191) = 0;
  *(this + 186) = 0;
  *(this + 193) = 0;
  *(this + 188) = 0;
  *(this + 77) = 0;
  *(this + 195) = 0;
  *(this + 76) = 0;
  *(this + 78) = 0;
  *(this + 110) = 0;
  *(this + 222) = 0;
  *&result = 0xFFFFFFFFLL;
  *(this + 14) = xmmword_29D3D6380;
  *(this + 40) = 0;
  *(this + 52) = 0;
  *(this + 43) = 0;
  *(this + 148) = 0;
  *(this + 150) = 0;
  *(this + 298) = 0;
  *(this + 302) = 0;
  *(this + 304) = 0;
  *(this + 316) = 0;
  return result;
}

void MTHandStatistics::~MTHandStatistics(MTHandStatistics *this)
{
  *this = &unk_2A24115D0;
  MTHandStatistics::clear(this, 0);
}

{
  *this = &unk_2A24115D0;
  MTHandStatistics::clear(this, 0);
}

{
  *this = &unk_2A24115D0;
  MTHandStatistics::clear(this, 0);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTHandStatistics::clearConsecutiveCounts(uint64_t this)
{
  *(this + 214) = 0;
  *(this + 218) = 0;
  return this;
}

uint64_t MTHandStatistics::rollBackSubsetBoundary(uint64_t this)
{
  *(this + 256) = 0;
  *(this + 214) = 0;
  *(this + 218) = 0;
  return this;
}

uint64_t MTHandStatistics::updateCumulativeMaxStats(uint64_t this)
{
  if (*(this + 224) == -1)
  {
    *(this + 224) = 0;
  }

  if (*(this + 232) == -1)
  {
    *(this + 232) = 0;
  }

  if (*(this + 236) == -1)
  {
    *(this + 236) = 0;
  }

  v1 = *(this + 186);
  if (*(this + 186))
  {
    if (v1 > *(this + 197))
    {
      *(this + 197) = v1;
    }

    v2 = *(this + 195);
    if (v2 > *(this + 198))
    {
      *(this + 198) = v2;
    }

    if (v1 != 1)
    {
      v3 = *(this + 8);
      *(this + 112) = v3;
      if (v1 == 5)
      {
        *(this + 120) = v3;
      }
    }
  }

  v4 = *(this + 191);
  if (*(this + 191))
  {
    if (v4 > *(this + 199))
    {
      *(this + 199) = v4;
    }
  }

  else if (!*(this + 192))
  {
    *(this + 197) = 0;
    *(this + 204) = 0;
    *(this + 200) = *(this + 199);
    *(this + 199) = 0;
    *(this + 64) = 0;
  }

  if (!*(this + 195))
  {
    *(this + 198) = 0;
  }

  if (*(this + 298) != *(this + 299))
  {
    *(this + 280) = *(this + 8);
  }

  v5 = *(this + 272);
  if (*(this + 264) < v5)
  {
    *(this + 264) = v5;
  }

  if (*(this + 214) == 2 && *(this + 220) == 7)
  {
    *(this + 256) = 0;
    *(this + 214) = 0;
    *(this + 218) = 0;
  }

  return this;
}

uint64_t MTHandStatistics::updateStatsWithPath(uint64_t this, const MTParserPath *a2, int a3, int a4)
{
  v6 = this;
  if (a3)
  {
    ++*(this + 202);
    if (MTParserPath::isEdgeContact(a2))
    {
      ++*(v6 + 208);
    }

    if (MTParserPath::isUnidentifiedContact(a2))
    {
      ++*(v6 + 209);
    }

    this = MTParserPath::wasFingerContact(a2);
    if (this)
    {
      this = MTParserPath::isPalmContact(a2);
      if (this)
      {
        ++*(v6 + 210);
      }
    }
  }

  if (a4)
  {
    v7 = 48;
    if (*(a2 + 11) == 7)
    {
      v7 = 144;
    }

    *(v6 + 220) |= 1 << (*(a2 + v7) - 1);
  }

  return this;
}

uint64_t MTHandStatistics::updateStatsWithFingerPath(uint64_t result, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, float a9, float a10, float a11, char a12, char a13, char a14)
{
  if (a5 && (a12 & 1) == 0)
  {
    ++*(result + 191);
    *(result + 152) |= 1 << (a3 - 1);
    if (a3 != 1)
    {
      ++*(result + 196);
    }

    if (*(result + 64) == 0.0)
    {
      *(result + 64) = *a4;
    }
  }

  if (a6)
  {
    if (a12)
    {
      ++*(result + 211);
      if (a3 == 1)
      {
        *(result + 104) = *(a4 + 16);
      }
    }

    else
    {
      ++*(result + 186);
      if (*(result + 204) < a11)
      {
        *(result + 204) = a11;
      }

      if (a3 != 1)
      {
        ++*(result + 195);
        v17 = *(a4 + 16);
        if (v17 > *(result + 96))
        {
          *(result + 96) = v17;
        }
      }
    }

    if ((a7 & 1) != 0 || (*(result + 88) = *(result + 80), v18 = *(a4 + 16), *(result + 72) = *a4, *(result + 80) = v18, *(result + 176) = a2, *(result + 187)))
    {
      if (a12)
      {
        return result;
      }

      return (*(*result + 32))(result);
    }

    *(result + 56) = v18;
    if ((a12 & 1) == 0)
    {
      return (*(*result + 32))(result);
    }
  }

  else
  {
    if (a7)
    {
      *(result + 218) = 0;
      v14 = *(result + 128);
      if (v14 < *(result + 80))
      {
        *(result + 214) = 0;
      }

      v15 = *(a4 + 40);
      if (v14 < v15)
      {
        *(result + 128) = v15;
        *(result + 180) = a2;
        *(result + 184) = a3 == 1;
        *(result + 185) = a14;
        *(result + 240) = *(result + 248);
        *(result + 248) = a9;
        *(result + 252) = a10;
      }

      ++*(result + 216);
      if (a3 != 1 || *(result + 187) == 5)
      {
        ++*(result + 214);
      }
    }

    if (a8)
    {
      v16 = *(a4 + 48);
      if (*(result + 136) < v16)
      {
        *(result + 136) = v16;
      }
    }
  }

  return result;
}

uint64_t MTHandStatistics::updateSubsetStatsWithFingerPath(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, int a6, char a7)
{
  if ((a5 & 1) == 0)
  {
    v7 = *(result + 218);
    if (!v7)
    {
      *(result + 212) = *(result + 190) + *(result + 187);
    }

    *(result + 218) = v7 + 1;
  }

  v8 = *(a4 + 16);
  v9 = *(result + 128);
  if (v8 > v9 && v8 < v9 + 0.02)
  {
    v11 = 0;
    *(result + 214) = 0;
    *(result + 218) = 0;
  }

  else
  {
    v11 = *(result + 218);
  }

  v12 = &MTHandStatistics::kMinClutchingSubsetSizeFrom4F;
  v13 = v11 + *(result + 212);
  if (v13 != 4)
  {
    v12 = &MTHandStatistics::kMinClutchingSubsetSizeFrom5F;
  }

  if (v8 <= v9 || *(result + 256) >= v9 || *(result + 299) && (*(result + 304) & 1) == 0 && ((v14 = *v12, v15 = *(result + 214), v14 <= v15) ? (v16 = v14 <= v11) : (v16 = 0), v16 ? (v17 = v13 >= 4) : (v17 = 0), !v17 || (a7 & 1) != 0 || v15 <= 1 && (*(result + 185) & 1) != 0))
  {
    v9 = *(result + 256);
    if ((*(result + 164) - 2000) <= 0x3E7 && v8 - v9 > 0.5)
    {
      v9 = *(a4 + 8);
      *(result + 256) = v9;
    }
  }

  else
  {
    *(result + 256) = v9;
    *(result + 304) = 1;
  }

  if (v8 >= v9 || (*(result + 164) - 1000) <= 0x3E7)
  {
    ++*(result + 298);
    v19 = 1 << (a3 - 1);
    *(result + 296) |= v19;
    v20 = *(result + 264);
    v21 = *(a4 + 16);
    v22 = v20 <= v9 || v21 < v20;
    if (v22 || *(result + 304) == 1)
    {
      *(result + 264) = v21;
      *(result + 304) = 0;
    }

    if (a6)
    {
      ++*(result + 302);
      *(result + 300) |= v19;
    }
  }

  return result;
}

uint64_t MTHandStatistics::updateStatsWithNonFingerPath(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 44);
  v5 = 48;
  if (v4 == 7)
  {
    v5 = 144;
  }

  v6 = *(a2 + v5);
  if (v6 != 15)
  {
    if (v4 == 1)
    {
      ++*(result + 201);
      if (!a3)
      {
LABEL_6:
        if (!a4)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if (!a3)
    {
      goto LABEL_6;
    }

    ++*(result + 193);
    *(result + 156) |= 1 << (v6 - 1);
    if (!a4)
    {
      return result;
    }

LABEL_7:
    ++*(result + 188);
  }

  return result;
}

uint64_t MTHandStatistics::processHandState(MTHandStatistics *this, MTPathStates *a2, int a3, char a4)
{
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v5;
  MTHandStatistics::clear(this, 1);
  if ((*(this + 41) - 1000) <= 0xBB7)
  {
    v6 = *(a2 + 35) + 600 * *(a2 + 97);
    v7 = *(v6 + 581) == 1 ? *(v6 + 582) ^ 1 : 0;
    *(this + 304) = v7 & 1;
    if (*(this + 305) == 1 && *(this + 190) + *(this + 187) >= 4 && *(this + 299) <= 2u)
    {
      *(this + 32) = 0;
      *(this + 214) = 0;
      *(this + 109) = 0;
    }
  }

  *(this + 40) = *(a2 + 90);
  v8 = *(a2 + 44);
  if (v8)
  {
    LOBYTE(v8) = *(v8 + 3);
  }

  *(this + 222) = v8 & 1;
  v9 = 1;
  v10 = 1181;
  do
  {
    v11 = *(a2 + 35);
    v12 = v11 + v10;
    v13 = (v11 + v10 - 541);
    v14 = (v11 + v10 - 537);
    v15 = *v14;
    if (v9 == *v13 && v15 >= 1)
    {
      v17 = (v12 - 581);
      v18 = v15 - 3;
      (*(*this + 16))(this, v12 - 581, v15 < 7, v15 - 3 < 2);
      if (MTParserPath::isFingerOrRestingContact((v12 - 581)) || MTParserPath::isStylusContact((v12 - 581)))
      {
        v19 = (v11 + v10);
        v35 = (*(v19 - 441) - 3) <= 1 && MTParserPath::wasFingerOrRestingContact((v12 - 581));
        v34 = v12 - 365;
        v20 = v15 < 7;
        v21 = v18 < 2;
        v22 = ((*(v19 - 45) * 3.0) + 6.0) >= *(a2 + 76);
        v23 = MTParserPath::fingerLiftoffNearEdge(v17, *(a2 + 5), *(a2 + 1) - *(a2 + 2));
        v26 = 48;
        if (*v14 == 7)
        {
          v26 = 144;
        }

        v24.n128_u32[0] = *(v19 - 489);
        v25.n128_u32[0] = *(v19 - 485);
        HIBYTE(v31) = a4;
        BYTE2(v31) = v23;
        BYTE1(v31) = v22;
        LOBYTE(v31) = *v19;
        (*(*this + 24))(this, *v13, *&v19[v26 - 581], v34, v20, v21, v35, *(v19 - 349) >= *(v19 - 357), v24, v25, *(v19 - 465), v31);
        v27 = vrev64_s32(*(v19 - 301));
        *(this + 56) &= HIDWORD(*(v19 - 301));
        v28 = *(this + 228);
        LODWORD(v29) = vorr_s8(v28, v27).u32[0];
        HIDWORD(v29) = vand_s8(v28, v27).i32[1];
        *(this + 228) = v29;
        *(this + 59) &= *(v19 - 293);
      }

      else
      {
        (*(*this + 40))(this, v12 - 581, v15 < 7, v18 < 2);
      }
    }

    ++v9;
    v10 += 600;
  }

  while (v9 != 32);
  (*(*this + 48))(this);
  *(this + 77) = *(a2 + 81);
  if (*(this + 209))
  {
    *(this + 316) = 1;
  }

  if (!*(this + 202) && !*(this + 203))
  {
    return 0;
  }

  *(this + 43) = MTHandStatistics::makeCollectionEventMask(this, a3);
  return 1;
}

uint64_t MTHandStatistics::makeCollectionEventMask(MTHandStatistics *this, int a2)
{
  v2 = *(this + 42);
  v3 = (v2 & 0x10) == 0 || *(this + 193) > *(this + 194);
  if ((*(this + 186) == 0) != (*(this + 187) == 0))
  {
    v4 = 2;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v2 & 0x20) != 0)
    {
      if (*(this + 189) && !*(this + 188))
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_20;
    }

    v4 = 0;
  }

  if (!*(this + 191) && *(this + 192))
  {
    v5 = v3 ? v4 | 0x80 : v4;
    if (*(this + 209) + *(this + 208) < *(this + 202))
    {
      v4 = v5;
    }
  }

LABEL_20:
  LODWORD(v6) = v4 | 0x80;
  if (a2)
  {
    v6 = v6;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 76);
  v8 = *(this + 77);
  if (*(this + 76))
  {
    if (!*(this + 77))
    {
      goto LABEL_33;
    }

    if ((v2 & 0x20) == 0)
    {
      if (v7 == v8)
      {
        return v6;
      }

      return v6 | 0x20;
    }
  }

  else
  {
    if (*(this + 77))
    {
      goto LABEL_33;
    }

    if ((v2 & 0x20) == 0)
    {
      return v6;
    }

    v8 = 0;
  }

  v9 = *(this + 78);
  if (!*(this + 79))
  {
    if (!*(this + 78))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!*(this + 78))
  {
LABEL_33:
    v6 = v6 | 1;
  }

LABEL_34:
  if (v7 != v8 || (v2 & 0x20) != 0 && *(this + 78) != *(this + 79))
  {
    return v6 | 0x20;
  }

  return v6;
}

void MTParser::MTParser(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *a1 = &unk_2A2411650;
  *(a1 + 8) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  MTDragManagerEventQueue::MTDragManagerEventQueue((a1 + 80));
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v7 = *(a1 + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  if (*(a1 + 40))
  {
    MTDeviceIsBuiltIn();
    operator new();
  }

  *(a1 + 16) = 0;
  v8 = MTEmbeddedStats::create(a2);
  std::shared_ptr<MTEmbeddedStats>::reset[abi:ne200100]<MTEmbeddedStats,0>(a1 + 224, v8);
}

void sub_29D3896D8(_Unwind_Exception *a1)
{
  MEMORY[0x29ED547D0](v2, 0x1020C405EDD67E7);
  v4 = *(v1 + 232);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t MTParser::clear(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a1[6];
  if (v7)
  {
    MTAbsoluteTimeGetCurrent();
    *(v7 + 40) = v8;
  }

  if (a2 && a3)
  {
    MTParser::handleContactFrame(a1, 0, 0, 0.0, a4, a2, a3, 0);
  }

  v9 = a1[6];
  if (v9)
  {
    MTHandStatistics::clear(v9, 0);
  }

  v10 = a1[7];
  if (v10)
  {
    MTHandMotion::clear(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v12 = a1[25];
  if (v12)
  {
    MTForceManagement::clearState(v12, 0);
  }

  v13 = a1[27];
  if (v13)
  {
    MTForceManagerLite::clearState(v13);
  }

  v14 = a1[28];
  if (v14)
  {
    MTEmbeddedStats::resetTouchState(v14);
  }

  v15 = a1[9];
  if (v15)
  {
    ChordTableForHand = MTGestureConfig::getChordTableForHand(v15, 1);
    if (ChordTableForHand)
    {
      (*(*ChordTableForHand + 16))(ChordTableForHand);
    }
  }

  return MTTapDragManager::clearState((a1 + 10));
}

void MTParser::handleContactFrame(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t *a7, double *a8)
{
  v64 = *MEMORY[0x29EDCA608];
  MTTapDragManager::updateLastState(a1 + 80);
  if (!a6 || !a7 || !*(a1 + 64) || !*(a1 + 56) || !*(a1 + 48))
  {
    v20 = *(a1 + 24);
    MTDeviceGetDeviceID();
    v21 = MTLoggingPlugin();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 56);
      v22 = *(a1 + 64);
      v24 = *(a1 + 48);
      *buf = 134219264;
      v53 = a6;
      v54 = 2048;
      v55 = a7;
      v56 = 2048;
      v57 = v22;
      v58 = 2048;
      v59 = v23;
      v60 = 2048;
      v61 = v24;
      v62 = 2048;
      v63 = 0;
      _os_log_impl(&dword_29D381000, v21, OS_LOG_TYPE_DEBUG, "[HID] Aborting handling : %p %p %p %p %p (deviceID 0x%llX)", buf, 0x3Eu);
    }

    goto LABEL_12;
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    hasTriggeredFluidDock = 1;
    ChordTableForHand = MTGestureConfig::getChordTableForHand(v15, 1);
    v18 = ChordTableForHand;
    v19 = (a1 + 104);
    if (*(a1 + 104) <= 2)
    {
      if (ChordTableForHand)
      {
        hasTriggeredFluidDock = MTChordCycling::hasTriggeredFluidDock(ChordTableForHand);
      }

      else
      {
        hasTriggeredFluidDock = 0;
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = (a1 + 104);
    hasTriggeredFluidDock = *(a1 + 104) > 2;
  }

  v27 = *(a1 + 64);
  if ((*(a1 + 32) - 1000) <= 0xBB7)
  {
    if (v18)
    {
      *(v27 + 416) = MTChordTable::getMinThumbSpecificFingerCount(v18);
      v28 = *(a1 + 64);
      *(v28 + 412) = MTChordTable::hasTwoFingerOrientationEvents(v18);
      v29 = *(a1 + 64);
      CommittedFingerCount = MTChordCycling::getCommittedFingerCount(v18);
      v27 = *(a1 + 64);
    }

    else
    {
      CommittedFingerCount = 0;
      *(v27 + 416) = 0;
      *(v27 + 412) = 1;
      v29 = v27;
    }

    *(v29 + 420) = CommittedFingerCount;
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    LODWORD(v31) = (__PAIR64__(*(v31 + 186), *(v31 + 195)) - *(v31 + 186)) >> 32;
  }

  *(v27 + 368) = v31;
  v32 = *(a1 + 200);
  if (v32)
  {
    isForceButtonActivated = MTForceManagement::isForceButtonActivated(v32);
    MTPathStates::updateDragDisplacements_mm(v27, isForceButtonActivated);
    v34 = *(a1 + 200);
    if (v18)
    {
      v35 = MTChordCycling::shouldBlockClicks(v18, *(a1 + 48), *(a1 + 56)) ^ 1;
    }

    else
    {
      v35 = 1;
    }

    *(v34 + 592) = v35;
    v27 = *(a1 + 64);
  }

  v36 = MTPathStatesBasic::unpackContactFrame(v27, a2, a3, a4);
  v37 = *(a1 + 48);
  if (a2)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  if (!MTHandStatistics::processHandState(*(a1 + 48), *(a1 + 64), v38, hasTriggeredFluidDock))
  {
    goto LABEL_53;
  }

  if (v18)
  {
    ActiveDegreesOfFreedomMask = MTChordIntegrating::getActiveDegreesOfFreedomMask((v18 + 408), *(a1 + 48), v18);
  }

  else
  {
    ActiveDegreesOfFreedomMask = 0;
  }

  v40 = *(a1 + 48);
  v41 = *(v40 + 191);
  if ((*(v40 + 168) & 0x20) != 0)
  {
    v41 += *(v40 + 193);
    v42 = *(v40 + 188) + *(v40 + 186);
    v43 = *(v40 + 189) + *(v40 + 187);
  }

  else
  {
    v42 = *(v40 + 186);
    v43 = *(v40 + 187);
  }

  v44 = a4 - *(v40 + 56);
  MTHandMotion::processHandMotion(*(a1 + 56), *(a1 + 64), v41, v42, v43, v44, ActiveDegreesOfFreedomMask, *(v40 + 296));
  HIDCollectionEventsForHand = MTParser::createHIDCollectionEventsForHand(a1, *(a1 + 64), *(a1 + 48), *(a1 + 56), *(*(a1 + 56) + 140) | *(*(a1 + 48) + 172), a4);
  *a7 = HIDCollectionEventsForHand;
  if (*(a1 + 224))
  {
    MTEmbeddedStats::handlePaths(*(a1 + 224), *(a1 + 64));
  }

  if (v18 && HIDCollectionEventsForHand)
  {
    if (a2)
    {
      v46 = 0;
    }

    else
    {
      v46 = a3 < 1;
    }

    v47 = v46;
    MTParser::handleForceHIDEvents(a1, a7, v47);
    (*(*v18 + 32))(v18, *(a1 + 48), *(a1 + 56), *a7);
    hasPhysicalDraggingEnded = MTTapDragManager::hasPhysicalDraggingEnded(a1 + 80, a2, a3);
    if (hasPhysicalDraggingEnded)
    {
      MTParser::appendInjectedPointerEventToBaseEvent(hasPhysicalDraggingEnded, *a7);
    }

    if (*v19 >= 1 && *(*(a1 + 48) + 211) + *(*(a1 + 48) + 186) <= *(a1 + 128))
    {
      goto LABEL_62;
    }

LABEL_53:
    HIDCollectionEventsForHand = *a7;
  }

  if (HIDCollectionEventsForHand)
  {
    v49 = *(a1 + 24);
    if (MTDeviceSupportsForce())
    {
      v50 = *(a1 + 216);
      if (v50)
      {
        MTForceManagerLite::updatePaths(v50, *(a1 + 64));
      }
    }
  }

  if (*(a1 + 72))
  {
    if (!*a7)
    {
      v51 = *(a1 + 48);
      if (!*(v51 + 186) || *(v51 + 211) + *(v51 + 186) <= *(a1 + 128))
      {
LABEL_62:
        if (!a8)
        {
          goto LABEL_14;
        }

        v25 = MTParser::autoReleaseTapAndAHalfDrag(a1, a7, a4);
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v25 = 0.0;
  if (a8)
  {
LABEL_13:
    *a8 = v25;
  }

LABEL_14:
  v26 = *MEMORY[0x29EDCA608];
}

void MTParser::~MTParser(MTParser *this)
{
  *this = &unk_2A2411650;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 9) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
    *(this + 3) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    CFRelease(v4);
    *(this + 2) = 0;
  }

  v5 = *(this + 6);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 25);
  if (v9)
  {
    MTForceManagement::~MTForceManagement(v9);
    MEMORY[0x29ED547D0]();
  }

  v10 = *(this + 26);
  if (v10)
  {
    MTActuatorManagement::~MTActuatorManagement(v10);
    MEMORY[0x29ED547D0]();
  }

  v11 = *(this + 27);
  if (v11)
  {
    MEMORY[0x29ED547D0](v11, 0x1020C40774E108FLL);
  }

  v12 = *(this + 29);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

{
  MTParser::~MTParser(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTParser::retain(uint64_t this)
{
  if (!atomic_load((this + 8)))
  {
    MTParser::retain();
  }

  atomic_fetch_add((this + 8), 1u);
  return this;
}

unsigned int *MTParser::release(unsigned int *this)
{
  if (!atomic_load(this + 2))
  {
    MTParser::release();
  }

  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v3 = *(*this + 8);

    return v3();
  }

  return this;
}

void MTParser::createParserForMTDevice(uint64_t a1, unsigned int a2)
{
  MTDeviceGetSensorSurfaceDimensions();
  if (a2 >= 0x3E8)
  {
    operator new();
  }

  operator new();
}

void MTParser::createMotionAxisChildEvents(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = MEMORY[0x29EDB8ED8];
  if (a3[48] != 0.0 || a3[49] != 0.0)
  {
    v5 = *MEMORY[0x29EDB8ED8];
    TranslationEvent = IOHIDEventCreateTranslationEvent();
    if (TranslationEvent)
    {
      v7 = TranslationEvent;
      IOHIDEventAppendEvent();
      CFRelease(v7);
    }
  }

  if (a3[71] != 0.0 || a3[72] != 0.0)
  {
    v8 = *v4;
    VelocityEvent = IOHIDEventCreateVelocityEvent();
    if (VelocityEvent)
    {
      v10 = VelocityEvent;
      IOHIDEventAppendEvent();
      CFRelease(v10);
    }
  }

  if (a3[50] != 0.0 || a3[51] != 0.0)
  {
    a3[44];
    v11 = *v4;
    v12 = a3[45];
    PolarOrientationEvent = IOHIDEventCreatePolarOrientationEvent();
    if (PolarOrientationEvent)
    {
      v14 = PolarOrientationEvent;
      IOHIDEventAppendEvent();
      CFRelease(v14);
    }

    v15 = a3[50];
    v16 = IOHIDEventCreatePolarOrientationEvent();
    if (v16)
    {
      v17 = v16;
      IOHIDEventAppendEvent();

      CFRelease(v17);
    }
  }
}

void MTParser::createDigitizerChildEventForPath(uint64_t a1, int a2, MTParserPath *this, uint64_t a4, char a5, int a6)
{
  v67 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 64);
  if (v8 && (*(v8 + 144) & 1) != 0)
  {
    v9 = *(this + 432);
  }

  else
  {
    v9 = 0;
  }

  *(this + 18);
  if ((*(this + 11) - 3) < 2)
  {
    v10 = a6 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  QuantizedMinorRadius_mm = MTParserPath::getQuantizedMinorRadius_mm(this);
  MTSurfaceDimensions::convertMillimetersToSurfaceFraction(v11, 0.0, QuantizedMinorRadius_mm);
  v13 = *(a1 + 40);
  QuantizedMajorRadius_mm = MTParserPath::getQuantizedMajorRadius_mm(this);
  MTSurfaceDimensions::convertMillimetersToSurfaceFraction(v13, 0.0, QuantizedMajorRadius_mm);
  v15 = vadd_f32(v9, *(this + 400));
  v16 = v15.f32[1];
  v63 = v15.f32[0];
  MTSurfaceDimensions::convertPixelsToSurfaceFraction(*(a1 + 40), v15.f32[0], v15.f32[1]);
  v17 = *(this + 19);
  v18 = *(a1 + 216);
  if (v18)
  {
    v64 = *v18;
  }

  v19 = *(a1 + 24);
  MTDeviceGetExtendedMaxDigitizerPressureValue();
  isStylusContact = MTParserPath::isStylusContact(this);
  v21 = *(a1 + 24);
  MTDeviceNotifyWorkInterval();
  v22 = *MEMORY[0x29EDB8ED8];
  v23 = *(this + 10);
  v24 = *(this + 12);
  if (isStylusContact)
  {
    _H0 = *(this + 55);
    __asm { FCVT            D2, H0 }

    v31 = *(this + 28);
    v32 = *(this + 20);
    DigitizerStylusEventWithPolarOrientation = IOHIDEventCreateDigitizerStylusEventWithPolarOrientation();
    v34 = *(this + 18);
    IOHIDEventSetFloatValue();
    v35 = *(this + 29);
    IOHIDEventSetFloatValue();
    IOHIDEventSetFloatValue();
    IOHIDEventSetFloatValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    if ((*(this + 54) & 0x2000) != 0)
    {
      IOHIDEventSetIntegerValue();
    }

    if (*(this + 488) == 1)
    {
      v66 = *(this + 492);
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (VendorDefinedEvent)
      {
        v37 = VendorDefinedEvent;
        IOHIDEventAppendEvent();
        CFRelease(v37);
      }
    }
  }

  else
  {
    MTContact_getEllipseOrientationDegrees();
    v38 = *(this + 18);
    v59 = *(this + 29);
    v61 = *(this + 28);
    DigitizerStylusEventWithPolarOrientation = IOHIDEventCreateDigitizerFingerEventWithQuality();
    v39 = *(this + 3);
    IOHIDEventSetIntegerValue();
  }

  if (DigitizerStylusEventWithPolarOrientation)
  {
    v40 = *(a1 + 40);
    QuantizedRadiusAccuracy_mm = MTParserPath::getQuantizedRadiusAccuracy_mm(this);
    MTSurfaceDimensions::convertMillimetersToSurfaceFraction(v40, 0.0, QuantizedRadiusAccuracy_mm);
    IOHIDEventSetFloatValue();
    IOHIDEventGetPhase();
    v42 = *(this + 54);
    if ((v42 & 0x4000) != 0)
    {
      IOHIDEventSetPhase();
    }

    if (!v10)
    {
      goto LABEL_37;
    }

    v43 = *(a1 + 24);
    if (MTDeviceShouldDispatchNormalizedVelocity())
    {
      MTSurfaceDimensions::convertPixelsToSurfaceFraction(*(a1 + 40), *(this + 16), *(this + 17));
    }

    else
    {
      if (*(a1 + 32) != 1001)
      {
LABEL_27:
        v48 = *(a1 + 24);
        if (MTDeviceShouldDispatchRelativeCoordinates())
        {
          if ((a5 & 4) != 0)
          {
            v49 = *(a1 + 64);
            v50 = 0.0;
            if (v49)
            {
              v51 = 0.0;
              if (*(v49 + 144) == 1)
              {
                v51 = *(this + 110);
                v50 = *(this + 111);
              }
            }

            else
            {
              v51 = 0.0;
            }

            v52 = v16 - (v50 + *(this + 103));
            MTSurfaceDimensions::convertPixelDeltaToMillimeters(*(a1 + 40), v63 - (v51 + *(this + 102)), 0);
            MTSurfaceDimensions::convertPixelDeltaToMillimeters(*(a1 + 40), v52, 1);
          }

          v53 = *(this + 10);
          v54 = *(this + 12);
          MTContact_getEllipseOrientationDegrees();
          v55 = *(this + 18);
          v60 = *(this + 29);
          v62 = *(this + 28);
          DigitizerFingerEventWithQuality = IOHIDEventCreateDigitizerFingerEventWithQuality();
          IOHIDEventGetEventFlags();
          IOHIDEventSetEventFlags();
          IOHIDEventSetFloatValue();
          if ((v42 & 0x4000) != 0)
          {
            IOHIDEventSetPhase();
          }

          v57 = *(this + 3);
          IOHIDEventSetIntegerValue();
          IOHIDEventAppendEvent();
          CFRelease(DigitizerFingerEventWithQuality);
        }

LABEL_37:
        IOHIDEventAppendEvent();
        CFRelease(DigitizerStylusEventWithPolarOrientation);
        goto LABEL_38;
      }

      v44 = *(this + 25);
      v45 = -*(this + 26);
    }

    VelocityEvent = IOHIDEventCreateVelocityEvent();
    if (VelocityEvent)
    {
      v47 = VelocityEvent;
      IOHIDEventAppendEvent();
      CFRelease(v47);
    }

    goto LABEL_27;
  }

LABEL_38:
  v58 = *MEMORY[0x29EDCA608];
}

void MTParser::createDigitizerPathChildEvents(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v7 = 964;
  v8 = 31;
  v36 = *(a1 + 36);
  do
  {
    v9 = (*(a3 + 280) + v7);
    v10 = *(v9 - 79);
    if ((*(v9 - 81) - 32) >= 0xFFFFFFE1 && v10 != 15)
    {
      v12 = (v9 - 91);
      v13 = *v9;
      v14 = v10 - 1;
      v15 = v10 != 0;
      v16 = *(v9 - 55) - 1;
      v17 = *(v9 - 80) - 5;
      v18 = *(v9 - 56) - 5;
      v19 = (v36 >> 5) & 1;
      if (v14 > 4)
      {
        LOBYTE(v19) = 1;
      }

      if (v18 < 0xFFFFFFFE)
      {
        v20 = 1;
      }

      else
      {
        v20 = (v14 > 4) & (a4 >> 7);
      }

      v21 = v20 | ~(v16 < 5) | (v14 < 5);
      if (v16 < 5)
      {
        v22 = 1;
      }

      else
      {
        v22 = v19;
      }

      if (v21)
      {
        v23 = (v14 > 4) & (a4 >> 7);
      }

      else
      {
        v23 = v15;
      }

      if (v23)
      {
        v24 = v13 | 0x83;
      }

      else
      {
        v24 = v13;
      }

      if (v17 < 0xFFFFFFFE)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22;
      }

      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = v24 | 3;
      }

      isStylusContact = MTParserPath::isStylusContact(v12);
      v28 = MTParserPath::wasStylusContact(v12);
      if (v17 >= 0xFFFFFFFE)
      {
        if ((v14 < 5) | isStylusContact & 1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v30 = v14 < 5 || v16 < 5;
        if ((v30 | isStylusContact | v28))
        {
LABEL_46:
          MTParser::createDigitizerChildEventForPath(a1, a2, v12, a6, v26, v23);
          goto LABEL_47;
        }
      }

      if ((v36 & 0x20) != 0)
      {
        goto LABEL_46;
      }

      v31 = v17 >= 0xFFFFFFFE && v14 >= 5;
      v32 = !v31;
      if ((a4 & 0x80) == 0)
      {
        v32 = 1;
      }

      if ((((v32 | isStylusContact) & 1) == 0) | v23 & 1)
      {
        goto LABEL_46;
      }
    }

LABEL_47:
    v7 += 600;
    --v8;
  }

  while (v8);
}

uint64_t MTParser::createHIDCollectionEventsForHand(MTParser *this, const MTPathStates *a2, const MTHandStatistics *a3, const MTHandMotion *a4, unsigned int a5, double a6)
{
  v11 = mach_absolute_time();
  v12 = *(this + 3);
  MTDeviceGetDeviceTimestampOffset();
  v13 = *(a3 + 6) == -1;
  v14 = *(this + 25);
  if (v14)
  {
    v15 = *(v14 + 596);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 27);
  if (v16)
  {
    v15 = *v16;
  }

  if ((*(a3 + 42) & 0x20) != 0)
  {
    if (*(a3 + 78) | *(a3 + 76) || *(a3 + 79) | *(a3 + 77))
    {
      goto LABEL_14;
    }
  }

  else if (*(a3 + 76) || *(a3 + 77))
  {
    goto LABEL_14;
  }

  if (!*(a3 + 202))
  {
    return 0;
  }

LABEL_14:
  MTSurfaceDimensions::convertPixelsToSurfaceFraction(*(this + 5), *(a4 + 46), *(a4 + 47));
  v18 = *MEMORY[0x29EDB8ED8];
  *(a3 + 6);
  if ((v15 & 1) == 0)
  {
    v19 = *(a3 + 40);
  }

  if ((*(a3 + 168) & 0x20) != 0)
  {
    v21 = *(a3 + 78) | *(a3 + 76);
    v22 = *(a3 + 188) + *(a3 + 186);
  }

  else
  {
    v20 = *(a3 + 186);
  }

  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  if (DigitizerEvent)
  {
    MTParser::createDigitizerPathChildEvents(this, DigitizerEvent, a2, a5, v23, v11);
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v25 = Children;
      if (CFArrayGetCount(Children) >= 1)
      {
        v26 = 0;
        while (!CFArrayGetValueAtIndex(v25, 0) || IOHIDEventGetType() != 11)
        {
          if (++v26 >= CFArrayGetCount(v25))
          {
            return DigitizerEvent;
          }
        }

        IOHIDEventGetIntegerValue();
        IOHIDEventSetIntegerValue();
      }
    }
  }

  return DigitizerEvent;
}

void MTParser::handleForceHIDEvents(uint64_t a1, uint64_t *a2, char a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a2 || (v5 = *(a1 + 64)) == 0)
  {
    v14 = *(a1 + 24);
    MTDeviceGetDeviceID();
    v15 = MTLoggingPlugin();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 64);
      *buf = 134218496;
      v19 = a2;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = 0;
      _os_log_impl(&dword_29D381000, v15, OS_LOG_TYPE_DEBUG, "[HID] Skipping : No base event or path states : %p %p (deviceID 0x%llX)", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v6 = *(a1 + 200);
  if (!v6 || (v8 = *(a1 + 208)) == 0 || !MTForceManagement::actuateForceAndHIDEvents(v6, v5, v8, *a2, a3))
  {
LABEL_13:
    v17 = *MEMORY[0x29EDCA608];
    return;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    MTAbsoluteTimeGetCurrent();
    *(v9 + 48) = v10;
  }

  isForceButtonActivated = MTForceManagement::isForceButtonActivated(*(a1 + 200));
  MTParser::setDivingButtonState(a1, isForceButtonActivated);
  v12 = *a2;
  v13 = *MEMORY[0x29EDCA608];

  MTDragManagerEventQueue::forceButtonChange(a1 + 80, v12);
}

uint64_t MTParser::setDivingButtonState(MTParser *this, int a2)
{
  result = *(this + 8);
  if (result)
  {
    result = MTPathStates::setDivingButtonState(result, a2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    if (*(v5 + 305) != a2)
    {
      *(v5 + 288) = *(v5 + 8);
    }

    *(v5 + 305) = a2;
  }

  return result;
}

uint64_t MTParser::createEmptyHIDCollectionEvent(MTParser *this)
{
  mach_absolute_time();
  v1 = *MEMORY[0x29EDB8ED8];
  return IOHIDEventCreateDigitizerEvent();
}

double MTParser::autoReleaseTapAndAHalfDrag(MTParser *a1, void *a2, double a3)
{
  v3 = 0.0;
  if (a2)
  {
    if (*(a1 + 9))
    {
      EmptyHIDCollectionEvent = *(a1 + 2);
      if (EmptyHIDCollectionEvent || (EmptyHIDCollectionEvent = MTParser::createEmptyHIDCollectionEvent(a1), (*(a1 + 2) = EmptyHIDCollectionEvent) != 0))
      {
        v8 = *(a1 + 6);
        if (v8)
        {
          v9 = MTDragManagerEventQueue::serviceEventQueue(a1 + 80, EmptyHIDCollectionEvent, *(a1 + 9), *(v8 + 211) + *(v8 + 186), a3);
          v10 = *(a1 + 2);
          if (IOHIDEventGetChildren())
          {
            v11 = *(a1 + 7);
            if (v11)
            {
              MTSurfaceDimensions::convertPixelsToSurfaceFraction(*(a1 + 5), *(v11 + 184), *(v11 + 188));
              v12 = *(a1 + 2);
              IOHIDEventSetFloatValue();
              v13 = *(a1 + 2);
              IOHIDEventSetFloatValue();
            }

            v14 = *(a1 + 2);
            mach_absolute_time();
            IOHIDEventSetTimeStamp();
            *a2 = *(a1 + 2);
            *(a1 + 2) = 0;
          }

          ChordTableForHand = MTGestureConfig::getChordTableForHand(*(a1 + 9), 1);
          if (ChordTableForHand)
          {
            v16 = v9;
          }

          else
          {
            v16 = 0;
          }

          if (v16 == 1)
          {
            return *(ChordTableForHand + 372);
          }
        }
      }
    }
  }

  return v3;
}

void MTParser::appendInjectedPointerEventToBaseEvent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *MEMORY[0x29EDB8ED8];
    IOHIDEventGetTimeStamp();
    RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
    if (RelativePointerEvent)
    {
      v4 = RelativePointerEvent;
      IOHIDEventAppendEvent();

      CFRelease(v4);
    }
  }
}

void MTParser::updateSurfaceDimensions(MTParser *this)
{
  v2 = *(this + 3);
  if (MTDeviceGetSensorSurfaceDimensions())
  {
    v4 = 75.0;
    v5 = 50.0;
  }

  else
  {
    v5 = 0x1B4E81Bu;
    v4 = 0x1B4E81Bu;
  }

  v6 = *(this + 5);
  if (v6)
  {
    *&v3 = MTSurfaceDimensions::updateScreenBounds_mm(v6, 0.0, 0.0, v5, v4);
  }

  v7 = *(this + 8);
  if (v7)
  {
    MTPathStates::updateSurfaceDimensions(v7, v3);
  }
}

uint64_t MTParser::processForceHIDEvents(uint64_t a1, const MTPathStates *a2)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    MTForceManagerLite::updatePaths(v2, a2);
  }

  return 1;
}

uint64_t MTParser::getNonRestingFingerCount(MTParser *this, int a2)
{
  v2 = *(this + 6);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 186);
  if (a2)
  {
    if (v3 <= *(v2 + 195))
    {
      v4 = 0;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 + v3;
}

void MTParser::handleFrameHeader(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    MTEmbeddedStats::handleFrameHeader(v3, a2, a3);
  }
}

uint64_t MTParser::systemForceResponseEnabledChanged(MTParser *this)
{
  result = *(this + 3);
  if (result)
  {
    v3 = *(this + 25);
    if (v3)
    {
      result = MTDeviceGetSystemForceResponseEnabled();
      *(v3 + 594) = result;
    }
  }

  return result;
}

uint64_t MTParser::setHostClickControlEnabled(uint64_t this, int a2)
{
  if (*(this + 24))
  {
    this = *(this + 200);
    if (this)
    {
      v2 = *(this + 595);
      *(this + 595) = a2;
      if (!a2 && (v2 & 1) != 0)
      {
        return MTForceManagement::clearState(this, 1);
      }
    }
  }

  return this;
}

uint64_t MTParser::getHostClickControlEnabled(MTParser *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v1 = *(this + 25);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 595);
    }
  }

  return v1 & 1;
}

uint64_t MTParser::alwaysGenerateNotificationCenterGestures(MTParser *this, int a2)
{
  result = *(this + 9);
  if (result)
  {
    result = MTGestureConfig::getChordTableForHand(result, 1);
    if (result)
    {
      if (a2)
      {
        v4 = 32;
      }

      else
      {
        v4 = 128;
      }

      *(result + 24) = *(result + 24) & 0xFFFFFF5F | v4;
    }
  }

  return result;
}

uint64_t MTParser::alwaysGenerateNotificationCenterAltGestures(MTParser *this, int a2)
{
  result = *(this + 9);
  if (result)
  {
    result = MTGestureConfig::getChordTableForHand(result, 1);
    if (result)
    {
      if (a2)
      {
        v4 = 256;
      }

      else
      {
        v4 = 128;
      }

      *(result + 24) = *(result + 24) & 0xFFFFFE7F | v4;
    }
  }

  return result;
}

void MTParser::updatePixelResolution_mm(MTParser *this, double a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    *&a2 = MTSurfaceDimensions::updatePixelResolution_mm(v3, *&a2, *&a2);
  }

  v4 = *(this + 8);
  if (v4)
  {

    MTPathStates::updateResolutionDependentParams(v4, *&a2);
  }
}

uint64_t MTParser::feedbackMomentumTimerStatus(uint64_t a1, int a2, char a3)
{
  result = *(a1 + 72);
  if (result)
  {
    result = MTGestureConfig::getChordTableForHand(result, 1);
    if (result)
    {
      *(result + 1276) = a2;
      *(result + 1272) = a3;
    }
  }

  return result;
}

void MTForceManagement::~MTForceManagement(MTForceManagement *this)
{
  MTForceClickHistory::~MTForceClickHistory((this + 512));
  v7 = (this + 464);
  std::vector<MTForceThresholding>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<std::vector<MTForceBehavior>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }
}

void std::vector<MTForceThresholding>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 59;
      v7 = v4 - 59;
      do
      {
        (**v7)(v7);
        v6 -= 59;
        v8 = v7 == v2;
        v7 -= 59;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<MTForceBehavior>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<MTForceBehavior>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<MTForceBehavior>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTForceBehavior>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTForceBehavior>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 144)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }

    v7 = *(i - 96);
    if (v7)
    {
      *(i - 88) = v7;
      operator delete(v7);
    }

    v8 = *(i - 120);
    if (v8)
    {
      *(i - 112) = v8;
      operator delete(v8);
    }
  }

  a1[1] = v2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_29D38B864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<MTEmbeddedStats>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MTEmbeddedStats *,std::shared_ptr<MTEmbeddedStats>::__shared_ptr_default_delete<MTEmbeddedStats,MTEmbeddedStats>,std::allocator<MTEmbeddedStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED547D0);
}

uint64_t std::__shared_ptr_pointer<MTEmbeddedStats *,std::shared_ptr<MTEmbeddedStats>::__shared_ptr_default_delete<MTEmbeddedStats,MTEmbeddedStats>,std::allocator<MTEmbeddedStats>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<MTEmbeddedStats>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x29ED547D0);
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

MTPathStates *MTPathStates::MTPathStates(MTPathStates *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, int a6)
{
  v7 = MTPathStatesBasic::MTPathStatesBasic(a1, a2, a3, a4, a5, a6);
  *v7 = &unk_2A24116F8;
  MTRestZoneIntegrator::MTRestZoneIntegrator(v7 + 520, *(v7 + 40), *(v7 + 24), *(v7 + 28));
  (*(*a1 + 16))(a1);
  v8 = (*(*a1 + 24))(a1);
  MTPathStates::updateSurfaceDimensions(a1, v8);
  *(a1 + 44) = 0;
  return a1;
}

void MTPathStates::updateSurfaceDimensions(MTPathStates *this, double a2)
{
  if ((*(this + 6) - 1000) <= 0xBB7)
  {
    v8 = 0;
    AppIntegerValue = MTPreferencesGetAppIntegerValue(@"ThumbZoneHeight", @"com.apple.MultitouchSupport", &v8);
    v7 = 0;
    v4 = MTPreferencesGetAppIntegerValue(@"ThumbZoneHeightRatio", @"com.apple.MultitouchSupport", &v7);
    MTSurfaceDimensions::convertSurfaceFractionToMillimeters(*(this + 5), 1, 0.0, 0.0);
    *(this + 110) = v5;
    if (v7)
    {
      a2 = v4 / 100.0;
      *&a2 = a2;
    }

    else
    {
      *&a2 = v5 / 76.0;
      v6 = sqrtf(v5 / 76.0);
      if (*&a2 < 1.0)
      {
        *&a2 = v6;
      }
    }

    *(this + 109) = LODWORD(a2);
    *&a2 = *&a2 * 12.0;
    if (v8)
    {
      *&a2 = AppIntegerValue;
    }

    *(this + 108) = LODWORD(a2);
  }

  MTParameterFactory::updatePathFilterParamsWithNewSurfaceDimensions(this + 48, *(this + 5), *&a2);
}

void MTPathStates::~MTPathStates(MTPathStates *this)
{
  *this = &unk_2A24116F8;
  *(this + 44) = 0;
  MTRestZoneIntegrator::~MTRestZoneIntegrator((this + 520));

  MTPathStatesBasic::~MTPathStatesBasic(this);
}

{
  *this = &unk_2A24116F8;
  *(this + 44) = 0;
  MTRestZoneIntegrator::~MTRestZoneIntegrator((this + 520));

  MTPathStatesBasic::~MTPathStatesBasic(this);
}

{
  *this = &unk_2A24116F8;
  *(this + 44) = 0;
  MTRestZoneIntegrator::~MTRestZoneIntegrator((this + 520));
  MTPathStatesBasic::~MTPathStatesBasic(this);

  JUMPOUT(0x29ED547D0);
}

void MTPathStates::clear(MTPathStates *this)
{
  MTPathStatesBasic::clear(this);
  if ((*(this + 6) - 1000) <= 0xBB7)
  {
    *(this + 186) = 0;
    *(this + 107) = 0;
    *(this + 444) = 0;
    *(this + 492) = 0;
    *(this + 102) = 0;
    *(this + 376) = 0u;
    *(this + 392) = 0u;
    *(this + 52) = 0;
    *(this + 424) = 0;
    *(this + 28) = 0u;
    *(this + 29) = 0u;
    *(this + 60) = 0;
    *(this + 122) = 0;
    *(this + 63) = 0;
    *(this + 64) = 0;
    *(this + 62) = 0x7FF0000000000000;
    MTRestZoneIntegrator::clear(this + 65);
  }

  *(this + 92) = 0;
}

double MTPathStates::initializeParams(MTPathStates *this)
{
  MTPathStatesBasic::initializeParams(this);
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = *(this + 32);
  v5 = *(this + 5);

  return MTParameterFactory::initForceFilterParams(this + 21);
}

uint64_t MTPathStates::setDivingButtonState(uint64_t this, int a2)
{
  if (*(this + 372) != a2)
  {
    *(this + 400) = *(this + 8);
    *(this + 408) = *(this + 388);
    *(this + 424) = 0;
  }

  *(this + 372) = a2;
  return this;
}

float MTPathStates::getMaxThumbRestingHeight(MTPathStates *this)
{
  v1 = 0.45;
  if (*(this + 373))
  {
    v1 = 0.55;
  }

  return *(this + 110) * v1;
}

float MTPathStates::restingTranslationCertainty(MTPathStates *this)
{
  if (*(this + 372))
  {
    return 1.0;
  }

  else
  {
    return MTRestZoneIntegrator::translationDominance((this + 520), (*(this + 444) & 1) == 0);
  }
}

BOOL MTPathStates::isContactOnDivingButton(uint64_t a1, float *a2, double a3)
{
  v5 = a3;
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = fabsf(v5);
    v7 = 1.0;
    if (v6 < 0.2)
    {
      v7 = (v6 / 0.2);
    }
  }

  v8 = *(a1 + 432);
  v9 = a2[15];
  v10 = 0.0;
  if (v9 > 8.0)
  {
    v10 = 1.0;
    if (v9 < 18.0)
    {
      v10 = (v9 + -8.0) / 10.0;
    }
  }

  v11 = pow(v7, 0.75);
  v12 = (v8 + v11) + ((v11 + 6.0) * v10);
  MTSurfaceDimensions::convertSurfaceFractionToMillimeters(*(a1 + 40), 1, a2[8], 1.0 - a2[9]);
  return v13 < v12;
}

uint64_t MTPathStates::countFingersOnDivingButton(MTPathStates *this)
{
  *(this + 96) = 0;
  v2 = 644;
  v3 = 31;
  do
  {
    v4 = (*(this + 35) + v2);
    v6 = *v4;
    v5 = (v4 - 11);
    if ((v6 - 3) <= 1 && MTParserPath::isFingerOrRestingContact(v5))
    {
      ++*(this + 96);
    }

    v2 += 600;
    --v3;
  }

  while (v3);
  v7 = 0;
  v8 = 1000.0;
  v9 = 1;
  v10 = 984;
  v11 = 1000.0;
  do
  {
    v12 = *(this + 35);
    v13 = *(this + 44) && MTParserPath::isValidClickSource((v12 + v10 - 384)) && v9 == *(*(this + 44) + 256);
    v14 = (v12 + v10 - 340);
    if ((*v14 - 3) > 1 || !MTParserPath::isFingerOrRestingContact((v12 + v10 - 384)) && (!MTParserPath::isEdgeContact((v12 + v10 - 384)) || *(this + 96) >= 2 && !v13))
    {
      goto LABEL_24;
    }

    v15 = *(v12 + v10 - 288);
    v16 = 48;
    if (*v14 == 7)
    {
      v16 = 144;
    }

    if (*(v12 + v10 + v16 - 384) != 1)
    {
      v15 = v15 + *(v12 + v10);
    }

    if (v15 < v8)
    {
      v11 = v8;
      v7 = v3;
      LODWORD(v3) = v9;
      goto LABEL_25;
    }

    if (v15 < v11)
    {
      v11 = v15;
      v15 = v8;
      v7 = v9;
    }

    else
    {
LABEL_24:
      v15 = v8;
    }

LABEL_25:
    ++v9;
    v10 += 600;
    v8 = v15;
  }

  while (v9 != 32);
  *(this + 97) = v3;
  *(this + 47) = 0;
  if (v3)
  {
    v17 = *(this + 1);
    v18 = *(this + 35);
    v19 = v18 + 600 * v3;
    v20 = v17;
    if ((*(v19 + 44) - 3) <= 1)
    {
      v20 = *(v19 + 232);
    }

    if (v7)
    {
      v21 = v18 + 600 * v7;
      if ((*(v21 + 44) - 3) <= 1)
      {
        v17 = *(v21 + 232);
      }
    }

    if (MTPathStates::isContactOnDivingButton(this, (v19 + 24), v17 - v20))
    {
      ++*(this + 94);
      if (MTParserPath::isEdgeContact(v19))
      {
        ++*(this + 95);
      }
    }

    if (v7)
    {
      v22 = *(this + 94);
      if (v22 >= 1)
      {
        v23 = *(this + 35) + 600 * v7;
        v24 = vcgt_f32(0x4198000041F00000, vabd_f32(*(v19 + 92), *(v23 + 92)));
        if (v24.i32[1] & v24.i32[0])
        {
          *(this + 94) = v22 + 1;
          if (MTParserPath::isEdgeContact(v23))
          {
            ++*(this + 95);
          }
        }
      }
    }

    *(this + 373) = 0;
    v25 = v3 - 1;
    v26 = 696;
    v27 = 31;
    while (1)
    {
      if (!v25)
      {
        goto LABEL_46;
      }

      v28 = (*(this + 35) + v26);
      if ((*(v28 - 13) - 3) > 1)
      {
        goto LABEL_46;
      }

      v29 = (v28 - 24);
      v30 = *v28;
      v31 = *(v19 + 96);
      if (!MTParserPath::isPalmContact((v28 - 24)))
      {
        break;
      }

      if (v30 < v31)
      {
        goto LABEL_45;
      }

LABEL_46:
      --v25;
      v26 += 600;
      if (!--v27)
      {
        return *(this + 94);
      }
    }

    if (!MTParserPath::isEdgeContact(v29) || v30 >= v31)
    {
      goto LABEL_46;
    }

LABEL_45:
    *(this + 373) = 1;
    goto LABEL_46;
  }

  return 0;
}

uint64_t MTPathStates::updateDivingBoardDisplacements(uint64_t this)
{
  v1 = this;
  *(this + 392) = 0;
  v2 = 1;
  v3 = 832;
  do
  {
    v4 = *(v1 + 280);
    if ((*(v4 + v3 - 188) - 3) <= 1)
    {
      this = MTParserPath::isFingerContact((v4 + v3 - 232));
      if (this)
      {
        if (v2 != *(v1 + 388))
        {
          v5 = *(v4 + v3);
          v6 = *(v1 + 392);
          if (v6 == 0.0 || v5 < v6)
          {
            *(v1 + 392) = v5;
          }
        }
      }
    }

    ++v2;
    v3 += 600;
  }

  while (v2 != 32);
  return this;
}

void MTPathStates::checkForRestingThumb(float32x2_t *this)
{
  v2 = this[55].i8[4];
  this[55].i8[4] = 0;
  MTPathStates::updateDivingBoardDisplacements(this);
  MTRestZoneIntegrator::integrateRestingZoneMotion(this + 65, this, this[48].i32[0]);
  v3 = this[48].i32[1];
  if (v3 < 1)
  {
    return;
  }

  v4 = *&this[35] + 600 * v3;
  v5 = 48;
  if (*(v4 + 44) == 7)
  {
    v5 = 144;
  }

  v6 = *(v4 + v5);
  v7 = *(v4 + 232);
  v8 = *&this[49];
  v9 = v8 > 0.0;
  v10 = v8 - v7;
  v11 = fabsf(v10);
  if (v8 <= 0.0)
  {
    v11 = 0.0;
  }

  this[95].f32[0] = v11;
  v12 = this[52].i32[0];
  if (v12 >= 1 && v6 == 1)
  {
    this[95].i8[4] = this[48].i32[0] >= v12;
  }

  else
  {
    this[95].i8[4] = 0;
    if (v8 > 0.0 && v6 != 1)
    {
      v13 = 0;
      v15 = 0;
      v9 = this[48].i32[0] < 3;
      if (this[48].i32[0] >= 3)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    if (v6 != 1)
    {
      v13 = 0;
      v15 = 0;
      if (v8 <= 0.0)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  if ((this[51].i8[4] & 1) == 0 && this[48].i32[0] == 2)
  {
    v13 = 1;
LABEL_35:
    v19 = v9;
    goto LABEL_36;
  }

  if (MTRestZoneIntegrator::shouldDoBiPolarIntegration(&this[65], v2 ^ 1))
  {
    v15 = 0;
  }

  else
  {
    MTSurfaceDimensions::convertPixelsToMillimeters(this[5], *(v4 + 56), *(v4 + 60));
    v17 = 0.45;
    if (this[46].i8[5])
    {
      v17 = 0.55;
    }

    v15 = v16 < (this[55].f32[0] * v17);
  }

  v13 = 1;
  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v15)
  {
    goto LABEL_35;
  }

  v19 = this[47].i32[0] == 1 && v6 != 1;
LABEL_36:
  v20 = this[46].u8[4];
  if (this[53].i8[0])
  {
    v21 = *&this[1];
  }

  else
  {
    v21 = *&this[1];
    if (v21 - *&this[50] < 0.1)
    {
      if (((v13 | v20) & 1) == 0)
      {
        *(v4 + 584) = 0;
      }

      this[53].i8[0] = 1;
    }
  }

  v22 = *&this[49];
  if (v7 > v22)
  {
    v22 = v7;
  }

  if (v21 - v22 == 0.0)
  {
    MTSurfaceDimensions::convertPixelsToMillimeters(this[5], *(v4 + 56), *(v4 + 60));
    v24 = 0.45;
    if (this[46].i8[5])
    {
      v24 = 0.55;
    }

    *(v4 + 585) = v23 > (this[55].f32[0] * v24);
  }

  v25 = v9 & v20;
  if (v19 && MTRestZoneIntegrator::isLockedOnTranslate(&this[65]))
  {
    if (!(v25 & 1 | ((*(v4 + 585) & 1) == 0)))
    {
      if (!*(v4 + 585))
      {
        goto LABEL_61;
      }

LABEL_57:
      if (this[46].i8[4])
      {
        if (!v9)
        {
          return;
        }
      }

      else if ((v9 & *(v4 + 584) & 1) == 0)
      {
        return;
      }

      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v25)
  {
LABEL_54:
    *(v4 + 584) = 1;
  }

  if (!v19 || (*(v4 + 585) & 1) != 0)
  {
    goto LABEL_57;
  }

LABEL_61:
  if (this[48].i32[0] < 5 || this[52].i32[0] <= 0)
  {
    this[55].i8[4] = 1;
  }
}

uint64_t MTPathStates::fixupCurledUnderThumbIdentity(MTPathStates *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(this + 35);
  v9 = (v8 + 96);
  do
  {
    result = (*(v9 - 13) - 1);
    if (result <= 5)
    {
      result = *(v9 - 12);
      if ((result - 1) <= 4)
      {
        if (!v2 || *(v9 - 1) < *(v8 + 600 * v2 + 92))
        {
          v2 = v1;
        }

        if (!v3 || *(v9 - 1) > *(v8 + 600 * v3 + 92))
        {
          v3 = v1;
        }

        if (v4)
        {
          if (*v9 >= *(v8 + 600 * v4 + 96))
          {
            if (!v5 || *v9 < *(v8 + 600 * v5 + 96))
            {
              v5 = v1;
            }

            goto LABEL_18;
          }

          v5 = v4;
        }

        else
        {
          v5 = 0;
        }

        LODWORD(v4) = v1;
LABEL_18:
        ++v7;
        result = result == 1;
        v6 |= result;
      }
    }

    ++v1;
    v9 += 150;
  }

  while (v1 != 32);
  if (v4)
  {
    v11 = v8 + 600 * v3;
    v12 = v8 + 600 * v2;
    v13 = *(v11 + 92) - *(v12 + 92);
    if (v13 > 19.0)
    {
      v14 = v8 + 600 * v4;
      result = *(v14 + 583);
      if (v4 == v2 || v4 == v3)
      {
        if (!(v6 & 1 | ((result & 1) == 0)))
        {
          v18 = v14 + 48;
          goto LABEL_40;
        }
      }

      else
      {
        v15 = (v13 / (v7 - 1)) + -7.0;
        if (v15 < 2.0)
        {
          v15 = 2.0;
        }

        if (v15 > 16.0)
        {
          v15 = 16.0;
        }

        if (*(v14 + 96) < (*(v8 + 600 * v5 + 96) - v15) || result != 0)
        {
          v19 = *(v14 + 48);
          v18 = v14 + 48;
          v17 = v19;
          *(v18 + 535) = 1;
          if (v19 != 1)
          {
            v20 = *(v12 + 48);
            if ((v6 & 1) == 0 || v20 == 1 || *(v11 + 48) == 1)
            {
              if (v20 >= *(v11 + 48))
              {
                *(v11 + 48) = v17;
              }

              else
              {
                *(v12 + 48) = v17;
              }

LABEL_40:
              *v18 = 1;
            }
          }
        }
      }
    }
  }

  v4 = v4;
  v21 = 32;
  do
  {
    if ((*(v8 + 44) - 1) <= 5 && v4 && (*(v8 + 48) - 1) <= 4)
    {
      *(v8 + 583) = 0;
    }

    --v4;
    v8 += 600;
    --v21;
  }

  while (v21);
  return result;
}

uint64_t MTPathStates::checkForFingersInZones(MTPathStates *this)
{
  result = MTPathStatesBasic::checkForFingersInZones(this);
  if ((*(this + 6) - 1000) <= 0xBB7 && *(this + 94) >= 1)
  {
    *(this + 81) |= 0x10000u;
  }

  return result;
}

double MTPathStates::forwardFirmwareDistributedForces(MTPathStates *this, float a2)
{
  v3 = 0;
  v4 = *(this + 35);
  *(this + 45) = 0;
  v5 = -31;
  v6 = 896;
  do
  {
    v7 = *(this + 35);
    v8 = (v7 + v6);
    if ((*(v7 + v6 - 252) - 1) > 5)
    {
      MTForceFilter::clear(v8);
    }

    else
    {
      v9 = *(v8 - 55);
      *(this + 90) = v9 + *(this + 90);
      if (MTParserPath::isValidClickSource((v8 - 296)))
      {
        *(this + 91) = v9 + *(this + 91);
      }

      v10 = v7 + v6;
      v11 = hypotf(*(v10 - 196), *(v10 - 192));
      MTForceFilter::updateForceFilter(v10, this + 84, v9, v11, *(this + 1) - *(this + 2));
      ++v3;
    }

    v6 += 600;
  }

  while (!__CFADD__(v5++, 1));
  if (v3 <= 0)
  {

    return MTForceFilter::clear((v4 + 74));
  }

  else
  {
    v13 = *(this + 91);
    v14 = hypotf(v4[25], v4[26]);
    v15 = *(this + 1) - *(this + 2);

    MTForceFilter::updateForceFilter((v4 + 74), this + 84, v13, v14, v15);
  }

  return result;
}

BOOL MTPathStates::hasFastestLowpassPeakFingerSpeed(MTPathStates *this, int a2)
{
  v4 = 0;
  v5 = 0.0;
  v6 = -31;
  v7 = 932;
  do
  {
    v8 = *(this + 35);
    if (MTParserPath::isFingerContact((v8 + v7 - 332)) && (*(v8 + v7 - 288) - 3) <= 1 && *(v8 + v7) > v5)
    {
      v4 = v6 + 32;
      v5 = *(v8 + v7);
    }

    v7 += 600;
  }

  while (!__CFADD__(v6++, 1));
  return v4 == a2;
}

float MTPathStates::sumOfLowpassPeakFingerSpeeds(MTPathStates *this)
{
  v2 = 0.0;
  v3 = 932;
  v4 = 31;
  do
  {
    v5 = *(this + 35);
    if (MTParserPath::isFingerContact((v5 + v3 - 332)) && (*(v5 + v3 - 288) - 3) <= 1)
    {
      v2 = v2 + *(v5 + v3);
    }

    v3 += 600;
    --v4;
  }

  while (v4);
  return v2;
}

float MTPathStates::getPrePixelatedPositionFromPostPixelatedPosition(MTPathStates *this, int a2)
{
  memcpy(__dst, &unk_29D3D65C0, 0x128uLL);
  v4 = *(this + 35) + 600 * a2;
  __dst[0] = &unk_2A2411768;
  memcpy(&__dst[1], (v4 + 8), 0x11CuLL);
  __dst[37] = &unk_2A2413860;
  v6 = *(v4 + 320);
  v5 = *(v4 + 336);
  v27 = *(v4 + 304);
  v28 = v6;
  v29 = v5;
  v7 = *(v4 + 400);
  v8 = *(v4 + 352);
  v9 = *(v4 + 368);
  v32 = *(v4 + 384);
  v33 = v7;
  v30 = v8;
  v31 = v9;
  v10 = *(v4 + 464);
  v12 = *(v4 + 416);
  v11 = *(v4 + 432);
  v36 = *(v4 + 448);
  v37 = v10;
  v34 = v12;
  v35 = v11;
  v13 = *(v4 + 528);
  v15 = *(v4 + 480);
  v14 = *(v4 + 496);
  v40 = *(v4 + 512);
  v41 = v13;
  v38 = v15;
  v39 = v14;
  v17 = *(v4 + 560);
  v16 = *(v4 + 576);
  v18 = *(v4 + 544);
  v45 = *(v4 + 592);
  v43 = v17;
  v44 = v16;
  v42 = v18;
  v19 = *(this + 5);
  v23 = &unk_2A2411ED0;
  v20 = *(v19 + 24);
  v24 = *(v19 + 8);
  v25 = v20;
  v21 = MTSurfaceDimensions::convertPixelsToSurfaceFraction(&v23, *&__dst[7], *(&__dst[7] + 1));
  MTSurfaceDimensions::~MTSurfaceDimensions(&v23);
  MTParserPath::~MTParserPath(__dst);
  return v21;
}

void sub_29D38CB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  MTSurfaceDimensions::~MTSurfaceDimensions(&a9);
  MTParserPath::~MTParserPath(&a14);
  _Unwind_Resume(a1);
}

uint64_t MTPathStates::getMaxDisplacement_mm(uint64_t this)
{
  v1 = (*(this + 280) + 952);
  v2 = 0.0;
  v3 = 31;
  do
  {
    if (*v1 > v2)
    {
      v2 = *v1;
    }

    v1 += 150;
    --v3;
  }

  while (v3);
  return this;
}

void MTPathStates::updateDragDisplacements_mm(MTPathStates *this, int a2)
{
  v4 = 952;
  v5 = 31;
  do
  {
    v6 = *(this + 35);
    v7 = *(this + 10);
    v13[6] = *(this + 9);
    v13[7] = v7;
    v14 = *(this + 44);
    v8 = *(this + 6);
    v13[2] = *(this + 5);
    v13[3] = v8;
    v9 = *(this + 8);
    v13[4] = *(this + 7);
    v13[5] = v9;
    v10 = *(this + 4);
    v13[0] = *(this + 3);
    v13[1] = v10;
    updated = MTParserPath::updateHysteresisDragCenter_mm((v6 + v4 - 352), v13);
    v12 = 0.0;
    if (a2)
    {
      v12 = updated + *(v6 + v4);
    }

    *(v6 + v4) = v12;
    v4 += 600;
    --v5;
  }

  while (v5);
}

uint64_t MTPathStates::tasksPrePixelatedPositions(MTPathStates *this, float a2)
{
  v3 = *(this + 44);
  if (v3 && *(v3 + 595) == 1)
  {
    MTPathStates::forwardFirmwareDistributedForces(this, a2);
    MTForceManagement::analyzeAndManageStrongestForces(*(this + 44), this);
  }

  if ((*(this + 6) - 1000) <= 0xBB7 && (*(this + 28) & 2) != 0)
  {
    MTPathStates::checkForRestingThumbFromPalmRestingHand(this);
    MTPathStates::checkForLonelyHighRestingThumb(this);
    MTPathStates::fixupCurledUnderThumbIdentity(this);
    MTPathStates::countFingersOnDivingButton(this);
  }

  return MTPathStatesBasic::tasksPrePixelatedPositions(this);
}

float MTPathStates::checkForRestingThumbFromPalmRestingHand(MTPathStates *this)
{
  *(this + 60) = *(this + 59);
  v2 = (this + 448);
  *(this + 492) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  v3 = (this + 504);
  LODWORD(v4.f64[0]) = 0;
  *(this + 31) = xmmword_29D3D6530;
  v5 = -31;
  v6 = 1186;
  do
  {
    v7 = *(this + 35);
    v8 = v7 + v6;
    if (*(v7 + v6 - 542))
    {
      v9 = (v8 - 586);
      v10 = *(v8 - 534);
      if (v10 == -1)
      {
        if (MTParserPath::isPalmContact(v9))
        {
          ++*(this + 116);
        }

        else if (MTParserPath::isThumbContact(v9))
        {
          *v2 = v5 + 32;
        }

        else if (*(v7 + v6) == 1)
        {
          *(this + 114) = v5 + 32;
        }

        else if (MTParserPath::isFingerContact(v9))
        {
          ++*(this + 118);
        }
      }

      else if (v10 == 1)
      {
        if (MTParserPath::isPalmContact(v9))
        {
          ++*(this + 117);
        }

        else if (MTParserPath::isThumbContact(v9))
        {
          *(this + 113) = v5 + 32;
        }

        else if (*(v7 + v6) == 1)
        {
          *(this + 115) = v5 + 32;
        }

        else if (MTParserPath::isFingerContact(v9))
        {
          ++*(this + 119);
        }
      }
    }

    v6 += 600;
  }

  while (!__CFADD__(v5++, 1));
  v12 = *(this + 119);
  if (v12 + *(this + 118) >= 1)
  {
    v13 = 856;
    v14 = 31;
    do
    {
      v15 = *(this + 35);
      if (*(v15 + v13 - 212) && MTParserPath::isFingerContact((v15 + v13 - 256)))
      {
        v16.f64[0] = *(v15 + v13 - 24);
        *(this + 62) = fmin(*(this + 62), v16.f64[0]);
        v16.f64[1] = *(v15 + v13);
        v4 = vmaxnmq_f64(*v3, v16);
        *v3 = v4;
      }

      v13 += 600;
      --v14;
    }

    while (v14);
    if (*(this + 113) || *v2)
    {
      v4.f64[0] = *(this + 63) - *(this + 62);
      *(this + 492) = v4.f64[0] < *&qword_2A17A1DB0;
    }

    v12 = *(this + 119);
  }

  if (!v12 && !*(this + 118) && (*(this + 120) >= 1 || *(this + 121) > 0))
  {
    v17 = 644;
    v18 = 31;
    do
    {
      v19 = (*(this + 35) + v17);
      v21 = *v19;
      v20 = (v19 - 11);
      if (v21)
      {
        v4.f64[0] = MTParserPath::clearPathSpeedSymmetries(v20);
      }

      v17 += 600;
      --v18;
    }

    while (v18);
    *(this + 122) = 0;
  }

  v22 = *(this + 114);
  if ((v22 || *(this + 115)) && *(this + 119) + *(this + 118) >= 2 && *(this + 492) == 1 && (v22 && !*(this + 116) || (v22 = *(this + 115)) != 0 && !*(this + 117)) && v22 >= 1)
  {
    v23 = *(this + 35) + 600 * v22;
    if (*(v23 + 44))
    {
      *(v23 + 586) = 0;
      v4.f64[0] = MTParserPath::clearPathSpeedSymmetries(v23);
    }
  }

  v24 = *(this + 113);
  v25 = v24;
  if (!v24)
  {
    goto LABEL_90;
  }

  v26 = *(this + 117);
  if (v26 < 1 || *(this + 119))
  {
    goto LABEL_90;
  }

  if (*(this + 118) <= 0 && !*v2)
  {
    return *v4.f64;
  }

  v27 = *(this + 116);
  if (v26 > v27)
  {
    v28 = *(this + 35);
LABEL_60:
    v29 = 0;
    v30 = 0;
    v31 = 600 * v24;
    v87 = v31 - 9600;
    v32 = v31 - 9000;
    v33 = v31 - 8400;
    v34 = v31 - 600;
    v35 = v31 - 7800;
    v36 = v31 - 1200;
    v37 = v31 - 7200;
    v38 = v28 + 7186;
    v39 = v31 - 1800;
    LODWORD(v4.f64[0]) = 14;
    v40 = v31 - 6600;
    v41 = v28 + 5386;
    v42 = v31 - 6000;
    v43 = v31 - 5400;
    v44 = v28 + 4186;
    v45 = v31 - 3600;
    v46 = v31 - 4800;
    v47 = v31 - 3000;
    v48 = v31 - 2400;
    v49 = vdupq_n_s64(0x1FuLL);
    do
    {
      v50 = vdupq_n_s64(v30);
      v51 = vorrq_s8(v50, xmmword_29D3D65B0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v49, v51)), 14), 14).u8[0])
      {
        *(v28 + v29 + 1186) = v34 == v29;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v51)), 14), 14).i8[1])
      {
        *(v28 + v29 + 1786) = v36 == v29;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v50, xmmword_29D3D65A0)))), 14).i8[2])
      {
        *(v28 + v29 + 2386) = v39 == v29;
        *(v28 + v29 + 2986) = v48 == v29;
      }

      v52 = vorrq_s8(v50, xmmword_29D3D6590);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v52)), 14)).i32[1])
      {
        *(v28 + v29 + 3586) = v47 == v29;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v52)), 14)).i8[5])
      {
        *(v44 + v29) = v45 == v29;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v50, xmmword_29D3D6580))))).i8[6])
      {
        *(v44 + v29 + 600) = 600 * v24 - 4200 == v29;
        *(v41 + v29) = v46 == v29;
      }

      v53 = vorrq_s8(v50, xmmword_29D3D6570);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v53)), 14), 14).u8[0])
      {
        *(v41 + v29 + 600) = v43 == v29;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v53)), 14), 14).i8[1])
      {
        *(v41 + v29 + 1200) = v42 == v29;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v50, xmmword_29D3D6560)))), 14).i8[2])
      {
        *(v38 + v29) = v40 == v29;
        *(v41 + v29 + 2400) = v37 == v29;
      }

      v54 = vorrq_s8(v50, xmmword_29D3D6550);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v54)), 14)).i32[1])
      {
        *(v41 + v29 + 3000) = v35 == v29;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v54)), 14)).i8[5])
      {
        *(v41 + v29 + 3600) = v33 == v29;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v50, xmmword_29D3D6540))))).i8[6])
      {
        *(v38 + v29 + 2400) = v32 == v29;
        *(v38 + v29 + 3000) = v87 == v29;
      }

      v30 += 16;
      v29 += 9600;
    }

    while (v30 != 32);
    goto LABEL_90;
  }

  if (v26 == v27)
  {
    v28 = *(this + 35);
    LODWORD(v4.f64[0]) = *(v28 + 600 * v24 + 96);
    v55 = *(this + 112);
    if (*v4.f64 <= *(v28 + 600 * v55 + 96))
    {
      goto LABEL_91;
    }

    goto LABEL_60;
  }

LABEL_90:
  v55 = *v2;
LABEL_91:
  if (v55)
  {
    v56 = *(this + 116);
    if (v56 >= 1 && !*(this + 118) && (v24 || *(this + 119) >= 1))
    {
      v57 = *(this + 117);
      if (v56 <= v57)
      {
        if (v56 != v57)
        {
          return *v4.f64;
        }

        v58 = *(this + 35);
        LODWORD(v4.f64[0]) = *(v58 + 600 * v55 + 96);
        if (*v4.f64 <= *(v58 + 600 * v25 + 96))
        {
          return *v4.f64;
        }
      }

      else
      {
        v58 = *(this + 35);
      }

      v59 = 0;
      v60 = 0;
      v61 = 600 * v55 - 9600;
      v62 = 600 * v55 - 9000;
      v63 = 600 * v55 - 8400;
      v64 = 600 * v55 - 600;
      v65 = 600 * v55 - 7800;
      v66 = 600 * v55 - 1200;
      v67 = 600 * v55 - 7200;
      v68 = v58 + 7186;
      v69 = 600 * v55 - 6600;
      v70 = 600 * v55 - 6000;
      v71 = 600 * v55 - 1800;
      v72 = v58 + 5386;
      v73 = 600 * v55 - 5400;
      v74 = v58 + 4186;
      v75 = 600 * v55 - 4800;
      LODWORD(v4.f64[0]) = 14;
      v76 = 600 * v55 - 4200;
      v77 = 600 * v55 - 3600;
      v78 = 600 * v55 - 3000;
      v79 = 600 * v55 - 2400;
      v80 = vdupq_n_s64(0x1FuLL);
      do
      {
        v81 = vdupq_n_s64(v60);
        v82 = vorrq_s8(v81, xmmword_29D3D65B0);
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v80, v82)), 14), 14).u8[0])
        {
          *(v58 + v59 + 1186) = v64 == v59;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v82)), 14), 14).i8[1])
        {
          *(v58 + v59 + 1786) = v66 == v59;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v81, xmmword_29D3D65A0)))), 14).i8[2])
        {
          *(v58 + v59 + 2386) = v71 == v59;
          *(v58 + v59 + 2986) = v79 == v59;
        }

        v83 = vorrq_s8(v81, xmmword_29D3D6590);
        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v83)), 14)).i32[1])
        {
          *(v58 + v59 + 3586) = v78 == v59;
        }

        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v83)), 14)).i8[5])
        {
          *(v74 + v59) = v77 == v59;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v81, xmmword_29D3D6580))))).i8[6])
        {
          *(v74 + v59 + 600) = v76 == v59;
          *(v72 + v59) = v75 == v59;
        }

        v84 = vorrq_s8(v81, xmmword_29D3D6570);
        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v84)), 14), 14).u8[0])
        {
          *(v72 + v59 + 600) = v73 == v59;
        }

        if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v84)), 14), 14).i8[1])
        {
          *(v72 + v59 + 1200) = v70 == v59;
        }

        if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v81, xmmword_29D3D6560)))), 14).i8[2])
        {
          *(v68 + v59) = v69 == v59;
          *(v72 + v59 + 2400) = v67 == v59;
        }

        v85 = vorrq_s8(v81, xmmword_29D3D6550);
        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v85)), 14)).i32[1])
        {
          *(v72 + v59 + 3000) = v65 == v59;
        }

        if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v85)), 14)).i8[5])
        {
          *(v72 + v59 + 3600) = v63 == v59;
        }

        if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v81, xmmword_29D3D6540))))).i8[6])
        {
          *(v68 + v59 + 2400) = v62 == v59;
          *(v68 + v59 + 3000) = v61 == v59;
        }

        v60 += 16;
        v59 += 9600;
      }

      while (v60 != 32);
    }
  }

  return *v4.f64;
}

void MTPathStates::checkForLonelyHighRestingThumb(MTPathStates *this)
{
  v1 = *(this + 112);
  if (v1 && !*(this + 116) && *(this + 119) + *(this + 118) == 1 || (v1 = *(this + 113)) != 0 && !*(this + 117) && *(this + 118) + *(this + 119) == 1)
  {
    MTPathStates::assignLonelyHighRestingThumb(this, v1);
  }
}

void MTPathStates::tasksFilterAndPixelatePositions(uint64_t *a1, uint64_t a2, int a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a3 >= 1)
  {
    v8 = (a2 + 16);
    v9 = a3;
    a4.i64[0] = 67109120;
    do
    {
      v11 = *v8;
      v8 += 24;
      v10 = v11;
      if ((v11 & 0x80000000) != 0 || (v12 = a1[35], 0x2FC962FC962FC963 * ((a1[36] - v12) >> 3) <= v10))
      {
        v13 = MTLoggingPlugin();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v16 = v10;
          _os_log_error_impl(&dword_29D381000, v13, OS_LOG_TYPE_ERROR, "Invalid path_id %d, dropping contact", buf, 8u);
        }
      }

      else
      {
        MTParserPath::filterContactForScreenUI(v12 + 600 * v10, a1, a1[5], (a1 + 6), a1 + 180, a4, a5, a6, a7);
      }

      --v9;
    }

    while (v9);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void MTPathStates::assignLonelyHighRestingThumb(MTPathStates *this, unsigned int a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v4 = *(this + 35) + 600 * a2;
  v5 = *(v4 + 232);
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 1);
    v8 = v7 - v5;
    v9 = *(v4 + 396);
    if (*(this + 492))
    {
      v10 = "Yes";
    }

    else
    {
      v10 = "No";
    }

    v11 = v7 - *(this + 64);
    v43 = 136317698;
    v44 = "[Debug] ";
    v45 = 2080;
    v46 = "";
    v47 = 2080;
    v48 = "assignLonelyHighRestingThumb";
    v49 = 1024;
    v50 = a2;
    v51 = 2048;
    v52 = v8;
    v53 = 2048;
    v54 = qword_2A17A1DA8;
    v55 = 2048;
    v56 = v9;
    v57 = 2048;
    v58 = 0x4000000000000000;
    v59 = 2080;
    v60 = v10;
    v61 = 2048;
    v62 = v11;
    v63 = 2048;
    v64 = qword_2A17A1DB0;
    _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [MTZoom] Thumb path P%d: Touch duration = %.3f sec (> %.3f sec for RT), Discounted distance = %.3f mm (< %.3f mm for RT), Thumb touched down with finger = %s (No for RT) , Time since last finger liftoff = %.3f sec (> %.3f sec for RT)", &v43, 0x6Cu);
  }

  v12 = *(this + 1);
  if (*&qword_2A17A1DA8 < v12 - v5 && *(v4 + 396) < 2.0 && (*(this + 492) & 1) == 0 && v12 - *(this + 64) > *&qword_2A17A1DB0)
  {
    v13 = MTLoggingPlugin();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v43 = 136315906;
      v44 = "[Debug] ";
      v45 = 2080;
      v46 = "";
      v47 = 2080;
      v48 = "assignLonelyHighRestingThumb";
      v49 = 1024;
      v50 = a2;
      _os_log_impl(&dword_29D381000, v13, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [MTZoom] Marking thumb path P%d as resting thumb", &v43, 0x26u);
    }

    v14 = 0;
    v15 = 0;
    v16 = 600 * a2 - 9600;
    v17 = *(this + 35);
    v18 = 600 * a2 - 9000;
    v19 = 600 * a2 - 8400;
    v20 = 600 * a2 - 600;
    v21 = 600 * a2 - 7800;
    v22 = 600 * a2 - 1200;
    v23 = 600 * a2 - 7200;
    v24 = v17 + 7186;
    v25 = 600 * a2 - 6600;
    v26 = 600 * a2 - 6000;
    v27 = 600 * a2 - 1800;
    v28 = v17 + 5386;
    v29 = 600 * a2 - 5400;
    v30 = v17 + 4186;
    v31 = 600 * a2 - 4800;
    v32 = 600 * a2 - 4200;
    v33 = 600 * a2 - 3600;
    v34 = 600 * a2 - 3000;
    v35 = 600 * a2 - 2400;
    v36 = vdupq_n_s64(0x1FuLL);
    do
    {
      v37 = vdupq_n_s64(v15);
      v38 = vorrq_s8(v37, xmmword_29D3D65B0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v36, v38)), 14), 14).u8[0])
      {
        *(v17 + v14 + 1186) = v20 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v38)), 14), 14).i8[1])
      {
        *(v17 + v14 + 1786) = v22 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v37, xmmword_29D3D65A0)))), 14).i8[2])
      {
        *(v17 + v14 + 2386) = v27 == v14;
        *(v17 + v14 + 2986) = v35 == v14;
      }

      v39 = vorrq_s8(v37, xmmword_29D3D6590);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v39)), 14)).i32[1])
      {
        *(v17 + v14 + 3586) = v34 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v39)), 14)).i8[5])
      {
        *(v30 + v14) = v33 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v37, xmmword_29D3D6580))))).i8[6])
      {
        *(v30 + v14 + 600) = v32 == v14;
        *(v28 + v14) = v31 == v14;
      }

      v40 = vorrq_s8(v37, xmmword_29D3D6570);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v40)), 14), 14).u8[0])
      {
        *(v28 + v14 + 600) = v29 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v40)), 14), 14).i8[1])
      {
        *(v28 + v14 + 1200) = v26 == v14;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v37, xmmword_29D3D6560)))), 14).i8[2])
      {
        *(v24 + v14) = v25 == v14;
        *(v28 + v14 + 2400) = v23 == v14;
      }

      v41 = vorrq_s8(v37, xmmword_29D3D6550);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v41)), 14)).i32[1])
      {
        *(v28 + v14 + 3000) = v21 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v41)), 14)).i8[5])
      {
        *(v28 + v14 + 3600) = v19 == v14;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v37, xmmword_29D3D6540))))).i8[6])
      {
        *(v24 + v14 + 2400) = v18 == v14;
        *(v24 + v14 + 3000) = v16 == v14;
      }

      v15 += 16;
      v14 += 9600;
    }

    while (v15 != 32);
  }

  v42 = *MEMORY[0x29EDCA608];
}

uint64_t MTPathStates::setRestingThumbFromPalmRestingHand(MTPathStates *this, unsigned int a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 600 * a2 - 9600;
  v5 = 600 * a2 - 9000;
  v6 = *(this + 35);
  v7 = 600 * a2 - 8400;
  v8 = 600 * a2 - 600;
  v9 = 600 * a2 - 7800;
  v10 = 600 * a2 - 1200;
  v11 = 600 * a2 - 7200;
  result = v6 + 7186;
  v13 = 600 * a2 - 6600;
  v14 = 600 * a2 - 6000;
  v15 = 600 * a2 - 1800;
  v16 = v6 + 5386;
  v17 = 600 * a2 - 5400;
  v18 = v6 + 4186;
  v19 = 600 * a2 - 4800;
  v20 = 600 * a2 - 4200;
  v21 = 600 * a2 - 3600;
  v22 = 600 * a2 - 3000;
  v23 = 600 * a2 - 2400;
  v24 = vdupq_n_s64(0x1FuLL);
  do
  {
    v25 = vdupq_n_s64(v3);
    v26 = vorrq_s8(v25, xmmword_29D3D65B0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v24, v26)), 14), 14).u8[0])
    {
      *(v6 + v2 + 1186) = v8 == v2;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v26)), 14), 14).i8[1])
    {
      *(v6 + v2 + 1786) = v10 == v2;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v25, xmmword_29D3D65A0)))), 14).i8[2])
    {
      *(v6 + v2 + 2386) = v15 == v2;
      *(v6 + v2 + 2986) = v23 == v2;
    }

    v27 = vorrq_s8(v25, xmmword_29D3D6590);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v27)), 14)).i32[1])
    {
      *(v6 + v2 + 3586) = v22 == v2;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v27)), 14)).i8[5])
    {
      *(v18 + v2) = v21 == v2;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v25, xmmword_29D3D6580))))).i8[6])
    {
      *(v18 + v2 + 600) = v20 == v2;
      *(v16 + v2) = v19 == v2;
    }

    v28 = vorrq_s8(v25, xmmword_29D3D6570);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v28)), 14), 14).u8[0])
    {
      *(v16 + v2 + 600) = v17 == v2;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v28)), 14), 14).i8[1])
    {
      *(v16 + v2 + 1200) = v14 == v2;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v25, xmmword_29D3D6560)))), 14).i8[2])
    {
      *(result + v2) = v13 == v2;
      *(v16 + v2 + 2400) = v11 == v2;
    }

    v29 = vorrq_s8(v25, xmmword_29D3D6550);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v29)), 14)).i32[1])
    {
      *(v16 + v2 + 3000) = v9 == v2;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v29)), 14)).i8[5])
    {
      *(v16 + v2 + 3600) = v7 == v2;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v25, xmmword_29D3D6540))))).i8[6])
    {
      *(result + v2 + 2400) = v5 == v2;
      *(result + v2 + 3000) = v4 == v2;
    }

    v3 += 16;
    v2 += 9600;
  }

  while (v3 != 32);
  return result;
}

uint64_t MTPathStates::tasksPostPixelatedPositions(float32x2_t *this)
{
  if ((this[3].i32[0] - 1000) <= 0xBB7)
  {
    if ((this[3].i8[4] & 2) != 0)
    {
      MTPathStates::checkForRestingThumb(this);
    }

    v2 = *&this[35] + 644;
    for (i = 1; i != 32; ++i)
    {
      if (*v2)
      {
        v4 = this[55].i8[4] == 1 && i == this[48].i32[1];
        *(v2 + 538) = *(v2 + 537);
        *(v2 + 537) = v4;
      }

      v2 += 600;
    }

    if (!this[59].i32[1] && !this[59].i32[0] || !this[58].i32[1] && !this[58].i32[0])
    {
      MTPathStates::updateHRTDiscountedDisplacement_mm(this);
      MTPathStates::breakOutOfRestingThumbForLargeDiscountedDisplacement(this);
    }

    MTPathStates::updateSpeedSymmetriesOfAllPaths(this);
    MTPathStates::breakOutOfRestingThumbBasedOnSymmetry(this);
    v5 = 644;
    v6 = 31;
    do
    {
      v7 = (*&this[35] + v5);
      v9 = *v7;
      v8 = (v7 - 11);
      if (v9)
      {
        MTParserPath::rejectRestingThumbFromRestingHand(v8);
      }

      v5 += 600;
      --v6;
    }

    while (v6);
  }

  return MTPathStatesBasic::tasksPostPixelatedPositions(this);
}

float MTPathStates::updateHRTDiscountedDisplacement_mm(MTPathStates *this)
{
  if ((*(this + 6) - 1000) <= 0xBB7)
  {
    result = fmax(((MTPathStates::getHighRestingThumbDisplacement(this).f32[0] + *(this + 122)) + -0.14), 0.0);
    *(this + 122) = result;
  }

  return result;
}

double MTPathStates::breakOutOfRestingThumbForLargeDiscountedDisplacement(MTPathStates *this)
{
  v1 = *(this + 114);
  if (v1 || (v1 = *(this + 115)) != 0)
  {
    v2 = *(this + 35) + 600 * v1;
    if (!*(v2 + 44) || (LODWORD(result) = *(this + 122), *&result > 8.0))
    {
      *(v2 + 586) = 0;
      return MTParserPath::clearPathSpeedSymmetries(v2);
    }
  }

  return result;
}

void MTPathStates::updateSpeedSymmetriesOfAllPaths(MTPathStates *this)
{
  v2 = 1;
  v3 = 672;
  do
  {
    v4 = *(this + 35);
    v5 = (v4 + v3);
    if (v2 == *(v4 + v3 - 32) && *v5 > 0.0)
    {
      v6 = (v5 - 18);
      if ((MTParserPath::isFingerOrRestingContact((v5 - 18)) || MTParserPath::isThumbAlongEdgeContact(v6)) && (*(v4 + v3 - 28) - 3) <= 1)
      {
        MTPathStates::computePathAndFingerSpeedSymmetries(this, v2, v7);
      }
    }

    v8 = *(this + 35) + v3;
    if ((*(v8 - 28) - 3) >= 2)
    {
      MTParserPath::clearPathSpeedSymmetries((v8 - 72));
    }

    ++v2;
    v3 += 600;
  }

  while (v2 != 32);
}

uint64_t MTPathStates::breakOutOfRestingThumbBasedOnSymmetry(uint64_t this)
{
  v1 = *(this + 280) + 644;
  v2 = 31;
  do
  {
    if (*v1)
    {
      if (*(v1 + 537) == 1)
      {
        v3 = *(v1 + 544);
        if (v3 < *(v1 + 548))
        {
          v3 = *(v1 + 548);
        }

        if (v3 > 0.765 && (*(this + 372) & 1) == 0)
        {
          *(v1 + 538) = 1;
          *(v1 + 537) = 0;
        }
      }

      if (*(v1 + 542) == 1 && *(v1 + 552) > 0.87)
      {
        *(v1 + 542) = 0;
      }
    }

    v1 += 600;
    --v2;
  }

  while (v2);
  return this;
}

void MTPathStates::computePathAndFingerSpeedSymmetries(MTPathStates *this, int a2, double a3)
{
  v59 = 0;
  v60 = 0.0;
  v57 = 0;
  v58 = 0;
  v5 = 0.0;
  v6 = 1;
  v54 = 0;
  v55 = 0;
  v7 = 1136;
  v56 = 0;
  do
  {
    v8 = *(this + 35);
    v9 = v8 + v7;
    v10 = (v8 + v7 - 496);
    if (v6 == *v10)
    {
      LODWORD(a3) = *(v9 - 464);
      if (*&a3 > 0.0)
      {
        v11 = (v9 - 536);
        if ((MTParserPath::isFingerOrRestingContact((v9 - 536)) || MTParserPath::isThumbAlongEdgeContact(v11)) && (*(v8 + v7 - 492) - 3) <= 1)
        {
          if (*v10 == a2)
          {
            v5 = *(v8 + v7);
            a3 = *(v8 + v7 - 8);
            v60 = a3;
          }

          else
          {
            v12 = *(v8 + v7 - 8);
            LODWORD(__src) = *(v8 + v7);
            v13 = v58;
            if (v58 >= v59)
            {
              v15 = (v58 - v57) >> 3;
              if ((v15 + 1) >> 61)
              {
                std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
              }

              v16 = (v59 - v57) >> 2;
              if (v16 <= v15 + 1)
              {
                v16 = v15 + 1;
              }

              if (v59 - v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v17 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v16;
              }

              if (v17)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<MTPoint>>(&v57, v17);
              }

              *(8 * v15) = v12;
              v14 = (8 * v15 + 8);
              v18 = (8 * v15 - (v58 - v57));
              memcpy(v18, v57, v58 - v57);
              v19 = v57;
              v57 = v18;
              v58 = v14;
              v59 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *v58 = v12;
              v14 = v13 + 2;
            }

            v58 = v14;
            std::vector<float>::push_back[abi:ne200100](&v54, &__src);
          }
        }
      }
    }

    ++v6;
    v7 += 600;
  }

  while (v6 != 32);
  v20 = 126 - 2 * __clz((v55 - v54) >> 2);
  if (v55 == v54)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v54, v55, &__src, v21, 1, a3);
  v22 = 126 - 2 * __clz((v58 - v57) >> 3);
  if (v58 == v57)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,false>(v57, v58, &__src, v23, 1);
  __src = 0;
  v52 = 0;
  v53 = 0;
  std::vector<MTPoint>::__init_with_size[abi:ne200100]<MTPoint*,MTPoint*>(&__src, v57, v58, (v58 - v57) >> 3);
  std::vector<MTPoint>::insert(&__src, __src, &v60);
  v46 = 0;
  v47 = 0;
  __p = 0;
  std::vector<MTPoint>::__init_with_size[abi:ne200100]<MTPoint*,MTPoint*>(&__p, __src, v52, (v52 - __src) >> 3);
  MTPathStates::getCosineThetas(&__p, &v48);
  v24 = v48;
  v25 = v49;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  v26 = 0.0;
  v27 = 0.0;
  if (v5 > 10.0)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v42, v54, v55, (v55 - v54) >> 2);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v39, v24, v25, (v25 - v24) >> 2);
    v28 = v42;
    if (v43 != v42)
    {
      v29 = sqrtf(v5 * *v42);
      v30 = 1.0;
      if (v40 != v39)
      {
        v30 = *v39;
      }

      v26 = (v29 / (((v5 + *v42) * 0.5) + 1.0)) * v30;
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
      v28 = v42;
    }

    if (v28)
    {
      v43 = v28;
      operator delete(v28);
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v36, v54, v55, (v55 - v54) >> 2);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v31 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v33, v24, v25, (v25 - v24) >> 2);
    MTPathStates::compute_3F_path_speed_symmetry(v5, v31, &v36, &v33);
    v27 = v32;
    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  MTParserPath::setPathSpeedSymmetries((*(this + 35) + 600 * a2), v26, v27);
  if (__src)
  {
    v52 = __src;
    operator delete(__src);
  }

  if (v24)
  {
    operator delete(v24);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void sub_29D38EB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t MTPathStates::getHighRestingThumbDisplacement(MTPathStates *this)
{
  v1 = *(this + 114);
  if (v1 || (v1 = *(this + 115)) != 0)
  {
    v2 = *(this + 35) + 600 * v1;
    v3 = vsub_f32(*(v2 + 92), *(v2 + 188));
    result = vmul_f32(v3, v3);
    result.f32[0] = sqrtf(vaddv_f32(result));
  }

  else
  {
    return 0;
  }

  return result;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

char *std::vector<MTPoint>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v26 = 0u;
    v27 = 0u;
    v11 = ((v6 - v10) >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v28 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTPoint>>(a1, v14);
    }

    *&v26 = 0;
    *(&v26 + 1) = 8 * v15;
    v27 = (8 * v15);
    std::__split_buffer<MTPoint>::emplace_back<MTPoint const&>(&v26, a3);
    v16 = *(&v26 + 1);
    memcpy(v27, v4, a1[1] - v4);
    v17 = *a1;
    v18 = *(&v26 + 1);
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v21;
    *(&v27 + 1) = v22;
    *&v26 = v21;
    *(&v26 + 1) = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_29D38EE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTPathStates::getCosineThetas(float **a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v6 = v4 + 2;
      if (v3 != v4 + 2)
      {
        v7 = v4 + 2;
        do
        {
          v8 = *v4;
          v9 = v4[1];
          v10 = sqrtf((v8 * v8) + (v9 * v9));
          v11 = 1.0;
          if (v10 > 0.0)
          {
            v12 = *v7;
            v13 = v7[1];
            v14 = sqrtf((v12 * v12) + (v13 * v13));
            if (v14 > 0.0)
            {
              v11 = ((v9 * v13) + (v8 * v12)) / (v10 * v14);
            }
          }

          v15 = v11;
          std::vector<float>::push_back[abi:ne200100](a2, &v15);
          v7 += 2;
          v3 = a1[1];
        }

        while (v7 != v3);
      }

      v4 += 2;
    }

    while (v6 != v3);
  }
}

void sub_29D38EFA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double MTPathStates::compute_2F_path_speed_symmetry(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3;
  if (*(a3 + 8) == *a3)
  {
    return 0.0;
  }

  v5 = sqrtf(*v4 * a1);
  v6 = (*v4 + a1) * 0.5;
  v7 = 1.0;
  if (*(a4 + 8) != *a4)
  {
    v7 = **a4;
  }

  *&result = (v5 / (v6 + 1.0)) * v7;
  return result;
}

void MTPathStates::compute_3F_path_speed_symmetry(float a1, uint64_t a2, void *a3, void *a4)
{
  if (a3[1] - *a3 >= 5uLL)
  {
    cbrtf((**a3 * a1) * *(*a3 + 4));
    if (a4[1] - *a4 >= 9uLL)
    {
      v5 = ((**a4 + *(*a4 + 4)) + *(*a4 + 8)) / 3.0;
    }
  }
}

float MTPathStates::get_3F_IncludingThumbSpeedSymmetry(MTPathStates *this)
{
  v2 = 1;
  for (i = 1192; ; i += 600)
  {
    v4 = *(this + 35);
    v5 = v4 + i;
    if (v2 == *(v4 + i - 552) && *(v5 - 520) > 0.0 && MTParserPath::isThumbContact((v5 - 592)) && (*(v4 + i - 548) - 3) <= 1)
    {
      break;
    }

    if (++v2 == 32)
    {
      return 0.0;
    }
  }

  return *(v4 + i);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F34C4A8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float *std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v57 = v10[1];
          v58 = *(a2 - 1);
          if (v57 > v58)
          {
            v59 = *(v10 + 1);
          }

          else
          {
            v59 = *(a2 - 1);
          }

          if (v57 > v58)
          {
            v57 = *(a2 - 1);
          }

          *(a2 - 1) = v57;
          *(v10 + 1) = v59;
          v60 = *(a2 - 1);
          if (v60 > *v10)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = *v10;
          }

          if (v60 > *v10)
          {
            v60 = *v10;
          }

          *(a2 - 1) = v60;
          v63 = *v10;
          v62 = v10[1];
          if (v61 <= v62)
          {
            v63 = v10[1];
            v62 = v61;
          }

          *v10 = v63;
          v10[1] = v62;
          return result;
        case 4:
          v87 = v10[1];
          v86 = v10[2];
          if (*v10 > v86)
          {
            v88 = *v10;
          }

          else
          {
            v88 = v10[2];
          }

          if (*v10 <= v86)
          {
            v86 = *v10;
          }

          v10[2] = v86;
          *v10 = v88;
          v89 = *(a2 - 1);
          if (v87 > v89)
          {
            v90 = v87;
          }

          else
          {
            v90 = *(a2 - 1);
          }

          if (v87 <= v89)
          {
            v89 = v87;
          }

          *(a2 - 1) = v89;
          v91 = *v10;
          if (*v10 > v90)
          {
            v92 = *v10;
          }

          else
          {
            v92 = v90;
          }

          if (*v10 > v90)
          {
            v91 = v90;
          }

          *v10 = v92;
          v10[1] = v91;
          v93 = v10[2];
          v94 = *(a2 - 1);
          if (v93 > v94)
          {
            v95 = v10[2];
          }

          else
          {
            v95 = *(a2 - 1);
          }

          if (v93 > v94)
          {
            v93 = *(a2 - 1);
          }

          *(a2 - 1) = v93;
          v96 = v10[1];
          if (v96 > v95)
          {
            v97 = v10[1];
          }

          else
          {
            v97 = v95;
          }

          if (v96 > v95)
          {
            v96 = v95;
          }

          v10[1] = v97;
          v10[2] = v96;
          return result;
        case 5:
          v64 = *v10;
          v65 = v10[1];
          if (*v10 > v65)
          {
            v66 = *v10;
          }

          else
          {
            v66 = v10[1];
          }

          if (*v10 > v65)
          {
            v64 = v10[1];
          }

          *v10 = v66;
          v10[1] = v64;
          v67 = v10[3];
          v68 = *(a2 - 1);
          if (v67 > v68)
          {
            v69 = *(v10 + 3);
          }

          else
          {
            v69 = *(a2 - 1);
          }

          if (v67 > v68)
          {
            v67 = *(a2 - 1);
          }

          *(a2 - 1) = v67;
          *(v10 + 3) = v69;
          v70 = *(a2 - 1);
          v71 = v10[2];
          if (v70 > v71)
          {
            v72 = *(a2 - 1);
          }

          else
          {
            v72 = v10[2];
          }

          if (v70 > v71)
          {
            v70 = v10[2];
          }

          *(a2 - 1) = v70;
          v74 = *(v10 + 2);
          v73 = v10[3];
          v75 = v10[1];
          if (v72 <= v73)
          {
            v74 = *(v10 + 3);
            v73 = v72;
          }

          *(v10 + 2) = v74;
          v10[3] = v73;
          v76 = *(a2 - 1);
          if (v75 > v76)
          {
            v77 = v75;
          }

          else
          {
            v77 = *(a2 - 1);
          }

          if (v75 <= v76)
          {
            v76 = v75;
          }

          *(a2 - 1) = v76;
          v78 = *v10;
          v80 = v10[2];
          v79 = v10[3];
          if (v79 > *v10)
          {
            v81 = v10[3];
          }

          else
          {
            v81 = *v10;
          }

          if (v79 > *v10)
          {
            v79 = *v10;
          }

          if (v81 <= v80)
          {
            v78 = v10[2];
            v80 = v81;
          }

          if (v79 > v77)
          {
            v82 = v79;
          }

          else
          {
            v82 = v77;
          }

          if (v79 > v77)
          {
            v79 = v77;
          }

          if (v82 <= v80)
          {
            v77 = v80;
          }

          *v10 = v78;
          v10[1] = v77;
          if (v82 > v80)
          {
            v83 = v80;
          }

          else
          {
            v83 = v82;
          }

          v10[2] = v83;
          v10[3] = v79;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v10;
        if (v84 > *v10)
        {
          *v10 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v10[v14];
      v53 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v53)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v54 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2, a6);
    if ((v55 & 1) == 0)
    {
      goto LABEL_93;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v10, v54);
    v10 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v54 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v54, a3, -v12, a5 & 1);
      v10 = v54 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v98 = v10 + 1;
  v100 = v10 == a2 || v98 == a2;
  if (a5)
  {
    if (!v100)
    {
      v101 = 0;
      v102 = v10;
      do
      {
        v104 = *v102;
        v103 = v102[1];
        v102 = v98;
        if (v103 > v104)
        {
          v105 = v101;
          while (1)
          {
            *(v10 + v105 + 4) = v104;
            if (!v105)
            {
              break;
            }

            v104 = *(v10 + v105 - 4);
            v105 -= 4;
            if (v103 <= v104)
            {
              v106 = (v10 + v105 + 4);
              goto LABEL_194;
            }
          }

          v106 = v10;
LABEL_194:
          *v106 = v103;
        }

        v98 = v102 + 1;
        v101 += 4;
      }

      while (v102 + 1 != a2);
    }
  }

  else if (!v100)
  {
    do
    {
      v108 = *v9;
      v107 = v9[1];
      v9 = v98;
      if (v107 > v108)
      {
        v109 = v98;
        do
        {
          *v109 = v108;
          v108 = *(v109 - 2);
          --v109;
        }

        while (v107 > v108);
        *v109 = v107;
      }

      ++v98;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_29D3D65B0;
      v18 = xmmword_29D3D65A0;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_29D3D65B0;
    v27 = xmmword_29D3D65A0;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}