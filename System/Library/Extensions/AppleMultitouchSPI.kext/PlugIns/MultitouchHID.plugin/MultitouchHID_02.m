void MTSLGLogger::removeControlService(MTSLGLogger *this)
{
  if (*(this + 4))
  {
    MTDeviceStop();
    v2 = *(this + 4);
    MTDeviceRelease();
    *(this + 4) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    dispatch_source_cancel(v3);
    *(this + 5) = 0;
  }
}

void MTSLGLogger::addControlService(MTSLGLogger *this)
{
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "StudyLog logger: control interface service appeared", v8, 2u);
  }

  MTSLGLogger::removeControlService(this);
  v3 = MTDeviceCreateFromService();
  *(this + 4) = v3;
  if (!v3)
  {
    MTSLGLogger::addControlService();
LABEL_12:
    MTSLGLogger::removeControlService(this);
    return;
  }

  if (MTDeviceStart())
  {
    MTSLGLogger::addControlService();
    goto LABEL_12;
  }

  v4 = *(this + 4);
  v5 = *(this + 1);
  MultitouchDispatchSource = MTDeviceCreateMultitouchDispatchSource();
  *(this + 5) = MultitouchDispatchSource;
  if (!MultitouchDispatchSource)
  {
    MTSLGLogger::addControlService();
    goto LABEL_12;
  }

  v7 = *(this + 4);
  if ((MTRegisterProcessedFrameCallback() & 1) == 0)
  {
    MTSLGLogger::addControlService();
    goto LABEL_12;
  }
}

void MTSLGLoggerProcessedFrameCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 3128))
  {
    v5 = 0;
    v6 = a2 + 3136;
    do
    {
      MTSLGLogger::logImages(a3, *(v6 + 8 * v5) + 40, *(v6 + 8 * v5));
      ++v5;
    }

    while (v5 < *(a2 + 3128));
  }
}

void *MTSLGLogger::isSLGEnabled(MTSLGLogger *this)
{
  v1 = NSSelectorFromString(&cfstr_Sharedinstance.isa);
  v2 = NSSelectorFromString(&cfstr_Isenabled.isa);
  result = [_MergedGlobals performSelector:v1];
  if (result)
  {
    return ([result performSelector:v2] != 0);
  }

  return result;
}

Class ___ZN11MTSLGLogger7prepareEv_block_invoke()
{
  result = NSClassFromString(&cfstr_Slglog.isa);
  _MergedGlobals = result;
  return result;
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void MTPListGestureConfig::MTPListGestureConfig(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MTGestureConfig::MTGestureConfig(a1, a2, a3, a4, a5);
}

{
  MTGestureConfig::MTGestureConfig(a1, a2, a3, a4, a5);
}

void MTPListGestureConfig::~MTPListGestureConfig(MTPListGestureConfig *this)
{
  *this = &unk_2A24122F0;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
    *(this + 12) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {
    CFRelease(v5);
    *(this + 13) = 0;
  }

  v6 = *(this + 14);
  if (v6)
  {
    CFRelease(v6);
    *(this + 14) = 0;
  }

  MTGestureConfig::~MTGestureConfig(this);
}

{
  MTPListGestureConfig::~MTPListGestureConfig(this);

  JUMPOUT(0x29ED547D0);
}

void MTPListGestureConfig::setParseErrorString(MTPListGestureConfig *this, CFStringRef theString)
{
  v4 = *(this + 14);
  if (v4 == theString)
  {
    if (theString)
    {

      CFRelease(theString);
    }
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *(this + 14) = theString;
    if (theString)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0);
      printf("%s", CStringPtr);
    }
  }
}

CFComparisonResult MTPListGestureConfig::eventTypeCFStringToCode(MTPListGestureConfig *this, CFStringRef theString1)
{
  if (!theString1)
  {
    return 0;
  }

  if (CFStringCompare(theString1, @"Mouse Point", 1uLL) == kCFCompareEqualTo)
  {
    return 68;
  }

  if (CFStringCompare(theString1, @"Mouse Down", 1uLL) == kCFCompareEqualTo)
  {
    return 65;
  }

  if (CFStringCompare(theString1, @"Mouse Up", 1uLL) == kCFCompareEqualTo)
  {
    return 66;
  }

  if (CFStringCompare(theString1, @"Mouse Click", 1uLL) == kCFCompareEqualTo)
  {
    return 67;
  }

  if (CFStringCompare(theString1, @"Mouse Double Click", 1uLL) == kCFCompareEqualTo)
  {
    return 72;
  }

  if (CFStringCompare(theString1, @"Mouse Drag", 1uLL) == kCFCompareEqualTo)
  {
    return 69;
  }

  if (CFStringCompare(theString1, @"Scroll", 1uLL) == kCFCompareEqualTo)
  {
    return 70;
  }

  if (CFStringCompare(theString1, @"Scroll To Edge", 1uLL) == kCFCompareEqualTo)
  {
    return 78;
  }

  if (CFStringCompare(theString1, @"Orientation", 1uLL) == kCFCompareEqualTo)
  {
    return 71;
  }

  if (CFStringCompare(theString1, @"Zoom Toggle", 1uLL) == kCFCompareEqualTo)
  {
    return 73;
  }

  if (CFStringCompare(theString1, @"Key Down", 1uLL) == kCFCompareEqualTo)
  {
    return 129;
  }

  if (CFStringCompare(theString1, @"Key Up", 1uLL) == kCFCompareEqualTo)
  {
    return 130;
  }

  if (CFStringCompare(theString1, @"Key Stroke", 1uLL) == kCFCompareEqualTo)
  {
    return 128;
  }

  if (CFStringCompare(theString1, @"Swipe", 1uLL) == kCFCompareEqualTo)
  {
    return 133;
  }

  if (CFStringCompare(theString1, @"Fluid Navigation", 1uLL) == kCFCompareEqualTo)
  {
    return 36;
  }

  if (CFStringCompare(theString1, @"Fluid Dock", 1uLL) == kCFCompareEqualTo)
  {
    return 37;
  }

  if (CFStringCompare(theString1, @"Fluid Notification", 1uLL) == kCFCompareEqualTo)
  {
    return 38;
  }

  if (CFStringCompare(theString1, @"Fluid Notification Alt", 1uLL) == kCFCompareEqualTo)
  {
    return 39;
  }

  if (CFStringCompare(theString1, @"Show Definition", 1uLL) == kCFCompareEqualTo)
  {
    return 140;
  }

  if (CFStringCompare(theString1, @"Key Consumer App", 1uLL) == kCFCompareEqualTo || CFStringCompare(theString1, @"Symbolic Hotkey", 1uLL) == kCFCompareEqualTo)
  {
    return 134;
  }

  if (CFStringCompare(theString1, @"System", 1uLL) == kCFCompareEqualTo)
  {
    return 135;
  }

  if (CFStringCompare(theString1, @"Gesture Ended", 1uLL) == kCFCompareEqualTo)
  {
    return 32;
  }

  if (CFStringCompare(theString1, @"Gesture Started", 1uLL) == kCFCompareEqualTo)
  {
    return 33;
  }

  result = CFStringCompare(theString1, @"Window Move", 1uLL);
  if (result)
  {
    CFStringCompare(theString1, @"Window Size", 1uLL);
    return 0;
  }

  return result;
}

uint64_t MTPListGestureConfig::keyCodeCFStringToCode(MTPListGestureConfig *this, CFStringRef theString1)
{
  v3 = 0;
  while (1)
  {
    v4 = gUSBKeyNames[v3];
    if (v4)
    {
      if (CFStringCompare(theString1, v4, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (++v3 == 256)
    {
      LOWORD(v3) = 0;
      return v3;
    }
  }

  return v3;
}

uint64_t MTPListGestureConfig::modifiersCFStringToMask(MTPListGestureConfig *this, const __CFString *cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  if (CFStringFind(cf, @"Shift", 1uLL).location == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 34;
  }

  if (CFStringFind(cf, @"Cmd", 1uLL).location != -1)
  {
    v4 |= 0x88u;
  }

  if (CFStringFind(cf, @"Alt", 1uLL).location != -1)
  {
    v4 |= 0x44u;
  }

  if (CFStringFind(cf, @"Ctrl", 1uLL).location != -1)
  {
    v4 |= 0x11u;
  }

  if (CFStringFind(cf, @"Button1", 1uLL).location != -1)
  {
    v4 |= 0x100u;
  }

  if (CFStringFind(cf, @"Button2", 1uLL).location != -1)
  {
    v4 |= 0x200u;
  }

  if (CFStringFind(cf, @"Button3", 1uLL).location != -1)
  {
    v4 |= 0x400u;
  }

  if (CFStringFind(cf, @"Button4", 1uLL).location != -1)
  {
    v4 |= 0x800u;
  }

  if (CFStringFind(cf, @"Button5", 1uLL).location != -1)
  {
    v4 |= 0x1000u;
  }

  if (CFStringFind(cf, @"Button6", 1uLL).location != -1)
  {
    v4 |= 0x2000u;
  }

  if (CFStringFind(cf, @"Button7", 1uLL).location == -1)
  {
    return v4;
  }

  else
  {
    return v4 | 0x4000;
  }
}

void MTPListGestureConfig::parseCreateActionEvent(MTPListGestureConfig *a1, const __CFDictionary *cf, uint64_t a3)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
  {
    v31 = 0;
    valuePtr = 0;
    Value = CFDictionaryGetValue(cf, @"EventType");
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v10 = CFStringGetTypeID(), v9 == v10))
    {
      v11 = MTPListGestureConfig::eventTypeCFStringToCode(v10, v8);
      if (v11)
      {
        v12 = v11;
        v13 = CFDictionaryGetValue(cf, @"Modifiers");
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = CFGetTypeID(v13);
        TypeID = CFStringGetTypeID();
        if (v15 == TypeID)
        {
          v17 = MTPListGestureConfig::modifiersCFStringToMask(TypeID, v14);
          valuePtr = v17;
        }

        else
        {
          v19 = CFGetTypeID(v14);
          if (v19 != CFNumberGetTypeID())
          {
LABEL_18:
            v20 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Modifier '%@' not recognized\n", @"ERROR in PListGestureParser:", v14);
            MTPListGestureConfig::setParseErrorString(a1, v20);
LABEL_19:
            v21 = CFDictionaryGetValue(cf, @"KeyCode");
            if (v21)
            {
              v22 = v21;
              v23 = CFGetTypeID(v21);
              v24 = CFStringGetTypeID();
              if (v23 == v24)
              {
                v25 = MTPListGestureConfig::keyCodeCFStringToCode(v24, v22);
                v31 = v25;
LABEL_25:
                v29 = 0xAAAAAAAAAAAAAAAALL;
                MTActionEvent::MTActionEvent(&v29, v12, valuePtr, v25);
                v27 = *(a3 + 8);
                if (v27 >= *(a3 + 16))
                {
                  v28 = std::vector<MTActionEvent>::__emplace_back_slow_path<MTActionEvent const&>(a3, &v29);
                }

                else
                {
                  MTActionEvent::MTActionEvent(*(a3 + 8), &v29);
                  v28 = v27 + 8;
                  *(a3 + 8) = v27 + 8;
                }

                *(a3 + 8) = v28;
                return;
              }

              v26 = CFGetTypeID(v22);
              if (v26 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v22, kCFNumberSInt16Type, &v31);
                v25 = v31;
                goto LABEL_25;
              }
            }

            v25 = 0;
            goto LABEL_25;
          }

          CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
          v17 = valuePtr;
        }

        if (v17)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v18 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Unknown or unsupported %@ '%@'\n", @"ERROR in PListGestureParser:", @"EventType", v8);
    }

    else
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Action Event missing '%@' key\n", @"ERROR in PListGestureParser:", @"EventType");
    }
  }

  else
  {
    v18 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Action Event not a CFDictionary\n", @"ERROR in PListGestureParser:");
  }

  MTPListGestureConfig::setParseErrorString(a1, v18);
}

void MTPListGestureConfig::lookupOrParseActionEvents(CFDictionaryRef *a1, CFDictionaryRef theDict, void *a3)
{
  a3[1] = *a3;
  Value = CFDictionaryGetValue(theDict, @"Action");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      v8 = CFDictionaryGetValue(a1[13], v6);
      if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFArrayGetTypeID()))
      {
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          for (i = 0; i != v12; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
            MTPListGestureConfig::parseCreateActionEvent(a1, ValueAtIndex, a3);
          }
        }
      }

      else
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Action '%@' has no event array\n", @"ERROR in PListGestureParser:", v6);

        MTPListGestureConfig::setParseErrorString(a1, v15);
      }
    }
  }
}

uint64_t MTPListGestureConfig::parseGestureMotionCode(MTPListGestureConfig *this, CFDictionaryRef theDict)
{
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"Motion")) == 0 || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFStringGetTypeID()))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Gesture's '%@' key missing\n", @"ERROR in PListGestureParser:", @"Motion");
LABEL_32:
    MTPListGestureConfig::setParseErrorString(this, v7);
    return 0;
  }

  if (CFStringCompare(v4, @"Tap", 1uLL) == kCFCompareEqualTo)
  {
    return 12288;
  }

  if (CFStringCompare(v4, @"DroppedFingerTap", 1uLL) == kCFCompareEqualTo)
  {
    return 24576;
  }

  if (CFStringCompare(v4, @"DoubleTap", 1uLL) == kCFCompareEqualTo)
  {
    return 28672;
  }

  if (CFStringCompare(v4, @"Hold", 1uLL) == kCFCompareEqualTo)
  {
    return 4096;
  }

  if (CFStringCompare(v4, @"Lift", 1uLL) == kCFCompareEqualTo)
  {
    return 0x2000;
  }

  if (CFStringCompare(v4, @"Translate", 1uLL) == kCFCompareEqualTo)
  {
    return 15;
  }

  if (CFStringCompare(v4, @"Horizontal", 1uLL) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(v4, @"Vertical", 1uLL) == kCFCompareEqualTo)
  {
    return 12;
  }

  if (CFStringCompare(v4, @"Down", 1uLL) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(v4, @"Up", 1uLL) == kCFCompareEqualTo)
  {
    return 4;
  }

  if (CFStringCompare(v4, @"Left", 1uLL) == kCFCompareEqualTo)
  {
    return 2;
  }

  v6 = 1;
  if (CFStringCompare(v4, @"Right", 1uLL))
  {
    if (CFStringCompare(v4, @"LowerLeft", 1uLL) == kCFCompareEqualTo)
    {
      return 10;
    }

    if (CFStringCompare(v4, @"LowerRight", 1uLL) == kCFCompareEqualTo)
    {
      return 9;
    }

    if (CFStringCompare(v4, @"UpperLeft", 1uLL) == kCFCompareEqualTo)
    {
      return 6;
    }

    if (CFStringCompare(v4, @"UpperRight", 1uLL) == kCFCompareEqualTo)
    {
      return 5;
    }

    if (CFStringCompare(v4, @"Scale", 1uLL) == kCFCompareEqualTo)
    {
      return 48;
    }

    if (CFStringCompare(v4, @"Expand", 1uLL) == kCFCompareEqualTo)
    {
      return 16;
    }

    if (CFStringCompare(v4, @"Contract", 1uLL) == kCFCompareEqualTo)
    {
      return 32;
    }

    if (CFStringCompare(v4, @"Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 192;
    }

    if (CFStringCompare(v4, @"RotateLeft", 1uLL) == kCFCompareEqualTo)
    {
      return 64;
    }

    if (CFStringCompare(v4, @"RotateRight", 1uLL) == kCFCompareEqualTo)
    {
      return 128;
    }

    if (CFStringCompare(v4, @"Scale+Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 240;
    }

    if (CFStringCompare(v4, @"Translate+Scale", 1uLL) == kCFCompareEqualTo)
    {
      return 63;
    }

    if (CFStringCompare(v4, @"Translate+Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 207;
    }

    if (CFStringCompare(v4, @"Translate+Scale+Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 255;
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Unrecognized gesture %@ '%@'\n", @"ERROR in PListGestureParser:", @"Motion", v4);
    goto LABEL_32;
  }

  return v6;
}

uint64_t MTPListGestureConfig::parseFloatValue(MTPListGestureConfig *this, CFDictionaryRef theDict, const __CFString *key, float *a4, const __CFString *a5)
{
  result = CFDictionaryGetValue(theDict, key);
  if (result)
  {
    v10 = result;
    v11 = CFGetTypeID(result);
    if (v11 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v10, kCFNumberFloat32Type, a4))
      {
        return 1;
      }

      v12 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Corrupt %@ value in %@\n", @"ERROR in PListGestureParser:", key, a5);
    }

    else
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ %@ value should be a number in %@\n", @"ERROR in PListGestureParser:", key, a5);
    }

    MTPListGestureConfig::setParseErrorString(this, v12);
    return 0;
  }

  return result;
}

MTPListGestureConfig *MTPListGestureConfig::parseMotionSensitivity(MTPListGestureConfig *result, const __CFDictionary *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v22 = 0;
    v21 = 0.0635;
    v19 = 1.0;
    v20 = 400.0;
    if (MTPListGestureConfig::parseFloatValue(result, a2, @"Resolution_dpi", &v20, @"Motion Sensitivity"))
    {
      if (v20 != 0.0)
      {
        v6 = 25.4 / v20;
        v21 = v6;
      }
    }

    else if ((MTPListGestureConfig::parseFloatValue(v5, a2, @"Resolution_mm", &v21, @"Motion Sensitivity") & 1) == 0)
    {
      puts("Missing resolution_dpi/mm key!");
      v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Missing %@ value for Motion Sensitivity\n", @"ERROR in PListGestureParser:", @"Resolution_mm");
      MTPListGestureConfig::setParseErrorString(v5, v7);
    }

    MTPListGestureConfig::parseFloatValue(v5, a2, @"CommitMultiplier", &v19, @"Motion Sensitivity");
    MTPListGestureConfig::parseFloatValue(v5, a2, @"CommitMultiplier", &v19, @"Motion Sensitivity");
    MTPListGestureConfig::parseFloatValue(v5, a2, @"AccelPower", &v22 + 1, @"Motion Sensitivity");
    MTPListGestureConfig::parseFloatValue(v5, a2, @"AccelThresh", &v22, @"Motion Sensitivity");
    v8 = v21;
    v9 = v22;
    v10 = v19;
    v11 = HIDWORD(v22);
    v18 = 0.0;
    v12 = 0;
    if (MTPListGestureConfig::parseFloatValue(v5, a2, @"FrameDecay_mm", &v18, @"Motion Sensitivity"))
    {
      v13 = v18;
    }

    else
    {
      v13 = 0.0;
    }

    v17 = 0;
    v16 = 0.01;
    result = MTPListGestureConfig::parseFloatValue(v5, a2, @"FluidAnimationStartThreshold_mm", &v17 + 1, @"Motion Sensitivity");
    if (result && (result = MTPListGestureConfig::parseFloatValue(v5, a2, @"FluidSwipeCompleteThreshold_mm", &v17, @"Motion Sensitivity"), result))
    {
      result = MTPListGestureConfig::parseFloatValue(v5, a2, @"FluidSwipeInertiaTime_s", &v16, @"Motion Sensitivity");
      v14 = 0;
      v15 = 0.0;
      if (result)
      {
        v12 = HIDWORD(v17);
        v14 = v17;
        v15 = v16;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
    }

    *a3 = v8;
    *(a3 + 4) = v10;
    *(a3 + 8) = v9;
    *(a3 + 12) = v11;
    *(a3 + 16) = v13;
    *(a3 + 20) = v12;
    *(a3 + 24) = v14;
    *(a3 + 28) = v15;
  }

  return result;
}

uint64_t MTPListGestureConfig::extractMotionSensitivity(CFDictionaryRef *a1, CFDictionaryRef theDict, void *a3)
{
  *a3 = 0x3F80000000000000;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  result = CFDictionaryGetValue(theDict, @"Sensitivity");
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFStringGetTypeID())
    {
      Value = CFDictionaryGetValue(a1[12], v6);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11 = a1;
          v12 = v9;
LABEL_8:
          MTPListGestureConfig::parseMotionSensitivity(v11, v12, a3);
          return 1;
        }
      }

      v14 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Motion Sensitivity dictionary '%@' not found in library\n", @"ERROR in PListGestureParser:", v6);
      MTPListGestureConfig::setParseErrorString(a1, v14);
    }

    else
    {
      v13 = CFGetTypeID(v6);
      if (v13 == CFDictionaryGetTypeID())
      {
        v11 = a1;
        v12 = v6;
        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t MTPListGestureConfig::extractGestureCategory(MTPListGestureConfig *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"Category");
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  v6 = 1;
  if (CFStringCompare(v4, @"OneFingerPoint", 1uLL))
  {
    if (CFStringCompare(v4, @"FiveFingerPoint", 1uLL) == kCFCompareEqualTo)
    {
      return 2;
    }

    if (CFStringCompare(v4, @"TwoFingerDrag", 1uLL) == kCFCompareEqualTo)
    {
      return 4;
    }

    if (CFStringCompare(v4, @"AlreadyMouse", 1uLL) == kCFCompareEqualTo)
    {
      return 16;
    }

    if (CFStringCompare(v4, @"ScrollPan", 1uLL) == kCFCompareEqualTo)
    {
      return 64;
    }

    if (CFStringCompare(v4, @"TwoFingerScroll", 1uLL) == kCFCompareEqualTo)
    {
      return 128;
    }

    if (CFStringCompare(v4, @"TwoFingerNotificationCenter", 1uLL) == kCFCompareEqualTo)
    {
      return 32;
    }

    if (CFStringCompare(v4, @"TwoFingerNotificationCenterAlt", 1uLL) == kCFCompareEqualTo)
    {
      return 256;
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Gesture Category '%@' not supported\n", @"ERROR in PListGestureParser:", v4);
    MTPListGestureConfig::setParseErrorString(this, v7);
    return 0;
  }

  return v6;
}

void MTPListGestureConfig::parseGesture(CFDictionaryRef *a1, const __CFDictionary *a2, void **a3, __int128 *a4)
{
  if (a2)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    MTPListGestureConfig::lookupOrParseActionEvents(a1, a2, &v71);
    v8 = MTPListGestureConfig::parseGestureMotionCode(a1, a2);
    v9 = ((v8 >> 12) | (16 * v8));
    if (v9 <= 2)
    {
      if (!(16 * v8))
      {
        goto LABEL_106;
      }

      if (v9 == 1)
      {
        Value = CFDictionaryGetValue(a2, @"Trigger");
        v37 = Value;
        if (Value && (v38 = CFGetTypeID(Value), v38 == CFStringGetTypeID()))
        {
          location = CFStringFind(v37, @"BeginSlide", 1uLL).location;
          v40 = CFStringFind(v37, @"MayBegin", 1uLL).location;
          v41 = CFStringFind(v37, @"TimeHeld", 1uLL).location;
          if (location == -1)
          {
            v42 = 1;
          }

          else
          {
            v42 = 9;
          }

          if (v40 != -1)
          {
            v42 |= 0x100u;
          }

          if (v41 != -1)
          {
            v42 |= 4u;
          }
        }

        else
        {
          v42 = 1;
        }

        *(a3 + 60) = v42;
        v44 = CFDictionaryGetValue(a2, @"HoldTime");
        v45 = v44;
        if (v44 && (v46 = CFGetTypeID(v44), v46 == CFNumberGetTypeID()))
        {
          LOWORD(valuePtr[0]) = 0;
          CFNumberGetValue(v45, kCFNumberSInt16Type, valuePtr);
          v47 = valuePtr[0];
        }

        else
        {
          v47 = 350;
        }

        *(a3 + 61) = v47;
        v43 = a3 + 12;
        if (a3 + 12 == &v71)
        {
          goto LABEL_106;
        }

LABEL_85:
        std::vector<MTActionEvent>::__assign_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(v43, v71, v72, (v72 - v71) >> 3);
        goto LABEL_106;
      }

      if (v9 == 2)
      {
        *(a3 + 76) = 2;
        v10 = CFDictionaryGetValue(a2, @"StopTime");
        v11 = v10;
        if (v10 && (v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
        {
          LOWORD(valuePtr[0]) = 0;
          CFNumberGetValue(v11, kCFNumberSInt16Type, valuePtr);
          v13 = valuePtr[0];
        }

        else
        {
          v13 = 200;
        }

        *(a3 + 77) = v13;
        v43 = a3 + 16;
        if (a3 + 16 == &v71)
        {
          goto LABEL_106;
        }

        goto LABEL_85;
      }

LABEL_18:
      v16 = v8;
      if (v8 == 128 || v8 == 32)
      {
        v16 = v8 | 0x1000000;
      }

      v17 = 0.0;
      v18 = 0.0;
      if ((v8 - 1) <= 0xBu)
      {
        v19 = (v8 - 1);
        v17 = flt_29D3D6B48[v19];
        v18 = flt_29D3D6B78[v19];
      }

      v20 = CFDictionaryGetValue(a2, @"Trigger");
      v21 = v20;
      if (v20)
      {
        v22 = CFGetTypeID(v20);
        if (v22 == CFStringGetTypeID())
        {
          v67 = CFStringFind(v21, @"OnceOnly", 1uLL).location;
          v66 = CFStringFind(v21, @"OncePerDirection", 1uLL).location;
          v65 = CFStringFind(v21, @"OnceIfQuick", 1uLL).location;
          v64 = CFStringFind(v21, @"OnlyIfQuick", 1uLL).location;
          v63 = CFStringFind(v21, @"OnlyFromEdge", 1uLL).location;
          v62 = CFStringFind(v21, @"IfWidelySeparatedFingers", 1uLL).location;
          v61 = CFStringFind(v21, @"OnlyIfAllMoving", 1uLL).location;
          v60 = CFStringFind(v21, @"OnlyIfFourMoving", 1uLL).location;
          v59 = CFStringFind(v21, @"OnlyIfSomeMoving", 1uLL).location;
          v58 = CFStringFind(v21, @"OnlyIfTwoMoving", 1uLL).location;
          v57 = CFStringFind(v21, @"OnlyIfOneMoving", 1uLL).location;
          v56 = CFStringFind(v21, @"RequiresForce", 1uLL).location;
          v55 = CFStringFind(v21, @"WaitForQuick", 1uLL).location;
          v23 = CFStringFind(v21, @"ToggleAlongAxis", 1uLL).location;
          v24 = CFStringFind(v21, @"Momentum", 1uLL).location;
          v25 = CFStringFind(v21, @"LowCommitSensitivity", 1uLL).location;
          v26 = CFStringFind(v21, @"AccelOnlyIfSomeResting", 1uLL).location;
          v27 = CFStringFind(v21, @"Repetitive", 1uLL).location;
          v28 = v16 | 0x1000;
          if (v67 == -1)
          {
            v28 = v16;
          }

          if (v66 != -1)
          {
            v28 |= 0x2000u;
          }

          if (v65 != -1)
          {
            v28 |= 0x4000u;
          }

          if (v64 != -1)
          {
            v28 |= 0x4000000u;
          }

          if (v63 != -1)
          {
            v28 |= 0x200000u;
          }

          if (v62 != -1)
          {
            v28 |= 0x100u;
          }

          if (v61 != -1)
          {
            v28 |= 0x8000000u;
          }

          if (v60 != -1)
          {
            v28 = v28 & 0xFFFFF1FF | 0x800;
          }

          if (v59 != -1)
          {
            v28 |= 0xE00u;
          }

          v29 = v28 & 0xFFFFF1FF;
          if (v58 != -1)
          {
            v28 = v28 & 0xFFFFF1FF | 0x400;
          }

          v30 = v29 | 0x200;
          if (v57 != -1)
          {
            v28 = v30;
          }

          if (v56 != -1)
          {
            v28 |= 0x80000000;
          }

          if (v55 != -1)
          {
            v28 |= 0x2000000u;
          }

          if (v23 != -1)
          {
            v28 |= 0x20000u;
          }

          if (v24 != -1)
          {
            v28 |= 0x400000u;
          }

          if (v25 != -1)
          {
            v28 |= 0x80000u;
          }

          if (v26 == -1)
          {
            v16 = v28;
          }

          else
          {
            v16 = v28 | 0x800000;
          }

          if (v27 == -1 && !v16)
          {
            v31 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Unknown Retriggering Option '%@'\n", @"ERROR in PListGestureParser:", v21);
            MTPListGestureConfig::setParseErrorString(a1, v31);
            v16 = 0;
          }
        }
      }

      v32 = CFDictionaryGetValue(a2, @"Locking");
      v33 = v32;
      if (v32)
      {
        v34 = CFGetTypeID(v32);
        if (v34 == CFStringGetTypeID())
        {
          if (CFStringCompare(v33, @"LockOnAxis", 1uLL))
          {
            if (CFStringCompare(v33, @"LockOnFirst", 1uLL))
            {
              if (CFStringCompare(v33, @"LockOnFirstUntilPause", 1uLL))
              {
                if (CFStringCompare(v33, @"LockOnThrow", 1uLL))
                {
                  if (CFStringCompare(v33, @"LockNever", 1uLL))
                  {
                    v35 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Unknown Trigger Stick Option '%@'\n", @"ERROR in PListGestureParser:", v33);
                    MTPListGestureConfig::setParseErrorString(a1, v35);
                  }
                }

                else
                {
                  v16 |= 0x400000u;
                }
              }

              else
              {
                v16 |= 0x40000u;
              }
            }

            else
            {
              v16 |= 0x8000u;
            }
          }

          else
          {
            v16 |= 0x10000u;
          }
        }
      }

      v48 = a4[1];
      v69 = *a4;
      v70 = v48;
      if ((MTPListGestureConfig::extractMotionSensitivity(a1, a2, &v69) & 1) == 0)
      {
        v49 = a4[1];
        v69 = *a4;
        v70 = v49;
      }

      if (*&v69 == 0.0)
      {
        v53 = CFDictionaryGetValue(a2, @"Action");
        v54 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ No motion %@ for %@ gesture\n", @"ERROR in PListGestureParser:", @"Sensitivity", v53);
        MTPListGestureConfig::setParseErrorString(a1, v54);
      }

      else
      {
        GestureCategory = MTPListGestureConfig::extractGestureCategory(a1, a2);
        valuePtr[8] = xmmword_29D3D6B10;
        valuePtr[9] = unk_29D3D6B20;
        valuePtr[2] = xmmword_29D3D6AB0;
        valuePtr[3] = unk_29D3D6AC0;
        valuePtr[4] = xmmword_29D3D6AD0;
        memset(&valuePtr[5], 255, 48);
        memset(valuePtr, 170, 32);
        MTSlideGesture::MTSlideGesture(valuePtr, v16, GestureCategory, &v69, &v71, v18, v17);
        v51 = a3[21];
        if (v51 >= a3[22])
        {
          v52 = std::vector<MTSlideGesture>::__emplace_back_slow_path<MTSlideGesture const&>((a3 + 20), valuePtr);
        }

        else
        {
          MTSlideGesture::MTSlideGesture(a3[21], valuePtr);
          v52 = (v51 + 160);
          a3[21] = v51 + 160;
        }

        a3[21] = v52;
        if (*&valuePtr[0])
        {
          *(&valuePtr[0] + 1) = *&valuePtr[0];
          operator delete(*&valuePtr[0]);
        }
      }

      goto LABEL_106;
    }

    if (v9 == 3)
    {
      *(a3 + 12) = 3;
      if (&v71 == a3)
      {
LABEL_106:
        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        return;
      }
    }

    else
    {
      if (v9 == 6)
      {
        *(a3 + 28) = 3;
        v15 = a3 + 4;
      }

      else
      {
        if (v9 != 7)
        {
          goto LABEL_18;
        }

        *(a3 + 44) = 3;
        v15 = a3 + 8;
      }

      a3 = v15;
      if (v15 == &v71)
      {
        goto LABEL_106;
      }
    }

    std::vector<MTActionEvent>::__assign_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(a3, v71, v72, (v72 - v71) >> 3);
    goto LABEL_106;
  }

  v14 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ NULL chord or gesture dictionary\n", @"ERROR in PListGestureParser:");

  MTPListGestureConfig::setParseErrorString(a1, v14);
}

void sub_29D39F860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTPListGestureConfig::extractChordTransitions(MTPListGestureConfig *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Transitions");
    if (Value && (v3 = Value, v4 = CFGetTypeID(Value), v4 == CFStringGetTypeID()))
    {
      v5 = CFStringFind(v3, @"MultiFingerDrag", 1uLL).location != -1;
      if (CFStringFind(v3, @"FromFewerIfPause", 1uLL).location == -1)
      {
        v6 = v5 << 8;
      }

      else
      {
        v6 = ((v5 & 1) << 8) | 4;
      }

      if (CFStringFind(v3, @"ToFewerAfterSlightDelay", 1uLL).location != -1)
      {
        v6 |= 0x90u;
      }

      if (CFStringFind(v3, @"FromMoreWithSlightIntegrationDelay", 1uLL).location != -1)
      {
        v6 |= 0x1001u;
      }

      if (CFStringFind(v3, @"ToMoreFingers", 1uLL).location != -1)
      {
        v6 |= 0x20u;
      }

      if (CFStringFind(v3, @"ToMoreIfPause", 1uLL).location != -1)
      {
        v6 |= 0x40u;
      }

      v7 = v6 | (CFStringFind(v3, @"FromMoreFingers", 1uLL).location != -1);
      if (CFStringFind(v3, @"FromPausedPoint", 1uLL).location != -1)
      {
        v7 |= 0x800u;
      }

      if (CFStringFind(v3, @"FromRestingPoint", 1uLL).location != -1)
      {
        v7 |= 8u;
      }

      if (CFStringFind(v3, @"IsRestingPoint", 1uLL).location != -1)
      {
        v7 |= 0x80u;
      }

      if (CFStringFind(v3, @"ToFewerFingers", 1uLL).location != -1)
      {
        v7 |= 0x10u;
      }

      location = CFStringFind(v3, @"FromFewerFingers", 1uLL).location;
      v9 = v7 | 2;
      if (location == -1)
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v9;
}

void MTPListGestureConfig::parseGestureSet(CFDictionaryRef *this, const __CFString *a2, const __CFDictionary *cf, MTChordGestureSet *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFDictionaryGetTypeID()))
  {
    v19 = 0x3F80000000000000uLL;
    v20 = 0;
    v21 = 0;
    MTPListGestureConfig::extractMotionSensitivity(this, cf, &v19);
    GestureCategory = MTPListGestureConfig::extractGestureCategory(this, cf);
    if (GestureCategory)
    {
      *(a4 + 58) = GestureCategory;
    }

    *(a4 + 114) |= MTPListGestureConfig::extractChordTransitions(GestureCategory, cf);
    Value = CFDictionaryGetValue(cf, @"Gestures");
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
            MTPListGestureConfig::parseGesture(this, ValueAtIndex, a4, &v19);
          }
        }

        return;
      }
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ No %@ array for gesture set '%@'\n", v11, @"ERROR in PListGestureParser:", @"Gestures", a2);
  }

  else
  {
    v18 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ No dictionary for gesture set '%@'\n", a4, @"ERROR in PListGestureParser:", a2);
  }

  MTPListGestureConfig::setParseErrorString(this, v18);
}

uint64_t MTPListGestureConfig::parseChordSpecifier(MTPListGestureConfig *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"Pengrip", 1uLL) == kCFCompareEqualTo)
  {
    return 10;
  }

  if (CFStringCompare(theString1, @"Fist", 1uLL) == kCFCompareEqualTo)
  {
    return 12;
  }

  if (CFStringCompare(theString1, @"Palm", 1uLL) == kCFCompareEqualTo)
  {
    return 13;
  }

  v3 = 1;
  if (CFStringCompare(theString1, @"1 Finger", 1uLL))
  {
    if (CFStringCompare(theString1, @"2 Fingers", 1uLL))
    {
      if (CFStringCompare(theString1, @"3 Fingers", 1uLL))
      {
        if (CFStringCompare(theString1, @"4 Fingers", 1uLL))
        {
          if (CFStringCompare(theString1, @"Thumb", 1uLL))
          {
            if (CFStringCompare(theString1, @"1 Finger + Thumb", 1uLL))
            {
              if (CFStringCompare(theString1, @"2 Fingers + Thumb", 1uLL))
              {
                if (CFStringCompare(theString1, @"3 Fingers + Thumb", 1uLL))
                {
                  if (CFStringCompare(theString1, @"4 Fingers + Thumb", 1uLL))
                  {
                    return 0;
                  }

                  else
                  {
                    return 9;
                  }
                }

                else
                {
                  return 8;
                }
              }

              else
              {
                return 7;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 5;
          }
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

void MTPListGestureConfig::parseChordGestureSetAndCopyIntoTable(CFDictionaryRef *this, CFTypeRef cf, const __CFString *a3)
{
  v41 = *MEMORY[0x29EDCA608];
  if (!cf || (v6 = CFGetTypeID(cf), TypeID = CFDictionaryGetTypeID(), !a3) || v6 != TypeID || (v8 = CFGetTypeID(a3), v8 != CFStringGetTypeID()))
  {
LABEL_28:
    v28 = *MEMORY[0x29EDCA608];
    return;
  }

  Value = CFDictionaryGetValue(cf, @"Chord");
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFStringGetTypeID())
    {
      GestureCategory = MTPListGestureConfig::extractGestureCategory(this, cf);
      v13 = MTPListGestureConfig::parseChordSpecifier(GestureCategory, v10);
      if (v13)
      {
        v14 = v13;
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40[3] = v15;
        v40[4] = v15;
        v40[1] = v15;
        v40[2] = v15;
        v39 = v15;
        v40[0] = v15;
        __p = v15;
        *v36 = v15;
        v37 = v15;
        *v34 = v15;
        v35 = v15;
        *v32 = v15;
        v33 = v15;
        *v30 = v15;
        v31 = v15;
        CStringPtr = CFStringGetCStringPtr(v10, 0);
        MTChordGestureSet::MTChordGestureSet(v30, v14, 0, GestureCategory, CStringPtr);
        v17 = MTGestureConfig::copyChordIntoHandTable(this, 1, v30);
        v18 = CFDictionaryGetValue(cf, @"Gesture Set");
        v19 = v18;
        if (v18 && (v20 = CFGetTypeID(v18), v20 == CFStringGetTypeID()))
        {
          v21 = CFDictionaryGetValue(this[11], v19);
          v22 = v21;
          if (v21 && (v23 = CFGetTypeID(v21), v23 == CFDictionaryGetTypeID()))
          {
            MTPListGestureConfig::parseGestureSet(this, v19, v22, v17);
          }

          else
          {
            v27 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ No dictionary for '%@' Gesture Set\n", @"ERROR in PListGestureParser:", v19);
            MTPListGestureConfig::setParseErrorString(this, v27);
          }
        }

        else
        {
          v26 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ No Gesture Set for '%@' Chord\n", @"ERROR in PListGestureParser:", v10);
          MTPListGestureConfig::setParseErrorString(this, v26);
        }

        v29 = v40;
        std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v29);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v36[0])
        {
          v36[1] = v36[0];
          operator delete(v36[0]);
        }

        if (v34[0])
        {
          v34[1] = v34[0];
          operator delete(v34[0]);
        }

        if (v32[0])
        {
          v32[1] = v32[0];
          operator delete(v32[0]);
        }

        if (v30[0])
        {
          v30[1] = v30[0];
          operator delete(v30[0]);
        }
      }

      goto LABEL_28;
    }
  }

  v24 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Chord Dictionary Missing '%@' Key\n", @"ERROR in PListGestureParser:", @"Chord");
  v25 = *MEMORY[0x29EDCA608];

  MTPListGestureConfig::setParseErrorString(this, v24);
}

void sub_29D3A016C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MTChordGestureSet::~MTChordGestureSet(va);
  _Unwind_Resume(a1);
}

void MTPListGestureConfig::parseChordMappingsForHand(MTPListGestureConfig *this, const __CFString *cf, const __CFDictionary *a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()) || CFStringCompare(cf, @"Right", 1uLL) && CFStringCompare(cf, @"Any", 1uLL))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ '%@' Hand not recognized or supported\n", @"ERROR in PListGestureParser:", cf);
LABEL_6:

    MTPListGestureConfig::setParseErrorString(this, v7);
    return;
  }

  if (!a3 || (v8 = CFGetTypeID(a3), v8 != CFDictionaryGetTypeID()))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Missing chord dictionary for '%@' Hand\n", @"ERROR in PListGestureParser:", cf);
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(a3, @"Chords");
  if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        MTPListGestureConfig::parseChordGestureSetAndCopyIntoTable(this, ValueAtIndex, cf);
      }
    }
  }

  else
  {
    v16 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ Could not find '%@' array for '%@' Hand\n", @"ERROR in PListGestureParser:", @"Chords", cf);
    MTPListGestureConfig::setParseErrorString(this, v16);
  }

  v17 = CFDictionaryGetValue(a3, @"LookupBySubset");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 == CFStringGetTypeID())
    {
      ChordTableForHand = MTGestureConfig::getChordTableForHand(this, 1);
      if (ChordTableForHand)
      {
        v21 = ChordTableForHand;
        if (CFStringCompare(v18, @"SyncedFingers", 1uLL) == kCFCompareEqualTo)
        {
          *(v21 + 28) = 0;
        }

        if (CFStringCompare(v18, @"TouchingFingers", 1uLL) == kCFCompareEqualTo)
        {
          *(v21 + 28) = 2;
        }

        if (CFStringCompare(v18, @"MovingFingers", 1uLL) == kCFCompareEqualTo)
        {
          *(v21 + 28) = 1;
        }
      }
    }
  }
}

void MTPListGestureConfig::parseChordMappingPreferences(MTPListGestureConfig *this, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(cf);
      v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(cf, v6, v7);
      if (Count >= 1)
      {
        v8 = v6;
        v9 = v7;
        do
        {
          v11 = *v8++;
          v10 = v11;
          v12 = *v9++;
          MTPListGestureConfig::parseChordMappingsForHand(this, v10, v12);
          --Count;
        }

        while (Count);
      }

      free(v6);

      free(v7);
    }
  }
}

void MTPListGestureConfig::setChordMappingsDictionary(MTPListGestureConfig *this, CFTypeRef cf)
{
  v3 = *(this + 10);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 10) = 0;
    }

    if (cf)
    {
      *(this + 10) = cf;

      CFRetain(cf);
    }
  }
}

void MTPListGestureConfig::setGestureSetsDictionary(MTPListGestureConfig *this, CFTypeRef cf)
{
  v3 = *(this + 11);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 11) = 0;
    }

    if (cf)
    {
      *(this + 11) = cf;

      CFRetain(cf);
    }
  }
}

void MTPListGestureConfig::setMotionSensitivitiesDictionary(MTPListGestureConfig *this, CFTypeRef cf)
{
  v3 = *(this + 12);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 12) = 0;
    }

    if (cf)
    {
      *(this + 12) = cf;

      CFRetain(cf);
    }
  }
}

void MTPListGestureConfig::setActionEventsDictionary(MTPListGestureConfig *this, CFTypeRef cf)
{
  v3 = *(this + 13);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 13) = 0;
    }

    if (cf)
    {
      *(this + 13) = cf;

      CFRetain(cf);
    }
  }
}

BOOL MTPListGestureConfig::parseCreateGestureConfig(MTPListGestureConfig *this, const __CFString **a2)
{
  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
    *(this + 14) = 0;
  }

  v5 = *(this + 10);
  if (!v5 || (v6 = CFGetTypeID(v5), v6 != CFDictionaryGetTypeID()))
  {
    v13 = *MEMORY[0x29EDB8ED8];
    v14 = "PListGestureParser ABORT: Chord Mappings dictionary missing\n";
LABEL_16:
    v15 = CFStringCreateWithCString(v13, v14, 0);
    MTPListGestureConfig::setParseErrorString(this, v15);
    goto LABEL_17;
  }

  v7 = *(this + 13);
  if (!v7 || (v8 = CFGetTypeID(v7), v8 != CFDictionaryGetTypeID()))
  {
    v13 = *MEMORY[0x29EDB8ED8];
    v14 = "PListGestureParser ABORT: Action Events dictionary missing\n";
    goto LABEL_16;
  }

  v9 = *(this + 12);
  if (!v9 || (v10 = CFGetTypeID(v9), v10 != CFDictionaryGetTypeID()))
  {
    v13 = *MEMORY[0x29EDB8ED8];
    v14 = "PListGestureParser ABORT: Motion Sensitivities dictionary missing\n";
    goto LABEL_16;
  }

  v11 = *(this + 11);
  if (!v11 || (v12 = CFGetTypeID(v11), v12 != CFDictionaryGetTypeID()))
  {
    v13 = *MEMORY[0x29EDB8ED8];
    v14 = "PListGestureParser ABORT: Gesture Sets dictionary missing\n";
    goto LABEL_16;
  }

  MTPListGestureConfig::parseChordMappingPreferences(this, *(this + 10));
LABEL_17:
  v16 = *(this + 14);
  if (a2 && v16)
  {
    *a2 = v16;
    *(this + 14) = 0;
  }

  return v16 == 0;
}

void MTPListGestureConfig::releaseParsedDictionaries(MTPListGestureConfig *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }

  v4 = *(this + 13);
  if (v4)
  {
    CFRelease(v4);
    *(this + 13) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {
    CFRelease(v5);
    *(this + 12) = 0;
  }
}

void MTPListGestureConfig::addActionEventToDictionary(MTPListGestureConfig *this, __CFDictionary *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6)
{
  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v13 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(v13, @"EventType", a3);
  if (a4)
  {
    CFDictionaryAddValue(v13, @"Modifiers", a4);
  }

  if (a5)
  {
    CFDictionaryAddValue(v13, @"KeyCode", a5);
  }

  CFArrayAppendValue(Mutable, v13);
  CFDictionaryAddValue(this, a2, Mutable);
  CFRelease(Mutable);

  CFRelease(v13);
}

void MTPListGestureConfig::addGestureToArray(MTPListGestureConfig *this, __CFArray *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6, const __CFString *a7, const __CFString *a8, const void *a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, @"Action", a2);
  CFDictionaryAddValue(Mutable, @"Motion", a3);
  if (a4)
  {
    CFDictionaryAddValue(Mutable, @"Sensitivity", a4);
  }

  if (a5)
  {
    CFDictionaryAddValue(Mutable, @"Trigger", a5);
  }

  if (a6)
  {
    CFDictionaryAddValue(Mutable, @"Locking", a6);
  }

  if (a7 && a8)
  {
    CFDictionaryAddValue(Mutable, a7, a8);
  }

  CFArrayAppendValue(this, Mutable);

  CFRelease(Mutable);
}

void MTPListGestureConfig::addChordMappingToArray(MTPListGestureConfig *this, __CFArray *a2, const __CFString *a3, const __CFString *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionaryAddValue(Mutable, @"Chord", a2);
  CFDictionaryAddValue(Mutable, @"Gesture Set", a3);
  CFArrayAppendValue(this, Mutable);

  CFRelease(Mutable);
}

void MTChordGestureSet::~MTChordGestureSet(MTChordGestureSet *this)
{
  v7 = (this + 160);
  std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

uint64_t std::vector<MTActionEvent>::__emplace_back_slow_path<MTActionEvent const&>(uint64_t a1, const MTActionEvent *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v12 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTPoint>>(a1, v7);
  }

  __p[0] = 0;
  __p[1] = (8 * v2);
  MTActionEvent::MTActionEvent((8 * v2), a2);
  v11 = (8 * v2 + 8);
  std::vector<MTActionEvent>::__swap_out_circular_buffer(a1, __p);
  v8 = *(a1 + 8);
  if (v11 != __p[1])
  {
    *&v11 = v11 + ((__p[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_29D3A0C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const MTActionEvent **std::vector<MTActionEvent>::__swap_out_circular_buffer(const MTActionEvent **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 + *result - v6);
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      MTActionEvent::MTActionEvent(result, v5);
      v5 = (v5 + 8);
      result = (v8 + 8);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<MTSlideGesture>::__emplace_back_slow_path<MTSlideGesture const&>(uint64_t a1, const MTSlideGesture *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTSlideGesture>>(a1, v6);
  }

  v13 = 0;
  v14 = 160 * v2;
  MTSlideGesture::MTSlideGesture((160 * v2), a2);
  v15 = 160 * v2 + 160;
  v7 = *(a1 + 8);
  v8 = (160 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTSlideGesture>,MTSlideGesture*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MTSlideGesture>::~__split_buffer(&v13);
  return v12;
}

void sub_29D3A0E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTSlideGesture>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTSlideGesture>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTSlideGesture>,MTSlideGesture*>(uint64_t a1, MTSlideGesture *a2, MTSlideGesture *a3, MTSlideGesture *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0xAAAAAAAAAAAAAA00;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      MTSlideGesture::MTSlideGesture(this, v6);
      v6 = (v6 + 160);
      this = (v12 + 160);
      v12 = (v12 + 160);
    }

    while (v6 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 1) = v7;
        operator delete(v7);
      }

      v5 = (v5 + 160);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture>,MTSlideGesture*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture>,MTSlideGesture*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture>,MTSlideGesture*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture>,MTSlideGesture*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 160);
      v3 -= 160;
      v4 = v5;
      if (v5)
      {
        *(v1 - 152) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<MTSlideGesture>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTSlideGesture>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTSlideGesture>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 160);
    *(a1 + 16) = v2 - 160;
    if (v5)
    {
      *(v2 - 152) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 160;
    }
  }
}

void MTChordGestureSet::MTChordGestureSet(MTChordGestureSet *this)
{
  *(this + 58) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  *(this + 204) = 0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 114) = 0;
}

{
  *(this + 58) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  *(this + 204) = 0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 114) = 0;
}

uint64_t MTChordGestureSet::MTChordGestureSet(uint64_t a1, signed int a2, __int16 a3, int a4, char *__src)
{
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  *(a1 + 232) = a4;
  if ((a2 - 1) > 3)
  {
    if (a2 > 9)
    {
      if (a2 > 0xD)
      {
        *(a1 + 216) = 0;
        if (__src)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }

      v6 = 0x400000005;
    }

    else
    {
      v6 = vadd_s32(vdup_n_s32(a2), 0xFFFFFFFBFFFFFFFCLL);
    }

    *(a1 + 216) = v6;
    if (__src)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a1 + 184) = 0;
    return a1;
  }

  *(a1 + 216) = a2;
  *(a1 + 220) = a2;
  if (!__src)
  {
    goto LABEL_9;
  }

LABEL_3:
  strncpy((a1 + 184), __src, 0x13uLL);
  return a1;
}

void MTChordGestureSet::MTChordGestureSet(MTChordGestureSet *this, const MTChordGestureSet *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  *(this + 4) = 0;
  *(this + 6) = v4;
  *(this + 7) = v5;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  v6 = *(a2 + 14);
  v7 = *(a2 + 15);
  *(this + 8) = 0;
  *(this + 14) = v6;
  *(this + 15) = v7;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  v8 = *(a2 + 22);
  v9 = *(a2 + 23);
  *(this + 12) = 0;
  *(this + 22) = v8;
  *(this + 23) = v9;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  v10 = *(a2 + 30);
  v11 = *(a2 + 31);
  *(this + 16) = 0;
  *(this + 30) = v10;
  *(this + 31) = v11;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this + 128, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 3);
  *(this + 38) = *(a2 + 38);
  *(this + 39) = *(a2 + 39);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 51) = *(a2 + 51);
  *(this + 26) = *(a2 + 26);
  *(this + 27) = *(a2 + 27);
  *(this + 56) = *(a2 + 56);
  *(this + 114) = *(a2 + 114);
  *(this + 58) = *(a2 + 58);
  if (this != a2)
  {
    std::vector<MTSlideGesture>::__assign_with_size[abi:ne200100]<MTSlideGesture*,MTSlideGesture*>(this + 20, *(a2 + 20), *(a2 + 21), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 21) - *(a2 + 20)) >> 5));
  }

  strncpy(this + 184, a2 + 184, 0x13uLL);
}

void sub_29D3A1390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](va);
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 136) = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    *(v2 + 104) = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    *(v2 + 72) = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t MTChordGestureSet::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 204) = *(a2 + 204);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    strncpy((a1 + 184), (a2 + 184), 0x13uLL);
    MTGesture::operator=(a1, a2);
    MTGesture::operator=(a1 + 32, a2 + 32);
    MTGesture::operator=(a1 + 64, a2 + 64);
    MTGesture::operator=(a1 + 96, a2 + 96);
    MTGesture::operator=(a1 + 128, a2 + 128);
    std::vector<MTSlideGesture>::__assign_with_size[abi:ne200100]<MTSlideGesture*,MTSlideGesture*>((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 5));
  }

  return a1;
}

uint64_t MTChordGestureSet::chordGestureSetEquals(MTChordGestureSet *this, const MTChordGestureSet *a2)
{
  if (!MTGesture::gestureEquals(this, a2) || !MTGesture::gestureEquals(this + 4, a2 + 32) || !MTGesture::gestureEquals(this + 8, a2 + 64) || !MTGesture::gestureEquals(this + 12, a2 + 96) || !MTGesture::gestureEquals(this + 16, a2 + 128))
  {
    return 0;
  }

  return MTChordGestureSet::chordSlidesEqual(this, a2);
}

uint64_t MTGesture::gestureEquals(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 13) != *(a2 + 26))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 28))
  {
    return 0;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = 1;
    result = 1;
    while (1)
    {
      v9 = (v2 + 8 * v5);
      v10 = (*a2 + 8 * v5);
      if (*v9 != *v10 || v9[1] != v10[1] || *(v9 + 1) != *(v10 + 1))
      {
        break;
      }

      v5 = v7;
      if (v6 <= v7++)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MTChordGestureSet::chordSlidesEqual(MTChordGestureSet *this, const MTChordGestureSet *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21);
  if (v3 - v2 != *(a2 + 21) - *(a2 + 20))
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    result = MTSlideGesture::slideEquals((v2 + 160 * v6), (*(a2 + 20) + 160 * v6));
    if ((result & 1) == 0)
    {
      break;
    }

    v6 = v7;
    v2 = *(this + 20);
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v2) >> 5) > v7++);
  return result;
}

uint64_t MTSlideGesture::slideEquals(MTSlideGesture *this, const MTSlideGesture *a2)
{
  result = MTGesture::gestureEquals(this, a2);
  if (result)
  {
    return *(this + 8) == *(a2 + 8) && *(this + 38) == *(a2 + 38) && *(this + 39) == *(a2 + 39) && *(this + 9) == *(a2 + 9) && *(this + 10) == *(a2 + 10) && *(this + 13) == *(a2 + 13) && *(this + 11) == *(a2 + 11) && *(this + 12) == *(a2 + 12) && *(this + 14) == *(a2 + 14) && *(this + 15) == *(a2 + 15) && *(this + 16) == *(a2 + 16);
  }

  return result;
}

BOOL MTChordGestureSet::isEmpty(MTChordGestureSet *this)
{
  v1 = *(this + 20);
  v2 = *(this + 21) - v1;
  if (v2)
  {
    v3 = 0;
    v4 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 5);
    v5 = 1;
    do
    {
      v6 = v1 + 160 * v3;
      if (*v6 != *(v6 + 8))
      {
        if (**v6)
        {
          return 0;
        }
      }

      v3 = v5;
    }

    while (v4 > v5++);
  }

  if (*this != *(this + 1) && **this)
  {
    return 0;
  }

  v8 = *(this + 4);
  if (v8 != *(this + 5))
  {
    if (*v8)
    {
      return 0;
    }
  }

  v9 = *(this + 8);
  if (v9 != *(this + 9))
  {
    if (*v9)
    {
      return 0;
    }
  }

  v10 = *(this + 12);
  if (v10 != *(this + 13))
  {
    if (*v10)
    {
      return 0;
    }
  }

  v12 = *(this + 16);
  return v12 == *(this + 17) || *v12 == 0;
}

uint64_t MTChordGestureSet::hasEnabledOrientationEvents(MTChordGestureSet *this, const MTChordTable *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
  for (i = 1; ; ++i)
  {
    v7 = v2 + 160 * v4;
    v8 = *(v7 + 28);
    v9 = v8 && (*(a2 + 6) & v8) == 0;
    if (!v9 && *v7 != *(v7 + 8) && **v7 == 71)
    {
      break;
    }

    v4 = i;
    if (v5 <= i)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MTChordGestureSet::hasEnabledFluidNavigation(MTChordGestureSet *this, const MTChordTable *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
  for (i = 1; ; ++i)
  {
    v7 = v2 + 160 * v4;
    v8 = *(v7 + 28);
    v9 = v8 && (*(a2 + 6) & v8) == 0;
    if (!v9 && *v7 != *(v7 + 8) && **v7 == 36)
    {
      break;
    }

    v4 = i;
    if (v5 <= i)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MTChordGestureSet::hasEnabledFluidDock(MTChordGestureSet *this, const MTChordTable *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
  for (i = 1; ; ++i)
  {
    v7 = v2 + 160 * v4;
    v8 = *(v7 + 28);
    v9 = v8 && (*(a2 + 6) & v8) == 0;
    if (!v9 && *v7 != *(v7 + 8) && **v7 == 37)
    {
      break;
    }

    v4 = i;
    if (v5 <= i)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MTChordGestureSet::hasActiveEdgeSlide(MTChordGestureSet *this, const MTHandStatistics *a2, const MTChordCycling *a3)
{
  v28[31] = *MEMORY[0x29EDCA608];
  v6 = *(this + 58);
  if (!v6 || (*(a3 + 6) & v6) != 0)
  {
    v8 = *(this + 20);
    v7 = *(this + 21);
    if (v7 != v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = v8 + 160 * v9;
        v12 = *(v11 + 28);
        if (!v12 || (*(a3 + 6) & v12) != 0)
        {
          MTChordIntegrating::MTChordIntegrating(v19, this);
          v13 = *(a3 + 400);
          isActiveEdgeSlide = MTSlideGesture::isActiveEdgeSlide(v11, a2, v19);
          v18 = v28;
          std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v18);
          if (__p)
          {
            v27 = __p;
            operator delete(__p);
          }

          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }

          if (v22)
          {
            v23 = v22;
            operator delete(v22);
          }

          if (v20)
          {
            v21 = v20;
            operator delete(v20);
          }

          if (v19[0])
          {
            v19[1] = v19[0];
            operator delete(v19[0]);
          }

          if (isActiveEdgeSlide)
          {
            result = 1;
            goto LABEL_22;
          }

          v8 = *(this + 20);
          v7 = *(this + 21);
        }

        v9 = v10;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 5) > v10++);
    }
  }

  result = 0;
LABEL_22:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D3A1B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTChordGestureSet::~MTChordGestureSet(va);
  _Unwind_Resume(a1);
}

BOOL MTChordGestureSet::chk4MinChordMotion(MTChordGestureSet *this, const MTHandMotion *a2)
{
  result = 1;
  if (*(a2 + 48) == 0.0 && *(a2 + 49) == 0.0 && *(a2 + 50) == 0.0)
  {
    return *(a2 + 51) != 0.0;
  }

  return result;
}

BOOL MTChordGestureSet::chk4ChordPause(MTChordGestureSet *this, const MTHandStatistics *a2, const MTHandMotion *a3, double a4, double a5, float a6)
{
  v6 = *&qword_2A17A1DA8;
  LOWORD(a6) = *(this + 77);
  v7 = LODWORD(a6) * 0.001;
  if (v7 != 0.0)
  {
    v6 = v7;
  }

  return fmax(*(a2 + 1) - *(a3 + 20), a4) > v6;
}

BOOL MTChordGestureSet::chk4ChordTimein(MTChordGestureSet *this, const MTHandStatistics *a2)
{
  if (*(a2 + 196) > *(a2 + 195))
  {
    return 0;
  }

  if ((*(this + 60) & 4) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 186);
  if (v2 != *(a2 + 197))
  {
    return 0;
  }

  if (*(this + 54) != v2)
  {
    return 0;
  }

  v3 = *(a2 + 10);
  if ((*(this + 114) & 0x100) == 0 && v3 - *(a2 + 33) > *&gTimingPrefs)
  {
    return 0;
  }

  HIWORD(v5) = WORD1(qword_2A17A1DA8);
  v6 = *&qword_2A17A1DA8 + *&gTimingPrefs;
  LOWORD(v5) = *(this + 61);
  v7 = v5 * 0.001;
  if (v7 != 0.0)
  {
    v6 = v7;
  }

  if (v3 <= *(a2 + 16))
  {
    v3 = *(a2 + 16);
  }

  return *(a2 + 1) - v3 >= v6;
}

uint64_t MTChordGestureSet::isChordReadyToIntegrate(MTChordGestureSet *this, const MTHandStatistics *a2, float32x4_t *a3)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(a3[12])))))
  {
    return 1;
  }

  if (MTChordGestureSet::chk4ChordTimein(this, a2))
  {
    return 1;
  }

  return HIBYTE(*(this + 60)) & 1;
}

void std::vector<MTSlideGesture>::__assign_with_size[abi:ne200100]<MTSlideGesture*,MTSlideGesture*>(uint64_t *a1, MTSlideGesture *a2, MTSlideGesture *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<MTSlideGesture>::__vdeallocate(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTSlideGesture>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        MTSlideGesture::operator=(v8, v6);
        v6 += 160;
        v8 += 160;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    if (v11 != v8)
    {
      v15 = v11;
      do
      {
        v17 = *(v15 - 20);
        v15 = (v15 - 160);
        v16 = v17;
        if (v17)
        {
          *(v11 - 19) = v16;
          operator delete(v16);
        }

        v11 = v15;
      }

      while (v15 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        MTSlideGesture::operator=(v8, v14);
        v14 += 160;
        v8 += 160;
        v13 -= 160;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTSlideGesture>,MTSlideGesture*,MTSlideGesture*,MTSlideGesture*>(a1, &v12[v6], a3, v11);
  }
}

void std::vector<MTSlideGesture>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTSlideGesture>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<MTSlideGesture>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTSlideGesture>>(a1, a2);
  }

  std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
}

MTSlideGesture *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTSlideGesture>,MTSlideGesture*,MTSlideGesture*,MTSlideGesture*>(uint64_t a1, MTSlideGesture *a2, MTSlideGesture *a3, MTSlideGesture *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      MTSlideGesture::MTSlideGesture(v4, v6);
      v6 = (v6 + 160);
      v4 = (v11 + 160);
      v11 = (v11 + 160);
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture>,MTSlideGesture*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void MTChordIntegrating::clearIntegrationState(MTChordIntegrating *this)
{
  *(this + 34) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 66) = 0;
  *(this + 70) = 1;
  v2 = this + 312;
  v3 = 0uLL;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 312) = 0u;
  v4 = *(this + 20);
  v5 = *(this + 21);
  if (v5 != v4)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      MTSlideGesture::clearIntegrationState((v4 + 160 * v6));
      v6 = v7;
      v4 = *(this + 20);
      v5 = *(this + 21);
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5) > v7++;
    }

    while (v8);
    v3 = 0uLL;
  }

  *(v2 + 20) = 0;
  *(v2 + 3) = v3;
  *(v2 + 4) = v3;
  *(v2 + 1) = v3;
  *(v2 + 2) = v3;
  *v2 = v3;
  *(this + 50) = 0;
  if (v5 != v4)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v4)
      {
        v11 = v4 + 160 * v9;
        *(v11 + 120) = 0;
        *(v11 + 80) = v3;
        *(v11 + 96) = v3;
        v4 = *(this + 20);
        v5 = *(this + 21);
      }

      v9 = v10;
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5) > v10++;
    }

    while (v8);
  }
}

MTChordIntegrating *MTChordIntegrating::operator=(MTChordIntegrating *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MTChordGestureSet::operator=(a1, a2);
    MTChordIntegrating::clearIntegrationState(a1);
  }

  return a1;
}

void MTChordIntegrating::nullify(void **this)
{
  v13[10] = *MEMORY[0x29EDCA608];
  MTChordGestureSet::MTChordGestureSet(v4);
  if (v4 != this)
  {
    MTChordGestureSet::operator=(this, v4);
    MTChordIntegrating::clearIntegrationState(this);
  }

  v3 = v13;
  std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  v2 = *MEMORY[0x29EDCA608];
}

BOOL MTChordIntegrating::hasChordStabilized(MTChordIntegrating *this, const MTHandStatistics *a2, const MTHandMotion *a3)
{
  if (*(this + 264))
  {
    return 1;
  }

  v3 = *(a2 + 186);
  if (v3 == 5)
  {
    return 1;
  }

  v5 = *(a2 + 196) <= *(a2 + 195) && *(a2 + 201) == 0;
  return v5 && ((*(this + 114) & 0x100) == 0 || sqrtf((*(a3 + 84) * *(a3 + 84)) + (*(a3 + 83) * *(a3 + 83))) <= 100.0) && *(a2 + 1) - *(a2 + 10) >= v3 * 0.0100000007 || *(a2 + 1) - *(a2 + 10) >= v3 * 0.0200000014;
}

uint64_t MTChordIntegrating::getActiveDegreesOfFreedomMask(MTChordIntegrating *this, const MTHandStatistics *a2, const MTChordCycling *a3)
{
  if (*(this + 264) != 1)
  {
    return 0;
  }

  v4 = *(this + 20);
  if (*(this + 21) == v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = (v4 + 160 * v7);
    v11 = *(v10 + 7);
    if ((!v11 || (*(a3 + 6) & v11) != 0) && !MTSlideGesture::isLockedOutByTriggeredSlide(v10, a2, this, 1))
    {
      v8 = MTSlideGesture::getDegreesOfFreedomMask(v10) | v8;
    }

    v7 = v9;
    v4 = *(this + 20);
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v4) >> 5) > v9++);
  return v8;
}

double MTChordIntegrating::beginChordIntegration(double *a1, uint64_t a2)
{
  MTChordIntegrating::clearIntegrationState(a1);
  result = *(a2 + 80);
  a1[30] = result;
  return result;
}

void MTChordIntegrating::endChordIntegration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 224))
  {
    if (*(a1 + 264) == 1)
    {
      MTChordIntegrating::sendLiftSlideEvents(a1, a2, a3, a3 + 168, a4, a5);
    }

    else if (*(a1 + 266) == 1)
    {
      if (*(a1 + 104) == *(a1 + 96))
      {
        std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
      }

      (*(**(a5 + 392) + 24))(*(a5 + 392), *(a1 + 96), a4, 32, 0, a3 + 168, 0x2000, *(a2 + 8));
      *(a1 + 266) = 0;
    }

    MTChordIntegrating::clearIntegrationState(a1);

    MTChordIntegrating::nullify(a1);
  }
}

void MTChordIntegrating::sendLiftSlideEvents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 264) != 1)
  {
    return;
  }

  if (*(a1 + 216) < 2 || (v11 = *(a1 + 96), v11 == *(a1 + 104)) || *v11 != 65 || (v12 = *(a1 + 160), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - v12) >> 5) > 2) || *v12 == v12[1] || **v12 != 69 || ((v13 = *(a1 + 272)) == 0 ? (v14 = 0.0) : (v14 = *(v13 + 144)), *(a2 + 8) - v14 >= *&qword_2A17A1DC8))
  {
    v15 = 1;
  }

  else
  {
    MTDragManagerEventQueue::stopMomentum(a6, a5, 4);
    MTTapDragManager::sustainMultiFingerDrag(*(a6 + 392), a2);
    if ((*(a1 + 264) & 1) == 0)
    {
      return;
    }

    v15 = 0;
  }

  if (*(a1 + 216) == 1 && *a1 != *(a1 + 8) && **a1 == 65)
  {
    if (*(a2 + 186))
    {
      v16 = *(a2 + 211) + *(a2 + 186);
      if (v16 >= *(a2 + 190) + *(a2 + 187))
      {
        goto LABEL_26;
      }

      v17 = *(a6 + 392);
      if (v16 > *(v17 + 48))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = *(a6 + 392);
    }

    v18 = *(a2 + 8);
    if (*(v17 + 24) <= 1)
    {
      v18 = 0.0;
    }

    *(v17 + 80) = v18;
  }

LABEL_26:
  if (v15)
  {
    v19 = *(a1 + 272);
    if (v19)
    {
      v20 = *v19;
      if (*v19 == *(v19 + 8))
      {
        std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
      }

      if (*v20 - 35 > 4)
      {
        v21 = MTActionEvent::deriveGestureEndedType(v20);
        if (v21)
        {
          v22 = v21;
          v23 = *(a1 + 272);
          if (*v23 != v23[1] && (**v23 & 0xFFFE) == 0x46)
          {
            v24 = *(a1 + 224);
            (*(**(a6 + 392) + 24))(*(a6 + 392), *(a2 + 8));
          }

          v26 = 0xAAAAAAAAAAAAAAAALL;
          MTActionEvent::MTActionEvent(&v26, v22, 0, 0);
          (*(**(a6 + 392) + 24))(*(a6 + 392), &v26, a5, 0, 0, a4, 0x2000, *(a1 + 224), *(a2 + 8));
        }
      }

      else
      {
        MTChordIntegrating::possiblyStartFluidMomentum(a1, a2, a5, a6);
      }
    }

    if (*(a1 + 152))
    {
      v25 = *(a1 + 128);
      if (v25 != *(a1 + 136))
      {
        if (*v25)
        {
          MTGesture::dispatchEvents((a1 + 128), *(a6 + 392), a5, 16, 0, a4, 0x2000, *(a1 + 224), *(a2 + 8));
        }
      }
    }
  }
}

uint64_t MTChordIntegrating::possiblyStartFluidMomentum(void *a1, const MTHandStatistics *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[20];
  v4 = a1[21];
  if (v4 == v5)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (v5 + 160 * v9);
      if (*(v12 + 68) == 1)
      {
        v13 = MTSlideGesture::fluidSwipePercentage(v12);
        hasSufficientFluidMomentum = MTSlideGesture::hasSufficientFluidMomentum(v12, a2, v12 == a1[34]);
        v15 = *v12;
        if (*(v12 + 1) == *v12)
        {
          std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
        }

        v16 = *(a4 + 392);
        if (hasSufficientFluidMomentum)
        {
          v17 = 16;
        }

        else
        {
          v17 = 32;
        }

        v18 = MTSlideGesture::fluidMomentumPercentage_s(v12, v12 == a1[34]);
        v19 = MTSlideGesture::fluidDOFPercentageDeltas(v12);
        v26[0] = LODWORD(v19);
        v26[1] = v20;
        v26[2] = v21;
        v26[3] = v22;
        (*(*v16 + 32))(v16, v15, a3, v17, 0, v26, *(v12 + 32), v13, v18);
        v5 = a1[20];
        v4 = a1[21];
        v10 = 1;
      }

      v9 = v11;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 5) > v11++);
  }

  return v10 & 1;
}

uint64_t MTChordIntegrating::commit2Chord(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, double a7)
{
  v11 = result;
  *(result + 264) = 1;
  *(result + 256) = *(a2 + 8);
  v19 = *(a3 + 168);
  v12 = *(result + 216);
  if (v12 != 1)
  {
    if (v12 >= 2)
    {
      v13 = *(result + 96);
      if (v13 != *(result + 104) && *v13 == 65)
      {
        v14 = *(result + 160);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(result + 168) - v14) >> 5) <= 2 && *v14 != v14[1] && **v14 == 69)
        {
          *(a4 + 28) = 1;
          goto LABEL_5;
        }
      }
    }

LABEL_13:
    MTTapDragManager::sendPendingMultiFingerTap(a4, a5, a2, a3, 0, a7);
    result = MTTapDragManager::clearCycle(a4);
    goto LABEL_14;
  }

  if (*result == *(result + 8) || **result != 65)
  {
    goto LABEL_13;
  }

  if (*(a4 + 24) == 2)
  {
LABEL_5:
    result = MTTapDragManager::setCycleState(a4, 3);
  }

LABEL_14:
  v15 = *(v11 + 272);
  if (!v15)
  {
    goto LABEL_23;
  }

  if (*(v11 + 266) == 1)
  {
    if (*(v15 + 8) == *v15)
    {
      goto LABEL_28;
    }

    if (**v15 != 70)
    {
      if (*(v11 + 104) == *(v11 + 96))
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 224);
      (*(*a4 + 24))(a4, *(a2 + 8));
      *(v11 + 266) = 0;
      v15 = *(v11 + 272);
    }
  }

  if (*(v15 + 8) == *v15)
  {
LABEL_28:
    std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
  }

  result = MTActionEvent::deriveGestureStartedType(*v15);
  if (result)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    MTActionEvent::MTActionEvent(&v18, result, 0, 0);
    result = (*(*a4 + 24))(a4, &v18, a5, 2, 0, &v19, 4096, *(v11 + 224), *(a2 + 8));
  }

LABEL_23:
  if ((*(v11 + 120) & a6) != 0)
  {
    v17 = *(v11 + 96);
    if (v17 != *(v11 + 104))
    {
      if (*v17)
      {
        return MTGesture::dispatchEvents((v11 + 96), a4, a5, 2, 0, &v19, 4096, *(v11 + 224), *(a2 + 8));
      }
    }
  }

  return result;
}

uint64_t MTChordIntegrating::sendSlidePreamble(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, double a8)
{
  v27 = *(a3 + 168);
  ++*(a1 + 300);
  v13 = *(a2 + 186);
  *(a1 + 292) = v13;
  v14 = *(a1 + 296);
  if (!v14 || (v14 < v13 ? (v15 = *(a2 + 8) - *(a2 + 80) <= *&qword_2A17A1D80) : (v15 = 1), v15 ? (v16 = v13 > 1u) : (v16 = 0), !v16))
  {
    *(a1 + 296) = v13;
  }

  if ((*(a1 + 264) & 1) == 0)
  {
    *(a1 + 272) = a6;
    MTChordIntegrating::commit2Chord(a1, a2, a3, a4, a5, a7, a8);
    result = 1;
    if (!a6)
    {
      return result;
    }

    goto LABEL_34;
  }

  v17 = *(a1 + 272);
  if (v17 == a6)
  {
    goto LABEL_17;
  }

  result = 0;
  if (a6 && v17)
  {
    if (*(v17 + 8) != *v17)
    {
      v19 = MTActionEvent::deriveGestureStartedType(*v17);
      if (*(a6 + 8) != *a6)
      {
        if (v19 == MTActionEvent::deriveGestureStartedType(*a6))
        {
LABEL_17:
          result = 0;
          goto LABEL_31;
        }

        v20 = *(a1 + 272);
        if (*(v20 + 8) != *v20)
        {
          if (MTActionEvent::deriveGestureEndedType(*v20))
          {
            v26 = 0xAAAAAAAAAAAAAAAALL;
            v21 = *(a1 + 272);
            if (*(v21 + 8) == *v21)
            {
              goto LABEL_37;
            }

            v22 = MTActionEvent::deriveGestureEndedType(*v21);
            MTActionEvent::MTActionEvent(&v26, v22, 0, 0);
            (*(*a4 + 24))(a4, &v26, a5, 16, 0, &v27, 0x2000, *(a1 + 224), *(a2 + 8));
            v23 = *(a1 + 272);
            if (*v23 != v23[1] && (**v23 & 0xFFFE) == 0x46)
            {
              v24 = *(a1 + 224);
              (*(*a4 + 24))(a4, *(a2 + 8));
            }
          }

          if (*(a6 + 8) != *a6)
          {
            if (!MTActionEvent::deriveGestureStartedType(*a6))
            {
LABEL_30:
              result = 1;
              goto LABEL_31;
            }

            v26 = 0xAAAAAAAAAAAAAAAALL;
            if (*(a6 + 8) != *a6)
            {
              v25 = MTActionEvent::deriveGestureStartedType(*a6);
              MTActionEvent::MTActionEvent(&v26, v25, 0, 0);
              (*(*a4 + 24))(a4, &v26, a5, 2, 0, &v27, 0x2000, *(a1 + 224), *(a2 + 8));
              goto LABEL_30;
            }
          }
        }
      }
    }

LABEL_37:
    std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_31:
  if (*(a1 + 272) != a6)
  {
    *(a1 + 392) = 0;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 312) = 0u;
  }

  *(a1 + 272) = a6;
  if (a6)
  {
LABEL_34:
    if (*(a1 + 265) == 1)
    {
      *(a1 + 265) = 0;
    }
  }

  return result;
}

double MTChordIntegrating::clearMomentumFilters(MTChordIntegrating *this)
{
  *(this + 98) = 0;
  result = 0.0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 312) = 0u;
  return result;
}

uint64_t MTChordIntegrating::resetMostIntegrators(uint64_t this, MTSlideGesture *a2)
{
  v3 = *(this + 160);
  v2 = *(this + 168);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v3 + 160 * v4;
      if (v6 != a2)
      {
        *(v6 + 120) = 0;
        *(v6 + 80) = 0uLL;
        *(v6 + 96) = 0uLL;
        v3 = *(this + 160);
        v2 = *(this + 168);
      }

      v4 = v5;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 5) > v5++);
  }

  return this;
}

void MTChordIntegrating::momentumFilterAlpha(MTChordIntegrating *this, const MTHandStatistics *a2, int a3)
{
  v3 = *(a2 + 1);
  v4 = v3 - *(a2 + 10);
  v5 = (v3 - *(a2 + 2)) / 0.00800000038;
  if (a3)
  {
    exp2(v5 * -2.0);
    pow(0.800000012, v5);
  }

  else
  {
    pow(0.850000024, v5);
  }
}

double MTChordIntegrating::decayMomentumFilters(MTChordIntegrating *this, const MTHandStatistics *a2)
{
  v4 = *(this + 34);
  if (v4)
  {
    result = *(a2 + 1);
    if (result != *(v4 + 144))
    {
      v7 = v2;
      v8 = v3;
      v6 = 0uLL;
      *&result = MTChordIntegrating::updateMomentumMickeys(this, &v6, a2).u64[0];
    }
  }

  return result;
}

float32x4_t MTChordIntegrating::updateMomentumMickeys(uint64_t a1, int32x4_t *a2, double *a3)
{
  v6 = (a1 + 360);
  v7 = *(a1 + 272);
  if (v7 && a3[1] - *(v7 + 144) <= 0.100000001)
  {
    v11 = *(a1 + 392);
    v10 = *(a1 + 376);
    v9 = *(a1 + 380);
    v8 = *(a1 + 360);
    v26 = *(a1 + 364);
  }

  else
  {
    *(a1 + 392) = 0;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 312) = 0u;
    v26 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  *(a1 + 328) = *a2;
  v12 = hypot(a2->i32[0], a2->i32[1]);
  v13 = (a3[1] - a3[2]) / 0.00800000038;
  v14 = pow(dbl_29D3D6C10[v11 < (v12 + v12)], v13);
  *(a1 + 392) = ((1.0 - v14) * v12) + (v14 * v11);
  v15 = hypotf(v10, v9);
  v16 = pow(dbl_29D3D6C20[v15 < (v12 + v12)], v13);
  v25 = v16;
  v24 = 1.0 - v16;
  v17 = hypotf(v8, v26) < v12;
  MTChordIntegrating::momentumFilterAlpha(v18, a3, v17);
  v20 = vcvtq_f32_s32(*a2);
  v21 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - v19), *v6, v19);
  result = vbicq_s8(v21, vcltzq_f32(vmulq_f32(v21, v20)));
  v23 = vmlaq_n_f32(vmulq_n_f32(v20, v24), v6[1], v25);
  *v6 = result;
  v6[1] = v23;
  return result;
}

uint64_t MTChordIntegrating::switchingVerticalToHorizontal(int32x2_t *this, float a2, int a3)
{
  if (a3)
  {
    *this[43].i8 = *this[41].i8;
  }

  v3 = this[43].i32[0];
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = this[43].i32[1];
  if (v4 < 0)
  {
    v4 = -v4;
  }

  if (v3 >= (2 * v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = vabs_s32(this[41]);
    v6 = vcgt_u32(v5, vdup_lane_s32(v5, 1)).u8[0];
  }

  return v6 & 1;
}

uint64_t MTChordIntegrating::markMomentumPause(MTChordIntegrating *this, const MTHandStatistics *a2)
{
  MTChordIntegrating::markMomentumPause(this, a2, 3.0, this + 40);

  return MTChordIntegrating::markMomentumPause(this, a2, 3.5, this + 39);
}

uint64_t MTChordIntegrating::markMomentumPause(MTChordIntegrating *this, const MTHandStatistics *a2, float a3, double *a4)
{
  v6 = *(this + 98) * a3;
  if (v6 >= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (((*(this + 91) * *(this + 91)) + (*(this + 90) * *(this + 90))) <= v7)
  {
    goto LABEL_10;
  }

  v9 = *(this + 82);
  v10 = *(this + 83);
  v11 = hypot(v9, v10);
  v12 = *(this + 94);
  v13 = *(this + 95);
  v14 = hypotf(v12, v13);
  result = 0;
  v16 = (v11 * v11) <= v7 || (v14 * v14) <= v7;
  if (!v16 && (((v13 * v10) + (v12 * v9)) / (v14 * v11)) < -0.5)
  {
LABEL_10:
    *a4 = *(a2 + 1);
    return 1;
  }

  return result;
}

BOOL MTChordIntegrating::recentMomentumPause(MTChordIntegrating *this, const MTHandStatistics *a2, int a3)
{
  v3 = 312;
  if (a3)
  {
    v3 = 320;
  }

  v4 = *(a2 + 1) - *(this + v3);
  v5 = &qword_2A17A1D80;
  if (a3)
  {
    v5 = &qword_2A17A1D88;
  }

  return v4 < *v5;
}

uint64_t MTChordIntegrating::possiblyStartMomentum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 264) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 272);
  if (!v5)
  {
    return 0;
  }

  if ((*(v5 + 34) & 0x40) == 0)
  {
    return 0;
  }

  v6 = *v5;
  if (*v5 == v5[1])
  {
    return 0;
  }

  v10 = *v6;
  if (v10 == 69)
  {
    v13 = *(a2 + 186);
    v14 = *(a2 + 211) + v13;
    if (v14 && ((*(a1 + 364) * *(a1 + 364)) + (*(a1 + 360) * *(a1 + 360))) >= 25.0)
    {
      if (v14 != 1 || v13 <= *(a2 + 195))
      {
        v24 = *(v6 + 5);
        MTDragManagerEventQueue::startMomentum(a4, a3, 4);
        v25 = *(a1 + 360);
        v26 = *(a1 + 364);
        goto LABEL_36;
      }

      MTDragManagerEventQueue::stopMomentum(a4, a3, 4);
      return 0;
    }

    goto LABEL_11;
  }

  if (v10 != 70 || (v11 = *(a1 + 360), v12 = *(a1 + 364), ((v12 * v12) + (v11 * v11)) < 25.0))
  {
LABEL_11:
    if (*v6 == 68 && *(a2 + 8) - *(a4 + 1240) > *&qword_2A17A1DA8 && ((*(a1 + 364) * *(a1 + 364)) + (*(a1 + 360) * *(a1 + 360))) >= 64.0)
    {
      MTDragManagerEventQueue::startMomentum(a4, a3, 2);
      v15 = *(a1 + 360);
      v16 = *(a1 + 364);
LABEL_36:
      MTAppendRelativeMouseEvent();
      return 1;
    }

    return 0;
  }

  v17 = -v11;
  v18 = -v12;
  if (v17 >= 0)
  {
    v19 = -v11;
  }

  else
  {
    v19 = -v17;
  }

  v20 = v19;
  if (v18 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = -v18;
  }

  if ((v21 * 3.0) >= v20)
  {
    if ((v20 * 3.0) < v21)
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (((v18 * v18) + (v17 * v17)) < 25.0 || *(a2 + 8) - *(a1 + 400) <= 0.05)
  {
    return 1;
  }

  v22 = 1;
  MTAppendMomentumEnableEvent();
  MTAppendScrollEvent();
  if (*(a4 + 1264) == 1)
  {
    MTDragManagerEventQueue::stopMomentum(a4, a3, 1);
  }

  *(a1 + 400) = *(a2 + 8);
  *(a4 + 1268) = 1;
  *(a4 + 1264) = 1;
  return v22;
}

uint64_t MTChordIntegrating::clearMickeysSinceLastTouchdown(uint64_t this)
{
  *(this + 288) = 0;
  v1 = *(this + 160);
  v2 = *(this + 168) - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 5);
    v4 = (v1 + 112);
    v5 = 1;
    do
    {
      *v4 = 0;
      v4 += 40;
    }

    while (v3 > v5++);
  }

  return this;
}

BOOL MTChordIntegrating::waitForFastShotVerification(MTChordIntegrating *this, const MTHandStatistics *a2, const MTHandMotion *a3)
{
  if (*(this + 75) != 1)
  {
    return 0;
  }

  v3 = *(a2 + 1) - *(a2 + 7);
  if (v3 < 0.135000005)
  {
    return 1;
  }

  if (v3 >= 0.230000004)
  {
    return 0;
  }

  if (!*(a2 + 186))
  {
    return 1;
  }

  return *(a2 + 191) > *(a2 + 186);
}

uint64_t MTChordIntegrating::continueChordIntegration(MTChordGestureSet *this, MTHandStatistics *a2, MTHandMotion *a3, uint64_t a4, uint64_t a5, double a6, double a7, float a8)
{
  v12 = *(this + 34);
  if (v12)
  {
    v13 = *(v12 + 144);
  }

  else
  {
    v13 = 0.0;
  }

  result = MTChordGestureSet::chk4ChordPause(this, a2, a3, *(a2 + 1) - v13, v13, a8);
  if (result)
  {
    v15 = *(a2 + 1);
    if (*(this + 265) == 1)
    {
      v16 = *(this + 38);
    }

    else
    {
      *(this + 38) = v15;
      v16 = v15;
    }

    *(this + 265) = 1;
    if (v15 - v16 > 0.120000005)
    {
      *(this + 267) = 0;
    }
  }

  v54 = a3;
  v17 = *(this + 58);
  if (v17 && (*(a5 + 24) & v17) == 0)
  {
    goto LABEL_83;
  }

  v18 = *(a2 + 1);
  v19 = *(a5 + 1240);
  if ((*(this + 60) & 0x100) != 0 && (*(this + 266) & 1) == 0 && (*(this + 264) & 1) == 0)
  {
    result = *(a5 + 392);
    if ((*(result + 28) != 1 || *(result + 24) <= 2) && v18 - *(this + 31) > *&qword_2A17A1D90)
    {
      if (*(this + 13) == *(this + 12))
      {
        std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
      }

      v20 = *(this + 56);
      result = (*(*result + 24))(result, *(a2 + 1));
      *(this + 266) = 1;
    }
  }

  v21 = v18 - v19;
  if ((*(this + 264) & 1) == 0)
  {
    result = MTChordIntegrating::hasChordStabilized(this, a2, a3);
    if (result)
    {
      result = MTChordGestureSet::chk4ChordTimein(this, a2);
      if (result)
      {
        result = MTChordIntegrating::sendSlidePreamble(this, a2, a3, *(a5 + 392), a4, 0, 4u, v21);
      }
    }
  }

  v22 = *(this + 20);
  if (*(this + 21) == v22)
  {
    goto LABEL_83;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v52 = 0;
  v53 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0.0;
  v29 = 1;
  do
  {
    v30 = (v22 + 160 * v23);
    v31 = *(v30 + 7);
    if ((!v31 || (*(a5 + 24) & v31) != 0) && (MTSlideGesture::isBlocked(v30, a2, v54, this, *(a5 + 400)) & 1) == 0)
    {
      v32 = MTSlideGesture::integrateGesture(v30, a2, v54, *(a5 + 392), this, *(a2 + 1) - *(a5 + 1232));
      canPunishSomeMoving = MTSlideGesture::canPunishSomeMoving(v30, a2, this);
      v34 = v32 < v28;
      if (v32 >= v28)
      {
        v28 = v32;
      }

      v35 = v53;
      if (!v34)
      {
        v35 = v30;
      }

      v53 = v35;
      if (*v30 != v30[1] && **v30 - 35 <= 4)
      {
        v36 = v52;
        if (!v52 || fabsf(*(v30 + 20)) > fabsf(*(v52 + 80)))
        {
          v36 = v30;
        }

        v52 = v36;
        if (!v27)
        {
          v38 = v30;
          v30 = 0;
          goto LABEL_46;
        }

        v37 = fabsf(*(v30 + 23));
        if (v37 > fabsf(*(v27 + 92)))
        {
          v38 = v30;
          v30 = v27;
LABEL_46:
          v25 += canPunishSomeMoving;
          ++v24;
          v27 = v38;
          v26 = v30;
          goto LABEL_47;
        }

        if (!v26 || v37 > fabsf(v26[23]))
        {
          v38 = v27;
          goto LABEL_46;
        }
      }

      v38 = v27;
      v30 = v26;
      goto LABEL_46;
    }

LABEL_47:
    v23 = v29;
    v22 = *(this + 20);
    v39 = *(this + 21);
    v40 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v22) >> 5) > v29++;
  }

  while (v40);
  v41 = 0;
  if (v27 && v52 == v27)
  {
    v41 = !v26 || (fabsf(*(v27 + 92)) - *(v27 + 56)) > fabsf(v26[23]);
  }

  result = MTChordIntegrating::hasChordStabilized(this, a2, v54);
  if (!result || v24 < 1)
  {
    goto LABEL_83;
  }

  result = *(this + 34);
  if (!v27 || result)
  {
    goto LABEL_66;
  }

  if (v53 == v27)
  {
    goto LABEL_62;
  }

  if (!v53)
  {
    goto LABEL_76;
  }

  if (*v53 == v53[1] || **v53 - 35 > 4)
  {
LABEL_66:
    if (v24 >= 2 && v25 >= 1 && v53)
    {
      if (v28 <= 0.2 && *(a2 + 1) - *(this + 31) <= *&qword_2A17A1D98)
      {
        goto LABEL_83;
      }

      v42 = *(a5 + 392);
      result = v53;
LABEL_70:
      result = MTSlideGesture::fireGesture(result, a2, v54, v42, a4, this, v21);
      goto LABEL_83;
    }

    if (result && *result != *(result + 8) && **result - 35 <= 4)
    {
      v42 = *(a5 + 392);
      if (v52)
      {
        result = v52;
      }

      goto LABEL_70;
    }

LABEL_76:
    if (v39 != v22)
    {
      v43 = 0;
      v44 = 1;
      do
      {
        v45 = v22 + 160 * v43;
        v46 = *(v45 + 28);
        if (!v46 || (*(a5 + 24) & v46) != 0)
        {
          result = MTSlideGesture::isBlocked(v45, a2, v54, this, *(a5 + 400));
          if ((result & 1) == 0)
          {
            result = MTSlideGesture::fireGesture(v45, a2, v54, *(a5 + 392), a4, this, v21);
          }
        }

        v43 = v44;
        v22 = *(this + 20);
        v40 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v22) >> 5) > v44++;
      }

      while (v40);
    }

    goto LABEL_83;
  }

LABEL_62:
  if (v41)
  {
    v42 = *(a5 + 392);
    result = v27;
    goto LABEL_70;
  }

LABEL_83:
  v47 = *(a2 + 1);
  v48 = *(this + 34);
  if (v48)
  {
    v49 = *(v48 + 144);
    if (v47 - v49 < v47 - *(a5 + 1232))
    {
      *(a5 + 1232) = v49;
      v50 = *v48;
      if (*v48 != *(v48 + 8))
      {
        if ((*v50 & 0xFFFE) == 0x46)
        {
          *(a5 + 1240) = v49;
        }

        if (*v50 - 35 <= 4)
        {
          *(a5 + 1248) = v49;
        }
      }
    }
  }

  else if (v47 < v47 - *(a5 + 1232))
  {
    *(a5 + 1232) = 0;
  }

  return result;
}

void MTSimpleEventDispatcher::MTSimpleEventDispatcher(MTSimpleEventDispatcher *this)
{
  *this = &unk_2A2412330;
  atomic_store(1u, this + 2);
}

{
  *this = &unk_2A2412330;
  atomic_store(1u, this + 2);
}

void MTSimpleEventDispatcher::initialize(uint64_t a1, MTSimpleHIDManager *this, const void *a3)
{
  *(a1 + 16) = this;
  MTSimpleHIDManager::retain(this);
  *(a1 + 48) = CFRetain(a3);
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 432) = MTPreferencesGetAppBooleanValue(@"DispatchAllHIDEvents", @"com.apple.MultitouchSupport", 0);
  *(a1 + 64) = 0;
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"MTHIDDevice", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    if (v8 == CFBooleanGetTypeID())
    {
      *(a1 + 64) = CFBooleanGetValue(v7) != 0;
    }

    CFRelease(v7);
  }

  *(a1 + 72) = 0;
}

unsigned int *MTSimpleEventDispatcher::finalize(MTSimpleEventDispatcher *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 9) = 0;
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
    *(this + 6) = 0;
  }

  result = MTSimpleHIDManager::release(*(this + 2));
  *(this + 2) = 0;
  return result;
}

uint64_t MTSimpleEventDispatcher::retain(uint64_t this)
{
  if (!atomic_load((this + 8)))
  {
    MTSimpleEventDispatcher::retain();
  }

  atomic_fetch_add((this + 8), 1u);
  return this;
}

unsigned int *MTSimpleEventDispatcher::release(unsigned int *this)
{
  if (!atomic_load(this + 2))
  {
    MTSimpleEventDispatcher::release();
  }

  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v2 = this;
    (*(*this + 24))(this);
    v3 = *(*v2 + 8);

    return v3(v2);
  }

  return this;
}

void MTSimpleEventDispatcher::setHIDDispatchQueue(MTSimpleEventDispatcher *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 9) = object;
}

void *MTSimpleEventDispatcher::setEventCallback(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t MTSimpleEventDispatcher::handleEvent(void *a1, uint64_t a2, uint64_t a3)
{
  a1[7] = a2;
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    result = (*(*a1 + 40))(a1, a2, a3);
  }

  a1[7] = 0;
  return result;
}

void MTSimpleEventDispatcher::dispatchEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a2 && *(a1 + 24) && *(a1 + 16))
  {
    (*(*a1 + 56))(a1);
    v6 = *(a1 + 48);
    MTDeviceGetDeviceID();
    Type = IOHIDEventGetType();
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      Count = CFArrayGetCount(Children);
    }

    else
    {
      Count = 0;
    }

    if (Type == 11 && ((IOHIDEventGetIntegerValue() & 2) != 0 || (IOHIDEventGetIntegerValue() & 0x80) != 0))
    {
      v10 = *(a1 + 48);
      MTDeviceGetDeviceID();
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219520;
        v20 = Count;
        v21 = 2048;
        IntegerValue = IOHIDEventGetIntegerValue();
        v23 = 2048;
        *v24 = IOHIDEventGetIntegerValue();
        *&v24[8] = 1024;
        *&v24[10] = (IOHIDEventGetIntegerValue() >> 7) & 1;
        v25 = 1024;
        v26 = IOHIDEventGetIntegerValue() == 1;
        v27 = 1024;
        v28 = IOHIDEventGetIntegerValue() == 1;
        v29 = 2048;
        v30 = 0;
        _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_DEFAULT, "Dispatching event with %ld children, _eventMask=0x%lx _childEventMask=0x%lx Cancel=%d Touching=%d inRange=%d (deviceID 0x%llX)", buf, 0x3Cu);
      }
    }

    v12 = mach_continuous_time();
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 24);
    HIDService = MTSimpleHIDManager::getHIDService(*(a1 + 16));
    v15(v13, v14, HIDService, a2, a3);
    v17 = MTLoggingPlugin();
    if (os_signpost_enabled(v17))
    {
      *buf = 134349824;
      v20 = v12;
      v21 = 2048;
      IntegerValue = 0;
      v23 = 1024;
      *v24 = Type;
      *&v24[4] = 2048;
      *&v24[6] = Count;
      _os_signpost_emit_with_name_impl(&dword_29D381000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Multitouch Event Dispatch", "%{public, signpost.description:begin_time}llu mtDeviceID=%llu eventType=%u children=%lu", buf, 0x26u);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void MTSimpleEventDispatcher::recordHIDEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 && a3 <= 5)
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v6 = Children;
      if (CFArrayGetCount(Children) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
          (*(*a1 + 56))(a1, ValueAtIndex, (a3 + 1));
          ++v7;
        }

        while (v7 < CFArrayGetCount(v6));
      }
    }

    Type = IOHIDEventGetType();
    if (Type <= 0x2B)
    {
      *(a1 + 8 * Type + 80) = CFAbsoluteTimeGetCurrent();
    }
  }
}

__CFDictionary *MTSimpleEventDispatcher::copyDebugData(MTSimpleEventDispatcher *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 44, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v4 = CFDateFormatterCreate(v2, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
    if (v4)
    {
      v5 = v4;
      v6 = CFTimeZoneCopySystem();
      if (v6)
      {
        v7 = v6;
        CFDateFormatterSetProperty(v5, *MEMORY[0x29EDB8F30], v6);
        CFRelease(v7);
      }

      v8 = 0;
      v9 = this + 80;
      do
      {
        v10 = *&v9[8 * v8];
        if (v10 > 0.0)
        {
          StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v2, v5, v10);
          if (StringWithAbsoluteTime)
          {
            v12 = StringWithAbsoluteTime;
            Name = IOHIDEventTypeGetName();
            CFDictionarySetValue(Mutable, Name, v12);
            CFRelease(v12);
          }
        }

        ++v8;
      }

      while (v8 != 44);
      CFRelease(v5);
    }
  }

  return Mutable;
}

uint64_t MTSimpleEmbeddedEventDispatcher::markEventDispatchAllMode(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return IOHIDEventSetIntegerValue();
  }

  return result;
}

uint64_t MTSimpleEmbeddedEventDispatcher::shouldDispatchEvent(_BYTE *a1, uint64_t a2)
{
  if ((IOHIDEventGetIntegerValue() & 0xF0FB17FFLL) != 0 || (IOHIDEventGetIntegerValue() & 1) != 0 || (IOHIDEventGetIntegerValue() & 2) != 0 || IOHIDEventConformsTo() || IOHIDEventConformsTo())
  {
    return 1;
  }

  v4 = 1;
  if (!IOHIDEventConformsTo())
  {
    if (a1[432] == 1)
    {
      (*(*a1 + 112))(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t MTPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, unsigned __int8 *a3)
{
  valuePtr = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v4 = 0;
  if (a1 && a2)
  {
    v5 = IOHIDPreferencesCopyDomain();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        IntValue = CFStringGetIntValue(v6);
        valuePtr = IntValue;
        Value = IntValue != 0;
        if (!a3)
        {
          goto LABEL_14;
        }
      }

      else if (v7 == CFNumberGetTypeID() && !CFNumberIsFloatType(v6))
      {
        Value = CFNumberGetValue(v6, kCFNumberCFIndexType, &valuePtr);
        if (!a3)
        {
          goto LABEL_14;
        }
      }

      else
      {
        Value = 0;
        if (!a3)
        {
LABEL_14:
          CFRelease(v6);
          return valuePtr;
        }
      }

      *a3 = Value;
      goto LABEL_14;
    }

    return 0;
  }

  return v4;
}

BOOL MTPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, unsigned __int8 *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v4 = 0;
  if (a1 && a2)
  {
    v5 = IOHIDPreferencesCopyDomain();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        v4 = 1;
        if (CFStringCompare(v6, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_19;
        }

        Value = 1;
        if (CFStringCompare(v6, @"YES", 1uLL) == kCFCompareEqualTo)
        {
          v4 = 1;
          if (!a3)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        if (CFStringCompare(v6, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v6, @"NO", 1uLL) == kCFCompareEqualTo)
        {
          v4 = 0;
          goto LABEL_19;
        }
      }

      else if (v7 == CFNumberGetTypeID())
      {
        if (!CFNumberIsFloatType(v6))
        {
          valuePtr = -1431655766;
          Value = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
          v4 = valuePtr != 0;
          if (!a3)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      else if (v7 == CFBooleanGetTypeID())
      {
        v4 = v6 == *MEMORY[0x29EDB8F00];
LABEL_19:
        Value = 1;
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v4 = 0;
      Value = 0;
      if (!a3)
      {
LABEL_23:
        CFRelease(v6);
        return v4;
      }

LABEL_22:
      *a3 = Value;
      goto LABEL_23;
    }

    return 0;
  }

  return v4;
}

void MTTrackpadEventDispatcher::initialize(uint64_t a1, MTSimpleHIDManager *a2, const void *a3)
{
  *(a1 + 436) = 0;
  *(a1 + 440) = 0;
  *(a1 + 444) = 0;
  *(a1 + 448) = 0;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 1114636288;
  *(a1 + 456) = 0;
  *(a1 + 548) = 1;
  *(a1 + 549) = MTPreferencesGetAppBooleanValue(@"NoPointing", @"com.apple.MultitouchSupport", 0);
  *(a1 + 464) = 6;
  *(a1 + 536) = 0;

  MTSimpleEventDispatcher::initialize(a1, a2, a3);
}

uint64_t MTTrackpadEventDispatcher::handleEvent(dispatch_object_t *a1, uint64_t a2, uint64_t a3)
{
  a1[7] = a2;
  if (IOHIDEventGetType() != 11 || IOHIDEventGetIntegerValue() != 1)
  {
LABEL_47:
    result = ((*a1)[4].isa)(a1, a2);
    if (result)
    {
      result = ((*a1)[5].isa)(a1, a2, a3);
    }

    goto LABEL_49;
  }

  Event = IOHIDEventGetEvent();
  v7 = IOHIDEventGetEvent();
  v48 = IOHIDEventGetEvent();
  v47 = IOHIDEventGetEvent();
  v46 = IOHIDEventGetEvent();
  v45 = IOHIDEventGetEvent();
  v44 = IOHIDEventGetEvent();
  v43 = IOHIDEventGetEvent();
  v42 = IOHIDEventGetEvent();
  v41 = IOHIDEventGetEvent();
  v8 = IOHIDEventConformsTo();
  v39 = IOHIDEventConformsTo();
  v40 = v8;
  v38 = IOHIDEventConformsTo();
  ((*a1)[14].isa)(a1);
  v9 = MTTrackpadEventDispatcher::checkForMomentumCancellation(a1);
  if (v8 | v39)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  v49 = NAN;
  if (Event)
  {
    IOHIDEventGetFloatValue();
    v12 = v11;
    IOHIDEventGetFloatValue();
    v14 = v13;
    v15 = MTTrackpadEventDispatcher::checkForMomentumInitiation(a1, a2, &v49);
    EventFlags = IOHIDEventGetEventFlags();
    if ((EventFlags & 0x100000) != 0)
    {
      IntegerValue = *(a1 + 132);
      if (v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if (v15)
      {
        goto LABEL_13;
      }
    }

    if ((*(a1 + 549) & 1) == 0)
    {
      v18 = v12;
      v19 = v14;
      v20 = v18;
      v21 = v19;
      v22 = mach_absolute_time();
      ((*a1)[19].isa)(a1, v20, v21, IntegerValue, v22, 0, EventFlags);
    }
  }

LABEL_13:
  if (v7)
  {
    IOHIDEventGetFloatValue();
    v24 = v23;
    IOHIDEventGetFloatValue();
    v26 = v25;
    IOHIDEventGetFloatValue();
    v28 = v27;
    v29 = MTTrackpadEventDispatcher::checkForMomentumInitiation(a1, a2, &v49);
    ((*a1)[18].isa)(a1, v24, v26, v28, 0, 0, 0, v49);
    if (v29)
    {
      if ((*(a1 + 134) - 1) <= 2)
      {
        ((*a1)[18].isa)(a1, 0, 0, 0, 1, 0, 0, 60.0);
      }

      goto LABEL_18;
    }

    if ((*(a1 + 548) & 1) == 0)
    {
LABEL_18:
      IOHIDEventRemoveEvent();
    }
  }

  if ((v10 & 1) == 0)
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v31 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v33 = Count;
        v34 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v31, v34);
          if (IOHIDEventGetType() == 2)
          {
            break;
          }

          if (IOHIDEventGetType() == 3)
          {
            IOHIDEventGetIntegerValue();
            IOHIDEventGetIntegerValue();
            MTSimpleEventDispatcher::getMTDevice(a1);
            MTDeviceDispatchKeyboardEvent();
            goto LABEL_27;
          }

LABEL_28:
          if (v33 == ++v34)
          {
            goto LABEL_29;
          }
        }

        v35 = IOHIDEventGetIntegerValue();
        v36 = mach_absolute_time();
        ((*a1)[19].isa)(a1, 0, 0, v35, v36, 0, 0);
LABEL_27:
        usleep(0x1770u);
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  if (v7)
  {
    goto LABEL_47;
  }

  if (Event)
  {
    goto LABEL_47;
  }

  if (a1[54])
  {
    goto LABEL_47;
  }

  if (v48)
  {
    goto LABEL_47;
  }

  if (v47)
  {
    goto LABEL_47;
  }

  if (v46)
  {
    goto LABEL_47;
  }

  if (v45)
  {
    goto LABEL_47;
  }

  if (v44)
  {
    goto LABEL_47;
  }

  if (v43)
  {
    goto LABEL_47;
  }

  if (v42)
  {
    goto LABEL_47;
  }

  if (v41)
  {
    goto LABEL_47;
  }

  if (v40)
  {
    goto LABEL_47;
  }

  if (v39)
  {
    goto LABEL_47;
  }

  if (v38)
  {
    goto LABEL_47;
  }

  if (IOHIDEventGetIntegerValue())
  {
    goto LABEL_47;
  }

  if (IOHIDEventGetIntegerValue())
  {
    goto LABEL_47;
  }

  if ((IOHIDEventGetIntegerValue() & 2) != 0)
  {
    goto LABEL_47;
  }

  result = IOHIDEventConformsTo();
  if (result)
  {
    goto LABEL_47;
  }

LABEL_49:
  a1[7] = 0;
  return result;
}

uint64_t MTTrackpadEventDispatcher::checkForMomentumCancellation(dispatch_object_t *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  MomentumEnableEvent = getMomentumEnableEvent();
  if (a1[57])
  {
    if (MomentumEnableEvent)
    {
      *buf = 0;
      IOHIDEventGetVendorDefinedData();
    }

    if (IOHIDEventConformsTo() || IOHIDEventConformsTo() || IOHIDEventConformsTo())
    {
      if (!IOHIDEventConformsTo())
      {
        v17 = 1;
        MTTrackpadEventDispatcher::cancelOutstandingMomentumTimer(a1, 1);
        goto LABEL_22;
      }

      context = dispatch_get_context(a1[57]);
      if (context)
      {
        v4 = context;
        v5 = context[8];
        if (IOHIDEventGetIntegerValue() == v5 && *v4 != 1)
        {
          v6 = *(v4 + 72);
          v7 = *(v4 + 48);
          v8 = 0.0;
          v9 = 0.0;
          if (v6 < (*(v4 + 56) - v7) >> 2)
          {
            v9 = *(v7 + 4 * v6);
          }

          v10 = *(v4 + 112);
          v11 = *(v4 + 88);
          if (v10 < (*(v4 + 96) - v11) >> 2)
          {
            v8 = *(v11 + 4 * v10);
          }

          v12 = hypotf(v9, v8);
          v13 = v9 + IOHIDEventGetIntegerValue() * 0.25;
          v14 = v8 + IOHIDEventGetIntegerValue() * 0.25;
          v15.n128_f32[0] = hypotf(v13, v14);
          if (v12 > 0.0 && v15.n128_f32[0] > v12)
          {
            v15.n128_f32[0] = v12 / v15.n128_f32[0];
            v13 = v15.n128_f32[0] * v13;
            v14 = v15.n128_f32[0] * v14;
          }

          *(v4 + 24) = v13;
          *(v4 + 28) = v14;
          MTTrackpadEventDispatcher::generateMomentumDeltas(a1, v4, v15);
          v16 = MTLoggingPlugin();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = "";
            v21 = 2080;
            v22 = "";
            v23 = 2080;
            v24 = "checkForMomentumCancellation";
            v25 = 2048;
            v26 = v13;
            v27 = 2048;
            v28 = v14;
            _os_log_impl(&dword_29D381000, v16, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Adjusted point/drag momentum %4.1fx %4.1fy\n", buf, 0x34u);
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_22:
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

const void *MTTrackpadEventDispatcher::checkForMomentumInitiation(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = getMomentumEnableEvent();
  *a3 = 1114636288;
  if (result)
  {
    IOHIDEventGetVendorDefinedData();
    return 0;
  }

  return result;
}

uint64_t MTTrackpadEventDispatcher::handleParserDisabled(uint64_t this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(this + 524) == 1)
  {
    v1 = this;
    v2 = MTLoggingPlugin();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "[Debug] ";
      v7 = 2080;
      v8 = "";
      v9 = 2080;
      v10 = "handleParserDisabled";
      _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Trackpad has been disabled with button down. Dispatching button up event", &v5, 0x20u);
    }

    v3 = mach_absolute_time();
    this = (*(*v1 + 152))(v1, 0, 0, 0, v3, 0, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
  return this;
}

_DWORD *MTTrackpadEventDispatcher::updateFingerStats(MTTrackpadEventDispatcher *this)
{
  result = MTSimpleEventDispatcher::getOwner(this);
  if (result)
  {
    result = (*(*result + 864))(result);
    if (result)
    {
      v3 = result;
      v4 = *(result + 6);
      v5 = v4 && *(v4 + 8) - *(result + 19) == 0.0;
      v6 = result[26] > 1;
      if (!*(this + 131))
      {
        NonRestingFingerCount = MTParser::getNonRestingFingerCount(result, (result[9] >> 1) & 1);
        v8 = (*(*this + 168))(this);
        v9 = v3[6];
        if (v9)
        {
          v10 = *(v9 + 308);
        }

        else
        {
          v10 = 0;
        }

        v11 = *(this + 111);
        v12 = v3[8];
        if (v12)
        {
          v13 = v3[25];
          if (v13)
          {
            v14 = *(v13 + 256);
            if (v14 >= 1)
            {
              memcpy(__dst, &unk_29D3D6D40, 0x128uLL);
              v15 = *(v12 + 280) + 600 * v14;
              __dst[0] = &unk_2A2411768;
              memcpy(&__dst[1], (v15 + 8), 0x11CuLL);
              __dst[37] = &unk_2A2413860;
              v17 = *(v15 + 320);
              v16 = *(v15 + 336);
              v33 = *(v15 + 304);
              v34 = v17;
              v35 = v16;
              v18 = *(v15 + 400);
              v19 = *(v15 + 352);
              v20 = *(v15 + 368);
              v38 = *(v15 + 384);
              v39 = v18;
              v37 = v20;
              v36 = v19;
              v21 = *(v15 + 448);
              v23 = *(v15 + 416);
              v22 = *(v15 + 432);
              v43 = *(v15 + 464);
              v42 = v21;
              v40 = v23;
              v41 = v22;
              v24 = *(v15 + 512);
              v26 = *(v15 + 480);
              v25 = *(v15 + 496);
              v47 = *(v15 + 528);
              v46 = v24;
              v44 = v26;
              v45 = v25;
              v28 = *(v15 + 560);
              v27 = *(v15 + 576);
              v29 = *(v15 + 544);
              v51 = *(v15 + 592);
              v50 = v27;
              v48 = v29;
              v49 = v28;
              v10 = __dst[35];
              MTParserPath::~MTParserPath(__dst);
            }
          }
        }

        v30 = v6 || v5;
        v31 = (*(*this + 176))(this);
        (*(*this + 120))(this, NonRestingFingerCount);
        (*(*this + 128))(this, (v10 & v11) != 0);
        if (v8 != (*(*this + 168))(this))
        {
          return (*(*this + 136))(this, v30 & 1);
        }

        result = (*(*this + 176))(this);
        if ((v31 ^ result | v30))
        {
          return (*(*this + 136))(this, v30 & 1);
        }
      }
    }
  }

  return result;
}

uint64_t MTTrackpadEventDispatcher::updateClickState(uint64_t this, char a2)
{
  v2 = this;
  if (*(this + 440))
  {
    *(this + 520) = 0;
    if (a2)
    {
      return this;
    }

    v3 = (this + 520);
    this = (*(*this + 168))(this);
    if (this == 2)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (!*(this + 444))
    {
      return this;
    }

    *(this + 520) = 0;
    if (a2)
    {
      return this;
    }

    v3 = (this + 520);
  }

  if (v2[111])
  {
    this = (*(*v2 + 176))(v2);
    if (this)
    {
      *v3 = 1;
    }
  }

  return this;
}

uint64_t MTTrackpadEventDispatcher::getHIDPhaseFromScrollPhase(MTTrackpadEventDispatcher *this, unsigned int a2)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return gScrollPhaseToHIDPhase[a2];
  }
}

uint64_t MTTrackpadEventDispatcher::getNextScrollPhase(MTTrackpadEventDispatcher *this, unsigned int a2, int a3)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return gNextScrollPhaseForPhase[2 * a2 + a3];
  }
}

void MTTrackpadEventDispatcher::setScrollMomentumDispatchRate(MTTrackpadEventDispatcher *this, float a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = 1114636288;
  if (a2 >= 60.0 && (v4 = 1140457472, a2 <= 500.0))
  {
    *(this + 136) = a2;
  }

  else
  {
    *(this + 136) = v4;
  }

  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 136);
    v8 = 136316162;
    v9 = "";
    v10 = 2080;
    v11 = "";
    v12 = 2080;
    v13 = "setScrollMomentumDispatchRate";
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requested value %f -> set value %f", &v8, 0x34u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

float *MTTrackpadEventDispatcher::dispatchMomentumScrollStartStopEvent(float *this, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return (*(*this + 144))(this, 0, 0, 0, 0, 1, a3, this[136]);
  }

  return this;
}

void MTTrackpadEventDispatcher::dispatchPointingEvent(MTTrackpadEventDispatcher *this, int a2, int a3, int a4, unint64_t a5, int a6, int a7)
{
  v8 = a3 | a2 | a7;
  if (a6)
  {
    if (!v8 && *(this + 133) == a4)
    {
      return;
    }

    *(this + 133) = a4;
    v9 = a4;
    a4 = *(this + 132);
  }

  else
  {
    if (!v8 && *(this + 132) == a4)
    {
      return;
    }

    *(this + 132) = a4;
    v9 = *(this + 133);
  }

  v10 = v9 | a4;
  if (v10 & *(this + 520))
  {
    v11 = v10 & 0xFFFFFFFC | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = *MEMORY[0x29EDB8ED8];
  v13 = *(this + 131);
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  if (RelativePointerEvent)
  {
    v15 = RelativePointerEvent;
    (*(*this + 40))(this, RelativePointerEvent, 0);
    CFRelease(v15);
  }

  *(this + 131) = v11;
}

void MTTrackpadEventDispatcher::dispatchScrollEvent(MTTrackpadEventDispatcher *this, int a2, int a3, int a4, int a5, int a6, float a7, int a8)
{
  v31 = *MEMORY[0x29EDCA608];
  valuePtr = a7;
  if (*(this + 548) != 1)
  {
    goto LABEL_32;
  }

  if (!a6)
  {
    v13 = *(this + 134);
    if (v13 >= 0xA)
    {
      v14 = 0;
      *(this + 134) = 0;
    }

    else
    {
      v14 = gNextScrollPhaseForPhase[2 * v13 + ((a3 | a2 | a4) != 0)];
      *(this + 134) = v14;
      if (v14 > 9)
      {
        goto LABEL_32;
      }
    }

    v15 = gScrollPhaseToHIDPhase[v14];
LABEL_12:
    if (!v15)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  if (*(this + 540) != 1)
  {
    goto LABEL_32;
  }

  v11 = *(this + 116);
  if (v11 >= 0xA)
  {
    v12 = 0;
    *(this + 116) = 0;
  }

  else
  {
    v12 = gNextScrollPhaseForPhase[2 * v11 + ((a3 | a2 | a4) != 0)];
    *(this + 116) = v12;
    if (v12 > 9)
    {
      goto LABEL_32;
    }
  }

  v15 = gScrollPhaseToHIDPhase[v12];
  v16 = v12 == 9 || v12 == 4;
  if (!v16 || !a8)
  {
    goto LABEL_12;
  }

  v17 = MTLoggingPlugin();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "";
    v27 = 2080;
    v28 = "";
    v29 = 2080;
    v30 = "dispatchScrollEvent";
    _os_log_impl(&dword_29D381000, v17, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Momentum interrupted", buf, 0x20u);
  }

LABEL_23:
  v18 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  if (ScrollEvent)
  {
    v20 = ScrollEvent;
    if (a6)
    {
      IOHIDEventSetScrollMomentum();
      v21 = CFNumberCreate(v18, kCFNumberFloatType, &valuePtr);
      if (v21)
      {
        v22 = v21;
        _IOHIDEventSetAttachment();
        CFRelease(v22);
      }
    }

    else
    {
      IOHIDEventSetPhase();
      if (*(this + 540) == 1 && a5 && *(this + 134) == 4)
      {
        IOHIDEventSetScrollMomentum();
      }
    }

    (*(*this + 40))(this, v20, 0);
    CFRelease(v20);
  }

LABEL_32:
  v23 = *MEMORY[0x29EDCA608];
}

uint64_t MTTrackpadEventDispatcher::recordHIDEvent(uint64_t result, uint64_t a2, int a3)
{
  if (a2 && a3 <= 5)
  {
    v4 = result;
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v6 = Children;
      if (CFArrayGetCount(Children) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
          (*(*v4 + 56))(v4, ValueAtIndex, (a3 + 1));
          ++v7;
        }

        while (v7 < CFArrayGetCount(v6));
      }
    }

    Type = IOHIDEventGetType();
    v10 = Type;
    result = IOHIDEventGetPhase();
    if (Type <= 0x2B && (!result || (result & 1) != 0) && Type <= 0x1C)
    {
      if (((1 << Type) & 0x4003F2) != 0)
      {
        v11 = &v10;
        std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 472, &v10);
        CFAbsoluteTimeGetCurrent();
        operator new();
      }

      if (((1 << Type) & 0x18810000) != 0)
      {
        CFAbsoluteTimeGetCurrent();
        if (Type > 26 || Type == 16 || Type == 23)
        {
          IOHIDEventGetIntegerValue();
        }

        operator new();
      }
    }
  }

  return result;
}

__CFDictionary *MTTrackpadEventDispatcher::copyDebugData(MTTrackpadEventDispatcher *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 44, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (theDict)
  {
    v3 = CFDateFormatterCreate(v2, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
    if (v3)
    {
      v4 = v3;
      v5 = CFTimeZoneCopySystem();
      if (v5)
      {
        v6 = v5;
        CFDateFormatterSetProperty(v4, *MEMORY[0x29EDB8F30], v5);
        CFRelease(v6);
      }

      v7 = *(this + 59);
      v31 = this;
      v8 = this + 480;
      if (v7 != this + 480)
      {
        v9 = MEMORY[0x29EDB9000];
        do
        {
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v34[0] = v10;
          v34[1] = v10;
          LODWORD(v34[0]) = *(v7 + 8);
          std::list<double>::list(v34 + 1, (v7 + 40));
          memset(v33, 170, sizeof(v33));
          std::list<double>::list(v33, v34 + 8);
          Mutable = CFArrayCreateMutable(v2, 100, v9);
          if (Mutable)
          {
            v12 = v33[2] == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            v13 = v8;
            for (i = v33[1]; i != v33; i = *(i + 8))
            {
              StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v2, v4, *(i + 16));
              if (StringWithAbsoluteTime)
              {
                CFArrayAppendValue(Mutable, StringWithAbsoluteTime);
                CFRelease(StringWithAbsoluteTime);
              }
            }

            Name = IOHIDEventTypeGetName();
            v8 = v13;
            v9 = MEMORY[0x29EDB9000];
            CFDictionarySetValue(theDict, Name, Mutable);
            CFRelease(Mutable);
          }

          std::__list_imp<double>::clear(v33);
          std::__list_imp<double>::clear(v34 + 1);
          v17 = *(v7 + 1);
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = *(v7 + 2);
              v12 = *v18 == v7;
              v7 = v18;
            }

            while (!v12);
          }

          v7 = v18;
        }

        while (v18 != v8);
      }

      v19 = CFArrayCreateMutable(v2, 1000, MEMORY[0x29EDB9000]);
      if (v19)
      {
        v20 = v19;
        v21 = this + 496;
        v22 = *(v31 + 63);
        if (v22 != (v31 + 496))
        {
          do
          {
            v23 = *(v22 + 16);
            v24 = *(v22 + 20);
            v25 = CFDateFormatterCreateStringWithAbsoluteTime(v2, v4, *(v22 + 24));
            if (v25)
            {
              v26 = v25;
              v27 = IOHIDEventTypeGetName();
              v28 = CFStringCreateWithFormat(v2, 0, @"%@ (%u) @ %@", v27, v24, v26);
              if (v28)
              {
                v29 = v28;
                CFArrayAppendValue(v20, v28);
                CFRelease(v29);
              }

              CFRelease(v26);
            }

            v22 = *(v22 + 8);
          }

          while (v22 != v21);
        }

        CFDictionarySetValue(theDict, @"Gesture events", v20);
        CFRelease(v20);
      }

      CFRelease(v4);
    }
  }

  return theDict;
}

float MTTrackpadEventDispatcher::momentumDecayRateAlpha(int a1, float a2, float a3, float a4)
{
  if (a1 == 2)
  {
    if (a4 <= 0.0)
    {
      v16 = a4 / 0.00800000038;
      v15 = 0.85;
      return pow(v15, v16);
    }

    v12 = hypotf(a2, a3) / a4;
    v9 = 1.0;
    if (v12 > 0.0)
    {
      v9 = 0.0;
      if (v12 < 500.0)
      {
        v9 = ((500.0 - v12) / 500.0);
      }
    }

    v10 = 0.95;
    v11 = -0.1;
  }

  else if (a1 == 4)
  {
    if (a4 <= 0.0)
    {
      v16 = a4 / 0.00800000038;
      v15 = 0.9;
      return pow(v15, v16);
    }

    v5 = hypotf(a2, a3) / a4;
    v6 = 0.0;
    if (v5 > 2000.0)
    {
      v6 = 1.0;
      if (v5 < 3000.0)
      {
        v6 = (v5 + -2000.0) / 1000.0;
      }
    }

    v7 = 1.0;
    if (v5 > 0.0)
    {
      v7 = 0.0;
      if (v5 < 250.0)
      {
        v7 = (250.0 - v5) / 250.0;
      }
    }

    if (v6 >= v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8;
    v10 = 0.98;
    v11 = -0.08;
  }

  else
  {
    if (a4 <= 0.0)
    {
      v16 = a4 / 0.00800000038;
      v15 = 0.975;
      return pow(v15, v16);
    }

    v13 = hypotf(a2, a3) / a4;
    v9 = 1.0;
    if (v13 > 0.0)
    {
      v9 = 0.0;
      if (v13 < 250.0)
      {
        v9 = ((250.0 - v13) / 250.0);
      }
    }

    v10 = 0.975;
    v11 = -0.065;
  }

  v14 = v10 + v9 * v11;
  v15 = v14;
  v16 = a4 / 0.00800000038;
  return pow(v15, v16);
}

uint64_t MTTrackpadEventDispatcher::startMomentumTimerForEvent()
{
  v3 = *MEMORY[0x29EDCA608];
  Event = IOHIDEventGetEvent();
  result = IOHIDEventGetEvent();
  if (Event | result)
  {
    operator new();
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void MTTrackpadEventDispatcher::cancelOutstandingMomentumTimer(MTTrackpadEventDispatcher *this, uint64_t a2)
{
  v2 = *(this + 57);
  if (v2)
  {
    context = dispatch_get_context(*(this + 57));
    if (context)
    {
      v6 = context;
      Owner = MTSimpleEventDispatcher::getOwner(this);
      if (Owner)
      {
        v8 = (*(*Owner + 864))(Owner);
        if (v8)
        {
          MTParser::feedbackMomentumTimerStatus(v8, *v6, 0);
        }
      }

      if (*v6 == 1)
      {
        (*(*this + 144))(this, 0, 0, 0, 0, 1, a2, *(this + 136));
      }

      v9 = *(v6 + 5);
      v10 = *(v6 + 21);
      if (v10)
      {
        *(v6 + 22) = v10;
        operator delete(v10);
      }

      v11 = *(v6 + 16);
      if (v11)
      {
        *(v6 + 17) = v11;
        operator delete(v11);
      }

      v12 = *(v6 + 11);
      if (v12)
      {
        *(v6 + 12) = v12;
        operator delete(v12);
      }

      v13 = *(v6 + 6);
      if (v13)
      {
        *(v6 + 7) = v13;
        operator delete(v13);
      }

      MEMORY[0x29ED547D0](v6, 0x1030C40A19E2114);
      v2 = *(this + 57);
    }

    else
    {
      v9 = 0;
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(this + 57));
    *(this + 57) = 0;
    if (v9)
    {

      MTSimpleEventDispatcher::release(v9);
    }
  }
}

void MTTrackpadEventDispatcher::generateMomentumDeltas(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  MTTrackpadEventDispatcher::generateFrameIntervalMomentumDeltas(a3, a1, a2);
  if (*(a2 + 208) == 1)
  {
    v5 = MTTrackpadEventDispatcher::smoothTails(v4, (a2 + 48), (a2 + 88), *(a2 + 236));
    MTTrackpadEventDispatcher::interpolateFrameIntervalMomentumDeltas(v5, (a2 + 48), a2 + 128);
    MTTrackpadEventDispatcher::interpolateFrameIntervalMomentumDeltas(v6, (a2 + 88), a2 + 168);
    v7 = *(a2 + 236);
    if (v7)
    {
      v8 = (roundf((*(a2 + 80) / *(a2 + 160)) * (v7 + 1)) + -1.0);
    }

    else
    {
      v8 = 0;
    }

    v9 = MTTrackpadEventDispatcher::smoothTails(v4, (a2 + 128), (a2 + 168), v8);
    MTTrackpadEventDispatcher::smoothBody(v9, (a2 + 128));

    MTTrackpadEventDispatcher::smoothBody(v10, (a2 + 168));
  }
}

void MTTrackpadEventDispatcher::momentumCallbackFunction(NSObject *this, dispatch_source_s *a2)
{
  context = dispatch_get_context(this);
  if (context)
  {
    v4 = context;
    if (*(context + 208) == 1)
    {
      v5 = *(context + 19);
      v6 = v5 + 1;
      v7 = *(context + 16);
      v8 = *(context + 17) - v7;
      if (v5 >= v8 >> 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(v7 + 4 * v5);
      }

      v13 = *(context + 40);
      v14 = v8 >> 2;
      if (v6 <= v5)
      {
        v15 = *(context + 19);
      }

      else
      {
        v15 = v5 + 1;
      }

      *(context + 19) = v15;
      v16 = *(context + 24);
      v17 = *(context + 21);
      v18 = (*(context + 22) - v17) >> 2;
      if (v16 >= v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v17 + 4 * v16);
      }

      if (v16 + 1 >= v16)
      {
        ++v16;
      }

      *(context + 24) = v16;
      v24 = v15 >= v14 && v16 >= v18;
      v25 = v24;
      if (!v24 && (*(context + 210) & 1) != 0)
      {
        if ((v13 * (v5 + 2)) >= *(context + 56))
        {
          v26 = v6;
          *(context + 104) = 256;
          v27 = *(context + 27);
          *(context + 9) = v27;
          *(context + 14) = v27;
          v28 = *(context + 20);
          v29 = (v28 * (v27 + 1)) - (v13 * v26);
          *(context + 57) = v29 / v28;
          *(context + 58) = v29;
          v30 = dispatch_walltime(0, (v29 * 1000000000.0));
          dispatch_source_set_timer(this, v30, (*(v4 + 20) * 1000000000.0), 0);
        }

        v25 = 0;
      }
    }

    else
    {
      v10 = *(context + 9);
      v11 = *(context + 6);
      v12 = *(context + 7) - v11;
      if (v10 >= v12 >> 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(v11 + 4 * v10);
      }

      v20 = v12 >> 2;
      if (v10 + 1 >= v10)
      {
        ++v10;
      }

      *(context + 9) = v10;
      v21 = *(context + 14);
      v22 = *(context + 11);
      v23 = (*(context + 12) - v22) >> 2;
      if (v21 >= v23)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v22 + 4 * v21);
      }

      if (v21 + 1 >= v21)
      {
        ++v21;
      }

      *(context + 14) = v21;
      v25 = v10 >= v20 && v21 >= v23;
      if (*(context + 209) == 1)
      {
        v32 = *(context + 57);
        v13 = *(context + 58);
        LODWORD(v9) = llroundf(v32 * v9);
        LODWORD(v19) = llroundf(v32 * v19);
        *(context + 209) = 0;
      }

      else
      {
        v13 = *(context + 20);
      }
    }

    if (v9 | v19)
    {
      v33 = 1;
    }

    else
    {
      v33 = v25;
    }

    if (*v4 == 1)
    {
      if (v33)
      {
        (*(**(v4 + 5) + 144))(*(v4 + 5), v9, v19, 0, 0, 1, 0, 1.0 / v13);
      }
    }

    else if (v33)
    {
      v34 = *(v4 + 5);
      v35 = v4[8];
      v36 = mach_absolute_time();
      (*(*v34 + 152))(v34, v9, v19, v35, v36, 0, 0);
    }

    if (v25)
    {
      v37 = *(v4 + 5);

      MTTrackpadEventDispatcher::cancelOutstandingMomentumTimer(v37, 0);
    }
  }
}

uint64_t MTTrackpadEventDispatcher::generateFrameIntervalMomentumDeltas(__n128 a1, uint64_t a2, unsigned int *a3)
{
  v4 = (a3 + 12);
  *(a3 + 7) = *(a3 + 6);
  *(a3 + 9) = 0;
  v5 = (a3 + 22);
  *(a3 + 12) = *(a3 + 11);
  *(a3 + 14) = 0;
  v6 = *(a3 + 20);
  a1.n128_u64[0] = *(a3 + 3);
  v26 = a1;
  v7 = *(a3 + 1);
  LODWORD(result) = *a3;
  v9 = 0;
  do
  {
    v10 = MTTrackpadEventDispatcher::momentumDecayRateAlpha(result, v26.n128_f32[0], v26.n128_f32[1], v6);
    v11.n128_u64[1] = v26.n128_u64[1];
    v11.n128_u64[0] = vmul_n_f32(v26.n128_u64[0], v10);
    v26 = v11;
    v12 = vmul_n_f32(v11.n128_u64[0], *(a3 + 4));
    if (*(a3 + 208) == 1 && (*(a3 + 210) & 1) == 0)
    {
      v13 = fabsf(v12.f32[1] / v6);
      if (fabsf(v12.f32[0] / v6) <= 320.0 && v13 <= 320.0)
      {
        v16 = *(a3 + 6);
        v15 = *(a3 + 7);
        *(a3 + 210) = 1;
        v18 = v15 - v16;
        v17 = v18 == 0;
        v18 >>= 2;
        *(a3 + 27) = v18;
        *(a3 + 56) = *(a3 + 20) * (v18 + 1);
        if (v17)
        {
          *(a3 + 208) = 0;
        }
      }
    }

    v27 = llroundf(v12.f32[1]);
    v28 = llroundf(v12.f32[0]);
    v19 = fabsf(v12.f32[0]);
    v20 = fabsf(v12.f32[1]);
    if (v19 < 1.0 && v20 < 1.0)
    {
      v22 = vadd_f32(v9, v12);
      v23 = vcvt_s32_f32(v22);
      v27 = v23.u32[1];
      v28 = v23.i32[0];
      v9 = vsub_f32(v22, vcvt_f32_s32(v23));
    }

    if (v7 <= 0.0)
    {
      v25 = 1;
    }

    else
    {
      v24 = *(a3 + 5);
      v25 = v19 < v24 && v20 < v24;
    }

    std::vector<int>::push_back[abi:ne200100](v4, &v28);
    std::vector<int>::push_back[abi:ne200100](v5, &v27);
    result = *a3;
    if (result == 1)
    {
      v7 = v7 - v6;
    }
  }

  while (!v25);
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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

void MTTrackpadEventDispatcher::smoothBody(uint64_t a1, int **a2)
{
  if (a2)
  {
    v5 = a2[1];
    v6 = *a2;
    if (v5 != *a2)
    {
      *&v11[2] = v2;
      v12 = v3;
      if (*v6)
      {
        v7 = v6 + 1;
        while (v7 != v5)
        {
          if (!*v7++)
          {
            v5 = v7 - 1;
            break;
          }
        }

        if (*v6 < 1)
        {
          std::__sort<std::__less<int,int> &,int *>();
        }

        else
        {
          v9 = 126 - 2 * __clz(v5 - v6);
          if (v5 == v6)
          {
            v10 = 0;
          }

          else
          {
            v10 = v9;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v6, v5, v11, v10, 1);
        }
      }
    }
  }
}

std::__wrap_iter<int *>::iterator_type MTTrackpadEventDispatcher::smoothTails(int a1, std::vector<int> *a2, std::vector<int> *a3, unsigned int a4)
{
  v7 = MTTrackpadEventDispatcher::forceCurveTailToMonotonicallyDecrease(a1, a2, a4);
  v8 = MTTrackpadEventDispatcher::forceCurveTailToMonotonicallyDecrease(v7, a3, a4);

  return MTTrackpadEventDispatcher::equalizeCurveLengths(v8, a2, a3);
}

std::__wrap_iter<int *>::iterator_type MTTrackpadEventDispatcher::forceCurveTailToMonotonicallyDecrease(int a1, std::vector<int> *this, unsigned int a3)
{
  if (this)
  {
    begin = this->__begin_;
    end = this->__end_;
    if (end == this->__begin_)
    {
      v8 = 0;
      v10 = -1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = -1;
      do
      {
        if (begin[v7])
        {
          if (v8 <= v9)
          {
            v8 = v9;
          }

          v11 = v8 - v9;
          v12.__i_ = &begin[v7];
          __x = 0;
          result = std::vector<int>::insert(this, v12, v11, &__x).__i_;
          v9 = 0;
          v7 += v11;
          begin = this->__begin_;
          end = this->__end_;
          v10 = v7;
        }

        else
        {
          ++v9;
        }

        ++v7;
      }

      while (v7 < end - begin);
    }

    v14 = v10;
    v15 = v14 * 4 + 4;
    if (end != &begin[v14 + 1])
    {
      this->__end_ = (begin + v15);
    }

    if (v10 != -1 && v8 < a3)
    {
      v16 = this->__begin_;
      v22 = 0;
      v17.__i_ = (v16 + v15);
      std::vector<int>::insert(this, v17, a3, &v22);
      v18 = &this->__begin_[a3 + v14];
      if (*this->__begin_ < 1)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      v21 = v19;
      v20.__i_ = v18 + 1;
      return std::vector<int>::insert(this, v20, &v21).__i_;
    }
  }

  return result;
}

std::__wrap_iter<int *>::iterator_type MTTrackpadEventDispatcher::equalizeCurveLengths(int a1, std::vector<int> *this, std::vector<int> *a3)
{
  if (this && a3)
  {
    end = this->__end_;
    v5 = end - this->__begin_;
    if (v5 >> 2 <= (a3->__end_ - a3->__begin_))
    {
      v6 = a3->__end_ - a3->__begin_;
    }

    else
    {
      v6 = v5 >> 2;
    }

    __x = 0;
    v8.__i_ = end;
    std::vector<int>::insert(this, v8, v6 - (v5 >> 2), &__x);
    v9.__i_ = a3->__end_;
    v10 = v6 - (v9.__i_ - a3->__begin_);
    v12 = 0;
    return std::vector<int>::insert(a3, v9, v10, &v12).__i_;
  }

  return result;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return __position.__i_;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    v15 = end - __position.__i_;
    v16 = this->__end_;
    v17 = __n;
    if (__n <= end - __position.__i_)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v17 = v15 >> 2;
    v16 = &end[__n - (v15 >> 2)];
    v19 = *__x;
    v20 = (4 * __n - v15 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = (end + 2);
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_29D3D65B0)));
      if (vuzp1_s16(v25, *v22.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v22).i8[2])
      {
        *(v23 - 1) = v19;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_29D3D65A0)))).i32[1])
      {
        *v23 = v19;
        v23[1] = v19;
      }

      v18 += 4;
      v23 += 4;
    }

    while (v21 != v18);
    this->__end_ = v16;
    if (end != __position.__i_)
    {
LABEL_21:
      v26 = &__position.__i_[__n];
      v27 = &v16[-__n];
      v28 = v16;
      if (v27 < end)
      {
        v28 = v16;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
        }

        while (v27 < end);
      }

      this->__end_ = v28;
      if (v16 != v26)
      {
        memmove(&__position.__i_[__n], __position.__i_, v16 - v26);
      }

      if (__position.__i_ <= v5)
      {
        if (this->__end_ <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = __n;
        }

        v5 += v30;
      }

      v31 = 0;
      v32 = *v5;
      v33 = vdupq_n_s64(v17 - 1);
      v34 = (__position.__i_ + 2);
      do
      {
        v35 = vdupq_n_s64(v31);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_29D3D65B0)));
        if (vuzp1_s16(v36, *v33.i8).u8[0])
        {
          *(v34 - 2) = v32;
        }

        if (vuzp1_s16(v36, *&v33).i8[2])
        {
          *(v34 - 1) = v32;
        }

        if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_29D3D65A0)))).i32[1])
        {
          *v34 = v32;
          v34[1] = v32;
        }

        v31 += 4;
        v34 += 4;
      }

      while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __position.__i_;
  }

  begin = this->__begin_;
  v11 = __n + end - this->__begin_;
  if (v11 >> 62)
  {
    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  v12 = __position.__i_ - begin;
  v13 = value - begin;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v14);
  }

  v38 = 0;
  v37 = 4 * (v12 >> 2);
  v39 = *__x;
  v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v41 = vdupq_n_s64(v40);
  v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v43 = (v37 + 8);
  do
  {
    v44 = vdupq_n_s64(v38);
    v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_29D3D65B0)));
    if (vuzp1_s16(v45, *v41.i8).u8[0])
    {
      *(v43 - 2) = v39;
    }

    if (vuzp1_s16(v45, *&v41).i8[2])
    {
      *(v43 - 1) = v39;
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_29D3D65A0)))).i32[1])
    {
      *v43 = v39;
      v43[1] = v39;
    }

    v38 += 4;
    v43 += 4;
  }

  while (v42 != v38);
  memcpy((v37 + 4 * __n), __position.__i_, this->__end_ - __position.__i_);
  v46 = this->__begin_;
  v47 = (v37 + 4 * __n + this->__end_ - __position.__i_);
  this->__end_ = __position.__i_;
  v48 = (__position.__i_ - v46);
  v49 = (v37 - (__position.__i_ - v46));
  memcpy(v49, v46, v48);
  v50 = this->__begin_;
  this->__begin_ = v49;
  this->__end_ = v47;
  this->__end_cap_.__value_ = 0;
  if (v50)
  {
    operator delete(v50);
  }

  return v37;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v24 = 0u;
    v25 = 0u;
    v11 = end - begin + 1;
    if (v11 >> 62)
    {
      std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v26 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v14);
    }

    *&v24 = 0;
    *(&v24 + 1) = 4 * v15;
    v25 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int>(&v24, __x);
    v16.__i_ = *(&v24 + 1);
    memcpy(v25, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = *(&v24 + 1);
    *&v25 = v25 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    *&v24 = v21;
    *(&v24 + 1) = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_29D3A7DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTTrackpadEventDispatcher::interpolateFrameIntervalMomentumDeltas(uint64_t a1, float *a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  *(a3 + 24) = 0;
  v3 = a2[8];
  v4 = *(a3 + 32);
  v5 = (*(a2 + 1) - *a2) >> 2;
  v6 = ((v3 * v5) / v4);
  if (v6)
  {
    v9 = 0;
    v10 = v4 / v3;
    v11 = 0.0;
    do
    {
      v21 = NAN;
      v12 = modff((v9 / (v6 + -1.0)) * (v5 - 1), &v21);
      v13 = v21;
      v14 = *a2;
      v15 = (*(a2 + 1) - *a2) >> 2;
      if (v15 <= v13)
      {
LABEL_9:
        std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = (v13 + 1);
      v17 = *(v14 + 4 * v13);
      v18 = 0.0;
      if (v5 > v16)
      {
        if (v15 <= v16)
        {
          goto LABEL_9;
        }

        v18 = *(v14 + 4 * v16);
      }

      v19 = v11 + (v10 * ((v12 * v18) + (v17 * (1.0 - v12))));
      v20 = llroundf(v19);
      v11 = v19 - roundf(v19);
      std::vector<int>::push_back[abi:ne200100](a3, &v20);
      ++v9;
    }

    while (v6 != v9);
  }
}

const void *getMomentumEnableEvent()
{
  if (!IOHIDEventConformsTo())
  {
    return 0;
  }

  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return 0;
  }

  v1 = Children;
  Count = CFArrayGetCount(Children);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 65280 && IOHIDEventGetIntegerValue() == 1)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void MTTrackpadEventDispatcher::~MTTrackpadEventDispatcher(MTTrackpadEventDispatcher *this)
{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));

  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);
}

{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));
  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);

  JUMPOUT(0x29ED547D0);
}

void *std::__list_imp<double>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(a1, a2[1]);
    std::__list_imp<double>::clear(a2 + 5);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::list<double>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::list<double>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<double>::clear(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::list<double>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

int *std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v59 = v9[1];
          v60 = *(a2 - 1);
          if (v59 <= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v9[1];
          }

          if (v59 >= v60)
          {
            v59 = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v9[1] = v61;
          v62 = *(a2 - 1);
          if (v62 <= *v9)
          {
            v63 = *v9;
          }

          else
          {
            v63 = *(a2 - 1);
          }

          if (v62 >= *v9)
          {
            v62 = *v9;
          }

          *(a2 - 1) = v62;
          v65 = *v9;
          v64 = v9[1];
          if (v63 <= v64)
          {
            v65 = v9[1];
          }

          if (v63 < v64)
          {
            v64 = v63;
          }

          *v9 = v65;
          v9[1] = v64;
          return result;
        case 4:
          v89 = v9[1];
          v88 = v9[2];
          if (*v9 <= v88)
          {
            v90 = v9[2];
          }

          else
          {
            v90 = *v9;
          }

          if (*v9 < v88)
          {
            v88 = *v9;
          }

          v9[2] = v88;
          *v9 = v90;
          v91 = *(a2 - 1);
          if (v89 <= v91)
          {
            v92 = *(a2 - 1);
          }

          else
          {
            v92 = v89;
          }

          if (v89 < v91)
          {
            v91 = v89;
          }

          *(a2 - 1) = v91;
          v93 = *v9;
          if (*v9 <= v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = *v9;
          }

          if (v93 >= v92)
          {
            v93 = v92;
          }

          *v9 = v94;
          v9[1] = v93;
          v95 = v9[2];
          v96 = *(a2 - 1);
          if (v95 <= v96)
          {
            v97 = *(a2 - 1);
          }

          else
          {
            v97 = v9[2];
          }

          if (v95 >= v96)
          {
            v95 = *(a2 - 1);
          }

          *(a2 - 1) = v95;
          v98 = v9[1];
          if (v98 <= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v9[1];
          }

          if (v98 >= v97)
          {
            v98 = v97;
          }

          v9[1] = v99;
          v9[2] = v98;
          return result;
        case 5:
          v66 = *v9;
          v67 = v9[1];
          if (*v9 <= v67)
          {
            v68 = v9[1];
          }

          else
          {
            v68 = *v9;
          }

          if (v66 >= v67)
          {
            v66 = v9[1];
          }

          *v9 = v68;
          v9[1] = v66;
          v69 = v9[3];
          v70 = *(a2 - 1);
          if (v69 <= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[3];
          }

          if (v69 >= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[3] = v71;
          v72 = *(a2 - 1);
          v73 = v9[2];
          if (v72 <= v73)
          {
            v74 = v9[2];
          }

          else
          {
            v74 = *(a2 - 1);
          }

          if (v72 >= v73)
          {
            v72 = v9[2];
          }

          *(a2 - 1) = v72;
          v76 = v9[2];
          v75 = v9[3];
          v77 = v9[1];
          if (v74 <= v75)
          {
            v76 = v9[3];
          }

          if (v74 < v75)
          {
            v75 = v74;
          }

          v9[2] = v76;
          v9[3] = v75;
          v78 = *(a2 - 1);
          if (v77 <= v78)
          {
            v79 = *(a2 - 1);
          }

          else
          {
            v79 = v77;
          }

          if (v77 < v78)
          {
            v78 = v77;
          }

          *(a2 - 1) = v78;
          v80 = *v9;
          v82 = v9[2];
          v81 = v9[3];
          if (v81 <= *v9)
          {
            v83 = *v9;
          }

          else
          {
            v83 = v9[3];
          }

          if (v81 >= v80)
          {
            v81 = *v9;
          }

          if (v83 <= v82)
          {
            v80 = v9[2];
          }

          if (v83 < v82)
          {
            v82 = v83;
          }

          if (v81 <= v79)
          {
            v84 = v79;
          }

          else
          {
            v84 = v81;
          }

          if (v81 >= v79)
          {
            v81 = v79;
          }

          if (v84 <= v82)
          {
            v79 = v82;
          }

          *v9 = v80;
          v9[1] = v79;
          if (v84 >= v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = v84;
          }

          v9[2] = v85;
          v9[3] = v81;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v9;
        if (v86 > *v9)
        {
          *v9 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 <= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 >= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 <= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 >= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 <= *v9;
      if (v52 > *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 <= *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 >= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 <= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 <= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
      v9 = result;
      goto LABEL_99;
    }

LABEL_94:
    v56 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_97;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v9, v56);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_99:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v100 = v9 + 1;
  v102 = v9 == a2 || v100 == a2;
  if (a5)
  {
    if (!v102)
    {
      v103 = 0;
      v104 = v9;
      do
      {
        v106 = *v104;
        v105 = v104[1];
        v104 = v100;
        if (v105 > v106)
        {
          v107 = v103;
          while (1)
          {
            *(v9 + v107 + 4) = v106;
            if (!v107)
            {
              break;
            }

            v106 = *(v9 + v107 - 4);
            v107 -= 4;
            if (v105 <= v106)
            {
              v108 = (v9 + v107 + 4);
              goto LABEL_204;
            }
          }

          v108 = v9;
LABEL_204:
          *v108 = v105;
        }

        v100 = v104 + 1;
        v103 += 4;
      }

      while (v104 + 1 != a2);
    }
  }

  else if (!v102)
  {
    do
    {
      v110 = *v8;
      v109 = v8[1];
      v8 = v100;
      if (v109 > v110)
      {
        do
        {
          *v100 = v110;
          v110 = *(v100 - 2);
          --v100;
        }

        while (v109 > v110);
        *v100 = v109;
      }

      v100 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(int *a1, int *a2)
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

signed int *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(signed int *a1, signed int *a2)
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
  v13 = vdupq_n_s32(v2);
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
        v20 = vcgeq_s32(v13, *(v7 + v12));
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
      v30 = vcgtq_s32(vextq_s8(v29, v29, 8uLL), v13);
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
        v11 |= (v49 > v2) << v47++;
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
      v12 |= (v7[v46] <= v2) << v46;
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

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 <= v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void *std::__split_buffer<int>::emplace_back<int>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

BOOL MTMouseEventDispatcher::shouldDispatchEvent(uint64_t a1)
{
  if ((*(a1 + 432) & 1) != 0 || (IOHIDEventGetIntegerValue() & 0x100) != 0 || (IOHIDEventGetIntegerValue() & 8) != 0 || IOHIDEventConformsTo() || IOHIDEventConformsTo() || IOHIDEventConformsTo() || IOHIDEventConformsTo() || IOHIDEventConformsTo() || IOHIDEventConformsTo())
  {
    return 1;
  }

  v1 = 1;
  if (!IOHIDEventConformsTo())
  {
    return IOHIDEventConformsTo() != 0;
  }

  return v1;
}

void MTMouseEventDispatcher::dispatchEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if ((*(a1 + 432) & 1) == 0)
    {
      Children = IOHIDEventGetChildren();
      if (Children)
      {
        v7 = Children;
        Count = CFArrayGetCount(Children);
        if (Count >= 1)
        {
          v9 = Count + 1;
          do
          {
            CFArrayGetValueAtIndex(v7, v9 - 2);
            if (!IOHIDEventConformsTo() && !IOHIDEventConformsTo() && !IOHIDEventConformsTo() && !IOHIDEventConformsTo() && !IOHIDEventConformsTo() && !IOHIDEventConformsTo() && !IOHIDEventConformsTo() && !IOHIDEventConformsTo())
            {
              IOHIDEventRemoveEvent();
            }

            --v9;
          }

          while (v9 > 1);
        }
      }
    }
  }

  MTSimpleEventDispatcher::dispatchEvent(a1, a2, a3);
}

void MTMouseEventDispatcher::~MTMouseEventDispatcher(MTMouseEventDispatcher *this)
{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));

  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);
}

{
  *this = &unk_2A24124F8;
  std::__list_imp<double>::clear(this + 62);
  std::__tree<std::__value_type<unsigned int,std::list<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::list<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::list<double>>>>::destroy(this + 472, *(this + 60));
  MTSimpleEventDispatcher::~MTSimpleEventDispatcher(this);

  JUMPOUT(0x29ED547D0);
}

void MTSimpleHIDManager::MTSimpleHIDManager(MTSimpleHIDManager *this)
{
  *this = &unk_2A24126C8;
  *(this + 8) = 0;
  *(this + 80) = 0;
  *(this + 21) = 1;
  *(this + 22) = 0;
  *(this + 123) = 0;
  *(this + 125) = 0;
  atomic_store(1u, this + 2);
  *(this + 28) = 100;
  *(this + 12) = 0;
  *(this + 13) = 0;
}

uint64_t MTSimpleHIDManager::initialize(MTModeSwitcher *a1, uint64_t a2, CFTypeRef cf, int a4, int a5)
{
  *(a1 + 2) = a2;
  *(a1 + 39) = a4;
  *(a1 + 40) = a5;
  *(a1 + 3) = CFRetain(cf);
  *(a1 + 4) = 0;
  *(a1 + 21) = 0;
  *(a1 + 22) = dispatch_queue_create("com.apple.MultitouchSupport.control-requests", 0);
  *(a1 + 23) = dispatch_group_create();
  (*(*a1 + 104))(a1);
  _printHIDEvents = 0;
  *(a1 + 48) = 255;
  *(a1 + 16) = 255;
  *(a1 + 136) = 0;
  *(a1 + 41) = 0;
  *(a1 + 126) = 0;
  *(a1 + 121) = (*(*a1 + 344))(a1);
  *(a1 + 121) = (*(*a1 + 344))(a1);
  *(a1 + 18) = 0;
  *(a1 + 152) = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 5) = Mutable;
  *(a1 + 25) = MTSLGLogger::createLogger(Mutable);
  *(a1 + 6) = CFArrayCreateMutable(v6, *(a1 + 28), MEMORY[0x29EDB9000]);
  *(a1 + 9) = CFDateFormatterCreate(v6, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  *(a1 + 14) = MTModeSwitcher::createModeSwitcher(a1, v8);
  v9 = *(*a1 + 336);

  return v9(a1, 1);
}

uint64_t MTSimpleHIDManager::start(MTSimpleHIDManager *this)
{
  (*(*this + 280))(this);
  (*(*this + 48))(this);
  (*(*this + 64))(this);
  (*(*this + 144))(this);
  (*(*this + 288))(this);
  (*(*this + 152))(this);
  (*(*this + 88))(this);
  (*(*this + 296))(this);
  return 1;
}

uint64_t MTSimpleHIDManager::stop(MTSimpleHIDManager *this)
{
  (*(*this + 56))(this);
  (*(*this + 96))(this);
  (*(*this + 72))(this);
  (*(*this + 56))(this);
  (*(*this + 160))(this);
  v2 = *(*this + 112);

  return v2(this);
}

void MTSimpleHIDManager::finalize(MTSimpleHIDManager *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 14) = 0;
  v3 = *(this + 25);
  if (v3)
  {
    MTSLGLogger::~MTSLGLogger(v3);
    MEMORY[0x29ED547D0]();
  }

  dispatch_group_wait(*(this + 23), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(this + 23));
  *(this + 23) = 0;
  dispatch_release(*(this + 22));
  *(this + 22) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
    *(this + 3) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
    *(this + 5) = 0;
  }

  v6 = *(this + 21);
  if (v6)
  {
    dispatch_release(v6);
    *(this + 21) = 0;
  }

  v7 = *(this + 6);
  if (v7)
  {
    CFRelease(v7);
    *(this + 6) = 0;
  }

  v8 = *(this + 9);
  if (v8)
  {
    CFRelease(v8);
    *(this + 9) = 0;
  }

  *(this + 2) = 0;
}

uint64_t MTSimpleHIDManager::closeManager(MTSimpleHIDManager *this)
{
  (*(*this + 592))(this, 1);
  v2 = *(*this + 40);

  return v2(this);
}

uint64_t MTSimpleHIDManager::retain(uint64_t this)
{
  if (!atomic_load((this + 8)))
  {
    MTSimpleHIDManager::retain();
  }

  atomic_fetch_add((this + 8), 1u);
  return this;
}

unsigned int *MTSimpleHIDManager::release(unsigned int *this)
{
  if (!atomic_load(this + 2))
  {
    MTSimpleHIDManager::release();
  }

  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v2 = this;
    (*(*this + 24))(this);
    v3 = *(*v2 + 8);

    return v3(v2);
  }

  return this;
}

uint64_t MTSimpleHIDManager::wasScheduledOnDispatchQueue(MTSimpleHIDManager *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *(this + 21);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 21) = object;
  v5 = *(**(this + 4) + 88);

  return v5();
}

uint64_t MTSimpleHIDManager::wasUnscheduledFromDispatchQueue(NSObject **this, dispatch_queue_s *a2)
{
  ((*this)[61].isa)(this);
  v4 = this[21];
  if (v4)
  {
    dispatch_release(v4);
    this[21] = 0;
  }

  (*(this[4]->isa + 8))(this[4], a2);
  v5 = this[21];
  v6 = *(this[4]->isa + 11);

  return v6();
}

uint64_t MTSimpleHIDManager::registerDeviceNotifications(MTSimpleHIDManager *this)
{
  v2 = (*(*this + 80))(this);

  return MEMORY[0x2A1C68730](v2, MTSimpleHIDManager::forwardNotificationEvent, this);
}

uint64_t MTSimpleHIDManager::unregisterDeviceNotifications(MTSimpleHIDManager *this)
{
  v1 = (*(*this + 80))(this);

  return MEMORY[0x2A1C68790](v1, MTSimpleHIDManager::forwardNotificationEvent);
}

uint64_t MTSimpleHIDManager::registerExternalMessages(MTSimpleHIDManager *this)
{
  v2 = (*(*this + 80))(this);

  return MEMORY[0x2A1C68700](v2, MTSimpleHIDManager::forwardExternalMessage, this);
}

uint64_t MTSimpleHIDManager::unregisterExternalMessages(MTSimpleHIDManager *this)
{
  v2 = (*(*this + 80))(this);

  return MEMORY[0x2A1C68768](v2, MTSimpleHIDManager::forwardExternalMessage, this);
}

uint64_t MTSimpleHIDManager::registerDeviceDataCallbacks(MTSimpleHIDManager *this)
{
  (*(*this + 80))(this);
  MTRegisterContactFrameCallbackWithRefcon();
  (*(*this + 80))(this);
  MTDeviceSetInputDetectionCallbackTriggerMask();
  (*(*this + 80))(this);
  MTRegisterInputDetectionCallback();
  (*(*this + 80))(this);
  result = MTRegisterFrameHeaderCallback();
  if (*(this + 25))
  {
    v3 = (*(*this + 80))(this);

    return MEMORY[0x2A1C68720](v3, MTSimpleHIDManager::forwardImageEntry, 2147483646, 2, this);
  }

  return result;
}

uint64_t MTSimpleHIDManager::unregisterDeviceDataCallbacks(MTSimpleHIDManager *this)
{
  (*(*this + 80))(this);
  MTUnregisterContactFrameCallback();
  (*(*this + 80))(this);
  result = MTUnregisterInputDetectionCallback();
  if (*(this + 25))
  {
    (*(*this + 80))(this);
    result = MTUnregisterImageCallback();
  }

  if (*(this + 125) == 1)
  {
    *(this + 125) = 0;
    (*(*this + 80))(this);

    return MTUnregisterFullFrameCallback();
  }

  return result;
}

void MTSimpleHIDManager::registerSystemCallbacks(MTSimpleHIDManager *this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, this, MTSimpleHIDManager::fieldOnNotificationCenterCallback, @"com.apple.stockholm.field.on", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, this, MTSimpleHIDManager::fieldOffNotificationCenterCallback, @"com.apple.stockholm.field.off", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v4, this, MTSimpleHIDManager::fieldOffNotificationCenterCallback, @"com.apple.stockholm.field.suspended", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void MTSimpleHIDManager::unregisterSystemCallbacks(MTSimpleHIDManager *this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, @"com.apple.stockholm.field.on", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, this, @"com.apple.stockholm.field.off", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(v4, this, @"com.apple.stockholm.field.suspended", 0);
}

unsigned int *MTSimpleHIDManager::setEventDispatcher(MTSimpleHIDManager *this, MTSimpleEventDispatcher *a2)
{
  result = *(this + 4);
  if (result)
  {
    v5 = result == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = MTSimpleEventDispatcher::release(result);
  }

  *(this + 4) = a2;
  if (a2)
  {

    return MTSimpleEventDispatcher::retain(a2);
  }

  return result;
}

uint64_t MTSimpleHIDManager::dispatchEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    CFArrayGetCount(Children);
  }

  IOHIDEventGetIntegerValue();
  kdebug_trace();
  v7 = (*(*a1 + 120))(a1);
  (*(*v7 + 96))(v7, a2, a3);

  return kdebug_trace();
}

uint64_t MTSimpleHIDManager::propertyTypeFromString(uint64_t this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    if (CFStringCompare(this, @"PrimaryUsagePage", 0))
    {
      if (CFStringCompare(v2, @"PrimaryUsage", 0))
      {
        if (CFStringCompare(v2, @"PrintHIDEvents", 0))
        {
          if (CFStringCompare(v2, @"GraphicsOrientation", 0))
          {
            if (CFStringCompare(v2, @"TouchHand", 0))
            {
              if (CFStringCompare(v2, @"WristState", 0))
              {
                if (CFStringCompare(v2, @"EllipseTipGain", 0))
                {
                  if (CFStringCompare(v2, @"FingerTipOffsetUpwards", 0))
                  {
                    if (CFStringCompare(v2, @"FingerTipOffsetLeftwards", 0))
                    {
                      if (CFStringCompare(v2, @"HysteresisRadiusPixels", 0))
                      {
                        if (CFStringCompare(v2, @"CrownFilterRect", 0))
                        {
                          if (CFStringCompare(v2, @"InputDetectionMode", 0))
                          {
                            if (CFStringCompare(v2, @"CriticalErrors", 0))
                            {
                              if (CFStringCompare(v2, @"QuantizationDPI", 0))
                              {
                                if (CFStringCompare(v2, @"ReceiverProximityReset", 0))
                                {
                                  if (CFStringCompare(v2, @"MuonEnabled", 0))
                                  {
                                    if (CFStringCompare(v2, @"NotificationCenterGestureMode", 0))
                                    {
                                      if (CFStringCompare(v2, @"NotificationCenterAltGestureMode", 0))
                                      {
                                        if (CFStringCompare(v2, @"DeviceUsagePairs", 0))
                                        {
                                          if (CFStringCompare(v2, @"Built-In", 0))
                                          {
                                            if (CFStringCompare(v2, @"DisplayIntegrated", 0))
                                            {
                                              if (CFStringCompare(v2, @"PhysicalDeviceUniqueID", 0))
                                              {
                                                if (CFStringCompare(v2, @"DeviceIsReady", 0))
                                                {
                                                  if (CFStringCompare(v2, @"MotionActivityInterested", 0))
                                                  {
                                                    if (CFStringCompare(v2, @"MotionActivityDispatch", 0))
                                                    {
                                                      if (CFStringCompare(v2, @"CopyAllProperties", 0))
                                                      {
                                                        if (CFStringCompare(v2, @"AppKitActuateWithID", 0))
                                                        {
                                                          if (CFStringCompare(v2, @"MTGestureConfiguration", 0))
                                                          {
                                                            if (CFStringCompare(v2, @"MTGestureConfigurationOverride", 0))
                                                            {
                                                              if (CFStringCompare(v2, @"ReloadActuations", 0))
                                                              {
                                                                if (CFStringCompare(v2, @"SendClickThresholdInfo", 0))
                                                                {
                                                                  if (CFStringCompare(v2, @"DisableClickWaveformAdaptation", 0))
                                                                  {
                                                                    if (CFStringCompare(v2, @"DisableForceThresholdAdaptation", 0))
                                                                    {
                                                                      if (CFStringCompare(v2, @"FlipLeftAndRightEdgeGestures", 0))
                                                                      {
                                                                        if (CFStringCompare(v2, @"ScrollMomentumDispatchRate", 0))
                                                                        {
                                                                          if (CFStringCompare(v2, @"ExternalMessage", 0))
                                                                          {
                                                                            if (CFStringCompare(v2, @"MaxDigitizerPressureValue", 0))
                                                                            {
                                                                              if (CFStringCompare(v2, @"MinDigitizerPressureValue", 0))
                                                                              {
                                                                                if (CFStringCompare(v2, @"AccurateMaxDigitizerPressureValue", 0))
                                                                                {
                                                                                  if (CFStringCompare(v2, @"ExtendedMaxDigitizerPressureValue", 0))
                                                                                  {
                                                                                    if (CFStringCompare(v2, @"DigitizerPressureDynamicRange", 0))
                                                                                    {
                                                                                      if (CFStringCompare(v2, @"TouchDetectionMode", 0))
                                                                                      {
                                                                                        if (CFStringCompare(v2, @"HIDScrollAccelerationType", 0))
                                                                                        {
                                                                                          if (CFStringCompare(v2, @"HIDPointerAccelerationType", 0))
                                                                                          {
                                                                                            if (CFStringCompare(v2, @"HIDAccelCurves", 0))
                                                                                            {
                                                                                              if (CFStringCompare(v2, @"HIDPointerReportRate", 0))
                                                                                              {
                                                                                                if (CFStringCompare(v2, @"HIDScrollAccelCurves", 0))
                                                                                                {
                                                                                                  if (CFStringCompare(v2, @"HIDScrollResolution", 0))
                                                                                                  {
                                                                                                    if (CFStringCompare(v2, @"HIDScrollAccelerationTable", 0))
                                                                                                    {
                                                                                                      if (CFStringCompare(v2, @"HIDPointerAccelerationTable", 0))
                                                                                                      {
                                                                                                        if (CFStringCompare(v2, @"HIDPointerResolution", 0))
                                                                                                        {
                                                                                                          if (CFStringCompare(v2, @"HIDPointerAccelerationTargetRateUs", 0))
                                                                                                          {
                                                                                                            if (CFStringCompare(v2, @"HIDTrackpadAcceleration", 0))
                                                                                                            {
                                                                                                              if (CFStringCompare(v2, @"HIDTrackpadScrollAcceleration", 0))
                                                                                                              {
                                                                                                                if (CFStringCompare(v2, @"HIDMouseScrollAcceleration", 0))
                                                                                                                {
                                                                                                                  if (CFStringCompare(v2, @"HIDDisallowRemappingOfPrimaryClick", 0))
                                                                                                                  {
                                                                                                                    if (CFStringCompare(v2, @"SupportsGestureScrolling", 0))
                                                                                                                    {
                                                                                                                      if (CFStringCompare(v2, @"MTEventSource", 0))
                                                                                                                      {
                                                                                                                        if (CFStringCompare(v2, @"Transport", 0))
                                                                                                                        {
                                                                                                                          if (CFStringCompare(v2, @"VendorID", 0))
                                                                                                                          {
                                                                                                                            if (CFStringCompare(v2, @"VendorIDSource", 0))
                                                                                                                            {
                                                                                                                              if (CFStringCompare(v2, @"ProductID", 0))
                                                                                                                              {
                                                                                                                                if (CFStringCompare(v2, @"VersionNumber", 0))
                                                                                                                                {
                                                                                                                                  if (CFStringCompare(v2, @"Manufacturer", 0))
                                                                                                                                  {
                                                                                                                                    if (CFStringCompare(v2, @"Product", 0))
                                                                                                                                    {
                                                                                                                                      if (CFStringCompare(v2, @"LocationID", 0))
                                                                                                                                      {
                                                                                                                                        if (CFStringCompare(v2, @"CountryCode", 0))
                                                                                                                                        {
                                                                                                                                          if (CFStringCompare(v2, @"SerialNumber", 0))
                                                                                                                                          {
                                                                                                                                            if (CFStringCompare(v2, @"ReportInterval", 0))
                                                                                                                                            {
                                                                                                                                              if (CFStringCompare(v2, @"DispatchAllHIDEvents", 0))
                                                                                                                                              {
                                                                                                                                                if (CFStringCompare(v2, @"ServicePluginDebug", 0))
                                                                                                                                                {
                                                                                                                                                  if (CFStringCompare(v2, @"FilteredClientsAvailable", 0))
                                                                                                                                                  {
                                                                                                                                                    if (CFStringCompare(v2, @"MTModeSwitcherDebugProfile", 0))
                                                                                                                                                    {
                                                                                                                                                      if (CFStringCompare(v2, @"SupportedGestures", 0))
                                                                                                                                                      {
                                                                                                                                                        if (CFStringCompare(v2, @"SurfaceDimensions", 0))
                                                                                                                                                        {
                                                                                                                                                          if (CFStringCompare(v2, @"DeviceTypeHint", 0))
                                                                                                                                                          {
                                                                                                                                                            if (CFStringCompare(v2, @"NeedsHostState", 0))
                                                                                                                                                            {
                                                                                                                                                              if (CFStringCompare(v2, @"HostStateNotification", 0))
                                                                                                                                                              {
                                                                                                                                                                if (CFStringCompare(v2, @"HIDPointerAccelerationMultiplier", 0))
                                                                                                                                                                {
                                                                                                                                                                  if (CFStringCompare(v2, @"DeviceOpenedByEventSystem", 0))
                                                                                                                                                                  {
                                                                                                                                                                    if (CFStringCompare(v2, @"MouseButtonMode", 0))
                                                                                                                                                                    {
                                                                                                                                                                      if (CFStringCompare(v2, @"HIDScrollReportRate", 0))
                                                                                                                                                                      {
                                                                                                                                                                        if (CFStringCompare(v2, @"MaxHoverHeight", 0))
                                                                                                                                                                        {
                                                                                                                                                                          if (CFStringCompare(v2, @"HoverDisabled", 0))
                                                                                                                                                                          {
                                                                                                                                                                            return 0;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            return 86;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          return 85;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        return 84;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      return 83;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    return 82;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  return 81;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                return 80;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              return 79;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            return 78;
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          return 77;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        return 76;
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      return 75;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    return 74;
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  return 73;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                return 72;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              return 69;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            return 68;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          return 67;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        return 66;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      return 65;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    return 64;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  return 63;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                return 62;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              return 61;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            return 60;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          return 59;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        return 70;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      return 58;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    return 57;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  return 55;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                return 56;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              return 47;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            return 46;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          return 54;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        return 53;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      return 52;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    return 51;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  return 50;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                return 49;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              return 48;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            return 45;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        return 43;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      return 42;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    return 41;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  return 40;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                return 39;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              return 38;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            return 37;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          return 17;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        return 34;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      return 33;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    return 32;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  return 31;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                return 30;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              return 29;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            return 28;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          return 27;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        return 26;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      return 36;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    return 35;
                                                  }
                                                }

                                                else
                                                {
                                                  return 25;
                                                }
                                              }

                                              else
                                              {
                                                return 6;
                                              }
                                            }

                                            else
                                            {
                                              return 5;
                                            }
                                          }

                                          else
                                          {
                                            return 4;
                                          }
                                        }

                                        else
                                        {
                                          return 3;
                                        }
                                      }

                                      else
                                      {
                                        return 23;
                                      }
                                    }

                                    else
                                    {
                                      return 22;
                                    }
                                  }

                                  else
                                  {
                                    return 21;
                                  }
                                }

                                else
                                {
                                  return 20;
                                }
                              }

                              else
                              {
                                return 19;
                              }
                            }

                            else
                            {
                              return 24;
                            }
                          }

                          else
                          {
                            return 18;
                          }
                        }

                        else
                        {
                          return 16;
                        }
                      }

                      else
                      {
                        return 15;
                      }
                    }

                    else
                    {
                      return 14;
                    }
                  }

                  else
                  {
                    return 13;
                  }
                }

                else
                {
                  return 12;
                }
              }

              else
              {
                return 11;
              }
            }

            else
            {
              return 10;
            }
          }

          else
          {
            return 9;
          }
        }

        else
        {
          return 7;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return this;
}